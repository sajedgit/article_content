<section class="blog_area section_padding_0_80">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12 col-lg-8">
                    <div class="row">
					<?php
						// get sticky posts from DB
						$sticky = get_option('sticky_posts');
						// check if there are any
						if (!empty($sticky)) 
						{
							// optional: sort the newest IDs first
							rsort($sticky);
							// override the query
							$args = array(
								'post__in' => $sticky
							);
							query_posts($args);
							// the loop
							while (have_posts()) 
							{
								 the_post();
								 // your code
						?>
                        <!-- stiky Post -->
                        <div class="col-12">
                            <div class="single-post wow fadeInUp" data-wow-delay=".2s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                     <?php echo the_post_thumbnail(); ?>
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#"><?php the_author(); ?></a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#"><?php echo get_the_date( 'M d, Y' ); ?></a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> <?php echo get_comments_number($post->ID); ?> </a>
                                            </div>
                                             <!-- Post Share -->
                                            <div class="post-share">
                                                <a onClick="return popitup('https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink() ?>')" href=""><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="<?php the_permalink(); ?>">
                                        <h2 class="post-headline"><?php the_title() ?></h2>
                                    </a>
                                    <p><?php the_excerpt(); ?></p>
                                    <a href="<?php the_permalink(); ?>" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div>
						
						<?php
							}
						}
					?>
						
						<?php 
							$args = array('numberposts' => 4,'orderby' => 'date','order' => 'DESC');
							$welcome_posts = get_posts( $args );
						    foreach($welcome_posts as $post):
								setup_postdata( $post );
							    $featured_img_url = get_the_post_thumbnail_url($post->ID, 'thumb')
						?>

                        <!-- Single Post -->
                        <div class="col-12 col-md-6">
                            <div class="single-post wow fadeInUp" data-wow-delay=".4s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="<?php echo $featured_img_url ?>" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#"><?php  the_author(); ?></a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#"><?php echo get_the_date( 'M d, Y' ); ?></a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> <?php echo get_comments_number($post->ID); ?></a>
                                            </div>
                                             <!-- Post Share -->
                                            <div class="post-share">
                                                <a onClick="return popitup('https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink() ?>')" href=""><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="<?php the_permalink() ?>">
                                        <h4 class="post-headline"><?php the_title(); ?></h4>
                                    </a>
                                </div>
                            </div>
                        </div>
						<?php endforeach; ?>

                        <!-- ******* List Blog Area Start ******* -->
						
						<?php 
							$args = array('numberposts' => 4,'orderby' => 'date','order' => 'DESC');
							$welcome_posts = get_posts( $args );
						    foreach($welcome_posts as $post):
								setup_postdata( $post );
							    $featured_img_url = get_the_post_thumbnail_url($post->ID, 'thumb')
						?>

                        <!-- Single Post -->
                        <div class="col-12">
                            <div class="list-blog single-post d-sm-flex wow fadeInUpBig" data-wow-delay=".2s">
                                <!-- Post Thumb -->
                                <div class="post-thumb">
                                    <img src="<?php echo $featured_img_url ?>" alt="">
                                </div>
                                <!-- Post Content -->
                                <div class="post-content">
                                    <div class="post-meta d-flex">
                                        <div class="post-author-date-area d-flex">
                                            <!-- Post Author -->
                                            <div class="post-author">
                                                <a href="#"><?php the_author(); ?></a>
                                            </div>
                                            <!-- Post Date -->
                                            <div class="post-date">
                                                <a href="#"><?php echo get_the_date( 'M d, Y' ); ?></a>
                                            </div>
                                        </div>
                                        <!-- Post Comment & Share Area -->
                                        <div class="post-comment-share-area d-flex">
                                            <!-- Post Favourite -->
                                            <div class="post-favourite">
                                                <a href="#"><i class="fa fa-heart-o" aria-hidden="true"></i> 10</a>
                                            </div>
                                            <!-- Post Comments -->
                                            <div class="post-comments">
                                                <a href="#"><i class="fa fa-comment-o" aria-hidden="true"></i> <?php echo get_comments_number($post->ID); ?></a>
                                            </div>
                                          
											<!-- Post Share -->
                                            <div class="post-share">
                                                <a onClick="return popitup('https://www.facebook.com/sharer/sharer.php?u=<?php the_permalink() ?>')" href=""><i class="fa fa-share-alt" aria-hidden="true"></i></a>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="<?php the_permalink() ?>">
                                        <h4 class="post-headline"><?php the_title(); ?></h4>
                                    </a>
                                    <p><?php the_excerpt(); ?></p>
                                    <a href="<?php the_permalink() ?>" class="read-more">Continue Reading..</a>
                                </div>
                            </div>
                        </div>

                       <?php endforeach; ?>

                        

                      

                    </div>
                </div>

                <!-- ****** Blog Sidebar ****** -->
				
				<?php get_sidebar(); ?>
				
                <!-- ****** Blog Sidebar ****** -->
                
				
				
            </div>
        </div>
    </section>