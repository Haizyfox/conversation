'use strict'

app = angular.module('convoApp')

app.directive 'zurbSelect', () ->
    scope: {
      options : "=" ,
      callback : "=",
      model: "="
    }
    ,template: '<select name="selectedUIC" style="display:none;"></select>
                <div class="custom dropdown medium" ng-init="menuOpen=false" ng-class="{open: menuOpen}" ng-click="menuOpen = !menuOpen">
                <a href="#" class="current custom-select">{{model}}</a>
                <a href="#" class="selector custom-select"></a>
                <ul>
                <li ng-repeat="option in options" class="custom-select" ng-click="callback(option)">{{option.name}}</li>
                </ul>
                </div>'
