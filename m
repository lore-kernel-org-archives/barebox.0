Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x229.google.com ([2a00:1450:400c:c05::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1Zfbgr-0003UD-3U
 for barebox@lists.infradead.org; Fri, 25 Sep 2015 22:42:06 +0000
Received: by wicge5 with SMTP id ge5so38725698wic.0
 for <barebox@lists.infradead.org>; Fri, 25 Sep 2015 15:41:43 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Fri, 25 Sep 2015 23:41:00 +0100
Message-Id: <1443220863-24355-1-git-send-email-vicencb@gmail.com>
In-Reply-To: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
References: <20150924115829.62eef721bbcd7eeb0c9852aa@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 0/3] ArchosG9 updates.
To: Antony Pavlov <antonynpavlov@gmail.com>
Cc: barebox@lists.infradead.org, Vicente Bergas <vicencb@gmail.com>

Hello,
This series of patches contain updates to the ArchosG9 code.
  The first one is just regenerating the *_defconfig with "make savedefconfig"
  The second fixes the issue spotted by Antony Pavlov.
  The third adds the display. I had that change forgotten somewhere and
    thought that it would be better to share it.

By the way, while checking the patches with "scripts/checkpatch.pl" the script
itself reported several 'Unescaped left brace in regex is deprecated' warnings.
The perl version is v5.22.0.

Regards,
  Vicente.

Vicente Bergas (3):
  archosg9: re-generate defconfigs with "make  savedefconfig"
  archosg9: Use defaultenv-2-menu
  archosg9: add display

 arch/arm/boards/archosg9/board.c                   | 111 +++++++++++++++++++--
 arch/arm/boards/archosg9/env/bin/init              |  28 ------
 arch/arm/boards/archosg9/env/init/automount        |  28 ------
 arch/arm/boards/archosg9/env/init/automount2       |   7 ++
 arch/arm/boards/archosg9/env/init/splash           |   5 +
 .../boards/archosg9/env/menu/11-boot-flash/action  |   4 +
 .../boards/archosg9/env/menu/11-boot-flash/title   |   1 +
 .../arm/boards/archosg9/env/menu/12-boot-sd/action |   4 +
 arch/arm/boards/archosg9/env/menu/12-boot-sd/title |   1 +
 .../boards/archosg9/env/menu/13-boot-usb/action    |   4 +
 .../arm/boards/archosg9/env/menu/13-boot-usb/title |   1 +
 arch/arm/boards/archosg9/env/menu/mainmenu         |  25 -----
 arch/arm/boards/archosg9/mux.c                     |  20 ++--
 arch/arm/configs/archosg9_defconfig                |  68 +++++++------
 arch/arm/configs/archosg9_xload_defconfig          |   4 -
 15 files changed, 174 insertions(+), 137 deletions(-)
 delete mode 100644 arch/arm/boards/archosg9/env/bin/init
 delete mode 100644 arch/arm/boards/archosg9/env/init/automount
 create mode 100644 arch/arm/boards/archosg9/env/init/automount2
 create mode 100644 arch/arm/boards/archosg9/env/init/splash
 create mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/title
 create mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/title
 create mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/action
 create mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/title
 delete mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu

-- 
2.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
