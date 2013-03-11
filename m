Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UFADU-0006jI-Dm
 for barebox@lists.infradead.org; Mon, 11 Mar 2013 21:25:09 +0000
Date: Mon, 11 Mar 2013 22:25:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20130311212506.GM1906@pengutronix.de>
References: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1362871182-25726-1-git-send-email-vicencb@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: Re: [PATCH 0/9] Add support for booting ArchosG9 from sd-card
To: Vicente Bergas <vicencb@gmail.com>
Cc: barebox@lists.infradead.org

Hi Vicente,

On Sun, Mar 10, 2013 at 12:19:33AM +0100, Vicente Bergas wrote:
>  This patch series ends up adding sd-card booting support to archosg9 boards.
>  First 8 patches are improvements and minor fixes found during the process.

I applied most patches from thsi series, the rest needs some updates.

Thanks
 Sascha

> 
> Vicente Bergas (9):
>   defaultenv-2: don't load nonexistent file
>   omap4_romusb: rename omap4_usbboot_pdata to omap4_usbboot_data
>   omap_uart: rename OMAP3EVM_UARTx to OMAP_UARTx
>   omap_uart: add low level port serial initialization
>   panda: remove unused configuration items
>   omap4_romusb: allow adding usb-serial when not booting from usb
>   menu: avoid errors when building submenus
>   archos: add atag appender for all features
>   archosg9: enable booting from sd-card
> 
>  arch/arm/boards/archosg9/archos_features.c         | 414 +++++++++++++++++++--
>  arch/arm/boards/archosg9/archos_features.h         |  39 ++
>  arch/arm/boards/archosg9/board.c                   |   1 -
>  arch/arm/boards/archosg9/env/boot/sd-card-android  |  11 +
>  arch/arm/boards/archosg9/env/boot/sd-card-linux    |  17 +
>  arch/arm/boards/archosg9/env/boot/usb-android      |  11 +
>  arch/arm/boards/archosg9/env/boot/usb-linux        |  17 +
>  arch/arm/boards/archosg9/env/config                |   3 -
>  arch/arm/boards/archosg9/env/init/automount        |  28 ++
>  arch/arm/boards/archosg9/env/init/bootsource       |  11 +
>  arch/arm/boards/archosg9/env/init/usbboot          |   6 -
>  arch/arm/boards/at91sam9m10ihd/env/boot/android    |   2 +-
>  arch/arm/boards/at91sam9m10ihd/env/boot/mmc        |   2 +-
>  arch/arm/boards/at91sam9m10ihd/env/boot/net        |   2 +-
>  arch/arm/boards/at91sam9m10ihd/env/boot/net-usb    |   2 +-
>  arch/arm/boards/beagle/env/boot/mmc                |   2 +-
>  arch/arm/boards/beagle/env/boot/nand-ubi           |   2 +-
>  arch/arm/boards/beagle/env/boot/nand-ubi-dt        |   2 +-
>  arch/arm/boards/beaglebone/env/boot/sd             |   2 +-
>  arch/arm/boards/clep7212/env/boot/nor              |   2 +-
>  .../boards/crystalfontz-cfa10036/env/boot/mmc-ext3 |   2 +-
>  .../boards/efika-mx-smartbook/env/boot/hd-internal |   2 +-
>  .../boards/efika-mx-smartbook/env/boot/mmc-left    |   2 +-
>  arch/arm/boards/guf-vincell/env/boot/nand-ubi      |   2 +-
>  arch/arm/boards/karo-tx25/env/boot/nand-ubi        |   2 +-
>  arch/arm/boards/omap3evm/board.c                   |   4 +-
>  arch/arm/boards/omap3evm/lowlevel.c                |   4 +-
>  arch/arm/boards/panda/env/boot/mmc                 |   2 +-
>  arch/arm/boards/pcm037/env/boot/nand-ubi           |   2 +-
>  arch/arm/boards/pcm038/env/boot/nand-ubi           |   2 +-
>  arch/arm/boards/pcm043/env/boot/nand-ubi           |   2 +-
>  arch/arm/boards/pcm051/env/boot/sd                 |   2 +-
>  arch/arm/boards/telit-evk-pro3/env/boot/nand-ubi   |   2 +-
>  arch/arm/configs/archosg9_defconfig                |  67 ++--
>  arch/arm/configs/archosg9_xload_defconfig          |  20 +-
>  arch/arm/configs/panda_xload_defconfig             |   3 -
>  arch/arm/mach-omap/Kconfig                         |  11 +-
>  arch/arm/mach-omap/include/mach/debug_ll.h         |  27 +-
>  arch/arm/mach-omap/include/mach/omap4_rom_usb.h    |   3 +
>  arch/arm/mach-omap/omap4_rom_usb.c                 |  95 +++--
>  defaultenv-2/base/bin/init                         |   2 +-
>  defaultenv-2/base/boot/net                         |   2 +-
>  defaultenv-2/base/data/boot-template               |   2 +-
>  defaultenv-2/menu/menu/boot-entries-collect        |   4 +-
>  defaultenv-2/menu/menu/boot-entries-edit           |   2 +-
>  defaultenv-2/menu/menu/boot-entries-remove         |   2 +-
>  defaultenv-2/menu/menu/boot-menu-add-entry         |   6 +-
>  defaultenv-2/menu/menu/mainmenu                    |   2 +-
>  drivers/serial/serial_omap4_usbboot.c              |   2 +
>  49 files changed, 686 insertions(+), 170 deletions(-)
>  create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-android
>  create mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-linux
>  create mode 100644 arch/arm/boards/archosg9/env/boot/usb-android
>  create mode 100644 arch/arm/boards/archosg9/env/boot/usb-linux
>  delete mode 100644 arch/arm/boards/archosg9/env/config
>  create mode 100644 arch/arm/boards/archosg9/env/init/automount
>  create mode 100644 arch/arm/boards/archosg9/env/init/bootsource
>  delete mode 100644 arch/arm/boards/archosg9/env/init/usbboot
> 
> -- 
> 1.8.1.5
> 
> 
> _______________________________________________
> barebox mailing list
> barebox@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/barebox
> 

-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
