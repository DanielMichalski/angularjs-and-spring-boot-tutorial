(function () {
    var app = angular.module('exampleDirectives', []);

    app.directive('businessCard', function () {
        return {
            restrict: 'AEC',
            scope: {
                member: '='
            },
            templateUrl: function (elem, attr) {
                attr.type = attr.type || 'simple';
                return 'html/member-' + attr.type + '-bc.html';
            }
        }
    });

})();