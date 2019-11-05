<?php
namespace App\Controller\Api;

use App\Controller\Api\AppController;

class UsersController extends AppController
{
    

    public $paginate = [
        'page' => 1,
        'limit' => 5,
        'maxLimit' => 15,
        'sortWhitelist' => [
            'id', 'name'
        ]
    ];


    public function index(){
        $this->Crud->on('beforePaginate', function(\Cake\Event\Event $event) 
        {
            $this->paginate['contain'] = ['Roles'];
        });
        return $this->Crud->execute();
     }

}