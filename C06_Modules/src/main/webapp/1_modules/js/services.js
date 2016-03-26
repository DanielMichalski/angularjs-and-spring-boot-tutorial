(function () {
    var app = angular.module('exampleServices', []);

    app.factory('memberService', ['$http', '$log', function ($http, $log) {
        var urls = {
            'team1': 'json/members-team1.json',
            'team2': 'json/members-team2.json',
            'leader': 'json/team-leader.json'
        };

        return function (type, callback) {
            var url = urls[type];
            callback = callback || function () {
                };

            $http.get(url)
                .success((callback))
                .error(function (data, status) {
                    $log.error('Error while loading data. URL: ' + url + ', status: ' + status);
                });
        }
    }]);

    app.factory('teamNotifier', ["$log", function ($log) {
        var notifyMember = function (member, message) {
            $log.info('Sending message [' + message + '] to [' + member.email + ']');
        };

        return function (team, message) {
            for (var i = 0; i < team.length; i++) {
                notifyMember(team[i], message);
            }
        };
    }]);

})();