(function () {
    var app = angular.module('exampleControllers', ['exampleDirectives', 'exampleServices']);

    app.controller('ProjectsController', ['$scope', function ($scope) {
        $scope.projects = [
            {name: 'Project1', client: 'Client1'},
            {name: 'Project2', client: 'Client2'},
            {name: 'Project3', client: 'Client3'}
        ]
    }]);

    app.controller('TeamsController', ['$scope', 'memberService', 'teamNotifier',
        function ($scope, memberService, teamNotifier) {
            memberService('team1', function (data) {
                $scope.team1 = data;
            });

            memberService('team2', function (data) {
                $scope.team2 = data;
            });

            memberService('leader', function (data) {
                $scope.teamLeader = data;
            });

            $scope.notifyTeam = function (team) {
                teamNotifier(team, 'Go work');
            }
        }]);

})();