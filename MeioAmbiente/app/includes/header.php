<header>
  <a href="<?php echo BASE_URL . '/index.php' ?>" class="logo">
    <h1 class="logo-text">Meio Ambiente</h1>
  </a>
  <i class="fa fa-bars menu-toggle"></i>
  <ul class="nav">
    <li><a href="<?php echo BASE_URL . '/index.php' ?>">Inicial</a></li>
    <li><a href="<?php echo BASE_URL . '/sobre.php' ?>">Sobre</a></li>

    <?php if (isset($_SESSION['id'])) : ?>
      <li>
        <a href="#">
          <i class="fa fa-user"></i>
          <?php echo $_SESSION['username']; ?>
          <i class="fa fa-chevron-down" style="font-size: .8em;"></i>
        </a>
        <ul>
          <?php if ($_SESSION['admin']) : ?>
            <li><a href="<?php echo BASE_URL . '/admin/dashboard.php' ?>">Gerenciar</a></li>
          <?php endif; ?>
          <li><a href="<?php echo BASE_URL . '/logout.php' ?>" class="logout">Sair</a></li>
        </ul>
      </li>
    <?php else : ?>
      <li><a href="<?php echo BASE_URL . '/register.php' ?>">Cadastro</a></li>
      <li><a href="<?php echo BASE_URL . '/login.php' ?>">Login</a></li>
    <?php endif; ?>
  </ul>
</header>