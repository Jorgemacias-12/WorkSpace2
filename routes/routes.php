<?php

return [
  '' => [
    'GET' => [
      'controller' => 'AuthController',
      'action' => 'index',
      'method' => 'GET'
    ]
  ],
  'register' => [
    'POST' => [
      'controller' => 'AuthController',
      'action' => 'doRegister',
      'method' => 'POST'
    ]
  ],
  'login' => [
    'POST' => [
      'controller' => 'AuthController',
      'action' => 'doLogin',
      'method' => 'POST'
    ]
  ]
];
