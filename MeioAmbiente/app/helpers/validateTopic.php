<?php

function validateTopic($topic)
{

    $errors = array();

    if (empty($topic['name'])) {
        array_push($errors, 'Nome é requirido');
    }

    $existingTopic = selectOne('topics', ['name' => $topic['name']]);
    if ($existingTopic) {
        if (isset($post['update-topic']) && $existingTopic['id'] != $topic['id']) {
            array_push($errors, 'Nome já existe');
        }

        if (isset($topic['add-topic'])) {
            array_push($errors, 'Nome já existe');
        }
    }

    return $errors;
}
