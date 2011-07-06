Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QeNM1-0005Dh-QI
	for barebox@lists.infradead.org; Wed, 06 Jul 2011 08:21:07 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.72)
	(envelope-from <sha@pengutronix.de>) id 1QeNM0-0006rU-0e
	for barebox@lists.infradead.org; Wed, 06 Jul 2011 10:21:04 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.76)
	(envelope-from <sha@pengutronix.de>) id 1QeNLz-0006vk-Uz
	for barebox@lists.infradead.org; Wed, 06 Jul 2011 10:21:03 +0200
Date: Wed, 6 Jul 2011 10:21:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20110706082103.GP6069@pengutronix.de>
MIME-Version: 1.0
Content-Disposition: inline
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2011.07.0
To: barebox@lists.infradead.org

Hi all,

Not much has happened since the last release, but here's a new one
anyway.

Sascha

Alexey Galakhov (2):
      Add support for Samsung S3C24x0 framebuffer.
      Enable display for MINI2440 board.

Franck Jullien (1):
      Disable emitting mul instructions by gcc

Jan Weitzel (1):
      PANDA: remove CONFIG_FS_RAMFS and CONFIG_FS_DEVFS

Jean-Christophe PLAGNIOL-VILLARD (5):
      at91: Support for at91rm9200: core chip & board support
      twl4030: fix typo on EXPORT_SYMBOL twl4030_reg_read and twl4030_reg_write
      menu: fix command support as module
      menu: fix command management module support
      password: fix command support as module

Juergen Kilb (1):
      Improved gpmc_nand driver to show the current eccmode.

Peter Korsgaard (2):
      sandbox: allow lseek on host files
      commands: add md5/sha1/sha256sum commands using the digest api

Sascha Hauer (3):
      Merge branch 'next'
      MCI imx-esdhc: Fix cache flush/inval for multi block support
      Release v2011.07.0

Teresa Gamez (1):
      Check return values of erase and tftp/cp

 Makefile                                           |    2 +-
 arch/arm/Makefile                                  |    1 +
 arch/arm/boards/at91rm9200ek/Makefile              |    1 +
 arch/arm/boards/at91rm9200ek/config.h              |   68 +++
 arch/arm/boards/at91rm9200ek/env/config            |   41 ++
 arch/arm/boards/at91rm9200ek/init.c                |   77 ++++
 arch/arm/boards/mini2440/Kconfig                   |   28 ++
 arch/arm/boards/mini2440/mini2440.c                |   74 ++++
 arch/arm/configs/at91rm9200ek_defconfig            |   47 +++
 arch/arm/configs/panda_xload_defconfig             |    2 +
 arch/arm/mach-at91/Kconfig                         |   27 ++
 arch/arm/mach-at91/Makefile                        |    5 +-
 arch/arm/mach-at91/at91rm9200.c                    |  245 +++++++++++
 arch/arm/mach-at91/at91rm9200_devices.c            |  276 +++++++++++++
 arch/arm/mach-at91/at91rm9200_lowlevel_init.c      |  146 +++++++
 arch/arm/mach-at91/at91rm9200_time.c               |   97 +++++
 ...lowlevel_init.S => at91sam926x_lowlevel_init.S} |    0
 arch/arm/mach-at91/include/mach/at91_st.h          |   49 +++
 arch/arm/mach-at91/include/mach/at91_tc.h          |  146 +++++++
 arch/arm/mach-at91/include/mach/at91rm9200.h       |  127 ++++++
 arch/arm/mach-at91/include/mach/at91rm9200_emac.h  |  138 +++++++
 arch/arm/mach-at91/include/mach/at91rm9200_mc.h    |  160 ++++++++
 arch/arm/mach-s3c24xx/Kconfig                      |    2 +
 arch/arm/mach-s3c24xx/include/mach/fb.h            |   59 +++
 arch/nios2/Makefile                                |    2 +-
 arch/sandbox/board/hostfile.c                      |    1 +
 commands/Kconfig                                   |   24 +-
 commands/Makefile                                  |    1 +
 commands/digest.c                                  |  183 +++++++++
 common/menu.c                                      |   17 +-
 common/password.c                                  |    7 +
 defaultenv/bin/_update                             |    6 +-
 drivers/mci/imx-esdhc.c                            |    6 +-
 drivers/mfd/twl4030.c                              |    4 +-
 drivers/mtd/nand/nand_omap_gpmc.c                  |    8 +-
 drivers/video/Kconfig                              |   13 +
 drivers/video/Makefile                             |    1 +
 drivers/video/s3c.c                                |  429 ++++++++++++++++++++
 38 files changed, 2504 insertions(+), 16 deletions(-)
 create mode 100644 arch/arm/boards/at91rm9200ek/Makefile
 create mode 100644 arch/arm/boards/at91rm9200ek/config.h
 create mode 100644 arch/arm/boards/at91rm9200ek/env/config
 create mode 100644 arch/arm/boards/at91rm9200ek/init.c
 create mode 100644 arch/arm/boards/mini2440/Kconfig
 create mode 100644 arch/arm/configs/at91rm9200ek_defconfig
 create mode 100644 arch/arm/mach-at91/at91rm9200.c
 create mode 100644 arch/arm/mach-at91/at91rm9200_devices.c
 create mode 100644 arch/arm/mach-at91/at91rm9200_lowlevel_init.c
 create mode 100644 arch/arm/mach-at91/at91rm9200_time.c
 rename arch/arm/mach-at91/{lowlevel_init.S => at91sam926x_lowlevel_init.S} (100%)
 create mode 100644 arch/arm/mach-at91/include/mach/at91_st.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91_tc.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_emac.h
 create mode 100644 arch/arm/mach-at91/include/mach/at91rm9200_mc.h
 create mode 100644 arch/arm/mach-s3c24xx/include/mach/fb.h
 create mode 100644 commands/digest.c
 create mode 100644 drivers/video/s3c.c
-- 
Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
