webpackJsonp([1],{

/***/ "./appClient.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery__ = __webpack_require__("../node_modules/jquery/src/jquery.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0_jquery___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0_jquery__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_foundation_sites_dist_js_foundation__ = __webpack_require__("../node_modules/foundation-sites/dist/js/foundation.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1_foundation_sites_dist_js_foundation___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1_foundation_sites_dist_js_foundation__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_jquery_datetimepicker__ = __webpack_require__("../node_modules/jquery-datetimepicker/build/jquery.datetimepicker.full.min.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2_jquery_datetimepicker___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2_jquery_datetimepicker__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_chart_js_src_chart__ = __webpack_require__("../node_modules/chart.js/src/chart.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3_chart_js_src_chart___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3_chart_js_src_chart__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_select2__ = __webpack_require__("../node_modules/select2/dist/js/select2.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4_select2___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4_select2__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_angular__ = __webpack_require__("../node_modules/angular/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5_angular___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5_angular__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_sortablejs_Sortable__ = __webpack_require__("../node_modules/sortablejs/Sortable.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6_sortablejs_Sortable___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6_sortablejs_Sortable__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_microplugin__ = __webpack_require__("../node_modules/microplugin/src/microplugin.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7_microplugin___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7_microplugin__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_sifter__ = __webpack_require__("../node_modules/sifter/sifter.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8_sifter___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_8_sifter__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9_angular_legacy_sortablejs_maintained__ = __webpack_require__("../node_modules/angular-legacy-sortablejs-maintained/angular-legacy-sortable.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9_angular_legacy_sortablejs_maintained___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_9_angular_legacy_sortablejs_maintained__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_angular_translate__ = __webpack_require__("../node_modules/angular-translate/dist/angular-translate.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10_angular_translate___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_10_angular_translate__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11_angular_sanitize__ = __webpack_require__("../node_modules/angular-sanitize/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11_angular_sanitize___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_11_angular_sanitize__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12_ng_table__ = __webpack_require__("../node_modules/ng-table/dist/ng-table.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_12_ng_table___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_12_ng_table__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13_angular_moment__ = __webpack_require__("../node_modules/angular-moment/angular-moment.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_13_angular_moment___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_13_angular_moment__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14_angular_ui_router__ = __webpack_require__("../node_modules/angular-ui-router/release/angular-ui-router.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_14_angular_ui_router___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_14_angular_ui_router__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15_restangular__ = __webpack_require__("../node_modules/restangular/dist/restangular.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_15_restangular___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_15_restangular__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16_angular_jwt___ = __webpack_require__("../node_modules/angular-jwt/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_16_angular_jwt____default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_16_angular_jwt___);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17_ui_select__ = __webpack_require__("../node_modules/ui-select/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_17_ui_select___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_17_ui_select__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_18_pickadate_lib_picker__ = __webpack_require__("../node_modules/pickadate/lib/picker.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_18_pickadate_lib_picker___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_18_pickadate_lib_picker__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_19_angular_flash_alert__ = __webpack_require__("../node_modules/angular-flash-alert/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_19_angular_flash_alert___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_19_angular_flash_alert__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_20_angular_selectize2_dist_selectize__ = __webpack_require__("../node_modules/angular-selectize2/dist/selectize.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_20_angular_selectize2_dist_selectize___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_20_angular_selectize2_dist_selectize__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21_angular_chart_js_angular_chart__ = __webpack_require__("../node_modules/angular-chart.js/angular-chart.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_21_angular_chart_js_angular_chart___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_21_angular_chart_js_angular_chart__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_22_angular_loading_bar__ = __webpack_require__("../node_modules/angular-loading-bar/index.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_22_angular_loading_bar___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_22_angular_loading_bar__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_23_pickadate_lib_themes_classic_css__ = __webpack_require__("../node_modules/pickadate/lib/themes/classic.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_23_pickadate_lib_themes_classic_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_23_pickadate_lib_themes_classic_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_24_pickadate_lib_themes_classic_date_css__ = __webpack_require__("../node_modules/pickadate/lib/themes/classic.date.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_24_pickadate_lib_themes_classic_date_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_24_pickadate_lib_themes_classic_date_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_25_angular_flash_alert_dist_angular_flash_min_css__ = __webpack_require__("../node_modules/angular-flash-alert/dist/angular-flash.min.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_25_angular_flash_alert_dist_angular_flash_min_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_25_angular_flash_alert_dist_angular_flash_min_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_26_ui_select_dist_select_min_css__ = __webpack_require__("../node_modules/ui-select/dist/select.min.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_26_ui_select_dist_select_min_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_26_ui_select_dist_select_min_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_27_selectize_dist_css_selectize_css__ = __webpack_require__("../node_modules/selectize/dist/css/selectize.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_27_selectize_dist_css_selectize_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_27_selectize_dist_css_selectize_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_28_jquery_datetimepicker_jquery_datetimepicker_css__ = __webpack_require__("../node_modules/jquery-datetimepicker/jquery.datetimepicker.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_28_jquery_datetimepicker_jquery_datetimepicker_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_28_jquery_datetimepicker_jquery_datetimepicker_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_29_angular_loading_bar_build_loading_bar_css__ = __webpack_require__("../node_modules/angular-loading-bar/build/loading-bar.css");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_29_angular_loading_bar_build_loading_bar_css___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_29_angular_loading_bar_build_loading_bar_css__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_30__component_global_map_EditableMap__ = __webpack_require__("./component/global/map/EditableMap.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_31__component_global_map_ParamsMap__ = __webpack_require__("./component/global/map/ParamsMap.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_32__component_global_checkbox_CheckboxDirective__ = __webpack_require__("./component/global/checkbox/CheckboxDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_33__component_global_modal_ModalDirective__ = __webpack_require__("./component/global/modal/ModalDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_34__component_global_datepicker_DatepickerDirective__ = __webpack_require__("./component/global/datepicker/DatepickerDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_35__component_global_validation_FormValidationDirective__ = __webpack_require__("./component/global/validation/FormValidationDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_36__component_global_csv_CsvUploadDirective__ = __webpack_require__("./component/global/csv/CsvUploadDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_37__component_global_import_XmlUploadDirective__ = __webpack_require__("./component/global/import/XmlUploadDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_38__component_global_security_SecurityController__ = __webpack_require__("./component/global/security/SecurityController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_39__component_global_security_SecurityService__ = __webpack_require__("./component/global/security/SecurityService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_40__component_global_data_DataService__ = __webpack_require__("./component/global/data/DataService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_41__component_global_validation_Validation__ = __webpack_require__("./component/global/validation/Validation.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_42__component_global_translations_TranslationService__ = __webpack_require__("./component/global/translations/TranslationService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_43__component_global_translations_TranslationLoader__ = __webpack_require__("./component/global/translations/TranslationLoader.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_44__component_global_auth_AuthService__ = __webpack_require__("./component/global/auth/AuthService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_45__component_global_root_RootController__ = __webpack_require__("./component/global/root/RootController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_46__component_global_pages_StaticPagesController__ = __webpack_require__("./component/global/pages/StaticPagesController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_47__component_global_pages_StaticPagesDirective__ = __webpack_require__("./component/global/pages/StaticPagesDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_48__component_global_boxLoader_BoxLoaderDirective__ = __webpack_require__("./component/global/boxLoader/BoxLoaderDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_49__component_global_filters_Filters__ = __webpack_require__("./component/global/filters/Filters.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_50__component_global_debug_DebugController__ = __webpack_require__("./component/global/debug/DebugController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_51__style_main_scss__ = __webpack_require__("./style/main.scss");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_51__style_main_scss___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_51__style_main_scss__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_52__scripts_main__ = __webpack_require__("./scripts/main.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_52__scripts_main___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_52__scripts_main__);
__webpack_require__("./templates/client.html");

var _ = __webpack_require__("../node_modules/lodash/index.js");

// import jquery























// global styles





























// global scss

// global js


window.Selectize = __webpack_require__("../node_modules/selectize/dist/js/selectize.js");

// open loyalty modules
__webpack_require__("./modules/client.campaign/module.js");
__webpack_require__("./modules/client.dashboard/module.js");
__webpack_require__("./modules/client.earning-rules/module.js");
__webpack_require__("./modules/client.login/module.js");
__webpack_require__("./modules/client.partials/module.js");
__webpack_require__("./modules/client.profile/module.js");
__webpack_require__("./modules/client.registration/module.js");
__webpack_require__("./modules/client.transactions/module.js");
__webpack_require__("./modules/client.transfers/module.js");

if (!window.OpenLoyaltyConfig.debug) {
    if (!window.console) window.console = {};
    var methods = ["log", "debug", "warn", "info"];
    for (var i = 0; i < methods.length; i++) {
        console[methods[i]] = function () {};
    }
}

__WEBPACK_IMPORTED_MODULE_5_angular___default.a.module('OpenLoyalty', ['ui.router', 'angular-jwt', 'restangular', 'ngFlash', 'angularMoment', 'ngTable', 'ui.select', 'ngSanitize', 'angular-loading-bar', 'ng-sortable', 'pascalprecht.translate', 'selectize', 'client.campaign', 'client.dashboard', 'client.earning-rules', 'client.login', 'client.partials', 'client.profile', 'client.registration', 'client.transactions', 'client.transfers']).config(function ($stateProvider, $urlRouterProvider, $httpProvider, jwtInterceptorProvider, RestangularProvider, $translateProvider, $locationProvider, cfpLoadingBarProvider) {
    var config = window.OpenLoyaltyConfig;

    cfpLoadingBarProvider.includeSpinner = false;
    $locationProvider.hashPrefix('!');
    $translateProvider.useLoader('TranslationLoader');
    $translateProvider.preferredLanguage('en');

    RestangularProvider.setBaseUrl(config.apiUrl);

    RestangularProvider.addResponseInterceptor(function (data, operation, what, url, response, $state) {
        var extractedData = data;

        if (extractedData.customers) {
            for (var _i in data.customers) {
                if (extractedData.customers[_i].customerId) {
                    extractedData.customers[_i].id = extractedData.customers[_i].customerId;
                }
            }
        }
        if (extractedData.customerId) {
            extractedData.id = extractedData.customerId;
        }
        if (extractedData.campaignId) {
            extractedData.id = extractedData.campaignId;
        }

        if (operation === "getList") {
            var keys = Object.keys(data);
            extractedData = data[keys[0]];
            extractedData.total = data.total;
        }

        return extractedData;
    });

    jwtInterceptorProvider.tokenGetter = ['AuthService', 'jwtHelper', 'config', '$state', function (AuthService, jwtHelper, config, $state) {
        if (config.url.indexOf('login_check') !== -1 || config.url.indexOf('token/refresh') !== -1) {
            return null;
        }

        var idToken = AuthService.getStoredToken();

        if (idToken && jwtHelper.isTokenExpired(idToken) && AuthService.isRememberMe()) {
            return AuthService.getRefreshToken().then(function (res) {
                var id_token = res.token;
                var refresh_token = res.refresh_token;

                AuthService.setStoredRefreshToken(refresh_token);
                AuthService.setStoredToken(id_token);

                return id_token;
            }, function (res) {
                AuthService.logout();
            });
        } else if (idToken && !jwtHelper.isTokenExpired(idToken)) {
            return idToken;
        } else {
            return null;
        }
    }];

    $httpProvider.interceptors.push('jwtInterceptor');

    $urlRouterProvider.otherwise("/");
    $stateProvider.state('customer', {
        url: "/customer"
    }).state('customer.panel', {
        url: "/panel",
        resolve: {
            DataServiceResolver: ['DataService', function (DataService) {
                return DataService.getAvailableData();
            }]
        }
    }).state('customer.static', {
        url: "/page/:pageName",
        views: {
            '@': {
                templateUrl: __webpack_require__("./component/global/pages/templates/static-pages.html"),
                controller: 'StaticPagesController',
                controllerAs: 'StaticPagesCtrl'
            }
        }
    });

    if (window.OpenLoyaltyConfig.debug) {
        $stateProvider.state('debug', {
            url: "/debug",
            views: {
                '@': {
                    templateUrl: __webpack_require__("./component/global/debug/templates/debug.html"),
                    controller: 'DebugController',
                    controllerAs: 'DebugCtrl'
                }
            }
        });
    }
}).run(['Restangular', '$state', 'AuthService', '$rootScope', '$templateCache', function (Restangular, $state, AuthService, $rootScope, $templateCache) {
    $rootScope.pendingRequests = _.isNumber($rootScope.pendingRequests) ? $rootScope.pendingRequests : 0;
    Restangular.setErrorInterceptor(function (response) {
        $rootScope.pendingRequests -= 1;

        if (response.status === 401) {
            AuthService.logout();
        }
        return true;
    });
    Restangular.addResponseInterceptor(function (res) {
        $rootScope.pendingRequests -= 1;

        return res;
    });
    Restangular.addRequestInterceptor(function (req) {
        $rootScope.pendingRequests += 1;

        return req;
    });
    $templateCache.put('ng-table/filters/text.html', '<input type="text" name="{{name}}" ng-disabled="$filterRow.disabled" ng-model="params.filter()[name]" class="input-filter form-control" placeholder="{{getFilterPlaceholderValue(filter, name)}}" ng-model-options="{debounce: 1500}" /> ');
    $templateCache.put('ng-table/filters/number.html', '<input type="number" name="{{name}}" ng-disabled="$filterRow.disabled" ng-model="params.filter()[name]" class="input-filter form-control" placeholder="{{getFilterPlaceholderValue(filter, name)}}" ng-model-options="{debounce: 1500}" /> ');
}]).filter('commaToDot', function () {
    return new __WEBPACK_IMPORTED_MODULE_49__component_global_filters_Filters__["a" /* default */].CommaToDecimal();
}).filter('percent', function () {
    return new __WEBPACK_IMPORTED_MODULE_49__component_global_filters_Filters__["a" /* default */].Percent();
}).filter('propsFilter', function () {
    return new __WEBPACK_IMPORTED_MODULE_49__component_global_filters_Filters__["a" /* default */].PropsFilter();
}).filter('isEmpty', function () {
    return new __WEBPACK_IMPORTED_MODULE_49__component_global_filters_Filters__["a" /* default */].IsEmptyFilter();
}).filter('roundPoints', function () {
    return new __WEBPACK_IMPORTED_MODULE_49__component_global_filters_Filters__["a" /* default */].RoundPoints();
}).directive('modal', function () {
    return new __WEBPACK_IMPORTED_MODULE_33__component_global_modal_ModalDirective__["a" /* default */]();
}).directive('datepicker', function () {
    return new __WEBPACK_IMPORTED_MODULE_34__component_global_datepicker_DatepickerDirective__["a" /* default */]();
}).directive('formValidation', function () {
    return new __WEBPACK_IMPORTED_MODULE_35__component_global_validation_FormValidationDirective__["a" /* default */]();
}).directive('csvUpload', function () {
    return new __WEBPACK_IMPORTED_MODULE_36__component_global_csv_CsvUploadDirective__["a" /* default */]();
}).directive('xmlUpload', function () {
    return new __WEBPACK_IMPORTED_MODULE_37__component_global_import_XmlUploadDirective__["a" /* default */]();
}).directive('checkbox', function () {
    return new __WEBPACK_IMPORTED_MODULE_32__component_global_checkbox_CheckboxDirective__["a" /* default */]();
}).directive('staticPage', function () {
    return new __WEBPACK_IMPORTED_MODULE_47__component_global_pages_StaticPagesDirective__["a" /* default */]();
}).directive('boxLoader', __WEBPACK_IMPORTED_MODULE_48__component_global_boxLoader_BoxLoaderDirective__["a" /* default */].create).service('Validation', __WEBPACK_IMPORTED_MODULE_41__component_global_validation_Validation__["a" /* default */]).service('EditableMap', __WEBPACK_IMPORTED_MODULE_30__component_global_map_EditableMap__["a" /* default */]).service('ParamsMap', __WEBPACK_IMPORTED_MODULE_31__component_global_map_ParamsMap__["a" /* default */]).service('DataService', __WEBPACK_IMPORTED_MODULE_40__component_global_data_DataService__["a" /* default */]).service('Validation', __WEBPACK_IMPORTED_MODULE_41__component_global_validation_Validation__["a" /* default */]).service('AuthService', __WEBPACK_IMPORTED_MODULE_44__component_global_auth_AuthService__["a" /* default */]).service('SecurityService', __WEBPACK_IMPORTED_MODULE_39__component_global_security_SecurityService__["a" /* default */]).service('TranslationService', __WEBPACK_IMPORTED_MODULE_42__component_global_translations_TranslationService__["a" /* default */]).factory('TranslationLoader', ['TranslationService', function (TranslationService) {
    return new __WEBPACK_IMPORTED_MODULE_43__component_global_translations_TranslationLoader__["a" /* default */](TranslationService);
}]).controller('RootController', __WEBPACK_IMPORTED_MODULE_45__component_global_root_RootController__["a" /* default */]).controller('SecurityController', __WEBPACK_IMPORTED_MODULE_38__component_global_security_SecurityController__["a" /* default */]).controller('StaticPagesController', __WEBPACK_IMPORTED_MODULE_46__component_global_pages_StaticPagesController__["a" /* default */]).controller('DebugController', __WEBPACK_IMPORTED_MODULE_50__component_global_debug_DebugController__["a" /* default */]);

/***/ }),

/***/ "./component/global/pages/StaticPagesController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var StaticPagesController = function StaticPagesController($scope, $state, $stateParams) {
    _classCallCheck(this, StaticPagesController);

    this.$scope = $scope;
    this.$state = $state;
    this.$stateParams = $stateParams;
    this.adminTemplate = $state.includes('admin');
};

/* harmony default export */ __webpack_exports__["a"] = (StaticPagesController);


StaticPagesController.$inject = ['$scope', '$state', '$stateParams'];

/***/ }),

/***/ "./component/global/pages/StaticPagesDirective.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var StaticPagesDirective = function StaticPagesDirective() {
    _classCallCheck(this, StaticPagesDirective);

    this.restrict = 'E';
    this.scope = {
        page: '='
    };
    this.template = '<ng-include src="getTemplateUrl()"/>';
    this.controller = ['$scope', '$stateParams', function ($scope, $stateParams) {
        $scope.getTemplateUrl = function () {
            if ($stateParams.pageName) {
                __webpack_require__("./component/global/pages/templates/static recursive ^\\.\\/.*\\.html$")("./" + $stateParams.pageName + '.html');
                return './templates/' + $stateParams.pageName + '.html';
            }
        };
    }];
};

/* harmony default export */ __webpack_exports__["a"] = (StaticPagesDirective);


StaticPagesDirective.$inject = ['$scope', '$stateParams'];

/***/ }),

/***/ "./component/global/pages/templates/static recursive ^\\.\\/.*\\.html$":
/***/ (function(module, exports, __webpack_require__) {

var map = {
	"./admin-test.html": "./component/global/pages/templates/static/admin-test.html",
	"./benefits.html": "./component/global/pages/templates/static/benefits.html",
	"./contact.html": "./component/global/pages/templates/static/contact.html",
	"./faq.html": "./component/global/pages/templates/static/faq.html",
	"./guide.html": "./component/global/pages/templates/static/guide.html",
	"./how-to-earn-points.html": "./component/global/pages/templates/static/how-to-earn-points.html",
	"./match-with-ecommerce.html": "./component/global/pages/templates/static/match-with-ecommerce.html",
	"./rfm.html": "./component/global/pages/templates/static/rfm.html",
	"./rules.html": "./component/global/pages/templates/static/rules.html",
	"./shop-connect.html": "./component/global/pages/templates/static/shop-connect.html",
	"./test.html": "./component/global/pages/templates/static/test.html",
	"./visit-offline.html": "./component/global/pages/templates/static/visit-offline.html"
};
function webpackContext(req) {
	return __webpack_require__(webpackContextResolve(req));
};
function webpackContextResolve(req) {
	var id = map[req];
	if(!(id + 1)) // check for number or string
		throw new Error("Cannot find module '" + req + "'.");
	return id;
};
webpackContext.keys = function webpackContextKeys() {
	return Object.keys(map);
};
webpackContext.resolve = webpackContextResolve;
module.exports = webpackContext;
webpackContext.id = "./component/global/pages/templates/static recursive ^\\.\\/.*\\.html$";

/***/ }),

/***/ "./component/global/pages/templates/static-pages.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/static-pages.html";

/***/ }),

/***/ "./component/global/pages/templates/static/admin-test.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/admin-test.html";

/***/ }),

/***/ "./component/global/pages/templates/static/benefits.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/benefits.html";

/***/ }),

/***/ "./component/global/pages/templates/static/contact.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/contact.html";

/***/ }),

/***/ "./component/global/pages/templates/static/faq.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/faq.html";

/***/ }),

/***/ "./component/global/pages/templates/static/guide.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/guide.html";

/***/ }),

/***/ "./component/global/pages/templates/static/how-to-earn-points.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/how-to-earn-points.html";

/***/ }),

/***/ "./component/global/pages/templates/static/match-with-ecommerce.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/match-with-ecommerce.html";

/***/ }),

/***/ "./component/global/pages/templates/static/rfm.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/rfm.html";

/***/ }),

/***/ "./component/global/pages/templates/static/rules.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/rules.html";

/***/ }),

/***/ "./component/global/pages/templates/static/shop-connect.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/shop-connect.html";

/***/ }),

/***/ "./component/global/pages/templates/static/test.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/test.html";

/***/ }),

/***/ "./component/global/pages/templates/static/visit-offline.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/visit-offline.html";

/***/ }),

/***/ "./img/ol_ban_1.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_1.jpg";

/***/ }),

/***/ "./img/ol_ban_10.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_10.jpg";

/***/ }),

/***/ "./img/ol_ban_2.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_2.jpg";

/***/ }),

/***/ "./img/ol_ban_3.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_3.jpg";

/***/ }),

/***/ "./img/ol_ban_4.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_4.jpg";

/***/ }),

/***/ "./img/ol_ban_5.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_5.jpg";

/***/ }),

/***/ "./img/ol_ban_6.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_6.jpg";

/***/ }),

/***/ "./img/ol_ban_7.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_7.jpg";

/***/ }),

/***/ "./img/ol_ban_8.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_8.jpg";

/***/ }),

/***/ "./img/ol_ban_9.jpg":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "img/ol_ban_9.jpg";

/***/ }),

/***/ "./modules/client.campaign/CustomerCampaignController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerCampaignController = function () {
    function CustomerCampaignController($scope, $state, AuthService, CustomerCampaignService, Flash, $q, ParamsMap, $stateParams, EditableMap, $filter, CustomerStatusService, DataService, NgTableParams) {
        _classCallCheck(this, CustomerCampaignController);

        if (!AuthService.isGranted('ROLE_PARTICIPANT')) {
            $state.go('customer-login');
        }
        this.id = AuthService.getLoggedUserId();

        this.$scope = $scope;
        this.CustomerCampaignService = CustomerCampaignService;
        this.CustomerStatusService = CustomerStatusService;
        this.$state = $state;
        this.Flash = Flash;
        this.ParamsMap = ParamsMap;
        this.EditableMap = EditableMap;
        this.NgTableParams = NgTableParams;
        this.$q = $q;
        this.$filter = $filter;
        this.available = false;
        this.bought = false;
        this.$scope.params = {
            perPage: 6,
            page: 1
        };
        this.$scope.currentPage = this.$scope.params.page;
        this.$scope.total = 0;
        this.$scope.totalPages = [];
        this.config = DataService.getConfig();
        this.$scope.loaderVisible = true;
    }

    _createClass(CustomerCampaignController, [{
        key: 'getStatus',
        value: function getStatus() {
            if (this.id) {
                var self = this;

                this.CustomerStatusService.getStatus(this.id).then(function (res) {
                    self.$scope.status = res;
                    self.$scope.availablePoints = res.points;
                    self.$scope.translateValues = {
                        "levelName": res.levelName,
                        "level": res.level,
                        "points": self.$filter('roundPoints')(res.points),
                        "pointsToNextLevel": res.pointsToNextLevel,
                        "transactionsAmountToNextLevelWithoutDeliveryCosts": res.transactionsAmountToNextLevelWithoutDeliveryCosts + res.currency,
                        "transactionsAmountToNextLevel": res.transactionsAmountToNextLevel + res.currency
                    };
                });
            }
        }
    }, {
        key: 'updateCouponUsage',
        value: function updateCouponUsage(campaignId, code, couponId, used) {
            var self = this;
            self.CustomerCampaignService.postUsage(campaignId, code, couponId, used).then(function (res) {}, function (res) {
                var message = self.$filter('translate')('xhr.pos_coupon_usage.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'getAvailableData',
        value: function getAvailableData() {
            var self = this;

            self.tableParams = new self.NgTableParams({
                count: 6
            }, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.CustomerCampaignService.getAvailable(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.loaderVisible = false;
                        self.$scope.campaigns = res;
                        angular.forEach(self.$scope.campaigns, function (campaign, key) {
                            self.CustomerCampaignService.getCampaignImage(campaign.campaignId).then(function (res) {
                                campaign.campaignFilePath = true;
                            }).catch(function (err) {
                                campaign.campaignFilePath = false;
                            });
                        });
                        params.total(res.total);
                        self.available = true;
                        dfd.resolve(res);
                    }, function () {
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'getBoughtData',
        value: function getBoughtData() {
            var self = this;

            self.tableParams = new self.NgTableParams({
                count: 6
            }, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.CustomerCampaignService.getBought(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.campaigns = res;
                        params.total(res.total);
                        self.available = true;
                        dfd.resolve(res);
                    }, function () {
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'buyCampaign',
        value: function buyCampaign(campaignId) {
            var self = this;

            self.CustomerCampaignService.postBuy(campaignId).then(function (res) {
                var message = self.$filter('translate')('xhr.customer_buy.success');
                self.$scope.boughtCoupon = res.coupon;
                self.$scope.boughtCampaign = _.find(self.$scope.campaigns, { campaignId: campaignId });
                self.$scope.showBoughtModal = true;
                self.Flash.create('success', message);
                self.getStatus();
                self.getAvailableData();
            }, function (res) {
                if (res.status === 404 || res.status === 400) {
                    self.getAvailableData();
                    self.showRewardClosedModal = true;
                } else {
                    var message = self.$filter('translate')('xhr.customer_buy.error');
                    self.Flash.create('danger', message);
                }
            });
        }

        /**
         * Generating photo route
         *
         * @method generatePhotoRoute
         * @returns {string}
         */

    }, {
        key: 'generatePhotoRoute',
        value: function generatePhotoRoute(campaignId) {
            return this.config.apiUrl + '/campaign/' + campaignId + '/photo';
        }
    }]);

    return CustomerCampaignController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerCampaignController);


CustomerCampaignController.$inject = ['$scope', '$state', 'AuthService', 'CustomerCampaignService', 'Flash', '$q', 'ParamsMap', '$stateParams', 'EditableMap', '$filter', 'CustomerStatusService', 'DataService', 'NgTableParams'];

/***/ }),

/***/ "./modules/client.campaign/CustomerCampaignService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerCampaignService = function () {
    function CustomerCampaignService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerCampaignService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerCampaignService, [{
        key: 'getAvailable',
        value: function getAvailable(params) {
            return this.Restangular.one('customer').one('campaign').all('available').getList(params);
        }
    }, {
        key: 'getBought',
        value: function getBought(params) {
            params.includeDetails = true;
            return this.Restangular.one('customer').one('campaign').all('bought').getList(params);
        }
    }, {
        key: 'postBuy',
        value: function postBuy(campaignId) {
            return this.Restangular.one('customer').one('campaign').one(campaignId).one('buy').post();
        }
    }, {
        key: 'postUsage',
        value: function postUsage(campaignId, code, couponId, usage) {
            return this.Restangular.one('customer').one('campaign').one('coupons').one('mark_as_used').customPOST({
                'coupons': [{
                    used: usage,
                    campaignId: campaignId,
                    code: code,
                    couponId: couponId
                }]
            });
        }

        /**
         * Calls for campaign image
         *
         * @method getCampaignImage
         * @param {Integer} campaignId
         * @returns {Promise}
         */

    }, {
        key: 'getCampaignImage',
        value: function getCampaignImage(campaignId) {
            return this.Restangular.one('campaign', campaignId).one('photo').get();
        }
    }]);

    return CustomerCampaignService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerCampaignService);


CustomerCampaignService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.campaign/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CustomerCampaignController__ = __webpack_require__("./modules/client.campaign/CustomerCampaignController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CustomerCampaignService__ = __webpack_require__("./modules/client.campaign/CustomerCampaignService.js");



var MODULE_NAME = 'client.campaign';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.campaign-list', {
        url: "/campaign",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-campaign-extend-top.html',
                controller: 'CustomerCampaignController',
                controllerAs: 'CustomerCampaignCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.campaign/templates/customer-campaign.html"),
                controller: 'CustomerCampaignController',
                controllerAs: 'CustomerCampaignCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-campaign-extend-bottom.html',
                controller: 'CustomerCampaignController',
                controllerAs: 'CustomerCampaignCtrl'
            }
        }
    }).state('customer.panel.bought-campaign-list', {
        url: "/bought",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-campaign-bought-extend-top.html',
                controller: 'CustomerCampaignController',
                controllerAs: 'CustomerCampaignCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.campaign/templates/customer-campaign-bought.html"),
                controller: 'CustomerCampaignController',
                controllerAs: 'CustomerCampaignCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-campaign-bought-extend-bottom.html',
                controller: 'CustomerCampaignController',
                controllerAs: 'CustomerCampaignCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-campaign-extend-top.html', '');
    $templateCache.put('templates/customer-campaign-extend-bottom.html', '');

    $templateCache.put('templates/customer-campaign-bought-extend-top.html', '');
    $templateCache.put('templates/customer-campaign-bought-extend-bottom.html', '');

    $http.get('templates/customer-campaign-bought.html').then(function (response) {
        $templateCache.put('templates/customer-campaign-bought.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/customer-campaign.html').then(function (response) {
        $templateCache.put('templates/customer-campaign.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerCampaignController', __WEBPACK_IMPORTED_MODULE_0__CustomerCampaignController__["a" /* default */]).service('CustomerCampaignService', __WEBPACK_IMPORTED_MODULE_1__CustomerCampaignService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.campaign/templates/customer-campaign-bought.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-campaign-bought.html";

/***/ }),

/***/ "./modules/client.campaign/templates/customer-campaign.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-campaign.html";

/***/ }),

/***/ "./modules/client.dashboard/CustomerDashboardController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerDashboardController = function () {
    function CustomerDashboardController($scope, $state, AuthService, CustomerStatusService, Validation, InvitationService, $filter, Flash) {
        _classCallCheck(this, CustomerDashboardController);

        if (!AuthService.isGranted('ROLE_PARTICIPANT')) {
            $state.go('customer-login');
        }
        this.id = AuthService.getLoggedUserId();
        this.InvitationService = InvitationService;
        this.CustomerStatusService = CustomerStatusService;
        this.Validation = Validation;
        this.$scope = $scope;
        this.$state = $state;
        this.AuthService = AuthService;
        this.$scope.loader = true;
        this.$scope.frontValidate = {
            recipientEmail: '@assert:not_blank'
        };
        this.$scope.invitation = {};
        this.Flash = Flash;
        this.$filter = $filter;
    }

    _createClass(CustomerDashboardController, [{
        key: 'inviteUser',
        value: function inviteUser(invitation) {
            var self = this;
            var validateFields = angular.copy(self.$scope.frontValidate);
            var frontValidation = self.Validation.frontValidation(invitation, validateFields);
            if (_.isEmpty(frontValidation)) {
                self.InvitationService.invite(invitation).then(function (res) {
                    var message = self.$filter('translate')('xhr.post_invitation.success');
                    self.Flash.create('success', message);
                    self.$state.reload();
                }, function (res) {
                    self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                    var message = self.$filter('translate')('xhr.post_invitation.error');
                    self.Flash.create('danger', message);
                });
            } else {
                self.$scope.validate = frontValidation;
            }
        }
    }, {
        key: 'getStatus',
        value: function getStatus() {
            if (this.id) {
                var self = this;

                this.CustomerStatusService.getStatus(this.id).then(function (res) {
                    self.$scope.loader = false;
                    self.$scope.status = res;
                    self.$scope.translateValues = {
                        "levelName": res.levelName,
                        "level": res.level,
                        "points": self.$filter('roundPoints')(res.points),
                        "pointsToNextLevel": res.pointsToNextLevel,
                        "transactionsAmountToNextLevelWithoutDeliveryCosts": res.transactionsAmountToNextLevelWithoutDeliveryCosts + res.currency,
                        "transactionsAmountToNextLevel": res.transactionsAmountToNextLevel + res.currency
                    };
                });
            }
        }
    }]);

    return CustomerDashboardController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerDashboardController);


CustomerDashboardController.$inject = ['$scope', '$state', 'AuthService', 'CustomerStatusService', 'Validation', 'InvitationService', '$filter', 'Flash'];

/***/ }),

/***/ "./modules/client.dashboard/InvitationService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var InvitationService = function () {
    function InvitationService(Restangular, EditableMap) {
        _classCallCheck(this, InvitationService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(InvitationService, [{
        key: 'invite',
        value: function invite(invitation) {
            return this.Restangular.one('invitations').one('invite').customPOST({ invitation: invitation });
        }
    }]);

    return InvitationService;
}();

/* harmony default export */ __webpack_exports__["a"] = (InvitationService);


InvitationService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.dashboard/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__img_ol_ban_1_jpg__ = __webpack_require__("./img/ol_ban_1.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__img_ol_ban_1_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0__img_ol_ban_1_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__img_ol_ban_2_jpg__ = __webpack_require__("./img/ol_ban_2.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__img_ol_ban_2_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_1__img_ol_ban_2_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__img_ol_ban_3_jpg__ = __webpack_require__("./img/ol_ban_3.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__img_ol_ban_3_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_2__img_ol_ban_3_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__img_ol_ban_4_jpg__ = __webpack_require__("./img/ol_ban_4.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_3__img_ol_ban_4_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_3__img_ol_ban_4_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__img_ol_ban_5_jpg__ = __webpack_require__("./img/ol_ban_5.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_4__img_ol_ban_5_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_4__img_ol_ban_5_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__img_ol_ban_6_jpg__ = __webpack_require__("./img/ol_ban_6.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_5__img_ol_ban_6_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_5__img_ol_ban_6_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__img_ol_ban_7_jpg__ = __webpack_require__("./img/ol_ban_7.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_6__img_ol_ban_7_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_6__img_ol_ban_7_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__img_ol_ban_8_jpg__ = __webpack_require__("./img/ol_ban_8.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_7__img_ol_ban_8_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_7__img_ol_ban_8_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__img_ol_ban_9_jpg__ = __webpack_require__("./img/ol_ban_9.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_8__img_ol_ban_9_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_8__img_ol_ban_9_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__img_ol_ban_10_jpg__ = __webpack_require__("./img/ol_ban_10.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_9__img_ol_ban_10_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_9__img_ol_ban_10_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_10__CustomerDashboardController__ = __webpack_require__("./modules/client.dashboard/CustomerDashboardController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_11__InvitationService__ = __webpack_require__("./modules/client.dashboard/InvitationService.js");













var MODULE_NAME = 'client.dashboard';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.dashboard', {
        url: "/dashboard",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-dashboard-extend-top.html',
                controller: 'CustomerDashboardController',
                controllerAs: 'CustomerDashboardCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.dashboard/templates/customer-dashboard.html"),
                controller: 'CustomerDashboardController',
                controllerAs: 'CustomerDashboardCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-dashboard-extend-bottom.html',
                controller: 'CustomerDashboardController',
                controllerAs: 'CustomerDashboardCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-dashboard-extend-top.html', '');
    $templateCache.put('templates/customer-dashboard-extend-bottom.html', '');

    $http.get('templates/customer-dashboard.html').then(function (response) {
        $templateCache.put('templates/customer-dashboard.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerDashboardController', __WEBPACK_IMPORTED_MODULE_10__CustomerDashboardController__["a" /* default */]).service('InvitationService', __WEBPACK_IMPORTED_MODULE_11__InvitationService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.dashboard/templates/customer-dashboard.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-dashboard.html";

/***/ }),

/***/ "./modules/client.earning-rules/CustomerEarningRulesController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerEarningRulesController = function () {
    function CustomerEarningRulesController($scope, $state, AuthService, CustomerEarningRulesService, Flash, ParamsMap, $stateParams, EditableMap, DataService) {
        _classCallCheck(this, CustomerEarningRulesController);

        if (!AuthService.isGranted('ROLE_PARTICIPANT')) {
            $state.go('customer-login');
        }
        this.$scope = $scope;
        this.CustomerEarningRulesService = CustomerEarningRulesService;
        this.$state = $state;
        this.Flash = Flash;
        this.ParamsMap = ParamsMap;
        this.EditableMap = EditableMap;
        this.$scope.loader = true;
        this.config = DataService.getConfig();
    }

    _createClass(CustomerEarningRulesController, [{
        key: 'getRules',
        value: function getRules() {
            var self = this;

            this.CustomerEarningRulesService.getRules().then(function (res) {
                self.$scope.loader = false;
                self.$scope.rules = res.earningRules;
                self.$scope.currency = res.currency;
                angular.forEach(self.$scope.rules, function (rule, key) {
                    self.CustomerEarningRulesService.getEarningRuleImage(rule.earningRuleId).then(function (res) {
                        rule.earningRuleImagePath = true;
                    }).catch(function (err) {

                        rule.earningRuleImagePath = false;
                    });
                });
            });
        }
    }, {
        key: 'generatePhotoRoute',
        value: function generatePhotoRoute(earningRuleId) {
            return this.config.apiUrl + '/earningRule/' + earningRuleId + '/photo';
        }
    }]);

    return CustomerEarningRulesController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerEarningRulesController);


CustomerEarningRulesController.$inject = ['$scope', '$state', 'AuthService', 'CustomerEarningRulesService', 'Flash', 'ParamsMap', '$stateParams', 'EditableMap', 'DataService'];

/***/ }),

/***/ "./modules/client.earning-rules/CustomerEarningRulesService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerEarningRulesService = function () {
    function CustomerEarningRulesService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerEarningRulesService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerEarningRulesService, [{
        key: 'getRules',
        value: function getRules($id) {
            return this.Restangular.one('customer').one('earningRule').get();
        }

        /**
         * Calls for earning rule image
         *
         * @method getEarningRuleImage
         * @param {Integer} earningRuleId
         * @returns {Promise}
         */

    }, {
        key: 'getEarningRuleImage',
        value: function getEarningRuleImage(earningRuleId) {
            return this.Restangular.one('earningRule', earningRuleId).one('photo').get();
        }
    }]);

    return CustomerEarningRulesService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerEarningRulesService);


CustomerEarningRulesService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.earning-rules/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CustomerEarningRulesController__ = __webpack_require__("./modules/client.earning-rules/CustomerEarningRulesController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CustomerEarningRulesService__ = __webpack_require__("./modules/client.earning-rules/CustomerEarningRulesService.js");



var MODULE_NAME = 'client.earning-rules';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.earning_rules', {
        url: "/earningRules",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-earning-rules-extend-top.html',
                controller: 'CustomerEarningRulesController',
                controllerAs: 'CustomerEarningRulesCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.earning-rules/templates/customer-earning-rules.html"),
                controller: 'CustomerEarningRulesController',
                controllerAs: 'CustomerEarningRulesCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-earning-rules-extend-bottom.html',
                controller: 'CustomerEarningRulesController',
                controllerAs: 'CustomerEarningRulesCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-earning-rules-extend-top.html', '');
    $templateCache.put('templates/customer-earning-rules-extend-bottom.html', '');

    $http.get('templates/customer-earning-rules.html').then(function (response) {
        $templateCache.put('templates/customer-earning-rules.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerEarningRulesController', __WEBPACK_IMPORTED_MODULE_0__CustomerEarningRulesController__["a" /* default */]).service('CustomerEarningRulesService', __WEBPACK_IMPORTED_MODULE_1__CustomerEarningRulesService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.earning-rules/templates/customer-earning-rules.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-earning-rules.html";

/***/ }),

/***/ "./modules/client.login/CustomerLoginController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerLoginController = function () {
    function CustomerLoginController($scope, $state, $timeout, AuthService) {
        _classCallCheck(this, CustomerLoginController);

        if (AuthService.getStoredRefreshToken()) {
            AuthService.getRefreshToken().then(function (res) {
                AuthService.setStoredRefreshToken(res.refresh_token);
                AuthService.setStoredToken(res.token);
                if (AuthService.isGranted('ROLE_PARTICIPANT')) {
                    $state.go('customer.panel.transactions-list');
                } else {
                    $state.go('customer-login');
                }
            }, function () {
                $state.go('customer-login');
            });
        }
        this.$scope = $scope;
        this.$state = $state;
        this.$timeout = $timeout;
        this.AuthService = AuthService;
    }

    _createClass(CustomerLoginController, [{
        key: 'submit',
        value: function submit() {
            var self = this;

            self.AuthService.setLogin(self.$scope._username);
            self.AuthService.setPassword(self.$scope._password);
            self.AuthService.getToken().then(function (res) {
                //success
                var redirectTo = self.AuthService.getLogoutFrom();
                var redirectToParams = self.AuthService.getLogoutFromParams();
                self.AuthService.setStoredToken(res.token);

                if (self.$scope.rememberMe) {
                    self.AuthService.setStoredRefreshToken(res.refresh_token);
                }

                if (redirectTo) {
                    self.$state.go(redirectTo, redirectToParams);
                } else {
                    self.$state.go('customer.panel.dashboard');
                }
            }, function (res) {
                //error
                self.$scope.showError = true;
                self.$scope.errorMsg = res.data.message;
            });
        }
    }, {
        key: 'getTerms',
        value: function getTerms() {
            var link = document.createElement('a');
            link.href = window.OpenLoyaltyConfig.apiUrl.replace('api', '') + 'terms-conditions';
            this.$timeout(function () {
                link.dispatchEvent(new MouseEvent('click'));
            }, 2000);
        }
    }]);

    return CustomerLoginController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerLoginController);


CustomerLoginController.$inject = ['$scope', '$state', '$timeout', 'AuthService'];

/***/ }),

/***/ "./modules/client.login/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CustomerLoginController__ = __webpack_require__("./modules/client.login/CustomerLoginController.js");


var MODULE_NAME = 'client.login';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer-login', {
        url: "/",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-login-extend-top.html',
                controller: 'CustomerLoginController',
                controllerAs: 'CustomerLoginCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.login/templates/customer-login.html"),
                controller: 'CustomerLoginController',
                controllerAs: 'CustomerLoginCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-login-extend-bottom.html',
                controller: 'CustomerLoginController',
                controllerAs: 'CustomerLoginCtrl'
            }
        }
    }).state('customer-terms-conditions', {
        url: "/terms-conditions",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-terms-conditions-extend-top.html',
                controller: 'CustomerLoginController',
                controllerAs: 'CustomerLoginCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.login/templates/customer-terms-conditions.html"),
                controller: 'CustomerLoginController',
                controllerAs: 'CustomerLoginCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-terms-conditions-extend-bottom.html',
                controller: 'CustomerLoginController',
                controllerAs: 'CustomerLoginCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-login-extend-top.html', '');
    $templateCache.put('templates/customer-login-extend-bottom.html', '');
    $templateCache.put('templates/customer-terms-conditions-extend-top.html', '');
    $templateCache.put('templates/customer-terms-conditions-extend-bottom.html', '');

    $http.get('templates/customer-login.html').then(function (response) {
        $templateCache.put('templates/customer-login.html', response.data);
    }).catch(catchErrorTemplate);
    $http.get('templates/customer-terms-conditions.html').then(function (response) {
        $templateCache.put('templates/customer-terms-conditions.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerLoginController', __WEBPACK_IMPORTED_MODULE_0__CustomerLoginController__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.login/templates/customer-login.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-login.html";

/***/ }),

/***/ "./modules/client.login/templates/customer-terms-conditions.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-terms-conditions.html";

/***/ }),

/***/ "./modules/client.partials/module.js":
/***/ (function(module, exports, __webpack_require__) {

var MODULE_NAME = 'client.partials';

angular.module(MODULE_NAME, []).run(function ($templateCache) {
    $templateCache.put('templates/client-footer.html', __webpack_require__("./modules/client.partials/templates/client-footer.html"));
    $templateCache.put('templates/client-top-nav.html', __webpack_require__("./modules/client.partials/templates/client-top-nav.html"));
});

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.partials/templates/client-footer.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/client-footer.html";

/***/ }),

/***/ "./modules/client.partials/templates/client-top-nav.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/client-top-nav.html";

/***/ }),

/***/ "./modules/client.profile/CustomerProfileController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerProfileController = function () {
    function CustomerProfileController($scope, $state, AuthService, CustomerProfileService, Flash, NgTableParams, $q, ParamsMap, $stateParams, EditableMap, $filter, Validation, DataService) {
        _classCallCheck(this, CustomerProfileController);

        if (!AuthService.isGranted('ROLE_PARTICIPANT')) {
            $state.go('customer-login');
        }
        this.id = AuthService.getLoggedUserId();
        this.$scope = $scope;
        this.CustomerProfileService = CustomerProfileService;
        this.$state = $state;
        this.Flash = Flash;
        this.NgTableParams = NgTableParams;
        this.ParamsMap = ParamsMap;
        this.EditableMap = EditableMap;
        this.$q = $q;
        this.$filter = $filter;
        this.Validation = Validation;
        this.$scope.password = {};
        this.country = DataService.getCountries();
        this.$scope.addressValidation = {
            street: '@assert:not_blank',
            address1: '@assert:not_blank',
            postal: '@assert:not_blank',
            country: '@assert:not_blank',
            city: '@assert:not_blank'
        };
        this.$scope.companyValidation = {
            nip: '@assert:not_blank',
            name: '@assert:not_blank'
        };
        this.$scope.frontValidate = {
            firstName: '@assert:not_blank',
            lastName: '@assert:not_blank',
            agreement1: '@assert:not_blank',
            email: '@assert:not_blank',
            phone: '@assert:not_blank'
        };
        this.$scope.passwordValidate = {
            currentPassword: '@assert:not_blank',
            plainPassword: '@assert:not_blank|equal_with:plainPassword2',
            plainPassword2: '@assert:not_blank|equal_with:plainPassword'
        };
        this.countryConfig = {
            valueField: 'code',
            labelField: 'name',
            create: false,
            sortField: 'name',
            maxItems: 1
        };
        this.$scope.loaderVisible = true;
    }

    _createClass(CustomerProfileController, [{
        key: 'changePassword',
        value: function changePassword(password) {
            var self = this;
            var validateFields = angular.copy(self.$scope.passwordValidate);
            var frontValidation = self.Validation.frontValidation(password, validateFields);

            if (_.isEmpty(frontValidation)) {
                self.CustomerProfileService.changePassword(password).then(function (res) {
                    var message = self.$filter('translate')('xhr.post_password_change.success');
                    self.Flash.create('success', message);
                }, function (res) {
                    self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                    var message = self.$filter('translate')('xhr.post_password_change.error');
                    self.Flash.create('danger', message);
                });
            } else {
                var message = self.$filter('translate')('xhr.post_password_change.error');
                self.Flash.create('danger', message);
                self.$scope.validate = frontValidation;
            }
        }
    }, {
        key: 'getSettingsData',
        value: function getSettingsData() {
            var _this = this;

            var self = this;
            self.CustomerProfileService.getSettings().then(function (res) {
                self.$scope.settings = res.settings;
                _this.getData();
            }, function () {
                self.$scope.settings = {
                    "allowCustomersProfileEdits": false
                };
                _this.getData();
                var message = self.$filter('translate')('xhr.get_settings.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'getData',
        value: function getData() {
            var self = this;
            self.CustomerProfileService.getCustomer(self.id).then(function (res) {
                self.$scope.loaderVisible = false;
                self.$scope.customer = res;
                self.$scope.editableFields = self.EditableMap.humanizeCustomer(res);
                self.$scope.showAddress = !_.isEmpty(_.omitBy(self.$scope.editableFields.address, _.isEmpty));
                self.$scope.showCompany = !_.isEmpty(_.omitBy(self.$scope.editableFields.company, _.isEmpty));
            }, function () {
                var message = self.$filter('translate')('xhr.get_customer.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'editCustomer',
        value: function editCustomer(editedCustomer) {
            var self = this;
            var validateFields = angular.copy(self.$scope.frontValidate);

            if (self.$scope.showAddress) {
                validateFields.address = angular.copy(self.$scope.addressValidation);
            } else {
                delete editedCustomer.address;
            }
            if (self.$scope.showCompany) {
                validateFields.company = angular.copy(self.$scope.companyValidation);
            } else {
                delete editedCustomer.company;
            }

            var frontValidation = self.Validation.frontValidation(editedCustomer, validateFields);

            if (_.isEmpty(frontValidation)) {
                self.CustomerProfileService.putCustomer(editedCustomer).then(function (res) {
                    var message = self.$filter('translate')('xhr.put_customer.success');
                    self.Flash.create('success', message);
                    self.$state.go('customer.panel.profile-show');
                }, function (res) {
                    self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                    var message = self.$filter('translate')('xhr.put_customer.error');
                    self.Flash.create('danger', message);
                });
            } else {
                var message = self.$filter('translate')('xhr.put_customer.error');
                self.Flash.create('danger', message);
                self.$scope.validate = frontValidation;
            }
        }
    }]);

    return CustomerProfileController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerProfileController);


CustomerProfileController.$inject = ['$scope', '$state', 'AuthService', 'CustomerProfileService', 'Flash', 'NgTableParams', '$q', 'ParamsMap', '$stateParams', 'EditableMap', '$filter', 'Validation', 'DataService'];

/***/ }),

/***/ "./modules/client.profile/CustomerProfileService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerProfileService = function () {
    function CustomerProfileService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerProfileService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerProfileService, [{
        key: 'getSettings',
        value: function getSettings() {
            return this.Restangular.one('settings').one('public').get();
        }
    }, {
        key: 'getCustomer',
        value: function getCustomer(id) {
            return this.Restangular.one('customer', id).get();
        }
    }, {
        key: 'putCustomer',
        value: function putCustomer(editedCustomer) {
            var self = this;

            return editedCustomer.customPUT({ customer: self.EditableMap.customer(editedCustomer) });
        }
    }, {
        key: 'changePassword',
        value: function changePassword(password) {
            var self = this;

            return this.Restangular.one('customer').one('password').one('change').customPOST({ currentPassword: password.currentPassword, plainPassword: password.plainPassword });
        }
    }]);

    return CustomerProfileService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerProfileService);


CustomerProfileService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.profile/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__img_avatar_jpg__ = __webpack_require__("./img/avatar.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__img_avatar_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0__img_avatar_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CustomerProfileController__ = __webpack_require__("./modules/client.profile/CustomerProfileController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__CustomerProfileService__ = __webpack_require__("./modules/client.profile/CustomerProfileService.js");




var MODULE_NAME = 'client.profile';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.profile-show', {
        url: "/profile",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-profile-extend-top.html',
                controller: 'CustomerProfileController',
                controllerAs: 'CustomerProfileCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.profile/templates/customer-profile.html"),
                controller: 'CustomerProfileController',
                controllerAs: 'CustomerProfileCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-profile-extend-bottom.html',
                controller: 'CustomerProfileController',
                controllerAs: 'CustomerProfileCtrl'
            }
        }
    }).state('customer.panel.profile-edit', {
        url: "/profile/edit",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-profile-edit-extend-top.html',
                controller: 'CustomerProfileController',
                controllerAs: 'CustomerProfileCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.profile/templates/customer-profile-edit.html"),
                controller: 'CustomerProfileController',
                controllerAs: 'CustomerProfileCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-profile-edit-extend-bottom.html',
                controller: 'CustomerProfileController',
                controllerAs: 'CustomerProfileCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-profile-extend-top.html', '');
    $templateCache.put('templates/customer-profile-extend-bottom.html', '');

    $templateCache.put('templates/customer-profile-edit-extend-top.html', '');
    $templateCache.put('templates/customer-profile-edit-extend-bottom.html', '');

    $http.get('templates/customer-profile.html').then(function (response) {
        $templateCache.put('templates/customer-profile.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/customer-profile-edit.html').then(function (response) {
        $templateCache.put('templates/customer-profile-edit.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerProfileController', __WEBPACK_IMPORTED_MODULE_1__CustomerProfileController__["a" /* default */]).service('CustomerProfileService', __WEBPACK_IMPORTED_MODULE_2__CustomerProfileService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.profile/templates/customer-profile-edit.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-profile-edit.html";

/***/ }),

/***/ "./modules/client.profile/templates/customer-profile.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-profile.html";

/***/ }),

/***/ "./modules/client.registration/CustomerRegistrationController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerRegistrationController = function () {
    function CustomerRegistrationController($scope, $state, CustomerRegistrationService, Flash, $filter, DataService, Validation, $stateParams) {
        var _this = this;

        _classCallCheck(this, CustomerRegistrationController);

        this.$scope = $scope;
        this.$scope.newCustomer = {};
        this.$scope.validate = {};
        this.$state = $state;
        this.CustomerRegistrationService = CustomerRegistrationService;
        this.Flash = Flash;
        this.$filter = $filter;
        this.country = DataService.getCountries();
        this.Validation = Validation;
        this.$stateParams = $stateParams;
        this.invitationToken = $stateParams.invitationToken;
        this.activationMethod = null;
        this.$scope.code = {};
        DataService.getActivationMethod().then(function (method) {
            _this.activationMethod = method;
        });
        this.showResendModal = false;
        this.$scope.addressValidation = {
            street: '@assert:not_blank',
            address1: '@assert:not_blank',
            postal: '@assert:not_blank',
            country: '@assert:not_blank',
            city: '@assert:not_blank'
        };
        this.$scope.companyValidation = {
            nip: '@assert:not_blank',
            name: '@assert:not_blank'
        };
        this.$scope.frontValidate = {
            firstName: '@assert:not_blank',
            lastName: '@assert:not_blank',
            agreement1: '@assert:not_blank',
            plainPassword: '@assert:not_blank|equal_with:plainPassword2',
            plainPassword2: '@assert:not_blank|equal_with:plainPassword'
        };
        this.countryConfig = {
            valueField: 'code',
            labelField: 'name',
            create: false,
            sortField: 'name',
            maxItems: 1
        };
    }

    _createClass(CustomerRegistrationController, [{
        key: 'isActivationBySms',
        value: function isActivationBySms() {
            return this.activationMethod === 'sms';
        }
    }, {
        key: 'isActivationByEmail',
        value: function isActivationByEmail() {
            return this.activationMethod === 'email';
        }
    }, {
        key: 'activate',
        value: function activate() {
            var token = this.$stateParams.token;
            var self = this;

            if (!token) {
                self.$state.go('customer-login');
            }

            this.CustomerRegistrationService.postActivate(token).then(function (res) {
                self.$state.go('customer-login');
                var message = self.$filter('translate')('xhr.post_registration_customer_activate.success');
                self.Flash.create('success', message);
            }, function (res) {
                self.$state.go('customer-login');
                var message = self.$filter('translate')('xhr.post_registration_customer_activate.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'resendActivationCode',
        value: function resendActivationCode(code) {
            var _this2 = this;

            var self = this;
            if (!self.isActivationBySms()) {
                this.showResendModal = false;
                this.$scope.code.phone = '';

                return;
            }
            this.CustomerRegistrationService.resendActivationCode(code.phone).then(function (res) {
                var message = self.$filter('translate')('xhr.post_resend_customer_code.success');
                self.Flash.create('success', message);
                _this2.showResendModal = false;
                _this2.$scope.code.phone = '';
            }, function () {
                var message = self.$filter('translate')('xhr.post_resend_customer_code.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'activateSms',
        value: function activateSms(code) {
            var token = code.value;
            var self = this;

            if (!token) {
                self.$state.go('customer-login');
            }

            this.CustomerRegistrationService.postActivateSms(token).then(function (res) {
                self.$state.go('customer-login');
                var message = self.$filter('translate')('xhr.post_registration_customer_activate.success');
                self.Flash.create('success', message);
            }, function (res) {
                var message = self.$filter('translate')('xhr.post_registration_customer_activate.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'addCustomer',
        value: function addCustomer(newCustomer) {
            var self = this;
            var validateFields = angular.copy(self.$scope.frontValidate);

            if (self.$scope.showAddress) {
                validateFields.address = angular.copy(self.$scope.addressValidation);
            } else {
                delete self.$scope.newCustomer.address;
            }
            if (self.$scope.showCompany) {
                validateFields.company = angular.copy(self.$scope.companyValidation);
            } else {
                delete self.$scope.newCustomer.company;
            }

            var frontValidation = self.Validation.frontValidation(newCustomer, validateFields);

            if (_.isEmpty(frontValidation)) {
                self.CustomerRegistrationService.postCustomer(newCustomer, this.invitationToken).then(function (res) {
                    var message = self.$filter('translate')('xhr.post_registration_customer.success');
                    self.Flash.create('success', message);
                    if (self.isActivationBySms()) {
                        self.$state.go('customer.panel.registration_activate_sms');
                    } else {
                        self.$state.go('customer.panel.registration_success');
                    }
                }, function (res) {
                    self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                    var message = self.$filter('translate')('xhr.post_registration_customer.error');
                    self.Flash.create('danger', message);
                });
            } else {
                var message = self.$filter('translate')('xhr.post_registration_customer.error');
                self.Flash.create('danger', message);
                self.$scope.validate = frontValidation;
            }
        }
    }]);

    return CustomerRegistrationController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerRegistrationController);


CustomerRegistrationController.$inject = ['$scope', '$state', 'CustomerRegistrationService', 'Flash', '$filter', 'DataService', 'Validation', '$stateParams'];

/***/ }),

/***/ "./modules/client.registration/CustomerRegistrationService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerRegistrationService = function () {
    function CustomerRegistrationService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerRegistrationService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerRegistrationService, [{
        key: 'postCustomer',
        value: function postCustomer(newCustomer, invitationToken) {
            newCustomer = this.EditableMap.customer(newCustomer);
            if (invitationToken) {
                newCustomer.invitationToken = invitationToken;
            }

            return this.Restangular.one('customer').one('self_register').customPOST({ customer: newCustomer });
        }
    }, {
        key: 'postActivate',
        value: function postActivate(token) {
            return this.Restangular.one('customer').one('activate').one(token).customPOST({});
        }
    }, {
        key: 'postActivateSms',
        value: function postActivateSms(token) {
            return this.Restangular.one('customer').one('activate-sms').one(token).customPOST({});
        }
    }, {
        key: 'resendActivationCode',
        value: function resendActivationCode(phone) {
            return this.Restangular.one('customer').one('customer-phone').one('send-sms-code').customPOST({
                phone: phone
            });
        }
    }]);

    return CustomerRegistrationService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerRegistrationService);


CustomerRegistrationService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.registration/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CustomerRegistrationController__ = __webpack_require__("./modules/client.registration/CustomerRegistrationController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CustomerRegistrationService__ = __webpack_require__("./modules/client.registration/CustomerRegistrationService.js");



var MODULE_NAME = 'client.registration';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.registration', {
        url: "/customer/registration",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-registration-extend-top.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-registration.html"),
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-registration-extend-bottom.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            }
        }
    }).state('customer.panel.registration_from_invitation', {
        url: "/customer/registration/:invitationToken",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-registration-extend-top.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-registration.html"),
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-registration-extend-bottom.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            }
        }
    }).state('customer.panel.registration_success', {
        url: "/customer/registration-success",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-registration-success-extend-top.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-registration-success.html"),
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-registration-success-extend-bottom.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            }
        }
    }).state('customer.panel.registration_activate_sms', {
        url: "/customer/registration-activate",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-registration-activate-sms-extend-top.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-registration-activate-sms.html"),
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-registration-activate-sms-extend-bottom.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            }
        }
    }).state('customer.panel.registration_confirm', {
        url: "/customer/registration/activate/:token",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-registration-activate-extend-top.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-registration-activate.html"),
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-registration-activate-extend-bottom.html',
                controller: 'CustomerRegistrationController',
                controllerAs: 'CustomerRegistrationCtrl'
            }
        }
    }).state('forgot-password-request-customer', {
        url: "/customer/password/request",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-password-request-extend-top.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-password-request.html"),
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-password-request-extend-bottom.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            }
        }
    }).state('forgot-password-reset-customer', {
        url: "/password/reset/:token",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-password-reset-extend-top.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-password-reset.html"),
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-password-reset-extend-bottom.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            }
        }
    }).state('forgot-password-reset-sms-customer', {
        url: "/password/reset",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-password-reset-extend-top.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.registration/templates/customer-password-reset-sms.html"),
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-password-reset-extend-bottom.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-registration-extend-top.html', '');
    $templateCache.put('templates/customer-registration-extend-bottom.html', '');

    $templateCache.put('templates/customer-registration-success-extend-top.html', '');
    $templateCache.put('templates/customer-registration-success-extend-bottom.html', '');

    $templateCache.put('templates/customer-registration-activate-extend-top.html', '');
    $templateCache.put('templates/customer-registration-activate-sms-extend-top.html', '');
    $templateCache.put('templates/customer-registration-activate-extend-bottom.html', '');
    $templateCache.put('templates/customer-registration-activate-sms-extend-bottom.html', '');

    $templateCache.put('templates/customer-password-request-extend-top.html', '');
    $templateCache.put('templates/customer-password-request-extend-bottom.html', '');

    $templateCache.put('templates/customer-password-reset-extend-top.html', '');
    $templateCache.put('templates/customer-password-reset-extend-bottom.html', '');

    $http.get('templates/customer-registration.html').then(function (response) {
        $templateCache.put('templates/customer-registration.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/customer-registration-success.html').then(function (response) {
        $templateCache.put('templates/customer-registration-success.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/customer-registration-activate.html').then(function (response) {
        $templateCache.put('templates/customer-registration-activate.html', response.data);
    }).catch(catchErrorTemplate);
    $http.get('templates/customer-registration-activate-sms.html').then(function (response) {
        $templateCache.put('templates/customer-registration-activate-sms.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/customer-password-reset.html').then(function (response) {
        $templateCache.put('templates/customer-password-reset.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/customer-password-request.html').then(function (response) {
        $templateCache.put('templates/customer-password-request.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerRegistrationController', __WEBPACK_IMPORTED_MODULE_0__CustomerRegistrationController__["a" /* default */]).service('CustomerRegistrationService', __WEBPACK_IMPORTED_MODULE_1__CustomerRegistrationService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.registration/templates/customer-password-request.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-password-request.html";

/***/ }),

/***/ "./modules/client.registration/templates/customer-password-reset-sms.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-password-reset-sms.html";

/***/ }),

/***/ "./modules/client.registration/templates/customer-password-reset.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-password-reset.html";

/***/ }),

/***/ "./modules/client.registration/templates/customer-registration-activate-sms.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-registration-activate-sms.html";

/***/ }),

/***/ "./modules/client.registration/templates/customer-registration-activate.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-registration-activate.html";

/***/ }),

/***/ "./modules/client.registration/templates/customer-registration-success.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-registration-success.html";

/***/ }),

/***/ "./modules/client.registration/templates/customer-registration.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-registration.html";

/***/ }),

/***/ "./modules/client.transactions/CustomerTransactionController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerTransactionController = function () {
    function CustomerTransactionController($scope, $state, AuthService, CustomerTransactionService, Flash, NgTableParams, $q, ParamsMap, $stateParams, EditableMap, $filter, DataService) {
        _classCallCheck(this, CustomerTransactionController);

        if (!AuthService.isGranted('ROLE_PARTICIPANT')) {
            $state.go('customer-login');
        }
        this.$scope = $scope;
        this.CustomerTransactionService = CustomerTransactionService;
        this.$state = $state;
        this.Flash = Flash;
        this.NgTableParams = NgTableParams;
        this.ParamsMap = ParamsMap;
        this.EditableMap = EditableMap;
        this.$q = $q;
        this.$filter = $filter;
        this.config = DataService.getConfig();
        this.$scope.loader = true;
    }

    _createClass(CustomerTransactionController, [{
        key: 'getData',
        value: function getData() {
            var self = this;

            self.tableParams = new self.NgTableParams({
                count: self.config.perPage
            }, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.CustomerTransactionService.getTransactions(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.loader = false;
                        self.$scope.transactions = res;
                        params.total(res.total);
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_translations.error');
                        self.Flash.create('danger', message);
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }]);

    return CustomerTransactionController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerTransactionController);


CustomerTransactionController.$inject = ['$scope', '$state', 'AuthService', 'CustomerTransactionService', 'Flash', 'NgTableParams', '$q', 'ParamsMap', '$stateParams', 'EditableMap', '$filter', 'DataService'];

/***/ }),

/***/ "./modules/client.transactions/CustomerTransactionService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerTransactionService = function () {
    function CustomerTransactionService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerTransactionService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerTransactionService, [{
        key: 'getTransactions',
        value: function getTransactions(params) {
            return this.Restangular.one('customer').all('transaction').getList(params);
        }
    }]);

    return CustomerTransactionService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerTransactionService);


CustomerTransactionService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.transactions/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CustomerTransactionController__ = __webpack_require__("./modules/client.transactions/CustomerTransactionController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CustomerTransactionService__ = __webpack_require__("./modules/client.transactions/CustomerTransactionService.js");



var MODULE_NAME = 'client.transactions';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.transactions-list', {
        url: "/transactions",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-transactions-list-extend-top.html',
                controller: 'CustomerTransactionController',
                controllerAs: 'CustomerTransactionCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.transactions/templates/customer-transactions-list.html"),
                controller: 'CustomerTransactionController',
                controllerAs: 'CustomerTransactionCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-transactions-list-extend-bottom.html',
                controller: 'CustomerTransactionController',
                controllerAs: 'CustomerTransactionCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-transactions-list-extend-top.html', '');
    $templateCache.put('templates/customer-transactions-list-extend-bottom.html', '');

    $http.get('templates/customer-transactions-list.html').then(function (response) {
        $templateCache.put('templates/customer-transactions-list.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerTransactionController', __WEBPACK_IMPORTED_MODULE_0__CustomerTransactionController__["a" /* default */]).service('CustomerTransactionService', __WEBPACK_IMPORTED_MODULE_1__CustomerTransactionService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.transactions/templates/customer-transactions-list.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-transactions-list.html";

/***/ }),

/***/ "./modules/client.transfers/CustomerPointsTransferController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerPointsTransferController = function () {
    function CustomerPointsTransferController($scope, $state, AuthService, CustomerPointsTransferService, CustomerStatusService, Flash, NgTableParams, $q, ParamsMap, $stateParams, EditableMap, $filter, DataService) {
        _classCallCheck(this, CustomerPointsTransferController);

        if (!AuthService.isGranted('ROLE_PARTICIPANT')) {
            $state.go('customer-login');
        }
        this.id = AuthService.getLoggedUserId();

        this.$scope = $scope;
        this.CustomerPointsTransferService = CustomerPointsTransferService;
        this.CustomerStatusService = CustomerStatusService;
        this.$state = $state;
        this.Flash = Flash;
        this.NgTableParams = NgTableParams;
        this.ParamsMap = ParamsMap;
        this.EditableMap = EditableMap;
        this.$q = $q;
        this.$filter = $filter;
        this.config = DataService.getConfig();
        this.$scope.loader = true;
    }

    _createClass(CustomerPointsTransferController, [{
        key: 'getStatus',
        value: function getStatus() {
            if (this.id) {
                var self = this;

                this.CustomerStatusService.getStatus(this.id).then(function (res) {
                    self.$scope.status = res;
                });
            }
        }
    }, {
        key: 'getData',
        value: function getData() {
            var self = this;

            self.tableParams = new self.NgTableParams({
                count: self.config.perPage,
                sorting: {
                    createdAt: 'desc'
                }
            }, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.CustomerPointsTransferService.getTransfers(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.loader = false;
                        self.$scope.transfers = res;
                        params.total(res.total);
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_transfers.error');
                        self.Flash.create('danger', message);
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }]);

    return CustomerPointsTransferController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerPointsTransferController);


CustomerPointsTransferController.$inject = ['$scope', '$state', 'AuthService', 'CustomerPointsTransferService', 'CustomerStatusService', 'Flash', 'NgTableParams', '$q', 'ParamsMap', '$stateParams', 'EditableMap', '$filter', 'DataService'];

/***/ }),

/***/ "./modules/client.transfers/CustomerPointsTransferService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerPointsTransferService = function () {
    function CustomerPointsTransferService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerPointsTransferService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerPointsTransferService, [{
        key: 'getTransfers',
        value: function getTransfers(params) {
            return this.Restangular.one('customer').one('points').all('transfer').getList(params);
        }
    }]);

    return CustomerPointsTransferService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerPointsTransferService);


CustomerPointsTransferService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.transfers/CustomerStatusService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CustomerStatusService = function () {
    function CustomerStatusService(Restangular, EditableMap) {
        _classCallCheck(this, CustomerStatusService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(CustomerStatusService, [{
        key: 'getStatus',
        value: function getStatus($id) {
            return this.Restangular.one('customer').one($id).one('status').get();
        }
    }]);

    return CustomerStatusService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CustomerStatusService);


CustomerStatusService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/client.transfers/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CustomerPointsTransferController__ = __webpack_require__("./modules/client.transfers/CustomerPointsTransferController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CustomerPointsTransferService__ = __webpack_require__("./modules/client.transfers/CustomerPointsTransferService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__CustomerStatusService__ = __webpack_require__("./modules/client.transfers/CustomerStatusService.js");




var MODULE_NAME = 'client.transfers';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('customer.panel.transfers-list', {
        url: "/points/transfer",
        views: {
            'extendTop@': {
                templateUrl: 'templates/customer-transfers-list-extend-top.html',
                controller: 'CustomerPointsTransferController',
                controllerAs: 'CustomerPointsTransferCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/client.transfers/templates/customer-transfers-list.html"),
                controller: 'CustomerPointsTransferController',
                controllerAs: 'CustomerPointsTransferCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/customer-transfers-list-extend-bottom.html',
                controller: 'CustomerPointsTransferController',
                controllerAs: 'CustomerPointsTransferCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/customer-transfers-list-extend-top.html', '');
    $templateCache.put('templates/customer-transfers-list-extend-bottom.html', '');

    $http.get('templates/customer-transfers-list.html').then(function (response) {
        $templateCache.put('templates/customer-transfers-list.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CustomerPointsTransferController', __WEBPACK_IMPORTED_MODULE_0__CustomerPointsTransferController__["a" /* default */]).service('CustomerPointsTransferService', __WEBPACK_IMPORTED_MODULE_1__CustomerPointsTransferService__["a" /* default */]).service('CustomerStatusService', __WEBPACK_IMPORTED_MODULE_2__CustomerStatusService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/client.transfers/templates/customer-transfers-list.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/customer-transfers-list.html";

/***/ }),

/***/ "./templates/client.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "client/index.html";

/***/ })

},["./appClient.js"]);