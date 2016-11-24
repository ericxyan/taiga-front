###
# Copyright (C) 2014-2016 Taiga Agile LLC <taiga@taiga.io>
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as
# published by the Free Software Foundation, either version 3 of the
# License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU Affero General Public License for more details.
#
# You should have received a copy of the GNU Affero General Public License
# along with this program. If not, see <http://www.gnu.org/licenses/>.
#
# File: trello-import.service.coffee
###

class TrelloImportService extends taiga.Service
    @.$inject = []

    constructor: () ->

    fetchProjects: () ->
        return new Promise (resolve) =>
            @.projects = Immutable.fromJS([
                {
                    id: 1,
                    name: "Project1",
                    description: "p1",
                    is_private: true
                },
                {
                    id: 2,
                    name: "Project2",
                    description: "p2",
                    is_private: false
                },
                {
                    id: 3,
                    name: "Project3",
                    description: "p3",
                    is_private: false
                },
                {
                    id: 4,
                    name: "A Project4",
                    description: "p4",
                    is_private: false
                }
            ])

            resolve(@.projects)

angular.module("taigaProjects").service("tgTrelloImportService", TrelloImportService)
