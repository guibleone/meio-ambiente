<?php


function validatePost($post)
{
    $errors = array();

    if (empty($post['title'])) {
        array_push($errors, 'Titulo é requirido');
    }

    if (empty($post['body'])) {
        array_push($errors, 'Texto é requirido');
    }

    if (empty($post['topic_id'])) {
        array_push($errors, 'Selecione um tópico');
    }

    $existingPost = selectOne('posts', ['title' => $post['title']]);
    if ($existingPost) {
        if (isset($post['update-post']) && $existingPost['id'] != $post['id']) {
            array_push($errors, 'Postagem com esse titúlo já existe');
        }

        if (isset($post['add-post'])) {
            array_push($errors, 'Postagem com esse titúlo já existe');
        }
    }

    return $errors;
}
