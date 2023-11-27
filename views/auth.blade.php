@extends('base')

@section('title', 'WorkSpace')

@push('styles')
  <link rel="stylesheet" href="/public/css/authentication.css">
@endpush

@push('scripts')
  <script defer src="/public/js/form.js"></script>
@endpush

@section('content')
  <section class="container__all">
    <section class="back__box">
      <section class="back__box-login">
        <h3>
          ¿Ya tienes cuenta?
        </h3>
        <p>
          Inicia sesión para entrar en la página
        </p>
        <button id="btn__login">
          Iniciar sesión
        </button>
      </section>

      <section class="back__box-register">
        <h3>
          ¿Aún no tienes una cuenta?
        </h3>
        <p>
          ¡Regístrate!
        </p>
        <button id="btn__register">Registrarme</button>
      </section>
    </section>

    <section class="container__login-register">
      <form action="/login" class="form__login" method="POST">
        <h2>Iniciar sesión</h2>
      
        <input type="text" placeholder="Nombre de usuario" name="username">
        <input type="password" placeholder="Contraseña" name="password">

        <button>Iniciar sesión</button>
      </form>

      <form action="/register" class="form__register" method="POST">
        <h2>Regístrarse</h2>

        <input type="text" id="usuario" name="username" placeholder="Nombre de Usuario" required>
        <input type="password" id="contrasena" name="password" placeholder="Contraseña" required>

        <label for="role">Rol:</label>
        <select name="role" id="role" required>
          <option value="1">Administrador</option>
          <option value="2">Usuario</option>
        </select>

        <label for="">
          Departamento:
        </label>

        <select name="department" id="">
          <option value="1">Ventas</option>
          <option value="2">Almacen</option>
          <option value="3">Limpieza</option>
        </select>

        <input type="email" name="email" id="email" placeholder="Correo Electrónico" required>
        <input placeholder="Teléfono" type="text" name="phone" id="phone" required>
        <input placeholder="Salario" type="text" name="salary" id="salary" required>

        <label for="">Estado:</label>

        <select name="state" id="state">
          <option value="1">Aguascalientes</option>
          <option value="2">Baja california</option>
          <option value="3">Campeche</option>
          <option value="4">Coahuila</option>
          <option value="5">Colima</option>
          <option value="6">Jalisco</option>
          <option value="7">México</option>
          <option value="8">Nayarit</option>
        </select>

        <label for="">Ciudad:</label>

        <select name="city" id="city">
          <option value="1">La Paz</option>
          <option value="2">Baja California</option>
          <option value="3">Guadalajara</option>
          <option value="4">Morelia</option>
          <option value="5">Tepic</option>
          <option value="6">Puerto Vallarta</option>
          <option value="7">San José</option>
          <option value="8">Porvenir</option>
        </select>

        <select name="neighborhood" id="neighborhood">
          <option value="1">Juárez</option>
          <option value="2">Roma</option>
          <option value="3">Polanco</option>
          <option value="4">Tlatelolco</option>
          <option value="5">Coyoacán</option>
          <option value="6">Narvarte</option>
          <option value="7">Tlalpan</option>
          <option value="8">Condesa</option>
        </select>

        <input type="text" name="street" id="street" placeholder="Calle" required>

        <input type="text" name="homeNumber" id="homeNumber" required>

        <label for="">
          Fecha de contratación:
        </label>

        <input type="date" name="hireDate" id="hireDate" placeholder="Fecha contratación">

        <label for="">
          Puesto:
        </label>

        <select name="employee_role" id="employee_role">
          <option value="1">Gerente</option>
          <option value="2">Empleador</option>
        </select>

        <button>
          Registrarse
        </button>
      </form>
    </section>

  </section>
@endsection