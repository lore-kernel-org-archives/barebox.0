Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f52.google.com ([74.125.82.52])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UEpvN-0007B0-AG
 for barebox@lists.infradead.org; Sun, 10 Mar 2013 23:45:06 +0000
Received: by mail-wg0-f52.google.com with SMTP id 12so4458774wgh.7
 for <barebox@lists.infradead.org>; Sun, 10 Mar 2013 16:45:04 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Mon, 11 Mar 2013 00:36:03 +0100
Message-Id: <1362958567-6110-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 0/4] ArchosG9: add keyboard input and new reset menu entries
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

The first three patches are generic.
The last patch in this series depends on:
"[PATCH 0/9] Add support for booting ArchosG9 from sd-card"

Vicente Bergas (4):
  gpio_keys: detect keys pressed before booting.
  twl6030: add power button as an input key
  OMAP4: add command to select next boot device priority
  ArchosG9: add keyboard input and new reset menu entries

 arch/arm/boards/archosg9/board.c                | 25 +++++++
 arch/arm/boards/archosg9/env/bin/init           | 28 ++++++++
 arch/arm/boards/archosg9/env/boot/usb-android   |  2 +-
 arch/arm/boards/archosg9/env/boot/usb-linux     |  2 +-
 arch/arm/boards/archosg9/env/menu/mainmenu      | 29 ++++++++
 arch/arm/configs/archosg9_defconfig             | 11 +--
 arch/arm/mach-omap/include/mach/omap4-silicon.h | 20 ++++++
 arch/arm/mach-omap/omap4_generic.c              | 20 ++++++
 commands/Kconfig                                |  5 ++
 commands/Makefile                               |  1 +
 commands/boot_order.c                           | 83 +++++++++++++++++++++
 drivers/input/Kconfig                           |  7 ++
 drivers/input/Makefile                          |  1 +
 drivers/input/gpio_keys.c                       |  2 +
 drivers/input/twl6030_pwrbtn.c                  | 95 +++++++++++++++++++++++++
 include/twl6030_pwrbtn.h                        | 23 ++++++
 16 files changed, 348 insertions(+), 6 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu
 create mode 100644 commands/boot_order.c
 create mode 100644 drivers/input/twl6030_pwrbtn.c
 create mode 100644 include/twl6030_pwrbtn.h

-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
