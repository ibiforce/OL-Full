webpackJsonp([2],{

/***/ "./appPos.js":
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
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_32__component_global_validation_Validation__ = __webpack_require__("./component/global/validation/Validation.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_33__component_global_checkbox_CheckboxDirective__ = __webpack_require__("./component/global/checkbox/CheckboxDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_34__component_global_modal_ModalDirective__ = __webpack_require__("./component/global/modal/ModalDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_35__component_global_datepicker_DatepickerDirective__ = __webpack_require__("./component/global/datepicker/DatepickerDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_36__component_global_validation_FormValidationDirective__ = __webpack_require__("./component/global/validation/FormValidationDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_37__component_global_csv_CsvUploadDirective__ = __webpack_require__("./component/global/csv/CsvUploadDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_38__component_global_import_XmlUploadDirective__ = __webpack_require__("./component/global/import/XmlUploadDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_39__component_global_boxLoader_BoxLoaderDirective__ = __webpack_require__("./component/global/boxLoader/BoxLoaderDirective.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_40__component_global_security_SecurityController__ = __webpack_require__("./component/global/security/SecurityController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_41__component_global_security_SecurityService__ = __webpack_require__("./component/global/security/SecurityService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_42__component_global_data_DataService__ = __webpack_require__("./component/global/data/DataService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_43__component_global_auth_AuthService__ = __webpack_require__("./component/global/auth/AuthService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_44__component_global_translations_TranslationService__ = __webpack_require__("./component/global/translations/TranslationService.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_45__component_global_translations_TranslationLoader__ = __webpack_require__("./component/global/translations/TranslationLoader.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_46__component_global_root_RootController__ = __webpack_require__("./component/global/root/RootController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_47__component_global_filters_Filters__ = __webpack_require__("./component/global/filters/Filters.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_48__component_global_debug_DebugController__ = __webpack_require__("./component/global/debug/DebugController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_49__style_main_scss__ = __webpack_require__("./style/main.scss");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_49__style_main_scss___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_49__style_main_scss__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_50__scripts_main__ = __webpack_require__("./scripts/main.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_50__scripts_main___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_50__scripts_main__);
var _typeof = typeof Symbol === "function" && typeof Symbol.iterator === "symbol" ? function (obj) { return typeof obj; } : function (obj) { return obj && typeof Symbol === "function" && obj.constructor === Symbol && obj !== Symbol.prototype ? "symbol" : typeof obj; };

__webpack_require__("./templates/pos.html");

var _ = __webpack_require__("../node_modules/lodash/index.js");

// import jquery























// global styles






























// global scss

// global js


window.Selectize = __webpack_require__("../node_modules/selectize/dist/js/selectize.js");

// open loyalty modules
__webpack_require__("./modules/admin.transfers/module.js");
__webpack_require__("./modules/pos.login/module.js");
__webpack_require__("./modules/pos.campaigns/module.js");
__webpack_require__("./modules/pos.dashboard/module.js");
__webpack_require__("./modules/pos.earning-rules/module.js");
__webpack_require__("./modules/pos.partials/module.js");
__webpack_require__("./modules/pos.customers/module.js");
__webpack_require__("./modules/pos.transactions/module.js");

if (!window.OpenLoyaltyConfig.debug) {
    if (!window.console) window.console = {};
    var methods = ["log", "debug", "warn", "info"];
    for (var i = 0; i < methods.length; i++) {
        console[methods[i]] = function () {};
    }
}

__WEBPACK_IMPORTED_MODULE_5_angular___default.a.module('OpenLoyalty', ['ui.router', 'angular-jwt', 'restangular', 'ngFlash', 'angularMoment', 'ngTable', 'ui.select', 'ngSanitize', 'ng-sortable', 'pascalprecht.translate', 'selectize', 'angular-loading-bar', 'admin.transfers', 'pos.login', 'pos.campaigns', 'pos.customers', 'pos.dashboard', 'pos.earning-rules', 'pos.partials', 'pos.transactions']).config(function ($stateProvider, $urlRouterProvider, $httpProvider, jwtInterceptorProvider, RestangularProvider, $translateProvider, $locationProvider, cfpLoadingBarProvider) {
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
    $stateProvider.state('seller', {
        url: "/seller",
        resolve: {
            DataServiceResolver: ['DataService', function (DataService) {
                return DataService.getAvailableData();
            }]
        }
    }).state('seller.panel', {
        url: "/panel"
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
        if (_typeof(response.data) === 'object' && response.data && response.data.message && response.data.message === 'Bad credentials') {
            return true;
        }

        if (response.status === 401) {
            AuthService.logout();
            return false;
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
    return new __WEBPACK_IMPORTED_MODULE_47__component_global_filters_Filters__["a" /* default */].CommaToDecimal();
}).filter('percent', function () {
    return new __WEBPACK_IMPORTED_MODULE_47__component_global_filters_Filters__["a" /* default */].Percent();
}).filter('propsFilter', function () {
    return new __WEBPACK_IMPORTED_MODULE_47__component_global_filters_Filters__["a" /* default */].PropsFilter();
}).filter('isEmpty', function () {
    return new __WEBPACK_IMPORTED_MODULE_47__component_global_filters_Filters__["a" /* default */].IsEmptyFilter();
}).filter('roundPoints', function () {
    return new __WEBPACK_IMPORTED_MODULE_47__component_global_filters_Filters__["a" /* default */].RoundPoints();
}).directive('modal', function () {
    return new __WEBPACK_IMPORTED_MODULE_34__component_global_modal_ModalDirective__["a" /* default */]();
}).directive('datepicker', function () {
    return new __WEBPACK_IMPORTED_MODULE_35__component_global_datepicker_DatepickerDirective__["a" /* default */]();
}).directive('formValidation', function () {
    return new __WEBPACK_IMPORTED_MODULE_36__component_global_validation_FormValidationDirective__["a" /* default */]();
}).directive('csvUpload', function () {
    return new __WEBPACK_IMPORTED_MODULE_37__component_global_csv_CsvUploadDirective__["a" /* default */]();
}).directive('xmlUpload', function () {
    return new __WEBPACK_IMPORTED_MODULE_38__component_global_import_XmlUploadDirective__["a" /* default */]();
}).directive('checkbox', function () {
    return new __WEBPACK_IMPORTED_MODULE_33__component_global_checkbox_CheckboxDirective__["a" /* default */]();
}).directive('boxLoader', __WEBPACK_IMPORTED_MODULE_39__component_global_boxLoader_BoxLoaderDirective__["a" /* default */].create).service('EditableMap', __WEBPACK_IMPORTED_MODULE_30__component_global_map_EditableMap__["a" /* default */]).service('ParamsMap', __WEBPACK_IMPORTED_MODULE_31__component_global_map_ParamsMap__["a" /* default */]).service('DataService', __WEBPACK_IMPORTED_MODULE_42__component_global_data_DataService__["a" /* default */]).service('Validation', __WEBPACK_IMPORTED_MODULE_32__component_global_validation_Validation__["a" /* default */]).service('AuthService', __WEBPACK_IMPORTED_MODULE_43__component_global_auth_AuthService__["a" /* default */]).service('SecurityService', __WEBPACK_IMPORTED_MODULE_41__component_global_security_SecurityService__["a" /* default */]).service('TranslationService', __WEBPACK_IMPORTED_MODULE_44__component_global_translations_TranslationService__["a" /* default */]).factory('TranslationLoader', ['TranslationService', function (TranslationService) {
    return new __WEBPACK_IMPORTED_MODULE_45__component_global_translations_TranslationLoader__["a" /* default */](TranslationService);
}]).controller('RootController', __WEBPACK_IMPORTED_MODULE_46__component_global_root_RootController__["a" /* default */]).controller('SecurityController', __WEBPACK_IMPORTED_MODULE_40__component_global_security_SecurityController__["a" /* default */]).controller('DebugController', __WEBPACK_IMPORTED_MODULE_48__component_global_debug_DebugController__["a" /* default */]);

/***/ }),

/***/ "./modules/admin.transfers/TransferController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var TransferController = function () {
    function TransferController($scope, $state, $stateParams, AuthService, TransferService, Flash, EditableMap, NgTableParams, ParamsMap, $q, CustomerService, Validation, $filter, DataService) {
        _classCallCheck(this, TransferController);

        if (!AuthService.isGranted('ROLE_ADMIN')) {
            AuthService.logout();
        }
        this.$scope = $scope;
        this.$state = $state;
        this.AuthService = AuthService;
        this.TransferService = TransferService;
        this.CustomerService = CustomerService;
        this.Flash = Flash;
        this.EditableMap = EditableMap;
        this.transferId = $stateParams.transferId || null;
        this.NgTableParams = NgTableParams;
        this.ParamsMap = ParamsMap;
        this.$q = $q;
        this.Validation = Validation;
        this.$filter = $filter;
        this.$scope.validate = {};
        this.$scope.clientSearch = 0; //0 - nothing, 1 - loading, 2 - nothing found
        this.config = DataService.getConfig();
        this.transferTypeConfig = this.TransferService.getTransferTypeConfig();
        this.transferType = this.TransferService.getTransferType();

        var self = this;
        this.customerConfig = {
            valueField: 'customerId',
            render: {
                option: function option(item, escape) {
                    return '<div>' + (item.email ? escape(item.email) : '') + ' (' + escape(item.phone) + ')</div>';
                },
                item: function item(_item, escape) {
                    return '<div>' + (_item.email ? escape(_item.email) : '') + ' (' + escape(_item.phone) + ')</div>';
                }
            },
            create: false,
            sortField: 'email',
            maxItems: 1,
            searchField: ['phone', 'email'],
            placeholder: this.$filter('translate')('global.start_typing_an_email_or_phone'),
            onChange: function onChange(value) {
                self.$scope.clientSearch = 0;
            },
            load: function load(query, callback) {
                if (!query.length) return callback();

                self.$scope.clientSearch = 1;

                CustomerService.getCustomers(ParamsMap.params({
                    'filter[emailOrPhone]': query,
                    'filter[silenceQuery]': true
                })).then(function (res) {
                    self.$scope.clientSearch = 0;
                    callback(res);
                }, function () {
                    callback();
                });
            }
        };

        this.loaderStates = {
            transferList: true,
            coverLoader: true,
            addTransfer: false,
            cancelTransfer: false,
            importTransfer: false
        };
    }

    _createClass(TransferController, [{
        key: 'openAddPointsModal',
        value: function openAddPointsModal() {
            var self = this;

            self.$scope.newTransfer = {};
            self.$scope.showAddPoints = true;
        }
    }, {
        key: 'openTransferModal',
        value: function openTransferModal() {
            var self = this;

            self.$scope.newTransfer = {};
            self.$scope.showTransferModal = true;
        }
    }, {
        key: 'closeTransferModal',
        value: function closeTransferModal() {
            var self = this;

            self.$scope.showTransferModal = false;
        }
    }, {
        key: 'closeAddPointsModal',
        value: function closeAddPointsModal() {
            var self = this;

            self.$scope.showAddPoints = false;
        }
    }, {
        key: 'openSpendPointsModal',
        value: function openSpendPointsModal() {
            var self = this;

            self.$scope.newTransfer = {};
            self.$scope.showSpendPoints = true;
        }
    }, {
        key: 'closeSpendPointsModal',
        value: function closeSpendPointsModal() {
            var self = this;

            self.$scope.showSpendPoints = false;
        }
    }, {
        key: 'openImportModal',
        value: function openImportModal() {
            var self = this;

            self.$scope.showTransferImportModal = true;
        }
    }, {
        key: 'closeImportModal',
        value: function closeImportModal() {
            var self = this;

            self.$scope.showTransferImportModal = false;
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
                    self.loaderStates.transferList = true;

                    self.TransferService.getTransfers(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.transfers = res;
                        params.total(res.total);
                        self.loaderStates.transferList = false;
                        self.loaderStates.coverLoader = false;
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_transfers.error');
                        self.Flash.create('danger', message);
                        self.loaderStates.transferList = false;
                        self.loaderStates.coverLoader = false;
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'transferPoints',
        value: function transferPoints(newTransfer, type) {
            var self = this;
            self.loaderStates.addTransfer = true;

            switch (type) {
                case 'add':
                    self.TransferService.postAddTransfer(newTransfer).then(function (res) {
                        var message = self.$filter('translate')('xhr.post_add_transfer.success');
                        self.Flash.create('success', message);
                        self.tableParams.reload();
                        self.closeTransferModal();
                        self.$scope.validate = {};
                        self.loaderStates.addTransfer = false;
                    }, function (res) {
                        self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                        var message = self.$filter('translate')('xhr.post_add_transfer.error');
                        self.Flash.create('danger', message);
                        self.loaderStates.addTransfer = false;
                    });
                    break;
                case 'spend':
                    self.TransferService.postSpendTransfer(newTransfer).then(function (res) {
                        var message = self.$filter('translate')('xhr.post_spend_transfer.success');
                        self.Flash.create('success', message);
                        self.tableParams.reload();
                        self.closeTransferModal();
                        self.$scope.validate = {};
                        self.loaderStates.addTransfer = false;
                    }, function (res) {
                        self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                        var message = self.$filter('translate')('xhr.post_spend_transfer.error');
                        self.Flash.create('danger', message);
                        self.loaderStates.addTransfer = false;
                    });
                    break;
                default:
                    self.loaderStates.addTransfer = false;
                    break;
            }
        }
    }, {
        key: 'addPoints',
        value: function addPoints(newTransfer) {
            var self = this;

            self.TransferService.postAddTransfer(newTransfer).then(function (res) {
                var message = self.$filter('translate')('xhr.post_add_transfer.success');
                self.Flash.create('success', message);
                self.tableParams.reload();
                self.closeAddPointsModal();
                self.$scope.validate = {};
            }, function (res) {
                self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                var message = self.$filter('translate')('xhr.post_add_transfer.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'spendPoints',
        value: function spendPoints(newTransfer) {
            var self = this;

            self.TransferService.postSpendTransfer(newTransfer).then(function (res) {
                var message = self.$filter('translate')('xhr.post_spend_transfer.success');
                self.Flash.create('success', message);
                self.tableParams.reload();
                self.closeSpendPointsModal();
                self.$scope.validate = {};
            }, function (res) {
                self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                var message = self.$filter('translate')('xhr.post_spend_transfer.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'cancelTransfer',
        value: function cancelTransfer(transferId) {
            var self = this;
            self.loaderStates.cancelTransfer = true;

            self.TransferService.postCancelTransfer(transferId).then(function (res) {
                var message = self.$filter('translate')('xhr.post_cancel_transfer.success');
                self.Flash.create('success', message);
                self.tableParams.reload();
                self.loaderStates.cancelTransfer = false;
            }, function () {
                var message = self.$filter('translate')('xhr.post_cancel_transfer.error');
                self.Flash.create('danger', message);
                self.loaderStates.cancelTransfer = false;
            });
        }
    }, {
        key: 'importTransfer',
        value: function importTransfer(file) {
            var self = this;

            if (file) {
                self.loaderStates.importTransfer = true;
                self.TransferService.postImportTransfer(file).then(function (res) {
                    if (res.totalProcessed == 0) {
                        var message = self.$filter('translate')('xhr.import.no_data');
                        self.Flash.create('warning', message);
                    } else if (res.totalFailed == 0) {
                        var _message = self.$filter('translate')('xhr.import.success', { processed: res.totalProcessed });
                        self.Flash.create('success', _message);
                    } else {
                        var _message2 = self.$filter('translate')('xhr.import.warning', { processed: res.totalProcessed, success: res.totalSuccess, failed: res.totalFailed });
                        self.Flash.create('warning', _message2);
                    }

                    self.$scope.importTransactionModal = false;
                    self.loaderStates.importTransfer = false;
                    self.closeImportModal();
                    self.tableParams.reload();
                }, function (res) {
                    var message = self.$filter('translate')('xhr.import.error');
                    self.Flash.create('danger', message);
                    self.loaderStates.importTransfer = false;
                });
            }
        }
    }]);

    return TransferController;
}();

/* harmony default export */ __webpack_exports__["a"] = (TransferController);


TransferController.$inject = ['$scope', '$state', '$stateParams', 'AuthService', 'TransferService', 'Flash', 'EditableMap', 'NgTableParams', 'ParamsMap', '$q', 'CustomerService', 'Validation', '$filter', 'DataService'];

/***/ }),

/***/ "./modules/admin.transfers/TransferService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var TransferService = function () {
    function TransferService(Restangular, EditableMap, $filter) {
        _classCallCheck(this, TransferService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
        this.$filter = $filter;

        this.transferTypeConfig = {
            valueField: 'type',
            labelField: 'name',
            create: false,
            maxItems: 1
        };
        this.transferType = [{
            name: this.$filter('translate')('transfer.spend_points'),
            type: 'spend'
        }, {
            name: this.$filter('translate')('transfer.add_points'),
            type: 'add'
        }];
    }

    _createClass(TransferService, [{
        key: 'getTransferTypeConfig',
        value: function getTransferTypeConfig() {
            return this.transferTypeConfig;
        }
    }, {
        key: 'getTransferType',
        value: function getTransferType() {
            return this.transferType;
        }
    }, {
        key: 'getTransfers',
        value: function getTransfers(params) {
            return this.Restangular.one('points').all('transfer').getList(params);
        }
    }, {
        key: 'postAddTransfer',
        value: function postAddTransfer(newTransfer) {
            return this.Restangular.one('points').one('transfer').one('add').customPOST({ transfer: newTransfer });
        }
    }, {
        key: 'postSpendTransfer',
        value: function postSpendTransfer(spendTransfer) {
            return this.Restangular.one('points').one('transfer').one('spend').customPOST({ transfer: spendTransfer });
        }
    }, {
        key: 'postCancelTransfer',
        value: function postCancelTransfer(transferId) {
            return this.Restangular.one('points').one('transfer', transferId).one('cancel').post();
        }
    }, {
        key: 'postImportTransfer',
        value: function postImportTransfer(file) {
            var formData = new FormData();
            formData.append('file[file]', file);

            return this.Restangular.one('points').one('transfer').one('import').withHttpConfig({
                transformRequest: angular.identity,
                timeout: 0
            }).customPOST(formData, '', undefined, { 'Content-Type': undefined });
        }
    }]);

    return TransferService;
}();

/* harmony default export */ __webpack_exports__["a"] = (TransferService);


TransferService.$inject = ['Restangular', 'EditableMap', '$filter'];

/***/ }),

/***/ "./modules/admin.transfers/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__TransferController__ = __webpack_require__("./modules/admin.transfers/TransferController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__TransferService__ = __webpack_require__("./modules/admin.transfers/TransferService.js");



var MODULE_NAME = 'admin.transfers';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('admin.transfers-list', {
        url: "/transfers-list",
        views: {
            'extendTop@': {
                templateUrl: 'templates/transfers-list-extend-top.html',
                controller: 'TransferController',
                controllerAs: 'TransferCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/admin.transfers/templates/transfers-list.html"),
                controller: 'TransferController',
                controllerAs: 'TransferCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/transfers-list-extend-bottom.html',
                controller: 'TransferController',
                controllerAs: 'TransferCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/transfers-list-extend-top.html', '');
    $templateCache.put('templates/transfers-list-extend-bottom.html', '');

    $http.get('templates/transfers-list.html').then(function (response) {
        $templateCache.put('templates/transfers-list.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('TransferController', __WEBPACK_IMPORTED_MODULE_0__TransferController__["a" /* default */]).service('TransferService', __WEBPACK_IMPORTED_MODULE_1__TransferService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/admin.transfers/templates/transfers-list.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/transfers-list.html";

/***/ }),

/***/ "./modules/pos.campaigns/CampaignController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CampaignController = function () {
    function CampaignController($scope, $state, $stateParams, AuthService, CampaignService, Flash, EditableMap, NgTableParams, ParamsMap, $q, Validation, $filter) {
        _classCallCheck(this, CampaignController);

        if (!AuthService.isGranted('ROLE_SELLER')) {
            $state.go('seller-login');
        }
        this.$scope = $scope;
        this.$scope.newCampaign = {};
        this.$scope.showCompany = false;
        this.$scope.showAddress = false;
        this.$state = $state;
        this.AuthService = AuthService;
        this.CampaignService = CampaignService;
        this.Flash = Flash;
        this.EditableMap = EditableMap;
        this.campaignId = $stateParams.campaignId || null;
        this.NgTableParams = NgTableParams;
        this.ParamsMap = ParamsMap;
        this.$q = $q;
        this.Validation = Validation;
        this.$filter = $filter;
        this.loaderVisible = {
            campaigns: true,
            singleCampaign: true
        };
    }

    _createClass(CampaignController, [{
        key: 'getData',
        value: function getData() {
            var self = this;

            self.tableParams = new self.NgTableParams({}, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.CampaignService.getCampaigns(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.campaigns = res;
                        self.loaderVisible.campaigns = false;
                        params.total(res.total);
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_campaigns.error');
                        self.Flash.create('danger', message);
                        dfd.reject();
                        self.loaderVisible.campaigns = false;
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'getCampaignData',
        value: function getCampaignData() {
            var self = this;

            if (self.campaignId) {
                self.CampaignService.getCampaign(self.campaignId).then(function (res) {
                    self.$scope.campaign = res;
                    self.$scope.editableFields = self.EditableMap.humanizeCampaign(res);
                    if (self.$scope.editableFields.levels && self.$scope.editableFields.levels.length) {
                        var levels = self.$scope.editableFields.levels;
                        var levelsArray = [];
                        for (var i in levels) {
                            var level = _.find(self.levels, { id: levels[i] });
                        }
                        self.loaderVisible.singleCampaign = false;
                    }
                    if (self.$scope.editableFields.segments && self.$scope.editableFields.segments.length) {
                        var segments = self.$scope.editableFields.segments;
                        var segmentsArray = [];
                        for (var _i in segments) {
                            var segment = _.find(self.segments, { id: segments[_i] });
                        }
                        self.loaderVisible.singleCampaign = false;
                    }
                }, function () {
                    var message = self.$filter('translate')('xhr.get_campaign.error');
                    self.Flash.create('danger', message);
                });
            } else {
                self.$state.go('admin.campaign-list');
                var message = self.$filter('translate')('xhr.get_campaign.no_id');
                self.Flash.create('warning', message);
            }
        }
    }]);

    return CampaignController;
}();

/* harmony default export */ __webpack_exports__["a"] = (CampaignController);


CampaignController.$inject = ['$scope', '$state', '$stateParams', 'AuthService', 'CampaignService', 'Flash', 'EditableMap', 'NgTableParams', 'ParamsMap', '$q', 'Validation', '$filter'];

/***/ }),

/***/ "./modules/pos.campaigns/CampaignService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var CampaignService = function () {
    function CampaignService(Restangular, EditableMap) {
        _classCallCheck(this, CampaignService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
        this.campaigns = null;
    }

    _createClass(CampaignService, [{
        key: 'getCampaigns',
        value: function getCampaigns(params) {
            if (!params) {
                params = {};
            }

            return this.Restangular.one('seller').all('campaign').getList(params);
        }
    }, {
        key: 'getCampaign',
        value: function getCampaign(campaignId) {
            return this.Restangular.one('seller').one('campaign', campaignId).get();
        }
    }]);

    return CampaignService;
}();

/* harmony default export */ __webpack_exports__["a"] = (CampaignService);


CampaignService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/pos.campaigns/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__CampaignController__ = __webpack_require__("./modules/pos.campaigns/CampaignController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__CampaignService__ = __webpack_require__("./modules/pos.campaigns/CampaignService.js");



var MODULE_NAME = 'pos.campaigns';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('seller.panel.campaigns', {
        url: "/campaigns",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-campaign-list-extend-top.html',
                controller: 'CampaignController',
                controllerAs: 'CampaignCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.campaigns/templates/seller-campaign-list.html"),
                controller: 'CampaignController',
                controllerAs: 'CampaignCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-campaign-list-extend-bottom.html',
                controller: 'CampaignController',
                controllerAs: 'CampaignCtrl'
            }
        }
    }).state('seller.single-campaign', {
        url: "/single-campaign/:campaignId",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-single-campaign-extend-top.html',
                controller: 'CampaignController',
                controllerAs: 'CampaignCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.campaigns/templates/seller-single-campaign.html"),
                controller: 'CampaignController',
                controllerAs: 'CampaignCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-single-campaign-extend-bottom.html',
                controller: 'CampaignController',
                controllerAs: 'CampaignCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/seller-single-campaign-extend-top.html', '');
    $templateCache.put('templates/seller-single-campaign-extend-bottom.html', '');

    $templateCache.put('templates/seller-campaign-list-extend-top.html', '');
    $templateCache.put('templates/seller-campaign-list-extend-bottom.html', '');

    $http.get('templates/seller-campaign-list.html').then(function (response) {
        $templateCache.put('templates/seller-campaign-list.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-single-campaign.html').then(function (response) {
        $templateCache.put('templates/seller-single-campaign.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('CampaignController', __WEBPACK_IMPORTED_MODULE_0__CampaignController__["a" /* default */]).service('CampaignService', __WEBPACK_IMPORTED_MODULE_1__CampaignService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.campaigns/templates/seller-campaign-list.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-campaign-list.html";

/***/ }),

/***/ "./modules/pos.campaigns/templates/seller-single-campaign.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-single-campaign.html";

/***/ }),

/***/ "./modules/pos.customers/SellerCustomerController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerCustomerController = function () {
    function SellerCustomerController($scope, $state, $stateParams, SellerCustomerService, Flash, $filter, DataService, Validation, EditableMap, $q, ParamsMap, NgTableParams, AuthService, TransferService) {
        var _this = this;

        _classCallCheck(this, SellerCustomerController);

        this.$scope = $scope;
        this.sellerId = AuthService.getLoggedUserId();
        this.$scope.newCustomer = { labels: [] };
        this.$scope.editableFields = {};
        this.$scope.newLevel = {};
        this.$scope.newPos = {};
        this.$scope.validate = {};
        this.$scope.dateNow = new Date();
        this.$state = $state;
        this.SellerCustomerService = SellerCustomerService;
        this.Flash = Flash;
        this.$scope.token = {};
        this.$filter = $filter;
        this.country = DataService.getCountries();
        this.EditableMap = EditableMap;
        this.Validation = Validation;
        this.TransferService = TransferService;
        this.transferTypeConfig = this.TransferService.getTransferTypeConfig();
        this.transferType = this.TransferService.getTransferType();
        this.activationMethod = null;
        SellerCustomerService.getPosSeller(this.sellerId).then(function (method) {
            _this.allowPointTransfer = method.allowPointTransfer;
        });
        DataService.getActivationMethod().then(function (method) {
            _this.activationMethod = method;
        });
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
            agreement1: '@assert:not_blank'
        };
        this.customerId = $stateParams.customerId || null;
        this.countryConfig = {
            valueField: 'code',
            labelField: 'name',
            create: false,
            sortField: 'name',
            maxItems: 1
        };
        this.levelsConfig = {
            valueField: 'id',
            labelField: 'name',
            create: false,
            sortField: 'name',
            maxItems: 1
        };
        this.posConfig = {
            valueField: 'posId',
            labelField: 'name',
            create: false,
            sortField: 'name',
            maxItems: 1
        };
        this.$scope.search = {};
        this.ParamsMap = ParamsMap;
        this.$scope.searchCustomerValidate = {
            loyaltyCardNumber: '@assert:one_from:phone:email:firstName:lastName:city:postcode',
            phone: '@assert:one_from:loyaltyCardNumber:email:firstName:lastName:city:postcode',
            email: '@assert:one_from:phone:loyaltyCardNumber:firstName:lastName:city:postcode',
            firstName: '@assert:one_from:phone:email:loyaltyCardNumber:city:postcode:lastName',
            lastName: '@assert:one_from:phone:email:loyaltyCardNumber:city:postcode:firstName',
            city: '@assert:one_from:phone:email:firstName:lastName:loyaltyCardNumber:postcode',
            postcode: '@assert:one_from:phone:email:firstName:lastName:city:loyaltyCardNumber'
        };
        this.NgTableParams = NgTableParams;
        this.$scope.customers = null;
        this.$q = $q;
        this.loaderVisible = {
            addTransfer: false,
            editCustomer: true,
            singleCustomer: true
        };

        if (this.customerId && this.$state.current.name === 'seller.panel.single-customer') {
            var self = this;

            $scope.$watch('customer', function () {
                if ($scope.customer && $scope.customer.levelId) {
                    self.getAssignedLevel($scope.customer.levelId);
                    self.getAvailableLevels();
                } else {
                    self.getAvailableLevels();
                }
                if ($scope.customer && $scope.customer.posId) {
                    self.getAssignedPos($scope.customer.posId);
                    self.getAvailablePos();
                } else {
                    self.getAvailablePos();
                }
            }, true);
        }
    }

    _createClass(SellerCustomerController, [{
        key: 'resendActivationCode',
        value: function resendActivationCode(id) {
            var self = this;
            if (!self.isActivationBySms()) {
                return;
            }
            this.SellerCustomerService.resendActivationCode(id).then(function (res) {
                var message = self.$filter('translate')('xhr.post_resend_activation_code.success');
                self.Flash.create('success', message);
                self.$state.go('seller.panel.customer-registration.activation', { customerId: id });
            }, function () {
                var message = self.$filter('translate')('xhr.post_activate_customer.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'activateCustomer',
        value: function activateCustomer(token) {
            var self = this;
            this.SellerCustomerService.activateCustomer(this.customerId, token.value).then(function (res) {
                var message = self.$filter('translate')('xhr.post_activate_customer.success');
                self.Flash.create('success', message);
                self.$state.go('seller.panel.dashboard');
            }, function () {
                var message = self.$filter('translate')('xhr.post_activate_customer.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
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
        key: 'deactivateCustomer',
        value: function deactivateCustomer(customerId) {
            var self = this;

            self.SellerCustomerService.deactivateCustomer(customerId).then(function (res) {
                var message = self.$filter('translate')('xhr.post_deactivate_customer.success');
                self.Flash.create('success', message);
                self.find();
            }, function () {
                var message = self.$filter('translate')('xhr.post_deactivate_customer.error');
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
                self.SellerCustomerService.postCustomer(newCustomer).then(function (res) {
                    var message = self.$filter('translate')('xhr.post_registration_customer.success');
                    self.Flash.create('success', message);
                    if (self.isActivationBySms()) {
                        self.$state.go('seller.panel.customer-registration.activation', { customerId: res.customerId });
                    } else {
                        self.$state.go('seller.panel.dashboard');
                    }
                }, function (res) {
                    self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                    var message = self.$filter('translate')('xhr.post_registration_customer.error');
                    self.Flash.create('danger', message);
                });
            } else {
                var _message = self.$filter('translate')('xhr.post_registration_customer.error');
                self.Flash.create('danger', _message);
                self.$scope.validate = frontValidation;
            }
        }
    }, {
        key: 'getTransactionsData',
        value: function getTransactionsData() {
            var self = this;

            self.transactionsTableParams = new self.NgTableParams({}, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.SellerCustomerService.getCustomerTransactions(self.ParamsMap.params(params.url()), self.customerId).then(function (res) {
                        self.$scope.customerTransactions = res;
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
    }, {
        key: 'getTransfersData',
        value: function getTransfersData() {
            var self = this;

            self.transfersTableParams = new self.NgTableParams({}, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.SellerCustomerService.getCustomerTransfers(self.ParamsMap.params(params.url()), self.customerId).then(function (res) {
                        self.$scope.customerTransfers = res;
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
    }, {
        key: 'getCampaignsData',
        value: function getCampaignsData() {
            var self = this;

            self.availableCampaignsTableParams = new self.NgTableParams({}, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.SellerCustomerService.getCustomerAvailableCampaigns(self.ParamsMap.params(params.url()), self.customerId).then(function (res) {
                        self.$scope.availableCampaigns = res;
                        params.total(res.total);
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_available_campaigns.error');
                        self.Flash.create('danger', message);
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'getRewardsData',
        value: function getRewardsData() {
            var self = this;

            self.boughtCampaignsTableParams = new self.NgTableParams({}, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.SellerCustomerService.getCustomerBoughtCampaigns(self.ParamsMap.params(params.url()), self.customerId).then(function (res) {
                        self.$scope.boughtCampaigns = res;
                        params.total(res.total);
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_bought_campaigns.error');
                        self.Flash.create('danger', message);
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'getCustomerData',
        value: function getCustomerData() {
            var self = this;

            if (self.customerId) {
                self.SellerCustomerService.getCustomer(self.customerId).then(function (res) {
                    self.$scope.customer = res;
                    self.$scope.editableFields = self.EditableMap.humanizeCustomer(res);
                    self.$scope.showAddress = !_.isEmpty(self.$scope.editableFields.address);
                    self.$scope.showCompany = !_.isEmpty(self.$scope.editableFields.company);
                    self.loaderVisible.editCustomer = false;
                    self.loaderVisible.singleCustomer = false;
                }, function () {
                    self.$state.go('seller.panel.customer-search');
                    var message = self.$filter('translate')('xhr.get_customer.cant_edit');
                    self.Flash.create('danger', message);
                    self.loaderVisible.editCustomer = false;
                    self.loaderVisible.singleCustomer = false;
                });
                self.SellerCustomerService.getCustomerStatus(self.customerId).then(function (res) {
                    self.$scope.status = res;
                }, function () {
                    var message = self.$filter('translate')('xhr.get_customer.error');
                    self.Flash.create('danger', message);
                });
                self.getTransactionsData();
                self.getTransfersData();
                self.getCampaignsData();
                self.getRewardsData();
            } else {
                self.$state.go('seller.panel.dashboard');
                var _message2 = self.$filter('translate')('xhr.get_customer.no_id');
                self.Flash.create('warning', _message2);
            }
        }
    }, {
        key: 'editCustomer',
        value: function editCustomer(editedCustomer) {
            var self = this;
            var validateFields = angular.copy(self.$scope.frontValidate);

            if (self.$scope.showAddress) {
                validateFields.address = angular.copy(self.$scope.addressValidation);
            } else {
                delete self.$scope.editableFields.address;
            }
            if (self.$scope.showCompany) {
                validateFields.company = angular.copy(self.$scope.companyValidation);
            } else {
                delete self.$scope.editableFields.company;
            }

            var frontValidation = self.Validation.frontValidation(editedCustomer, validateFields);
            if (_.isEmpty(frontValidation)) {
                self.SellerCustomerService.putCustomer(editedCustomer).then(function (res) {
                    var message = self.$filter('translate')('xhr.put_customer.success');
                    self.Flash.create('success', message);
                    self.$state.go('seller.panel.dashboard');
                }, function (res) {
                    self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                    var message = self.$filter('translate')('xhr.put_customer.error');
                    self.Flash.create('danger', message);
                });
            } else {
                var _message3 = self.$filter('translate')('xhr.post_customer.error');
                self.Flash.create('danger', _message3);
                self.$scope.validate = frontValidation;
            }
        }
    }, {
        key: 'getAvailableLevels',
        value: function getAvailableLevels() {
            var self = this;

            self.SellerCustomerService.getLevels().then(function (res) {
                self.$scope.availableLevels = res;
                self.levels = res;
            }, function () {
                var messagsearchCustomerValidatee = self.$filter('translate')('xhr.get_levels.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'getAvailablePos',
        value: function getAvailablePos() {
            var self = this;

            self.SellerCustomerService.getPosList().then(function (res) {
                self.$scope.availablePos = res;
                self.posList = res;
            }, function () {
                var message = self.$filter('translate')('xhr.get_pos_list.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'getAssignedPos',
        value: function getAssignedPos(posId) {
            var self = this;

            self.SellerCustomerService.getPos(posId).then(function (res) {
                self.$scope.assignedPos = res;
            }, function () {
                var message = self.$filter('translate')('xhr.get_pos_list.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'getAssignedLevel',
        value: function getAssignedLevel(levelId) {
            var self = this;

            if (!levelId) {
                return;
            }

            self.SellerCustomerService.getLevel(levelId).then(function (res) {
                self.$scope.assignedLevel = res;
            }, function () {
                var message = self.$filter('translate')('xhr.get_level.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'find',
        value: function find() {
            var self = this;
            self.$scope.validate = {};
            var validateFields = angular.copy(self.$scope.searchCustomerValidate);
            var frontValidation = self.Validation.frontValidation(self.$scope.search, validateFields);

            if (_.isEmpty(frontValidation)) {
                if (self.$scope.search) {
                    self.SellerCustomerService.search(self.$scope.search).then(function (res) {
                        if (!res.customers.length) {
                            var _message4 = self.$filter('translate')('xhr.customer_search.nothing_found');
                            self.Flash.create('warning', _message4);
                        } else {
                            var _message5 = self.$filter('translate')('xhr.customer_search.success');
                            self.Flash.create('success', _message5);
                        }
                        self.$scope.customers = res.customers;
                    }, function (res) {
                        if (res.data.error && res.data.error == 'to many results') {
                            var _message6 = self.$filter('translate')('xhr.customer_search.to_many_results');
                            self.Flash.create('danger', _message6);
                        } else {
                            self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                            var _message7 = self.$filter('translate')('xhr.customer_search.error');
                            self.Flash.create('danger', _message7);
                            self.$scope.customers = null;
                        }
                    });
                }
            } else {
                var _message8 = self.$filter('translate')('xhr.customer_search.error');
                self.Flash.create('danger', _message8);
                self.$scope.validate = frontValidation;
            }
        }
    }, {
        key: 'assignPos',
        value: function assignPos(newPos) {
            var self = this;

            self.SellerCustomerService.postPos(self.$scope.customer, newPos.posId).then(function (res) {
                var message = self.$filter('translate')('xhr.post_pos.success');
                self.Flash.create('success', message);
                self.getCustomerData();
                self.showAvailablePosModal = false;
            }, function () {
                var message = self.$filter('translate')('xhr.post_pos.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'assignLevel',
        value: function assignLevel(newLevel) {
            var self = this;

            self.SellerCustomerService.postLevel(self.$scope.customer, newLevel.id).then(function (res) {
                var message = self.$filter('translate')('xhr.post_level.success');
                self.Flash.create('success', message);
                self.getCustomerData();
                self.showAvailableLevelsModal = false;
            }, function () {
                var message = self.$filter('translate')('xhr.post_level.error');
                self.Flash.create('danger', message);
            });
        }
    }, {
        key: 'addLabel',
        value: function addLabel(edit) {
            if (edit) {
                if (!(this.$scope.editableFields.labels instanceof Array)) {
                    this.$scope.editableFields.labels = [];
                }
                this.$scope.editableFields.labels.push({
                    key: '',
                    value: ''
                });
            } else {
                this.$scope.newCustomer.labels.push({
                    key: '',
                    value: ''
                });
            }
        }
    }, {
        key: 'removeLabel',
        value: function removeLabel(index, edit) {
            var self = this;
            var customer = void 0;

            if (!edit) {
                customer = self.$scope.newCustomer;
            } else {
                customer = self.$scope.editableFields;
            }

            customer.labels = _.difference(customer.labels, [customer.labels[index]]);
        }
    }, {
        key: 'openTransferModal',
        value: function openTransferModal() {
            var self = this;

            self.$scope.newTransfer = {};
            self.$scope.showTransferModal = true;
        }
    }, {
        key: 'closeTransferModal',
        value: function closeTransferModal() {
            var self = this;
            self.$scope.showTransferModal = false;
        }
    }, {
        key: 'transferPoints',
        value: function transferPoints(newTransfer, type) {
            var self = this;
            self.loaderVisible.addTransfer = true;

            Object.assign(newTransfer, {
                'customer': this.customerId
            });

            switch (type) {
                case 'add':
                    self.SellerCustomerService.postPosAddTransfer(newTransfer).then(function (res) {
                        var message = self.$filter('translate')('xhr.post_add_transfer.success');
                        self.Flash.create('success', message);
                        self.transfersTableParams.reload();
                        self.closeTransferModal();
                        self.$scope.validate = {};
                        self.loaderVisible.addTransfer = false;
                    }, function (res) {
                        self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                        var message = self.$filter('translate')('xhr.post_add_transfer.error');
                        self.Flash.create('danger', message);
                        self.loaderVisible.addTransfer = false;
                    });
                    break;
                case 'spend':
                    self.SellerCustomerService.postPosSpendTransfer(newTransfer).then(function (res) {
                        var message = self.$filter('translate')('xhr.post_spend_transfer.success');
                        self.Flash.create('success', message);
                        self.transfersTableParams.reload();
                        self.closeTransferModal();
                        self.$scope.validate = {};
                        self.loaderVisible.addTransfer = false;
                    }, function (res) {
                        self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                        var message = self.$filter('translate')('xhr.post_spend_transfer.error');
                        self.Flash.create('danger', message);
                        self.loaderVisible.addTransfer = false;
                    });
                    break;
                default:
                    self.loaderVisible.addTransfer = false;
                    break;
            }
        }
    }]);

    return SellerCustomerController;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerCustomerController);


SellerCustomerController.$inject = ['$scope', '$state', '$stateParams', 'SellerCustomerService', 'Flash', '$filter', 'DataService', 'Validation', 'EditableMap', '$q', 'ParamsMap', 'NgTableParams', 'AuthService', 'TransferService'];

/***/ }),

/***/ "./modules/pos.customers/SellerCustomerService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerCustomerService = function () {
    function SellerCustomerService(Restangular, EditableMap) {
        _classCallCheck(this, SellerCustomerService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(SellerCustomerService, [{
        key: 'search',
        value: function search(data) {
            return this.Restangular.one('pos').one('search').one('customer').customPOST({ search: data });
        }
    }, {
        key: 'getCustomers',
        value: function getCustomers(params) {
            if (!params) {
                params = {};
            }

            return this.Restangular.all('customer').getList(params);
        }
    }, {
        key: 'postCustomer',
        value: function postCustomer(newCustomer) {
            var self = this;

            return this.Restangular.one('seller').one('customer').one('register').customPOST({ customer: self.EditableMap.newCustomer(newCustomer) });
        }
    }, {
        key: 'getLevels',
        value: function getLevels(params) {
            return this.Restangular.one('seller').all('level').getList(params);
        }
    }, {
        key: 'getPosSeller',
        value: function getPosSeller(sellerId) {
            return this.Restangular.one('seller', sellerId).get();
        }
    }, {
        key: 'getPosList',
        value: function getPosList(params) {
            return this.Restangular.one('seller').all('pos').getList(params);
        }
    }, {
        key: 'getCustomer',
        value: function getCustomer(customerId) {
            return this.Restangular.one('customer', customerId).get();
        }
    }, {
        key: 'putCustomer',
        value: function putCustomer(editedCustomer) {
            var self = this;

            return editedCustomer.customPUT({ customer: self.EditableMap.customer(editedCustomer, true) });
        }
    }, {
        key: 'postLevel',
        value: function postLevel(editedCustomer, levelId) {
            return editedCustomer.customPOST({ levelId: levelId }, 'level');
        }
    }, {
        key: 'postPos',
        value: function postPos(editedCustomer, posId) {
            return editedCustomer.customPOST({ posId: posId }, 'pos');
        }
    }, {
        key: 'getLevel',
        value: function getLevel(levelId) {
            return this.Restangular.one('seller').one('level', levelId).get();
        }
    }, {
        key: 'getPos',
        value: function getPos(pos) {
            return this.Restangular.one('seller').one('pos', pos).get();
        }
    }, {
        key: 'getCustomerTransactions',
        value: function getCustomerTransactions(params, customerId) {
            params.customerId = customerId;

            return this.Restangular.one('seller').all('transaction').getList(params);
        }
    }, {
        key: 'postPosAddTransfer',
        value: function postPosAddTransfer(newTransfer) {
            return this.Restangular.one('pos').one('points').one('transfer').one('add').customPOST({ transfer: newTransfer });
        }
    }, {
        key: 'postPosSpendTransfer',
        value: function postPosSpendTransfer(newTransfer) {
            return this.Restangular.one('pos').one('points').one('transfer').one('spend').customPOST({ transfer: newTransfer });
        }
    }, {
        key: 'getCustomerTransfers',
        value: function getCustomerTransfers(params, customerId) {
            params.customerId = customerId;

            return this.Restangular.one('seller').one('points').all('transfer').getList(params);
        }
    }, {
        key: 'getCustomerAvailableCampaigns',
        value: function getCustomerAvailableCampaigns(params, customerId) {
            params.customerId = customerId;

            return this.Restangular.one('seller').one('customer', customerId).one('campaign').all('available').getList(params);
        }
    }, {
        key: 'getCustomerBoughtCampaigns',
        value: function getCustomerBoughtCampaigns(params, customerId) {
            params.customerId = customerId;
            params.includeDetails = true;

            return this.Restangular.one('seller').one('customer', customerId).one('campaign').all('bought').getList(params);
        }
    }, {
        key: 'getCustomerStatus',
        value: function getCustomerStatus(customerId) {
            return this.Restangular.one('seller').one('customer', customerId).one('status').get();
        }
    }, {
        key: 'deactivateCustomer',
        value: function deactivateCustomer(customerId) {
            return this.Restangular.one('seller').one('customer', customerId).one('deactivate').customPOST();
        }
    }, {
        key: 'activateCustomer',
        value: function activateCustomer(customerId, token) {
            return this.Restangular.one('customer').one('activate-sms', token).customPOST();
        }
    }, {
        key: 'resendActivationCode',
        value: function resendActivationCode(customerId) {
            return this.Restangular.one('seller').one('customer', customerId).one('send-sms-code').customPOST();
        }
    }]);

    return SellerCustomerService;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerCustomerService);


SellerCustomerService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/pos.customers/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__img_avatar_jpg__ = __webpack_require__("./img/avatar.jpg");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__img_avatar_jpg___default = __webpack_require__.n(__WEBPACK_IMPORTED_MODULE_0__img_avatar_jpg__);
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__SellerCustomerController__ = __webpack_require__("./modules/pos.customers/SellerCustomerController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_2__SellerCustomerService__ = __webpack_require__("./modules/pos.customers/SellerCustomerService.js");




var MODULE_NAME = 'pos.customers';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('seller.panel.customer-search', {
        url: "/search/customer",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-find-customer-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-find-customer.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-find-customer-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.customer-registration', {
        url: "/customer-registration",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-registration-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-registration.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-registration-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.customer-registration.activation', {
        url: "/customer-registration/activation/:customerId",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-registration-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-registration-activation.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-registration-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.edit-customer', {
        url: "/customer-edit/:customerId",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-edit-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-edit.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-edit-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.single-customer', {
        url: "/single-customer/:customerId",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-single-customer-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-single-customer.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-single-customer-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.single-customer.rewards', {
        url: "/rewards",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-rewards-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-rewards.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-rewards-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.single-customer.transactions', {
        url: "/transactions",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-transactions-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-transactions.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-transactions-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.single-customer.transfers', {
        url: "/transfers",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-transfers-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-transfers.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-transfers-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    }).state('seller.panel.single-customer.campaigns', {
        url: "/campaigns",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-customer-campaigns-extend-top.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.customers/templates/seller-customer-campaigns.html"),
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-customer-campaigns-extend-bottom.html',
                controller: 'SellerCustomerController',
                controllerAs: 'SellerCustomerCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/seller-find-customer-extend-top.html', '');
    $templateCache.put('templates/seller-find-customer-extend-bottom.html', '');

    $templateCache.put('templates/seller-customer-registration-extend-top.html', '');
    $templateCache.put('templates/seller-customer-registration-extend-bottom.html', '');

    $templateCache.put('templates/seller-customer-edit-extend-top.html', '');
    $templateCache.put('templates/seller-customer-edit-extend-bottom.html', '');

    $templateCache.put('templates/seller-single-customer-extend-top.html', '');
    $templateCache.put('templates/seller-single-customer-extend-bottom.html', '');

    $templateCache.put('templates/seller-customer-rewards-extend-top.html', '');
    $templateCache.put('templates/seller-customer-rewards-extend-bottom.html', '');

    $templateCache.put('templates/seller-customer-transactions-extend-top.html', '');
    $templateCache.put('templates/seller-customer-transactions-extend-bottom.html', '');

    $templateCache.put('templates/seller-customer-transfers-extend-top.html', '');
    $templateCache.put('templates/seller-customer-transfers-extend-bottom.html', '');

    $templateCache.put('templates/seller-customer-campaigns-extend-top.html', '');
    $templateCache.put('templates/seller-customer-campaigns-extend-bottom.html', '');

    $http.get('templates/seller-find-customer.html').then(function (response) {
        $templateCache.put('templates/seller-find-customer.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-customer-registration.html').then(function (response) {
        $templateCache.put('templates/seller-customer-registration.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-customer-edit.html').then(function (response) {
        $templateCache.put('templates/seller-customer-edit.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-single-customer.html').then(function (response) {
        $templateCache.put('templates/seller-single-customer.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-customer-rewards.html').then(function (response) {
        $templateCache.put('templates/seller-customer-rewards.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-customer-transactions.html').then(function (response) {
        $templateCache.put('templates/seller-customer-transactions.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-customer-transfers.html').then(function (response) {
        $templateCache.put('templates/seller-customer-transfers.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-customer-campaigns.html').then(function (response) {
        $templateCache.put('templates/seller-customer-campaigns.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('SellerCustomerController', __WEBPACK_IMPORTED_MODULE_1__SellerCustomerController__["a" /* default */]).service('SellerCustomerService', __WEBPACK_IMPORTED_MODULE_2__SellerCustomerService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-campaigns.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-campaigns.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-edit.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-edit.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-registration-activation.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-registration-activation.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-registration.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-registration.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-rewards.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-rewards.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-transactions.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-transactions.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-customer-transfers.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-customer-transfers.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-find-customer.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-find-customer.html";

/***/ }),

/***/ "./modules/pos.customers/templates/seller-single-customer.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-single-customer.html";

/***/ }),

/***/ "./modules/pos.dashboard/SellerDashboardController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerDashboardController = function SellerDashboardController($scope, $state, AuthService) {
    _classCallCheck(this, SellerDashboardController);

    if (!AuthService.isGranted('ROLE_SELLER')) {
        $state.go('seller-login');
    }
    this.$scope = $scope;
    this.$state = $state;
    this.AuthService = AuthService;
};

/* harmony default export */ __webpack_exports__["a"] = (SellerDashboardController);


SellerDashboardController.$inject = ['$scope', '$state', 'AuthService'];

/***/ }),

/***/ "./modules/pos.dashboard/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__SellerDashboardController__ = __webpack_require__("./modules/pos.dashboard/SellerDashboardController.js");


var MODULE_NAME = 'pos.dashboard';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('seller.panel.dashboard', {
        url: "/dashboard",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-dashboard-extend-top.html',
                controller: 'SellerDashboardController',
                controllerAs: 'SellerDashboardCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.dashboard/templates/seller-dashboard.html"),
                controller: 'SellerDashboardController',
                controllerAs: 'SellerDashboardCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-dashboard-extend-bottom.html',
                controller: 'SellerDashboardController',
                controllerAs: 'SellerDashboardCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/seller-dashboard-extend-top.html', '');
    $templateCache.put('templates/seller-dashboard-extend-bottom.html', '');

    $http.get('templates/seller-dashboard.html').then(function (response) {
        $templateCache.put('templates/seller-dashboard.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('SellerDashboardController', __WEBPACK_IMPORTED_MODULE_0__SellerDashboardController__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.dashboard/templates/seller-dashboard.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-dashboard.html";

/***/ }),

/***/ "./modules/pos.earning-rules/SellerEarningRulesController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerEarningRulesController = function () {
    function SellerEarningRulesController($scope, $state, AuthService, SellerEarningRulesService, DataService, Flash, NgTableParams, $q, ParamsMap, $stateParams, EditableMap, Validation, $filter) {
        _classCallCheck(this, SellerEarningRulesController);

        if (!AuthService.isGranted('ROLE_SELLER')) {
            AuthService.logout();
        }
        this.$scope = $scope;
        this.SellerEarningRulesService = SellerEarningRulesService;
        this.$state = $state;
        this.Flash = Flash;
        this.earningRuleId = $stateParams.earningRuleId || null;
        this.NgTableParams = NgTableParams;
        this.Validation = Validation;
        this.$filter = $filter;
        this.$q = $q;
        this.ParamsMap = ParamsMap;
        this.loaderVisible = true;
        this.types = {
            "points": $filter('translate')('earning_rule.types.points'),
            "event": $filter('translate')('earning_rule.types.event'),
            "product_purchase": $filter('translate')('earning_rule.types.product_purchase'),
            "multiply_for_product": $filter('translate')('earning_rule.types.multiply_for_product')
        };
    }

    _createClass(SellerEarningRulesController, [{
        key: 'getData',
        value: function getData() {
            var self = this;

            self.tableParams = new self.NgTableParams({}, {
                getData: function getData(params) {
                    var dfd = self.$q.defer();

                    self.SellerEarningRulesService.getEarningRules(self.ParamsMap.params(params.url())).then(function (res) {
                        self.$scope.earningRules = res;
                        self.loaderVisible = false;
                        params.total(res.total);
                        dfd.resolve(res);
                    }, function () {
                        var message = self.$filter('translate')('xhr.get_earning_rules.error');
                        self.Flash.create('danger', message);
                        self.loaderVisible = false;
                        dfd.reject();
                    });

                    return dfd.promise;
                }
            });
        }
    }, {
        key: 'getEarningRuleData',
        value: function getEarningRuleData() {
            var self = this;

            if (self.earningRuleId) {
                self.EarningRuleService.getEarningRule(self.earningRuleId).then(function (res) {
                    self.$scope.earningRule = res;
                    self.$scope.editableFields = self.EditableMap.humanizeEarningRuleFields(res);
                }, function () {
                    var message = self.$filter('translate')('xhr.get_earning_rule.error');
                    self.Flash.create('danger', message);
                });
            } else {
                self.$state.go('admin.earning-rule-list');
                var message = self.$filter('translate')('xhr.get_earning_rule.no_id');
                self.Flash.create('warning', message);
            }
        }
    }]);

    return SellerEarningRulesController;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerEarningRulesController);


SellerEarningRulesController.$inject = ['$scope', '$state', 'AuthService', 'SellerEarningRulesService', 'DataService', 'Flash', 'NgTableParams', '$q', 'ParamsMap', '$stateParams', 'EditableMap', 'Validation', '$filter'];

/***/ }),

/***/ "./modules/pos.earning-rules/SellerEarningRulesService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerEarningRulesService = function () {
    function SellerEarningRulesService(Restangular, EditableMap) {
        _classCallCheck(this, SellerEarningRulesService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(SellerEarningRulesService, [{
        key: 'getEarningRules',
        value: function getEarningRules(params) {
            return this.Restangular.one('seller').all('earningRule').getList(params);
        }
    }]);

    return SellerEarningRulesService;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerEarningRulesService);


SellerEarningRulesService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/pos.earning-rules/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__SellerEarningRulesController__ = __webpack_require__("./modules/pos.earning-rules/SellerEarningRulesController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__SellerEarningRulesService__ = __webpack_require__("./modules/pos.earning-rules/SellerEarningRulesService.js");



var MODULE_NAME = 'pos.earning-rules';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('seller.panel.earning-rules', {
        url: "/earning-rules",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-earning-rules-list-extend-top.html',
                controller: 'SellerEarningRulesController',
                controllerAs: 'SellerEarningRulesCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.earning-rules/templates/seller-earning-rules-list.html"),
                controller: 'SellerEarningRulesController',
                controllerAs: 'SellerEarningRulesCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-earning-rules-list-extend-bottom.html',
                controller: 'SellerEarningRulesController',
                controllerAs: 'SellerEarningRulesCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/seller-earning-rules-list-extend-top.html', '');
    $templateCache.put('templates/seller-earning-rules-list-extend-bottom.html', '');

    $http.get('templates/seller-earning-rules-list.html').then(function (response) {
        $templateCache.put('templates/seller-earning-rules-list.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('SellerEarningRulesController', __WEBPACK_IMPORTED_MODULE_0__SellerEarningRulesController__["a" /* default */]).service('SellerEarningRulesService', __WEBPACK_IMPORTED_MODULE_1__SellerEarningRulesService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.earning-rules/templates/seller-earning-rules-list.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-earning-rules-list.html";

/***/ }),

/***/ "./modules/pos.login/SellerLoginController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerLoginController = function () {
    function SellerLoginController($scope, $state, AuthService) {
        _classCallCheck(this, SellerLoginController);

        if (AuthService.getStoredRefreshToken()) {
            AuthService.getRefreshToken().then(function (res) {
                AuthService.setStoredRefreshToken(res.refresh_token);
                AuthService.setStoredToken(res.token);
                if (AuthService.isGranted('ROLE_SELLER')) {
                    $state.go('seller.panel.dashboard');
                } else {
                    $state.go('seller-login');
                }
            }, function () {
                $state.go('seller-login');
            });
        }
        this.$scope = $scope;
        this.$state = $state;
        this.AuthService = AuthService;
    }

    _createClass(SellerLoginController, [{
        key: 'submit',
        value: function submit() {
            var self = this;

            self.AuthService.setLogin(self.$scope._username);
            self.AuthService.setPassword(self.$scope._password);
            self.AuthService.getToken().then(function (res) {
                //success
                var redirectTo = self.AuthService.getLogoutFrom();

                self.AuthService.setStoredToken(res.token);

                if (self.$scope.rememberMe) {
                    self.AuthService.setStoredRefreshToken(res.refresh_token);
                }

                if (redirectTo) {
                    self.$state.go(redirectTo);
                } else {
                    self.$state.go('seller.panel.dashboard');
                }
            }, function (res) {
                //error
                self.$scope.showError = true;
                self.$scope.errorMsg = res.data.message;
            });
        }
    }]);

    return SellerLoginController;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerLoginController);


SellerLoginController.$inject = ['$scope', '$state', 'AuthService'];

/***/ }),

/***/ "./modules/pos.login/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__SellerLoginController__ = __webpack_require__("./modules/pos.login/SellerLoginController.js");


var MODULE_NAME = 'pos.login';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('forgot-password-request-seller', {
        url: "/seller/password/request",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-password-request-extend-top.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.login/templates/seller-password-request.html"),
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-password-request-extend-bottom.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            }
        }
    }).state('forgot-password-reset-seller', {
        url: "/password/reset/:token",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-password-reset-extend-top.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.login/templates/seller-password-reset.html"),
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-password-reset-extend-bottom.html',
                controller: 'SecurityController',
                controllerAs: 'SecurityCtrl'
            }
        }
    }).state('seller-login', {
        url: "/",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-login-extend-top.html',
                controller: 'SellerLoginController',
                controllerAs: 'SellerLoginCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.login/templates/seller-login.html"),
                controller: 'SellerLoginController',
                controllerAs: 'SellerLoginCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-login-extend-bottom.html',
                controller: 'SellerLoginController',
                controllerAs: 'SellerLoginCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/seller-password-request-extend-top.html', '');
    $templateCache.put('templates/seller-password-request-extend-bottom.html', '');

    $templateCache.put('templates/seller-password-reset-extend-top.html', '');
    $templateCache.put('templates/seller-password-reset-extend-bottom.html', '');

    $templateCache.put('templates/seller-login-extend-top.html', '');
    $templateCache.put('templates/seller-login-extend-bottom.html', '');

    $http.get('templates/seller-login.html').then(function (response) {
        $templateCache.put('templates/seller-login.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-password-request.html').then(function (response) {
        $templateCache.put('templates/seller-password-request.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-password-reset.html').then(function (response) {
        $templateCache.put('templates/seller-password-reset.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('SellerLoginController', __WEBPACK_IMPORTED_MODULE_0__SellerLoginController__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.login/templates/seller-login.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-login.html";

/***/ }),

/***/ "./modules/pos.login/templates/seller-password-request.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-password-request.html";

/***/ }),

/***/ "./modules/pos.login/templates/seller-password-reset.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-password-reset.html";

/***/ }),

/***/ "./modules/pos.partials/module.js":
/***/ (function(module, exports, __webpack_require__) {

var MODULE_NAME = 'pos.partials';

angular.module(MODULE_NAME, []).run(function ($templateCache) {
    $templateCache.put('templates/pos-top-nav.html', __webpack_require__("./modules/pos.partials/templates/pos-top-nav.html"));
});

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.partials/templates/pos-top-nav.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/pos-top-nav.html";

/***/ }),

/***/ "./modules/pos.transactions/SellerTransactionController.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerTransactionController = function () {
    function SellerTransactionController($scope, $state, AuthService, SellerTransactionService, Flash, ParamsMap, $stateParams, EditableMap, $filter, Validation) {
        var _this = this;

        _classCallCheck(this, SellerTransactionController);

        if (!AuthService.isGranted('ROLE_SELLER')) {
            AuthService.logout();
        }
        this.$scope = $scope;
        this.$scope.linked = {};
        this.SellerTransactionService = SellerTransactionService;
        this.$state = $state;
        this.Flash = Flash;
        this.ParamsMap = ParamsMap;
        this.EditableMap = EditableMap;
        this.$filter = $filter;
        this.validateFields = {
            customerLoyaltyCardNumber: '@assert:or_field:customerPhoneNumber',
            customerPhoneNumber: '@assert:or_field:customerLoyaltyCardNumber',
            transactionDocumentNumber: '@assert:not_blank'
        };
        this.Validation = Validation;
        this.transactionConfig = {
            valueField: 'documentNumber',
            labelField: 'documentNumber',
            create: false,
            sortField: 'documentNumber',
            searchField: 'documentNumber',
            maxItems: 1
        };
        this.customersConfig = {
            valueField: 'id',
            labelField: 'id',
            create: false,
            sortField: 'id',
            searchField: 'id',
            maxItems: 1
        };
        this.$scope.search = {};
        this.validateFindTransaction = {
            documentNumber: '@assert:or_field:documentNumber'
        };
        SellerTransactionService.getTransactions().then(function (res) {
            _this.transactionsToLink = res;
        });
    }

    _createClass(SellerTransactionController, [{
        key: 'linkTransaction',
        value: function linkTransaction() {
            var self = this;
            self.$scope.validate = {};
            var frontValidation = self.Validation.frontValidation(self.$scope.linked, self.validateFields);

            if (_.isEmpty(frontValidation)) {
                if (self.$scope.linked) {
                    self.SellerTransactionService.postAssign(self.$scope.linked).then(function () {
                        self.$state.go('seller.panel.dashboard');
                        var message = self.$filter('translate')('xhr.post_transaction_assign.success');
                        self.Flash.create('success', message);
                    }, function (res) {
                        self.$scope.validate = self.Validation.mapSymfonyValidation(res.data);
                        var message = self.$filter('translate')('xhr.post_transaction_assign.error');
                        self.Flash.create('danger', message);
                    });
                }
            } else {
                var message = self.$filter('translate')('xhr.post_transaction_assign.error');
                self.Flash.create('danger', message);
                self.$scope.validate = frontValidation;
            }
        }
    }, {
        key: 'search',
        value: function search() {
            var self = this;
            var frontValidation = self.Validation.frontValidation(self.$scope.search, self.validateFindTransaction);

            if (_.isEmpty(frontValidation)) {
                self.SellerTransactionService.getTransactionsByDocument(self.$scope.search.documentNumber).then(function (res) {
                    self.$scope.transactions = res.transactions;
                    self.$scope.validate = {};
                }, function (res) {
                    var message = self.$filter('translate')('xhr.get_transaction_search.error');
                    self.Flash.create('danger', message);
                });
            } else {
                var message = self.$filter('translate')('xhr.get_transaction_search.error');
                self.Flash.create('danger', message);
                self.$scope.validate = frontValidation;
            }
        }
    }]);

    return SellerTransactionController;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerTransactionController);


SellerTransactionController.$inject = ['$scope', '$state', 'AuthService', 'SellerTransactionService', 'Flash', 'ParamsMap', '$stateParams', 'EditableMap', '$filter', 'Validation'];

/***/ }),

/***/ "./modules/pos.transactions/SellerTransactionService.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
var _createClass = function () { function defineProperties(target, props) { for (var i = 0; i < props.length; i++) { var descriptor = props[i]; descriptor.enumerable = descriptor.enumerable || false; descriptor.configurable = true; if ("value" in descriptor) descriptor.writable = true; Object.defineProperty(target, descriptor.key, descriptor); } } return function (Constructor, protoProps, staticProps) { if (protoProps) defineProperties(Constructor.prototype, protoProps); if (staticProps) defineProperties(Constructor, staticProps); return Constructor; }; }();

function _classCallCheck(instance, Constructor) { if (!(instance instanceof Constructor)) { throw new TypeError("Cannot call a class as a function"); } }

var SellerTransactionService = function () {
    function SellerTransactionService(Restangular, EditableMap) {
        _classCallCheck(this, SellerTransactionService);

        this.Restangular = Restangular;
        this.EditableMap = EditableMap;
    }

    _createClass(SellerTransactionService, [{
        key: 'getTransactions',
        value: function getTransactions(params) {
            return this.Restangular.all('transaction').getList(params);
        }
    }, {
        key: 'postAssign',
        value: function postAssign(linked) {
            return this.Restangular.one('pos').one('transaction').one('customer').one('assign').customPOST({ assign: linked });
        }
    }, {
        key: 'getTransactionsByDocument',
        value: function getTransactionsByDocument(documentNumber) {
            return this.Restangular.one('seller').one('transaction').one(documentNumber).get();
        }
    }]);

    return SellerTransactionService;
}();

/* harmony default export */ __webpack_exports__["a"] = (SellerTransactionService);


SellerTransactionService.$inject = ['Restangular', 'EditableMap'];

/***/ }),

/***/ "./modules/pos.transactions/module.js":
/***/ (function(module, __webpack_exports__, __webpack_require__) {

"use strict";
Object.defineProperty(__webpack_exports__, "__esModule", { value: true });
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_0__SellerTransactionController__ = __webpack_require__("./modules/pos.transactions/SellerTransactionController.js");
/* harmony import */ var __WEBPACK_IMPORTED_MODULE_1__SellerTransactionService__ = __webpack_require__("./modules/pos.transactions/SellerTransactionService.js");



var MODULE_NAME = 'pos.transactions';

angular.module(MODULE_NAME, []).config(function ($stateProvider) {
    $stateProvider.state('seller.panel.transaction', {
        url: "/transaction",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-transactions-extend-top.html',
                controller: 'SellerTransactionController',
                controllerAs: 'SellerTransactionCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.transactions/templates/seller-transactions.html"),
                controller: 'SellerTransactionController',
                controllerAs: 'SellerTransactionCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-transactions-extend-bottom.html',
                controller: 'SellerTransactionController',
                controllerAs: 'SellerTransactionCtrl'
            }
        }
    }).state('seller.panel.find-transaction', {
        url: "/transaction/find",
        views: {
            'extendTop@': {
                templateUrl: 'templates/seller-find-transaction-extend-top.html',
                controller: 'SellerTransactionController',
                controllerAs: 'SellerTransactionCtrl'
            },
            'main@': {
                templateUrl: __webpack_require__("./modules/pos.transactions/templates/seller-find-transaction.html"),
                controller: 'SellerTransactionController',
                controllerAs: 'SellerTransactionCtrl'
            },
            'extendBottom@': {
                templateUrl: 'templates/seller-find-transaction-extend-bottom.html',
                controller: 'SellerTransactionController',
                controllerAs: 'SellerTransactionCtrl'
            }
        }
    });
}).run(function ($templateCache, $http) {
    var catchErrorTemplate = function catchErrorTemplate() {
        throw MODULE_NAME + ' has missing template';
    };

    $templateCache.put('templates/seller-transactions-extend-top.html', '');
    $templateCache.put('templates/seller-transactions-extend-bottom.html', '');

    $templateCache.put('templates/seller-find-transaction-extend-top.html', '');
    $templateCache.put('templates/seller-find-transaction-extend-bottom.html', '');

    $http.get('templates/seller-find-transaction.html').then(function (response) {
        $templateCache.put('templates/seller-find-transaction.html', response.data);
    }).catch(catchErrorTemplate);

    $http.get('templates/seller-transactions.html').then(function (response) {
        $templateCache.put('templates/seller-transactions.html', response.data);
    }).catch(catchErrorTemplate);
}).controller('SellerTransactionController', __WEBPACK_IMPORTED_MODULE_0__SellerTransactionController__["a" /* default */]).service('SellerTransactionService', __WEBPACK_IMPORTED_MODULE_1__SellerTransactionService__["a" /* default */]);

try {
    window.OpenLoyaltyConfig.modules.push(MODULE_NAME);
} catch (err) {
    throw MODULE_NAME + ' will not be registered';
}

/***/ }),

/***/ "./modules/pos.transactions/templates/seller-find-transaction.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-find-transaction.html";

/***/ }),

/***/ "./modules/pos.transactions/templates/seller-transactions.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "templates/seller-transactions.html";

/***/ }),

/***/ "./templates/pos.html":
/***/ (function(module, exports, __webpack_require__) {

module.exports = __webpack_require__.p + "pos/index.html";

/***/ })

},["./appPos.js"]);