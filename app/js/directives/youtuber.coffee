
angular.module('karaoke.directives').directive 'youtuber', ($sce) ->
  return {
    restrict: 'EA'
    scope:
      code:'='
    replace: true
    templateUrl: '../partials/youtube.html'
    link: (scope) ->
      scope.$watch 'code', (code) ->

        if code
          scope.url = $sce.trustAsResourceUrl('http://www.youtube.com/v/' +
            code + '?version=3&enablejsapi=1')

      # hmm, not actually doing anything with trackid.
      # scope.$watch 'trackid', (newVal) ->

      #   if newVal
      #     console.log 'got trackid ' + newVal


      return null
  }