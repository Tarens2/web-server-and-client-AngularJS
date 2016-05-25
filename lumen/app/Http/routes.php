<?php
 
/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/
 $app->get('/', function () use ($app) {
    return $app->version();
});
/*
$app->group(['namespace' => 'App\Http\Controllers'] , function($app){
    $api = 'api';
    $app->get($api.'/', ['uses' => 'MemberController@getArticles', 'as' => 'allArticles']);
    $app->get($api.'/member/{id}', ['uses' => 'ArticleController@getArticle', 'as' => 'singleArticle']);
    $app->post($api.'/member', ['uses' => 'ArticleController@saveArticle', 'as' => 'saveArticle']);
    $app->put($api.'/member/{id}', ['uses' => 'ArticleController@updateArticle', 'as' => 'updateArticle']);
    $app->delete($api.'/member/{id}', ['uses' => 'ArticleController@deleteArticle', 'as' => 'deleteArticle']);
});*/
$app->get('api/members','MemberController@getMembers');
$app->get('api/member/{id}','MemberController@getMember');
$app->post('api/member','MemberController@saveMember');
$app->put('api/member/{id}','MemberController@updateMember');
$app->delete('api/member/{id}','MemberController@deleteMember');
?>