<h1 align="center">
  <img src="data/icons/hicolor/scalable/apps/io.github.Rirusha.Cassette.svg" alt="Cassette"/>
  <br/>
  Cassette
</h1>

<p align="center">
  GTK4/Adwaita приложение, которое позволит вам использовать Я.Музыку на Linux.
</p>

<br/>

<p align="center">
  <a href="https://flathub.org/apps/details/io.github.Rirusha.Cassette">
    <img width="200" src="https://flathub.org/assets/badges/flathub-badge-en.png" alt="Download on Flathub">
  </a>
  <br>
  <br>
  <a href="https://stopthemingmy.app">
    <img src="https://stopthemingmy.app/badge.svg"/>
  </a>
  <br>
  <a href="https://t.me/CassetteGNOME_Devlog">
    <img alt="tg" src="https://img.shields.io/badge/Telegram-Channel-blue?style=flat&logo=telegram&label=%20&labelColor=blue">
  </a>
  <br>
  <a href="https://t.me/CassetteGNOME_Discussion">
    <img alt="tg" src="https://img.shields.io/badge/Telegram-Chat-blue?style=flat&logo=telegram&label=%20&labelColor=blue">
  </a>
</p>

<p align="center">
    <img src="data/images/1-liked.png" alt="Screenshot"/>
</p>


## План основных версий
[![GitHub milestone details](https://img.shields.io/github/milestones/progress-percent/Rirusha/Cassette/2?label=0.2.0%20-%20%D0%9C%D0%BE%D1%8F%20%D0%B2%D0%BE%D0%BB%D0%BD%D0%B0)](https://github.com/Rirusha/Cassette/milestone/2) \
[![GitHub milestone details](https://img.shields.io/github/milestones/progress-percent/Rirusha/Cassette/5?label=0.2.1%20-%20%D0%A3%D0%BB%D1%83%D1%87%D1%88%D0%B5%D0%BD%D0%B8%D0%B5%20%D0%B1%D1%8D%D0%BA%D0%B5%D0%BD%D0%B4%D0%B0%20%D0%B8%20%D0%BE%D0%BF%D1%82%D0%B8%D0%BC%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F)](https://github.com/Rirusha/Cassette/milestone/5) \
[![GitHub milestone details](https://img.shields.io/github/milestones/progress-percent/Rirusha/Cassette/4?label=0.2.2%20-%20%D0%A0%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%D0%BD%D0%B0%D0%B4%20%D0%B0%D0%B4%D0%B0%D0%BF%D1%82%D0%B8%D0%B2%D0%BD%D0%BE%D1%81%D1%82%D1%8C%D1%8E)](https://github.com/Rirusha/Cassette/milestone/4) \
[![GitHub milestone details](https://img.shields.io/github/milestones/progress-percent/Rirusha/Cassette/6?label=0.3.0%20-%20%D0%9F%D0%BE%D0%BA%D0%B0%D0%B7%20%D0%B0%D0%BB%D1%8C%D0%B1%D0%BE%D0%BC%D0%BE%D0%B2%20%D0%B8%20%D0%B8%D1%81%D0%BF%D0%BE%D0%BB%D0%BD%D0%B8%D1%82%D0%B5%D0%BB%D0%B5%D0%B9)](https://github.com/Rirusha/Cassette/milestone/6) \
[![GitHub milestone details](https://img.shields.io/github/milestones/progress-percent/Rirusha/Cassette/7?label=0.4.0%20-%20%D0%A0%D0%B5%D0%B0%D0%BB%D0%B8%D0%B7%D0%B0%D1%86%D0%B8%D1%8F%20%D0%BF%D0%BE%D0%B8%D1%81%D0%BA%D0%B0%20%D0%BF%D0%BE%20%D1%81%D0%B5%D1%80%D0%B2%D0%B8%D1%81%D1%83)](https://github.com/Rirusha/Cassette/milestone/7)

Все запланированные фичи можете [посмотреть в бэклоге](https://github.com/users/Rirusha/projects/2)


## Установка из репозитория

Приложение Cassette доступно здесь:

[![Packaging status](https://repology.org/badge/vertical-allrepos/cassette.svg)](https://repology.org/project/cassette/versions)

### ALT Sisyphus
```shell
su -
apt-get install cassette
```

### Arch Linux

> [!NOTE]
> Большинство AUR Helper'ов поддерживает Pacman-style флаги, например, yay.

#### yay
```shell
yay -S cassette
```

#### pamac
```shell
pamac install cassette
```


## Установка c помощью Flatpak

Вы можете скачать по [ссылке](https://flathub.org/apps/details/io.github.Rirusha.Cassette) или используя терминал

```shell
flatpak install io.github.Rirusha.Cassette
```


## Nightly версия

> [!WARNING]
> Данная версия собирается и обновляется при каждом изменение в коде, поэтому может оказаться нестабильной.

### Flatpak
<!-- #### Подключаем репозиторий `gnome-nightly` и устанавливаем GNOME Platform:
```shell
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
flatpak install gnome-nightly org.gnome.Platform//master
``` -->

#### Подключаем Nightly репозиторий и устанавливаем приложение:
```shell
flatpak remote-add --if-not-exists cassette-nightly https://rirusha.github.io/Cassette/index.flatpakrepo
flatpak install cassette-nightly io.github.Rirusha.Cassette-Devel
```

#### Для удаления репозитория нужно выполнить:
```shell
flatpak remote-delete cassette-nightly
```

### Arch Linux

> [!NOTE]
> При необходимости, в arch-подобных системах можно установить Nightly версию из репозитория AUR. 
> По возможности рекомендуется использовать Flatpak версию.
>
> Большинство AUR Helper'ов поддерживает Pacman-style флаги, например, yay.

#### yay
```shell
yay -S cassette-dev
```

#### pamac
```shell
pamac install cassette-dev
```

## Установка в Windows

Способы установки приложения в Windows описаны [здесь](docs/INSTALLATION_ON_WINDOWS.md).


## Сборка из исходного кода

#### Зависимости:
* `gtk4`, version >= 4.14
* `libadwaita-1`, version >= 1.5
* `libsoup-3.0`
* `gdk-pixbuf-2.0`
* `json-glib-1.0`
* `sqlite3`
* `gee-0.8`
* `libxml-2.0`
* `gstreamer-1.0`
* `webkitgtk-6.0`
* `gio-2.0`, version: '>= 2.72'

#### Утилиты для сборки:
* `meson`
* `ninja`
* `cmake`
* `blueprint-compiler`
* `gcc`
* `valac`
* `pkg`
* `appstream-utils`

### Сборка:

#### latest
> [!NOTE]
> В данной версии будут недоступны нестабильные функции, находящиеся в разработке.
```shell
meson setup builddir
```

#### devel
> [!WARNING]
> В данной версии будут доступны все devel функции, приложение может работать нестабильно.
```shell
meson setup builddir
meson configure -Dprofile=development builddir
```

### Тестирование
```shell
ninja -C builddir test
```

### Установка:
```shell
sudo ninja -C builddir install
```

### Удаление:
```shell
sudo ninja -C builddir uninstall
```


## Решение проблем

Решение известных проблем описано на странице Cassette на [ALT Gnome Wiki](https://alt-gnome.wiki/cassette.html#решение-проблем).

Также загляните во вкладку [issues](https://github.com/Rirusha/Cassette/issues), если вашей проблемы нет и там, расскажите о ней, заведя новый [issue](https://github.com/Rirusha/Cassette/issues/new).


## Для разработчиков

### Использование Visual Studio Code
Репозиторий имеет рекомендуемые расширения для проверки и запуска приложения с gdb.

### Зависимости

<!-- #### репозиторий [gnome-nightly](https://wiki.gnome.org/Apps/Nightly):
```shell
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
``` -->

#### Для запуска
`org.gnome.Platform//46`
```shell
flatpak install org.gnome.Platform//46 
```

#### Для сборки
`org.gnome.Sdk//46` \
`org.freedesktop.Sdk.Extension.vala//23.08`
```shell
flatpak install org.gnome.Sdk//46 org.freedesktop.Sdk.Extension.vala//23.08
```


## Поддержка
Вы можете поддержать несколькими способами:
- Создать ишью с проблемой или предложением по улучшению
- Отправить pull request с фиксом или добавлением функционала
- Поддержать рублём (Просьба указывать в "Сообщении получателю" свой никнейм при отправлении через Тинькофф):

  <p>
    <a href="https://www.tinkoff.ru/cf/21GCxLuFuE9">
      <img height="36" src="https://github.com/Rirusha/Cassette/assets/95986183/87496207-aa1c-40fc-a511-57bac188bc72" alt="Tinkoff">
    </a>
  </p>
  <p>
    <a href="https://boosty.to/rirusha/donate">
      <img height="36" src="https://github.com/Rirusha/Cassette/assets/95986183/313ee5af-d374-4f95-af62-9445d1c27347" alt="boosty.to">
    </a>
  </p>


## Благодарность
Спасибо [MarshalX](https://github.com/MarshalX). Библиотека [yandex-music-api](https://github.com/MarshalX/yandex-music-api) была использована в качестве документации к api.

> [!NOTE]
Cassette - неофициальный клиент, не связан с компанией Яндекс и не одобрен ей.
