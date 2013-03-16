Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x231.google.com ([2a00:1450:400c:c05::231])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UH05i-0007S4-3i
 for barebox@lists.infradead.org; Sat, 16 Mar 2013 23:00:42 +0000
Received: by mail-wi0-f177.google.com with SMTP id hm14so1546593wib.16
 for <barebox@lists.infradead.org>; Sat, 16 Mar 2013 16:00:40 -0700 (PDT)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sat, 16 Mar 2013 23:59:36 +0100
Message-Id: <1363474782-21973-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 0/6] ArchosG9: add keyboard input and new reset menu entries
 (v2)
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

This is the second version of this patch series, it includes all feedback received
which is greatly appreciated.

Vicente Bergas (6):
  OMAP4: check for usb availability at device registration
  ArchosG9: zero all features before setting them
  gpio_keys: detect keys pressed before booting
  OMAP4: add command to select next boot device priority
  ArchosG9: add keyboard input and new reset menu entries
  menu: avoid errors when building submenus

 arch/arm/boards/archosg9/archos_features.c         | 58 +++++------------
 arch/arm/boards/archosg9/board.c                   | 28 +++++++-
 arch/arm/boards/archosg9/env/bin/init              | 28 ++++++++
 arch/arm/boards/archosg9/env/boot/usb-android      |  2 +-
 arch/arm/boards/archosg9/env/boot/usb-linux        |  2 +-
 arch/arm/boards/archosg9/env/menu/mainmenu         | 25 ++++++++
 arch/arm/boards/at91sam9m10ihd/env/boot/android    |  2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/mmc        |  2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/net        |  2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb    |  2 +-
 arch/arm/boards/beagle/env/boot/mmc                |  2 +-
 arch/arm/boards/beagle/env/boot/nand-ubi           |  2 +-
 arch/arm/boards/beagle/env/boot/nand-ubi-dt        |  2 +-
 arch/arm/boards/beaglebone/env/boot/sd             |  2 +-
 arch/arm/boards/clep7212/env/boot/nor              |  2 +-
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |  2 +-
 .../boards/efika-mx-smartbook/env/boot/hd-internal |  2 +-
 .../boards/efika-mx-smartbook/env/boot/mmc-left    |  2 +-
 arch/arm/boards/guf-vincell/env/boot/nand-ubi      |  2 +-
 arch/arm/boards/karo-tx25/env/boot/nand-ubi        |  2 +-
 arch/arm/boards/panda/env/boot/mmc                 |  2 +-
 arch/arm/boards/pcm037/env/boot/nand-ubi           |  2 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi           |  2 +-
 arch/arm/boards/pcm043/env/boot/nand-ubi           |  2 +-
 arch/arm/boards/pcm051/env/boot/sd                 |  2 +-
 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi   |  2 +-
 arch/arm/configs/archosg9_defconfig                | 11 ++--
 arch/arm/mach-omap/include/mach/omap4-silicon.h    | 20 ++++++
 arch/arm/mach-omap/omap4_generic.c                 | 20 ++++++
 commands/Kconfig                                   |  5 ++
 commands/Makefile                                  |  1 +
 commands/boot_order.c                              | 75 ++++++++++++++++++++++
 defaultenv-2/base/boot/net                         |  2 +-
 defaultenv-2/base/data/boot-template               |  2 +-
 defaultenv-2/menu/menu/boot-entries-collect        |  4 +-
 defaultenv-2/menu/menu/boot-entries-edit           |  2 +-
 defaultenv-2/menu/menu/boot-entries-remove         |  2 +-
 defaultenv-2/menu/menu/boot-menu-add-entry         |  6 +-
 defaultenv-2/menu/menu/mainmenu                    |  2 +-
 drivers/input/gpio_keys.c                          |  2 +
 drivers/serial/serial_omap4_usbboot.c              |  2 -
 41 files changed, 258 insertions(+), 81 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/bin/init
 create mode 100644 arch/arm/boards/archosg9/env/menu/mainmenu
 create mode 100644 commands/boot_order.c

-- 
1.8.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
