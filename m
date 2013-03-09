Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x229.google.com ([2a00:1450:400c:c00::229])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UET4A-0005Rh-9M
 for barebox@lists.infradead.org; Sat, 09 Mar 2013 23:20:39 +0000
Received: by mail-wg0-f41.google.com with SMTP id ds1so926526wgb.2
 for <barebox@lists.infradead.org>; Sat, 09 Mar 2013 15:20:36 -0800 (PST)
From: Vicente Bergas <vicencb@gmail.com>
Date: Sun, 10 Mar 2013 00:19:33 +0100
Message-Id: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
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
Subject: [PATCH 0/9] Add support for booting ArchosG9 from sd-card
To: barebox@lists.infradead.org
Cc: Vicente Bergas <vicencb@gmail.com>

 This patch series ends up adding sd-card booting support to archosg9 boards.
 First 8 patches are improvements and minor fixes found during the process.

Vicente Bergas (9):
  defaultenv-2: don't load nonexistent file
  omap4_romusb: rename omap4_usbboot_pdata to omap4_usbboot_data
  omap_uart: rename OMAP3EVM_UARTx to OMAP_UARTx
  omap_uart: add low level port serial initialization
  panda: remove unused configuration items
  omap4_romusb: allow adding usb-serial when not booting from usb
  menu: avoid errors when building submenus
  archos: add atag appender for all features
  archosg9: enable booting from sd-card

 arch/arm/boards/archosg9/archos_features.c         | 414 +++++++++++++++++++--
 arch/arm/boards/archosg9/archos_features.h         |  39 ++
 arch/arm/boards/archosg9/board.c                   |   1 -
 arch/arm/boards/archosg9/env/boot/sd-card-android  |  11 +
 arch/arm/boards/archosg9/env/boot/sd-card-linux    |  17 +
 arch/arm/boards/archosg9/env/boot/usb-android      |  11 +
 arch/arm/boards/archosg9/env/boot/usb-linux        |  17 +
 arch/arm/boards/archosg9/env/config                |   3 -
 arch/arm/boards/archosg9/env/init/automount        |  28 ++
 arch/arm/boards/archosg9/env/init/bootsource       |  11 +
 arch/arm/boards/archosg9/env/init/usbboot          |   6 -
 arch/arm/boards/at91sam9m10ihd/env/boot/android    |   2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/mmc        |   2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/net        |   2 +-
 arch/arm/boards/at91sam9m10ihd/env/boot/net-usb    |   2 +-
 arch/arm/boards/beagle/env/boot/mmc                |   2 +-
 arch/arm/boards/beagle/env/boot/nand-ubi           |   2 +-
 arch/arm/boards/beagle/env/boot/nand-ubi-dt        |   2 +-
 arch/arm/boards/beaglebone/env/boot/sd             |   2 +-
 arch/arm/boards/clep7212/env/boot/nor              |   2 +-
 .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |   2 +-
 .../boards/efika-mx-smartbook/env/boot/hd-internal |   2 +-
 .../boards/efika-mx-smartbook/env/boot/mmc-left    |   2 +-
 arch/arm/boards/guf-vincell/env/boot/nand-ubi      |   2 +-
 arch/arm/boards/karo-tx25/env/boot/nand-ubi        |   2 +-
 arch/arm/boards/omap3evm/board.c                   |   4 +-
 arch/arm/boards/omap3evm/lowlevel.c                |   4 +-
 arch/arm/boards/panda/env/boot/mmc                 |   2 +-
 arch/arm/boards/pcm037/env/boot/nand-ubi           |   2 +-
 arch/arm/boards/pcm038/env/boot/nand-ubi           |   2 +-
 arch/arm/boards/pcm043/env/boot/nand-ubi           |   2 +-
 arch/arm/boards/pcm051/env/boot/sd                 |   2 +-
 arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi   |   2 +-
 arch/arm/configs/archosg9_defconfig                |  67 ++--
 arch/arm/configs/archosg9_xload_defconfig          |  20 +-
 arch/arm/configs/panda_xload_defconfig             |   3 -
 arch/arm/mach-omap/Kconfig                         |  11 +-
 arch/arm/mach-omap/include/mach/debug_ll.h         |  27 +-
 arch/arm/mach-omap/include/mach/omap4_rom_usb.h    |   3 +
 arch/arm/mach-omap/omap4_rom_usb.c                 |  95 +++--
 defaultenv-2/base/bin/init                         |   2 +-
 defaultenv-2/base/boot/net                         |   2 +-
 defaultenv-2/base/data/boot-template               |   2 +-
 defaultenv-2/menu/menu/boot-entries-collect        |   4 +-
 defaultenv-2/menu/menu/boot-entries-edit           |   2 +-
 defaultenv-2/menu/menu/boot-entries-remove         |   2 +-
 defaultenv-2/menu/menu/boot-menu-add-entry         |   6 +-
 defaultenv-2/menu/menu/mainmenu                    |   2 +-
 drivers/serial/serial_omap4_usbboot.c              |   2 +
 49 files changed, 686 insertions(+), 170 deletions(-)
 create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-android
 create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-linux
 create mode 100644 arch/arm/boards/archosg9/env/boot/usb-android
 create mode 100644 arch/arm/boards/archosg9/env/boot/usb-linux
 delete mode 100644 arch/arm/boards/archosg9/env/config
 create mode 100644 arch/arm/boards/archosg9/env/init/automount
 create mode 100644 arch/arm/boards/archosg9/env/init/bootsource
 delete mode 100644 arch/arm/boards/archosg9/env/init/usbboot

-- 
1.8.1.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
