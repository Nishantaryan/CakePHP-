<?php
/**
 * @var \App\View\AppView $this
 * @var \App\Model\Entity\RolesUser $rolesUser
 */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('Edit Roles User'), ['action' => 'edit', $rolesUser->id]) ?> </li>
        <li><?= $this->Form->postLink(__('Delete Roles User'), ['action' => 'delete', $rolesUser->id], ['confirm' => __('Are you sure you want to delete # {0}?', $rolesUser->id)]) ?> </li>
        <li><?= $this->Html->link(__('List Roles Users'), ['action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Roles User'), ['action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Roles'), ['controller' => 'Roles', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New Role'), ['controller' => 'Roles', 'action' => 'add']) ?> </li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?> </li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?> </li>
    </ul>
</nav>
<div class="rolesUsers view large-9 medium-8 columns content">
    <h3><?= h($rolesUser->id) ?></h3>
    <table class="vertical-table">
        <tr>
            <th scope="row"><?= __('Role') ?></th>
            <td><?= $rolesUser->has('role') ? $this->Html->link($rolesUser->role->name, ['controller' => 'Roles', 'action' => 'view', $rolesUser->role->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('User') ?></th>
            <td><?= $rolesUser->has('user') ? $this->Html->link($rolesUser->user->id, ['controller' => 'Users', 'action' => 'view', $rolesUser->user->id]) : '' ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Id') ?></th>
            <td><?= $this->Number->format($rolesUser->id) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Created') ?></th>
            <td><?= h($rolesUser->created) ?></td>
        </tr>
        <tr>
            <th scope="row"><?= __('Modified') ?></th>
            <td><?= h($rolesUser->modified) ?></td>
        </tr>
    </table>
</div>
