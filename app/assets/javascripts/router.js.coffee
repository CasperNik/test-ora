# For more information see: http://emberjs.com/guides/routing/

TestOra.Router.map ()->
  @resource 'blogs', ()->
    @route 'new'
    @route 'list'
    @resource 'blog', {path: '/:blog_id'}, ()->
      @route 'edit'

  @resource 'reviews', ()->
    @route 'new'
    @route 'list'
    @resource 'review', {path: '/:review_id'}, ()->
      @route 'edit'