Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 27.mail-out.ovh.net ([91.121.30.210])
	by bombadil.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Obm5A-0003MW-Rh
	for barebox@lists.infradead.org; Thu, 22 Jul 2010 03:04:26 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Thu, 22 Jul 2010 05:00:13 +0200
Message-Id: <1279767613-1269-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] move boards to arch/<architecure>/boards
To: barebox@lists.infradead.org

this will allow each arch to handle the boards more simply and depending on
there need

the env var BOARD will refer to the current board dirent

for sandbox as we have only one board the board dirent is arch/sandbox/board

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 Documentation/barebox-main.dox                     |    4 ++--
 Makefile                                           |    6 +++---
 TODO                                               |    3 +--
 arch/arm/Makefile                                  |    2 +-
 {board => arch/arm/boards}/a9m2410/Makefile        |    0
 {board => arch/arm/boards}/a9m2410/a9m2410.c       |    0
 {board => arch/arm/boards}/a9m2410/config.h        |    0
 {board => arch/arm/boards}/a9m2410/env/bin/_update |    0
 {board => arch/arm/boards}/a9m2410/env/bin/boot    |    0
 .../arm/boards}/a9m2410/env/bin/hush_hack          |    0
 {board => arch/arm/boards}/a9m2410/env/bin/init    |    0
 .../arm/boards}/a9m2410/env/bin/update_kernel      |    0
 .../arm/boards}/a9m2410/env/bin/update_root        |    0
 {board => arch/arm/boards}/a9m2410/env/config      |    0
 {board => arch/arm/boards}/a9m2410/lowlevel_init.S |    0
 {board => arch/arm/boards}/a9m2440/Makefile        |    0
 {board => arch/arm/boards}/a9m2440/a9m2410dev.c    |    0
 {board => arch/arm/boards}/a9m2440/a9m2440.c       |    0
 {board => arch/arm/boards}/a9m2440/baseboards.h    |    0
 {board => arch/arm/boards}/a9m2440/config.h        |    0
 {board => arch/arm/boards}/a9m2440/env/bin/_update |    0
 {board => arch/arm/boards}/a9m2440/env/bin/boot    |    0
 .../arm/boards}/a9m2440/env/bin/hush_hack          |    0
 {board => arch/arm/boards}/a9m2440/env/bin/init    |    0
 .../arm/boards}/a9m2440/env/bin/update_kernel      |    0
 .../arm/boards}/a9m2440/env/bin/update_root        |    0
 {board => arch/arm/boards}/a9m2440/env/config      |    0
 {board => arch/arm/boards}/a9m2440/lowlevel_init.S |    0
 {board => arch/arm/boards}/at91sam9260ek/Makefile  |    0
 {board => arch/arm/boards}/at91sam9260ek/config.h  |    0
 .../arm/boards}/at91sam9260ek/env/bin/_update      |    0
 .../arm/boards}/at91sam9260ek/env/bin/boot         |    0
 .../arm/boards}/at91sam9260ek/env/bin/init         |    0
 .../arm/boards}/at91sam9260ek/env/bin/pcidmaloop   |    0
 .../arm/boards}/at91sam9260ek/env/bin/pciloop      |    0
 .../boards}/at91sam9260ek/env/bin/update_kernel    |    0
 .../arm/boards}/at91sam9260ek/env/bin/update_root  |    0
 .../arm/boards}/at91sam9260ek/env/config           |    0
 {board => arch/arm/boards}/at91sam9260ek/init.c    |    0
 .../arm/boards}/at91sam9260ek/lowlevel_init.S      |    0
 {board => arch/arm/boards}/at91sam9263ek/Makefile  |    0
 {board => arch/arm/boards}/at91sam9263ek/config.h  |    0
 .../arm/boards}/at91sam9263ek/env/bin/_update      |    0
 .../arm/boards}/at91sam9263ek/env/bin/boot         |    0
 .../arm/boards}/at91sam9263ek/env/bin/hush_hack    |    0
 .../arm/boards}/at91sam9263ek/env/bin/init         |    0
 .../at91sam9263ek/env/bin/update_barebox_xmodem    |    0
 .../boards}/at91sam9263ek/env/bin/update_kernel    |    0
 .../arm/boards}/at91sam9263ek/env/bin/update_root  |    0
 .../arm/boards}/at91sam9263ek/env/config           |    0
 {board => arch/arm/boards}/at91sam9263ek/init.c    |    0
 {board => arch/arm/boards}/edb93xx/Makefile        |    0
 {board => arch/arm/boards}/edb93xx/config.h        |    0
 {board => arch/arm/boards}/edb93xx/early_udelay.h  |    0
 {board => arch/arm/boards}/edb93xx/edb93xx.c       |    0
 {board => arch/arm/boards}/edb93xx/edb93xx.dox     |    0
 {board => arch/arm/boards}/edb93xx/edb93xx.h       |    0
 {board => arch/arm/boards}/edb93xx/env/bin/boot    |    0
 .../arm/boards}/edb93xx/env/bin/flash_partition    |    0
 {board => arch/arm/boards}/edb93xx/env/bin/init    |    0
 .../arm/boards}/edb93xx/env/bin/set_nor_parts      |    0
 .../arm/boards}/edb93xx/env/bin/update_kernel      |    0
 .../arm/boards}/edb93xx/env/bin/update_rootfs      |    0
 {board => arch/arm/boards}/edb93xx/env/config      |    0
 {board => arch/arm/boards}/edb93xx/flash_cfg.c     |    0
 {board => arch/arm/boards}/edb93xx/pll_cfg.c       |    0
 {board => arch/arm/boards}/edb93xx/pll_cfg.h       |    0
 {board => arch/arm/boards}/edb93xx/sdram_cfg.c     |    0
 {board => arch/arm/boards}/edb93xx/sdram_cfg.h     |    0
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
 .../arm/boards}/eukrea_cpuimx35/env/bin/init       |    0
 .../boards}/eukrea_cpuimx35/env/bin/update_kernel  |    0
 .../boards}/eukrea_cpuimx35/env/bin/update_root    |    0
 .../arm/boards}/eukrea_cpuimx35/env/config         |    0
 .../arm/boards}/eukrea_cpuimx35/eukrea_cpuimx35.c  |    0
 .../boards}/eukrea_cpuimx35/eukrea_cpuimx35.dox    |    0
 .../arm/boards}/eukrea_cpuimx35/flash_header.c     |    0
 .../arm/boards}/eukrea_cpuimx35/lowlevel.c         |    0
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
 {board => arch/arm/boards}/imx21ads/Makefile       |    0
 {board => arch/arm/boards}/imx21ads/config.h       |    0
 {board => arch/arm/boards}/imx21ads/env/bin/init   |    0
 {board => arch/arm/boards}/imx21ads/imx21ads.c     |    0
 {board => arch/arm/boards}/imx21ads/imx21ads.dox   |    0
 .../arm/boards}/imx21ads/lowlevel_init.S           |    0
 {board => arch/arm/boards}/imx27ads/Makefile       |    0
 {board => arch/arm/boards}/imx27ads/config.h       |    0
 .../arm/boards}/imx27ads/env/bin/_update           |    0
 {board => arch/arm/boards}/imx27ads/env/bin/boot   |    0
 {board => arch/arm/boards}/imx27ads/env/bin/init   |    0
 .../arm/boards}/imx27ads/env/bin/update_kernel     |    0
 .../arm/boards}/imx27ads/env/bin/update_root       |    0
 {board => arch/arm/boards}/imx27ads/env/config     |    0
 {board => arch/arm/boards}/imx27ads/imx27ads.c     |    0
 {board => arch/arm/boards}/imx27ads/imx27ads.dox   |    0
 .../arm/boards}/imx27ads/lowlevel_init.S           |    0
 {board => arch/arm/boards}/mmccpu/Makefile         |    0
 {board => arch/arm/boards}/mmccpu/config.h         |    0
 .../arm/boards/mmccpu}/env/bin/_update             |    0
 {board => arch/arm/boards}/mmccpu/env/bin/boot     |    0
 .../arm/boards}/mmccpu/env/bin/hush_hack           |    0
 {board => arch/arm/boards}/mmccpu/env/bin/init     |    0
 .../arm/boards}/mmccpu/env/bin/update_kernel       |    0
 .../arm/boards}/mmccpu/env/bin/update_root         |    0
 {board => arch/arm/boards}/mmccpu/env/config       |    0
 {board => arch/arm/boards}/mmccpu/init.c           |    0
 {board => arch/arm/boards}/netx/Makefile           |    0
 {board => arch/arm/boards}/netx/config.h           |    0
 {board => arch/arm/boards}/netx/netx.c             |    0
 {board => arch/arm/boards}/netx/netx.dox           |    0
 {board => arch/arm/boards}/netx/platform.S         |    0
 {board => arch/arm/boards}/omap/Kconfig            |    0
 {board => arch/arm/boards}/omap/Makefile           |    0
 {board => arch/arm/boards}/omap/board-beagle.c     |    4 ++--
 {board => arch/arm/boards}/omap/board-omap3evm.c   |    4 ++--
 {board => arch/arm/boards}/omap/board-sdp343x.c    |    2 +-
 {board => arch/arm/boards}/omap/board.h            |    2 +-
 {board => arch/arm/boards}/omap/config.h           |    2 +-
 .../arm/boards}/omap/devices-gpmc-nand.c           |    2 +-
 {board => arch/arm/boards}/omap/env/bin/init       |    0
 {board => arch/arm/boards}/omap/platform.S         |    2 +-
 {board => arch/arm/boards}/pcm037/Makefile         |    0
 {board => arch/arm/boards}/pcm037/config.h         |    0
 {board => arch/arm/boards}/pcm037/env/config       |    0
 {board => arch/arm/boards}/pcm037/lowlevel_init.S  |    0
 {board => arch/arm/boards}/pcm037/pcm037.c         |    0
 {board => arch/arm/boards}/pcm037/pcm037.dox       |    0
 {board => arch/arm/boards}/pcm038/Makefile         |    0
 {board => arch/arm/boards}/pcm038/config.h         |    0
 {board => arch/arm/boards}/pcm038/env/config       |    0
 {board => arch/arm/boards}/pcm038/lowlevel.c       |    0
 {board => arch/arm/boards}/pcm038/pcm038.c         |    0
 {board => arch/arm/boards}/pcm038/pcm038.dox       |    0
 {board => arch/arm/boards}/pcm038/pll_init.S       |    0
 {board => arch/arm/boards}/pcm043/Makefile         |    0
 {board => arch/arm/boards}/pcm043/config.h         |    0
 {board => arch/arm/boards}/pcm043/env/config       |    0
 {board => arch/arm/boards}/pcm043/lowlevel.c       |    0
 {board => arch/arm/boards}/pcm043/pcm043.c         |    0
 {board => arch/arm/boards}/pcm043/pcm043.dox       |    0
 {board => arch/arm/boards}/phycard-i.MX27/Makefile |    0
 {board => arch/arm/boards}/phycard-i.MX27/config.h |    0
 .../arm/boards}/phycard-i.MX27/env/config          |    0
 .../arm/boards}/phycard-i.MX27/lowlevel_init.S     |    0
 {board => arch/arm/boards}/phycard-i.MX27/pca100.c |    0
 .../arm/boards}/phycard-i.MX27/pca100.dox          |    0
 {board => arch/arm/boards}/pm9263/Makefile         |    0
 {board => arch/arm/boards}/pm9263/config.h         |    0
 .../arm/boards/pm9263}/env/bin/_update             |    0
 {board => arch/arm/boards}/pm9263/env/bin/boot     |    0
 .../arm/boards}/pm9263/env/bin/hush_hack           |    0
 {board => arch/arm/boards}/pm9263/env/bin/init     |    0
 .../arm/boards}/pm9263/env/bin/update_kernel       |    0
 .../arm/boards}/pm9263/env/bin/update_root         |    0
 {board => arch/arm/boards}/pm9263/env/config       |    0
 {board => arch/arm/boards}/pm9263/init.c           |    0
 {board => arch/arm/boards}/scb9328/Makefile        |    0
 {board => arch/arm/boards}/scb9328/config.h        |    0
 {board => arch/arm/boards}/scb9328/env/bin/init    |    0
 {board => arch/arm/boards}/scb9328/lowlevel_init.S |    0
 {board => arch/arm/boards}/scb9328/scb9328.c       |    0
 {board => arch/arm/boards}/scb9328/scb9328.dox     |    0
 arch/arm/configs/a9m2410_defconfig                 |    2 +-
 arch/arm/configs/a9m2440_defconfig                 |    2 +-
 arch/arm/configs/at91sam9260ek_defconfig           |    2 +-
 arch/arm/configs/at91sam9263ek_defconfig           |    2 +-
 arch/arm/configs/edb93xx_defconfig                 |    2 +-
 arch/arm/configs/eukrea_cpuimx25_defconfig         |    2 +-
 arch/arm/configs/eukrea_cpuimx27_defconfig         |    2 +-
 arch/arm/configs/freescale_mx25_3stack_defconfig   |    2 +-
 arch/arm/configs/freescale_mx35_3stack_defconfig   |    2 +-
 arch/arm/configs/mmccpu_defconfig                  |    2 +-
 arch/arm/configs/mx21ads_defconfig                 |    2 +-
 arch/arm/configs/mx27ads_defconfig                 |    2 +-
 arch/arm/configs/pca100_defconfig                  |    2 +-
 arch/arm/configs/pcm037_defconfig                  |    2 +-
 arch/arm/configs/pcm038_defconfig                  |    2 +-
 arch/arm/configs/pcm043_defconfig                  |    2 +-
 arch/arm/configs/pm9263_defconfig                  |    2 +-
 arch/arm/configs/scb9328_defconfig                 |    2 +-
 arch/arm/include/asm/barebox-arm.h                 |    2 +-
 arch/arm/mach-omap/Kconfig                         |    2 +-
 arch/arm/mach-omap/arch-omap.dox                   |    8 ++++----
 arch/arm/mach-s3c24xx/generic.c                    |    4 ++--
 arch/blackfin/Makefile                             |    2 +-
 {board => arch/blackfin/boards}/ipe337/Makefile    |    0
 .../blackfin/boards}/ipe337/barebox.lds.S          |    0
 .../blackfin/boards}/ipe337/cmd_alternate.c        |    0
 {board => arch/blackfin/boards}/ipe337/config.h    |    0
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
 {board => arch/blackfin/boards}/ipe337/env/config  |    0
 {board => arch/blackfin/boards}/ipe337/ipe337.c    |    0
 {board => arch/blackfin/boards}/ipe337/ipe337.dox  |    0
 arch/blackfin/configs/ipe337_defconfig             |    2 +-
 arch/m68k/Makefile                                 |    2 +-
 {board => arch/m68k/boards}/kp_ukd_r1_num/Makefile |    0
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
 {board => arch/ppc/boards}/pcm030/Makefile         |    0
 {board => arch/ppc/boards}/pcm030/barebox.lds.S    |    0
 {board => arch/ppc/boards}/pcm030/config.h         |    0
 {board => arch/ppc/boards}/pcm030/mt46v32m16-75.h  |    0
 {board => arch/ppc/boards}/pcm030/pcm030.c         |    0
 {board => arch/ppc/boards}/pcm030/pcm030.dox       |    0
 arch/sandbox/Makefile                              |   10 ++++++----
 {board/sandbox => arch/sandbox/board}/.gitignore   |    0
 {board/sandbox => arch/sandbox/board}/Makefile     |    0
 .../sandbox => arch/sandbox/board}/barebox.lds.S   |    0
 {board/sandbox => arch/sandbox/board}/board.c      |    0
 {board/sandbox => arch/sandbox/board}/clock.c      |    0
 {board/sandbox => arch/sandbox/board}/config.h     |    0
 {board/sandbox => arch/sandbox/board}/console.c    |    0
 {board/sandbox => arch/sandbox/board}/env/bin/init |    0
 {board/sandbox => arch/sandbox/board}/env/config   |    0
 {board/sandbox => arch/sandbox/board}/hostfile.c   |    0
 arch/sandbox/configs/sandbox_defconfig             |    2 +-
 arch/x86/Makefile                                  |    2 +-
 {board => arch/x86/boards}/x86_generic/Makefile    |    0
 {board => arch/x86/boards}/x86_generic/config.h    |    0
 .../x86/boards}/x86_generic/env/bin/boot           |    0
 .../x86/boards}/x86_generic/env/bin/init           |    0
 {board => arch/x86/boards}/x86_generic/env/config  |    0
 .../x86/boards}/x86_generic/generic_pc.c           |    0
 arch/x86/configs/generic_defconfig                 |    2 +-
 board/board.dox                                    |   16 ++++++++--------
 drivers/nand/atmel_nand.c                          |    2 +-
 315 files changed, 66 insertions(+), 65 deletions(-)
 rename {board => arch/arm/boards}/a9m2410/Makefile (100%)
 rename {board => arch/arm/boards}/a9m2410/a9m2410.c (100%)
 rename {board => arch/arm/boards}/a9m2410/config.h (100%)
 rename {board => arch/arm/boards}/a9m2410/env/bin/_update (100%)
 rename {board => arch/arm/boards}/a9m2410/env/bin/boot (100%)
 rename {board => arch/arm/boards}/a9m2410/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/a9m2410/env/bin/init (100%)
 rename {board => arch/arm/boards}/a9m2410/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/a9m2410/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/a9m2410/env/config (100%)
 rename {board => arch/arm/boards}/a9m2410/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/a9m2440/Makefile (100%)
 rename {board => arch/arm/boards}/a9m2440/a9m2410dev.c (100%)
 rename {board => arch/arm/boards}/a9m2440/a9m2440.c (100%)
 rename {board => arch/arm/boards}/a9m2440/baseboards.h (100%)
 rename {board => arch/arm/boards}/a9m2440/config.h (100%)
 rename {board => arch/arm/boards}/a9m2440/env/bin/_update (100%)
 rename {board => arch/arm/boards}/a9m2440/env/bin/boot (100%)
 rename {board => arch/arm/boards}/a9m2440/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/a9m2440/env/bin/init (100%)
 rename {board => arch/arm/boards}/a9m2440/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/a9m2440/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/a9m2440/env/config (100%)
 rename {board => arch/arm/boards}/a9m2440/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/Makefile (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/config.h (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/_update (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/boot (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/init (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/pcidmaloop (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/pciloop (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/env/config (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/init.c (100%)
 rename {board => arch/arm/boards}/at91sam9260ek/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/Makefile (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/config.h (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/_update (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/boot (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/init (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/update_barebox_xmodem (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/env/config (100%)
 rename {board => arch/arm/boards}/at91sam9263ek/init.c (100%)
 rename {board => arch/arm/boards}/edb93xx/Makefile (100%)
 rename {board => arch/arm/boards}/edb93xx/config.h (100%)
 rename {board => arch/arm/boards}/edb93xx/early_udelay.h (100%)
 rename {board => arch/arm/boards}/edb93xx/edb93xx.c (100%)
 rename {board => arch/arm/boards}/edb93xx/edb93xx.dox (100%)
 rename {board => arch/arm/boards}/edb93xx/edb93xx.h (100%)
 rename {board => arch/arm/boards}/edb93xx/env/bin/boot (100%)
 rename {board => arch/arm/boards}/edb93xx/env/bin/flash_partition (100%)
 rename {board => arch/arm/boards}/edb93xx/env/bin/init (100%)
 rename {board => arch/arm/boards}/edb93xx/env/bin/set_nor_parts (100%)
 rename {board => arch/arm/boards}/edb93xx/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/edb93xx/env/bin/update_rootfs (100%)
 rename {board => arch/arm/boards}/edb93xx/env/config (100%)
 rename {board => arch/arm/boards}/edb93xx/flash_cfg.c (100%)
 rename {board => arch/arm/boards}/edb93xx/pll_cfg.c (100%)
 rename {board => arch/arm/boards}/edb93xx/pll_cfg.h (100%)
 rename {board => arch/arm/boards}/edb93xx/sdram_cfg.c (100%)
 rename {board => arch/arm/boards}/edb93xx/sdram_cfg.h (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/Makefile (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/config.h (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/bin/_update (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/bin/boot (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/bin/init (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/env/config (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/eukrea_cpuimx25.c (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx25/lowlevel.c (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/Makefile (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/config.h (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/bin/_update (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/bin/boot (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/bin/init (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/env/config (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/eukrea_cpuimx27.c (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/eukrea_cpuimx27.dox (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx27/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/Makefile (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/config.h (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/bin/_update (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/bin/boot (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/bin/init (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/env/config (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/eukrea_cpuimx35.c (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/eukrea_cpuimx35.dox (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/flash_header.c (100%)
 rename {board => arch/arm/boards}/eukrea_cpuimx35/lowlevel.c (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/3stack.c (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/Makefile (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/config.h (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/bin/_update (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/bin/boot (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/bin/init (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/env/config (100%)
 rename {board => arch/arm/boards}/freescale-mx25-3-stack/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/3stack.c (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/3stack.dox (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/Makefile (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/board-mx35_3stack.h (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/config.h (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/bin/_update (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/bin/boot (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/bin/init (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/bin/update_rootfs (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/env/config (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/flash_header.c (100%)
 rename {board => arch/arm/boards}/freescale-mx35-3-stack/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/imx21ads/Makefile (100%)
 rename {board => arch/arm/boards}/imx21ads/config.h (100%)
 rename {board => arch/arm/boards}/imx21ads/env/bin/init (100%)
 rename {board => arch/arm/boards}/imx21ads/imx21ads.c (100%)
 rename {board => arch/arm/boards}/imx21ads/imx21ads.dox (100%)
 rename {board => arch/arm/boards}/imx21ads/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/imx27ads/Makefile (100%)
 rename {board => arch/arm/boards}/imx27ads/config.h (100%)
 rename {board => arch/arm/boards}/imx27ads/env/bin/_update (100%)
 rename {board => arch/arm/boards}/imx27ads/env/bin/boot (100%)
 rename {board => arch/arm/boards}/imx27ads/env/bin/init (100%)
 rename {board => arch/arm/boards}/imx27ads/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/imx27ads/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/imx27ads/env/config (100%)
 rename {board => arch/arm/boards}/imx27ads/imx27ads.c (100%)
 rename {board => arch/arm/boards}/imx27ads/imx27ads.dox (100%)
 rename {board => arch/arm/boards}/imx27ads/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/mmccpu/Makefile (100%)
 rename {board => arch/arm/boards}/mmccpu/config.h (100%)
 rename {board/kp_ukd_r1_num => arch/arm/boards/mmccpu}/env/bin/_update (100%)
 rename {board => arch/arm/boards}/mmccpu/env/bin/boot (100%)
 rename {board => arch/arm/boards}/mmccpu/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/mmccpu/env/bin/init (100%)
 rename {board => arch/arm/boards}/mmccpu/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/mmccpu/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/mmccpu/env/config (100%)
 rename {board => arch/arm/boards}/mmccpu/init.c (100%)
 rename {board => arch/arm/boards}/netx/Makefile (100%)
 rename {board => arch/arm/boards}/netx/config.h (100%)
 rename {board => arch/arm/boards}/netx/netx.c (100%)
 rename {board => arch/arm/boards}/netx/netx.dox (100%)
 rename {board => arch/arm/boards}/netx/platform.S (100%)
 rename {board => arch/arm/boards}/omap/Kconfig (100%)
 rename {board => arch/arm/boards}/omap/Makefile (100%)
 rename {board => arch/arm/boards}/omap/board-beagle.c (98%)
 rename {board => arch/arm/boards}/omap/board-omap3evm.c (98%)
 rename {board => arch/arm/boards}/omap/board-sdp343x.c (99%)
 rename {board => arch/arm/boards}/omap/board.h (96%)
 rename {board => arch/arm/boards}/omap/config.h (96%)
 rename {board => arch/arm/boards}/omap/devices-gpmc-nand.c (98%)
 rename {board => arch/arm/boards}/omap/env/bin/init (100%)
 rename {board => arch/arm/boards}/omap/platform.S (97%)
 rename {board => arch/arm/boards}/pcm037/Makefile (100%)
 rename {board => arch/arm/boards}/pcm037/config.h (100%)
 rename {board => arch/arm/boards}/pcm037/env/config (100%)
 rename {board => arch/arm/boards}/pcm037/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/pcm037/pcm037.c (100%)
 rename {board => arch/arm/boards}/pcm037/pcm037.dox (100%)
 rename {board => arch/arm/boards}/pcm038/Makefile (100%)
 rename {board => arch/arm/boards}/pcm038/config.h (100%)
 rename {board => arch/arm/boards}/pcm038/env/config (100%)
 rename {board => arch/arm/boards}/pcm038/lowlevel.c (100%)
 rename {board => arch/arm/boards}/pcm038/pcm038.c (100%)
 rename {board => arch/arm/boards}/pcm038/pcm038.dox (100%)
 rename {board => arch/arm/boards}/pcm038/pll_init.S (100%)
 rename {board => arch/arm/boards}/pcm043/Makefile (100%)
 rename {board => arch/arm/boards}/pcm043/config.h (100%)
 rename {board => arch/arm/boards}/pcm043/env/config (100%)
 rename {board => arch/arm/boards}/pcm043/lowlevel.c (100%)
 rename {board => arch/arm/boards}/pcm043/pcm043.c (100%)
 rename {board => arch/arm/boards}/pcm043/pcm043.dox (100%)
 rename {board => arch/arm/boards}/phycard-i.MX27/Makefile (100%)
 rename {board => arch/arm/boards}/phycard-i.MX27/config.h (100%)
 rename {board => arch/arm/boards}/phycard-i.MX27/env/config (100%)
 rename {board => arch/arm/boards}/phycard-i.MX27/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/phycard-i.MX27/pca100.c (100%)
 rename {board => arch/arm/boards}/phycard-i.MX27/pca100.dox (100%)
 rename {board => arch/arm/boards}/pm9263/Makefile (100%)
 rename {board => arch/arm/boards}/pm9263/config.h (100%)
 rename {board/mmccpu => arch/arm/boards/pm9263}/env/bin/_update (100%)
 rename {board => arch/arm/boards}/pm9263/env/bin/boot (100%)
 rename {board => arch/arm/boards}/pm9263/env/bin/hush_hack (100%)
 rename {board => arch/arm/boards}/pm9263/env/bin/init (100%)
 rename {board => arch/arm/boards}/pm9263/env/bin/update_kernel (100%)
 rename {board => arch/arm/boards}/pm9263/env/bin/update_root (100%)
 rename {board => arch/arm/boards}/pm9263/env/config (100%)
 rename {board => arch/arm/boards}/pm9263/init.c (100%)
 rename {board => arch/arm/boards}/scb9328/Makefile (100%)
 rename {board => arch/arm/boards}/scb9328/config.h (100%)
 rename {board => arch/arm/boards}/scb9328/env/bin/init (100%)
 rename {board => arch/arm/boards}/scb9328/lowlevel_init.S (100%)
 rename {board => arch/arm/boards}/scb9328/scb9328.c (100%)
 rename {board => arch/arm/boards}/scb9328/scb9328.dox (100%)
 rename {board => arch/blackfin/boards}/ipe337/Makefile (100%)
 rename {board => arch/blackfin/boards}/ipe337/barebox.lds.S (100%)
 rename {board => arch/blackfin/boards}/ipe337/cmd_alternate.c (100%)
 rename {board => arch/blackfin/boards}/ipe337/config.h (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/_alternate (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/_update (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/boot (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/init (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/magic.bin (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/reset_ageing (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/update_application (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/update_bareboxenv (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/update_kernel (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/update_persistent (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/bin/update_system (100%)
 rename {board => arch/blackfin/boards}/ipe337/env/config (100%)
 rename {board => arch/blackfin/boards}/ipe337/ipe337.c (100%)
 rename {board => arch/blackfin/boards}/ipe337/ipe337.dox (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/Makefile (100%)
 rename {board/phycore_mcf54xx => arch/m68k/boards/kp_ukd_r1_num}/env/bin/_update (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/bin/boot (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/bin/init (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/bin/pcidmaloop (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/bin/pciloop (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/bin/update_kernel (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/bin/update_root (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/env/config (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/highlevel_init.c (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/kp_ukd_r1_num.c (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/kp_ukd_r1_num.dox (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/lowlevel_init.c (100%)
 rename {board => arch/m68k/boards}/kp_ukd_r1_num/pci-stubs.c (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/Makefile (100%)
 rename {board/pm9263 => arch/m68k/boards/phycore_mcf54xx}/env/bin/_update (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/bin/boot (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/bin/init (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/bin/pcidmaloop (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/bin/pciloop (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/bin/update_kernel (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/bin/update_root (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/env/config (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/highlevel_init.c (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/lowlevel_init.c (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/pci-stubs.c (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/phyCore_MCF54xx.c (100%)
 rename {board => arch/m68k/boards}/phycore_mcf54xx/phyCore_MCF54xx.dox (100%)
 rename {board => arch/ppc/boards}/pcm030/Makefile (100%)
 rename {board => arch/ppc/boards}/pcm030/barebox.lds.S (100%)
 rename {board => arch/ppc/boards}/pcm030/config.h (100%)
 rename {board => arch/ppc/boards}/pcm030/mt46v32m16-75.h (100%)
 rename {board => arch/ppc/boards}/pcm030/pcm030.c (100%)
 rename {board => arch/ppc/boards}/pcm030/pcm030.dox (100%)
 rename {board/sandbox => arch/sandbox/board}/.gitignore (100%)
 rename {board/sandbox => arch/sandbox/board}/Makefile (100%)
 rename {board/sandbox => arch/sandbox/board}/barebox.lds.S (100%)
 rename {board/sandbox => arch/sandbox/board}/board.c (100%)
 rename {board/sandbox => arch/sandbox/board}/clock.c (100%)
 rename {board/sandbox => arch/sandbox/board}/config.h (100%)
 rename {board/sandbox => arch/sandbox/board}/console.c (100%)
 rename {board/sandbox => arch/sandbox/board}/env/bin/init (100%)
 rename {board/sandbox => arch/sandbox/board}/env/config (100%)
 rename {board/sandbox => arch/sandbox/board}/hostfile.c (100%)
 rename {board => arch/x86/boards}/x86_generic/Makefile (100%)
 rename {board => arch/x86/boards}/x86_generic/config.h (100%)
 rename {board => arch/x86/boards}/x86_generic/env/bin/boot (100%)
 rename {board => arch/x86/boards}/x86_generic/env/bin/init (100%)
 rename {board => arch/x86/boards}/x86_generic/env/config (100%)
 rename {board => arch/x86/boards}/x86_generic/generic_pc.c (100%)

diff --git a/Documentation/barebox-main.dox b/Documentation/barebox-main.dox
index 01c45c1..fb780e6 100644
--- a/Documentation/barebox-main.dox
+++ b/Documentation/barebox-main.dox
@@ -117,9 +117,9 @@ If everything goes well, the result is a file called @p barebox:
 
 @a barebox usually needs an environment for storing the configuration data.
 You can generate an environment using the example environment contained
-in board/sandbox/env:
+in arch/sanbox/board/env:
 
-@code # ./scripts/bareboxenv -s -p 0x10000 board/sandbox/env/ env.bin @endcode
+@code # ./scripts/bareboxenv -s -p 0x10000 arch/sanbox/board/env/ env.bin @endcode
 
 To get some files to play with you can generate a cramfs image:
 
diff --git a/Makefile b/Makefile
index 43818cb..f2695d0 100644
--- a/Makefile
+++ b/Makefile
@@ -851,11 +851,11 @@ include/asm:
 	$(Q)$(create-symlink)
 
 include/config.h: include/config/auto.conf
-	@echo '  SYMLINK $@ -> board/$(board-y)/config.h'
+	@echo '  SYMLINK $@ -> $(BOARD)/config.h'
 ifneq ($(KBUILD_SRC),)
-	$(Q)ln -fsn $(srctree)/board/$(board-y)/config.h $@
+	$(Q)ln -fsn $(srctree)/$(BOARD)/config.h $@
 else
-	@ln -fsn ../board/$(board-y)/config.h $@
+	@ln -fsn ../$(BOARD)/config.h $@
 endif
 
 # Generate some files
diff --git a/TODO b/TODO
index 08a7d99..6350799 100644
--- a/TODO
+++ b/TODO
@@ -33,7 +33,6 @@ TODO
 [-] Cleanup cpu/*. Many functions there are not cpu specific. For example the
     cache functions for arm are common for most arm processors. (done for ARM)
     (I will check this for m68k arch - csc 21.03.2008 19:56:24)
-[ ] Board support should go to arch/*/boards/*
 [ ] Move SoC specific header files from include/ to include/asm/arch/
 [ ] Several .c/.h files do not have GNU/copyright headers.
 [ ] The cramfs driver currently uses direct memory accesses instead of read().
@@ -108,4 +107,4 @@ DONE
     be any key, ctrl-c or a certain string. Maybe like this:
     countdown -m msg -t timeout -x [ctrl-c|anykey|string]
     If done, remove the corresponding stuff from common/main.c
-
+[X] Board support should go to arch/*/boards/*
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 1c9f24e..c59b9d6 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -117,7 +117,7 @@ maketools:
 PHONY += maketools
 
 ifneq ($(board-y),)
-BOARD := board/$(board-y)/
+BOARD := arch/arm/boards/$(board-y)/
 else
 BOARD :=
 endif
diff --git a/board/a9m2410/Makefile b/arch/arm/boards/a9m2410/Makefile
similarity index 100%
rename from board/a9m2410/Makefile
rename to arch/arm/boards/a9m2410/Makefile
diff --git a/board/a9m2410/a9m2410.c b/arch/arm/boards/a9m2410/a9m2410.c
similarity index 100%
rename from board/a9m2410/a9m2410.c
rename to arch/arm/boards/a9m2410/a9m2410.c
diff --git a/board/a9m2410/config.h b/arch/arm/boards/a9m2410/config.h
similarity index 100%
rename from board/a9m2410/config.h
rename to arch/arm/boards/a9m2410/config.h
diff --git a/board/a9m2410/env/bin/_update b/arch/arm/boards/a9m2410/env/bin/_update
similarity index 100%
rename from board/a9m2410/env/bin/_update
rename to arch/arm/boards/a9m2410/env/bin/_update
diff --git a/board/a9m2410/env/bin/boot b/arch/arm/boards/a9m2410/env/bin/boot
similarity index 100%
rename from board/a9m2410/env/bin/boot
rename to arch/arm/boards/a9m2410/env/bin/boot
diff --git a/board/a9m2410/env/bin/hush_hack b/arch/arm/boards/a9m2410/env/bin/hush_hack
similarity index 100%
rename from board/a9m2410/env/bin/hush_hack
rename to arch/arm/boards/a9m2410/env/bin/hush_hack
diff --git a/board/a9m2410/env/bin/init b/arch/arm/boards/a9m2410/env/bin/init
similarity index 100%
rename from board/a9m2410/env/bin/init
rename to arch/arm/boards/a9m2410/env/bin/init
diff --git a/board/a9m2410/env/bin/update_kernel b/arch/arm/boards/a9m2410/env/bin/update_kernel
similarity index 100%
rename from board/a9m2410/env/bin/update_kernel
rename to arch/arm/boards/a9m2410/env/bin/update_kernel
diff --git a/board/a9m2410/env/bin/update_root b/arch/arm/boards/a9m2410/env/bin/update_root
similarity index 100%
rename from board/a9m2410/env/bin/update_root
rename to arch/arm/boards/a9m2410/env/bin/update_root
diff --git a/board/a9m2410/env/config b/arch/arm/boards/a9m2410/env/config
similarity index 100%
rename from board/a9m2410/env/config
rename to arch/arm/boards/a9m2410/env/config
diff --git a/board/a9m2410/lowlevel_init.S b/arch/arm/boards/a9m2410/lowlevel_init.S
similarity index 100%
rename from board/a9m2410/lowlevel_init.S
rename to arch/arm/boards/a9m2410/lowlevel_init.S
diff --git a/board/a9m2440/Makefile b/arch/arm/boards/a9m2440/Makefile
similarity index 100%
rename from board/a9m2440/Makefile
rename to arch/arm/boards/a9m2440/Makefile
diff --git a/board/a9m2440/a9m2410dev.c b/arch/arm/boards/a9m2440/a9m2410dev.c
similarity index 100%
rename from board/a9m2440/a9m2410dev.c
rename to arch/arm/boards/a9m2440/a9m2410dev.c
diff --git a/board/a9m2440/a9m2440.c b/arch/arm/boards/a9m2440/a9m2440.c
similarity index 100%
rename from board/a9m2440/a9m2440.c
rename to arch/arm/boards/a9m2440/a9m2440.c
diff --git a/board/a9m2440/baseboards.h b/arch/arm/boards/a9m2440/baseboards.h
similarity index 100%
rename from board/a9m2440/baseboards.h
rename to arch/arm/boards/a9m2440/baseboards.h
diff --git a/board/a9m2440/config.h b/arch/arm/boards/a9m2440/config.h
similarity index 100%
rename from board/a9m2440/config.h
rename to arch/arm/boards/a9m2440/config.h
diff --git a/board/a9m2440/env/bin/_update b/arch/arm/boards/a9m2440/env/bin/_update
similarity index 100%
rename from board/a9m2440/env/bin/_update
rename to arch/arm/boards/a9m2440/env/bin/_update
diff --git a/board/a9m2440/env/bin/boot b/arch/arm/boards/a9m2440/env/bin/boot
similarity index 100%
rename from board/a9m2440/env/bin/boot
rename to arch/arm/boards/a9m2440/env/bin/boot
diff --git a/board/a9m2440/env/bin/hush_hack b/arch/arm/boards/a9m2440/env/bin/hush_hack
similarity index 100%
rename from board/a9m2440/env/bin/hush_hack
rename to arch/arm/boards/a9m2440/env/bin/hush_hack
diff --git a/board/a9m2440/env/bin/init b/arch/arm/boards/a9m2440/env/bin/init
similarity index 100%
rename from board/a9m2440/env/bin/init
rename to arch/arm/boards/a9m2440/env/bin/init
diff --git a/board/a9m2440/env/bin/update_kernel b/arch/arm/boards/a9m2440/env/bin/update_kernel
similarity index 100%
rename from board/a9m2440/env/bin/update_kernel
rename to arch/arm/boards/a9m2440/env/bin/update_kernel
diff --git a/board/a9m2440/env/bin/update_root b/arch/arm/boards/a9m2440/env/bin/update_root
similarity index 100%
rename from board/a9m2440/env/bin/update_root
rename to arch/arm/boards/a9m2440/env/bin/update_root
diff --git a/board/a9m2440/env/config b/arch/arm/boards/a9m2440/env/config
similarity index 100%
rename from board/a9m2440/env/config
rename to arch/arm/boards/a9m2440/env/config
diff --git a/board/a9m2440/lowlevel_init.S b/arch/arm/boards/a9m2440/lowlevel_init.S
similarity index 100%
rename from board/a9m2440/lowlevel_init.S
rename to arch/arm/boards/a9m2440/lowlevel_init.S
diff --git a/board/at91sam9260ek/Makefile b/arch/arm/boards/at91sam9260ek/Makefile
similarity index 100%
rename from board/at91sam9260ek/Makefile
rename to arch/arm/boards/at91sam9260ek/Makefile
diff --git a/board/at91sam9260ek/config.h b/arch/arm/boards/at91sam9260ek/config.h
similarity index 100%
rename from board/at91sam9260ek/config.h
rename to arch/arm/boards/at91sam9260ek/config.h
diff --git a/board/at91sam9260ek/env/bin/_update b/arch/arm/boards/at91sam9260ek/env/bin/_update
similarity index 100%
rename from board/at91sam9260ek/env/bin/_update
rename to arch/arm/boards/at91sam9260ek/env/bin/_update
diff --git a/board/at91sam9260ek/env/bin/boot b/arch/arm/boards/at91sam9260ek/env/bin/boot
similarity index 100%
rename from board/at91sam9260ek/env/bin/boot
rename to arch/arm/boards/at91sam9260ek/env/bin/boot
diff --git a/board/at91sam9260ek/env/bin/init b/arch/arm/boards/at91sam9260ek/env/bin/init
similarity index 100%
rename from board/at91sam9260ek/env/bin/init
rename to arch/arm/boards/at91sam9260ek/env/bin/init
diff --git a/board/at91sam9260ek/env/bin/pcidmaloop b/arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop
similarity index 100%
rename from board/at91sam9260ek/env/bin/pcidmaloop
rename to arch/arm/boards/at91sam9260ek/env/bin/pcidmaloop
diff --git a/board/at91sam9260ek/env/bin/pciloop b/arch/arm/boards/at91sam9260ek/env/bin/pciloop
similarity index 100%
rename from board/at91sam9260ek/env/bin/pciloop
rename to arch/arm/boards/at91sam9260ek/env/bin/pciloop
diff --git a/board/at91sam9260ek/env/bin/update_kernel b/arch/arm/boards/at91sam9260ek/env/bin/update_kernel
similarity index 100%
rename from board/at91sam9260ek/env/bin/update_kernel
rename to arch/arm/boards/at91sam9260ek/env/bin/update_kernel
diff --git a/board/at91sam9260ek/env/bin/update_root b/arch/arm/boards/at91sam9260ek/env/bin/update_root
similarity index 100%
rename from board/at91sam9260ek/env/bin/update_root
rename to arch/arm/boards/at91sam9260ek/env/bin/update_root
diff --git a/board/at91sam9260ek/env/config b/arch/arm/boards/at91sam9260ek/env/config
similarity index 100%
rename from board/at91sam9260ek/env/config
rename to arch/arm/boards/at91sam9260ek/env/config
diff --git a/board/at91sam9260ek/init.c b/arch/arm/boards/at91sam9260ek/init.c
similarity index 100%
rename from board/at91sam9260ek/init.c
rename to arch/arm/boards/at91sam9260ek/init.c
diff --git a/board/at91sam9260ek/lowlevel_init.S b/arch/arm/boards/at91sam9260ek/lowlevel_init.S
similarity index 100%
rename from board/at91sam9260ek/lowlevel_init.S
rename to arch/arm/boards/at91sam9260ek/lowlevel_init.S
diff --git a/board/at91sam9263ek/Makefile b/arch/arm/boards/at91sam9263ek/Makefile
similarity index 100%
rename from board/at91sam9263ek/Makefile
rename to arch/arm/boards/at91sam9263ek/Makefile
diff --git a/board/at91sam9263ek/config.h b/arch/arm/boards/at91sam9263ek/config.h
similarity index 100%
rename from board/at91sam9263ek/config.h
rename to arch/arm/boards/at91sam9263ek/config.h
diff --git a/board/at91sam9263ek/env/bin/_update b/arch/arm/boards/at91sam9263ek/env/bin/_update
similarity index 100%
rename from board/at91sam9263ek/env/bin/_update
rename to arch/arm/boards/at91sam9263ek/env/bin/_update
diff --git a/board/at91sam9263ek/env/bin/boot b/arch/arm/boards/at91sam9263ek/env/bin/boot
similarity index 100%
rename from board/at91sam9263ek/env/bin/boot
rename to arch/arm/boards/at91sam9263ek/env/bin/boot
diff --git a/board/at91sam9263ek/env/bin/hush_hack b/arch/arm/boards/at91sam9263ek/env/bin/hush_hack
similarity index 100%
rename from board/at91sam9263ek/env/bin/hush_hack
rename to arch/arm/boards/at91sam9263ek/env/bin/hush_hack
diff --git a/board/at91sam9263ek/env/bin/init b/arch/arm/boards/at91sam9263ek/env/bin/init
similarity index 100%
rename from board/at91sam9263ek/env/bin/init
rename to arch/arm/boards/at91sam9263ek/env/bin/init
diff --git a/board/at91sam9263ek/env/bin/update_barebox_xmodem b/arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xmodem
similarity index 100%
rename from board/at91sam9263ek/env/bin/update_barebox_xmodem
rename to arch/arm/boards/at91sam9263ek/env/bin/update_barebox_xmodem
diff --git a/board/at91sam9263ek/env/bin/update_kernel b/arch/arm/boards/at91sam9263ek/env/bin/update_kernel
similarity index 100%
rename from board/at91sam9263ek/env/bin/update_kernel
rename to arch/arm/boards/at91sam9263ek/env/bin/update_kernel
diff --git a/board/at91sam9263ek/env/bin/update_root b/arch/arm/boards/at91sam9263ek/env/bin/update_root
similarity index 100%
rename from board/at91sam9263ek/env/bin/update_root
rename to arch/arm/boards/at91sam9263ek/env/bin/update_root
diff --git a/board/at91sam9263ek/env/config b/arch/arm/boards/at91sam9263ek/env/config
similarity index 100%
rename from board/at91sam9263ek/env/config
rename to arch/arm/boards/at91sam9263ek/env/config
diff --git a/board/at91sam9263ek/init.c b/arch/arm/boards/at91sam9263ek/init.c
similarity index 100%
rename from board/at91sam9263ek/init.c
rename to arch/arm/boards/at91sam9263ek/init.c
diff --git a/board/edb93xx/Makefile b/arch/arm/boards/edb93xx/Makefile
similarity index 100%
rename from board/edb93xx/Makefile
rename to arch/arm/boards/edb93xx/Makefile
diff --git a/board/edb93xx/config.h b/arch/arm/boards/edb93xx/config.h
similarity index 100%
rename from board/edb93xx/config.h
rename to arch/arm/boards/edb93xx/config.h
diff --git a/board/edb93xx/early_udelay.h b/arch/arm/boards/edb93xx/early_udelay.h
similarity index 100%
rename from board/edb93xx/early_udelay.h
rename to arch/arm/boards/edb93xx/early_udelay.h
diff --git a/board/edb93xx/edb93xx.c b/arch/arm/boards/edb93xx/edb93xx.c
similarity index 100%
rename from board/edb93xx/edb93xx.c
rename to arch/arm/boards/edb93xx/edb93xx.c
diff --git a/board/edb93xx/edb93xx.dox b/arch/arm/boards/edb93xx/edb93xx.dox
similarity index 100%
rename from board/edb93xx/edb93xx.dox
rename to arch/arm/boards/edb93xx/edb93xx.dox
diff --git a/board/edb93xx/edb93xx.h b/arch/arm/boards/edb93xx/edb93xx.h
similarity index 100%
rename from board/edb93xx/edb93xx.h
rename to arch/arm/boards/edb93xx/edb93xx.h
diff --git a/board/edb93xx/env/bin/boot b/arch/arm/boards/edb93xx/env/bin/boot
similarity index 100%
rename from board/edb93xx/env/bin/boot
rename to arch/arm/boards/edb93xx/env/bin/boot
diff --git a/board/edb93xx/env/bin/flash_partition b/arch/arm/boards/edb93xx/env/bin/flash_partition
similarity index 100%
rename from board/edb93xx/env/bin/flash_partition
rename to arch/arm/boards/edb93xx/env/bin/flash_partition
diff --git a/board/edb93xx/env/bin/init b/arch/arm/boards/edb93xx/env/bin/init
similarity index 100%
rename from board/edb93xx/env/bin/init
rename to arch/arm/boards/edb93xx/env/bin/init
diff --git a/board/edb93xx/env/bin/set_nor_parts b/arch/arm/boards/edb93xx/env/bin/set_nor_parts
similarity index 100%
rename from board/edb93xx/env/bin/set_nor_parts
rename to arch/arm/boards/edb93xx/env/bin/set_nor_parts
diff --git a/board/edb93xx/env/bin/update_kernel b/arch/arm/boards/edb93xx/env/bin/update_kernel
similarity index 100%
rename from board/edb93xx/env/bin/update_kernel
rename to arch/arm/boards/edb93xx/env/bin/update_kernel
diff --git a/board/edb93xx/env/bin/update_rootfs b/arch/arm/boards/edb93xx/env/bin/update_rootfs
similarity index 100%
rename from board/edb93xx/env/bin/update_rootfs
rename to arch/arm/boards/edb93xx/env/bin/update_rootfs
diff --git a/board/edb93xx/env/config b/arch/arm/boards/edb93xx/env/config
similarity index 100%
rename from board/edb93xx/env/config
rename to arch/arm/boards/edb93xx/env/config
diff --git a/board/edb93xx/flash_cfg.c b/arch/arm/boards/edb93xx/flash_cfg.c
similarity index 100%
rename from board/edb93xx/flash_cfg.c
rename to arch/arm/boards/edb93xx/flash_cfg.c
diff --git a/board/edb93xx/pll_cfg.c b/arch/arm/boards/edb93xx/pll_cfg.c
similarity index 100%
rename from board/edb93xx/pll_cfg.c
rename to arch/arm/boards/edb93xx/pll_cfg.c
diff --git a/board/edb93xx/pll_cfg.h b/arch/arm/boards/edb93xx/pll_cfg.h
similarity index 100%
rename from board/edb93xx/pll_cfg.h
rename to arch/arm/boards/edb93xx/pll_cfg.h
diff --git a/board/edb93xx/sdram_cfg.c b/arch/arm/boards/edb93xx/sdram_cfg.c
similarity index 100%
rename from board/edb93xx/sdram_cfg.c
rename to arch/arm/boards/edb93xx/sdram_cfg.c
diff --git a/board/edb93xx/sdram_cfg.h b/arch/arm/boards/edb93xx/sdram_cfg.h
similarity index 100%
rename from board/edb93xx/sdram_cfg.h
rename to arch/arm/boards/edb93xx/sdram_cfg.h
diff --git a/board/eukrea_cpuimx25/Makefile b/arch/arm/boards/eukrea_cpuimx25/Makefile
similarity index 100%
rename from board/eukrea_cpuimx25/Makefile
rename to arch/arm/boards/eukrea_cpuimx25/Makefile
diff --git a/board/eukrea_cpuimx25/config.h b/arch/arm/boards/eukrea_cpuimx25/config.h
similarity index 100%
rename from board/eukrea_cpuimx25/config.h
rename to arch/arm/boards/eukrea_cpuimx25/config.h
diff --git a/board/eukrea_cpuimx25/env/bin/_update b/arch/arm/boards/eukrea_cpuimx25/env/bin/_update
similarity index 100%
rename from board/eukrea_cpuimx25/env/bin/_update
rename to arch/arm/boards/eukrea_cpuimx25/env/bin/_update
diff --git a/board/eukrea_cpuimx25/env/bin/boot b/arch/arm/boards/eukrea_cpuimx25/env/bin/boot
similarity index 100%
rename from board/eukrea_cpuimx25/env/bin/boot
rename to arch/arm/boards/eukrea_cpuimx25/env/bin/boot
diff --git a/board/eukrea_cpuimx25/env/bin/hush_hack b/arch/arm/boards/eukrea_cpuimx25/env/bin/hush_hack
similarity index 100%
rename from board/eukrea_cpuimx25/env/bin/hush_hack
rename to arch/arm/boards/eukrea_cpuimx25/env/bin/hush_hack
diff --git a/board/eukrea_cpuimx25/env/bin/init b/arch/arm/boards/eukrea_cpuimx25/env/bin/init
similarity index 100%
rename from board/eukrea_cpuimx25/env/bin/init
rename to arch/arm/boards/eukrea_cpuimx25/env/bin/init
diff --git a/board/eukrea_cpuimx25/env/bin/update_kernel b/arch/arm/boards/eukrea_cpuimx25/env/bin/update_kernel
similarity index 100%
rename from board/eukrea_cpuimx25/env/bin/update_kernel
rename to arch/arm/boards/eukrea_cpuimx25/env/bin/update_kernel
diff --git a/board/eukrea_cpuimx25/env/bin/update_root b/arch/arm/boards/eukrea_cpuimx25/env/bin/update_root
similarity index 100%
rename from board/eukrea_cpuimx25/env/bin/update_root
rename to arch/arm/boards/eukrea_cpuimx25/env/bin/update_root
diff --git a/board/eukrea_cpuimx25/env/config b/arch/arm/boards/eukrea_cpuimx25/env/config
similarity index 100%
rename from board/eukrea_cpuimx25/env/config
rename to arch/arm/boards/eukrea_cpuimx25/env/config
diff --git a/board/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
similarity index 100%
rename from board/eukrea_cpuimx25/eukrea_cpuimx25.c
rename to arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
diff --git a/board/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
similarity index 100%
rename from board/eukrea_cpuimx25/lowlevel.c
rename to arch/arm/boards/eukrea_cpuimx25/lowlevel.c
diff --git a/board/eukrea_cpuimx27/Makefile b/arch/arm/boards/eukrea_cpuimx27/Makefile
similarity index 100%
rename from board/eukrea_cpuimx27/Makefile
rename to arch/arm/boards/eukrea_cpuimx27/Makefile
diff --git a/board/eukrea_cpuimx27/config.h b/arch/arm/boards/eukrea_cpuimx27/config.h
similarity index 100%
rename from board/eukrea_cpuimx27/config.h
rename to arch/arm/boards/eukrea_cpuimx27/config.h
diff --git a/board/eukrea_cpuimx27/env/bin/_update b/arch/arm/boards/eukrea_cpuimx27/env/bin/_update
similarity index 100%
rename from board/eukrea_cpuimx27/env/bin/_update
rename to arch/arm/boards/eukrea_cpuimx27/env/bin/_update
diff --git a/board/eukrea_cpuimx27/env/bin/boot b/arch/arm/boards/eukrea_cpuimx27/env/bin/boot
similarity index 100%
rename from board/eukrea_cpuimx27/env/bin/boot
rename to arch/arm/boards/eukrea_cpuimx27/env/bin/boot
diff --git a/board/eukrea_cpuimx27/env/bin/hush_hack b/arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack
similarity index 100%
rename from board/eukrea_cpuimx27/env/bin/hush_hack
rename to arch/arm/boards/eukrea_cpuimx27/env/bin/hush_hack
diff --git a/board/eukrea_cpuimx27/env/bin/init b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
similarity index 100%
rename from board/eukrea_cpuimx27/env/bin/init
rename to arch/arm/boards/eukrea_cpuimx27/env/bin/init
diff --git a/board/eukrea_cpuimx27/env/bin/update_kernel b/arch/arm/boards/eukrea_cpuimx27/env/bin/update_kernel
similarity index 100%
rename from board/eukrea_cpuimx27/env/bin/update_kernel
rename to arch/arm/boards/eukrea_cpuimx27/env/bin/update_kernel
diff --git a/board/eukrea_cpuimx27/env/bin/update_root b/arch/arm/boards/eukrea_cpuimx27/env/bin/update_root
similarity index 100%
rename from board/eukrea_cpuimx27/env/bin/update_root
rename to arch/arm/boards/eukrea_cpuimx27/env/bin/update_root
diff --git a/board/eukrea_cpuimx27/env/config b/arch/arm/boards/eukrea_cpuimx27/env/config
similarity index 100%
rename from board/eukrea_cpuimx27/env/config
rename to arch/arm/boards/eukrea_cpuimx27/env/config
diff --git a/board/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
similarity index 100%
rename from board/eukrea_cpuimx27/eukrea_cpuimx27.c
rename to arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
diff --git a/board/eukrea_cpuimx27/eukrea_cpuimx27.dox b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox
similarity index 100%
rename from board/eukrea_cpuimx27/eukrea_cpuimx27.dox
rename to arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.dox
diff --git a/board/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
similarity index 100%
rename from board/eukrea_cpuimx27/lowlevel_init.S
rename to arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
diff --git a/board/eukrea_cpuimx35/Makefile b/arch/arm/boards/eukrea_cpuimx35/Makefile
similarity index 100%
rename from board/eukrea_cpuimx35/Makefile
rename to arch/arm/boards/eukrea_cpuimx35/Makefile
diff --git a/board/eukrea_cpuimx35/config.h b/arch/arm/boards/eukrea_cpuimx35/config.h
similarity index 100%
rename from board/eukrea_cpuimx35/config.h
rename to arch/arm/boards/eukrea_cpuimx35/config.h
diff --git a/board/eukrea_cpuimx35/env/bin/_update b/arch/arm/boards/eukrea_cpuimx35/env/bin/_update
similarity index 100%
rename from board/eukrea_cpuimx35/env/bin/_update
rename to arch/arm/boards/eukrea_cpuimx35/env/bin/_update
diff --git a/board/eukrea_cpuimx35/env/bin/boot b/arch/arm/boards/eukrea_cpuimx35/env/bin/boot
similarity index 100%
rename from board/eukrea_cpuimx35/env/bin/boot
rename to arch/arm/boards/eukrea_cpuimx35/env/bin/boot
diff --git a/board/eukrea_cpuimx35/env/bin/hush_hack b/arch/arm/boards/eukrea_cpuimx35/env/bin/hush_hack
similarity index 100%
rename from board/eukrea_cpuimx35/env/bin/hush_hack
rename to arch/arm/boards/eukrea_cpuimx35/env/bin/hush_hack
diff --git a/board/eukrea_cpuimx35/env/bin/init b/arch/arm/boards/eukrea_cpuimx35/env/bin/init
similarity index 100%
rename from board/eukrea_cpuimx35/env/bin/init
rename to arch/arm/boards/eukrea_cpuimx35/env/bin/init
diff --git a/board/eukrea_cpuimx35/env/bin/update_kernel b/arch/arm/boards/eukrea_cpuimx35/env/bin/update_kernel
similarity index 100%
rename from board/eukrea_cpuimx35/env/bin/update_kernel
rename to arch/arm/boards/eukrea_cpuimx35/env/bin/update_kernel
diff --git a/board/eukrea_cpuimx35/env/bin/update_root b/arch/arm/boards/eukrea_cpuimx35/env/bin/update_root
similarity index 100%
rename from board/eukrea_cpuimx35/env/bin/update_root
rename to arch/arm/boards/eukrea_cpuimx35/env/bin/update_root
diff --git a/board/eukrea_cpuimx35/env/config b/arch/arm/boards/eukrea_cpuimx35/env/config
similarity index 100%
rename from board/eukrea_cpuimx35/env/config
rename to arch/arm/boards/eukrea_cpuimx35/env/config
diff --git a/board/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
similarity index 100%
rename from board/eukrea_cpuimx35/eukrea_cpuimx35.c
rename to arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
diff --git a/board/eukrea_cpuimx35/eukrea_cpuimx35.dox b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox
similarity index 100%
rename from board/eukrea_cpuimx35/eukrea_cpuimx35.dox
rename to arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.dox
diff --git a/board/eukrea_cpuimx35/flash_header.c b/arch/arm/boards/eukrea_cpuimx35/flash_header.c
similarity index 100%
rename from board/eukrea_cpuimx35/flash_header.c
rename to arch/arm/boards/eukrea_cpuimx35/flash_header.c
diff --git a/board/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
similarity index 100%
rename from board/eukrea_cpuimx35/lowlevel.c
rename to arch/arm/boards/eukrea_cpuimx35/lowlevel.c
diff --git a/board/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3-stack/3stack.c
similarity index 100%
rename from board/freescale-mx25-3-stack/3stack.c
rename to arch/arm/boards/freescale-mx25-3-stack/3stack.c
diff --git a/board/freescale-mx25-3-stack/Makefile b/arch/arm/boards/freescale-mx25-3-stack/Makefile
similarity index 100%
rename from board/freescale-mx25-3-stack/Makefile
rename to arch/arm/boards/freescale-mx25-3-stack/Makefile
diff --git a/board/freescale-mx25-3-stack/config.h b/arch/arm/boards/freescale-mx25-3-stack/config.h
similarity index 100%
rename from board/freescale-mx25-3-stack/config.h
rename to arch/arm/boards/freescale-mx25-3-stack/config.h
diff --git a/board/freescale-mx25-3-stack/env/bin/_update b/arch/arm/boards/freescale-mx25-3-stack/env/bin/_update
similarity index 100%
rename from board/freescale-mx25-3-stack/env/bin/_update
rename to arch/arm/boards/freescale-mx25-3-stack/env/bin/_update
diff --git a/board/freescale-mx25-3-stack/env/bin/boot b/arch/arm/boards/freescale-mx25-3-stack/env/bin/boot
similarity index 100%
rename from board/freescale-mx25-3-stack/env/bin/boot
rename to arch/arm/boards/freescale-mx25-3-stack/env/bin/boot
diff --git a/board/freescale-mx25-3-stack/env/bin/hush_hack b/arch/arm/boards/freescale-mx25-3-stack/env/bin/hush_hack
similarity index 100%
rename from board/freescale-mx25-3-stack/env/bin/hush_hack
rename to arch/arm/boards/freescale-mx25-3-stack/env/bin/hush_hack
diff --git a/board/freescale-mx25-3-stack/env/bin/init b/arch/arm/boards/freescale-mx25-3-stack/env/bin/init
similarity index 100%
rename from board/freescale-mx25-3-stack/env/bin/init
rename to arch/arm/boards/freescale-mx25-3-stack/env/bin/init
diff --git a/board/freescale-mx25-3-stack/env/bin/update_kernel b/arch/arm/boards/freescale-mx25-3-stack/env/bin/update_kernel
similarity index 100%
rename from board/freescale-mx25-3-stack/env/bin/update_kernel
rename to arch/arm/boards/freescale-mx25-3-stack/env/bin/update_kernel
diff --git a/board/freescale-mx25-3-stack/env/bin/update_root b/arch/arm/boards/freescale-mx25-3-stack/env/bin/update_root
similarity index 100%
rename from board/freescale-mx25-3-stack/env/bin/update_root
rename to arch/arm/boards/freescale-mx25-3-stack/env/bin/update_root
diff --git a/board/freescale-mx25-3-stack/env/config b/arch/arm/boards/freescale-mx25-3-stack/env/config
similarity index 100%
rename from board/freescale-mx25-3-stack/env/config
rename to arch/arm/boards/freescale-mx25-3-stack/env/config
diff --git a/board/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
similarity index 100%
rename from board/freescale-mx25-3-stack/lowlevel_init.S
rename to arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
diff --git a/board/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3-stack/3stack.c
similarity index 100%
rename from board/freescale-mx35-3-stack/3stack.c
rename to arch/arm/boards/freescale-mx35-3-stack/3stack.c
diff --git a/board/freescale-mx35-3-stack/3stack.dox b/arch/arm/boards/freescale-mx35-3-stack/3stack.dox
similarity index 100%
rename from board/freescale-mx35-3-stack/3stack.dox
rename to arch/arm/boards/freescale-mx35-3-stack/3stack.dox
diff --git a/board/freescale-mx35-3-stack/Makefile b/arch/arm/boards/freescale-mx35-3-stack/Makefile
similarity index 100%
rename from board/freescale-mx35-3-stack/Makefile
rename to arch/arm/boards/freescale-mx35-3-stack/Makefile
diff --git a/board/freescale-mx35-3-stack/board-mx35_3stack.h b/arch/arm/boards/freescale-mx35-3-stack/board-mx35_3stack.h
similarity index 100%
rename from board/freescale-mx35-3-stack/board-mx35_3stack.h
rename to arch/arm/boards/freescale-mx35-3-stack/board-mx35_3stack.h
diff --git a/board/freescale-mx35-3-stack/config.h b/arch/arm/boards/freescale-mx35-3-stack/config.h
similarity index 100%
rename from board/freescale-mx35-3-stack/config.h
rename to arch/arm/boards/freescale-mx35-3-stack/config.h
diff --git a/board/freescale-mx35-3-stack/env/bin/_update b/arch/arm/boards/freescale-mx35-3-stack/env/bin/_update
similarity index 100%
rename from board/freescale-mx35-3-stack/env/bin/_update
rename to arch/arm/boards/freescale-mx35-3-stack/env/bin/_update
diff --git a/board/freescale-mx35-3-stack/env/bin/boot b/arch/arm/boards/freescale-mx35-3-stack/env/bin/boot
similarity index 100%
rename from board/freescale-mx35-3-stack/env/bin/boot
rename to arch/arm/boards/freescale-mx35-3-stack/env/bin/boot
diff --git a/board/freescale-mx35-3-stack/env/bin/hush_hack b/arch/arm/boards/freescale-mx35-3-stack/env/bin/hush_hack
similarity index 100%
rename from board/freescale-mx35-3-stack/env/bin/hush_hack
rename to arch/arm/boards/freescale-mx35-3-stack/env/bin/hush_hack
diff --git a/board/freescale-mx35-3-stack/env/bin/init b/arch/arm/boards/freescale-mx35-3-stack/env/bin/init
similarity index 100%
rename from board/freescale-mx35-3-stack/env/bin/init
rename to arch/arm/boards/freescale-mx35-3-stack/env/bin/init
diff --git a/board/freescale-mx35-3-stack/env/bin/update_kernel b/arch/arm/boards/freescale-mx35-3-stack/env/bin/update_kernel
similarity index 100%
rename from board/freescale-mx35-3-stack/env/bin/update_kernel
rename to arch/arm/boards/freescale-mx35-3-stack/env/bin/update_kernel
diff --git a/board/freescale-mx35-3-stack/env/bin/update_rootfs b/arch/arm/boards/freescale-mx35-3-stack/env/bin/update_rootfs
similarity index 100%
rename from board/freescale-mx35-3-stack/env/bin/update_rootfs
rename to arch/arm/boards/freescale-mx35-3-stack/env/bin/update_rootfs
diff --git a/board/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3-stack/env/config
similarity index 100%
rename from board/freescale-mx35-3-stack/env/config
rename to arch/arm/boards/freescale-mx35-3-stack/env/config
diff --git a/board/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3-stack/flash_header.c
similarity index 100%
rename from board/freescale-mx35-3-stack/flash_header.c
rename to arch/arm/boards/freescale-mx35-3-stack/flash_header.c
diff --git a/board/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
similarity index 100%
rename from board/freescale-mx35-3-stack/lowlevel_init.S
rename to arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
diff --git a/board/imx21ads/Makefile b/arch/arm/boards/imx21ads/Makefile
similarity index 100%
rename from board/imx21ads/Makefile
rename to arch/arm/boards/imx21ads/Makefile
diff --git a/board/imx21ads/config.h b/arch/arm/boards/imx21ads/config.h
similarity index 100%
rename from board/imx21ads/config.h
rename to arch/arm/boards/imx21ads/config.h
diff --git a/board/imx21ads/env/bin/init b/arch/arm/boards/imx21ads/env/bin/init
similarity index 100%
rename from board/imx21ads/env/bin/init
rename to arch/arm/boards/imx21ads/env/bin/init
diff --git a/board/imx21ads/imx21ads.c b/arch/arm/boards/imx21ads/imx21ads.c
similarity index 100%
rename from board/imx21ads/imx21ads.c
rename to arch/arm/boards/imx21ads/imx21ads.c
diff --git a/board/imx21ads/imx21ads.dox b/arch/arm/boards/imx21ads/imx21ads.dox
similarity index 100%
rename from board/imx21ads/imx21ads.dox
rename to arch/arm/boards/imx21ads/imx21ads.dox
diff --git a/board/imx21ads/lowlevel_init.S b/arch/arm/boards/imx21ads/lowlevel_init.S
similarity index 100%
rename from board/imx21ads/lowlevel_init.S
rename to arch/arm/boards/imx21ads/lowlevel_init.S
diff --git a/board/imx27ads/Makefile b/arch/arm/boards/imx27ads/Makefile
similarity index 100%
rename from board/imx27ads/Makefile
rename to arch/arm/boards/imx27ads/Makefile
diff --git a/board/imx27ads/config.h b/arch/arm/boards/imx27ads/config.h
similarity index 100%
rename from board/imx27ads/config.h
rename to arch/arm/boards/imx27ads/config.h
diff --git a/board/imx27ads/env/bin/_update b/arch/arm/boards/imx27ads/env/bin/_update
similarity index 100%
rename from board/imx27ads/env/bin/_update
rename to arch/arm/boards/imx27ads/env/bin/_update
diff --git a/board/imx27ads/env/bin/boot b/arch/arm/boards/imx27ads/env/bin/boot
similarity index 100%
rename from board/imx27ads/env/bin/boot
rename to arch/arm/boards/imx27ads/env/bin/boot
diff --git a/board/imx27ads/env/bin/init b/arch/arm/boards/imx27ads/env/bin/init
similarity index 100%
rename from board/imx27ads/env/bin/init
rename to arch/arm/boards/imx27ads/env/bin/init
diff --git a/board/imx27ads/env/bin/update_kernel b/arch/arm/boards/imx27ads/env/bin/update_kernel
similarity index 100%
rename from board/imx27ads/env/bin/update_kernel
rename to arch/arm/boards/imx27ads/env/bin/update_kernel
diff --git a/board/imx27ads/env/bin/update_root b/arch/arm/boards/imx27ads/env/bin/update_root
similarity index 100%
rename from board/imx27ads/env/bin/update_root
rename to arch/arm/boards/imx27ads/env/bin/update_root
diff --git a/board/imx27ads/env/config b/arch/arm/boards/imx27ads/env/config
similarity index 100%
rename from board/imx27ads/env/config
rename to arch/arm/boards/imx27ads/env/config
diff --git a/board/imx27ads/imx27ads.c b/arch/arm/boards/imx27ads/imx27ads.c
similarity index 100%
rename from board/imx27ads/imx27ads.c
rename to arch/arm/boards/imx27ads/imx27ads.c
diff --git a/board/imx27ads/imx27ads.dox b/arch/arm/boards/imx27ads/imx27ads.dox
similarity index 100%
rename from board/imx27ads/imx27ads.dox
rename to arch/arm/boards/imx27ads/imx27ads.dox
diff --git a/board/imx27ads/lowlevel_init.S b/arch/arm/boards/imx27ads/lowlevel_init.S
similarity index 100%
rename from board/imx27ads/lowlevel_init.S
rename to arch/arm/boards/imx27ads/lowlevel_init.S
diff --git a/board/mmccpu/Makefile b/arch/arm/boards/mmccpu/Makefile
similarity index 100%
rename from board/mmccpu/Makefile
rename to arch/arm/boards/mmccpu/Makefile
diff --git a/board/mmccpu/config.h b/arch/arm/boards/mmccpu/config.h
similarity index 100%
rename from board/mmccpu/config.h
rename to arch/arm/boards/mmccpu/config.h
diff --git a/board/kp_ukd_r1_num/env/bin/_update b/arch/arm/boards/mmccpu/env/bin/_update
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/_update
rename to arch/arm/boards/mmccpu/env/bin/_update
diff --git a/board/mmccpu/env/bin/boot b/arch/arm/boards/mmccpu/env/bin/boot
similarity index 100%
rename from board/mmccpu/env/bin/boot
rename to arch/arm/boards/mmccpu/env/bin/boot
diff --git a/board/mmccpu/env/bin/hush_hack b/arch/arm/boards/mmccpu/env/bin/hush_hack
similarity index 100%
rename from board/mmccpu/env/bin/hush_hack
rename to arch/arm/boards/mmccpu/env/bin/hush_hack
diff --git a/board/mmccpu/env/bin/init b/arch/arm/boards/mmccpu/env/bin/init
similarity index 100%
rename from board/mmccpu/env/bin/init
rename to arch/arm/boards/mmccpu/env/bin/init
diff --git a/board/mmccpu/env/bin/update_kernel b/arch/arm/boards/mmccpu/env/bin/update_kernel
similarity index 100%
rename from board/mmccpu/env/bin/update_kernel
rename to arch/arm/boards/mmccpu/env/bin/update_kernel
diff --git a/board/mmccpu/env/bin/update_root b/arch/arm/boards/mmccpu/env/bin/update_root
similarity index 100%
rename from board/mmccpu/env/bin/update_root
rename to arch/arm/boards/mmccpu/env/bin/update_root
diff --git a/board/mmccpu/env/config b/arch/arm/boards/mmccpu/env/config
similarity index 100%
rename from board/mmccpu/env/config
rename to arch/arm/boards/mmccpu/env/config
diff --git a/board/mmccpu/init.c b/arch/arm/boards/mmccpu/init.c
similarity index 100%
rename from board/mmccpu/init.c
rename to arch/arm/boards/mmccpu/init.c
diff --git a/board/netx/Makefile b/arch/arm/boards/netx/Makefile
similarity index 100%
rename from board/netx/Makefile
rename to arch/arm/boards/netx/Makefile
diff --git a/board/netx/config.h b/arch/arm/boards/netx/config.h
similarity index 100%
rename from board/netx/config.h
rename to arch/arm/boards/netx/config.h
diff --git a/board/netx/netx.c b/arch/arm/boards/netx/netx.c
similarity index 100%
rename from board/netx/netx.c
rename to arch/arm/boards/netx/netx.c
diff --git a/board/netx/netx.dox b/arch/arm/boards/netx/netx.dox
similarity index 100%
rename from board/netx/netx.dox
rename to arch/arm/boards/netx/netx.dox
diff --git a/board/netx/platform.S b/arch/arm/boards/netx/platform.S
similarity index 100%
rename from board/netx/platform.S
rename to arch/arm/boards/netx/platform.S
diff --git a/board/omap/Kconfig b/arch/arm/boards/omap/Kconfig
similarity index 100%
rename from board/omap/Kconfig
rename to arch/arm/boards/omap/Kconfig
diff --git a/board/omap/Makefile b/arch/arm/boards/omap/Makefile
similarity index 100%
rename from board/omap/Makefile
rename to arch/arm/boards/omap/Makefile
diff --git a/board/omap/board-beagle.c b/arch/arm/boards/omap/board-beagle.c
similarity index 98%
rename from board/omap/board-beagle.c
rename to arch/arm/boards/omap/board-beagle.c
index 866d832..a2ca5a9 100644
--- a/board/omap/board-beagle.c
+++ b/arch/arm/boards/omap/board-beagle.c
@@ -27,7 +27,7 @@
 /**
  * @page ti_beagle Texas Instruments Beagle Board
  *
- * FileName: board/omap/board-beagle.c
+ * FileName: arch/arm/boards/omap/board-beagle.c
  *
  * Beagle Board from Texas Instruments as described here:
  * http://www.beagleboard.org
@@ -49,7 +49,7 @@
  * Run time initialization includes
  * @li serial @ref serial_ns16550.c driver device definition
  *
- * Originally from board/omap/board-sdp343x.c
+ * Originally from arch/arm/boards/omap/board-sdp343x.c
  */
 
 #include <common.h>
diff --git a/board/omap/board-omap3evm.c b/arch/arm/boards/omap/board-omap3evm.c
similarity index 98%
rename from board/omap/board-omap3evm.c
rename to arch/arm/boards/omap/board-omap3evm.c
index fdea0ff..619ea94 100644
--- a/board/omap/board-omap3evm.c
+++ b/arch/arm/boards/omap/board-omap3evm.c
@@ -2,7 +2,7 @@
  * @file
  * @brief Board Initialization routines for OMAP3EVM.
  *
- * FileName: board/omap/board-omap3evm.c
+ * FileName: arch/arm/boards/omap/board-omap3evm.c
  *
  * This board is based on OMAP3530.
  * More on OMAP3530 (including documentation can be found here):
@@ -21,7 +21,7 @@
  * Run time initialization includes
  * @li serial @ref serial_ns16550.c driver device definition
  *
- * Originally from board/omap/board-beagle.c
+ * Originally from arch/arm/boards/omap/board-beagle.c
  */
 
 /*
diff --git a/board/omap/board-sdp343x.c b/arch/arm/boards/omap/board-sdp343x.c
similarity index 99%
rename from board/omap/board-sdp343x.c
rename to arch/arm/boards/omap/board-sdp343x.c
index fe95fc0..32d1a42 100644
--- a/board/omap/board-sdp343x.c
+++ b/arch/arm/boards/omap/board-sdp343x.c
@@ -27,7 +27,7 @@
 /**
  * @page ti_SDP3430 Texas Instruments SDP3430
  *
- * FileName: board/omap/board-sdp343x.c
+ * FileName: arch/arm/boards/omap/board-sdp343x.c
  *
  * SDP3430 from Texas Instruments as described here:
  * http://www.ti.com/omap3430_devplatform
diff --git a/board/omap/board.h b/arch/arm/boards/omap/board.h
similarity index 96%
rename from board/omap/board.h
rename to arch/arm/boards/omap/board.h
index ee3e25e..cf231a2 100644
--- a/board/omap/board.h
+++ b/arch/arm/boards/omap/board.h
@@ -2,7 +2,7 @@
  * @file
  * @brief exported generic APIs which various board files implement
  *
- * FileName: board/omap/board.h
+ * FileName: arch/arm/boards/omap/board.h
  *
  * This file will not contain any board specific implementations.
  */
diff --git a/board/omap/config.h b/arch/arm/boards/omap/config.h
similarity index 96%
rename from board/omap/config.h
rename to arch/arm/boards/omap/config.h
index 28b6273..ea0ad6c 100644
--- a/board/omap/config.h
+++ b/arch/arm/boards/omap/config.h
@@ -2,7 +2,7 @@
  * @file
  * @brief provide a wrapper for standard malloc and stack size defines
  *
- * FileName: board/omap/config.h
+ * FileName: arch/arm/boards/omap/config.h
  *
  * Standard defines should be configurable for us to move Stack and malloc
  * areas around this defines some basics for that
diff --git a/board/omap/devices-gpmc-nand.c b/arch/arm/boards/omap/devices-gpmc-nand.c
similarity index 98%
rename from board/omap/devices-gpmc-nand.c
rename to arch/arm/boards/omap/devices-gpmc-nand.c
index bbcceaf..8aaec80 100644
--- a/board/omap/devices-gpmc-nand.c
+++ b/arch/arm/boards/omap/devices-gpmc-nand.c
@@ -2,7 +2,7 @@
  * @file
  * @brief GPMC specific NAND devices
  *
- * FileName: board/omap/devices-gpmc-nand.c
+ * FileName: arch/arm/boards/omap/devices-gpmc-nand.c
  *
  * GPMC NAND Devices such as those from Micron, Samsung are listed here
  */
diff --git a/board/omap/env/bin/init b/arch/arm/boards/omap/env/bin/init
similarity index 100%
rename from board/omap/env/bin/init
rename to arch/arm/boards/omap/env/bin/init
diff --git a/board/omap/platform.S b/arch/arm/boards/omap/platform.S
similarity index 97%
rename from board/omap/platform.S
rename to arch/arm/boards/omap/platform.S
index 9014a8f..77b7eed 100644
--- a/board/omap/platform.S
+++ b/arch/arm/boards/omap/platform.S
@@ -2,7 +2,7 @@
  * @file
  * @brief Wrapper to call board level initialization routine
  *
- * FileName: board/omap/platform.S
+ * FileName: arch/arm/boards/omap/platform.S
  *
  * board_init_lowlevel is defined here. This calls board_init which
  * is linked to the binary - the board_init only has a SRAM stack.
diff --git a/board/pcm037/Makefile b/arch/arm/boards/pcm037/Makefile
similarity index 100%
rename from board/pcm037/Makefile
rename to arch/arm/boards/pcm037/Makefile
diff --git a/board/pcm037/config.h b/arch/arm/boards/pcm037/config.h
similarity index 100%
rename from board/pcm037/config.h
rename to arch/arm/boards/pcm037/config.h
diff --git a/board/pcm037/env/config b/arch/arm/boards/pcm037/env/config
similarity index 100%
rename from board/pcm037/env/config
rename to arch/arm/boards/pcm037/env/config
diff --git a/board/pcm037/lowlevel_init.S b/arch/arm/boards/pcm037/lowlevel_init.S
similarity index 100%
rename from board/pcm037/lowlevel_init.S
rename to arch/arm/boards/pcm037/lowlevel_init.S
diff --git a/board/pcm037/pcm037.c b/arch/arm/boards/pcm037/pcm037.c
similarity index 100%
rename from board/pcm037/pcm037.c
rename to arch/arm/boards/pcm037/pcm037.c
diff --git a/board/pcm037/pcm037.dox b/arch/arm/boards/pcm037/pcm037.dox
similarity index 100%
rename from board/pcm037/pcm037.dox
rename to arch/arm/boards/pcm037/pcm037.dox
diff --git a/board/pcm038/Makefile b/arch/arm/boards/pcm038/Makefile
similarity index 100%
rename from board/pcm038/Makefile
rename to arch/arm/boards/pcm038/Makefile
diff --git a/board/pcm038/config.h b/arch/arm/boards/pcm038/config.h
similarity index 100%
rename from board/pcm038/config.h
rename to arch/arm/boards/pcm038/config.h
diff --git a/board/pcm038/env/config b/arch/arm/boards/pcm038/env/config
similarity index 100%
rename from board/pcm038/env/config
rename to arch/arm/boards/pcm038/env/config
diff --git a/board/pcm038/lowlevel.c b/arch/arm/boards/pcm038/lowlevel.c
similarity index 100%
rename from board/pcm038/lowlevel.c
rename to arch/arm/boards/pcm038/lowlevel.c
diff --git a/board/pcm038/pcm038.c b/arch/arm/boards/pcm038/pcm038.c
similarity index 100%
rename from board/pcm038/pcm038.c
rename to arch/arm/boards/pcm038/pcm038.c
diff --git a/board/pcm038/pcm038.dox b/arch/arm/boards/pcm038/pcm038.dox
similarity index 100%
rename from board/pcm038/pcm038.dox
rename to arch/arm/boards/pcm038/pcm038.dox
diff --git a/board/pcm038/pll_init.S b/arch/arm/boards/pcm038/pll_init.S
similarity index 100%
rename from board/pcm038/pll_init.S
rename to arch/arm/boards/pcm038/pll_init.S
diff --git a/board/pcm043/Makefile b/arch/arm/boards/pcm043/Makefile
similarity index 100%
rename from board/pcm043/Makefile
rename to arch/arm/boards/pcm043/Makefile
diff --git a/board/pcm043/config.h b/arch/arm/boards/pcm043/config.h
similarity index 100%
rename from board/pcm043/config.h
rename to arch/arm/boards/pcm043/config.h
diff --git a/board/pcm043/env/config b/arch/arm/boards/pcm043/env/config
similarity index 100%
rename from board/pcm043/env/config
rename to arch/arm/boards/pcm043/env/config
diff --git a/board/pcm043/lowlevel.c b/arch/arm/boards/pcm043/lowlevel.c
similarity index 100%
rename from board/pcm043/lowlevel.c
rename to arch/arm/boards/pcm043/lowlevel.c
diff --git a/board/pcm043/pcm043.c b/arch/arm/boards/pcm043/pcm043.c
similarity index 100%
rename from board/pcm043/pcm043.c
rename to arch/arm/boards/pcm043/pcm043.c
diff --git a/board/pcm043/pcm043.dox b/arch/arm/boards/pcm043/pcm043.dox
similarity index 100%
rename from board/pcm043/pcm043.dox
rename to arch/arm/boards/pcm043/pcm043.dox
diff --git a/board/phycard-i.MX27/Makefile b/arch/arm/boards/phycard-i.MX27/Makefile
similarity index 100%
rename from board/phycard-i.MX27/Makefile
rename to arch/arm/boards/phycard-i.MX27/Makefile
diff --git a/board/phycard-i.MX27/config.h b/arch/arm/boards/phycard-i.MX27/config.h
similarity index 100%
rename from board/phycard-i.MX27/config.h
rename to arch/arm/boards/phycard-i.MX27/config.h
diff --git a/board/phycard-i.MX27/env/config b/arch/arm/boards/phycard-i.MX27/env/config
similarity index 100%
rename from board/phycard-i.MX27/env/config
rename to arch/arm/boards/phycard-i.MX27/env/config
diff --git a/board/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phycard-i.MX27/lowlevel_init.S
similarity index 100%
rename from board/phycard-i.MX27/lowlevel_init.S
rename to arch/arm/boards/phycard-i.MX27/lowlevel_init.S
diff --git a/board/phycard-i.MX27/pca100.c b/arch/arm/boards/phycard-i.MX27/pca100.c
similarity index 100%
rename from board/phycard-i.MX27/pca100.c
rename to arch/arm/boards/phycard-i.MX27/pca100.c
diff --git a/board/phycard-i.MX27/pca100.dox b/arch/arm/boards/phycard-i.MX27/pca100.dox
similarity index 100%
rename from board/phycard-i.MX27/pca100.dox
rename to arch/arm/boards/phycard-i.MX27/pca100.dox
diff --git a/board/pm9263/Makefile b/arch/arm/boards/pm9263/Makefile
similarity index 100%
rename from board/pm9263/Makefile
rename to arch/arm/boards/pm9263/Makefile
diff --git a/board/pm9263/config.h b/arch/arm/boards/pm9263/config.h
similarity index 100%
rename from board/pm9263/config.h
rename to arch/arm/boards/pm9263/config.h
diff --git a/board/mmccpu/env/bin/_update b/arch/arm/boards/pm9263/env/bin/_update
similarity index 100%
rename from board/mmccpu/env/bin/_update
rename to arch/arm/boards/pm9263/env/bin/_update
diff --git a/board/pm9263/env/bin/boot b/arch/arm/boards/pm9263/env/bin/boot
similarity index 100%
rename from board/pm9263/env/bin/boot
rename to arch/arm/boards/pm9263/env/bin/boot
diff --git a/board/pm9263/env/bin/hush_hack b/arch/arm/boards/pm9263/env/bin/hush_hack
similarity index 100%
rename from board/pm9263/env/bin/hush_hack
rename to arch/arm/boards/pm9263/env/bin/hush_hack
diff --git a/board/pm9263/env/bin/init b/arch/arm/boards/pm9263/env/bin/init
similarity index 100%
rename from board/pm9263/env/bin/init
rename to arch/arm/boards/pm9263/env/bin/init
diff --git a/board/pm9263/env/bin/update_kernel b/arch/arm/boards/pm9263/env/bin/update_kernel
similarity index 100%
rename from board/pm9263/env/bin/update_kernel
rename to arch/arm/boards/pm9263/env/bin/update_kernel
diff --git a/board/pm9263/env/bin/update_root b/arch/arm/boards/pm9263/env/bin/update_root
similarity index 100%
rename from board/pm9263/env/bin/update_root
rename to arch/arm/boards/pm9263/env/bin/update_root
diff --git a/board/pm9263/env/config b/arch/arm/boards/pm9263/env/config
similarity index 100%
rename from board/pm9263/env/config
rename to arch/arm/boards/pm9263/env/config
diff --git a/board/pm9263/init.c b/arch/arm/boards/pm9263/init.c
similarity index 100%
rename from board/pm9263/init.c
rename to arch/arm/boards/pm9263/init.c
diff --git a/board/scb9328/Makefile b/arch/arm/boards/scb9328/Makefile
similarity index 100%
rename from board/scb9328/Makefile
rename to arch/arm/boards/scb9328/Makefile
diff --git a/board/scb9328/config.h b/arch/arm/boards/scb9328/config.h
similarity index 100%
rename from board/scb9328/config.h
rename to arch/arm/boards/scb9328/config.h
diff --git a/board/scb9328/env/bin/init b/arch/arm/boards/scb9328/env/bin/init
similarity index 100%
rename from board/scb9328/env/bin/init
rename to arch/arm/boards/scb9328/env/bin/init
diff --git a/board/scb9328/lowlevel_init.S b/arch/arm/boards/scb9328/lowlevel_init.S
similarity index 100%
rename from board/scb9328/lowlevel_init.S
rename to arch/arm/boards/scb9328/lowlevel_init.S
diff --git a/board/scb9328/scb9328.c b/arch/arm/boards/scb9328/scb9328.c
similarity index 100%
rename from board/scb9328/scb9328.c
rename to arch/arm/boards/scb9328/scb9328.c
diff --git a/board/scb9328/scb9328.dox b/arch/arm/boards/scb9328/scb9328.dox
similarity index 100%
rename from board/scb9328/scb9328.dox
rename to arch/arm/boards/scb9328/scb9328.dox
diff --git a/arch/arm/configs/a9m2410_defconfig b/arch/arm/configs/a9m2410_defconfig
index 9429a37..9e888fc 100644
--- a/arch/arm/configs/a9m2410_defconfig
+++ b/arch/arm/configs/a9m2410_defconfig
@@ -100,7 +100,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/a9m2410/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2410/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/a9m2440_defconfig b/arch/arm/configs/a9m2440_defconfig
index 1fcabbb..f69dcfd 100644
--- a/arch/arm/configs/a9m2440_defconfig
+++ b/arch/arm/configs/a9m2440_defconfig
@@ -101,7 +101,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/a9m2440/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/a9m2440/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/at91sam9260ek_defconfig b/arch/arm/configs/at91sam9260ek_defconfig
index 61df756..b40485b 100644
--- a/arch/arm/configs/at91sam9260ek_defconfig
+++ b/arch/arm/configs/at91sam9260ek_defconfig
@@ -89,7 +89,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/at91sam9260ek/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9260ek/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/at91sam9263ek_defconfig b/arch/arm/configs/at91sam9263ek_defconfig
index eb47856..d423c2f 100644
--- a/arch/arm/configs/at91sam9263ek_defconfig
+++ b/arch/arm/configs/at91sam9263ek_defconfig
@@ -93,7 +93,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/at91sam9263ek/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/at91sam9263ek/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/edb93xx_defconfig b/arch/arm/configs/edb93xx_defconfig
index d6b4b19..d8fe23f 100644
--- a/arch/arm/configs/edb93xx_defconfig
+++ b/arch/arm/configs/edb93xx_defconfig
@@ -103,7 +103,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/edb93xx/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/edb93xx/env"
 
 #
 # Debugging                     
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
index 574d322..88f61c7 100644
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx25_defconfig
@@ -108,7 +108,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/eukrea_cpuimx25/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx25/env"
 
 #
 # Debugging                     
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
index a1cf1ad..c7f6b78 100644
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ b/arch/arm/configs/eukrea_cpuimx27_defconfig
@@ -118,7 +118,7 @@ CONFIG_CONSOLE_ACTIVATE_ALL=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/eukrea_cpuimx27/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx27/env"
 
 #
 # Debugging                     
diff --git a/arch/arm/configs/freescale_mx25_3stack_defconfig b/arch/arm/configs/freescale_mx25_3stack_defconfig
index d308e5b..fd7dd42 100644
--- a/arch/arm/configs/freescale_mx25_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx25_3stack_defconfig
@@ -106,7 +106,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/freescale-mx25-3-stack/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx25-3-stack/env/"
 
 #
 # Debugging
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale_mx35_3stack_defconfig
index 17a2fdc..4321fbc 100644
--- a/arch/arm/configs/freescale_mx35_3stack_defconfig
+++ b/arch/arm/configs/freescale_mx35_3stack_defconfig
@@ -105,7 +105,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/freescale-mx35-3-stack/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx35-3-stack/env/"
 
 #
 # Debugging                     
diff --git a/arch/arm/configs/mmccpu_defconfig b/arch/arm/configs/mmccpu_defconfig
index 2b80a30..a8c41e7 100644
--- a/arch/arm/configs/mmccpu_defconfig
+++ b/arch/arm/configs/mmccpu_defconfig
@@ -93,7 +93,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/mmccpu/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/mmccpu/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/mx21ads_defconfig
index 99a8714..99b5ed6 100644
--- a/arch/arm/configs/mx21ads_defconfig
+++ b/arch/arm/configs/mx21ads_defconfig
@@ -104,7 +104,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/imx21ads/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx21ads/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/mx27ads_defconfig
index 71880c0..a1bf3f9 100644
--- a/arch/arm/configs/mx27ads_defconfig
+++ b/arch/arm/configs/mx27ads_defconfig
@@ -108,7 +108,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/imx27ads/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/imx27ads/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/pca100_defconfig
index 52a5d93..62beefa 100644
--- a/arch/arm/configs/pca100_defconfig
+++ b/arch/arm/configs/pca100_defconfig
@@ -110,7 +110,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/phycard-i.MX27/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/phycard-i.MX27/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/pcm037_defconfig
index 9353d0e..9337f85 100644
--- a/arch/arm/configs/pcm037_defconfig
+++ b/arch/arm/configs/pcm037_defconfig
@@ -106,7 +106,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/pcm037/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm037/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/pcm038_defconfig
index a80089c..65ecb07 100644
--- a/arch/arm/configs/pcm038_defconfig
+++ b/arch/arm/configs/pcm038_defconfig
@@ -110,7 +110,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/pcm038/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm038/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/pcm043_defconfig
index 72a8a42..482e580 100644
--- a/arch/arm/configs/pcm043_defconfig
+++ b/arch/arm/configs/pcm043_defconfig
@@ -109,7 +109,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv board/pcm043/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="defaultenv arch/arm/boards/pcm043/env"
 
 #
 # Debugging
diff --git a/arch/arm/configs/pm9263_defconfig b/arch/arm/configs/pm9263_defconfig
index cde5cbe..d5ee46a 100644
--- a/arch/arm/configs/pm9263_defconfig
+++ b/arch/arm/configs/pm9263_defconfig
@@ -93,7 +93,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/pm9263/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/pm9263/env/"
 
 #
 # Debugging
diff --git a/arch/arm/configs/scb9328_defconfig b/arch/arm/configs/scb9328_defconfig
index 6638234..7dc56dd 100644
--- a/arch/arm/configs/scb9328_defconfig
+++ b/arch/arm/configs/scb9328_defconfig
@@ -105,7 +105,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 # CONFIG_PARTITION is not set
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/scb9328/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/scb9328/env"
 
 #
 # Debugging
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 5f0bb73..7bb1af1 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -32,7 +32,7 @@
 /* cpu/.../cpu.c */
 int	cleanup_before_linux(void);
 
-/* board/.../... */
+/* arch/<arch>board(s)/.../... */
 int	board_init(void);
 int	dram_init (void);
 
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index 99b9f9d..2181161 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -97,6 +97,6 @@ config GPMC
 	 NAND, OneNAND etc.
 
 # Get the board specific configurations
-source board/omap/Kconfig
+source arch/arm/boards/omap/Kconfig
 
 endmenu
diff --git a/arch/arm/mach-omap/arch-omap.dox b/arch/arm/mach-omap/arch-omap.dox
index 01e45f2..df16b7b 100644
--- a/arch/arm/mach-omap/arch-omap.dox
+++ b/arch/arm/mach-omap/arch-omap.dox
@@ -39,7 +39,7 @@ Motivation for code organization is driven from:
 Code is Organized into three main directories:
 @li arch/arm/mach-omap -contains files for ALL peripherals which are present on board with very few exceptions. We will come to these exceptions in later sections.
 @li include/asm-arm/arch-omap - contains files for ALL OMAP on-silicon peripherals. No Board specific files here please!
-@li board/omap - contains files for ALL boards using OMAP processors.
+@li arch/arm/boards/omap - contains files for ALL boards using OMAP processors.
 
 @section mach_omap arch/arm/mach-omap directory guidelines
 It is rather simple: All common peripherals should be isolated as separate driver libraries as far as possible. Exceptions such as clock configuration code may be isolated by the following naming convention: omapX_function_name.[cS], where X belongs to the OMAP variant. The exception is for devices who have existing code locations - potentially drivers/i2c/busses and the like.
@@ -52,7 +52,7 @@ All OMAP common headers are located here. Where we have to incorporate a OMAP va
 
 include/asm-arm/arch-omap/silicon.h contains includes for omapX-silicon.h which defines the base addresses for the peripherals on that platform. the usual convention is to use #define OMAP_SOMETHING_BASE to allow re-use.
 
-@section board_omap board/omap directory guidelines
+@section board_omap arch/arm/boards/omap directory guidelines
 All Board specific files go here. In u-boot, we always had to use common config file which is shared by other drivers to get serial, ethernet baseaddress etc.. we can easily use the device_d structure to handle it with @a barebox. This is more like programming for Linux kernel - it is pretty easy.
 Each specific board file has board-XYZ.c and potentially and equivalent h file.
 
@@ -66,7 +66,7 @@ The responsibility of arch_init_lowlevel and related calls is to setup OMAP. No
 Once this is past, the code returns back to arm common code (cpu/start-arm.S). Here Instruction and Data caches are disabled. The execution proceeds to normal board initialization.
 
 @section board_boot The board boot path
-If the proper CONFIG_MACH_DO_LOWLEVEL_INIT flag is setup, board_init_lowlevel is called. This again would call a common file board/omap/platform.S which setups a temporary SRAM stack and bumps the control to board_init.
+If the proper CONFIG_MACH_DO_LOWLEVEL_INIT flag is setup, board_init_lowlevel is called. This again would call a common file arch/arm/boards/omap/platform.S which setups a temporary SRAM stack and bumps the control to board_init.
 Every Board in OMAP platform can potentially define a board_init and enable defconfig in arch/arm/configs directory. The responsibility here is to setup OMAP for board configurations - this includes SDRAM configuration and pin muxing configuration.
 
 Once this is complete, @a barebox boot process proceeds by calling init functions and finally entering shell prompt
@@ -87,7 +87,7 @@ static int my_board_devices_init(void) {
 device_initcall(my_board_devices_init);
 @endcode
 
-You may probably be interested in calling console_initcall to get a console.. Modify board/omap/Kconfig to add your OMAP board, create a defconfig, do a make C=2 to enable sparse warnings, you can potentially have a binary done in no time! if you remember to put doxygen comments in your code, you can do a make docs and get the documentation done too..
+You may probably be interested in calling console_initcall to get a console.. Modify arch/arm/boards/omap/Kconfig to add your OMAP board, create a defconfig, do a make C=2 to enable sparse warnings, you can potentially have a binary done in no time! if you remember to put doxygen comments in your code, you can do a make docs and get the documentation done too..
 
 
 */
diff --git a/arch/arm/mach-s3c24xx/generic.c b/arch/arm/mach-s3c24xx/generic.c
index 372904f..46b5c50 100644
--- a/arch/arm/mach-s3c24xx/generic.c
+++ b/arch/arm/mach-s3c24xx/generic.c
@@ -244,8 +244,8 @@ EXPORT_SYMBOL(reset_cpu);
 
 @section s3c24xx_boards Boards using S3C24xx Processors
 
-@li @subpage board/a9m2410/a9m2410.c
-@li @subpage board/a9m2440/a9m2440.c
+@li @subpage arch/arm/boards/a9m2410/a9m2410.c
+@li @subpage arch/arm/boards/a9m2440/a9m2440.c
 
 @section s3c24xx_arch Documentation for S3C24xx Architectures Files
 
diff --git a/arch/blackfin/Makefile b/arch/blackfin/Makefile
index dbb9081..902268d 100644
--- a/arch/blackfin/Makefile
+++ b/arch/blackfin/Makefile
@@ -22,7 +22,7 @@ PHONY += maketools
 
 
 ifneq ($(board-y),)
-BOARD  := board/$(board-y)/
+BOARD  := arch/blackfin/boards/$(board-y)/
 else
 BOARD  :=
 endif
diff --git a/board/ipe337/Makefile b/arch/blackfin/boards/ipe337/Makefile
similarity index 100%
rename from board/ipe337/Makefile
rename to arch/blackfin/boards/ipe337/Makefile
diff --git a/board/ipe337/barebox.lds.S b/arch/blackfin/boards/ipe337/barebox.lds.S
similarity index 100%
rename from board/ipe337/barebox.lds.S
rename to arch/blackfin/boards/ipe337/barebox.lds.S
diff --git a/board/ipe337/cmd_alternate.c b/arch/blackfin/boards/ipe337/cmd_alternate.c
similarity index 100%
rename from board/ipe337/cmd_alternate.c
rename to arch/blackfin/boards/ipe337/cmd_alternate.c
diff --git a/board/ipe337/config.h b/arch/blackfin/boards/ipe337/config.h
similarity index 100%
rename from board/ipe337/config.h
rename to arch/blackfin/boards/ipe337/config.h
diff --git a/board/ipe337/env/bin/_alternate b/arch/blackfin/boards/ipe337/env/bin/_alternate
similarity index 100%
rename from board/ipe337/env/bin/_alternate
rename to arch/blackfin/boards/ipe337/env/bin/_alternate
diff --git a/board/ipe337/env/bin/_update b/arch/blackfin/boards/ipe337/env/bin/_update
similarity index 100%
rename from board/ipe337/env/bin/_update
rename to arch/blackfin/boards/ipe337/env/bin/_update
diff --git a/board/ipe337/env/bin/boot b/arch/blackfin/boards/ipe337/env/bin/boot
similarity index 100%
rename from board/ipe337/env/bin/boot
rename to arch/blackfin/boards/ipe337/env/bin/boot
diff --git a/board/ipe337/env/bin/init b/arch/blackfin/boards/ipe337/env/bin/init
similarity index 100%
rename from board/ipe337/env/bin/init
rename to arch/blackfin/boards/ipe337/env/bin/init
diff --git a/board/ipe337/env/bin/reset_ageing b/arch/blackfin/boards/ipe337/env/bin/reset_ageing
similarity index 100%
rename from board/ipe337/env/bin/reset_ageing
rename to arch/blackfin/boards/ipe337/env/bin/reset_ageing
diff --git a/board/ipe337/env/bin/update_application b/arch/blackfin/boards/ipe337/env/bin/update_application
similarity index 100%
rename from board/ipe337/env/bin/update_application
rename to arch/blackfin/boards/ipe337/env/bin/update_application
diff --git a/board/ipe337/env/bin/update_bareboxenv b/arch/blackfin/boards/ipe337/env/bin/update_bareboxenv
similarity index 100%
rename from board/ipe337/env/bin/update_bareboxenv
rename to arch/blackfin/boards/ipe337/env/bin/update_bareboxenv
diff --git a/board/ipe337/env/bin/update_kernel b/arch/blackfin/boards/ipe337/env/bin/update_kernel
similarity index 100%
rename from board/ipe337/env/bin/update_kernel
rename to arch/blackfin/boards/ipe337/env/bin/update_kernel
diff --git a/board/ipe337/env/bin/update_persistent b/arch/blackfin/boards/ipe337/env/bin/update_persistent
similarity index 100%
rename from board/ipe337/env/bin/update_persistent
rename to arch/blackfin/boards/ipe337/env/bin/update_persistent
diff --git a/board/ipe337/env/bin/update_system b/arch/blackfin/boards/ipe337/env/bin/update_system
similarity index 100%
rename from board/ipe337/env/bin/update_system
rename to arch/blackfin/boards/ipe337/env/bin/update_system
diff --git a/board/ipe337/env/config b/arch/blackfin/boards/ipe337/env/config
similarity index 100%
rename from board/ipe337/env/config
rename to arch/blackfin/boards/ipe337/env/config
diff --git a/board/ipe337/ipe337.c b/arch/blackfin/boards/ipe337/ipe337.c
similarity index 100%
rename from board/ipe337/ipe337.c
rename to arch/blackfin/boards/ipe337/ipe337.c
diff --git a/board/ipe337/ipe337.dox b/arch/blackfin/boards/ipe337/ipe337.dox
similarity index 100%
rename from board/ipe337/ipe337.dox
rename to arch/blackfin/boards/ipe337/ipe337.dox
diff --git a/arch/blackfin/configs/ipe337_defconfig b/arch/blackfin/configs/ipe337_defconfig
index fd4ff66..33fd2fc 100644
--- a/arch/blackfin/configs/ipe337_defconfig
+++ b/arch/blackfin/configs/ipe337_defconfig
@@ -55,7 +55,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/ipe337/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/blackin/boards/ipe337/env"
 
 #
 # Debugging                     
diff --git a/arch/m68k/Makefile b/arch/m68k/Makefile
index f377325..ec70028 100644
--- a/arch/m68k/Makefile
+++ b/arch/m68k/Makefile
@@ -63,7 +63,7 @@ PHONY += maketools
 
 
 ifneq ($(board-y),)
-BOARD  := board/$(board-y)/
+BOARD  := arch/m68k/boards/$(board-y)/
 else
 BOARD  :=
 endif
diff --git a/board/kp_ukd_r1_num/Makefile b/arch/m68k/boards/kp_ukd_r1_num/Makefile
similarity index 100%
rename from board/kp_ukd_r1_num/Makefile
rename to arch/m68k/boards/kp_ukd_r1_num/Makefile
diff --git a/board/phycore_mcf54xx/env/bin/_update b/arch/m68k/boards/kp_ukd_r1_num/env/bin/_update
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/_update
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/_update
diff --git a/board/kp_ukd_r1_num/env/bin/boot b/arch/m68k/boards/kp_ukd_r1_num/env/bin/boot
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/boot
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/boot
diff --git a/board/kp_ukd_r1_num/env/bin/init b/arch/m68k/boards/kp_ukd_r1_num/env/bin/init
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/init
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/init
diff --git a/board/kp_ukd_r1_num/env/bin/pcidmaloop b/arch/m68k/boards/kp_ukd_r1_num/env/bin/pcidmaloop
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/pcidmaloop
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/pcidmaloop
diff --git a/board/kp_ukd_r1_num/env/bin/pciloop b/arch/m68k/boards/kp_ukd_r1_num/env/bin/pciloop
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/pciloop
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/pciloop
diff --git a/board/kp_ukd_r1_num/env/bin/update_kernel b/arch/m68k/boards/kp_ukd_r1_num/env/bin/update_kernel
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/update_kernel
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/update_kernel
diff --git a/board/kp_ukd_r1_num/env/bin/update_root b/arch/m68k/boards/kp_ukd_r1_num/env/bin/update_root
similarity index 100%
rename from board/kp_ukd_r1_num/env/bin/update_root
rename to arch/m68k/boards/kp_ukd_r1_num/env/bin/update_root
diff --git a/board/kp_ukd_r1_num/env/config b/arch/m68k/boards/kp_ukd_r1_num/env/config
similarity index 100%
rename from board/kp_ukd_r1_num/env/config
rename to arch/m68k/boards/kp_ukd_r1_num/env/config
diff --git a/board/kp_ukd_r1_num/highlevel_init.c b/arch/m68k/boards/kp_ukd_r1_num/highlevel_init.c
similarity index 100%
rename from board/kp_ukd_r1_num/highlevel_init.c
rename to arch/m68k/boards/kp_ukd_r1_num/highlevel_init.c
diff --git a/board/kp_ukd_r1_num/kp_ukd_r1_num.c b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
similarity index 100%
rename from board/kp_ukd_r1_num/kp_ukd_r1_num.c
rename to arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.c
diff --git a/board/kp_ukd_r1_num/kp_ukd_r1_num.dox b/arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.dox
similarity index 100%
rename from board/kp_ukd_r1_num/kp_ukd_r1_num.dox
rename to arch/m68k/boards/kp_ukd_r1_num/kp_ukd_r1_num.dox
diff --git a/board/kp_ukd_r1_num/lowlevel_init.c b/arch/m68k/boards/kp_ukd_r1_num/lowlevel_init.c
similarity index 100%
rename from board/kp_ukd_r1_num/lowlevel_init.c
rename to arch/m68k/boards/kp_ukd_r1_num/lowlevel_init.c
diff --git a/board/kp_ukd_r1_num/pci-stubs.c b/arch/m68k/boards/kp_ukd_r1_num/pci-stubs.c
similarity index 100%
rename from board/kp_ukd_r1_num/pci-stubs.c
rename to arch/m68k/boards/kp_ukd_r1_num/pci-stubs.c
diff --git a/board/phycore_mcf54xx/Makefile b/arch/m68k/boards/phycore_mcf54xx/Makefile
similarity index 100%
rename from board/phycore_mcf54xx/Makefile
rename to arch/m68k/boards/phycore_mcf54xx/Makefile
diff --git a/board/pm9263/env/bin/_update b/arch/m68k/boards/phycore_mcf54xx/env/bin/_update
similarity index 100%
rename from board/pm9263/env/bin/_update
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/_update
diff --git a/board/phycore_mcf54xx/env/bin/boot b/arch/m68k/boards/phycore_mcf54xx/env/bin/boot
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/boot
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/boot
diff --git a/board/phycore_mcf54xx/env/bin/init b/arch/m68k/boards/phycore_mcf54xx/env/bin/init
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/init
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/init
diff --git a/board/phycore_mcf54xx/env/bin/pcidmaloop b/arch/m68k/boards/phycore_mcf54xx/env/bin/pcidmaloop
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/pcidmaloop
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/pcidmaloop
diff --git a/board/phycore_mcf54xx/env/bin/pciloop b/arch/m68k/boards/phycore_mcf54xx/env/bin/pciloop
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/pciloop
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/pciloop
diff --git a/board/phycore_mcf54xx/env/bin/update_kernel b/arch/m68k/boards/phycore_mcf54xx/env/bin/update_kernel
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/update_kernel
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/update_kernel
diff --git a/board/phycore_mcf54xx/env/bin/update_root b/arch/m68k/boards/phycore_mcf54xx/env/bin/update_root
similarity index 100%
rename from board/phycore_mcf54xx/env/bin/update_root
rename to arch/m68k/boards/phycore_mcf54xx/env/bin/update_root
diff --git a/board/phycore_mcf54xx/env/config b/arch/m68k/boards/phycore_mcf54xx/env/config
similarity index 100%
rename from board/phycore_mcf54xx/env/config
rename to arch/m68k/boards/phycore_mcf54xx/env/config
diff --git a/board/phycore_mcf54xx/highlevel_init.c b/arch/m68k/boards/phycore_mcf54xx/highlevel_init.c
similarity index 100%
rename from board/phycore_mcf54xx/highlevel_init.c
rename to arch/m68k/boards/phycore_mcf54xx/highlevel_init.c
diff --git a/board/phycore_mcf54xx/lowlevel_init.c b/arch/m68k/boards/phycore_mcf54xx/lowlevel_init.c
similarity index 100%
rename from board/phycore_mcf54xx/lowlevel_init.c
rename to arch/m68k/boards/phycore_mcf54xx/lowlevel_init.c
diff --git a/board/phycore_mcf54xx/pci-stubs.c b/arch/m68k/boards/phycore_mcf54xx/pci-stubs.c
similarity index 100%
rename from board/phycore_mcf54xx/pci-stubs.c
rename to arch/m68k/boards/phycore_mcf54xx/pci-stubs.c
diff --git a/board/phycore_mcf54xx/phyCore_MCF54xx.c b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
similarity index 100%
rename from board/phycore_mcf54xx/phyCore_MCF54xx.c
rename to arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.c
diff --git a/board/phycore_mcf54xx/phyCore_MCF54xx.dox b/arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.dox
similarity index 100%
rename from board/phycore_mcf54xx/phyCore_MCF54xx.dox
rename to arch/m68k/boards/phycore_mcf54xx/phyCore_MCF54xx.dox
diff --git a/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig b/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
index ba21a00..bb91152 100644
--- a/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
+++ b/arch/m68k/configs/phycore_kpukdr1_5475num_defconfig
@@ -71,7 +71,7 @@ CONFIG_EARLY_CONSOLE_PORT="psc0"
 CONFIG_EARLY_CONSOLE_BAUDRATE=115200
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/kp_ukd_r1_num/env/"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/m68k/boards/kp_ukd_r1_num/env/"
 
 #
 # Debugging
diff --git a/arch/m68k/configs/phycore_mcf54xx_defconfig b/arch/m68k/configs/phycore_mcf54xx_defconfig
index 34ca73f..f64ca8b 100644
--- a/arch/m68k/configs/phycore_mcf54xx_defconfig
+++ b/arch/m68k/configs/phycore_mcf54xx_defconfig
@@ -71,7 +71,7 @@ CONFIG_EARLY_CONSOLE_PORT="psc0"
 CONFIG_EARLY_CONSOLE_BAUDRATE=115200
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/phycore_mcf54xx/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/m68k/boards/phycore_mcf54xx/env"
 
 #
 # Debugging                     
diff --git a/arch/ppc/Makefile b/arch/ppc/Makefile
index c24d3c3..46d64e5 100644
--- a/arch/ppc/Makefile
+++ b/arch/ppc/Makefile
@@ -35,7 +35,7 @@ PHONY += maketools
 
 
 ifneq ($(board-y),)
-BOARD  := board/$(board-y)/
+BOARD  := arch/ppc/boards/$(board-y)/
 else
 BOARD  :=
 endif
diff --git a/board/pcm030/Makefile b/arch/ppc/boards/pcm030/Makefile
similarity index 100%
rename from board/pcm030/Makefile
rename to arch/ppc/boards/pcm030/Makefile
diff --git a/board/pcm030/barebox.lds.S b/arch/ppc/boards/pcm030/barebox.lds.S
similarity index 100%
rename from board/pcm030/barebox.lds.S
rename to arch/ppc/boards/pcm030/barebox.lds.S
diff --git a/board/pcm030/config.h b/arch/ppc/boards/pcm030/config.h
similarity index 100%
rename from board/pcm030/config.h
rename to arch/ppc/boards/pcm030/config.h
diff --git a/board/pcm030/mt46v32m16-75.h b/arch/ppc/boards/pcm030/mt46v32m16-75.h
similarity index 100%
rename from board/pcm030/mt46v32m16-75.h
rename to arch/ppc/boards/pcm030/mt46v32m16-75.h
diff --git a/board/pcm030/pcm030.c b/arch/ppc/boards/pcm030/pcm030.c
similarity index 100%
rename from board/pcm030/pcm030.c
rename to arch/ppc/boards/pcm030/pcm030.c
diff --git a/board/pcm030/pcm030.dox b/arch/ppc/boards/pcm030/pcm030.dox
similarity index 100%
rename from board/pcm030/pcm030.dox
rename to arch/ppc/boards/pcm030/pcm030.dox
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 6b8942e..4ca17ed 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -3,8 +3,10 @@ CPPFLAGS += -fno-strict-aliasing
 
 machine-y := sandbox
 
-board-y := sandbox
-lds-y   := board/sandbox/barebox.lds
+board-y := arch/sandbox/board
+BOARD	:= $(board-y)/
+lds-y   := $(BOARD)/barebox.lds
+
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 
@@ -62,6 +64,6 @@ cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
 	-lrt -lpthread
 
-common-y += board/sandbox/ arch/sandbox/os/
+common-y += $(BOARD) arch/sandbox/os/
 
-CLEAN_FILES += board/sandbox/barebox.lds
+CLEAN_FILES += $(BOARD)/barebox.lds
diff --git a/board/sandbox/.gitignore b/arch/sandbox/board/.gitignore
similarity index 100%
rename from board/sandbox/.gitignore
rename to arch/sandbox/board/.gitignore
diff --git a/board/sandbox/Makefile b/arch/sandbox/board/Makefile
similarity index 100%
rename from board/sandbox/Makefile
rename to arch/sandbox/board/Makefile
diff --git a/board/sandbox/barebox.lds.S b/arch/sandbox/board/barebox.lds.S
similarity index 100%
rename from board/sandbox/barebox.lds.S
rename to arch/sandbox/board/barebox.lds.S
diff --git a/board/sandbox/board.c b/arch/sandbox/board/board.c
similarity index 100%
rename from board/sandbox/board.c
rename to arch/sandbox/board/board.c
diff --git a/board/sandbox/clock.c b/arch/sandbox/board/clock.c
similarity index 100%
rename from board/sandbox/clock.c
rename to arch/sandbox/board/clock.c
diff --git a/board/sandbox/config.h b/arch/sandbox/board/config.h
similarity index 100%
rename from board/sandbox/config.h
rename to arch/sandbox/board/config.h
diff --git a/board/sandbox/console.c b/arch/sandbox/board/console.c
similarity index 100%
rename from board/sandbox/console.c
rename to arch/sandbox/board/console.c
diff --git a/board/sandbox/env/bin/init b/arch/sandbox/board/env/bin/init
similarity index 100%
rename from board/sandbox/env/bin/init
rename to arch/sandbox/board/env/bin/init
diff --git a/board/sandbox/env/config b/arch/sandbox/board/env/config
similarity index 100%
rename from board/sandbox/env/config
rename to arch/sandbox/board/env/config
diff --git a/board/sandbox/hostfile.c b/arch/sandbox/board/hostfile.c
similarity index 100%
rename from board/sandbox/hostfile.c
rename to arch/sandbox/board/hostfile.c
diff --git a/arch/sandbox/configs/sandbox_defconfig b/arch/sandbox/configs/sandbox_defconfig
index adcb07e..9037c8b 100644
--- a/arch/sandbox/configs/sandbox_defconfig
+++ b/arch/sandbox/configs/sandbox_defconfig
@@ -41,7 +41,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/sandbox/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/sandbox/board/env"
 
 #
 # Debugging
diff --git a/arch/x86/Makefile b/arch/x86/Makefile
index 2e2cb81..57c5dbc 100644
--- a/arch/x86/Makefile
+++ b/arch/x86/Makefile
@@ -26,7 +26,7 @@ all: $(KBUILD_IMAGE)
 
 
 ifneq ($(board-y),)
-BOARD  := board/$(board-y)/
+BOARD  := arch/x86/boards/$(board-y)/
 else
 BOARD  :=
 endif
diff --git a/board/x86_generic/Makefile b/arch/x86/boards/x86_generic/Makefile
similarity index 100%
rename from board/x86_generic/Makefile
rename to arch/x86/boards/x86_generic/Makefile
diff --git a/board/x86_generic/config.h b/arch/x86/boards/x86_generic/config.h
similarity index 100%
rename from board/x86_generic/config.h
rename to arch/x86/boards/x86_generic/config.h
diff --git a/board/x86_generic/env/bin/boot b/arch/x86/boards/x86_generic/env/bin/boot
similarity index 100%
rename from board/x86_generic/env/bin/boot
rename to arch/x86/boards/x86_generic/env/bin/boot
diff --git a/board/x86_generic/env/bin/init b/arch/x86/boards/x86_generic/env/bin/init
similarity index 100%
rename from board/x86_generic/env/bin/init
rename to arch/x86/boards/x86_generic/env/bin/init
diff --git a/board/x86_generic/env/config b/arch/x86/boards/x86_generic/env/config
similarity index 100%
rename from board/x86_generic/env/config
rename to arch/x86/boards/x86_generic/env/config
diff --git a/board/x86_generic/generic_pc.c b/arch/x86/boards/x86_generic/generic_pc.c
similarity index 100%
rename from board/x86_generic/generic_pc.c
rename to arch/x86/boards/x86_generic/generic_pc.c
diff --git a/arch/x86/configs/generic_defconfig b/arch/x86/configs/generic_defconfig
index 091f696..3c72242 100644
--- a/arch/x86/configs/generic_defconfig
+++ b/arch/x86/configs/generic_defconfig
@@ -63,7 +63,7 @@ CONFIG_CONSOLE_ACTIVATE_FIRST=y
 # CONFIG_OF_FLAT_TREE is not set
 CONFIG_PARTITION=y
 CONFIG_DEFAULT_ENVIRONMENT=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="board/x86_generic/env"
+CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/x86/boards/x86_generic/env"
 
 #
 # Debugging                     
diff --git a/board/board.dox b/board/board.dox
index 76bff45..6bda416 100644
--- a/board/board.dox
+++ b/board/board.dox
@@ -5,24 +5,24 @@ the @a barebox source tree.
 
 @section board_add_files Files/Directories to be added
 
- - board/\<boardname\>
- - board/\<boardname\>/Makefile
- - board/\<boardname\>/\<boardname\>.c
- - board/\<boardname\>/\<boardname\>.dox
+ - arch/\<architecture\>/boards/\<boardname\>
+ - arch/\<architecture\>/boards/\<boardname\>/Makefile
+ - arch/\<architecture\>/boards/\<boardname\>/\<boardname\>.c
+ - arch/\<architecture\>/boards/\<boardname\>/\<boardname\>.dox
  - include/configs/\<boardname\>.h
  - arch/\<architecture\>/configs/\<boardname\>_defconfig
 
-@subsection board_makefile board/\<boardname\>Makefile
+@subsection board_makefile arch/\<architecture\>/boards/\<boardname\>Makefile
 
 @verbatim
 	obj-y += all files that builds the BSP (Assembler and/or C files)
 @endverbatim
 
-@subsection board_basefile board/\<boardname\>\<boardname\>.c
+@subsection board_basefile arch/\<architecture\>/boards/\<boardname\>\<boardname\>.c
 
 TBD
 
-@subsection board_doxygen board/\<boardname\>/\<boardname\>.dox
+@subsection board_doxygen arch/\<architecture\>/boards/\<boardname\>/\<boardname\>.dox
 
 This file should describe in short words your new board, what CPU
 it uses, what resources are provided and features it supports.
@@ -58,7 +58,7 @@ at the right architecture.
 
 @note Consider to use an unique page lable.
 
-@subsection board_lscript board/\<boardname\>/barebox.lds.S
+@subsection board_lscript arch/\<architecture\>/boards/\<boardname\>/barebox.lds.S
 
 If your board needs a special binary @a barebox layout, you can provide a local
 board linker script file. This will replace the generic one provided by your
diff --git a/drivers/nand/atmel_nand.c b/drivers/nand/atmel_nand.c
index c3669e5..6200bcf 100644
--- a/drivers/nand/atmel_nand.c
+++ b/drivers/nand/atmel_nand.c
@@ -12,7 +12,7 @@
  *     Richard Genoud (richard.genoud@gmail.com), Adeneo Copyright (C) 2007
  *
  *     Derived from Das barebox source code
- *     		(barebox-1.1.5/board/atmel/at91sam9263ek/nand.c)
+ *     		(barebox-1.1.5/arch/arm/boards/atmel/at91sam9263ek/nand.c)
  *     (C) Copyright 2006 ATMEL Rousset, Lacressonniere Nicolas
  *
  *
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
