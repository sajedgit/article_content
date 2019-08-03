<?php
/**
 * Category Featured Image
 *
 * @package    CategoryFeaturedImage
 * @subpackage Category Featured Image Main function
/*
	Copyright (c) 2019- Katsushi Kawamori (email : dodesyoswift312@gmail.com)
	This program is free software; you can redistribute it and/or modify
	it under the terms of the GNU General Public License as published by
	the Free Software Foundation; version 2 of the License.

	This program is distributed in the hope that it will be useful,
	but WITHOUT ANY WARRANTY; without even the implied warranty of
	MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
	GNU General Public License for more details.

	You should have received a copy of the GNU General Public License
	along with this program; if not, write to the Free Software
	Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
 */

$categoryfeaturedimage = new CategoryFeaturedImage();

/** ==================================================
 * Class Main function
 *
 * @since 1.00
 */
class CategoryFeaturedImage {

	/** ==================================================
	 * Construct
	 *
	 * @since 1.00
	 */
	public function __construct() {

		add_action( 'category_add_form_fields', array( $this, 'add_term_fields' ), 10, 1 );
		add_action( 'create_term', array( $this, 'save_terms' ), 10, 2 );
		add_action( 'edit_terms', array( $this, 'save_terms' ), 10, 2 );
		add_action( 'category_edit_form_fields', array( $this, 'edit_term_fields' ), 10, 2 );
		add_action( 'admin_footer', array( $this, 'load_custom_wp_admin_style' ) );
		add_filter( 'manage_edit-category_columns', array( $this, 'add_term_columns' ) );
		add_filter( 'manage_category_custom_column', array( $this, 'add_term_custom_column' ), 10, 3 );
		add_action( 'admin_init', array( $this, 'post_published_update' ) );

	}

	/** ==================================================
	 * Add Css and Script
	 *
	 * @since 1.00
	 */
	public function load_custom_wp_admin_style() {

		if ( $this->is_my_plugin_screen() ) {
			$this->media_selector_print_scripts();
			$media_title_text = array(
				'title' => __( 'Choose Image' ),
				'text' => __( 'Set featured image' ),
			);
			wp_enqueue_script( 'jquery_cfi_text', plugin_dir_url( __DIR__ ) . 'js/jquery.categoryfeaturedimage.js', array( 'jquery' ), '1.00', false );
			wp_localize_script( 'jquery_cfi_text', 'cfi_text', $media_title_text );
		}

	}

	/** ==================================================
	 * For only admin style
	 *
	 * @since 1.00
	 */
	private function is_my_plugin_screen() {

		$screen = get_current_screen();
		if ( is_object( $screen ) && 'edit-category' == $screen->id ) {
			return true;
		} else {
			return false;
		}

	}

	/** ==================================================
	 * Add Term
	 *
	 * @param string $taxonomy  taxonomy.
	 * @since 1.00
	 */
	public function add_term_fields( $taxonomy ) {

		if ( $this->is_my_plugin_screen() ) {
			/* Featured Image Id */
			if ( isset( $_POST['featured_image_id'] ) && ! empty( $_POST['featured_image_id'] ) ) {
				if ( check_admin_referer( 'fi_id_set', 'featured_image_id_set' ) ) {
					update_option( 'media_selector_attachment_id', absint( $_POST['featured_image_id'] ) );
				}
			}
			wp_enqueue_media();
			$this->edit_category_html( 0, false );
		}

	}

	/** ==================================================
	 * Edit Term
	 *
	 * @param object $tag  tag.
	 * @param string $taxonomy  taxonomy.
	 * @since 1.00
	 */
	public function edit_term_fields( $tag, $taxonomy ) {

		if ( $this->is_my_plugin_screen() ) {
			/* Featured Image Id */
			if ( isset( $_POST['featured_image_id'] ) && ! empty( $_POST['featured_image_id'] ) ) {
				if ( check_admin_referer( 'fi_id_set', 'featured_image_id_set' ) ) {
					update_option( 'media_selector_attachment_id', absint( $_POST['featured_image_id'] ) );
				}
			}
			wp_enqueue_media();
			$value = get_term_meta( $tag->term_id, 'featured_image_id', true );
			$this->edit_category_html( $value, true );
		}

	}

	/** ==================================================
	 * Save Term Meta
	 *
	 * @param int    $term_id  term_id.
	 * @param string $taxonomy  taxonomy.
	 * @since 1.00
	 */
	public function save_terms( $term_id, $taxonomy ) {

		if ( array_key_exists( 'featured_image_id', $_POST ) ) {
			if ( isset( $_POST['featured_image_id'] ) && ! empty( $_POST['featured_image_id'] ) ) {
				if ( check_admin_referer( 'fi_id_set', 'featured_image_id_set' ) ) {
					$featured_image_id = absint( $_POST['featured_image_id'] );
					if ( $featured_image_id > 0 ) {
						$this->db_save( $term_id, $featured_image_id );
						update_term_meta( $term_id, 'featured_image_id', $featured_image_id );
					} else {
						$this->db_save( $term_id, 0 );
						delete_term_meta( $term_id, 'featured_image_id' );
					}
				}
			}
		}

	}

	/** ==================================================
	 * Custom column
	 *
	 * @param array $columns  columns.
	 * @return array $columns
	 * @since 1.00
	 */
	public function add_term_columns( $columns ) {

		return array_merge(
			array_slice( $columns, 0, 2 ),
			array( 'image' => __( 'Featured Image' ) ),
			array_slice( $columns, 2 )
		);

	}

	/** ==================================================
	 * Custom column cotent
	 *
	 * @param string $content  content.
	 * @param string $column_name  column_name.
	 * @param int    $term_id  term_id.
	 * @return string $content
	 * @since 1.00
	 */
	public function add_term_custom_column( $content, $column_name, $term_id ) {

		if ( 'image' === $column_name ) {
			$featured_image_id = get_term_meta( $term_id, 'featured_image_id', true );
			$content = wp_get_attachment_image( $featured_image_id, array( 64, 64 ) );
		}

		return $content;

	}

	/** ==================================================
	 * Post Published
	 *
	 * @since 1.02
	 */
	public function post_published_update() {

		$categoryfeaturedimage_settings = get_option( 'categoryfeaturedimage' );
		if ( $categoryfeaturedimage_settings['when_posting'] ) {
			$post_types = $this->post_custom_types();
			foreach ( $post_types as $post_type ) {
				add_action( 'publish_' . $post_type, array( $this, 'post_published_update_thumbnail_id' ), 10, 2 );
			}
		}

	}

	/** ==================================================
	 * Update meta data
	 *
	 * @param int    $post_id  post_id.
	 * @param object $post  post.
	 * @since 1.00
	 */
	public function post_published_update_thumbnail_id( $post_id, $post ) {

		$categoryfeaturedimage_exclude = get_post_meta( $post_id, 'categoryfeaturedimage_exclude', true );
		if ( ! $categoryfeaturedimage_exclude ) {
			$terms = get_the_terms( $post_id, 'category' );
			$child_ids = array();
			foreach ( $terms as $term ) {
				$child_ids[] = $term->term_id;
				$term_id = $term->term_id;
			}
			foreach ( $child_ids as $child_id ) {
				$term2 = get_term( $child_id, 'category' );
				$parent_id = $term2->parent;
				if ( in_array( $parent_id, $child_ids ) ) {
					$term_id = $parent_id;
				}
			}
			$featured_image_id = get_term_meta( $term_id, 'featured_image_id', true );
			update_post_meta( $post_id, '_thumbnail_id', $featured_image_id );
		}

	}

	/** ==================================================
	 * Database
	 *
	 * @param int $term_id  term_id.
	 * @param int $featured_image_id  featured_image_id.
	 * @since 1.00
	 */
	private function db_save( $term_id, $featured_image_id ) {

		$arg = array(
			'posts_per_page'    => -1,
			'category'          => $term_id,
			'orderby'           => 'date',
			'order'             => 'DESC',
			'post_type'         => $this->post_custom_types(),
			'post_status'       => 'publish',
		);
		$posts = get_posts( $arg );

		foreach ( $posts as $post ) {
			$categoryfeaturedimage_exclude = get_post_meta( $post->ID, 'categoryfeaturedimage_exclude', true );
			if ( ! $categoryfeaturedimage_exclude ) {
				if ( $featured_image_id > 0 ) {
					update_post_meta( $post->ID, '_thumbnail_id', $featured_image_id );
				} else {
					delete_post_meta( $post->ID, '_thumbnail_id' );
				}
			}
		}

	}

	/** ==================================================
	 * Edit Category Html View
	 *
	 * @param int  $image_id  image_id.
	 * @param bool $edit  edit.
	 * @since 1.00
	 */
	private function edit_category_html( $image_id, $edit ) {

		if ( $image_id ) {
			$button_text = __( 'Replace Image' );
		} else {
			$button_text = __( 'Add new image' );
		}
		if ( $edit ) {
			?><tr class="form-field">
			<?php
		} else {
			?>
			<div class="form-field">
			<?php
		}
		if ( $edit ) {
			?>
			<th>
			<?php
		}
		?>
		<label for="featured_image_id"></label><?php esc_html_e( 'Featured Image' ); ?>
		<?php
		if ( $edit ) {
			?>
			</th><td>
			<?php
		}
		if ( $image_id ) {
			$image = $image_id;
		} else {
			$image = get_option( 'media_selector_attachment_id' );
		}
		?>
		<div class='image-preview-wrapper'>
		<img id='image-preview' src='<?php echo esc_url( wp_get_attachment_url( $image ) ); ?>' height='100'>
		</div>
		<input id="upload_image_button" type="button" class="button" value="<?php echo esc_attr( $button_text ); ?>" />
		<input id="delete_image_button" type="button" class="button" value="<?php esc_attr_e( 'Delete' ); ?>" />
		<?php wp_nonce_field( 'fi_id_set', 'featured_image_id_set' ); ?>
		<input type='hidden' name='featured_image_id' id='featured_image_id' value="<?php echo esc_attr( $image ); ?>">
		<?php
		if ( $edit ) {
			?>
			<p class="description"><?php esc_html_e( 'When updated, this image will be the featured image of all posts for this category. For posts that you do not want to change, uncheck apply the "Category Featured Image" for each post.', 'category-featured-image' ); ?></p></td><tr>
			<?php
		} else {
			?>
			</div><div style="margin: 5px 0px; padding: 5px 0px;"></div>
			<?php
		}

	}

	/** ==================================================
	 * Media Selector
	 *
	 * @since 1.00
	 */
	private function media_selector_print_scripts() {

		$my_saved_attachment_post_id = get_option( 'media_selector_attachment_id', 0 );

		?>
		<script type='text/javascript'>
			jQuery( document ).ready( function( $ ) {
				/* Uploading files */
				var file_frame;
				var wp_media_post_id = wp.media.model.settings.post.id; /* Old id */
				var set_to_post_id = <?php echo intval( $my_saved_attachment_post_id ); ?>; /* Set this */
				jQuery('#upload_image_button').on('click', function( event ){
					event.preventDefault();
					/* If the media frame already exists, reopen it. */
					if ( file_frame ) {
						/* Set the post ID to what we want */
						file_frame.uploader.uploader.param( 'post_id', set_to_post_id );
						/* Open frame */
						file_frame.open();
						return;
					} else {
						/* Set the wp.media post id so the uploader grabs the ID we want when initialised */
						wp.media.model.settings.post.id = set_to_post_id;
					}
					/* Create the media frame. */
					file_frame = wp.media.frames.file_frame = wp.media({
						title: cfi_text.title,
						button: {
							text: cfi_text.text,
						},
						multiple: false	/* Set to true to allow multiple files to be selected */
					});
					/* When an image is selected, run a callback. */
					file_frame.on( 'select', function() {
						/* We set multiple to false so only get one image from the uploader */
						attachment = file_frame.state().get('selection').first().toJSON();
						/* Do something with attachment.id and/or attachment.url here */
						$( '#image-preview' ).attr( 'src', attachment.url ).css( 'width', 'auto' );
						$( '#featured_image_id' ).val( attachment.id );
						/* Restore the main post ID */
						wp.media.model.settings.post.id = wp_media_post_id;
					});
					/* Finally, open the modal */
					file_frame.open();
				});
				/* Restore the main ID when the add media button is pressed */
				jQuery( 'a.add_media' ).on( 'click', function() {
					wp.media.model.settings.post.id = wp_media_post_id;
				});
				/* Remove media */
				jQuery('#delete_image_button').on('click', function( event ){
					event.preventDefault();
					/* Clear out the preview image */
					$( '#image-preview' ).removeAttr('src');
					/* Delete the image id from the hidden input */
					$( '#featured_image_id' ).val( 0 );
					wp.media.model.settings.post.id = '';
				});
			});
		</script>
		<?php

	}

	/** ==================================================
	 * Post & Custom Post Type Name
	 *
	 * @since 1.00
	 */
	private function post_custom_types() {

		$post_custom_types = array( 'post' );
		$args = array(
			'public'   => true,
			'_builtin' => false,
		);
		$custom_post_types = get_post_types( $args, 'objects', 'and' );
		foreach ( $custom_post_types as $post_type ) {
			$post_custom_types[] = $post_type->name;
		}

		return $post_custom_types;

	}

}


