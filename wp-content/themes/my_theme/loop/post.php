<?php
global $post;
// var_dump($post);
?>
<div>
    <div class="post-block-inner">
        <div class="post-image">
            <?php the_post_thumbnail(); ?>
            <div class="post-detail">
                <div class="post-title">
                    <a href="<?php echo $post->guid ?>" title="<?php echo the_title(); ?>"><?php echo the_title(); ?></a>
                </div>
                <div class="post-description"><?php  the_excerpt_rss();// the_excerpt(); ?></div>
            </div>
        </div>
        <div class="date-hover">
            <div class="date-time">
                <div class="show-date"><?php echo get_the_date('l d,Y', $post); ?></div>
            </div>
        </div>
    </div>

</div>