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
  <a href="https://stopthemingmy.app">
    <img src="https://stopthemingmy.app/badge.svg"/>
  </a>
</p>

<p align="center">
  <a href="https://flathub.org/apps/details/io.github.Rirusha.Cassette">
      <img width="200" src="https://flathub.org/assets/badges/flathub-badge-en.png" alt="Download on Flathub">
  </a>
</p>

<p align="center">
    <img src="data/images/first.png" alt="Screenshot"/>
</p>

## План основных версий
* [ ] 0.2: Моя волна
* [ ] 0.3: Альбомы и исполнители
* [ ] 0.4: Поиск по сервису
* [ ] 0.5: Подкасты и книги

Все запланированные фичи можете [посмотреть в бэклоге](https://github.com/users/Rirusha/projects/2)
Описание ближайших релизов доступно [здесь](https://github.com/Rirusha/Cassette/milestones)

## Установка
### Через репозиторий …
Приложение Cassette доступно здесь:

[![Packaging status](https://repology.org/badge/vertical-allrepos/cassette.svg)](https://repology.org/project/cassette/versions)
#### ALT Sisyphus
```
sudo apt-get install cassette
```

### … или используя flatpak
Вы можете скачать по [ссылке](https://flathub.org/apps/details/io.github.Rirusha.Cassette) или используя терминал
```
flatpak install flathub io.github.Rirusha.Cassette
```

### Nightly версия
Есть возможность установки nightly версии, которая обновляется каждые сутки.

__ВНИМАНИЕ!: эта версия нестабильна.__

Для работы требуется установить org.gnome.Platform//master из gnome-nightly репозитория. Подключение репозитория описано в разделе [Для разработчиков](https://github.com/Rirusha/Cassette?tab=readme-ov-file#для-разработчиков).

Установка приложения происходит из nightly репозитория, который также нужно подключить:
```
flatpak remote-add --if-not-exists cassette-nightly https://rirusha.github.io/Cassette/index.flatpakrepo
flatpak install io.github.Rirusha.Cassette-Devel org.gnome.Platform//master
```

Для удаления репозитория нужно выполнить выполнить:
```
flatpak remote-delete cassette-nightly
```

### Сборка из исходного кода

Зависимости:
* ```gtk4```, version >= 4.12
* ```libadwaita-1```, version >= 1.4
* ```libsoup-3.0```
* ```gdk-pixbuf-2.0```
* ```json-glib-1.0```
* ```sqlite3```
* ```gee-0.8```
* ```libxml-2.0```
* ```gstreamer-1.0```
* ```webkitgtk-6.0```
* ```gio-2.0```

Утилиты для сборки:
* ```meson```
* ```ninja```
* ```cmake```
* ```blueprint-compiler```
* ```gcc```
* ```valac```
* ```pkg```
* ```appstream-utils```

Сборка:
```
meson setup builddir
ninja -C builddir test
```

Установка:
```
sudo ninja -C builddir install
```

Удаление:
```
sudo ninja -C builddir uninstall
```

## Для разработчиков
Все изменения должны нужно вносить в dev-* ветки. Коммиты в master и deploy ветки будут отклонены.

Для возможности запуска devel версии понадобиться подключить [gnome-nightly](https://wiki.gnome.org/Apps/Nightly) репозиторий:
```
flatpak remote-add --if-not-exists gnome-nightly https://nightly.gnome.org/gnome-nightly.flatpakrepo
```

И установить:
* org.gnome.Sdk//master
* org.gnome.Platform//master
* org.freedesktop.Sdk.Extension.vala-nightly//23.08beta
* org.gnome.Builder//stable
```
flatpak install org.gnome.Sdk//master org.gnome.Platform//master org.freedesktop.Sdk.Extension.vala-nightly//23.08beta org.gnome.Builder//stable
```

Для удаления репозитория нужно выполнить выполнить:
```
flatpak remote-delete gnome-nightly
```

#### … использующих Visual Studio Code
Репозиторий имеет рекоммендуемые расширения и сценарии проверки линта и запуска приложения с gdb.

## Полезные ссылки
* Телеграм-канал с девлогами: https://t.me/CassetteGNOME_Devlog
* Чат с обсуждением новых фичей и проблем: https://t.me/CassetteGNOME_Discussion
* Сообщить об ошибке: https://github.com/Rirusha/Cassette/issues

## Поддержка
Вы можете поддержать несколькими способами:
* Создать ишью с проблемой или предложением по улучшению;
* Отправить pull request с фиксом или добавлением функционала;
* Поддержать рублём (Просьба указывать в "Сообщении получателю" свой никнейм при отправлении через Тинькофф):
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

#### Cassette - неофициальный клиент, не связан с компанией Яндекс и не одобрен ей
