Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1W1bi1-0000Wo-AU
 for barebox@lists.infradead.org; Fri, 10 Jan 2014 13:01:14 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 10 Jan 2014 14:00:45 +0100
Message-Id: <1389358845-15843-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: make Phytec and Freescale naming more consistent
To: barebox@lists.infradead.org

This makes the naming of the directories and defconfig files of the
Freescale and Phytec boards more consistent. We now consistently
add a vendor prefix and use hyphens between board and vendor:

<vendor>-<board> and <vendor>-<board>_defconfig

This has been generated with the following script.

rename () {
        from="$1"
        to="$2"
	sed -i "s/$from/$to/g" arch/arm/boards/Makefile
	sed -i "s/$from/$to/g" arch/arm/Makefile
	rm -rf "arch/arm/boards/$to"
	git mv "arch/arm/boards/$from" "arch/arm/boards/$to"
}

rename_defconfig () {
        from="$1"
        to="$2"
	rm -f "arch/arm/configs/$to"
	git mv "arch/arm/configs/$from" "arch/arm/configs/$to"
}

rename phycard-i.MX27 phytec-phycard-imx27
rename phycard-a-l1 phytec-phycard-omap3
rename phycard-a-xl2 phytec-phycard-omap4
rename pcm051 phytec-phycore-am335x
rename pcm038 phytec-phycore-imx27
rename pcm037 phytec-phycore-imx31
rename pcm043 phytec-phycore-imx35
rename pcm049 phytec-phycore-omap4460
rename pcm027 phytec-phycore-pxa270
rename phytec-pfla02 phytec-phyflex-imx6
rename imx21ads freescale-mx21-ads
rename imx27ads freescale-mx27-ads
rename freescale-mx25-3-stack freescale-mx25-3ds
rename freescale-mx35-3-stack freescale-mx35-3ds
rename freescale-mx51-pdk freescale-mx51-babbage
rename freescale-mx53-loco freescale-mx53-qsb
rename dmo-mx6-realq7 datamodul-edm-qmx6
rename_defconfig freescale_mx25_3stack_defconfig freescale-mx25-3ds_defconfig
rename_defconfig freescale_mx35_3stack_defconfig freescale-mx35-3ds_defconfig
rename_defconfig freescale_mx51_babbage_defconfig freescale-mx51-babbage_defconfig
rename_defconfig freescale_mx53_loco_defconfig freescale-mx53-qsb_defconfig
rename_defconfig freescale_mx53_smd_defconfig freescale-mx53-smd_defconfig
rename_defconfig imx23evk_defconfig freescale-mx23-evk_defconfig
rename_defconfig imx28evk_defconfig freescale-mx28-evk_defconfig
rename_defconfig mx21ads_defconfig freescale-mx21-ads_defconfig
rename_defconfig mx27ads_defconfig freescale-mx27-ads_defconfig
rename_defconfig pca100_defconfig phytec-phycard-imx27_defconfig
rename_defconfig pcm027_defconfig phytec-phycore-pxa270_defconfig
rename_defconfig pcm037_defconfig phytec-phycore-imx31_defconfig
rename_defconfig pcm038_defconfig phytec-phycore-imx27_defconfig
rename_defconfig pcm043_defconfig phytec-phycore-imx35_defconfig
rename_defconfig pcm049_defconfig phytec-phycore-omap4460_defconfig
rename_defconfig pcm049_xload_defconfig phytec-phycore-omap4460-xload_defconfig
rename_defconfig pcm051_defconfig phytec-phycore-am335x_defconfig
rename_defconfig phycard_a_l1_defconfig phytec-phycard-a-l1_defconfig
rename_defconfig phycard_a_l1_xload_defconfig phytec-phycard-a-l1-xload_defconfig
rename_defconfig phycard_a_xl2_defconfig phytec-phycard-a-xl2_defconfig
rename_defconfig phycard_a_xl2_xload_defconfig phytec-phycard-a-xl2-xload_defconfig

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Makefile                                  |  2 +-
 arch/arm/boards/Makefile                           | 32 +++++++++++-----------
 .../Makefile                                       |  0
 .../{dmo-mx6-realq7 => datamodul-edm-qmx6}/board.c |  0
 .../env/boot/mmc                                   |  0
 .../env/config-board                               |  0
 .../env/init/automount                             |  0
 .../flash-header.imxcfg                            |  0
 .../lowlevel.c                                     |  0
 .../{imx21ads => freescale-mx21-ads}/Makefile      |  0
 .../{imx21ads => freescale-mx21-ads}/env/bin/init  |  0
 .../{imx21ads => freescale-mx21-ads}/imx21ads.c    |  0
 .../{imx21ads => freescale-mx21-ads}/imx21ads.dox  |  0
 .../lowlevel_init.S                                |  0
 .../3stack.c                                       |  0
 .../Makefile                                       |  0
 .../env/bin/_update                                |  0
 .../env/bin/boot                                   |  0
 .../env/bin/hush_hack                              |  0
 .../env/bin/init                                   |  0
 .../env/bin/update_kernel                          |  0
 .../env/bin/update_root                            |  0
 .../env/config                                     |  0
 .../lowlevel_init.S                                |  0
 .../{imx27ads => freescale-mx27-ads}/Makefile      |  0
 .../env/bin/_update                                |  0
 .../{imx27ads => freescale-mx27-ads}/env/bin/boot  |  0
 .../{imx27ads => freescale-mx27-ads}/env/bin/init  |  0
 .../env/bin/update_kernel                          |  0
 .../env/bin/update_root                            |  0
 .../{imx27ads => freescale-mx27-ads}/env/config    |  0
 .../{imx27ads => freescale-mx27-ads}/imx27ads.c    |  0
 .../{imx27ads => freescale-mx27-ads}/imx27ads.dox  |  0
 .../lowlevel_init.S                                |  0
 .../3stack.c                                       |  0
 .../3stack.dox                                     |  0
 .../Makefile                                       |  0
 .../board-mx35_3stack.h                            |  0
 .../env/config                                     |  0
 .../flash_header.c                                 |  0
 .../lowlevel_init.S                                |  0
 .../Makefile                                       |  0
 .../board.c                                        |  0
 .../env/config-board                               |  0
 .../flash-header-imx51-babbage.imxcfg              |  0
 .../lowlevel.c                                     |  0
 .../mx51-pdk.dox                                   |  0
 .../Makefile                                       |  0
 .../board.c                                        |  0
 .../env/config-board                               |  0
 .../flash-header-imx53-loco.imxcfg                 |  0
 .../lowlevel.c                                     |  0
 .../mx53-pdk.dox                                   |  0
 .../Makefile                                       |  0
 .../env/config                                     |  0
 .../lowlevel_init.S                                |  0
 .../pca100.c                                       |  0
 .../pca100.dox                                     |  0
 .../Makefile                                       |  0
 .../env/config                                     |  0
 .../lowlevel.c                                     |  0
 .../pca-a-l1.c                                     |  0
 .../pca-a-l1.dox                                   |  0
 .../pca-a-l1.h                                     |  0
 .../Makefile                                       |  0
 .../env/bin/nand_bootstrap                         |  0
 .../env/config                                     |  0
 .../lowlevel.c                                     |  0
 .../{phycard-a-xl2 => phytec-phycard-omap4}/mux.c  |  0
 .../pca-a-xl2.c                                    |  0
 .../{pcm051 => phytec-phycore-am335x}/Makefile     |  0
 .../{pcm051 => phytec-phycore-am335x}/board.c      |  0
 .../{pcm051 => phytec-phycore-am335x}/env/boot/mmc |  0
 .../env/boot/nand                                  |  0
 .../{pcm051 => phytec-phycore-am335x}/env/boot/spi |  0
 .../env/config-board                               |  0
 .../{pcm051 => phytec-phycore-am335x}/lowlevel.c   |  0
 .../{pcm038 => phytec-phycore-imx27}/Makefile      |  0
 .../env/boot/nand-ubi                              |  0
 .../env/config-board                               |  0
 .../env/init/mtdparts-nand                         |  0
 .../env/init/mtdparts-nor                          |  0
 .../{pcm038 => phytec-phycore-imx27}/lowlevel.c    |  0
 .../{pcm038 => phytec-phycore-imx27}/pcm038.c      |  0
 .../{pcm038 => phytec-phycore-imx27}/pcm038.dox    |  0
 .../{pcm038 => phytec-phycore-imx27}/pcm970.c      |  0
 .../boards/{pcm038 => phytec-phycore-imx27}/pll.h  |  0
 .../{pcm037 => phytec-phycore-imx31}/Makefile      |  0
 .../env/boot/nand-ubi                              |  0
 .../env/config-board                               |  0
 .../env/init/mtdparts-nand                         |  0
 .../env/init/mtdparts-nor                          |  0
 .../{pcm037 => phytec-phycore-imx31}/lowlevel.c    |  0
 .../{pcm037 => phytec-phycore-imx31}/pcm037.c      |  0
 .../{pcm037 => phytec-phycore-imx31}/pcm037.dox    |  0
 .../{pcm043 => phytec-phycore-imx35}/Makefile      |  0
 .../env/boot/nand-ubi                              |  0
 .../env/config-board                               |  0
 .../env/init/mtdparts-nand                         |  0
 .../env/init/mtdparts-nor                          |  0
 .../{pcm043 => phytec-phycore-imx35}/lowlevel.c    |  0
 .../{pcm043 => phytec-phycore-imx35}/pcm043.c      |  0
 .../{pcm043 => phytec-phycore-imx35}/pcm043.dox    |  0
 .../{pcm049 => phytec-phycore-omap4460}/Makefile   |  0
 .../{pcm049 => phytec-phycore-omap4460}/board.c    |  0
 .../env/bin/init_board                             |  0
 .../env/bin/nand_bootstrap                         |  0
 .../{pcm049 => phytec-phycore-omap4460}/env/config |  0
 .../{pcm049 => phytec-phycore-omap4460}/lowlevel.c |  0
 .../{pcm049 => phytec-phycore-omap4460}/mux.c      |  0
 .../{pcm027 => phytec-phycore-pxa270}/Makefile     |  0
 .../{pcm027 => phytec-phycore-pxa270}/board.c      |  0
 .../{pcm027 => phytec-phycore-pxa270}/config.h     |  0
 .../{pcm027 => phytec-phycore-pxa270}/env/config   |  0
 .../lowlevel_init.S                                |  0
 .../Makefile                                       |  0
 .../{phytec-pfla02 => phytec-phyflex-imx6}/board.c |  0
 .../flash-header-phytec-pfla02-1gib.imxcfg         |  0
 .../flash-header-phytec-pfla02-2gib.imxcfg         |  0
 .../flash-header-phytec-pfla02.h                   |  0
 .../lowlevel.c                                     |  0
 ...1ads_defconfig => freescale-mx21-ads_defconfig} |  0
 ...3evk_defconfig => freescale-mx23-evk_defconfig} |  0
 ...tack_defconfig => freescale-mx25-3ds_defconfig} |  0
 ...7ads_defconfig => freescale-mx27-ads_defconfig} |  0
 ...8evk_defconfig => freescale-mx28-evk_defconfig} |  0
 ...tack_defconfig => freescale-mx35-3ds_defconfig} |  0
 ..._defconfig => freescale-mx51-babbage_defconfig} |  0
 ...loco_defconfig => freescale-mx53-qsb_defconfig} |  0
 ..._smd_defconfig => freescale-mx53-smd_defconfig} |  0
 ...fconfig => phytec-phycard-a-l1-xload_defconfig} |  0
 ..._l1_defconfig => phytec-phycard-a-l1_defconfig} |  0
 ...config => phytec-phycard-a-xl2-xload_defconfig} |  0
 ...l2_defconfig => phytec-phycard-a-xl2_defconfig} |  0
 ...00_defconfig => phytec-phycard-imx27_defconfig} |  0
 ...1_defconfig => phytec-phycore-am335x_defconfig} |  0
 ...38_defconfig => phytec-phycore-imx27_defconfig} |  0
 ...37_defconfig => phytec-phycore-imx31_defconfig} |  0
 ...43_defconfig => phytec-phycore-imx35_defconfig} |  0
 ...fig => phytec-phycore-omap4460-xload_defconfig} |  0
 ...defconfig => phytec-phycore-omap4460_defconfig} |  0
 ...7_defconfig => phytec-phycore-pxa270_defconfig} |  0
 142 files changed, 17 insertions(+), 17 deletions(-)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/Makefile (100%)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/board.c (100%)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/env/boot/mmc (100%)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/env/config-board (100%)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/env/init/automount (100%)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/flash-header.imxcfg (100%)
 rename arch/arm/boards/{dmo-mx6-realq7 => datamodul-edm-qmx6}/lowlevel.c (100%)
 rename arch/arm/boards/{imx21ads => freescale-mx21-ads}/Makefile (100%)
 rename arch/arm/boards/{imx21ads => freescale-mx21-ads}/env/bin/init (100%)
 rename arch/arm/boards/{imx21ads => freescale-mx21-ads}/imx21ads.c (100%)
 rename arch/arm/boards/{imx21ads => freescale-mx21-ads}/imx21ads.dox (100%)
 rename arch/arm/boards/{imx21ads => freescale-mx21-ads}/lowlevel_init.S (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/3stack.c (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/Makefile (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/bin/_update (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/bin/boot (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/bin/hush_hack (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/bin/init (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/bin/update_kernel (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/bin/update_root (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/env/config (100%)
 rename arch/arm/boards/{freescale-mx25-3-stack => freescale-mx25-3ds}/lowlevel_init.S (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/Makefile (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/env/bin/_update (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/env/bin/boot (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/env/bin/init (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/env/bin/update_kernel (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/env/bin/update_root (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/env/config (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/imx27ads.c (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/imx27ads.dox (100%)
 rename arch/arm/boards/{imx27ads => freescale-mx27-ads}/lowlevel_init.S (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/3stack.c (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/3stack.dox (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/Makefile (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/board-mx35_3stack.h (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/env/config (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/flash_header.c (100%)
 rename arch/arm/boards/{freescale-mx35-3-stack => freescale-mx35-3ds}/lowlevel_init.S (100%)
 rename arch/arm/boards/{freescale-mx51-pdk => freescale-mx51-babbage}/Makefile (100%)
 rename arch/arm/boards/{freescale-mx51-pdk => freescale-mx51-babbage}/board.c (100%)
 rename arch/arm/boards/{freescale-mx51-pdk => freescale-mx51-babbage}/env/config-board (100%)
 rename arch/arm/boards/{freescale-mx51-pdk => freescale-mx51-babbage}/flash-header-imx51-babbage.imxcfg (100%)
 rename arch/arm/boards/{freescale-mx51-pdk => freescale-mx51-babbage}/lowlevel.c (100%)
 rename arch/arm/boards/{freescale-mx51-pdk => freescale-mx51-babbage}/mx51-pdk.dox (100%)
 rename arch/arm/boards/{freescale-mx53-loco => freescale-mx53-qsb}/Makefile (100%)
 rename arch/arm/boards/{freescale-mx53-loco => freescale-mx53-qsb}/board.c (100%)
 rename arch/arm/boards/{freescale-mx53-loco => freescale-mx53-qsb}/env/config-board (100%)
 rename arch/arm/boards/{freescale-mx53-loco => freescale-mx53-qsb}/flash-header-imx53-loco.imxcfg (100%)
 rename arch/arm/boards/{freescale-mx53-loco => freescale-mx53-qsb}/lowlevel.c (100%)
 rename arch/arm/boards/{freescale-mx53-loco => freescale-mx53-qsb}/mx53-pdk.dox (100%)
 rename arch/arm/boards/{phycard-i.MX27 => phytec-phycard-imx27}/Makefile (100%)
 rename arch/arm/boards/{phycard-i.MX27 => phytec-phycard-imx27}/env/config (100%)
 rename arch/arm/boards/{phycard-i.MX27 => phytec-phycard-imx27}/lowlevel_init.S (100%)
 rename arch/arm/boards/{phycard-i.MX27 => phytec-phycard-imx27}/pca100.c (100%)
 rename arch/arm/boards/{phycard-i.MX27 => phytec-phycard-imx27}/pca100.dox (100%)
 rename arch/arm/boards/{phycard-a-l1 => phytec-phycard-omap3}/Makefile (100%)
 rename arch/arm/boards/{phycard-a-l1 => phytec-phycard-omap3}/env/config (100%)
 rename arch/arm/boards/{phycard-a-l1 => phytec-phycard-omap3}/lowlevel.c (100%)
 rename arch/arm/boards/{phycard-a-l1 => phytec-phycard-omap3}/pca-a-l1.c (100%)
 rename arch/arm/boards/{phycard-a-l1 => phytec-phycard-omap3}/pca-a-l1.dox (100%)
 rename arch/arm/boards/{phycard-a-l1 => phytec-phycard-omap3}/pca-a-l1.h (100%)
 rename arch/arm/boards/{phycard-a-xl2 => phytec-phycard-omap4}/Makefile (100%)
 rename arch/arm/boards/{phycard-a-xl2 => phytec-phycard-omap4}/env/bin/nand_bootstrap (100%)
 rename arch/arm/boards/{phycard-a-xl2 => phytec-phycard-omap4}/env/config (100%)
 rename arch/arm/boards/{phycard-a-xl2 => phytec-phycard-omap4}/lowlevel.c (100%)
 rename arch/arm/boards/{phycard-a-xl2 => phytec-phycard-omap4}/mux.c (100%)
 rename arch/arm/boards/{phycard-a-xl2 => phytec-phycard-omap4}/pca-a-xl2.c (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/Makefile (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/board.c (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/env/boot/mmc (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/env/boot/nand (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/env/boot/spi (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/env/config-board (100%)
 rename arch/arm/boards/{pcm051 => phytec-phycore-am335x}/lowlevel.c (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/Makefile (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx27}/env/boot/nand-ubi (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx27}/env/config-board (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx27}/env/init/mtdparts-nand (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/env/init/mtdparts-nor (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/lowlevel.c (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/pcm038.c (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/pcm038.dox (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/pcm970.c (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx27}/pll.h (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx31}/Makefile (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx31}/env/boot/nand-ubi (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx31}/env/config-board (100%)
 rename arch/arm/boards/{pcm038 => phytec-phycore-imx31}/env/init/mtdparts-nand (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx31}/env/init/mtdparts-nor (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx31}/lowlevel.c (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx31}/pcm037.c (100%)
 rename arch/arm/boards/{pcm037 => phytec-phycore-imx31}/pcm037.dox (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/Makefile (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/env/boot/nand-ubi (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/env/config-board (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/env/init/mtdparts-nand (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/env/init/mtdparts-nor (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/lowlevel.c (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/pcm043.c (100%)
 rename arch/arm/boards/{pcm043 => phytec-phycore-imx35}/pcm043.dox (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/Makefile (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/board.c (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/env/bin/init_board (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/env/bin/nand_bootstrap (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/env/config (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/lowlevel.c (100%)
 rename arch/arm/boards/{pcm049 => phytec-phycore-omap4460}/mux.c (100%)
 rename arch/arm/boards/{pcm027 => phytec-phycore-pxa270}/Makefile (100%)
 rename arch/arm/boards/{pcm027 => phytec-phycore-pxa270}/board.c (100%)
 rename arch/arm/boards/{pcm027 => phytec-phycore-pxa270}/config.h (100%)
 rename arch/arm/boards/{pcm027 => phytec-phycore-pxa270}/env/config (100%)
 rename arch/arm/boards/{pcm027 => phytec-phycore-pxa270}/lowlevel_init.S (100%)
 rename arch/arm/boards/{phytec-pfla02 => phytec-phyflex-imx6}/Makefile (100%)
 rename arch/arm/boards/{phytec-pfla02 => phytec-phyflex-imx6}/board.c (100%)
 rename arch/arm/boards/{phytec-pfla02 => phytec-phyflex-imx6}/flash-header-phytec-pfla02-1gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-pfla02 => phytec-phyflex-imx6}/flash-header-phytec-pfla02-2gib.imxcfg (100%)
 rename arch/arm/boards/{phytec-pfla02 => phytec-phyflex-imx6}/flash-header-phytec-pfla02.h (100%)
 rename arch/arm/boards/{phytec-pfla02 => phytec-phyflex-imx6}/lowlevel.c (100%)
 rename arch/arm/configs/{mx21ads_defconfig => freescale-mx21-ads_defconfig} (100%)
 rename arch/arm/configs/{imx23evk_defconfig => freescale-mx23-evk_defconfig} (100%)
 rename arch/arm/configs/{freescale_mx25_3stack_defconfig => freescale-mx25-3ds_defconfig} (100%)
 rename arch/arm/configs/{mx27ads_defconfig => freescale-mx27-ads_defconfig} (100%)
 rename arch/arm/configs/{imx28evk_defconfig => freescale-mx28-evk_defconfig} (100%)
 rename arch/arm/configs/{freescale_mx35_3stack_defconfig => freescale-mx35-3ds_defconfig} (100%)
 rename arch/arm/configs/{freescale_mx51_babbage_defconfig => freescale-mx51-babbage_defconfig} (100%)
 rename arch/arm/configs/{freescale_mx53_loco_defconfig => freescale-mx53-qsb_defconfig} (100%)
 rename arch/arm/configs/{freescale_mx53_smd_defconfig => freescale-mx53-smd_defconfig} (100%)
 rename arch/arm/configs/{phycard_a_l1_xload_defconfig => phytec-phycard-a-l1-xload_defconfig} (100%)
 rename arch/arm/configs/{phycard_a_l1_defconfig => phytec-phycard-a-l1_defconfig} (100%)
 rename arch/arm/configs/{phycard_a_xl2_xload_defconfig => phytec-phycard-a-xl2-xload_defconfig} (100%)
 rename arch/arm/configs/{phycard_a_xl2_defconfig => phytec-phycard-a-xl2_defconfig} (100%)
 rename arch/arm/configs/{pca100_defconfig => phytec-phycard-imx27_defconfig} (100%)
 rename arch/arm/configs/{pcm051_defconfig => phytec-phycore-am335x_defconfig} (100%)
 rename arch/arm/configs/{pcm038_defconfig => phytec-phycore-imx27_defconfig} (100%)
 rename arch/arm/configs/{pcm037_defconfig => phytec-phycore-imx31_defconfig} (100%)
 rename arch/arm/configs/{pcm043_defconfig => phytec-phycore-imx35_defconfig} (100%)
 rename arch/arm/configs/{pcm049_xload_defconfig => phytec-phycore-omap4460-xload_defconfig} (100%)
 rename arch/arm/configs/{pcm049_defconfig => phytec-phycore-omap4460_defconfig} (100%)
 rename arch/arm/configs/{pcm027_defconfig => phytec-phycore-pxa270_defconfig} (100%)

diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index fbc6480..c0b725d 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -88,7 +88,7 @@ board-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)	+= globalscale-mirabox
 board-$(CONFIG_MACH_MARVELL_ARMADA_XP_GP)	+= marvell-armada-xp-gp
 board-$(CONFIG_MACH_MINI2440)			+= friendlyarm-mini2440
 board-$(CONFIG_MACH_MINI6410)			+= friendlyarm-mini6410
-board-$(CONFIG_MACH_PCM027)			+= pcm027
+board-$(CONFIG_MACH_PCM027)			+= phytec-phycore-pxa270
 board-$(CONFIG_MACH_PLATHOME_OPENBLOCKS_AX3)	+= plathome-openblocks-ax3/
 board-$(CONFIG_MACH_SOLIDRUN_CUBOX)		+= solidrun-cubox
 board-$(CONFIG_MACH_TINY210)			+= friendlyarm-tiny210
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index bb26941..cfbba74 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -31,10 +31,10 @@ obj-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX35)		+= eukrea_cpuimx35/
 obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
-obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3-stack/
-obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3-stack/
-obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-pdk/
-obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-loco/
+obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
+obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
+obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-babbage/
+obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_GE863)			+= telit-evk-pro3/
@@ -42,9 +42,9 @@ obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_HIGHBANK)			+= highbank/
-obj-$(CONFIG_MACH_IMX21ADS)			+= imx21ads/
+obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
-obj-$(CONFIG_MACH_IMX27ADS)			+= imx27ads/
+obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
 obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MMCCPU)			+= mmccpu/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
@@ -56,21 +56,21 @@ obj-$(CONFIG_MACH_NXDB500)			+= netx/
 obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
 obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
 obj-$(CONFIG_MACH_PANDA)			+= panda/
-obj-$(CONFIG_MACH_PCA100)			+= phycard-i.MX27/
-obj-$(CONFIG_MACH_PCAAL1)			+= phycard-a-l1/
-obj-$(CONFIG_MACH_PCAAXL2)			+= phycard-a-xl2/
-obj-$(CONFIG_MACH_PCM037)			+= pcm037/
-obj-$(CONFIG_MACH_PCM038)			+= pcm038/
-obj-$(CONFIG_MACH_PCM043)			+= pcm043/
-obj-$(CONFIG_MACH_PCM049)			+= pcm049/
-obj-$(CONFIG_MACH_PCM051)			+= pcm051/
-obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-pfla02/
+obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
+obj-$(CONFIG_MACH_PCAAL1)			+= phytec-phycard-omap3/
+obj-$(CONFIG_MACH_PCAAXL2)			+= phytec-phycard-omap4/
+obj-$(CONFIG_MACH_PCM037)			+= phytec-phycore-imx31/
+obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
+obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
+obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
+obj-$(CONFIG_MACH_PCM051)			+= phytec-phycore-am335x/
+obj-$(CONFIG_MACH_PHYTEC_PFLA02)		+= phytec-phyflex-imx6/
 obj-$(CONFIG_MACH_PM9261)			+= pm9261/
 obj-$(CONFIG_MACH_PM9263)			+= pm9263/
 obj-$(CONFIG_MACH_PM9G45)			+= pm9g45/
 obj-$(CONFIG_MACH_QIL_A9260)			+= qil-a926x/
 obj-$(CONFIG_MACH_QIL_A9G20)			+= qil-a926x/
-obj-$(CONFIG_MACH_REALQ7)			+= dmo-mx6-realq7/
+obj-$(CONFIG_MACH_REALQ7)			+= datamodul-edm-qmx6/
 obj-$(CONFIG_MACH_RPI)				+= raspberry-pi/
 obj-$(CONFIG_MACH_SABRELITE)			+= freescale-mx6-sabrelite/
 obj-$(CONFIG_MACH_SABRESD)			+= freescale-mx6-sabresd/
diff --git a/arch/arm/boards/dmo-mx6-realq7/Makefile b/arch/arm/boards/datamodul-edm-qmx6/Makefile
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/Makefile
rename to arch/arm/boards/datamodul-edm-qmx6/Makefile
diff --git a/arch/arm/boards/dmo-mx6-realq7/board.c b/arch/arm/boards/datamodul-edm-qmx6/board.c
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/board.c
rename to arch/arm/boards/datamodul-edm-qmx6/board.c
diff --git a/arch/arm/boards/dmo-mx6-realq7/env/boot/mmc b/arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/env/boot/mmc
rename to arch/arm/boards/datamodul-edm-qmx6/env/boot/mmc
diff --git a/arch/arm/boards/dmo-mx6-realq7/env/config-board b/arch/arm/boards/datamodul-edm-qmx6/env/config-board
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/env/config-board
rename to arch/arm/boards/datamodul-edm-qmx6/env/config-board
diff --git a/arch/arm/boards/dmo-mx6-realq7/env/init/automount b/arch/arm/boards/datamodul-edm-qmx6/env/init/automount
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/env/init/automount
rename to arch/arm/boards/datamodul-edm-qmx6/env/init/automount
diff --git a/arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg b/arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/flash-header.imxcfg
rename to arch/arm/boards/datamodul-edm-qmx6/flash-header.imxcfg
diff --git a/arch/arm/boards/dmo-mx6-realq7/lowlevel.c b/arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
similarity index 100%
rename from arch/arm/boards/dmo-mx6-realq7/lowlevel.c
rename to arch/arm/boards/datamodul-edm-qmx6/lowlevel.c
diff --git a/arch/arm/boards/imx21ads/Makefile b/arch/arm/boards/freescale-mx21-ads/Makefile
similarity index 100%
rename from arch/arm/boards/imx21ads/Makefile
rename to arch/arm/boards/freescale-mx21-ads/Makefile
diff --git a/arch/arm/boards/imx21ads/env/bin/init b/arch/arm/boards/freescale-mx21-ads/env/bin/init
similarity index 100%
rename from arch/arm/boards/imx21ads/env/bin/init
rename to arch/arm/boards/freescale-mx21-ads/env/bin/init
diff --git a/arch/arm/boards/imx21ads/imx21ads.c b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
similarity index 100%
rename from arch/arm/boards/imx21ads/imx21ads.c
rename to arch/arm/boards/freescale-mx21-ads/imx21ads.c
diff --git a/arch/arm/boards/imx21ads/imx21ads.dox b/arch/arm/boards/freescale-mx21-ads/imx21ads.dox
similarity index 100%
rename from arch/arm/boards/imx21ads/imx21ads.dox
rename to arch/arm/boards/freescale-mx21-ads/imx21ads.dox
diff --git a/arch/arm/boards/imx21ads/lowlevel_init.S b/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/imx21ads/lowlevel_init.S
rename to arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
diff --git a/arch/arm/boards/freescale-mx25-3-stack/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/3stack.c
rename to arch/arm/boards/freescale-mx25-3ds/3stack.c
diff --git a/arch/arm/boards/freescale-mx25-3-stack/Makefile b/arch/arm/boards/freescale-mx25-3ds/Makefile
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/Makefile
rename to arch/arm/boards/freescale-mx25-3ds/Makefile
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/bin/_update b/arch/arm/boards/freescale-mx25-3ds/env/bin/_update
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/bin/_update
rename to arch/arm/boards/freescale-mx25-3ds/env/bin/_update
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/bin/boot b/arch/arm/boards/freescale-mx25-3ds/env/bin/boot
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/bin/boot
rename to arch/arm/boards/freescale-mx25-3ds/env/bin/boot
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/bin/hush_hack b/arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/bin/hush_hack
rename to arch/arm/boards/freescale-mx25-3ds/env/bin/hush_hack
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/bin/init b/arch/arm/boards/freescale-mx25-3ds/env/bin/init
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/bin/init
rename to arch/arm/boards/freescale-mx25-3ds/env/bin/init
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/bin/update_kernel b/arch/arm/boards/freescale-mx25-3ds/env/bin/update_kernel
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/bin/update_kernel
rename to arch/arm/boards/freescale-mx25-3ds/env/bin/update_kernel
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/bin/update_root b/arch/arm/boards/freescale-mx25-3ds/env/bin/update_root
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/bin/update_root
rename to arch/arm/boards/freescale-mx25-3ds/env/bin/update_root
diff --git a/arch/arm/boards/freescale-mx25-3-stack/env/config b/arch/arm/boards/freescale-mx25-3ds/env/config
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/env/config
rename to arch/arm/boards/freescale-mx25-3ds/env/config
diff --git a/arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/freescale-mx25-3-stack/lowlevel_init.S
rename to arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
diff --git a/arch/arm/boards/imx27ads/Makefile b/arch/arm/boards/freescale-mx27-ads/Makefile
similarity index 100%
rename from arch/arm/boards/imx27ads/Makefile
rename to arch/arm/boards/freescale-mx27-ads/Makefile
diff --git a/arch/arm/boards/imx27ads/env/bin/_update b/arch/arm/boards/freescale-mx27-ads/env/bin/_update
similarity index 100%
rename from arch/arm/boards/imx27ads/env/bin/_update
rename to arch/arm/boards/freescale-mx27-ads/env/bin/_update
diff --git a/arch/arm/boards/imx27ads/env/bin/boot b/arch/arm/boards/freescale-mx27-ads/env/bin/boot
similarity index 100%
rename from arch/arm/boards/imx27ads/env/bin/boot
rename to arch/arm/boards/freescale-mx27-ads/env/bin/boot
diff --git a/arch/arm/boards/imx27ads/env/bin/init b/arch/arm/boards/freescale-mx27-ads/env/bin/init
similarity index 100%
rename from arch/arm/boards/imx27ads/env/bin/init
rename to arch/arm/boards/freescale-mx27-ads/env/bin/init
diff --git a/arch/arm/boards/imx27ads/env/bin/update_kernel b/arch/arm/boards/freescale-mx27-ads/env/bin/update_kernel
similarity index 100%
rename from arch/arm/boards/imx27ads/env/bin/update_kernel
rename to arch/arm/boards/freescale-mx27-ads/env/bin/update_kernel
diff --git a/arch/arm/boards/imx27ads/env/bin/update_root b/arch/arm/boards/freescale-mx27-ads/env/bin/update_root
similarity index 100%
rename from arch/arm/boards/imx27ads/env/bin/update_root
rename to arch/arm/boards/freescale-mx27-ads/env/bin/update_root
diff --git a/arch/arm/boards/imx27ads/env/config b/arch/arm/boards/freescale-mx27-ads/env/config
similarity index 100%
rename from arch/arm/boards/imx27ads/env/config
rename to arch/arm/boards/freescale-mx27-ads/env/config
diff --git a/arch/arm/boards/imx27ads/imx27ads.c b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
similarity index 100%
rename from arch/arm/boards/imx27ads/imx27ads.c
rename to arch/arm/boards/freescale-mx27-ads/imx27ads.c
diff --git a/arch/arm/boards/imx27ads/imx27ads.dox b/arch/arm/boards/freescale-mx27-ads/imx27ads.dox
similarity index 100%
rename from arch/arm/boards/imx27ads/imx27ads.dox
rename to arch/arm/boards/freescale-mx27-ads/imx27ads.dox
diff --git a/arch/arm/boards/imx27ads/lowlevel_init.S b/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/imx27ads/lowlevel_init.S
rename to arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.c b/arch/arm/boards/freescale-mx35-3ds/3stack.c
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/3stack.c
rename to arch/arm/boards/freescale-mx35-3ds/3stack.c
diff --git a/arch/arm/boards/freescale-mx35-3-stack/3stack.dox b/arch/arm/boards/freescale-mx35-3ds/3stack.dox
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/3stack.dox
rename to arch/arm/boards/freescale-mx35-3ds/3stack.dox
diff --git a/arch/arm/boards/freescale-mx35-3-stack/Makefile b/arch/arm/boards/freescale-mx35-3ds/Makefile
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/Makefile
rename to arch/arm/boards/freescale-mx35-3ds/Makefile
diff --git a/arch/arm/boards/freescale-mx35-3-stack/board-mx35_3stack.h b/arch/arm/boards/freescale-mx35-3ds/board-mx35_3stack.h
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/board-mx35_3stack.h
rename to arch/arm/boards/freescale-mx35-3ds/board-mx35_3stack.h
diff --git a/arch/arm/boards/freescale-mx35-3-stack/env/config b/arch/arm/boards/freescale-mx35-3ds/env/config
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/env/config
rename to arch/arm/boards/freescale-mx35-3ds/env/config
diff --git a/arch/arm/boards/freescale-mx35-3-stack/flash_header.c b/arch/arm/boards/freescale-mx35-3ds/flash_header.c
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/flash_header.c
rename to arch/arm/boards/freescale-mx35-3ds/flash_header.c
diff --git a/arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/freescale-mx35-3-stack/lowlevel_init.S
rename to arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
diff --git a/arch/arm/boards/freescale-mx51-pdk/Makefile b/arch/arm/boards/freescale-mx51-babbage/Makefile
similarity index 100%
rename from arch/arm/boards/freescale-mx51-pdk/Makefile
rename to arch/arm/boards/freescale-mx51-babbage/Makefile
diff --git a/arch/arm/boards/freescale-mx51-pdk/board.c b/arch/arm/boards/freescale-mx51-babbage/board.c
similarity index 100%
rename from arch/arm/boards/freescale-mx51-pdk/board.c
rename to arch/arm/boards/freescale-mx51-babbage/board.c
diff --git a/arch/arm/boards/freescale-mx51-pdk/env/config-board b/arch/arm/boards/freescale-mx51-babbage/env/config-board
similarity index 100%
rename from arch/arm/boards/freescale-mx51-pdk/env/config-board
rename to arch/arm/boards/freescale-mx51-babbage/env/config-board
diff --git a/arch/arm/boards/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg b/arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
similarity index 100%
rename from arch/arm/boards/freescale-mx51-pdk/flash-header-imx51-babbage.imxcfg
rename to arch/arm/boards/freescale-mx51-babbage/flash-header-imx51-babbage.imxcfg
diff --git a/arch/arm/boards/freescale-mx51-pdk/lowlevel.c b/arch/arm/boards/freescale-mx51-babbage/lowlevel.c
similarity index 100%
rename from arch/arm/boards/freescale-mx51-pdk/lowlevel.c
rename to arch/arm/boards/freescale-mx51-babbage/lowlevel.c
diff --git a/arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox b/arch/arm/boards/freescale-mx51-babbage/mx51-pdk.dox
similarity index 100%
rename from arch/arm/boards/freescale-mx51-pdk/mx51-pdk.dox
rename to arch/arm/boards/freescale-mx51-babbage/mx51-pdk.dox
diff --git a/arch/arm/boards/freescale-mx53-loco/Makefile b/arch/arm/boards/freescale-mx53-qsb/Makefile
similarity index 100%
rename from arch/arm/boards/freescale-mx53-loco/Makefile
rename to arch/arm/boards/freescale-mx53-qsb/Makefile
diff --git a/arch/arm/boards/freescale-mx53-loco/board.c b/arch/arm/boards/freescale-mx53-qsb/board.c
similarity index 100%
rename from arch/arm/boards/freescale-mx53-loco/board.c
rename to arch/arm/boards/freescale-mx53-qsb/board.c
diff --git a/arch/arm/boards/freescale-mx53-loco/env/config-board b/arch/arm/boards/freescale-mx53-qsb/env/config-board
similarity index 100%
rename from arch/arm/boards/freescale-mx53-loco/env/config-board
rename to arch/arm/boards/freescale-mx53-qsb/env/config-board
diff --git a/arch/arm/boards/freescale-mx53-loco/flash-header-imx53-loco.imxcfg b/arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
similarity index 100%
rename from arch/arm/boards/freescale-mx53-loco/flash-header-imx53-loco.imxcfg
rename to arch/arm/boards/freescale-mx53-qsb/flash-header-imx53-loco.imxcfg
diff --git a/arch/arm/boards/freescale-mx53-loco/lowlevel.c b/arch/arm/boards/freescale-mx53-qsb/lowlevel.c
similarity index 100%
rename from arch/arm/boards/freescale-mx53-loco/lowlevel.c
rename to arch/arm/boards/freescale-mx53-qsb/lowlevel.c
diff --git a/arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox b/arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox
similarity index 100%
rename from arch/arm/boards/freescale-mx53-loco/mx53-pdk.dox
rename to arch/arm/boards/freescale-mx53-qsb/mx53-pdk.dox
diff --git a/arch/arm/boards/phycard-i.MX27/Makefile b/arch/arm/boards/phytec-phycard-imx27/Makefile
similarity index 100%
rename from arch/arm/boards/phycard-i.MX27/Makefile
rename to arch/arm/boards/phytec-phycard-imx27/Makefile
diff --git a/arch/arm/boards/phycard-i.MX27/env/config b/arch/arm/boards/phytec-phycard-imx27/env/config
similarity index 100%
rename from arch/arm/boards/phycard-i.MX27/env/config
rename to arch/arm/boards/phytec-phycard-imx27/env/config
diff --git a/arch/arm/boards/phycard-i.MX27/lowlevel_init.S b/arch/arm/boards/phytec-phycard-imx27/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/phycard-i.MX27/lowlevel_init.S
rename to arch/arm/boards/phytec-phycard-imx27/lowlevel_init.S
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.c b/arch/arm/boards/phytec-phycard-imx27/pca100.c
similarity index 100%
rename from arch/arm/boards/phycard-i.MX27/pca100.c
rename to arch/arm/boards/phytec-phycard-imx27/pca100.c
diff --git a/arch/arm/boards/phycard-i.MX27/pca100.dox b/arch/arm/boards/phytec-phycard-imx27/pca100.dox
similarity index 100%
rename from arch/arm/boards/phycard-i.MX27/pca100.dox
rename to arch/arm/boards/phytec-phycard-imx27/pca100.dox
diff --git a/arch/arm/boards/phycard-a-l1/Makefile b/arch/arm/boards/phytec-phycard-omap3/Makefile
similarity index 100%
rename from arch/arm/boards/phycard-a-l1/Makefile
rename to arch/arm/boards/phytec-phycard-omap3/Makefile
diff --git a/arch/arm/boards/phycard-a-l1/env/config b/arch/arm/boards/phytec-phycard-omap3/env/config
similarity index 100%
rename from arch/arm/boards/phycard-a-l1/env/config
rename to arch/arm/boards/phytec-phycard-omap3/env/config
diff --git a/arch/arm/boards/phycard-a-l1/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
similarity index 100%
rename from arch/arm/boards/phycard-a-l1/lowlevel.c
rename to arch/arm/boards/phytec-phycard-omap3/lowlevel.c
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
similarity index 100%
rename from arch/arm/boards/phycard-a-l1/pca-a-l1.c
rename to arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.dox b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox
similarity index 100%
rename from arch/arm/boards/phycard-a-l1/pca-a-l1.dox
rename to arch/arm/boards/phytec-phycard-omap3/pca-a-l1.dox
diff --git a/arch/arm/boards/phycard-a-l1/pca-a-l1.h b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
similarity index 100%
rename from arch/arm/boards/phycard-a-l1/pca-a-l1.h
rename to arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
diff --git a/arch/arm/boards/phycard-a-xl2/Makefile b/arch/arm/boards/phytec-phycard-omap4/Makefile
similarity index 100%
rename from arch/arm/boards/phycard-a-xl2/Makefile
rename to arch/arm/boards/phytec-phycard-omap4/Makefile
diff --git a/arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap b/arch/arm/boards/phytec-phycard-omap4/env/bin/nand_bootstrap
similarity index 100%
rename from arch/arm/boards/phycard-a-xl2/env/bin/nand_bootstrap
rename to arch/arm/boards/phytec-phycard-omap4/env/bin/nand_bootstrap
diff --git a/arch/arm/boards/phycard-a-xl2/env/config b/arch/arm/boards/phytec-phycard-omap4/env/config
similarity index 100%
rename from arch/arm/boards/phycard-a-xl2/env/config
rename to arch/arm/boards/phytec-phycard-omap4/env/config
diff --git a/arch/arm/boards/phycard-a-xl2/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
similarity index 100%
rename from arch/arm/boards/phycard-a-xl2/lowlevel.c
rename to arch/arm/boards/phytec-phycard-omap4/lowlevel.c
diff --git a/arch/arm/boards/phycard-a-xl2/mux.c b/arch/arm/boards/phytec-phycard-omap4/mux.c
similarity index 100%
rename from arch/arm/boards/phycard-a-xl2/mux.c
rename to arch/arm/boards/phytec-phycard-omap4/mux.c
diff --git a/arch/arm/boards/phycard-a-xl2/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
similarity index 100%
rename from arch/arm/boards/phycard-a-xl2/pca-a-xl2.c
rename to arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
diff --git a/arch/arm/boards/pcm051/Makefile b/arch/arm/boards/phytec-phycore-am335x/Makefile
similarity index 100%
rename from arch/arm/boards/pcm051/Makefile
rename to arch/arm/boards/phytec-phycore-am335x/Makefile
diff --git a/arch/arm/boards/pcm051/board.c b/arch/arm/boards/phytec-phycore-am335x/board.c
similarity index 100%
rename from arch/arm/boards/pcm051/board.c
rename to arch/arm/boards/phytec-phycore-am335x/board.c
diff --git a/arch/arm/boards/pcm051/env/boot/mmc b/arch/arm/boards/phytec-phycore-am335x/env/boot/mmc
similarity index 100%
rename from arch/arm/boards/pcm051/env/boot/mmc
rename to arch/arm/boards/phytec-phycore-am335x/env/boot/mmc
diff --git a/arch/arm/boards/pcm051/env/boot/nand b/arch/arm/boards/phytec-phycore-am335x/env/boot/nand
similarity index 100%
rename from arch/arm/boards/pcm051/env/boot/nand
rename to arch/arm/boards/phytec-phycore-am335x/env/boot/nand
diff --git a/arch/arm/boards/pcm051/env/boot/spi b/arch/arm/boards/phytec-phycore-am335x/env/boot/spi
similarity index 100%
rename from arch/arm/boards/pcm051/env/boot/spi
rename to arch/arm/boards/phytec-phycore-am335x/env/boot/spi
diff --git a/arch/arm/boards/pcm051/env/config-board b/arch/arm/boards/phytec-phycore-am335x/env/config-board
similarity index 100%
rename from arch/arm/boards/pcm051/env/config-board
rename to arch/arm/boards/phytec-phycore-am335x/env/config-board
diff --git a/arch/arm/boards/pcm051/lowlevel.c b/arch/arm/boards/phytec-phycore-am335x/lowlevel.c
similarity index 100%
rename from arch/arm/boards/pcm051/lowlevel.c
rename to arch/arm/boards/phytec-phycore-am335x/lowlevel.c
diff --git a/arch/arm/boards/pcm038/Makefile b/arch/arm/boards/phytec-phycore-imx27/Makefile
similarity index 100%
rename from arch/arm/boards/pcm038/Makefile
rename to arch/arm/boards/phytec-phycore-imx27/Makefile
diff --git a/arch/arm/boards/pcm037/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
similarity index 100%
rename from arch/arm/boards/pcm037/env/boot/nand-ubi
rename to arch/arm/boards/phytec-phycore-imx27/env/boot/nand-ubi
diff --git a/arch/arm/boards/pcm037/env/config-board b/arch/arm/boards/phytec-phycore-imx27/env/config-board
similarity index 100%
rename from arch/arm/boards/pcm037/env/config-board
rename to arch/arm/boards/phytec-phycore-imx27/env/config-board
diff --git a/arch/arm/boards/pcm037/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
similarity index 100%
rename from arch/arm/boards/pcm037/env/init/mtdparts-nand
rename to arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nand
diff --git a/arch/arm/boards/pcm038/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
similarity index 100%
rename from arch/arm/boards/pcm038/env/init/mtdparts-nor
rename to arch/arm/boards/phytec-phycore-imx27/env/init/mtdparts-nor
diff --git a/arch/arm/boards/pcm038/lowlevel.c b/arch/arm/boards/phytec-phycore-imx27/lowlevel.c
similarity index 100%
rename from arch/arm/boards/pcm038/lowlevel.c
rename to arch/arm/boards/phytec-phycore-imx27/lowlevel.c
diff --git a/arch/arm/boards/pcm038/pcm038.c b/arch/arm/boards/phytec-phycore-imx27/pcm038.c
similarity index 100%
rename from arch/arm/boards/pcm038/pcm038.c
rename to arch/arm/boards/phytec-phycore-imx27/pcm038.c
diff --git a/arch/arm/boards/pcm038/pcm038.dox b/arch/arm/boards/phytec-phycore-imx27/pcm038.dox
similarity index 100%
rename from arch/arm/boards/pcm038/pcm038.dox
rename to arch/arm/boards/phytec-phycore-imx27/pcm038.dox
diff --git a/arch/arm/boards/pcm038/pcm970.c b/arch/arm/boards/phytec-phycore-imx27/pcm970.c
similarity index 100%
rename from arch/arm/boards/pcm038/pcm970.c
rename to arch/arm/boards/phytec-phycore-imx27/pcm970.c
diff --git a/arch/arm/boards/pcm038/pll.h b/arch/arm/boards/phytec-phycore-imx27/pll.h
similarity index 100%
rename from arch/arm/boards/pcm038/pll.h
rename to arch/arm/boards/phytec-phycore-imx27/pll.h
diff --git a/arch/arm/boards/pcm037/Makefile b/arch/arm/boards/phytec-phycore-imx31/Makefile
similarity index 100%
rename from arch/arm/boards/pcm037/Makefile
rename to arch/arm/boards/phytec-phycore-imx31/Makefile
diff --git a/arch/arm/boards/pcm038/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
similarity index 100%
rename from arch/arm/boards/pcm038/env/boot/nand-ubi
rename to arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
diff --git a/arch/arm/boards/pcm038/env/config-board b/arch/arm/boards/phytec-phycore-imx31/env/config-board
similarity index 100%
rename from arch/arm/boards/pcm038/env/config-board
rename to arch/arm/boards/phytec-phycore-imx31/env/config-board
diff --git a/arch/arm/boards/pcm038/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
similarity index 100%
rename from arch/arm/boards/pcm038/env/init/mtdparts-nand
rename to arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
diff --git a/arch/arm/boards/pcm037/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
similarity index 100%
rename from arch/arm/boards/pcm037/env/init/mtdparts-nor
rename to arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
diff --git a/arch/arm/boards/pcm037/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
similarity index 100%
rename from arch/arm/boards/pcm037/lowlevel.c
rename to arch/arm/boards/phytec-phycore-imx31/lowlevel.c
diff --git a/arch/arm/boards/pcm037/pcm037.c b/arch/arm/boards/phytec-phycore-imx31/pcm037.c
similarity index 100%
rename from arch/arm/boards/pcm037/pcm037.c
rename to arch/arm/boards/phytec-phycore-imx31/pcm037.c
diff --git a/arch/arm/boards/pcm037/pcm037.dox b/arch/arm/boards/phytec-phycore-imx31/pcm037.dox
similarity index 100%
rename from arch/arm/boards/pcm037/pcm037.dox
rename to arch/arm/boards/phytec-phycore-imx31/pcm037.dox
diff --git a/arch/arm/boards/pcm043/Makefile b/arch/arm/boards/phytec-phycore-imx35/Makefile
similarity index 100%
rename from arch/arm/boards/pcm043/Makefile
rename to arch/arm/boards/phytec-phycore-imx35/Makefile
diff --git a/arch/arm/boards/pcm043/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
similarity index 100%
rename from arch/arm/boards/pcm043/env/boot/nand-ubi
rename to arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
diff --git a/arch/arm/boards/pcm043/env/config-board b/arch/arm/boards/phytec-phycore-imx35/env/config-board
similarity index 100%
rename from arch/arm/boards/pcm043/env/config-board
rename to arch/arm/boards/phytec-phycore-imx35/env/config-board
diff --git a/arch/arm/boards/pcm043/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
similarity index 100%
rename from arch/arm/boards/pcm043/env/init/mtdparts-nand
rename to arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
diff --git a/arch/arm/boards/pcm043/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
similarity index 100%
rename from arch/arm/boards/pcm043/env/init/mtdparts-nor
rename to arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
diff --git a/arch/arm/boards/pcm043/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
similarity index 100%
rename from arch/arm/boards/pcm043/lowlevel.c
rename to arch/arm/boards/phytec-phycore-imx35/lowlevel.c
diff --git a/arch/arm/boards/pcm043/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
similarity index 100%
rename from arch/arm/boards/pcm043/pcm043.c
rename to arch/arm/boards/phytec-phycore-imx35/pcm043.c
diff --git a/arch/arm/boards/pcm043/pcm043.dox b/arch/arm/boards/phytec-phycore-imx35/pcm043.dox
similarity index 100%
rename from arch/arm/boards/pcm043/pcm043.dox
rename to arch/arm/boards/phytec-phycore-imx35/pcm043.dox
diff --git a/arch/arm/boards/pcm049/Makefile b/arch/arm/boards/phytec-phycore-omap4460/Makefile
similarity index 100%
rename from arch/arm/boards/pcm049/Makefile
rename to arch/arm/boards/phytec-phycore-omap4460/Makefile
diff --git a/arch/arm/boards/pcm049/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
similarity index 100%
rename from arch/arm/boards/pcm049/board.c
rename to arch/arm/boards/phytec-phycore-omap4460/board.c
diff --git a/arch/arm/boards/pcm049/env/bin/init_board b/arch/arm/boards/phytec-phycore-omap4460/env/bin/init_board
similarity index 100%
rename from arch/arm/boards/pcm049/env/bin/init_board
rename to arch/arm/boards/phytec-phycore-omap4460/env/bin/init_board
diff --git a/arch/arm/boards/pcm049/env/bin/nand_bootstrap b/arch/arm/boards/phytec-phycore-omap4460/env/bin/nand_bootstrap
similarity index 100%
rename from arch/arm/boards/pcm049/env/bin/nand_bootstrap
rename to arch/arm/boards/phytec-phycore-omap4460/env/bin/nand_bootstrap
diff --git a/arch/arm/boards/pcm049/env/config b/arch/arm/boards/phytec-phycore-omap4460/env/config
similarity index 100%
rename from arch/arm/boards/pcm049/env/config
rename to arch/arm/boards/phytec-phycore-omap4460/env/config
diff --git a/arch/arm/boards/pcm049/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
similarity index 100%
rename from arch/arm/boards/pcm049/lowlevel.c
rename to arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/phytec-phycore-omap4460/mux.c
similarity index 100%
rename from arch/arm/boards/pcm049/mux.c
rename to arch/arm/boards/phytec-phycore-omap4460/mux.c
diff --git a/arch/arm/boards/pcm027/Makefile b/arch/arm/boards/phytec-phycore-pxa270/Makefile
similarity index 100%
rename from arch/arm/boards/pcm027/Makefile
rename to arch/arm/boards/phytec-phycore-pxa270/Makefile
diff --git a/arch/arm/boards/pcm027/board.c b/arch/arm/boards/phytec-phycore-pxa270/board.c
similarity index 100%
rename from arch/arm/boards/pcm027/board.c
rename to arch/arm/boards/phytec-phycore-pxa270/board.c
diff --git a/arch/arm/boards/pcm027/config.h b/arch/arm/boards/phytec-phycore-pxa270/config.h
similarity index 100%
rename from arch/arm/boards/pcm027/config.h
rename to arch/arm/boards/phytec-phycore-pxa270/config.h
diff --git a/arch/arm/boards/pcm027/env/config b/arch/arm/boards/phytec-phycore-pxa270/env/config
similarity index 100%
rename from arch/arm/boards/pcm027/env/config
rename to arch/arm/boards/phytec-phycore-pxa270/env/config
diff --git a/arch/arm/boards/pcm027/lowlevel_init.S b/arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
similarity index 100%
rename from arch/arm/boards/pcm027/lowlevel_init.S
rename to arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
diff --git a/arch/arm/boards/phytec-pfla02/Makefile b/arch/arm/boards/phytec-phyflex-imx6/Makefile
similarity index 100%
rename from arch/arm/boards/phytec-pfla02/Makefile
rename to arch/arm/boards/phytec-phyflex-imx6/Makefile
diff --git a/arch/arm/boards/phytec-pfla02/board.c b/arch/arm/boards/phytec-phyflex-imx6/board.c
similarity index 100%
rename from arch/arm/boards/phytec-pfla02/board.c
rename to arch/arm/boards/phytec-phyflex-imx6/board.c
diff --git a/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-1gib.imxcfg
rename to arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-1gib.imxcfg
diff --git a/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
similarity index 100%
rename from arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02-2gib.imxcfg
rename to arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02-2gib.imxcfg
diff --git a/arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h b/arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
similarity index 100%
rename from arch/arm/boards/phytec-pfla02/flash-header-phytec-pfla02.h
rename to arch/arm/boards/phytec-phyflex-imx6/flash-header-phytec-pfla02.h
diff --git a/arch/arm/boards/phytec-pfla02/lowlevel.c b/arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
similarity index 100%
rename from arch/arm/boards/phytec-pfla02/lowlevel.c
rename to arch/arm/boards/phytec-phyflex-imx6/lowlevel.c
diff --git a/arch/arm/configs/mx21ads_defconfig b/arch/arm/configs/freescale-mx21-ads_defconfig
similarity index 100%
rename from arch/arm/configs/mx21ads_defconfig
rename to arch/arm/configs/freescale-mx21-ads_defconfig
diff --git a/arch/arm/configs/imx23evk_defconfig b/arch/arm/configs/freescale-mx23-evk_defconfig
similarity index 100%
rename from arch/arm/configs/imx23evk_defconfig
rename to arch/arm/configs/freescale-mx23-evk_defconfig
diff --git a/arch/arm/configs/freescale_mx25_3stack_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
similarity index 100%
rename from arch/arm/configs/freescale_mx25_3stack_defconfig
rename to arch/arm/configs/freescale-mx25-3ds_defconfig
diff --git a/arch/arm/configs/mx27ads_defconfig b/arch/arm/configs/freescale-mx27-ads_defconfig
similarity index 100%
rename from arch/arm/configs/mx27ads_defconfig
rename to arch/arm/configs/freescale-mx27-ads_defconfig
diff --git a/arch/arm/configs/imx28evk_defconfig b/arch/arm/configs/freescale-mx28-evk_defconfig
similarity index 100%
rename from arch/arm/configs/imx28evk_defconfig
rename to arch/arm/configs/freescale-mx28-evk_defconfig
diff --git a/arch/arm/configs/freescale_mx35_3stack_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
similarity index 100%
rename from arch/arm/configs/freescale_mx35_3stack_defconfig
rename to arch/arm/configs/freescale-mx35-3ds_defconfig
diff --git a/arch/arm/configs/freescale_mx51_babbage_defconfig b/arch/arm/configs/freescale-mx51-babbage_defconfig
similarity index 100%
rename from arch/arm/configs/freescale_mx51_babbage_defconfig
rename to arch/arm/configs/freescale-mx51-babbage_defconfig
diff --git a/arch/arm/configs/freescale_mx53_loco_defconfig b/arch/arm/configs/freescale-mx53-qsb_defconfig
similarity index 100%
rename from arch/arm/configs/freescale_mx53_loco_defconfig
rename to arch/arm/configs/freescale-mx53-qsb_defconfig
diff --git a/arch/arm/configs/freescale_mx53_smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
similarity index 100%
rename from arch/arm/configs/freescale_mx53_smd_defconfig
rename to arch/arm/configs/freescale-mx53-smd_defconfig
diff --git a/arch/arm/configs/phycard_a_l1_xload_defconfig b/arch/arm/configs/phytec-phycard-a-l1-xload_defconfig
similarity index 100%
rename from arch/arm/configs/phycard_a_l1_xload_defconfig
rename to arch/arm/configs/phytec-phycard-a-l1-xload_defconfig
diff --git a/arch/arm/configs/phycard_a_l1_defconfig b/arch/arm/configs/phytec-phycard-a-l1_defconfig
similarity index 100%
rename from arch/arm/configs/phycard_a_l1_defconfig
rename to arch/arm/configs/phytec-phycard-a-l1_defconfig
diff --git a/arch/arm/configs/phycard_a_xl2_xload_defconfig b/arch/arm/configs/phytec-phycard-a-xl2-xload_defconfig
similarity index 100%
rename from arch/arm/configs/phycard_a_xl2_xload_defconfig
rename to arch/arm/configs/phytec-phycard-a-xl2-xload_defconfig
diff --git a/arch/arm/configs/phycard_a_xl2_defconfig b/arch/arm/configs/phytec-phycard-a-xl2_defconfig
similarity index 100%
rename from arch/arm/configs/phycard_a_xl2_defconfig
rename to arch/arm/configs/phytec-phycard-a-xl2_defconfig
diff --git a/arch/arm/configs/pca100_defconfig b/arch/arm/configs/phytec-phycard-imx27_defconfig
similarity index 100%
rename from arch/arm/configs/pca100_defconfig
rename to arch/arm/configs/phytec-phycard-imx27_defconfig
diff --git a/arch/arm/configs/pcm051_defconfig b/arch/arm/configs/phytec-phycore-am335x_defconfig
similarity index 100%
rename from arch/arm/configs/pcm051_defconfig
rename to arch/arm/configs/phytec-phycore-am335x_defconfig
diff --git a/arch/arm/configs/pcm038_defconfig b/arch/arm/configs/phytec-phycore-imx27_defconfig
similarity index 100%
rename from arch/arm/configs/pcm038_defconfig
rename to arch/arm/configs/phytec-phycore-imx27_defconfig
diff --git a/arch/arm/configs/pcm037_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
similarity index 100%
rename from arch/arm/configs/pcm037_defconfig
rename to arch/arm/configs/phytec-phycore-imx31_defconfig
diff --git a/arch/arm/configs/pcm043_defconfig b/arch/arm/configs/phytec-phycore-imx35_defconfig
similarity index 100%
rename from arch/arm/configs/pcm043_defconfig
rename to arch/arm/configs/phytec-phycore-imx35_defconfig
diff --git a/arch/arm/configs/pcm049_xload_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload_defconfig
similarity index 100%
rename from arch/arm/configs/pcm049_xload_defconfig
rename to arch/arm/configs/phytec-phycore-omap4460-xload_defconfig
diff --git a/arch/arm/configs/pcm049_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
similarity index 100%
rename from arch/arm/configs/pcm049_defconfig
rename to arch/arm/configs/phytec-phycore-omap4460_defconfig
diff --git a/arch/arm/configs/pcm027_defconfig b/arch/arm/configs/phytec-phycore-pxa270_defconfig
similarity index 100%
rename from arch/arm/configs/pcm027_defconfig
rename to arch/arm/configs/phytec-phycore-pxa270_defconfig
-- 
1.8.5.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
