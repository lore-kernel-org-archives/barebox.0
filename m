Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Oq9mN-0007Vy-QI
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 19:12:32 +0000
Received: from octopus.hi.pengutronix.de ([2001:6f8:1178:2:215:17ff:fe12:23b0])
	by metis.ext.pengutronix.de with esmtp (Exim 4.71)
	(envelope-from <sha@pengutronix.de>) id 1Oq9mL-0004wD-VA
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 21:12:25 +0200
Received: from sha by octopus.hi.pengutronix.de with local (Exim 4.69)
	(envelope-from <sha@pengutronix.de>) id 1Oq9mL-00074q-U6
	for barebox@lists.infradead.org; Mon, 30 Aug 2010 21:12:25 +0200
Date: Mon, 30 Aug 2010 21:12:25 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Message-ID: <20100830191225.GN1473@pengutronix.de>
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
Content-Type: text/plain; charset="iso-8859-15"
Content-Transfer-Encoding: quoted-printable
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: v2010.09.0
To: barebox@lists.infradead.org

Hi all,

We have a new release: v2010.09.0. See the changelog attached to see
what happened since the last release. It's the first time a release is
out before the next month begins, that's because I'm off for holiday for
the next two weeks. I probably won't be able to answer any mails during
this time.

Have fun
 Sascha


The following changes since commit 68d0d31d41d9034a6246991ee1d486dc805ff479:

  Release v2010.08.0 (2010-08-03 09:30:32 +0200)

are available in the git repository at:
  git://git.pengutronix.de/git/barebox.git ..BRANCH.NOT.VERIFIED..

Baruch Siach (3):
      fs: add basic sanity check before accessing the files array
      md: fix help text
      cp: fix help text

Eric B=E9nard (2):
      eukrea_cpuimx35: fix board support
      eukrea_cpuimx25: update default config

Jean-Christophe PLAGNIOL-VILLARD (3):
      barebox_default_env: fix out of tree build
      move boards to arch/<architecure>/boards
      drivers/usb: regorganisation

Marc Kleine-Budde (3):
      defaultenv: fix physmap-flash device name
      defaultenv: fix adding of nand_parts
      defaultenv: create /dev/ram0.kernel at offset 8M

Michael Grzeschik (2):
      beagle: add missing nand headerfile
      omap clock: bugfix remove silicon offset sil_index

Nishanth Menon (1):
      omap3: add arch specific dcache invalidate

Sascha Hauer (23):
      omap: remove unused defines and corresponding kconfig options
      omap nand: cleanup
      beagle: Whitespace cleanup
      Add Garz+Fricke Neso support
      Add Garz+Fricke Neso defconfig
      crc32: activate crc32_no_comp (needed for jffs2 and UBI)
      move drivers/nand to drivers/mtd/nand
      add rbtree support (needed for ubi)
      add partition mtd support
      cfi_flash: Do not typedef struct flash_info
      cfi_flash: Do not print debug info while erasing
      cfi_flash: Add mtd partition support for UBI
      devfs: only check for ioctl function when needed
      include stuff missing for ubi
      add ubi support from u-boot. Just enough to compile and scan
      barebox ubi changes
      Add UBI commands: ubiattach, ubidetach, ubimkvol, ubirmvol
      Merge remote branch 'origin/guf-neso' into next
      Merge remote branch 'origin/omap' into next
      atmel_nand: fix comment where this code is derived from
      Merge branch 'next'
      pcm043: remove unused defines
      Release v2010.09.0

 Documentation/barebox-main.dox                     |    4 +-
 Makefile                                           |    8 +-
 TODO                                               |    3 +-
 arch/arm/Makefile                                  |    3 +-
 {board =3D> arch/arm/boards}/a9m2410/Makefile        |    0
 {board =3D> arch/arm/boards}/a9m2410/a9m2410.c       |    0
 {board =3D> arch/arm/boards}/a9m2410/config.h        |    0
 {board =3D> arch/arm/boards}/a9m2410/env/bin/_update |    0
 {board =3D> arch/arm/boards}/a9m2410/env/bin/boot    |    0
 .../arm/boards}/a9m2410/env/bin/hush_hack          |    0
 {board =3D> arch/arm/boards}/a9m2410/env/bin/init    |    0
 .../arm/boards}/a9m2410/env/bin/update_kernel      |    0
 .../arm/boards}/a9m2410/env/bin/update_root        |    0
 {board =3D> arch/arm/boards}/a9m2410/env/config      |    0
 {board =3D> arch/arm/boards}/a9m2410/lowlevel_init.S |    0
 {board =3D> arch/arm/boards}/a9m2440/Makefile        |    0
 {board =3D> arch/arm/boards}/a9m2440/a9m2410dev.c    |    0
 {board =3D> arch/arm/boards}/a9m2440/a9m2440.c       |    0
 {board =3D> arch/arm/boards}/a9m2440/baseboards.h    |    0
 {board =3D> arch/arm/boards}/a9m2440/config.h        |    0
 {board =3D> arch/arm/boards}/a9m2440/env/bin/_update |    0
 {board =3D> arch/arm/boards}/a9m2440/env/bin/boot    |    0
 .../arm/boards}/a9m2440/env/bin/hush_hack          |    0
 {board =3D> arch/arm/boards}/a9m2440/env/bin/init    |    0
 .../arm/boards}/a9m2440/env/bin/update_kernel      |    0
 .../arm/boards}/a9m2440/env/bin/update_root        |    0
 {board =3D> arch/arm/boards}/a9m2440/env/config      |    0
 {board =3D> arch/arm/boards}/a9m2440/lowlevel_init.S |    0
 {board =3D> arch/arm/boards}/at91sam9260ek/Makefile  |    0
 {board =3D> arch/arm/boards}/at91sam9260ek/config.h  |    0
 .../arm/boards}/at91sam9260ek/env/bin/_update      |    0
 .../arm/boards}/at91sam9260ek/env/bin/boot         |    0
 .../arm/boards}/at91sam9260ek/env/bin/init         |    0
 .../arm/boards}/at91sam9260ek/env/bin/pcidmaloop   |    0
 .../arm/boards}/at91sam9260ek/env/bin/pciloop      |    0
 .../boards}/at91sam9260ek/env/bin/update_kernel    |    0
 .../arm/boards}/at91sam9260ek/env/bin/update_root  |    0
 .../arm/boards}/at91sam9260ek/env/config           |    0
 {board =3D> arch/arm/boards}/at91sam9260ek/init.c    |    0
 .../arm/boards}/at91sam9260ek/lowlevel_init.S      |    0
 {board =3D> arch/arm/boards}/at91sam9263ek/Makefile  |    0
 {board =3D> arch/arm/boards}/at91sam9263ek/config.h  |    0
 .../arm/boards}/at91sam9263ek/env/bin/_update      |    0
 .../arm/boards}/at91sam9263ek/env/bin/boot         |    0
 .../arm/boards}/at91sam9263ek/env/bin/hush_hack    |    0
 .../arm/boards}/at91sam9263ek/env/bin/init         |    0
 .../at91sam9263ek/env/bin/update_barebox_xmodem    |    0
 .../boards}/at91sam9263ek/env/bin/update_kernel    |    0
 .../arm/boards}/at91sam9263ek/env/bin/update_root  |    0
 .../arm/boards}/at91sam9263ek/env/config           |    0
 {board =3D> arch/arm/boards}/at91sam9263ek/init.c    |    0
 {board =3D> arch/arm/boards}/edb93xx/Makefile        |    0
 {board =3D> arch/arm/boards}/edb93xx/config.h        |    0
 {board =3D> arch/arm/boards}/edb93xx/early_udelay.h  |    0
 {board =3D> arch/arm/boards}/edb93xx/edb93xx.c       |    0
 {board =3D> arch/arm/boards}/edb93xx/edb93xx.dox     |    0
 {board =3D> arch/arm/boards}/edb93xx/edb93xx.h       |    0
 {board =3D> arch/arm/boards}/edb93xx/env/bin/boot    |    0
 .../arm/boards}/edb93xx/env/bin/flash_partition    |    0
 {board =3D> arch/arm/boards}/edb93xx/env/bin/init    |    0
 .../arm/boards}/edb93xx/env/bin/set_nor_parts      |    0
 .../arm/boards}/edb93xx/env/bin/update_kernel      |    0
 .../arm/boards}/edb93xx/env/bin/update_rootfs      |    0
 {board =3D> arch/arm/boards}/edb93xx/env/config      |    0
 {board =3D> arch/arm/boards}/edb93xx/flash_cfg.c     |    0
 {board =3D> arch/arm/boards}/edb93xx/pll_cfg.c       |    0
 {board =3D> arch/arm/boards}/edb93xx/pll_cfg.h       |    0
 {board =3D> arch/arm/boards}/edb93xx/sdram_cfg.c     |    0
 {board =3D> arch/arm/boards}/edb93xx/sdram_cfg.h     |    0
 .../arm/boards}/eukrea_cpuimx25/Makefile           |    0
 .../arm/boards}/eukrea_cpuimx25/config.h           |    0
 .../arm/boards}/eukrea_cpuimx25/env/bin/_update    |    0
 .../arm/boards}/eukrea_cpuimx25/env/bin/boot       |    0
 .../arm/boards}/eukrea_cpuimx25/env/bin/hush_hack  |    0
 .../arm/boards}/eukrea_cpuimx25/env/bin/init       |    0
 .../boards}/eukrea_cpuimx25/env/bin/update_kernel  |    0
 .../boards}/eukrea_cpuimx25/env/bin/update_root    |    0
 .../arm/boards}/eukrea_cpuimx25/env/config         |    0
 .../arm/boards}/eukrea_cpuimx25/eukrea_cpuimx25.c  |    0
 .../arm/boards}/eukrea_cpuimx25/lowlevel.c         |    0
 .../arm/boards}/eukrea_cpuimx27/Makefile           |    0
 .../arm/boards}/eukrea_cpuimx27/config.h           |    0
 .../arm/boards}/eukrea_cpuimx27/env/bin/_update    |    0
 .../arm/boards}/eukrea_cpuimx27/env/bin/boot       |    0
 .../arm/boards}/eukrea_cpuimx27/env/bin/hush_hack  |    0
 .../arm/boards}/eukrea_cpuimx27/env/bin/init       |    0
 .../boards}/eukrea_cpuimx27/env/bin/update_kernel  |    0
 .../boards}/eukrea_cpuimx27/env/bin/update_root    |    0
 .../arm/boards}/eukrea_cpuimx27/env/config         |    0
 .../arm/boards}/eukrea_cpuimx27/eukrea_cpuimx27.c  |    0
 .../boards}/eukrea_cpuimx27/eukrea_cpuimx27.dox    |    0
 .../arm/boards}/eukrea_cpuimx27/lowlevel_init.S    |    0
 .../arm/boards}/eukrea_cpuimx35/Makefile           |    0
 .../arm/boards}/eukrea_cpuimx35/config.h           |    0
 .../arm/boards}/eukrea_cpuimx35/env/bin/_update    |    0
 .../arm/boards}/eukrea_cpuimx35/env/bin/boot       |    0
 .../arm/boards}/eukrea_cpuimx35/env/bin/hush_hack  |    0
 .../arm/boards}/eukrea_cpuimx35/env/bin/init       |    4 +
 .../boards}/eukrea_cpuimx35/env/bin/update_kernel  |    0
 .../boards}/eukrea_cpuimx35/env/bin/update_root    |    0
 .../arm/boards}/eukrea_cpuimx35/env/config         |    0
 .../arm/boards}/eukrea_cpuimx35/eukrea_cpuimx35.c  |   28 +-
 .../boards}/eukrea_cpuimx35/eukrea_cpuimx35.dox    |    0
 arch/arm/boards/eukrea_cpuimx35/flash_header.c     |   41 +
 .../arm/boards}/eukrea_cpuimx35/lowlevel.c         |   71 +-
 .../arm/boards}/freescale-mx25-3-stack/3stack.c    |    0
 .../arm/boards}/freescale-mx25-3-stack/Makefile    |    0
 .../arm/boards}/freescale-mx25-3-stack/config.h    |    0
 .../boards}/freescale-mx25-3-stack/env/bin/_update |    0
 .../boards}/freescale-mx25-3-stack/env/bin/boot    |    0
 .../freescale-mx25-3-stack/env/bin/hush_hack       |    0
 .../boards}/freescale-mx25-3-stack/env/bin/init    |    0
 .../freescale-mx25-3-stack/env/bin/update_kernel   |    0
 .../freescale-mx25-3-stack/env/bin/update_root     |    0
 .../arm/boards}/freescale-mx25-3-stack/env/config  |    0
 .../boards}/freescale-mx25-3-stack/lowlevel_init.S |    0
 .../arm/boards}/freescale-mx35-3-stack/3stack.c    |    0
 .../arm/boards}/freescale-mx35-3-stack/3stack.dox  |    0
 .../arm/boards}/freescale-mx35-3-stack/Makefile    |    0
 .../freescale-mx35-3-stack/board-mx35_3stack.h     |    0
 .../arm/boards}/freescale-mx35-3-stack/config.h    |    0
 .../boards}/freescale-mx35-3-stack/env/bin/_update |    0
 .../boards}/freescale-mx35-3-stack/env/bin/boot    |    0
 .../freescale-mx35-3-stack/env/bin/hush_hack       |    0
 .../boards}/freescale-mx35-3-stack/env/bin/init    |    0
 .../freescale-mx35-3-stack/env/bin/update_kernel   |    0
 .../freescale-mx35-3-stack/env/bin/update_rootfs   |    0
 .../arm/boards}/freescale-mx35-3-stack/env/config  |    0
 .../boards}/freescale-mx35-3-stack/flash_header.c  |    0
 .../boards}/freescale-mx35-3-stack/lowlevel_init.S |    0
 arch/arm/boards/guf-neso/Makefile                  |    5 +
 .../pcm038.c =3D> arch/arm/boards/guf-neso/board.c   |  352 ++---
 .../pcm038 =3D> arch/arm/boards/guf-neso}/config.h   |    0
 .../arm/boards/guf-neso}/env/config                |    7 +-
 .../pcm038 =3D> arch/arm/boards/guf-neso}/lowlevel.c |    0
 .../pcm038 =3D> arch/arm/boards/guf-neso}/pll_init.S |    4 +-
 {board =3D> arch/arm/boards}/imx21ads/Makefile       |    0
 {board =3D> arch/arm/boards}/imx21ads/config.h       |    0
 {board =3D> arch/arm/boards}/imx21ads/env/bin/init   |    0
 {board =3D> arch/arm/boards}/imx21ads/imx21ads.c     |    0
 {board =3D> arch/arm/boards}/imx21ads/imx21ads.dox   |    0
 .../arm/boards}/imx21ads/lowlevel_init.S           |    0
 {board =3D> arch/arm/boards}/imx27ads/Makefile       |    0
 {board =3D> arch/arm/boards}/imx27ads/config.h       |    0
 .../arm/boards}/imx27ads/env/bin/_update           |    0
 {board =3D> arch/arm/boards}/imx27ads/env/bin/boot   |    0
 {board =3D> arch/arm/boards}/imx27ads/env/bin/init   |    0
 .../arm/boards}/imx27ads/env/bin/update_kernel     |    0
 .../arm/boards}/imx27ads/env/bin/update_root       |    0
 {board =3D> arch/arm/boards}/imx27ads/env/config     |    0
 {board =3D> arch/arm/boards}/imx27ads/imx27ads.c     |    0
 {board =3D> arch/arm/boards}/imx27ads/imx27ads.dox   |    0
 .../arm/boards}/imx27ads/lowlevel_init.S           |    0
 {board =3D> arch/arm/boards}/mmccpu/Makefile         |    0
 {board =3D> arch/arm/boards}/mmccpu/config.h         |    0
 .../arm/boards/mmccpu}/env/bin/_update             |    0
 {board =3D> arch/arm/boards}/mmccpu/env/bin/boot     |    0
 .../arm/boards}/mmccpu/env/bin/hush_hack           |    0
 {board =3D> arch/arm/boards}/mmccpu/env/bin/init     |    0
 .../arm/boards}/mmccpu/env/bin/update_kernel       |    0
 .../arm/boards}/mmccpu/env/bin/update_root         |    0
 {board =3D> arch/arm/boards}/mmccpu/env/config       |    0
 {board =3D> arch/arm/boards}/mmccpu/init.c           |    0
 {board =3D> arch/arm/boards}/netx/Makefile           |    0
 {board =3D> arch/arm/boards}/netx/config.h           |    0
 {board =3D> arch/arm/boards}/netx/netx.c             |    0
 {board =3D> arch/arm/boards}/netx/netx.dox           |    0
 {board =3D> arch/arm/boards}/netx/platform.S         |    0
 arch/arm/boards/omap/Kconfig                       |   93 ++
 {board =3D> arch/arm/boards}/omap/Makefile           |    2 +-
 arch/arm/boards/omap/board-beagle.c                |  275 ++++
 {board =3D> arch/arm/boards}/omap/board-omap3evm.c   |    4 +-
 {board =3D> arch/arm/boards}/omap/board-sdp343x.c    |    2 +-
 {board =3D> arch/arm/boards}/omap/board.h            |    2 +-
 {board =3D> arch/arm/boards}/omap/config.h           |    7 +-
 .../arm/boards}/omap/devices-gpmc-nand.c           |   65 +-
 {board =3D> arch/arm/boards}/omap/env/bin/init       |    0
 {board =3D> arch/arm/boards}/omap/platform.S         |    2 +-
 {board =3D> arch/arm/boards}/pcm037/Makefile         |    0
 {board =3D> arch/arm/boards}/pcm037/config.h         |    0
 {board =3D> arch/arm/boards}/pcm037/env/config       |    0
 {board =3D> arch/arm/boards}/pcm037/lowlevel_init.S  |    0
 {board =3D> arch/arm/boards}/pcm037/pcm037.c         |    0
 {board =3D> arch/arm/boards}/pcm037/pcm037.dox       |    0
 {board =3D> arch/arm/boards}/pcm038/Makefile         |    0
 .../arm/boards/pcm038}/config.h                    |    0
 {board =3D> arch/arm/boards}/pcm038/env/config       |    0
 {board =3D> arch/arm/boards}/pcm038/lowlevel.c       |    0
 {board =3D> arch/arm/boards}/pcm038/pcm038.c         |    0
 {board =3D> arch/arm/boards}/pcm038/pcm038.dox       |    0
 {board =3D> arch/arm/boards}/pcm038/pll_init.S       |    0
 {board =3D> arch/arm/boards}/pcm043/Makefile         |    0
 {board =3D> arch/arm/boards}/pcm043/config.h         |    0
 {board =3D> arch/arm/boards}/pcm043/env/config       |    0
 {board =3D> arch/arm/boards}/pcm043/lowlevel.c       |    0
 {board =3D> arch/arm/boards}/pcm043/pcm043.c         |    6 -
 {board =3D> arch/arm/boards}/pcm043/pcm043.dox       |    0
 {board =3D> arch/arm/boards}/phycard-i.MX27/Makefile |    0
 .../arm/boards/phycard-i.MX27}/config.h            |    0
 .../arm/boards}/phycard-i.MX27/env/config          |    0
 .../arm/boards}/phycard-i.MX27/lowlevel_init.S     |    0
 {board =3D> arch/arm/boards}/phycard-i.MX27/pca100.c |    0
 .../arm/boards}/phycard-i.MX27/pca100.dox          |    0
 {board =3D> arch/arm/boards}/pm9263/Makefile         |    0
 {board =3D> arch/arm/boards}/pm9263/config.h         |    0
 .../arm/boards/pm9263}/env/bin/_update             |    0
 {board =3D> arch/arm/boards}/pm9263/env/bin/boot     |    0
 .../arm/boards}/pm9263/env/bin/hush_hack           |    0
 {board =3D> arch/arm/boards}/pm9263/env/bin/init     |    0
 .../arm/boards}/pm9263/env/bin/update_kernel       |    0
 .../arm/boards}/pm9263/env/bin/update_root         |    0
 {board =3D> arch/arm/boards}/pm9263/env/config       |    0
 {board =3D> arch/arm/boards}/pm9263/init.c           |    0
 {board =3D> arch/arm/boards}/scb9328/Makefile        |    0
 {board =3D> arch/arm/boards}/scb9328/config.h        |    0
 {board =3D> arch/arm/boards}/scb9328/env/bin/init    |    0
 {board =3D> arch/arm/boards}/scb9328/lowlevel_init.S |    0
 {board =3D> arch/arm/boards}/scb9328/scb9328.c       |    0
 {board =3D> arch/arm/boards}/scb9328/scb9328.dox     |    0
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    2 +-
 arch/arm/configs/edb93xx_defconfig                 |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |   13 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx35_defconfig         |   18 +-
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/mmccpu_defconfig                  |    2 +-
 arch/arm/configs/mx21ads_defconfig                 |    2 +-
 arch/arm/configs/mx27ads_defconfig                 |    2 +-
 arch/arm/configs/neso_defconfig                    |  264 +++
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pm9263_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/arm/include/asm/barebox-arm.h                 |    2 +-
 arch/arm/mach-imx/Kconfig                          |   10 +
 arch/arm/mach-omap/Kconfig                         |   16 +-
 arch/arm/mach-omap/arch-omap.dox                   |    8 +-
 arch/arm/mach-omap/include/mach/gpmc_nand.h        |   45 +-
 arch/arm/mach-omap/omap3_clock.c                   |   10 +-
 arch/arm/mach-omap/omap3_core.S                    |   43 +
 arch/arm/mach-s3c24xx/generic.c                    |    4 +-
 arch/blackfin/Makefile                             |    2 +-
 {board =3D> arch/blackfin/boards}/ipe337/Makefile    |    0
 .../blackfin/boards}/ipe337/barebox.lds.S          |    0
 .../blackfin/boards}/ipe337/cmd_alternate.c        |    0
 {board =3D> arch/blackfin/boards}/ipe337/config.h    |    0
 .../blackfin/boards}/ipe337/env/bin/_alternate     |    0
 .../blackfin/boards}/ipe337/env/bin/_update        |    0
 .../blackfin/boards}/ipe337/env/bin/boot           |    0
 .../blackfin/boards}/ipe337/env/bin/init           |    0
 .../blackfin/boards}/ipe337/env/bin/magic.bin      |  Bin 4 -> 4 bytes
 .../blackfin/boards}/ipe337/env/bin/reset_ageing   |    0
 .../boards}/ipe337/env/bin/update_application      |    0
 .../boards}/ipe337/env/bin/update_bareboxenv       |    0
 .../blackfin/boards}/ipe337/env/bin/update_kernel  |    0
 .../boards}/ipe337/env/bin/update_persistent       |    0
 .../blackfin/boards}/ipe337/env/bin/update_system  |    0
 {board =3D> arch/blackfin/boards}/ipe337/env/config  |    0
 {board =3D> arch/blackfin/boards}/ipe337/ipe337.c    |    0
 {board =3D> arch/blackfin/boards}/ipe337/ipe337.dox  |    0
 arch/blackfin/configs/ipe337_defconfig             |    2 +-
 arch/m68k/Makefile                                 |    2 +-
 {board =3D> arch/m68k/boards}/kp_ukd_r1_num/Makefile |    0
 .../m68k/boards/kp_ukd_r1_num}/env/bin/_update     |    0
 .../m68k/boards}/kp_ukd_r1_num/env/bin/boot        |    0
 .../m68k/boards}/kp_ukd_r1_num/env/bin/init        |    0
 .../m68k/boards}/kp_ukd_r1_num/env/bin/pcidmaloop  |    0
 .../m68k/boards}/kp_ukd_r1_num/env/bin/pciloop     |    0
 .../boards}/kp_ukd_r1_num/env/bin/update_kernel    |    0
 .../m68k/boards}/kp_ukd_r1_num/env/bin/update_root |    0
 .../m68k/boards}/kp_ukd_r1_num/env/config          |    0
 .../m68k/boards}/kp_ukd_r1_num/highlevel_init.c    |    0
 .../m68k/boards}/kp_ukd_r1_num/kp_ukd_r1_num.c     |    0
 .../m68k/boards}/kp_ukd_r1_num/kp_ukd_r1_num.dox   |    0
 .../m68k/boards}/kp_ukd_r1_num/lowlevel_init.c     |    0
 .../m68k/boards}/kp_ukd_r1_num/pci-stubs.c         |    0
 .../m68k/boards}/phycore_mcf54xx/Makefile          |    0
 .../m68k/boards/phycore_mcf54xx}/env/bin/_update   |    0
 .../m68k/boards}/phycore_mcf54xx/env/bin/boot      |    0
 .../m68k/boards}/phycore_mcf54xx/env/bin/init      |    0
 .../boards}/phycore_mcf54xx/env/bin/pcidmaloop     |    0
 .../m68k/boards}/phycore_mcf54xx/env/bin/pciloop   |    0
 .../boards}/phycore_mcf54xx/env/bin/update_kernel  |    0
 .../boards}/phycore_mcf54xx/env/bin/update_root    |    0
 .../m68k/boards}/phycore_mcf54xx/env/config        |    0
 .../m68k/boards}/phycore_mcf54xx/highlevel_init.c  |    0
 .../m68k/boards}/phycore_mcf54xx/lowlevel_init.c   |    0
 .../m68k/boards}/phycore_mcf54xx/pci-stubs.c       |    0
 .../m68k/boards}/phycore_mcf54xx/phyCore_MCF54xx.c |    0
 .../boards}/phycore_mcf54xx/phyCore_MCF54xx.dox    |    0
 .../m68k/configs/phycore_kpukdr1_5475num_defconfig |    2 +-
 arch/m68k/configs/phycore_mcf54xx_defconfig        |    2 +-
 arch/ppc/Makefile                                  |    2 +-
 {board =3D> arch/ppc/boards}/pcm030/Makefile         |    0
 {board =3D> arch/ppc/boards}/pcm030/barebox.lds.S    |    0
 {board =3D> arch/ppc/boards}/pcm030/config.h         |    0
 {board =3D> arch/ppc/boards}/pcm030/mt46v32m16-75.h  |    0
 {board =3D> arch/ppc/boards}/pcm030/pcm030.c         |    0
 {board =3D> arch/ppc/boards}/pcm030/pcm030.dox       |    0
 arch/sandbox/Makefile                              |   10 +-
 {board/sandbox =3D> arch/sandbox/board}/.gitignore   |    0
 {board/sandbox =3D> arch/sandbox/board}/Makefile     |    0
 .../sandbox =3D> arch/sandbox/board}/barebox.lds.S   |    0
 {board/sandbox =3D> arch/sandbox/board}/board.c      |    0
 {board/sandbox =3D> arch/sandbox/board}/clock.c      |    0
 {board/sandbox =3D> arch/sandbox/board}/config.h     |    0
 {board/sandbox =3D> arch/sandbox/board}/console.c    |    0
 {board/sandbox =3D> arch/sandbox/board}/env/bin/init |    0
 {board/sandbox =3D> arch/sandbox/board}/env/config   |    0
 {board/sandbox =3D> arch/sandbox/board}/hostfile.c   |    0
 arch/sandbox/configs/sandbox_defconfig             |    2 +-
 arch/x86/Makefile                                  |    2 +-
 {board =3D> arch/x86/boards}/x86_generic/Makefile    |    0
 {board =3D> arch/x86/boards}/x86_generic/config.h    |    0
 .../x86/boards}/x86_generic/env/bin/boot           |    0
 .../x86/boards}/x86_generic/env/bin/init           |    0
 {board =3D> arch/x86/boards}/x86_generic/env/config  |    0
 .../x86/boards}/x86_generic/generic_pc.c           |    0
 arch/x86/configs/generic_defconfig                 |    2 +-
 board/board.dox                                    |   16 +-
 board/eukrea_cpuimx35/flash_header.c               |   60 -
 board/omap/Kconfig                                 |  162 --
 board/omap/board-beagle.c                          |  270 ----
 commands/Kconfig                                   |    6 +
 commands/Makefile                                  |    1 +
 commands/cp.c                                      |    2 -
 commands/mem.c                                     |    1 -
 commands/ubi.c                                     |  129 ++
 common/Makefile                                    |    8 +-
 defaultenv/bin/boot                                |    6 +-
 drivers/Kconfig                                    |    2 +-
 drivers/Makefile                                   |    2 +-
 drivers/mtd/Kconfig                                |    9 +
 drivers/mtd/Makefile                               |    3 +
 drivers/{ =3D> mtd}/nand/Kconfig                     |   10 +-
 drivers/{ =3D> mtd}/nand/Makefile                    |    0
 drivers/{ =3D> mtd}/nand/atmel_nand.c                |    4 +-
 drivers/{ =3D> mtd}/nand/atmel_nand_ecc.h            |    0
 drivers/{ =3D> mtd}/nand/diskonchip.c                |    0
 drivers/{ =3D> mtd}/nand/nand.c                      |    2 +
 drivers/{ =3D> mtd}/nand/nand_base.c                 |    0
 drivers/{ =3D> mtd}/nand/nand_bbt.c                  |    0
 drivers/{ =3D> mtd}/nand/nand_ecc.c                  |    0
 drivers/{ =3D> mtd}/nand/nand_ids.c                  |    0
 drivers/{ =3D> mtd}/nand/nand_imx.c                  |    0
 drivers/{ =3D> mtd}/nand/nand_omap_gpmc.c            |  103 +-
 drivers/{ =3D> mtd}/nand/nand_s3c2410.c              |    0
 drivers/{ =3D> mtd}/nand/nand_util.c                 |    0
 drivers/mtd/partition.c                            |  143 ++
 drivers/mtd/ubi/Kconfig                            |    6 +
 drivers/mtd/ubi/Makefile                           |    3 +
 drivers/mtd/ubi/build.c                            | 1059 +++++++++++++
 drivers/mtd/ubi/cdev.c                             |  238 +++
 drivers/mtd/ubi/crc32defs.h                        |   32 +
 drivers/mtd/ubi/debug.c                            |  192 +++
 drivers/mtd/ubi/debug.h                            |  152 ++
 drivers/mtd/ubi/eba.c                              | 1256 +++++++++++++++
 drivers/mtd/ubi/io.c                               | 1274 +++++++++++++++
 drivers/mtd/ubi/kapi.c                             |  638 ++++++++
 drivers/mtd/ubi/misc.c                             |  106 ++
 drivers/mtd/ubi/scan.c                             | 1362 ++++++++++++++++
 drivers/mtd/ubi/scan.h                             |  165 ++
 drivers/mtd/ubi/ubi-barebox.h                      |  191 +++
 drivers/mtd/ubi/ubi-media.h                        |  372 +++++
 drivers/mtd/ubi/ubi.h                              |  648 ++++++++
 drivers/mtd/ubi/upd.c                              |  445 ++++++
 drivers/mtd/ubi/vmt.c                              |  866 ++++++++++
 drivers/mtd/ubi/vtbl.c                             |  837 ++++++++++
 drivers/mtd/ubi/wl.c                               | 1675 ++++++++++++++++=
++++
 drivers/nor/cfi_flash.c                            |  143 ++-
 drivers/nor/cfi_flash.h                            |   55 +-
 drivers/nor/cfi_flash_amd.c                        |   14 +-
 drivers/nor/cfi_flash_intel.c                      |   12 +-
 drivers/usb/Kconfig                                |   10 +-
 drivers/usb/Makefile                               |    7 +-
 drivers/usb/core/Makefile                          |    2 +
 drivers/usb/{ =3D> core}/usb.c                       |    0
 drivers/usb/host/Kconfig                           |    2 +
 drivers/usb/host/Makefile                          |    1 +
 drivers/usb/{usb_ehci_core.h =3D> host/ehci-core.h}  |    0
 drivers/usb/{usb_ehci_core.c =3D> host/ehci-hcd.c}   |    2 +-
 drivers/usb/{usb_ehci.h =3D> host/ehci.h}            |    0
 drivers/usb/otg/Kconfig                            |    6 +
 drivers/usb/otg/Makefile                           |    2 +
 drivers/usb/{ =3D> otg}/isp1504.c                    |    0
 drivers/usb/{ =3D> otg}/ulpi.c                       |    0
 fs/Kconfig                                         |    3 +
 fs/devfs.c                                         |   46 +-
 fs/fs.c                                            |   34 +
 include/common.h                                   |    4 +-
 include/driver.h                                   |    1 +
 include/linux/mtd/mtd-abi.h                        |    1 +
 include/linux/mtd/mtd.h                            |   13 +
 include/linux/mtd/ubi.h                            |  186 +++
 include/linux/rbtree.h                             |  160 ++
 include/mtd/ubi-user.h                             |  300 ++++
 lib/Makefile                                       |    1 +
 lib/crc32.c                                        |   11 +-
 lib/rbtree.c                                       |  389 +++++
 scripts/genenv                                     |    8 +-
 406 files changed, 14262 insertions(+), 1090 deletions(-)
 rename {board =3D> arch/arm/boards}/a9m2410/Makefile (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/a9m2410.c (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/config.h (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/bin/hush_hack (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/bin/update_kernel (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/bin/update_root (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/env/config (100%)
 rename {board =3D> arch/arm/boards}/a9m2410/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/Makefile (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/a9m2410dev.c (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/a9m2440.c (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/baseboards.h (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/config.h (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/bin/hush_hack (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/bin/update_kernel (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/bin/update_root (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/env/config (100%)
 rename {board =3D> arch/arm/boards}/a9m2440/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/Makefile (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/config.h (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/pcidmaloop (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/pciloop (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/update_kernel (1=
00%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/bin/update_root (100=
%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/env/config (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/init.c (100%)
 rename {board =3D> arch/arm/boards}/at91sam9260ek/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/Makefile (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/config.h (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/hush_hack (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/update_barebox_x=
modem (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/update_kernel (1=
00%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/bin/update_root (100=
%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/env/config (100%)
 rename {board =3D> arch/arm/boards}/at91sam9263ek/init.c (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/Makefile (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/config.h (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/early_udelay.h (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/edb93xx.c (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/edb93xx.dox (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/edb93xx.h (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/bin/flash_partition (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/bin/set_nor_parts (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/bin/update_kernel (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/bin/update_rootfs (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/env/config (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/flash_cfg.c (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/pll_cfg.c (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/pll_cfg.h (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/sdram_cfg.c (100%)
 rename {board =3D> arch/arm/boards}/edb93xx/sdram_cfg.h (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/Makefile (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/config.h (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/bin/hush_hack (100=
%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/bin/update_kernel =
(100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/bin/update_root (1=
00%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/env/config (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/eukrea_cpuimx25.c (100=
%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx25/lowlevel.c (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/Makefile (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/config.h (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/bin/hush_hack (100=
%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/bin/update_kernel =
(100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/bin/update_root (1=
00%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/env/config (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/eukrea_cpuimx27.c (100=
%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/eukrea_cpuimx27.dox (1=
00%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx27/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/Makefile (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/config.h (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/bin/hush_hack (100=
%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/bin/init (91%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/bin/update_kernel =
(100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/bin/update_root (1=
00%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/env/config (100%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/eukrea_cpuimx35.c (95%)
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/eukrea_cpuimx35.dox (1=
00%)
 create mode 100644 arch/arm/boards/eukrea_cpuimx35/flash_header.c
 rename {board =3D> arch/arm/boards}/eukrea_cpuimx35/lowlevel.c (72%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/3stack.c (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/Makefile (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/config.h (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/bin/_update=
 (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/bin/boot (1=
00%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/bin/hush_ha=
ck (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/bin/init (1=
00%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/bin/update_=
kernel (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/bin/update_=
root (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/env/config (100=
%)
 rename {board =3D> arch/arm/boards}/freescale-mx25-3-stack/lowlevel_init.S=
 (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/3stack.c (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/3stack.dox (100=
%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/Makefile (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/board-mx35_3sta=
ck.h (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/config.h (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/bin/_update=
 (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/bin/boot (1=
00%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/bin/hush_ha=
ck (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/bin/init (1=
00%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/bin/update_=
kernel (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/bin/update_=
rootfs (100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/env/config (100=
%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/flash_header.c =
(100%)
 rename {board =3D> arch/arm/boards}/freescale-mx35-3-stack/lowlevel_init.S=
 (100%)
 create mode 100644 arch/arm/boards/guf-neso/Makefile
 copy board/pcm038/pcm038.c =3D> arch/arm/boards/guf-neso/board.c (52%)
 copy {board/pcm038 =3D> arch/arm/boards/guf-neso}/config.h (100%)
 copy {board/phycard-i.MX27 =3D> arch/arm/boards/guf-neso}/env/config (91%)
 copy {board/pcm038 =3D> arch/arm/boards/guf-neso}/lowlevel.c (100%)
 copy {board/pcm038 =3D> arch/arm/boards/guf-neso}/pll_init.S (94%)
 rename {board =3D> arch/arm/boards}/imx21ads/Makefile (100%)
 rename {board =3D> arch/arm/boards}/imx21ads/config.h (100%)
 rename {board =3D> arch/arm/boards}/imx21ads/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/imx21ads/imx21ads.c (100%)
 rename {board =3D> arch/arm/boards}/imx21ads/imx21ads.dox (100%)
 rename {board =3D> arch/arm/boards}/imx21ads/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/Makefile (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/config.h (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/env/bin/update_kernel (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/env/bin/update_root (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/env/config (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/imx27ads.c (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/imx27ads.dox (100%)
 rename {board =3D> arch/arm/boards}/imx27ads/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/Makefile (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/config.h (100%)
 rename {board/kp_ukd_r1_num =3D> arch/arm/boards/mmccpu}/env/bin/_update (=
100%)
 rename {board =3D> arch/arm/boards}/mmccpu/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/env/bin/hush_hack (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/env/bin/update_kernel (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/env/bin/update_root (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/env/config (100%)
 rename {board =3D> arch/arm/boards}/mmccpu/init.c (100%)
 rename {board =3D> arch/arm/boards}/netx/Makefile (100%)
 rename {board =3D> arch/arm/boards}/netx/config.h (100%)
 rename {board =3D> arch/arm/boards}/netx/netx.c (100%)
 rename {board =3D> arch/arm/boards}/netx/netx.dox (100%)
 rename {board =3D> arch/arm/boards}/netx/platform.S (100%)
 create mode 100644 arch/arm/boards/omap/Kconfig
 rename {board =3D> arch/arm/boards}/omap/Makefile (94%)
 create mode 100644 arch/arm/boards/omap/board-beagle.c
 rename {board =3D> arch/arm/boards}/omap/board-omap3evm.c (98%)
 rename {board =3D> arch/arm/boards}/omap/board-sdp343x.c (99%)
 rename {board =3D> arch/arm/boards}/omap/board.h (96%)
 rename {board =3D> arch/arm/boards}/omap/config.h (82%)
 rename {board =3D> arch/arm/boards}/omap/devices-gpmc-nand.c (60%)
 rename {board =3D> arch/arm/boards}/omap/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/omap/platform.S (97%)
 rename {board =3D> arch/arm/boards}/pcm037/Makefile (100%)
 rename {board =3D> arch/arm/boards}/pcm037/config.h (100%)
 rename {board =3D> arch/arm/boards}/pcm037/env/config (100%)
 rename {board =3D> arch/arm/boards}/pcm037/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/pcm037/pcm037.c (100%)
 rename {board =3D> arch/arm/boards}/pcm037/pcm037.dox (100%)
 rename {board =3D> arch/arm/boards}/pcm038/Makefile (100%)
 rename {board/phycard-i.MX27 =3D> arch/arm/boards/pcm038}/config.h (100%)
 rename {board =3D> arch/arm/boards}/pcm038/env/config (100%)
 rename {board =3D> arch/arm/boards}/pcm038/lowlevel.c (100%)
 rename {board =3D> arch/arm/boards}/pcm038/pcm038.c (100%)
 rename {board =3D> arch/arm/boards}/pcm038/pcm038.dox (100%)
 rename {board =3D> arch/arm/boards}/pcm038/pll_init.S (100%)
 rename {board =3D> arch/arm/boards}/pcm043/Makefile (100%)
 rename {board =3D> arch/arm/boards}/pcm043/config.h (100%)
 rename {board =3D> arch/arm/boards}/pcm043/env/config (100%)
 rename {board =3D> arch/arm/boards}/pcm043/lowlevel.c (100%)
 rename {board =3D> arch/arm/boards}/pcm043/pcm043.c (97%)
 rename {board =3D> arch/arm/boards}/pcm043/pcm043.dox (100%)
 rename {board =3D> arch/arm/boards}/phycard-i.MX27/Makefile (100%)
 rename {board/pcm038 =3D> arch/arm/boards/phycard-i.MX27}/config.h (100%)
 rename {board =3D> arch/arm/boards}/phycard-i.MX27/env/config (100%)
 rename {board =3D> arch/arm/boards}/phycard-i.MX27/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/phycard-i.MX27/pca100.c (100%)
 rename {board =3D> arch/arm/boards}/phycard-i.MX27/pca100.dox (100%)
 rename {board =3D> arch/arm/boards}/pm9263/Makefile (100%)
 rename {board =3D> arch/arm/boards}/pm9263/config.h (100%)
 rename {board/mmccpu =3D> arch/arm/boards/pm9263}/env/bin/_update (100%)
 rename {board =3D> arch/arm/boards}/pm9263/env/bin/boot (100%)
 rename {board =3D> arch/arm/boards}/pm9263/env/bin/hush_hack (100%)
 rename {board =3D> arch/arm/boards}/pm9263/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/pm9263/env/bin/update_kernel (100%)
 rename {board =3D> arch/arm/boards}/pm9263/env/bin/update_root (100%)
 rename {board =3D> arch/arm/boards}/pm9263/env/config (100%)
 rename {board =3D> arch/arm/boards}/pm9263/init.c (100%)
 rename {board =3D> arch/arm/boards}/scb9328/Makefile (100%)
 rename {board =3D> arch/arm/boards}/scb9328/config.h (100%)
 rename {board =3D> arch/arm/boards}/scb9328/env/bin/init (100%)
 rename {board =3D> arch/arm/boards}/scb9328/lowlevel_init.S (100%)
 rename {board =3D> arch/arm/boards}/scb9328/scb9328.c (100%)
 rename {board =3D> arch/arm/boards}/scb9328/scb9328.dox (100%)
 create mode 100644 arch/arm/configs/neso_defconfig
 rename {board =3D> arch/blackfin/boards}/ipe337/Makefile (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/barebox.lds.S (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/cmd_alternate.c (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/config.h (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/_alternate (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/_update (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/boot (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/init (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/magic.bin (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/reset_ageing (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/update_application=
 (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/update_bareboxenv =
(100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/update_kernel (100=
%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/update_persistent =
(100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/bin/update_system (100=
%)
 rename {board =3D> arch/blackfin/boards}/ipe337/env/config (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/ipe337.c (100%)
 rename {board =3D> arch/blackfin/boards}/ipe337/ipe337.dox (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/Makefile (100%)
 rename {board/phycore_mcf54xx =3D> arch/m68k/boards/kp_ukd_r1_num}/env/bin=
/_update (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/bin/boot (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/bin/init (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/bin/pcidmaloop (100=
%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/bin/pciloop (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/bin/update_kernel (=
100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/bin/update_root (10=
0%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/env/config (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/highlevel_init.c (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/kp_ukd_r1_num.c (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/kp_ukd_r1_num.dox (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/lowlevel_init.c (100%)
 rename {board =3D> arch/m68k/boards}/kp_ukd_r1_num/pci-stubs.c (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/Makefile (100%)
 rename {board/pm9263 =3D> arch/m68k/boards/phycore_mcf54xx}/env/bin/_updat=
e (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/bin/boot (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/bin/init (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/bin/pcidmaloop (1=
00%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/bin/pciloop (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/bin/update_kernel=
 (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/bin/update_root (=
100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/env/config (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/highlevel_init.c (100=
%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/lowlevel_init.c (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/pci-stubs.c (100%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/phyCore_MCF54xx.c (10=
0%)
 rename {board =3D> arch/m68k/boards}/phycore_mcf54xx/phyCore_MCF54xx.dox (=
100%)
 rename {board =3D> arch/ppc/boards}/pcm030/Makefile (100%)
 rename {board =3D> arch/ppc/boards}/pcm030/barebox.lds.S (100%)
 rename {board =3D> arch/ppc/boards}/pcm030/config.h (100%)
 rename {board =3D> arch/ppc/boards}/pcm030/mt46v32m16-75.h (100%)
 rename {board =3D> arch/ppc/boards}/pcm030/pcm030.c (100%)
 rename {board =3D> arch/ppc/boards}/pcm030/pcm030.dox (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/.gitignore (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/Makefile (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/barebox.lds.S (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/board.c (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/clock.c (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/config.h (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/console.c (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/env/bin/init (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/env/config (100%)
 rename {board/sandbox =3D> arch/sandbox/board}/hostfile.c (100%)
 rename {board =3D> arch/x86/boards}/x86_generic/Makefile (100%)
 rename {board =3D> arch/x86/boards}/x86_generic/config.h (100%)
 rename {board =3D> arch/x86/boards}/x86_generic/env/bin/boot (100%)
 rename {board =3D> arch/x86/boards}/x86_generic/env/bin/init (100%)
 rename {board =3D> arch/x86/boards}/x86_generic/env/config (100%)
 rename {board =3D> arch/x86/boards}/x86_generic/generic_pc.c (100%)
 delete mode 100644 board/eukrea_cpuimx35/flash_header.c
 delete mode 100644 board/omap/Kconfig
 delete mode 100644 board/omap/board-beagle.c
 create mode 100644 commands/ubi.c
 create mode 100644 drivers/mtd/Kconfig
 create mode 100644 drivers/mtd/Makefile
 rename drivers/{ =3D> mtd}/nand/Kconfig (92%)
 rename drivers/{ =3D> mtd}/nand/Makefile (100%)
 rename drivers/{ =3D> mtd}/nand/atmel_nand.c (99%)
 rename drivers/{ =3D> mtd}/nand/atmel_nand_ecc.h (100%)
 rename drivers/{ =3D> mtd}/nand/diskonchip.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand.c (99%)
 rename drivers/{ =3D> mtd}/nand/nand_base.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand_bbt.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand_ecc.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand_ids.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand_imx.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand_omap_gpmc.c (90%)
 rename drivers/{ =3D> mtd}/nand/nand_s3c2410.c (100%)
 rename drivers/{ =3D> mtd}/nand/nand_util.c (100%)
 create mode 100644 drivers/mtd/partition.c
 create mode 100644 drivers/mtd/ubi/Kconfig
 create mode 100644 drivers/mtd/ubi/Makefile
 create mode 100644 drivers/mtd/ubi/build.c
 create mode 100644 drivers/mtd/ubi/cdev.c
 create mode 100644 drivers/mtd/ubi/crc32defs.h
 create mode 100644 drivers/mtd/ubi/debug.c
 create mode 100644 drivers/mtd/ubi/debug.h
 create mode 100644 drivers/mtd/ubi/eba.c
 create mode 100644 drivers/mtd/ubi/io.c
 create mode 100644 drivers/mtd/ubi/kapi.c
 create mode 100644 drivers/mtd/ubi/misc.c
 create mode 100644 drivers/mtd/ubi/scan.c
 create mode 100644 drivers/mtd/ubi/scan.h
 create mode 100644 drivers/mtd/ubi/ubi-barebox.h
 create mode 100644 drivers/mtd/ubi/ubi-media.h
 create mode 100644 drivers/mtd/ubi/ubi.h
 create mode 100644 drivers/mtd/ubi/upd.c
 create mode 100644 drivers/mtd/ubi/vmt.c
 create mode 100644 drivers/mtd/ubi/vtbl.c
 create mode 100644 drivers/mtd/ubi/wl.c
 create mode 100644 drivers/usb/core/Makefile
 rename drivers/usb/{ =3D> core}/usb.c (100%)
 create mode 100644 drivers/usb/host/Kconfig
 create mode 100644 drivers/usb/host/Makefile
 rename drivers/usb/{usb_ehci_core.h =3D> host/ehci-core.h} (100%)
 rename drivers/usb/{usb_ehci_core.c =3D> host/ehci-hcd.c} (99%)
 rename drivers/usb/{usb_ehci.h =3D> host/ehci.h} (100%)
 create mode 100644 drivers/usb/otg/Kconfig
 create mode 100644 drivers/usb/otg/Makefile
 rename drivers/usb/{ =3D> otg}/isp1504.c (100%)
 rename drivers/usb/{ =3D> otg}/ulpi.c (100%)
 create mode 100644 include/linux/mtd/ubi.h
 create mode 100644 include/linux/rbtree.h
 create mode 100644 include/mtd/ubi-user.h
 create mode 100644 lib/rbtree.c
-- =

Pengutronix e.K.                           |                             |
Industrial Linux Solutions                 | http://www.pengutronix.de/  |
Peiner Str. 6-8, 31137 Hildesheim, Germany | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
