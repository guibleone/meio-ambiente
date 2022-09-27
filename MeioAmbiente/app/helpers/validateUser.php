<?php

function validateUser($user)
{
    $errors = array();

    if (empty($user['username'])) {
        array_push($errors, 'Usuário é requirido');
    }

    if (empty($user['email'])) {
        array_push($errors, 'Email é requirido');
    }

    if (empty($user['password'])) {
        array_push($errors, 'Senha é requirido');
    }

    if ($user['passwordConf'] !== $user['password']) {
        array_push($errors, 'Senha não são iguais');
    }

    $existingUser = selectOne('users', ['email' => $user['email']]);
    if ($existingUser) {
        if (isset($user['update-user']) && $existingUser['id'] != $user['id']) {
            array_push($errors, 'Email já existe');
        }

        if (isset($user['create-admin'])) {
            array_push($errors, 'Email já existe');
        }
    }

    return $errors;
}


function validateLogin($user)
{
    $errors = array();

    if (empty($user['username'])) {
        array_push($errors, 'Usuário é requirido');
    }

    if (empty($user['password'])) {
        array_push($errors, 'Senha é requirido');
    }

    return $errors;
}
