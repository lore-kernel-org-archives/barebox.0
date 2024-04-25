Delivery-date: Thu, 25 Apr 2024 13:57:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxiu-00GfGi-0f
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:57:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxii-0007VU-H5
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:57:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=l0n0trvjtToEndKykmvwOdOWpe5HTQU+U5EamU3nY0o=; b=fU5oIQIyRnruTS
	uOvZMNx0XYvSDONwE1trRpJ3uGC390Jc76iHM2V4jnc+DFZNhFGqcMl6cVQBBs0bVb+DnDB763KbA
	Y3tLhgFbowKmwGG6qYg0mbp8ETDFXeWAhdmgRCcjp6vFpVqukG4u2nX+eTstbj2cn27iW54LF6Pii
	6hYZHv0B4pub9AJRXmn03Gsgmhl9QK+J3I71X/kdlDK6wYzYz3B4oBs6sPe392+5A4LbMGjNKCyRY
	9pUnPqm3uxQC9h13b9VmYppD+8S1z7gtDHBVD/2INA0NES+6sOwkd24o9J7Tzp4T7tusJ2d7ODiuu
	EjWpgRtlyerO9u4MOMQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgo-000000085EN-2grs;
	Thu, 25 Apr 2024 11:54:58 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgf-000000085BI-1ovc
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:54:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062k-8i; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFr1-Ot; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-1v;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:33 +0200
Message-Id: <20240425115439.2269239-10-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240425115439.2269239-1-s.hauer@pengutronix.de>
References: <20240425115439.2269239-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jan Weitzel <j.weitzel@phytec.de>, Vicente Bergas <vicencb@gmail.com>, Bo Shen <voice.shen@atmel.com>, Matthias Kaehlcke <matthias@kaehlcke.net>, Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 09/15] ARM: remove non PBL OMAP boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Several OMAP boards still do not have PBL support which becomes
mandatory soon. Remove these boards.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |   6 -
 arch/arm/boards/Makefile                      |   7 -
 arch/arm/boards/archosg9/Makefile             |   5 -
 arch/arm/boards/archosg9/archos_features.c    | 189 ------
 arch/arm/boards/archosg9/archos_features.h    |  24 -
 arch/arm/boards/archosg9/board.c              | 180 ------
 .../boards/archosg9/env/boot/sd-card-android  |   6 -
 .../boards/archosg9/env/boot/sd-card-linux    |  12 -
 arch/arm/boards/archosg9/env/boot/usb-android |   6 -
 arch/arm/boards/archosg9/env/boot/usb-linux   |  12 -
 arch/arm/boards/archosg9/env/init/automount2  |   7 -
 arch/arm/boards/archosg9/env/init/bootsource  |  15 -
 arch/arm/boards/archosg9/env/init/splash      |   5 -
 .../archosg9/env/menu/11-boot-flash/action    |   4 -
 .../archosg9/env/menu/11-boot-flash/title     |   1 -
 .../archosg9/env/menu/12-boot-sd/action       |   4 -
 .../boards/archosg9/env/menu/12-boot-sd/title |   1 -
 .../archosg9/env/menu/13-boot-usb/action      |   4 -
 .../archosg9/env/menu/13-boot-usb/title       |   1 -
 arch/arm/boards/archosg9/feature_list.h       | 352 -----------
 arch/arm/boards/archosg9/lowlevel.c           |  73 ---
 arch/arm/boards/archosg9/mux.c                | 262 --------
 arch/arm/boards/archosg9/mux.h                |   8 -
 arch/arm/boards/omap343xdsp/Makefile          |   4 -
 arch/arm/boards/omap343xdsp/board.c           |  50 --
 arch/arm/boards/omap343xdsp/lowlevel.c        | 562 ------------------
 arch/arm/boards/omap3evm/Makefile             |   4 -
 arch/arm/boards/omap3evm/board.c              |  83 ---
 arch/arm/boards/omap3evm/lowlevel.c           | 175 ------
 arch/arm/boards/panda/Makefile                |   4 -
 arch/arm/boards/panda/board.c                 | 165 -----
 arch/arm/boards/panda/env/boot/mmc            |   5 -
 .../boards/panda/env/network/eth0-discover    |   5 -
 arch/arm/boards/panda/lowlevel.c              |  81 ---
 arch/arm/boards/panda/mux.c                   | 260 --------
 arch/arm/boards/panda/mux.h                   |   8 -
 arch/arm/boards/phytec-phycard-omap3/Makefile |   5 -
 .../boards/phytec-phycard-omap3/env/config    |  77 ---
 .../boards/phytec-phycard-omap3/lowlevel.c    | 266 ---------
 .../boards/phytec-phycard-omap3/pca-a-l1.c    | 164 -----
 .../boards/phytec-phycard-omap3/pca-a-l1.h    |  17 -
 arch/arm/boards/phytec-phycard-omap4/Makefile |   6 -
 .../bin/nand_bootstrap                        |  31 -
 .../defaultenv-phytec-phycard-omap4/config    |  46 --
 .../boards/phytec-phycard-omap4/lowlevel.c    |  91 ---
 arch/arm/boards/phytec-phycard-omap4/mux.c    | 257 --------
 arch/arm/boards/phytec-phycard-omap4/mux.h    |   8 -
 .../boards/phytec-phycard-omap4/pca-a-xl2.c   | 126 ----
 .../boards/phytec-phycore-omap4460/Makefile   |   5 -
 .../boards/phytec-phycore-omap4460/board.c    | 301 ----------
 .../bin/init_board                            |  23 -
 .../bin/nand_bootstrap                        |  31 -
 .../defaultenv-phytec-phycore-omap4460/config |  61 --
 .../boards/phytec-phycore-omap4460/lowlevel.c | 141 -----
 arch/arm/boards/phytec-phycore-omap4460/mux.c | 257 --------
 arch/arm/boards/phytec-phycore-omap4460/mux.h |   8 -
 arch/arm/configs/am335x_mlo_defconfig         |   4 +-
 .../arm/configs/am35xx_pfc200_xload_defconfig |   5 +-
 arch/arm/configs/archosg9_defconfig           |  98 ---
 arch/arm/configs/archosg9_xload_defconfig     |  26 -
 .../omap3430_sdp3430_per_uart_defconfig       |  26 -
 arch/arm/configs/omap3530_beagle_defconfig    |  97 ---
 .../omap3530_beagle_per_uart_defconfig        |  25 -
 .../configs/omap3530_beagle_xload_defconfig   |  33 -
 arch/arm/configs/omap3_evm_defconfig          |  24 -
 arch/arm/configs/omap_defconfig               |   6 +-
 arch/arm/configs/panda_defconfig              |  84 ---
 arch/arm/configs/panda_xload_defconfig        |  21 -
 .../phytec-phycard-omap3-xload_defconfig      |  32 -
 .../configs/phytec-phycard-omap3_defconfig    |  70 ---
 .../phytec-phycard-omap4-xload_defconfig      |  28 -
 .../configs/phytec-phycard-omap4_defconfig    |  48 --
 ...hytec-phycore-omap4460-xload-mmc_defconfig |  25 -
 ...ytec-phycore-omap4460-xload-nand_defconfig |  27 -
 .../configs/phytec-phycore-omap4460_defconfig |  71 ---
 arch/arm/include/asm/mach-types.h             |  36 --
 arch/arm/mach-omap/Kconfig                    | 100 ----
 77 files changed, 3 insertions(+), 5394 deletions(-)
 delete mode 100644 arch/arm/boards/archosg9/Makefile
 delete mode 100644 arch/arm/boards/archosg9/archos_features.c
 delete mode 100644 arch/arm/boards/archosg9/archos_features.h
 delete mode 100644 arch/arm/boards/archosg9/board.c
 delete mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-android
 delete mode 100644 arch/arm/boards/archosg9/env/boot/sd-card-linux
 delete mode 100644 arch/arm/boards/archosg9/env/boot/usb-android
 delete mode 100644 arch/arm/boards/archosg9/env/boot/usb-linux
 delete mode 100644 arch/arm/boards/archosg9/env/init/automount2
 delete mode 100644 arch/arm/boards/archosg9/env/init/bootsource
 delete mode 100644 arch/arm/boards/archosg9/env/init/splash
 delete mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/action
 delete mode 100644 arch/arm/boards/archosg9/env/menu/11-boot-flash/title
 delete mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/action
 delete mode 100644 arch/arm/boards/archosg9/env/menu/12-boot-sd/title
 delete mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/action
 delete mode 100644 arch/arm/boards/archosg9/env/menu/13-boot-usb/title
 delete mode 100644 arch/arm/boards/archosg9/feature_list.h
 delete mode 100644 arch/arm/boards/archosg9/lowlevel.c
 delete mode 100644 arch/arm/boards/archosg9/mux.c
 delete mode 100644 arch/arm/boards/archosg9/mux.h
 delete mode 100644 arch/arm/boards/omap343xdsp/Makefile
 delete mode 100644 arch/arm/boards/omap343xdsp/board.c
 delete mode 100644 arch/arm/boards/omap343xdsp/lowlevel.c
 delete mode 100644 arch/arm/boards/omap3evm/Makefile
 delete mode 100644 arch/arm/boards/omap3evm/board.c
 delete mode 100644 arch/arm/boards/omap3evm/lowlevel.c
 delete mode 100644 arch/arm/boards/panda/Makefile
 delete mode 100644 arch/arm/boards/panda/board.c
 delete mode 100644 arch/arm/boards/panda/env/boot/mmc
 delete mode 100644 arch/arm/boards/panda/env/network/eth0-discover
 delete mode 100644 arch/arm/boards/panda/lowlevel.c
 delete mode 100644 arch/arm/boards/panda/mux.c
 delete mode 100644 arch/arm/boards/panda/mux.h
 delete mode 100644 arch/arm/boards/phytec-phycard-omap3/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycard-omap3/env/config
 delete mode 100644 arch/arm/boards/phytec-phycard-omap3/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
 delete mode 100644 arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/bin/nand_bootstrap
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/config
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/mux.c
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/mux.h
 delete mode 100644 arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/board.c
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/init_board
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/nand_bootstrap
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/config
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/mux.c
 delete mode 100644 arch/arm/boards/phytec-phycore-omap4460/mux.h
 delete mode 100644 arch/arm/configs/archosg9_defconfig
 delete mode 100644 arch/arm/configs/archosg9_xload_defconfig
 delete mode 100644 arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
 delete mode 100644 arch/arm/configs/omap3530_beagle_defconfig
 delete mode 100644 arch/arm/configs/omap3530_beagle_per_uart_defconfig
 delete mode 100644 arch/arm/configs/omap3530_beagle_xload_defconfig
 delete mode 100644 arch/arm/configs/omap3_evm_defconfig
 delete mode 100644 arch/arm/configs/panda_defconfig
 delete mode 100644 arch/arm/configs/panda_xload_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycard-omap3-xload_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycard-omap3_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycard-omap4-xload_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycard-omap4_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-omap4460_defconfig

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index bf3240df96..5a10b5aaa3 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -93,11 +93,6 @@ config ARCH_MXS
 	select HAS_DEBUG_LL
 	select HAVE_PBL_MULTI_IMAGES
 
-config ARCH_OMAP_SINGLE
-	bool "TI OMAP"
-	depends on 32BIT
-	select ARCH_OMAP
-
 config ARCH_PXA
 	bool "Intel/Marvell PXA based"
 	depends on 32BIT
@@ -191,7 +186,6 @@ config ARCH_OMAP_MULTI
 	bool "TI OMAP"
 	depends on 32BIT
 	depends on ARCH_MULTIARCH
-	select OMAP_MULTI_BOARDS
 	select ARCH_OMAP
 	select HAS_DEBUG_LL
 	select GPIOLIB
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index ca6f8f2137..6e9e6798ba 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -4,7 +4,6 @@
 obj-$(CONFIG_MACH_ADVANTECH_ROM_742X)		+= advantech-mx6/
 obj-$(CONFIG_MACH_AFI_GF)			+= afi-gf/
 obj-$(CONFIG_MACH_ANIMEO_IP)			+= animeo_ip/
-obj-$(CONFIG_MACH_ARCHOSG9)			+= archosg9/
 obj-$(CONFIG_MACH_AT91RM9200EK)			+= at91rm9200ek/
 obj-$(CONFIG_MACH_AT91SAM9260EK)		+= at91sam9260ek/
 obj-$(CONFIG_MACH_AT91SAM9261EK)		+= at91sam9261ek/
@@ -72,14 +71,8 @@ obj-$(CONFIG_MACH_NXP_IMX8MN_EVK)		+= nxp-imx8mn-evk/
 obj-$(CONFIG_MACH_NXP_IMX8MP_EVK)		+= nxp-imx8mp-evk/
 obj-$(CONFIG_MACH_CONGATEC_QMX8P_SOM)		+= congatec-qmx8p/
 obj-$(CONFIG_MACH_TQ_MBA8MPXL)			+= tqma8mpxl/
-obj-$(CONFIG_MACH_OMAP343xSDP)			+= omap343xdsp/
-obj-$(CONFIG_MACH_OMAP3EVM)			+= omap3evm/
-obj-$(CONFIG_MACH_PANDA)			+= panda/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
-obj-$(CONFIG_MACH_PCAAL1)			+= phytec-phycard-omap3/
-obj-$(CONFIG_MACH_PCAAXL2)			+= phytec-phycard-omap4/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
-obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
 obj-$(CONFIG_MACH_PHYTEC_PHYCORE_IMX7)		+= phytec-phycore-imx7/
diff --git a/arch/arm/boards/archosg9/Makefile b/arch/arm/boards/archosg9/Makefile
deleted file mode 100644
index 790ff623f5..0000000000
--- a/arch/arm/boards/archosg9/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-obj-$(CONFIG_ARM_BOARD_APPEND_ATAG) += archos_features.o
-lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/archosg9/archos_features.c b/arch/arm/boards/archosg9/archos_features.c
deleted file mode 100644
index 8642d344a5..0000000000
--- a/arch/arm/boards/archosg9/archos_features.c
+++ /dev/null
@@ -1,189 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-#include <common.h>
-#include <asm/setup.h>
-#include "archos_features.h"
-#include "feature_list.h"
-
-static inline void *atag_data(struct tag *t)
-{
-	return ((void *)t) + sizeof(struct tag_header);
-}
-
-static struct feature_tag *features;
-
-static void setup_feature_core(void)
-{
-	features->hdr.tag = FTAG_CORE;
-	features->hdr.size = feature_tag_size(feature_tag_core);
-
-	memset(&features->u.core, 0, sizeof(features->u.core));
-	features->u.core.magic = FEATURE_LIST_MAGIC;
-	features->u.core.list_revision = FEATURE_LIST_REV;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_product_name(void)
-{
-	features->hdr.tag = FTAG_PRODUCT_NAME;
-	features->hdr.size = feature_tag_size(feature_tag_product_name);
-
-	memset(&features->u.product_name, 0, sizeof(features->u.product_name));
-	sprintf(features->u.product_name.name, "A80S");
-	features->u.product_name.id = 0x13A8;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_product_serial_number(void)
-{
-	features->hdr.tag = FTAG_PRODUCT_SERIAL_NUMBER;
-	features->hdr.size = feature_tag_size(feature_tag_product_serial);
-
-	memset(&features->u.product_serial, 0,
-		sizeof(features->u.product_serial));
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_product_mac_address(void)
-{
-	features->hdr.tag = FTAG_PRODUCT_MAC_ADDRESS;
-	features->hdr.size = feature_tag_size(feature_tag_product_mac_address);
-
-	memset(&features->u.mac_address, 0, sizeof(features->u.mac_address));
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_board_pcb_revision(void)
-{
-	features->hdr.tag = FTAG_BOARD_PCB_REVISION;
-	features->hdr.size = feature_tag_size(feature_tag_board_revision);
-
-	memset(&features->u.board_revision, 0,
-		sizeof(features->u.board_revision));
-	features->u.board_revision.revision = 5;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_sdram(void)
-{
-	features->hdr.tag = FTAG_SDRAM;
-	features->hdr.size = feature_tag_size(feature_tag_sdram);
-
-	memset(&features->u.sdram, 0, sizeof(features->u.sdram));
-	sprintf(features->u.sdram.vendor , "elpida");
-	sprintf(features->u.sdram.product, "EDB8064B1PB");
-	features->u.sdram.clock = 400;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_pmic(void)
-{
-	features->hdr.tag = FTAG_PMIC;
-	features->hdr.size = feature_tag_size(feature_tag_pmic);
-
-	memset(&features->u.pmic, 0, sizeof(features->u.pmic));
-	features->u.pmic.flags = FTAG_PMIC_TPS62361;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_serial_port(void)
-{
-	features->hdr.tag = FTAG_SERIAL_PORT;
-	features->hdr.size = feature_tag_size(feature_tag_serial_port);
-
-	memset(&features->u.serial_port, 0, sizeof(features->u.serial_port));
-	features->u.serial_port.uart_id = 1;
-	features->u.serial_port.speed = 115200;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_has_gpio_volume_keys(void)
-{
-	features->hdr.tag = FTAG_HAS_GPIO_VOLUME_KEYS;
-	features->hdr.size = feature_tag_size(feature_tag_gpio_volume_keys);
-
-	memset(&features->u.gpio_volume_keys, 0,
-		sizeof(features->u.gpio_volume_keys));
-	features->u.gpio_volume_keys.gpio_vol_up   = 0x2B;
-	features->u.gpio_volume_keys.gpio_vol_down = 0x2C;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_screen(void)
-{
-	features->hdr.tag = FTAG_SCREEN;
-	features->hdr.size = feature_tag_size(feature_tag_screen);
-
-	memset(&features->u.screen, 0, sizeof(features->u.screen));
-	sprintf(features->u.screen.vendor, "CMI");
-	features->u.screen.backlight = 0xC8;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_turbo(void)
-{
-	features->hdr.tag = FTAG_TURBO;
-	features->hdr.size = feature_tag_size(feature_tag_turbo);
-
-	memset(&features->u.turbo, 0, sizeof(features->u.turbo));
-	features->u.turbo.flag = 1;
-
-	features = feature_tag_next(features);
-}
-static void setup_feature_none(void)
-{
-	features->hdr.tag = FTAG_NONE;
-	features->hdr.size = sizeof(struct feature_tag_header) >> 2;
-
-	features = feature_tag_next(features);
-}
-static struct tag *setup_feature_list(struct tag * params)
-{
-	struct tag_feature_list *fl;
-
-	fl = atag_data(params);
-	features = (struct feature_tag *)fl->data;
-
-	setup_feature_core();
-	setup_feature_product_name();
-	setup_feature_product_serial_number();
-	setup_feature_product_mac_address();
-	setup_feature_board_pcb_revision();
-	setup_feature_sdram();
-	setup_feature_pmic();
-	setup_feature_serial_port();
-	setup_feature_has_gpio_volume_keys();
-	setup_feature_screen();
-	setup_feature_turbo();
-	setup_feature_none();
-
-	fl->size = ((u32)features) - ((u32)(fl->data));
-
-	params->hdr.tag = ATAG_FEATURE_LIST;
-	params->hdr.size = (sizeof(struct tag_feature_list) + fl->size) >> 2;
-
-	return tag_next(params);
-}
-
-static struct tag *setup_boot_version(struct tag *params)
-{
-	struct tag_boot_version *bv;
-
-	bv = atag_data(params);
-
-	params->hdr.tag = ATAG_BOOT_VERSION;
-	params->hdr.size = tag_size(tag_boot_version);
-
-	bv->major = 5;
-	bv->minor = 5;
-	bv->extra = 3;
-
-	return tag_next(params);
-}
-
-struct tag *archos_append_atags(struct tag *params)
-{
-	params = setup_feature_list(params);
-	params = setup_boot_version(params);
-	return params;
-}
diff --git a/arch/arm/boards/archosg9/archos_features.h b/arch/arm/boards/archosg9/archos_features.h
deleted file mode 100644
index f46b9e9eb8..0000000000
--- a/arch/arm/boards/archosg9/archos_features.h
+++ /dev/null
@@ -1,24 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __ARCHOS_FEATURES_H
-#define __ARCHOS_FEATURES_H
-
-/* bootloader version */
-#define ATAG_BOOT_VERSION	0x5441000A
-
-struct tag_boot_version {
-	u32		major;
-	u32		minor;
-	u32		extra;
-};
-
-#define ATAG_FEATURE_LIST	0x5441000B
-
-struct tag_feature_list {
-	u32	size;
-	u8	data[0];
-};
-
-struct tag *archos_append_atags(struct tag * params);
-
-#endif /* __ARCHOS_FEATURES_H */
diff --git a/arch/arm/boards/archosg9/board.c b/arch/arm/boards/archosg9/board.c
deleted file mode 100644
index fbf05a4408..0000000000
--- a/arch/arm/boards/archosg9/board.c
+++ /dev/null
@@ -1,180 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-#include <common.h>
-#include <clock.h>
-#include <init.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <mach/omap/devices.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-devices.h>
-#include <mach/omap/omap4_rom_usb.h>
-#include <linux/sizes.h>
-#include <i2c/i2c.h>
-#include <gpio.h>
-#include <gpio_keys.h>
-#include <twl6030_pwrbtn.h>
-#include <readkey.h>
-#include <input/input.h>
-#include "archos_features.h"
-
-#define GPIO_LCD_PWON     38
-#define GPIO_BRIDGE_EN    39
-#define GPIO_LCD_RST      53
-#define GPIO_LCD_STDBY   101
-#define GPIO_LCD_AVDD_EN  12
-#define GPIO_BKL_EN      122
-#define GPIO_BKL_LED     143
-
-#define GPIO_5V_PWRON     36
-#define GPIO_VCC_PWRON    35
-#define GPIO_1V8_PWRON    34
-#define GPIO_GPS_ENABLE   41
-
-static int archosg9_console_init(void)
-{
-	int ret;
-
-	barebox_set_model("Archos G9");
-	barebox_set_hostname("g9");
-
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT)) {
-		ret = omap4_usbboot_open();
-		if (!ret) {
-			add_generic_device("serial_omap4_usbboot", DEVICE_ID_DYNAMIC
-				, NULL, 0, 0, 0, NULL);
-		}
-	}
-	if (IS_ENABLED(CONFIG_DRIVER_SERIAL_NS16550)) {
-		omap44xx_add_uart1();
-	}
-	return 0;
-}
-console_initcall(archosg9_console_init);
-
-static int archosg9_mem_init(void){
-	omap_add_ram0(SZ_1G);
-	return 0;
-}
-mem_initcall(archosg9_mem_init);
-
-static struct i2c_board_info i2c_devices[] = {
-	{ I2C_BOARD_INFO("twl6030", 0x48), },
-};
-
-static struct twl6030_pwrbtn_platform_data pwrbtn_data = {
-	.code = BB_KEY_ENTER
-};
-static struct gpio_keys_button keys[] = {
-	{ .code = KEY_UP  , .gpio = 43, .active_low = 1 },
-	{ .code = KEY_DOWN, .gpio = 44, .active_low = 1 },
-};
-static struct gpio_keys_platform_data gk_data = {
-	.buttons = keys,
-	.nbuttons = ARRAY_SIZE(keys),
-	.fifo_size = ARRAY_SIZE(keys)*sizeof(int)
-};
-
-static struct omapfb_display const archosg9_displays[] = {
-	{
-		.mode = {
-			.name         = "g104x1",
-			.refresh      =       60,
-			.xres         =     1024,
-			.yres         =      768,
-			.pixclock     =    96000,
-			.left_margin  =      320,
-			.right_margin =        1,
-			.hsync_len    =      320,
-			.upper_margin =       38,
-			.lower_margin =       38,
-			.vsync_len    =        2,
-		},
-		.config = (
-			OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-			OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-			OMAP_DSS_LCD_DATALINES_24
-		),
-		.power_on_delay  =  50,
-		.power_off_delay = 100,
-	},
-};
-
-static void archosg9_fb_enable(int e)
-{
-	if (e) {
-		gpio_direction_output(GPIO_LCD_PWON   , 1);
-		mdelay(50);
-		gpio_direction_output(GPIO_LCD_RST    , 0);
-		gpio_direction_output(GPIO_LCD_AVDD_EN, 0);
-		mdelay(35);
-		gpio_direction_output(GPIO_BRIDGE_EN  , 1);
-		mdelay(10);
-		gpio_direction_output(GPIO_LCD_STDBY  , 0);
-		gpio_direction_output(GPIO_BKL_EN     , 0);
-	} else {
-		gpio_direction_output(GPIO_BKL_EN     , 1);
-		gpio_direction_output(GPIO_LCD_STDBY  , 1);
-		mdelay(1);
-		gpio_direction_output(GPIO_BRIDGE_EN  , 0);
-		gpio_direction_output(GPIO_LCD_AVDD_EN, 1);
-		mdelay(10);
-		gpio_direction_output(GPIO_LCD_PWON   , 0);
-		gpio_direction_output(GPIO_LCD_RST    , 1);
-	}
-}
-
-static struct omapfb_platform_data archosg9_fb_data = {
-	.displays     = archosg9_displays,
-	.num_displays = ARRAY_SIZE(archosg9_displays),
-	.dss_clk_hz   = 19200000,
-	.bpp          = 32,
-	.enable       = archosg9_fb_enable,
-};
-
-static int archosg9_display_init(void)
-{
-	omap_add_display(&archosg9_fb_data);
-
-	gpio_direction_output(GPIO_BKL_EN     , 1);
-	gpio_direction_output(GPIO_LCD_RST    , 1);
-	gpio_direction_output(GPIO_LCD_PWON   , 0);
-	gpio_direction_output(GPIO_BRIDGE_EN  , 0);
-	gpio_direction_output(GPIO_LCD_STDBY  , 1);
-	gpio_direction_output(GPIO_LCD_AVDD_EN, 1);
-	gpio_direction_output(GPIO_BKL_LED    , 0);
-	gpio_direction_output(GPIO_VCC_PWRON  , 1);
-
-	return 0;
-}
-
-static int archosg9_devices_init(void){
-	gpio_direction_output(GPIO_GPS_ENABLE, 0);
-	gpio_direction_output(GPIO_1V8_PWRON , 1);
-
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	omap44xx_add_i2c1(NULL);
-	omap44xx_add_mmc1(NULL);
-	if (IS_ENABLED(CONFIG_KEYBOARD_TWL6030) &&
-			IS_ENABLED(CONFIG_KEYBOARD_GPIO)) {
-		add_generic_device_res("twl6030_pwrbtn", DEVICE_ID_DYNAMIC,
-			0, 0, &pwrbtn_data);
-		add_gpio_keys_device(DEVICE_ID_DYNAMIC, &gk_data);
-	}
-
-	if (IS_ENABLED(CONFIG_DRIVER_VIDEO_OMAP))
-		archosg9_display_init();
-
-	/*
-	 * This should be:
-	 * armlinux_set_architecture(MACH_TYPE_OMAP4_ARCHOSG9);
-	 * But Archos has not registered it's board to arch/arm/tools/mach-types
-	 * So here there is the hardcoded value
-	 */
-	armlinux_set_architecture(5032);
-	armlinux_set_revision(5);
-	armlinux_set_atag_appender(archos_append_atags);
-
-	return 0;
-}
-device_initcall(archosg9_devices_init);
diff --git a/arch/arm/boards/archosg9/env/boot/sd-card-android b/arch/arm/boards/archosg9/env/boot/sd-card-android
deleted file mode 100644
index bc2df696a2..0000000000
--- a/arch/arm/boards/archosg9/env/boot/sd-card-android
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-path=/mnt/sd
-global.bootm.image=${path}/android
-global.bootm.initrd=${path}/initramfs.cpio.lzo
-global.linux.bootargs.base="mem=512M init=/linuxrc debug omapdss.debug=0 omapfb.debug=0 mem=512M@0xa0000000"
diff --git a/arch/arm/boards/archosg9/env/boot/sd-card-linux b/arch/arm/boards/archosg9/env/boot/sd-card-linux
deleted file mode 100644
index b3eaa2437d..0000000000
--- a/arch/arm/boards/archosg9/env/boot/sd-card-linux
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-path=/mnt/sd
-global.bootm.image=${path}/zImage
-initrd=${path}/initrd
-
-if [ -f ${initrd} ]; then
-	global.bootm.initrd=${initrd}
-	global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
-else
-	global.linux.bootargs.base="console=ttyO0,115200n8 rootwait root=/dev/mmcblk0p2"
-fi
diff --git a/arch/arm/boards/archosg9/env/boot/usb-android b/arch/arm/boards/archosg9/env/boot/usb-android
deleted file mode 100644
index e97e0ade60..0000000000
--- a/arch/arm/boards/archosg9/env/boot/usb-android
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-path=/mnt/usb
-global.bootm.image=${path}/android
-global.bootm.initrd=${path}/initramfs.cpio.lzo
-global.linux.bootargs.base="mem=512M init=/linuxrc debug omapdss.debug=0 omapfb.debug=0 mem=512M@0xa0000000"
diff --git a/arch/arm/boards/archosg9/env/boot/usb-linux b/arch/arm/boards/archosg9/env/boot/usb-linux
deleted file mode 100644
index a257138d45..0000000000
--- a/arch/arm/boards/archosg9/env/boot/usb-linux
+++ /dev/null
@@ -1,12 +0,0 @@
-#!/bin/sh
-
-path=/mnt/usb
-global.bootm.image=${path}/zImage
-initrd=${path}/initrd
-
-if [ -f ${initrd} ]; then
-	global.bootm.initrd=${initrd}
-	global.linux.bootargs.base="console=ttyO0,115200n8 root=/dev/ram0"
-else
-	global.linux.bootargs.base="console=ttyO0,115200n8"
-fi
diff --git a/arch/arm/boards/archosg9/env/init/automount2 b/arch/arm/boards/archosg9/env/init/automount2
deleted file mode 100644
index fa104397e2..0000000000
--- a/arch/arm/boards/archosg9/env/init/automount2
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-
-mkdir -p /mnt/sd
-automount -d /mnt/sd '[ -e /dev/disk0.0 ] && mount /dev/disk0.0 /mnt/sd'
-
-mkdir -p /mnt/usb
-automount -d /mnt/usb 'mount -t omap4_usbbootfs omap4_usbboot /mnt/usb'
diff --git a/arch/arm/boards/archosg9/env/init/bootsource b/arch/arm/boards/archosg9/env/init/bootsource
deleted file mode 100644
index 6145a76fe6..0000000000
--- a/arch/arm/boards/archosg9/env/init/bootsource
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-if [ -n "$nv.boot.default" ]; then
-	exit
-fi
-
-if [ -f /mnt/sd/zImage ]; then
-	global.boot.default=sd-card-linux
-elif [ -f /mnt/sd/android ]; then
-	global.boot.default=sd-card-android
-elif [ -f /mnt/usb/zImage ]; then
-	global.boot.default=usb-linux
-elif [ -f /mnt/usb/android ]; then
-	global.boot.default=usb-android
-fi
diff --git a/arch/arm/boards/archosg9/env/init/splash b/arch/arm/boards/archosg9/env/init/splash
deleted file mode 100644
index 4441b90057..0000000000
--- a/arch/arm/boards/archosg9/env/init/splash
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-fb0.mode_name=g104x1
-splash -b0 /mnt/usb/barebox.png
-fb0.enable=1
diff --git a/arch/arm/boards/archosg9/env/menu/11-boot-flash/action b/arch/arm/boards/archosg9/env/menu/11-boot-flash/action
deleted file mode 100644
index f83028b4c8..0000000000
--- a/arch/arm/boards/archosg9/env/menu/11-boot-flash/action
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-boot_order mmc2_1
-echo "Rebooting into internal flash..."
-reset
diff --git a/arch/arm/boards/archosg9/env/menu/11-boot-flash/title b/arch/arm/boards/archosg9/env/menu/11-boot-flash/title
deleted file mode 100644
index 2628b5a13a..0000000000
--- a/arch/arm/boards/archosg9/env/menu/11-boot-flash/title
+++ /dev/null
@@ -1 +0,0 @@
-${RED}Reboot into internal flash${NC}
diff --git a/arch/arm/boards/archosg9/env/menu/12-boot-sd/action b/arch/arm/boards/archosg9/env/menu/12-boot-sd/action
deleted file mode 100644
index 19bc3ff0b0..0000000000
--- a/arch/arm/boards/archosg9/env/menu/12-boot-sd/action
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-boot_order mmc1
-echo "Rebooting into SD card..."
-reset
diff --git a/arch/arm/boards/archosg9/env/menu/12-boot-sd/title b/arch/arm/boards/archosg9/env/menu/12-boot-sd/title
deleted file mode 100644
index 92e940f3b5..0000000000
--- a/arch/arm/boards/archosg9/env/menu/12-boot-sd/title
+++ /dev/null
@@ -1 +0,0 @@
-${RED}Reboot into SD card${NC}
diff --git a/arch/arm/boards/archosg9/env/menu/13-boot-usb/action b/arch/arm/boards/archosg9/env/menu/13-boot-usb/action
deleted file mode 100644
index 885acbaa2d..0000000000
--- a/arch/arm/boards/archosg9/env/menu/13-boot-usb/action
+++ /dev/null
@@ -1,4 +0,0 @@
-#!/bin/sh
-boot_order usb_1
-echo "Rebooting over usb..."
-reset
diff --git a/arch/arm/boards/archosg9/env/menu/13-boot-usb/title b/arch/arm/boards/archosg9/env/menu/13-boot-usb/title
deleted file mode 100644
index 76edccd6ad..0000000000
--- a/arch/arm/boards/archosg9/env/menu/13-boot-usb/title
+++ /dev/null
@@ -1 +0,0 @@
-${RED}Reboot over usb${NC}
diff --git a/arch/arm/boards/archosg9/feature_list.h b/arch/arm/boards/archosg9/feature_list.h
deleted file mode 100644
index 0b726cd1a3..0000000000
--- a/arch/arm/boards/archosg9/feature_list.h
+++ /dev/null
@@ -1,352 +0,0 @@
-#ifndef _FEATURE_LIST_H
-#define _FEATURE_LIST_H
-
-/*
- This file comes from:
- http://gitorious.org/archos/archos-gpl-gen9-kernel-ics/blobs/raw/master/
- arch/arm/include/asm/feature_list.h
-*/
-
-#define FEATURE_LIST_MAGIC		0xFEA01234
-
-#define FEATURE_LIST_REV		0x00000001
-
-struct feature_tag_header {
-	u32 size;
-	u32 tag;
-};
-
-struct feature_tag_generic {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-#define FTAG_NONE			0x00000000
-
-#define FTAG_CORE			0x00000001
-struct feature_tag_core {
-	u32 magic;
-	u32 list_revision;
-	u32 flags;
-};
-
-/* product specific */
-#define FTAG_PRODUCT_NAME		0x00000002
-struct feature_tag_product_name {
-	char name[64];
-	u32 id;
-};
-#define FTAG_PRODUCT_SERIAL_NUMBER	0x00000003
-struct feature_tag_product_serial {
-	u32 serial[4];
-};
-
-#define FTAG_PRODUCT_MAC_ADDRESS	0x00000004
-struct feature_tag_product_mac_address {
-	u8 addr[6];
-	u8 reserved1;
-	u8 reserved2;
-};
-
-#define FTAG_PRODUCT_OEM		0x00000005
-struct feature_tag_product_oem {
-	char name[16];
-	u32 id;
-};
-
-#define FTAG_PRODUCT_ZONE		0x00000006
-struct feature_tag_product_zone {
-	char name[16];
-	u32 id;
-};
-
-/* board pcb specific */
-#define FTAG_BOARD_PCB_REVISION		0x00000010
-struct feature_tag_board_revision {
-	u32 revision;
-};
-
-/* clock and ram setup */
-#define FTAG_CLOCK			0x00000011
-struct feature_tag_clock {
-	u32 clock;
-};
-
-#define FTAG_SDRAM			0x00000012
-struct feature_tag_sdram {
-	char vendor[16];
-	char product[32];
-	u32 type;
-	u32 revision;
-	u32 flags;
-	u32 clock;
-	/* custom params */
-	u32 param_0;
-	u32 param_1;
-	u32 param_2;
-	u32 param_3;
-	u32 param_4;
-	u32 param_5;
-	u32 param_6;
-	u32 param_7;
-};
-
-/* PMIC */
-#define FTAG_PMIC			0x00000013
-#define FTAG_PMIC_TPS62361		0x00000001
-struct feature_tag_pmic {
-	u32 flags;
-};
-
-/* serial port */
-#define FTAG_SERIAL_PORT		0x00000020
-struct feature_tag_serial_port {
-	u32 uart_id;
-	u32 speed;
-};
-
-/* turbo bit */
-#define FTAG_TURBO			0x00000014
-struct feature_tag_turbo {
-	u32 flag;
-};
-
-/*** features ****/
-#define FTAG_HAS_GPIO_VOLUME_KEYS	0x00010001
-struct feature_tag_gpio_volume_keys {
-	u32 gpio_vol_up;
-	u32 gpio_vol_down;
-	u32 flags;
-};
-
-#define FTAG_HAS_ELECTRICAL_SHORTCUT	0x00010002
-#define FTAG_HAS_DCIN			0x00010003
-struct feature_tag_dcin {
-	u32 autodetect;
-};
-
-/* external screen support */
-#define FTAG_HAS_EXT_SCREEN		0x00010004
-
-#define EXT_SCREEN_TYPE_TVOUT	0x00000001
-#define EXT_SCREEN_TYPE_HDMI	0x00000002
-#define EXT_SCREEN_TYPE_VGA	0x00000004
-struct feature_tag_ext_screen {
-	u32 type;
-	u32 revision;
-};
-
-/* wireless lan */
-#define FTAG_HAS_WIFI			0x00010005
-
-#define WIFI_TYPE_TIWLAN	0x00000001
-struct feature_tag_wifi {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-/* bluetooth */
-#define FTAG_HAS_BLUETOOTH		0x00010006
-
-#define BLUETOOTH_TYPE_TIWLAN	0x00000001
-struct feature_tag_bluetooth {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-/* accelerometer */
-#define FTAG_HAS_ACCELEROMETER		0x00010007
-struct feature_tag_accelerometer {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-/* gyroscope */
-#define FTAG_HAS_GYROSCOPE		0x00010008
-
-/* compass */
-#define FTAG_HAS_COMPASS		0x00010009
-
-/* gps */
-#define FTAG_HAS_GPS			0x0001000a
-#define GPS_FLAG_DISABLED		0x00000001
-struct feature_tag_gps {
-	u32 vendor;
-	u32 product;
-	u32 revision;
-	u32 flags;
-};
-
-/* camera */
-#define FTAG_HAS_CAMERA			0x0001000b
-
-/* harddisk controller */
-#define FTAG_HAS_HARDDISK_CONTROLLER	0x0001000c
-#define HDCONTROLLER_TYPE_SATA	0x00000001
-struct feature_tag_harddisk_controller {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-/* harddisk */
-#define FTAG_HAS_HARDDISK		0x0001000d
-
-#define HARDDISK_TYPE_SATA	0x00000001
-#define HARDDISK_TYPE_PATA	0x00000002
-struct feature_tag_harddisk {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-/* touchscreen */
-#define FTAG_HAS_TOUCHSCREEN		0x0001000e
-
-#define TOUCHSCREEN_TYPE_CAPACITIVE 0x00000001
-#define TOUCHSCREEN_TYPE_RESISTIVE  0x00000002
-
-#define TOUCHSCREEN_FLAG_MULTITOUCH 0x00000001
-struct feature_tag_touchscreen {
-	u32 vendor;
-	u32 product;
-	u32 type;
-	u32 revision;
-	u32 flags;
-};
-
-/* microphone */
-#define FTAG_HAS_MICROPHONE		0x0001000f
-
-/* external SDMMC slot */
-#define FTAG_HAS_EXT_MMCSD_SLOT		0x00010010
-#define MMCSD_FLAG_CARDDETECT    0x00000001
-#define MMCSD_FLAG_CARDPREDETECT 0x00000002
-
-struct feature_tag_mmcsd {
-	u32 width;
-	u32 voltagemask;
-	u32 revision;
-	u32 flags;
-};
-
-/* ambient light sensor */
-#define FTAG_HAS_AMBIENT_LIGHT_SENSOR	0x00010011
-
-/* proximity sensor */
-#define FTAG_HAS_PROXIMITY_SENSOR	0x00010012
-
-/* gps */
-#define FTAG_HAS_GSM			0x00010013
-
-/* dect */
-#define FTAG_HAS_DECT			0x00010014
-
-/* hsdpa data modem */
-#define FTAG_HAS_HSDPA			0x00010015
-
-/* near field communication */
-#define FTAG_HAS_NFC			0x00010016
-
-#define FTAG_GPIO_KEYS			0x00010017
-struct feature_tag_gpio_keys {
-#define GPIO_KEYS_LONG_PRESS		0x00010000
-	u32 vol_up;
-	u32 vol_down;
-	u32 ok;
-	u32 reserved[5];
-};
-
-#define FTAG_SCREEN			0x00010018
-struct feature_tag_screen {
-	char vendor[16];
-	u32 type;
-	u32 revision;
-	u32 vcom;
-	u32 backlight;
-	u32 reserved[5];
-};
-
-#define FTAG_WIFI_PA			0x00010019
-struct feature_tag_wifi_pa {
-	char vendor[16];
-	u32 type;
-};
-
-/* loudspeaker */
-#define FTAG_HAS_SPEAKER		0x0001001a
-
-#define SPEAKER_FLAG_STEREO	 0x00000001
-#define SPEAKER_FLAG_OWN_VOLCTRL 0x00000002
-struct feature_tag_speaker {
-	u32 flags;
-};
-
-#define FTAG_BATTERY			0x0001001b
-struct feature_tag_battery {
-	u32 type;
-};
-#define BATTERY_TYPE_HIGHRS	 0x00000000
-#define BATTERY_TYPE_LOWRS	 0x00000001
-
-
-#define feature_tag_next(t) \
-	((struct feature_tag *)((u32 *)(t) + (t)->hdr.size))
-#define feature_tag_size(type) \
-	((sizeof(struct feature_tag_header) + sizeof(struct type)) >> 2)
-#define for_each_feature_tag(t, base) \
-	for (t = base; t->hdr.size; t = feature_tag_next(t))
-
-
-struct feature_tag {
-	struct feature_tag_header hdr;
-	union {
-		struct feature_tag_core			core;
-		struct feature_tag_generic		generic;
-		struct feature_tag_product_name		product_name;
-		struct feature_tag_product_serial	product_serial;
-		struct feature_tag_product_oem		product_oem;
-		struct feature_tag_product_zone		product_zone;
-		struct feature_tag_product_mac_address	mac_address;
-		struct feature_tag_board_revision	board_revision;
-		struct feature_tag_clock		clock;
-		struct feature_tag_sdram		sdram;
-		struct feature_tag_pmic			pmic;
-		struct feature_tag_turbo		turbo;
-		struct feature_tag_serial_port		serial_port;
-		struct feature_tag_gpio_volume_keys	gpio_volume_keys;
-		struct feature_tag_dcin			dcin;
-		struct feature_tag_ext_screen		ext_screen;
-		struct feature_tag_wifi			wifi;
-		struct feature_tag_bluetooth		bluetooth;
-		struct feature_tag_accelerometer	accelerometer;
-		struct feature_tag_harddisk_controller	harddisk_controller;
-		struct feature_tag_harddisk		harddisk;
-		struct feature_tag_touchscreen		touchscreen;
-		struct feature_tag_gps			gps;
-		struct feature_tag_speaker		speaker;
-		struct feature_tag_mmcsd		mmcsd;
-		struct feature_tag_gpio_keys		gpio_keys;
-		struct feature_tag_screen		screen;
-		struct feature_tag_wifi_pa		wifi_pa;
-		struct feature_tag_battery		battery;
-	} u;
-};
-
-#endif /* _FEATURE_LIST_H */
diff --git a/arch/arm/boards/archosg9/lowlevel.c b/arch/arm/boards/archosg9/lowlevel.c
deleted file mode 100644
index 2c3d0e1ee4..0000000000
--- a/arch/arm/boards/archosg9/lowlevel.c
+++ /dev/null
@@ -1,73 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-#include <common.h>
-#include <io.h>
-#include <init.h>
-#include <linux/sizes.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-generic.h>
-#include <mach/omap/omap4-clock.h>
-#include <mach/omap/syslib.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include "mux.h"
-
-#define TPS62361_VSEL0_GPIO    7
-
-static const struct ddr_regs ddr_regs_400_mhz_2cs = {
-	.tim1         = 0x10EB0662,
-	.tim2         = 0x20370DD2,
-	.tim3         = 0x00B1C33F,
-	.phy_ctrl_1   = 0x849FF408,
-	.ref_ctrl     = 0x00000618,
-	.config_init  = 0x80000EB9,
-	.config_final = 0x80001AB9,
-	.zq_config    = 0xD00B3215,
-	.mr1          = 0x83,
-	.mr2          = 0x4
-};
-
-static noinline void archosg9_init_lowlevel(void)
-{
-	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
-	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_19M2_MPU1200;
-	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
-	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
-	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
-	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
-
-	archosg9_set_muxconf_regs();
-
-	omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1380);
-
-	/* Enable all clocks */
-	omap4_enable_all_clocks();
-	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
-
-	/* Configure all DPLL's at 100% OPP */
-	omap4_configure_mpu_dpll(&mpu);
-	omap4_configure_iva_dpll(&iva);
-	omap4_configure_per_dpll(&per);
-	omap4_configure_abe_dpll(&abe);
-	omap4_configure_usb_dpll(&usb);
-
-	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
-}
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap4_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	if (get_pc() > 0x80000000)
-		goto out;
-
-	arm_setup_stack(0x4030d000);
-
-	archosg9_init_lowlevel();
-out:
-	barebox_arm_entry(0x80000000, SZ_1G, NULL);
-}
diff --git a/arch/arm/boards/archosg9/mux.c b/arch/arm/boards/archosg9/mux.c
deleted file mode 100644
index d51ccefba4..0000000000
--- a/arch/arm/boards/archosg9/mux.c
+++ /dev/null
@@ -1,262 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-clock.h>
-#include "mux.h"
-
-static const struct pad_conf_entry core_padconf_array[] = {
-	{ GPMC_AD0            , IEN | PTU | M1 },
-	{ GPMC_AD1            , IEN | PTU | M1 },
-	{ GPMC_AD2            , IEN | PTU | M1 },
-	{ GPMC_AD3            , IEN | PTU | M1 },
-	{ GPMC_AD4            , IEN | PTU | M1 },
-	{ GPMC_AD5            , IEN | PTU | M1 },
-	{ GPMC_AD6            , IEN | PTU | M1 },
-	{ GPMC_AD7            , IEN | PTU | M1 },
-	{ GPMC_AD8            , IEN | PTD | M3 },
-	{ GPMC_AD9            , IEN | PTU | M0 },
-	{ GPMC_AD10           , IEN | PTU | M3 },
-	{ GPMC_AD11           , IEN | PTU | M3 },
-	{ GPMC_AD12           , IEN | PTD | M3 },
-	{ GPMC_AD13           ,       PTD | M3 },
-	{ GPMC_AD14           ,       PTD | M3 },
-	{ GPMC_AD15           ,       PTD | M3 },
-	{ GPMC_A16            , IEN | PTD | M7 },
-	{ GPMC_A17            , IEN | PTD | M3 },
-	{ GPMC_A18            , IEN | PTD | M1 },
-	{ GPMC_A19            , IEN | PTU | M3 },
-	{ GPMC_A20            , IEN | PTU | M3 },
-	{ GPMC_A21            , IEN | PTD | M7 },
-	{ GPMC_A22            , IEN | PTD | M1 },
-	{ GPMC_A23            , IEN | PTD | M1 },
-	{ GPMC_A24            , IEN | PTD | M3 },
-	{ GPMC_A25            , IEN | PTU | M3 },
-	{ GPMC_NCS0           , IEN | PTU | M0 },
-	{ GPMC_NCS1           , IEN | PTU | M7 },
-	{ GPMC_NCS2           , IEN | PTU | M7 },
-	{ GPMC_NCS3           , IEN | PTU | M3 },
-	{ GPMC_NWP            , IEN | PTD | M0 },
-	{ GPMC_CLK            , IEN | PTD | M0 },
-	{ GPMC_NADV_ALE       , IEN | PTD | M0 },
-	{ GPMC_NOE            , IEN | PTU | M1 },
-	{ GPMC_NWE            , IEN | PTU | M1 },
-	{ GPMC_NBE0_CLE       , IEN | PTD | M0 },
-	{ GPMC_NBE1           , IEN | PTD | M7 },
-	{ GPMC_WAIT0          , IEN | PTU | M0 },
-	{ GPMC_WAIT1          , IEN | PTU | M7 },
-	{ GPMC_WAIT2          , IEN | PTD | M7 },
-	{ GPMC_NCS4           , IEN | PTD | M3 },
-	{ GPMC_NCS5           , IEN | PTD | M7 },
-	{ GPMC_NCS6           , IEN | PTD | M7 },
-	{ GPMC_NCS7           , IEN | PTD | M7 },
-	{ GPIO63              ,             M0 },
-	{ GPIO64              ,             M0 },
-	{ GPIO65              ,             M0 },
-	{ GPIO66              , IEN       | M0 },
-	{ CSI21_DX0           , IEN | PTD | M7 },
-	{ CSI21_DY0           , IEN | PTD | M7 },
-	{ CSI21_DX1           , IEN | PTD | M7 },
-	{ CSI21_DY1           , IEN | PTD | M7 },
-	{ CSI21_DX2           , IEN | PTD | M7 },
-	{ CSI21_DY2           , IEN | PTD | M7 },
-	{ CSI21_DX3           , IEN | PTD | M7 },
-	{ CSI21_DY3           , IEN | PTD | M7 },
-	{ CSI21_DX4           , IEN | PTD | M7 },
-	{ CSI21_DY4           , IEN | PTD | M7 },
-	{ CSI22_DX0           , IEN | PTD | M7 },
-	{ CSI22_DY0           , IEN | PTD | M7 },
-	{ CSI22_DX1           , IEN | PTD | M7 },
-	{ CSI22_DY1           , IEN | PTD | M7 },
-	{ CAM_SHUTTER         ,       PTD | M0 },
-	{ CAM_STROBE          ,       PTD | M0 },
-	{ CAM_GLOBALRESET     ,       PTD | M3 },
-	{ USBB1_ULPITLL_CLK   , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_STP   ,       PTU | M0 },
-	{ USBB1_ULPITLL_DIR   , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_NXT   , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT0  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT1  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT2  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT3  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT4  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT5  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT6  , IEN | PTD | M0 },
-	{ USBB1_ULPITLL_DAT7  , IEN | PTD | M0 },
-	{ USBB1_HSIC_DATA     ,             M0 },
-	{ USBB1_HSIC_STROBE   ,             M0 },
-	{ USBC1_ICUSB_DP      ,             M0 },
-	{ USBC1_ICUSB_DM      ,             M0 },
-	{ SDMMC1_CLK          ,       PTU | M0 },
-	{ SDMMC1_CMD          , IEN | PTU | M0 },
-	{ SDMMC1_DAT0         , IEN | PTU | M0 },
-	{ SDMMC1_DAT1         , IEN | PTU | M0 },
-	{ SDMMC1_DAT2         , IEN | PTU | M0 },
-	{ SDMMC1_DAT3         , IEN | PTU | M0 },
-	{ SDMMC1_DAT4         , IEN | PTU | M0 },
-	{ SDMMC1_DAT5         , IEN | PTU | M0 },
-	{ SDMMC1_DAT6         , IEN | PTU | M0 },
-	{ SDMMC1_DAT7         , IEN | PTU | M0 },
-	{ ABE_MCBSP2_CLKX     , IEN       | M0 },
-	{ ABE_MCBSP2_DR       , IEN       | M0 },
-	{ ABE_MCBSP2_DX       ,             M0 },
-	{ ABE_MCBSP2_FSX      , IEN       | M0 },
-	{ ABE_MCBSP1_CLKX     , IEN | PTD | M7 },
-	{ ABE_MCBSP1_DR       , IEN | PTD | M7 },
-	{ ABE_MCBSP1_DX       ,             M0 },
-	{ ABE_MCBSP1_FSX      , IEN       | M0 },
-	{ ABE_PDM_UL_DATA     , IEN | PTD | M7 },
-	{ ABE_PDM_DL_DATA     , IEN | PTD | M7 },
-	{ ABE_PDM_FRAME       , IEN | PTD | M7 },
-	{ ABE_PDM_LB_CLK      , IEN | PTD | M7 },
-	{ ABE_CLKS            , IEN | PTD | M7 },
-	{ ABE_DMIC_CLK1       , IEN | PTD | M7 },
-	{ ABE_DMIC_DIN1       , IEN | PTD | M7 },
-	{ ABE_DMIC_DIN2       , IEN | PTD | M3 },
-	{ ABE_DMIC_DIN3       , IEN | PTD | M3 },
-	{ UART2_CTS           , IEN | PTU | M0 },
-	{ UART2_RTS           ,             M0 },
-	{ UART2_RX            , IEN       | M0 },
-	{ UART2_TX            ,             M0 },
-	{ HDQ_SIO             , IEN       | M7 },
-	{ I2C1_SCL            , IEN       | M0 },
-	{ I2C1_SDA            , IEN       | M0 },
-	{ I2C2_SCL            , IEN       | M0 },
-	{ I2C2_SDA            , IEN       | M0 },
-	{ I2C3_SCL            , IEN       | M0 },
-	{ I2C3_SDA            , IEN       | M0 },
-	{ I2C4_SCL            , IEN       | M0 },
-	{ I2C4_SDA            , IEN       | M0 },
-	{ MCSPI1_CLK          , IEN       | M0 },
-	{ MCSPI1_SOMI         , IEN       | M0 },
-	{ MCSPI1_SIMO         , IEN       | M0 },
-	{ MCSPI1_CS0          , IEN | PTD | M0 },
-	{ MCSPI1_CS1          , IEN | PTU | M1 },
-	{ MCSPI1_CS2          ,             M3 },
-	{ MCSPI1_CS3          , IEN | PTU | M7 },
-	{ UART3_CTS_RCTX      ,             M1 },
-	{ UART3_RTS_SD        ,             M0 },
-	{ UART3_RX_IRRX       , IEN | PTU | M3 },
-	{ UART3_TX_IRTX       ,             M0 },
-	{ SDMMC5_CLK          ,       PTU | M0 },
-	{ SDMMC5_CMD          , IEN | PTU | M0 },
-	{ SDMMC5_DAT0         , IEN | PTU | M0 },
-	{ SDMMC5_DAT1         , IEN | PTU | M0 },
-	{ SDMMC5_DAT2         , IEN | PTU | M0 },
-	{ SDMMC5_DAT3         , IEN | PTU | M0 },
-	{ MCSPI4_CLK          , IEN       | M0 },
-	{ MCSPI4_SIMO         , IEN       | M0 },
-	{ MCSPI4_SOMI         , IEN       | M0 },
-	{ MCSPI4_CS0          , IEN | PTD | M0 },
-	{ UART4_RX            , IEN       | M0 },
-	{ UART4_TX            ,             M0 },
-	{ USBB2_ULPITLL_CLK   ,             M3 },
-	{ USBB2_ULPITLL_STP   ,             M5 },
-	{ USBB2_ULPITLL_DIR   ,             M5 },
-	{ USBB2_ULPITLL_NXT   ,             M5 },
-	{ USBB2_ULPITLL_DAT0  ,             M5 },
-	{ USBB2_ULPITLL_DAT1  ,             M5 },
-	{ USBB2_ULPITLL_DAT2  ,             M5 },
-	{ USBB2_ULPITLL_DAT3  ,             M5 },
-	{ USBB2_ULPITLL_DAT4  ,             M5 },
-	{ USBB2_ULPITLL_DAT5  ,             M5 },
-	{ USBB2_ULPITLL_DAT6  ,             M5 },
-	{ USBB2_ULPITLL_DAT7  ,             M5 },
-	{ USBB2_HSIC_DATA     ,             M3 },
-	{ USBB2_HSIC_STROBE   ,             M3 },
-	{ KPD_COL3            , IEN | PTD | M1 },
-	{ KPD_COL4            , IEN | PTD | M1 },
-	{ KPD_COL5            , IEN | PTD | M1 },
-	{ KPD_COL0            , IEN | PTD | M1 },
-	{ KPD_COL1            , IEN | PTD | M3 },
-	{ KPD_COL2            , IEN | PTD | M3 },
-	{ KPD_ROW3            , IEN | PTD | M1 },
-	{ KPD_ROW4            , IEN | PTD | M1 },
-	{ KPD_ROW5            , IEN | PTD | M1 },
-	{ KPD_ROW0            , IEN | PTD | M1 },
-	{ KPD_ROW1            , IEN | PTD | M1 },
-	{ KPD_ROW2            , IEN | PTD | M1 },
-	{ USBA0_OTG_CE        ,       PTU | M0 },
-	{ USBA0_OTG_DP        ,             M0 },
-	{ USBA0_OTG_DM        ,             M0 },
-	{ FREF_CLK1_OUT       , IEN | PTD | M7 },
-	{ FREF_CLK2_OUT       , IEN | PTD | M7 },
-	{ SYS_NIRQ1           , IEN | PTU | M0 },
-	{ SYS_NIRQ2           , IEN | PTU | M0 },
-	{ SYS_BOOT0           , IEN | PTD | M0 },
-	{ SYS_BOOT1           , IEN | PTD | M0 },
-	{ SYS_BOOT2           , IEN | PTD | M0 },
-	{ SYS_BOOT3           , IEN | PTD | M0 },
-	{ SYS_BOOT4           , IEN | PTD | M0 },
-	{ SYS_BOOT5           , IEN | PTD | M0 },
-	{ DPM_EMU0            , IEN | PTU | M0 },
-	{ DPM_EMU1            , IEN | PTU | M3 },
-	{ DPM_EMU2            , IEN | PTD | M7 },
-	{ DPM_EMU3            ,             M5 },
-	{ DPM_EMU4            ,             M5 },
-	{ DPM_EMU5            ,             M5 },
-	{ DPM_EMU6            ,             M5 },
-	{ DPM_EMU7            ,             M5 },
-	{ DPM_EMU8            ,             M5 },
-	{ DPM_EMU9            ,             M5 },
-	{ DPM_EMU10           ,             M5 },
-	{ DPM_EMU11           ,             M5 },
-	{ DPM_EMU12           ,             M5 },
-	{ DPM_EMU13           ,             M5 },
-	{ DPM_EMU14           ,             M5 },
-	{ DPM_EMU15           ,             M5 },
-	{ DPM_EMU16           ,             M5 },
-	{ DPM_EMU17           ,             M5 },
-	{ DPM_EMU18           ,             M5 },
-	{ DPM_EMU19           ,             M5 },
-	{ CSI22_DX2           , IEN | PTD | M7 },
-	{ CSI22_DY2           , IEN | PTD | M7 },
-};
-
-static const struct pad_conf_entry wkup_padconf_array[] = {
-	{ GPIO_WK0            , IEN | PTD | M7 },
-	{ GPIO_WK1            , IEN | PTD | M7 },
-	{ GPIO_WK2            , IEN | PTD | M7 },
-	{ GPIO_WK3            , IEN | PTU | M7 },
-	{ GPIO_WK4            , IEN | PTD | M7 },
-	{ SR_SCL              , IEN       | M0 },
-	{ SR_SDA              , IEN       | M0 },
-	{ FREF_XTAL_IN        ,             M0 },
-	{ FREF_SLICER_IN      ,             M0 },
-	{ FREF_CLK_IOREQ      , IEN | PTD | M0 },
-	{ FREF_CLK0_OUT       , IEN | PTD | M7 },
-	{ FREF_CLK3_REQ       , IEN | PTD | M7 },
-	{ FREF_CLK3_OUT       , IEN | PTD | M7 },
-	{ FREF_CLK4_REQ       , IEN | PTU | M3 },
-	{ FREF_CLK4_OUT       , IEN | PTD | M0 },
-	{ SYS_32K             , IEN       | M0 },
-	{ SYS_NRESPWRON       ,             M0 },
-	{ SYS_NRESWARM        ,             M0 },
-	{ SYS_PWR_REQ         , IEN | PTU | M0 },
-	{ SYS_PWRON_RESET_OUT , IEN | PTD | M0 },
-	{ SYS_BOOT6           , IEN       | M0 },
-	{ SYS_BOOT7           , IEN       | M0 },
-	{ JTAG_NTRST          , IEN | PTD | M0 },
-	{ JTAG_TCK            , IEN | PTD | M0 },
-	{ JTAG_RTCK           ,       PTD | M0 },
-	{ JTAG_TMS_TMSC       , IEN       | M0 },
-	{ JTAG_TDI            , IEN | PTU | M0 },
-	{ JTAG_TDO            , IEN | PTU | M0 },
-};
-
-void archosg9_set_muxconf_regs(void)
-{
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE,
-		core_padconf_array, ARRAY_SIZE(core_padconf_array));
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP,
-		wkup_padconf_array, ARRAY_SIZE(wkup_padconf_array));
-
-	/* gpio_wk7 is used for controlling TPS on 4460 */
-	if (omap4_revision() >= OMAP4460_ES1_0) {
-		/* Enable GPIO-1 clocks before TPS initialization */
-		omap4_enable_gpio1_wup_clocks();
-	}
-}
diff --git a/arch/arm/boards/archosg9/mux.h b/arch/arm/boards/archosg9/mux.h
deleted file mode 100644
index d4b0c9da86..0000000000
--- a/arch/arm/boards/archosg9/mux.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef _MUX_H
-#define _MUX_H
-
-void archosg9_set_muxconf_regs(void);
-
-#endif /* _MUX_H */
diff --git a/arch/arm/boards/omap343xdsp/Makefile b/arch/arm/boards/omap343xdsp/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/omap343xdsp/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/omap343xdsp/board.c b/arch/arm/boards/omap343xdsp/board.c
deleted file mode 100644
index ca1cf9c58c..0000000000
--- a/arch/arm/boards/omap343xdsp/board.c
+++ /dev/null
@@ -1,50 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2006-2008 Nishanth Menon <x0nishan@ti.com>, Texas Instruments (http://www.ti.com/)
-
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <io.h>
-#include <asm/armlinux.h>
-#include <mach/omap/omap3-silicon.h>
-#include <mach/omap/omap3-devices.h>
-#include <mach/omap/gpmc.h>
-#include <errno.h>
-
-/**
- * @brief UART serial port initialization - remember to enable COM clocks in arch
- *
- * @return result of device registration
- */
-static int sdp3430_console_init(void)
-{
-	barebox_set_model("Texas Instruments SDP343x");
-	barebox_set_hostname("sdp343x");
-
-	omap3_add_uart3();
-
-	return 0;
-}
-
-console_initcall(sdp3430_console_init);
-
-static int sdp3430_mem_init(void)
-{
-	omap_add_ram0(SZ_128M);
-
-	return 0;
-}
-mem_initcall(sdp3430_mem_init);
-
-static int sdp3430_devices_init(void)
-{
-#ifdef CONFIG_OMAP_GPMC
-	/* WP is made high and WAIT1 active Low */
-	gpmc_generic_init(0x10);
-#endif
-
-	return 0;
-}
-
-device_initcall(sdp3430_devices_init);
diff --git a/arch/arm/boards/omap343xdsp/lowlevel.c b/arch/arm/boards/omap343xdsp/lowlevel.c
deleted file mode 100644
index 3a8165f885..0000000000
--- a/arch/arm/boards/omap343xdsp/lowlevel.c
+++ /dev/null
@@ -1,562 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/omap3-mux.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/control.h>
-#include <mach/omap/syslib.h>
-#include <mach/omap/omap3-silicon.h>
-#include <mach/omap/omap3-generic.h>
-#include <mach/omap/sys_info.h>
-
-/**
- * @brief Do the SDRC initialization for 128Meg Infenion DDR for CS0
- *
- * @return void
- */
-static void sdrc_init(void)
-{
-	/* Issue SDRC Soft reset  */
-	writel(0x12, OMAP3_SDRC_REG(SYSCONFIG));
-
-	/* Wait until Reset complete */
-	while ((readl(OMAP3_SDRC_REG(STATUS)) & 0x1) == 0);
-	/* SDRC to normal mode */
-	writel(0x10, OMAP3_SDRC_REG(SYSCONFIG));
-	/* SDRC Sharing register */
-	/* 32-bit SDRAM on data lane [31:0] - CS0 */
-	/* pin tri-stated = 1 */
-	writel(0x00000100, OMAP3_SDRC_REG(SHARING));
-
-	/* ----- SDRC_REG(CS0 Configuration --------- */
-	/* SDRC_REG(MCFG0 register */
-	writel(0x02584019, OMAP3_SDRC_REG(MCFG_0));
-
-	/* SDRC_REG(RFR_CTRL0 register */
-	writel(0x0003DE01, OMAP3_SDRC_REG(RFR_CTRL_0));
-
-	/* SDRC_REG(ACTIM_CTRLA0 register */
-	writel(0X5A9A4486, OMAP3_SDRC_REG(ACTIM_CTRLA_0));
-
-	/* SDRC_REG(ACTIM_CTRLB0 register */
-	writel(0x00000010, OMAP3_SDRC_REG(ACTIM_CTRLB_0));
-
-	/* Disble Power Down of CKE cuz of 1 CKE on combo part */
-	writel(0x00000081, OMAP3_SDRC_REG(POWER));
-
-	/* SDRC_REG(Manual command register */
-	/* NOP command */
-	writel(0x00000000, OMAP3_SDRC_REG(MANUAL_0));
-	/* Precharge command */
-	writel(0x00000001, OMAP3_SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
-
-	/* SDRC MR0 register */
-	/* CAS latency = 3 */
-	/* Write Burst = Read Burst */
-	/* Serial Mode */
-	writel(0x00000032, OMAP3_SDRC_REG(MR_0));	/* Burst length =4 */
-
-	/* SDRC DLLA control register */
-	/* Enable DLL A */
-	writel(0x0000000A, OMAP3_SDRC_REG(DLLA_CTRL));
-
-	/* wait until DLL is locked  */
-	while ((readl(OMAP3_SDRC_REG(DLLA_STATUS)) & 0x4) == 0);
-}
-
-/**
- * @brief Do the pin muxing required for Board operation.
- *
- * See @ref MUX_VAL for description of the muxing mode. Since some versions
- * of Linux depend on all pin muxing being done at barebox level, we may need to
- * enable CONFIG_MACH_OMAP_ADVANCED_MUX to enable the full fledged pin muxing.
- *
- * @return void
- */
-static void mux_config(void)
-{
-	/* Essential MUX Settings */
-	MUX_VAL(CP(SDRC_D0), (IEN | PTD | DIS | M0));	/* SDRC_D0 */
-	MUX_VAL(CP(SDRC_D1), (IEN | PTD | DIS | M0));	/* SDRC_D1 */
-	MUX_VAL(CP(SDRC_D2), (IEN | PTD | DIS | M0));	/* SDRC_D2 */
-	MUX_VAL(CP(SDRC_D3), (IEN | PTD | DIS | M0));	/* SDRC_D3 */
-	MUX_VAL(CP(SDRC_D4), (IEN | PTD | DIS | M0));	/* SDRC_D4 */
-	MUX_VAL(CP(SDRC_D5), (IEN | PTD | DIS | M0));	/* SDRC_D5 */
-	MUX_VAL(CP(SDRC_D6), (IEN | PTD | DIS | M0));	/* SDRC_D6 */
-	MUX_VAL(CP(SDRC_D7), (IEN | PTD | DIS | M0));	/* SDRC_D7 */
-	MUX_VAL(CP(SDRC_D8), (IEN | PTD | DIS | M0));	/* SDRC_D8 */
-	MUX_VAL(CP(SDRC_D9), (IEN | PTD | DIS | M0));	/* SDRC_D9 */
-	MUX_VAL(CP(SDRC_D10), (IEN | PTD | DIS | M0));	/* SDRC_D10 */
-	MUX_VAL(CP(SDRC_D11), (IEN | PTD | DIS | M0));	/* SDRC_D11 */
-	MUX_VAL(CP(SDRC_D12), (IEN | PTD | DIS | M0));	/* SDRC_D12 */
-	MUX_VAL(CP(SDRC_D13), (IEN | PTD | DIS | M0));	/* SDRC_D13 */
-	MUX_VAL(CP(SDRC_D14), (IEN | PTD | DIS | M0));	/* SDRC_D14 */
-	MUX_VAL(CP(SDRC_D15), (IEN | PTD | DIS | M0));	/* SDRC_D15 */
-	MUX_VAL(CP(SDRC_D16), (IEN | PTD | DIS | M0));	/* SDRC_D16 */
-	MUX_VAL(CP(SDRC_D17), (IEN | PTD | DIS | M0));	/* SDRC_D17 */
-	MUX_VAL(CP(SDRC_D18), (IEN | PTD | DIS | M0));	/* SDRC_D18 */
-	MUX_VAL(CP(SDRC_D19), (IEN | PTD | DIS | M0));	/* SDRC_D19 */
-	MUX_VAL(CP(SDRC_D20), (IEN | PTD | DIS | M0));	/* SDRC_D20 */
-	MUX_VAL(CP(SDRC_D21), (IEN | PTD | DIS | M0));	/* SDRC_D21 */
-	MUX_VAL(CP(SDRC_D22), (IEN | PTD | DIS | M0));	/* SDRC_D22 */
-	MUX_VAL(CP(SDRC_D23), (IEN | PTD | DIS | M0));	/* SDRC_D23 */
-	MUX_VAL(CP(SDRC_D24), (IEN | PTD | DIS | M0));	/* SDRC_D24 */
-	MUX_VAL(CP(SDRC_D25), (IEN | PTD | DIS | M0));	/* SDRC_D25 */
-	MUX_VAL(CP(SDRC_D26), (IEN | PTD | DIS | M0));	/* SDRC_D26 */
-	MUX_VAL(CP(SDRC_D27), (IEN | PTD | DIS | M0));	/* SDRC_D27 */
-	MUX_VAL(CP(SDRC_D28), (IEN | PTD | DIS | M0));	/* SDRC_D28 */
-	MUX_VAL(CP(SDRC_D29), (IEN | PTD | DIS | M0));	/* SDRC_D29 */
-	MUX_VAL(CP(SDRC_D30), (IEN | PTD | DIS | M0));	/* SDRC_D30 */
-	MUX_VAL(CP(SDRC_D31), (IEN | PTD | DIS | M0));	/* SDRC_D31 */
-	MUX_VAL(CP(SDRC_CLK), (IEN | PTD | DIS | M0));	/* SDRC_CLK */
-	MUX_VAL(CP(SDRC_DQS0), (IEN | PTD | DIS | M0));	/* SDRC_DQS0 */
-	MUX_VAL(CP(SDRC_DQS1), (IEN | PTD | DIS | M0));	/* SDRC_DQS1 */
-	MUX_VAL(CP(SDRC_DQS2), (IEN | PTD | DIS | M0));	/* SDRC_DQS2 */
-	MUX_VAL(CP(SDRC_DQS3), (IEN | PTD | DIS | M0));	/* SDRC_DQS3 */
-	/* GPMC */
-	MUX_VAL(CP(GPMC_A1), (IDIS | PTD | DIS | M0));	/* GPMC_A1 */
-	MUX_VAL(CP(GPMC_A2), (IDIS | PTD | DIS | M0));	/* GPMC_A2 */
-	MUX_VAL(CP(GPMC_A3), (IDIS | PTD | DIS | M0));	/* GPMC_A3 */
-	MUX_VAL(CP(GPMC_A4), (IDIS | PTD | DIS | M0));	/* GPMC_A4 */
-	MUX_VAL(CP(GPMC_A5), (IDIS | PTD | DIS | M0));	/* GPMC_A5 */
-	MUX_VAL(CP(GPMC_A6), (IDIS | PTD | DIS | M0));	/* GPMC_A6 */
-	MUX_VAL(CP(GPMC_A7), (IDIS | PTD | DIS | M0));	/* GPMC_A7 */
-	MUX_VAL(CP(GPMC_A8), (IDIS | PTD | DIS | M0));	/* GPMC_A8 */
-	MUX_VAL(CP(GPMC_A9), (IDIS | PTD | DIS | M0));	/* GPMC_A9 */
-	MUX_VAL(CP(GPMC_A10), (IDIS | PTD | DIS | M0));	/* GPMC_A10 */
-	MUX_VAL(CP(GPMC_D0), (IEN | PTD | DIS | M0));	/* GPMC_D0 */
-	MUX_VAL(CP(GPMC_D1), (IEN | PTD | DIS | M0));	/* GPMC_D1 */
-	MUX_VAL(CP(GPMC_D2), (IEN | PTD | DIS | M0));	/* GPMC_D2 */
-	MUX_VAL(CP(GPMC_D3), (IEN | PTD | DIS | M0));	/* GPMC_D3 */
-	MUX_VAL(CP(GPMC_D4), (IEN | PTD | DIS | M0));	/* GPMC_D4 */
-	MUX_VAL(CP(GPMC_D5), (IEN | PTD | DIS | M0));	/* GPMC_D5 */
-	MUX_VAL(CP(GPMC_D6), (IEN | PTD | DIS | M0));	/* GPMC_D6 */
-	MUX_VAL(CP(GPMC_D7), (IEN | PTD | DIS | M0));	/* GPMC_D7 */
-	MUX_VAL(CP(GPMC_D8), (IEN | PTD | DIS | M0));	/* GPMC_D8 */
-	MUX_VAL(CP(GPMC_D9), (IEN | PTD | DIS | M0));	/* GPMC_D9 */
-	MUX_VAL(CP(GPMC_D10), (IEN | PTD | DIS | M0));	/* GPMC_D10 */
-	MUX_VAL(CP(GPMC_D11), (IEN | PTD | DIS | M0));	/* GPMC_D11 */
-	MUX_VAL(CP(GPMC_D12), (IEN | PTD | DIS | M0));	/* GPMC_D12 */
-	MUX_VAL(CP(GPMC_D13), (IEN | PTD | DIS | M0));	/* GPMC_D13 */
-	MUX_VAL(CP(GPMC_D14), (IEN | PTD | DIS | M0));	/* GPMC_D14 */
-	MUX_VAL(CP(GPMC_D15), (IEN | PTD | DIS | M0));	/* GPMC_D15 */
-	MUX_VAL(CP(GPMC_NCS0), (IDIS | PTU | EN | M0));	/* GPMC_NCS0 */
-	MUX_VAL(CP(GPMC_NCS1), (IDIS | PTU | EN | M0));	/* GPMC_NCS1 */
-	MUX_VAL(CP(GPMC_NCS2), (IDIS | PTU | EN | M0));	/* GPMC_NCS2 */
-	MUX_VAL(CP(GPMC_NCS3), (IDIS | PTU | EN | M0));	/* GPMC_NCS3 */
-	/* GPIO_55 - FLASH_DIS */
-	MUX_VAL(CP(GPMC_NCS4), (IEN | PTU | EN | M4));
-	/* GPIO_56 - TORCH_EN */
-	MUX_VAL(CP(GPMC_NCS5), (IDIS | PTD | DIS | M4));
-	/* GPIO_57 - AGPS SLP */
-	MUX_VAL(CP(GPMC_NCS6), (IEN | PTD | DIS | M4));
-	/* GPMC_58 - WLAN_IRQ */
-	MUX_VAL(CP(GPMC_NCS7), (IEN | PTU | EN | M4));
-	MUX_VAL(CP(GPMC_CLK), (IDIS | PTD | DIS | M0));	/* GPMC_CLK */
-	/* GPMC_NADV_ALE */
-	MUX_VAL(CP(GPMC_NADV_ALE), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NOE), (IDIS | PTD | DIS | M0));	/* GPMC_NOE */
-	MUX_VAL(CP(GPMC_NWE), (IDIS | PTD | DIS | M0));	/* GPMC_NWE */
-	/* GPMC_NBE0_CLE */
-	MUX_VAL(CP(GPMC_NBE0_CLE), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NBE1), (IEN | PTD | DIS | M4));	/* GPIO_61 -BT_SHUTDN */
-	MUX_VAL(CP(GPMC_NWP), (IEN | PTD | DIS | M0));	/* GPMC_NWP */
-	MUX_VAL(CP(GPMC_WAIT0), (IEN | PTU | EN | M0));	/* GPMC_WAIT0 */
-	MUX_VAL(CP(GPMC_WAIT1), (IEN | PTU | EN | M0));	/* GPMC_WAIT1 */
-	MUX_VAL(CP(GPMC_WAIT2), (IEN | PTU | EN | M4));	/* GPIO_64 */
-	MUX_VAL(CP(GPMC_WAIT3), (IEN | PTU | EN | M4));	/* GPIO_65 */
-
-	/* SERIAL INTERFACE */
-	/* UART3_CTS_RCTX */
-	MUX_VAL(CP(UART3_CTS_RCTX), (IEN | PTD | EN | M0));
-	/* UART3_RTS_SD */
-	MUX_VAL(CP(UART3_RTS_SD), (IDIS | PTD | DIS | M0));
-	/* UART3_RX_IRRX */
-	MUX_VAL(CP(UART3_RX_IRRX), (IEN | PTD | DIS | M0));
-	/* UART3_TX_IRTX */
-	MUX_VAL(CP(UART3_TX_IRTX), (IDIS | PTD | DIS | M0));
-	/* HSUSB0_CLK */
-	MUX_VAL(CP(HSUSB0_CLK), (IEN | PTD | DIS | M0));
-	/* HSUSB0_STP */
-	MUX_VAL(CP(HSUSB0_STP), (IDIS | PTU | EN | M0));
-	/* HSUSB0_DIR */
-	MUX_VAL(CP(HSUSB0_DIR), (IEN | PTD | DIS | M0));
-	/* HSUSB0_NXT */
-	MUX_VAL(CP(HSUSB0_NXT), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA0 */
-	MUX_VAL(CP(HSUSB0_DATA0), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA1 */
-	MUX_VAL(CP(HSUSB0_DATA1), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA2 */
-	MUX_VAL(CP(HSUSB0_DATA2), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA3 */
-	MUX_VAL(CP(HSUSB0_DATA3), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA4 */
-	MUX_VAL(CP(HSUSB0_DATA4), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA5 */
-	MUX_VAL(CP(HSUSB0_DATA5), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA6 */
-	MUX_VAL(CP(HSUSB0_DATA6), (IEN | PTD | DIS | M0));
-	/* HSUSB0_DATA7 */
-	MUX_VAL(CP(HSUSB0_DATA7), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(I2C1_SCL), (IEN | PTU | EN | M0));	/* I2C1_SCL */
-	MUX_VAL(CP(I2C1_SDA), (IEN | PTU | EN | M0));	/* I2C1_SDA */
-#ifdef CONFIG_MACH_OMAP_ADVANCED_MUX
-	/* DSS */
-	MUX_VAL(CP(DSS_PCLK), (IDIS | PTD | DIS | M0));	/* DSS_PCLK */
-	MUX_VAL(CP(DSS_HSYNC), (IDIS | PTD | DIS | M0));	/* DSS_HSYNC */
-	MUX_VAL(CP(DSS_VSYNC), (IDIS | PTD | DIS | M0));	/* DSS_VSYNC */
-	MUX_VAL(CP(DSS_ACBIAS), (IDIS | PTD | DIS | M0));	/* DSS_ACBIAS */
-	MUX_VAL(CP(DSS_DATA0), (IDIS | PTD | DIS | M0));	/* DSS_DATA0 */
-	MUX_VAL(CP(DSS_DATA1), (IDIS | PTD | DIS | M0));	/* DSS_DATA1 */
-	MUX_VAL(CP(DSS_DATA2), (IDIS | PTD | DIS | M0));	/* DSS_DATA2 */
-	MUX_VAL(CP(DSS_DATA3), (IDIS | PTD | DIS | M0));	/* DSS_DATA3 */
-	MUX_VAL(CP(DSS_DATA4), (IDIS | PTD | DIS | M0));	/* DSS_DATA4 */
-	MUX_VAL(CP(DSS_DATA5), (IDIS | PTD | DIS | M0));	/* DSS_DATA5 */
-	MUX_VAL(CP(DSS_DATA6), (IDIS | PTD | DIS | M0));	/* DSS_DATA6 */
-	MUX_VAL(CP(DSS_DATA7), (IDIS | PTD | DIS | M0));	/* DSS_DATA7 */
-	MUX_VAL(CP(DSS_DATA8), (IDIS | PTD | DIS | M0));	/* DSS_DATA8 */
-	MUX_VAL(CP(DSS_DATA9), (IDIS | PTD | DIS | M0));	/* DSS_DATA9 */
-	MUX_VAL(CP(DSS_DATA10), (IDIS | PTD | DIS | M0));	/* DSS_DATA10 */
-	MUX_VAL(CP(DSS_DATA11), (IDIS | PTD | DIS | M0));	/* DSS_DATA11 */
-	MUX_VAL(CP(DSS_DATA12), (IDIS | PTD | DIS | M0));	/* DSS_DATA12 */
-	MUX_VAL(CP(DSS_DATA13), (IDIS | PTD | DIS | M0));	/* DSS_DATA13 */
-	MUX_VAL(CP(DSS_DATA14), (IDIS | PTD | DIS | M0));	/* DSS_DATA14 */
-	MUX_VAL(CP(DSS_DATA15), (IDIS | PTD | DIS | M0));	/* DSS_DATA15 */
-	MUX_VAL(CP(DSS_DATA16), (IDIS | PTD | DIS | M0));	/* DSS_DATA16 */
-	MUX_VAL(CP(DSS_DATA17), (IDIS | PTD | DIS | M0));	/* DSS_DATA17 */
-	MUX_VAL(CP(DSS_DATA18), (IDIS | PTD | DIS | M0));	/* DSS_DATA18 */
-	MUX_VAL(CP(DSS_DATA19), (IDIS | PTD | DIS | M0));	/* DSS_DATA19 */
-	MUX_VAL(CP(DSS_DATA20), (IDIS | PTD | DIS | M0));	/* DSS_DATA20 */
-	MUX_VAL(CP(DSS_DATA21), (IDIS | PTD | DIS | M0));	/* DSS_DATA21 */
-	MUX_VAL(CP(DSS_DATA22), (IDIS | PTD | DIS | M0));	/* DSS_DATA22 */
-	MUX_VAL(CP(DSS_DATA23), (IDIS | PTD | DIS | M0));	/* DSS_DATA23 */
-	/* CAMERA */
-	MUX_VAL(CP(CAM_HS), (IEN | PTU | EN | M0));	/* CAM_HS */
-	MUX_VAL(CP(CAM_VS), (IEN | PTU | EN | M0));	/* CAM_VS */
-	MUX_VAL(CP(CAM_XCLKA), (IDIS | PTD | DIS | M0));	/* CAM_XCLKA */
-	MUX_VAL(CP(CAM_PCLK), (IEN | PTU | EN | M0));	/* CAM_PCLK */
-	/* GPIO_98 - CAM_RESET */
-	MUX_VAL(CP(CAM_FLD), (IDIS | PTD | DIS | M4));
-	MUX_VAL(CP(CAM_D0), (IEN | PTD | DIS | M0));	/* CAM_D0 */
-	MUX_VAL(CP(CAM_D1), (IEN | PTD | DIS | M0));	/* CAM_D1 */
-	MUX_VAL(CP(CAM_D2), (IEN | PTD | DIS | M0));	/* CAM_D2 */
-	MUX_VAL(CP(CAM_D3), (IEN | PTD | DIS | M0));	/* CAM_D3 */
-	MUX_VAL(CP(CAM_D4), (IEN | PTD | DIS | M0));	/* CAM_D4 */
-	MUX_VAL(CP(CAM_D5), (IEN | PTD | DIS | M0));	/* CAM_D5 */
-	MUX_VAL(CP(CAM_D6), (IEN | PTD | DIS | M0));	/* CAM_D6 */
-	MUX_VAL(CP(CAM_D7), (IEN | PTD | DIS | M0));	/* CAM_D7 */
-	MUX_VAL(CP(CAM_D8), (IEN | PTD | DIS | M0));	/* CAM_D8 */
-	MUX_VAL(CP(CAM_D9), (IEN | PTD | DIS | M0));	/* CAM_D9 */
-	MUX_VAL(CP(CAM_D10), (IEN | PTD | DIS | M0));	/* CAM_D10 */
-	MUX_VAL(CP(CAM_D11), (IEN | PTD | DIS | M0));	/* CAM_D11 */
-	MUX_VAL(CP(CAM_XCLKB), (IDIS | PTD | DIS | M0));	/* CAM_XCLKB */
-	MUX_VAL(CP(CAM_WEN), (IEN | PTD | DIS | M4));	/* GPIO_167 */
-	MUX_VAL(CP(CAM_STROBE), (IDIS | PTD | DIS | M0));	/* CAM_STROBE */
-	MUX_VAL(CP(CSI2_DX0), (IEN | PTD | DIS | M0));	/* CSI2_DX0 */
-	MUX_VAL(CP(CSI2_DY0), (IEN | PTD | DIS | M0));	/* CSI2_DY0 */
-	MUX_VAL(CP(CSI2_DX1), (IEN | PTD | DIS | M0));	/* CSI2_DX1 */
-	MUX_VAL(CP(CSI2_DY1), (IEN | PTD | DIS | M0));	/* CSI2_DY1 */
-	/* AUDIO INTERFACE */
-	MUX_VAL(CP(MCBSP2_FSX), (IEN | PTD | DIS | M0));	/* MCBSP2_FSX */
-	/* MCBSP2_CLKX */
-	MUX_VAL(CP(MCBSP2_CLKX), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(MCBSP2_DR), (IEN | PTD | DIS | M0));	/* MCBSP2_DR */
-	MUX_VAL(CP(MCBSP2_DX), (IDIS | PTD | DIS | M0));	/* MCBSP2_DX */
-	/* EXPANSION CARD  */
-	MUX_VAL(CP(MMC1_CLK), (IDIS | PTU | EN | M0));	/* MMC1_CLK */
-	MUX_VAL(CP(MMC1_CMD), (IEN | PTU | EN | M0));	/* MMC1_CMD */
-	MUX_VAL(CP(MMC1_DAT0), (IEN | PTU | EN | M0));	/* MMC1_DAT0 */
-	MUX_VAL(CP(MMC1_DAT1), (IEN | PTU | EN | M0));	/* MMC1_DAT1 */
-	MUX_VAL(CP(MMC1_DAT2), (IEN | PTU | EN | M0));	/* MMC1_DAT2 */
-	MUX_VAL(CP(MMC1_DAT3), (IEN | PTU | EN | M0));	/* MMC1_DAT3 */
-	MUX_VAL(CP(MMC1_DAT4), (IEN | PTU | EN | M0));	/* MMC1_DAT4 */
-	MUX_VAL(CP(MMC1_DAT5), (IEN | PTU | EN | M0));	/* MMC1_DAT5 */
-	MUX_VAL(CP(MMC1_DAT6), (IEN | PTU | EN | M0));	/* MMC1_DAT6 */
-	MUX_VAL(CP(MMC1_DAT7), (IEN | PTU | EN | M0));	/* MMC1_DAT7 */
-	/* WIRELESS LAN */
-	MUX_VAL(CP(MMC2_CLK), (IEN | PTD | DIS | M0));	/* MMC2_CLK */
-	MUX_VAL(CP(MMC2_CMD), (IEN | PTU | EN | M0));	/* MMC2_CMD */
-	MUX_VAL(CP(MMC2_DAT0), (IEN | PTU | EN | M0));	/* MMC2_DAT0 */
-	MUX_VAL(CP(MMC2_DAT1), (IEN | PTU | EN | M0));	/* MMC2_DAT1 */
-	MUX_VAL(CP(MMC2_DAT2), (IEN | PTU | EN | M0));	/* MMC2_DAT2 */
-	MUX_VAL(CP(MMC2_DAT3), (IEN | PTU | EN | M0));	/* MMC2_DAT3 */
-	/* MMC2_DIR_DAT0 */
-	MUX_VAL(CP(MMC2_DAT4), (IDIS | PTD | DIS | M1));
-	/* MMC2_DIR_DAT1 */
-	MUX_VAL(CP(MMC2_DAT5), (IDIS | PTD | DIS | M1));
-	/* MMC2_DIR_CMD */
-	MUX_VAL(CP(MMC2_DAT6), (IDIS | PTD | DIS | M1));
-	/* MMC2_CLKIN */
-	MUX_VAL(CP(MMC2_DAT7), (IEN | PTU | EN | M1));
-	/* BLUETOOTH */
-	/* MCBSP3_DX */
-	MUX_VAL(CP(MCBSP3_DX), (IDIS | PTD | DIS | M0));
-	/* MCBSP3_DR */
-	MUX_VAL(CP(MCBSP3_DR), (IEN | PTD | DIS | M0));
-	/* MCBSP3_CLKX */
-	MUX_VAL(CP(MCBSP3_CLKX), (IEN | PTD | DIS | M0));
-	/* MCBSP3_FSX */
-	MUX_VAL(CP(MCBSP3_FSX), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(UART2_CTS), (IEN | PTU | EN | M0));	/* UART2_CTS */
-	MUX_VAL(CP(UART2_RTS), (IDIS | PTD | DIS | M0));	/* UART2_RTS */
-	MUX_VAL(CP(UART2_TX), (IDIS | PTD | DIS | M0));	/* UART2_TX */
-	MUX_VAL(CP(UART2_RX), (IEN | PTD | DIS | M0));	/* UART2_RX */
-	/* MODEM INTERFACE */
-	MUX_VAL(CP(UART1_TX), (IDIS | PTD | DIS | M0));	/* UART1_TX */
-	MUX_VAL(CP(UART1_RTS), (IDIS | PTD | DIS | M0));	/* UART1_RTS */
-	MUX_VAL(CP(UART1_CTS), (IEN | PTU | DIS | M0));	/* UART1_CTS */
-	MUX_VAL(CP(UART1_RX), (IEN | PTD | DIS | M0));	/* UART1_RX */
-	/* SSI1_DAT_RX */
-	MUX_VAL(CP(MCBSP4_CLKX), (IEN | PTD | DIS | M1));
-	MUX_VAL(CP(MCBSP4_DR), (IEN | PTD | DIS | M1));	/* SSI1_FLAG_RX */
-	MUX_VAL(CP(MCBSP4_DX), (IEN | PTD | DIS | M1));	/* SSI1_RDY_RX  */
-	MUX_VAL(CP(MCBSP4_FSX), (IEN | PTD | DIS | M1));	/* SSI1_WAKE */
-	/* MCBSP1_CLKR  */
-	MUX_VAL(CP(MCBSP1_CLKR), (IEN | PTD | DIS | M0));
-	/* GPIO_157 - BT_WKUP */
-	MUX_VAL(CP(MCBSP1_FSR), (IDIS | PTU | EN | M4));
-	/* MCBSP1_DX */
-	MUX_VAL(CP(MCBSP1_DX), (IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(MCBSP1_DR), (IEN | PTD | DIS | M0));	/* MCBSP1_DR */
-	/* MCBSP_CLKS  */
-	MUX_VAL(CP(MCBSP_CLKS), (IEN | PTU | DIS | M0));
-	/* MCBSP1_FSX */
-	MUX_VAL(CP(MCBSP1_FSX), (IEN | PTD | DIS | M0));
-	/* MCBSP1_CLKX  */
-	MUX_VAL(CP(MCBSP1_CLKX), (IEN | PTD | DIS | M0));
-	/* SERIAL INTERFACE */
-	MUX_VAL(CP(I2C2_SCL), (IEN | PTU | EN | M0));	/* I2C2_SCL */
-	MUX_VAL(CP(I2C2_SDA), (IEN | PTU | EN | M0));	/* I2C2_SDA */
-	MUX_VAL(CP(I2C3_SCL), (IEN | PTU | EN | M0));	/* I2C3_SCL */
-	MUX_VAL(CP(I2C3_SDA), (IEN | PTU | EN | M0));	/* I2C3_SDA */
-	MUX_VAL(CP(I2C4_SCL), (IEN | PTU | EN | M0));	/* I2C4_SCL */
-	MUX_VAL(CP(I2C4_SDA), (IEN | PTU | EN | M0));	/* I2C4_SDA */
-	MUX_VAL(CP(HDQ_SIO), (IEN | PTU | EN | M0));	/* HDQ_SIO */
-	/* MCSPI1_CLK */
-	MUX_VAL(CP(MCSPI1_CLK), (IEN | PTD | DIS | M0));
-	/* MCSPI1_SIMO */
-	MUX_VAL(CP(MCSPI1_SIMO), (IEN | PTD | DIS | M0));
-	/* MCSPI1_SOMI */
-	MUX_VAL(CP(MCSPI1_SOMI), (IEN | PTD | DIS | M0));
-	/* MCSPI1_CS0 */
-	MUX_VAL(CP(MCSPI1_CS0), (IEN | PTD | EN | M0));
-	/* MCSPI1_CS1 */
-	MUX_VAL(CP(MCSPI1_CS1), (IDIS | PTD | EN | M0));
-	/* GPIO_176-NOR_DPD */
-	MUX_VAL(CP(MCSPI1_CS2), (IDIS | PTD | DIS | M4));
-	/* MCSPI1_CS3 */
-	MUX_VAL(CP(MCSPI1_CS3), (IEN | PTD | EN | M0));
-	/* MCSPI2_CLK */
-	MUX_VAL(CP(MCSPI2_CLK), (IEN | PTD | DIS | M0));
-	/* MCSPI2_SIMO */
-	MUX_VAL(CP(MCSPI2_SIMO), (IEN | PTD | DIS | M0));
-	/* MCSPI2_SOMI */
-	MUX_VAL(CP(MCSPI2_SOMI), (IEN | PTD | DIS | M0));
-	/* MCSPI2_CS0 */
-	MUX_VAL(CP(MCSPI2_CS0), (IEN | PTD | EN | M0));
-	/* MCSPI2_CS1 */
-	MUX_VAL(CP(MCSPI2_CS1), (IEN | PTD | EN | M0));
-
-	/* CONTROL AND DEBUG */
-	MUX_VAL(CP(SYS_32K), (IEN | PTD | DIS | M0));	/* SYS_32K */
-	MUX_VAL(CP(SYS_CLKREQ), (IEN | PTD | DIS | M0));	/* SYS_CLKREQ */
-	MUX_VAL(CP(SYS_NIRQ), (IEN | PTU | EN | M0));	/* SYS_NIRQ */
-	MUX_VAL(CP(SYS_BOOT0), (IEN | PTD | DIS | M4));	/* GPIO_2 - PEN_IRQ */
-	MUX_VAL(CP(SYS_BOOT1), (IEN | PTD | DIS | M4));	/* GPIO_3 */
-	MUX_VAL(CP(SYS_BOOT2), (IEN | PTD | DIS | M4));	/* GPIO_4 - MMC1_WP */
-	MUX_VAL(CP(SYS_BOOT3), (IEN | PTD | DIS | M4));	/* GPIO_5 - LCD_ENVDD */
-	MUX_VAL(CP(SYS_BOOT4), (IEN | PTD | DIS | M4));	/* GPIO_6 - LAN_INTR0 */
-	MUX_VAL(CP(SYS_BOOT5), (IEN | PTD | DIS | M4));	/* GPIO_7 - MMC2_WP */
-	/* GPIO_8-LCD_ENBKL */
-	MUX_VAL(CP(SYS_BOOT6), (IDIS | PTD | DIS | M4));
-	/* SYS_OFF_MODE */
-	MUX_VAL(CP(SYS_OFF_MODE), (IEN | PTD | DIS | M0));
-	/* SYS_CLKOUT1  */
-	MUX_VAL(CP(SYS_CLKOUT1), (IEN | PTD | DIS | M0));
-	MUX_VAL(CP(SYS_CLKOUT2), (IEN | PTU | EN | M4));	/* GPIO_186 */
-	MUX_VAL(CP(JTAG_NTRST), (IEN | PTD | DIS | M0));	/* JTAG_NTRST */
-	MUX_VAL(CP(JTAG_TCK), (IEN | PTD | DIS | M0));	/* JTAG_TCK */
-	MUX_VAL(CP(JTAG_TMS), (IEN | PTD | DIS | M0));	/* JTAG_TMS */
-	MUX_VAL(CP(JTAG_TDI), (IEN | PTD | DIS | M0));	/* JTAG_TDI */
-	MUX_VAL(CP(JTAG_EMU0), (IEN | PTD | DIS | M0));	/* JTAG_EMU0 */
-	MUX_VAL(CP(JTAG_EMU1), (IEN | PTD | DIS | M0));	/* JTAG_EMU1 */
-	/* HSUSB1_TLL_STP */
-	MUX_VAL(CP(ETK_CLK_ES2), (IDIS | PTU | EN | M0));
-	/* HSUSB1_TLL_CLK */
-	MUX_VAL(CP(ETK_CTL_ES2), (IDIS | PTD | DIS | M0));
-	/* HSUSB1_TLL_DATA0 */
-	MUX_VAL(CP(ETK_D0_ES2), (IEN | PTD | DIS | M1));
-	/* MCSPI3_CS0 */
-	MUX_VAL(CP(ETK_D1_ES2), (IEN | PTD | DIS | M1));
-	/* HSUSB1_TLL_DATA2 */
-	MUX_VAL(CP(ETK_D2_ES2), (IEN | PTD | EN | M1));
-	/* HSUSB1_TLL_DATA7 */
-	MUX_VAL(CP(ETK_D3_ES2), (IEN | PTD | DIS | M1));
-	/* HSUSB1_TLL_DATA4 */
-	MUX_VAL(CP(ETK_D4_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB1_TLL_DATA5 */
-	MUX_VAL(CP(ETK_D5_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB1_TLL_DATA6 */
-	MUX_VAL(CP(ETK_D6_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB1_TLL_DATA3 */
-	MUX_VAL(CP(ETK_D7_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB1_TLL_DIR */
-	MUX_VAL(CP(ETK_D8_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB1_TLL_NXT */
-	MUX_VAL(CP(ETK_D9_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB2_TLL_CLK */
-	MUX_VAL(CP(ETK_D10_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB2_TLL_STP */
-	MUX_VAL(CP(ETK_D11_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB2_TLL_DIR */
-	MUX_VAL(CP(ETK_D12_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB2_TLL_NXT */
-	MUX_VAL(CP(ETK_D13_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB2_TLL_DATA0 */
-	MUX_VAL(CP(ETK_D14_ES2), (IEN | PTD | DIS | M0));
-	/* HSUSB2_TLL_DATA1 */
-	MUX_VAL(CP(ETK_D15_ES2), (IEN | PTD | DIS | M0));
-
-	/* DIE TO DIE */
-	MUX_VAL(CP(D2D_MCAD0), (IEN | PTD | EN | M0));	/* D2D_MCAD0 */
-	MUX_VAL(CP(D2D_MCAD1), (IEN | PTD | EN | M0));	/* D2D_MCAD1 */
-	MUX_VAL(CP(D2D_MCAD2), (IEN | PTD | EN | M0));	/* D2D_MCAD2 */
-	MUX_VAL(CP(D2D_MCAD3), (IEN | PTD | EN | M0));	/* D2D_MCAD3 */
-	MUX_VAL(CP(D2D_MCAD4), (IEN | PTD | EN | M0));	/* D2D_MCAD4 */
-	MUX_VAL(CP(D2D_MCAD5), (IEN | PTD | EN | M0));	/* D2D_MCAD5 */
-	MUX_VAL(CP(D2D_MCAD6), (IEN | PTD | EN | M0));	/* D2D_MCAD6 */
-	MUX_VAL(CP(D2D_MCAD7), (IEN | PTD | EN | M0));	/* D2D_MCAD7 */
-	MUX_VAL(CP(D2D_MCAD8), (IEN | PTD | EN | M0));	/* D2D_MCAD8 */
-	MUX_VAL(CP(D2D_MCAD9), (IEN | PTD | EN | M0));	/* D2D_MCAD9 */
-	MUX_VAL(CP(D2D_MCAD10), (IEN | PTD | EN | M0));	/* D2D_MCAD10 */
-	MUX_VAL(CP(D2D_MCAD11), (IEN | PTD | EN | M0));	/* D2D_MCAD11 */
-	MUX_VAL(CP(D2D_MCAD12), (IEN | PTD | EN | M0));	/* D2D_MCAD12 */
-	MUX_VAL(CP(D2D_MCAD13), (IEN | PTD | EN | M0));	/* D2D_MCAD13 */
-	MUX_VAL(CP(D2D_MCAD14), (IEN | PTD | EN | M0));	/* D2D_MCAD14 */
-	MUX_VAL(CP(D2D_MCAD15), (IEN | PTD | EN | M0));	/* D2D_MCAD15 */
-	MUX_VAL(CP(D2D_MCAD16), (IEN | PTD | EN | M0));	/* D2D_MCAD16 */
-	MUX_VAL(CP(D2D_MCAD17), (IEN | PTD | EN | M0));	/* D2D_MCAD17 */
-	MUX_VAL(CP(D2D_MCAD18), (IEN | PTD | EN | M0));	/* D2D_MCAD18 */
-	MUX_VAL(CP(D2D_MCAD19), (IEN | PTD | EN | M0));	/* D2D_MCAD19 */
-	MUX_VAL(CP(D2D_MCAD20), (IEN | PTD | EN | M0));	/* D2D_MCAD20 */
-	MUX_VAL(CP(D2D_MCAD21), (IEN | PTD | EN | M0));	/* D2D_MCAD21 */
-	MUX_VAL(CP(D2D_MCAD22), (IEN | PTD | EN | M0));	/* D2D_MCAD22 */
-	MUX_VAL(CP(D2D_MCAD23), (IEN | PTD | EN | M0));	/* D2D_MCAD23 */
-	MUX_VAL(CP(D2D_MCAD24), (IEN | PTD | EN | M0));	/* D2D_MCAD24 */
-	MUX_VAL(CP(D2D_MCAD25), (IEN | PTD | EN | M0));	/* D2D_MCAD25 */
-	MUX_VAL(CP(D2D_MCAD26), (IEN | PTD | EN | M0));	/* D2D_MCAD26 */
-	MUX_VAL(CP(D2D_MCAD27), (IEN | PTD | EN | M0));	/* D2D_MCAD27 */
-	MUX_VAL(CP(D2D_MCAD28), (IEN | PTD | EN | M0));	/* D2D_MCAD28 */
-	MUX_VAL(CP(D2D_MCAD29), (IEN | PTD | EN | M0));	/* D2D_MCAD29 */
-	MUX_VAL(CP(D2D_MCAD30), (IEN | PTD | EN | M0));	/* D2D_MCAD30 */
-	MUX_VAL(CP(D2D_MCAD31), (IEN | PTD | EN | M0));	/* D2D_MCAD31 */
-	MUX_VAL(CP(D2D_MCAD32), (IEN | PTD | EN | M0));	/* D2D_MCAD32 */
-	MUX_VAL(CP(D2D_MCAD33), (IEN | PTD | EN | M0));	/* D2D_MCAD33 */
-	MUX_VAL(CP(D2D_MCAD34), (IEN | PTD | EN | M0));	/* D2D_MCAD34 */
-	MUX_VAL(CP(D2D_MCAD35), (IEN | PTD | EN | M0));	/* D2D_MCAD35 */
-	MUX_VAL(CP(D2D_MCAD36), (IEN | PTD | EN | M0));	/* D2D_MCAD36 */
-	/* D2D_CLK26MI  */
-	MUX_VAL(CP(D2D_CLK26MI), (IEN | PTD | DIS | M0));
-	/* D2D_NRESPWRON */
-	MUX_VAL(CP(D2D_NRESPWRON), (IEN | PTD | EN | M0));
-	/* D2D_NRESWARM */
-	MUX_VAL(CP(D2D_NRESWARM), (IEN | PTU | EN | M0));
-	/* D2D_ARM9NIRQ */
-	MUX_VAL(CP(D2D_ARM9NIRQ), (IEN | PTD | DIS | M0));
-	/* D2D_UMA2P6FIQ */
-	MUX_VAL(CP(D2D_UMA2P6FIQ), (IEN | PTD | DIS | M0));
-	/* D2D_SPINT */
-	MUX_VAL(CP(D2D_SPINT), (IEN | PTD | EN | M0));
-	/* D2D_FRINT */
-	MUX_VAL(CP(D2D_FRINT), (IEN | PTD | EN | M0));
-	/* D2D_DMAREQ0  */
-	MUX_VAL(CP(D2D_DMAREQ0), (IEN | PTD | DIS | M0));
-	/* D2D_DMAREQ1  */
-	MUX_VAL(CP(D2D_DMAREQ1), (IEN | PTD | DIS | M0));
-	/* D2D_DMAREQ2  */
-	MUX_VAL(CP(D2D_DMAREQ2), (IEN | PTD | DIS | M0));
-	/* D2D_DMAREQ3  */
-	MUX_VAL(CP(D2D_DMAREQ3), (IEN | PTD | DIS | M0));
-	/* D2D_N3GTRST  */
-	MUX_VAL(CP(D2D_N3GTRST), (IEN | PTD | DIS | M0));
-	/* D2D_N3GTDI */
-	MUX_VAL(CP(D2D_N3GTDI), (IEN | PTD | DIS | M0));
-	/* D2D_N3GTDO */
-	MUX_VAL(CP(D2D_N3GTDO), (IEN | PTD | DIS | M0));
-	/* D2D_N3GTMS */
-	MUX_VAL(CP(D2D_N3GTMS), (IEN | PTD | DIS | M0));
-	/* D2D_N3GTCK */
-	MUX_VAL(CP(D2D_N3GTCK), (IEN | PTD | DIS | M0));
-	/* D2D_N3GRTCK  */
-	MUX_VAL(CP(D2D_N3GRTCK), (IEN | PTD | DIS | M0));
-	/* D2D_MSTDBY */
-	MUX_VAL(CP(D2D_MSTDBY), (IEN | PTU | EN | M0));
-	/* D2D_SWAKEUP */
-	MUX_VAL(CP(D2D_SWAKEUP), (IEN | PTD | EN | M0));
-	/* D2D_IDLEREQ */
-	MUX_VAL(CP(D2D_IDLEREQ), (IEN | PTD | DIS | M0));
-	/* D2D_IDLEACK */
-	MUX_VAL(CP(D2D_IDLEACK), (IEN | PTU | EN | M0));
-	/* D2D_MWRITE */
-	MUX_VAL(CP(D2D_MWRITE), (IEN | PTD | DIS | M0));
-	/* D2D_SWRITE */
-	MUX_VAL(CP(D2D_SWRITE), (IEN | PTD | DIS | M0));
-	/* D2D_MREAD */
-	MUX_VAL(CP(D2D_MREAD), (IEN | PTD | DIS | M0));
-	/* D2D_SREAD */
-	MUX_VAL(CP(D2D_SREAD), (IEN | PTD | DIS | M0));
-	/* D2D_MBUSFLAG */
-	MUX_VAL(CP(D2D_MBUSFLAG), (IEN | PTD | DIS | M0));
-	/* D2D_SBUSFLAG */
-	MUX_VAL(CP(D2D_SBUSFLAG), (IEN | PTD | DIS | M0));
-	/* SDRC_CKE0 */
-	MUX_VAL(CP(SDRC_CKE0), (IDIS | PTU | EN | M0));
-	/* SDRC_CKE1 NOT USED */
-	MUX_VAL(CP(SDRC_CKE1), (IDIS | PTD | DIS | M7));
-#endif				/* CONFIG_MACH_OMAP_ADVANCED_MUX */
-}
-
-/**
- * @brief The basic entry point for board initialization.
- *
- * This is called as part of machine init (after arch init).
- * This is again called with stack in SRAM, so not too many
- * constructs possible here.
- *
- * @return void
- */
-static int sdp343x_board_init(void)
-{
-	int in_sdram = omap3_running_in_sdram();
-
-	if (!in_sdram)
-		omap3_core_init();
-
-	mux_config();
-	if (!in_sdram)
-		sdrc_init();
-
-	return 0;
-}
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap3_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	sdp343x_board_init();
-
-	barebox_arm_entry(0x80000000, SZ_128M, NULL);
-}
diff --git a/arch/arm/boards/omap3evm/Makefile b/arch/arm/boards/omap3evm/Makefile
deleted file mode 100644
index da63d2625f..0000000000
--- a/arch/arm/boards/omap3evm/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/omap3evm/board.c b/arch/arm/boards/omap3evm/board.c
deleted file mode 100644
index 37dbc0044e..0000000000
--- a/arch/arm/boards/omap3evm/board.c
+++ /dev/null
@@ -1,83 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2009 Sanjeev Premi <premi@ti.com>, Texas Instruments Incorporated (http://www.ti.com/)
-
-/**
- * @file
- * @brief Board Initialization routines for OMAP3EVM.
- *
- * This board is based on OMAP3530.
- * More on OMAP3530 (including documentation can be found here):
- * http://focus.ti.com/docs/prod/folders/print/omap3530.html
- *
- * This file provides initialization in two stages:
- * @li Boot time initialization - just get SDRAM working.
- * This is run from SRAM - so no case constructs and global vars can be used.
- * @li Run time initialization - this is for the rest of the initializations
- * such as flash, uart etc.
- *
- * Boot time initialization includes:
- * @li SDRAM initialization.
- * @li Pin Muxing relevant for the EVM.
- *
- * Run time initialization includes
- * @li serial @ref serial_ns16550.c driver device definition
- *
- * Originally from arch/arm/boards/omap/board-beagle.c
- */
-
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <asm/armlinux.h>
-#include <mach/omap/omap3-silicon.h>
-#include <mach/omap/omap3-mux.h>
-#include <mach/omap/gpmc.h>
-#include <errno.h>
-#include <asm/mach-types.h>
-#include <mach/omap/omap3-devices.h>
-
-/**
- * @brief Initialize the serial port to be used as console.
- *
- * @return result of device registration
- */
-static int omap3evm_init_console(void)
-{
-	barebox_set_model("Texas Instruments omap3evm");
-	barebox_set_hostname("omap3evm");
-
-	if (IS_ENABLED(CONFIG_OMAP_UART1))
-		omap3_add_uart1();
-	if (IS_ENABLED(CONFIG_OMAP_UART3))
-		omap3_add_uart3();
-
-	return 0;
-}
-console_initcall(omap3evm_init_console);
-
-static int omap3evm_mem_init(void)
-{
-	omap_add_ram0(SZ_128M);
-
-	return 0;
-}
-mem_initcall(omap3evm_mem_init);
-
-static int omap3evm_init_devices(void)
-{
-#ifdef CONFIG_OMAP_GPMC
-	/*
-	 * WP is made high and WAIT1 active Low
-	 */
-	gpmc_generic_init(0x10);
-#endif
-	omap3_add_mmc1(NULL);
-
-        armlinux_set_architecture(MACH_TYPE_OMAP3EVM);
-
-	return 0;
-}
-device_initcall(omap3evm_init_devices);
diff --git a/arch/arm/boards/omap3evm/lowlevel.c b/arch/arm/boards/omap3evm/lowlevel.c
deleted file mode 100644
index 5797acc14e..0000000000
--- a/arch/arm/boards/omap3evm/lowlevel.c
+++ /dev/null
@@ -1,175 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <io.h>
-#include <init.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/omap3-mux.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/control.h>
-#include <mach/omap/syslib.h>
-#include <mach/omap/omap3-silicon.h>
-#include <mach/omap/omap3-generic.h>
-#include <mach/omap/sys_info.h>
-
-
-/*
- * Boot-time initialization(s)
- */
-
-/**
- * @brief Initialize the SDRC module
- *
- * @return void
- */
-static void sdrc_init(void)
-{
-	/* SDRAM software reset */
-	/* No idle ack and RESET enable */
-	writel(0x1A, OMAP3_SDRC_REG(SYSCONFIG));
-	sdelay(100);
-	/* No idle ack and RESET disable */
-	writel(0x18, OMAP3_SDRC_REG(SYSCONFIG));
-
-	/* SDRC Sharing register */
-	/* 32-bit SDRAM on data lane [31:0] - CS0 */
-	/* pin tri-stated = 1 */
-	writel(0x00000100, OMAP3_SDRC_REG(SHARING));
-
-	/* ----- SDRC Registers Configuration --------- */
-	/* SDRC_MCFG0 register */
-	writel(0x02584099, OMAP3_SDRC_REG(MCFG_0));
-
-	/* SDRC_RFR_CTRL0 register */
-	writel(0x54601, OMAP3_SDRC_REG(RFR_CTRL_0));
-
-	/* SDRC_ACTIM_CTRLA0 register */
-	writel(0xA29DB4C6, OMAP3_SDRC_REG(ACTIM_CTRLA_0));
-
-	/* SDRC_ACTIM_CTRLB0 register */
-	writel(0x12214, OMAP3_SDRC_REG(ACTIM_CTRLB_0));
-
-	/* Disble Power Down of CKE due to 1 CKE on combo part */
-	writel(0x00000081, OMAP3_SDRC_REG(POWER));
-
-	/* SDRC_MANUAL command register */
-	/* NOP command */
-	writel(0x00000000, OMAP3_SDRC_REG(MANUAL_0));
-	/* Precharge command */
-	writel(0x00000001, OMAP3_SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
-	/* Auto-refresh command */
-	writel(0x00000002, OMAP3_SDRC_REG(MANUAL_0));
-
-	/* SDRC MR0 register Burst length=4 */
-	writel(0x00000032, OMAP3_SDRC_REG(MR_0));
-
-	/* SDRC DLLA control register */
-	writel(0x0000000A, OMAP3_SDRC_REG(DLLA_CTRL));
-
-	return;
-}
-
-/**
- * @brief Do the necessary pin muxing required for OMAP3EVM. Some pins in OMAP3
- * do not have alternate modes. We don't program these pins.
- *
- * See @ref MUX_VAL for description of the muxing mode.
- *
- * @return void
- */
-static void mux_config(void)
-{
-	/*
-	 * SDRC
-	 * - SDRC_D0-SDRC_D31: Default MUX mode is mode0.
-	 */
-
-	/*
-	 * GPMC
-	 * - GPMC_D0-GPMC_D7: Default MUX mode is mode0.
-	 * - GPMC_NADV_ALE: Default MUX mode is mode0.
-	 * - GPMC_NOE: Default MUX mode is mode0.
-	 * - GPMC_NWE: Default MUX mode is mode0.
-	 * - GPMC_WAIT0: Default MUX mode is mode0.
-	 */
-	MUX_VAL(CP(GPMC_A1),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A2),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A3),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A4),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A5),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A6),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A7),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A8),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A9),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_A10),		(IDIS | PTD | DIS | M0));
-
-	MUX_VAL(CP(GPMC_D8),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D9),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D10),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D11),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D12),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D13),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D14),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_D15),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_CLK),		(IDIS | PTD | DIS | M0));
-
-	MUX_VAL(CP(GPMC_NBE0_CLE),	(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NBE1),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NWP),		(IEN  | PTD | DIS | M0));
-
-	MUX_VAL(CP(GPMC_WAIT1),		(IEN  | PTU | EN  | M0));
-
-	/*
-	 * Serial Interface
-	 */
-#if defined(CONFIG_OMAP_UART1)
-	MUX_VAL(CP(UART1_TX),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(UART1_RTS),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(UART1_CTS),		(IEN  | PTU | DIS | M0));
-	MUX_VAL(CP(UART1_RX),		(IEN  | PTD | DIS | M0));
-#elif defined(CONFIG_OMAP_UART3)
-	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
-	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_TX_IRTX),	(IDIS | PTD | DIS | M0));
-#endif
-}
-
-/**
- * @brief The basic entry point for board initialization.
- *
- * This is called as part of machine init (after arch init).
- * This is again called with stack in SRAM, so not too many
- * constructs possible here.
- *
- * @return void
- */
-static int omap3_evm_board_init(void)
-{
-	int in_sdram = omap3_running_in_sdram();
-
-	omap3_core_init();
-
-	mux_config();
-
-	/* Dont reconfigure SDRAM while running in SDRAM! */
-	if (!in_sdram)
-		sdrc_init();
-
-	return 0;
-}
-
-void __naked __bare_init barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap3_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	omap3_evm_board_init();
-
-	barebox_arm_entry(0x80000000, SZ_128M, NULL);
-}
diff --git a/arch/arm/boards/panda/Makefile b/arch/arm/boards/panda/Makefile
deleted file mode 100644
index 3bd91350ce..0000000000
--- a/arch/arm/boards/panda/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o mux.o
diff --git a/arch/arm/boards/panda/board.c b/arch/arm/boards/panda/board.c
deleted file mode 100644
index 55836d2331..0000000000
--- a/arch/arm/boards/panda/board.c
+++ /dev/null
@@ -1,165 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <io.h>
-#include <gpio.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-devices.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/sys_info.h>
-#include <mach/omap/syslib.h>
-#include <mach/omap/control.h>
-#include <linux/usb/ehci.h>
-#include <linux/err.h>
-#include <linux/sizes.h>
-#include <asm/mmu.h>
-#include <envfs.h>
-#include <i2c/i2c.h>
-#include <led.h>
-
-static int board_revision;
-
-#define GPIO_HUB_POWER 1
-#define GPIO_HUB_NRESET_39 39
-#define GPIO_HUB_NRESET_62 62
-#define GPIO_BOARD_ID0 182
-#define GPIO_BOARD_ID1 101
-#define GPIO_BOARD_ID2 171
-
-static int panda_console_init(void)
-{
-	barebox_set_model("Texas Instruments panda");
-	barebox_set_hostname("panda");
-
-	omap44xx_add_uart3();
-
-	return 0;
-}
-console_initcall(panda_console_init);
-
-static int panda_mem_init(void)
-{
-	omap_add_ram0(SZ_1G);
-
-	return 0;
-}
-mem_initcall(panda_mem_init);
-
-#ifdef CONFIG_USB_EHCI
-static struct ehci_platform_data ehci_pdata = {
-	.flags = 0,
-};
-
-static void panda_ehci_init(void)
-{
-	u32 val;
-	int hub_nreset;
-
-	if (board_revision)
-		hub_nreset = GPIO_HUB_NRESET_62;
-	else
-		hub_nreset = GPIO_HUB_NRESET_39;
-
-	/* disable the power to the usb hub prior to init */
-	gpio_direction_output(GPIO_HUB_POWER, 0);
-	gpio_set_value(GPIO_HUB_POWER, 0);
-
-	/* reset phy+hub */
-	gpio_direction_output(hub_nreset, 0);
-	gpio_set_value(hub_nreset, 0);
-	gpio_set_value(hub_nreset, 1);
-	val = readl(0x4a009358);
-	val |= (1 << 24);
-	val |= 0x2;
-	writel(val, 0x4a009358);
-	writel(0x7, 0x4a008180);
-	mdelay(10);
-
-	writel(0x00000014, 0x4a064010);
-	writel(0x8000001c, 0x4a064040);
-
-	/* enable power to hub */
-	gpio_set_value(GPIO_HUB_POWER, 1);
-
-	omap44xx_add_ehci(&ehci_pdata);
-}
-#else
-static void panda_ehci_init(void)
-{}
-#endif
-
-static void __init panda_boardrev_init(void)
-{
-	board_revision = gpio_get_value(GPIO_BOARD_ID0);
-	board_revision |= (gpio_get_value(GPIO_BOARD_ID1)<<1);
-	board_revision |= (gpio_get_value(GPIO_BOARD_ID2)<<2);
-
-	pr_info("PandaBoard Revision: %03d\n", board_revision);
-}
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("twl6030", 0x48),
-	},
-};
-
-struct gpio_led panda_leds[] = {
-	{
-		.gpio = 7,
-		.led = {
-			.name = "heartbeat",
-		},
-	},
-};
-
-static void panda_led_init(void)
-{
-	led_gpio_register(&panda_leds[0]);
-	led_set_trigger(LED_TRIGGER_HEARTBEAT, &panda_leds[0].led);
-}
-
-static int panda_devices_init(void)
-{
-	panda_boardrev_init();
-
-	if (gpio_get_value(182)) {
-		/* enable software ioreq */
-		sr32(OMAP44XX_SCRM_AUXCLK3, 8, 1, 0x1);
-		/* set for sys_clk (38.4MHz) */
-		sr32(OMAP44XX_SCRM_AUXCLK3, 1, 2, 0x0);
-		/* set divisor to 2 */
-		sr32(OMAP44XX_SCRM_AUXCLK3, 16, 4, 0x1);
-		/* set the clock source to active */
-		sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);
-		/* enable clocks */
-		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
-	} else {
-		/* enable software ioreq */
-		sr32(OMAP44XX_SCRM_AUXCLK1, 8, 1, 0x1);
-		/* set for PER_DPLL */
-		sr32(OMAP44XX_SCRM_AUXCLK1, 1, 2, 0x2);
-		/* set divisor to 16 */
-		sr32(OMAP44XX_SCRM_AUXCLK1, 16, 4, 0xf);
-		/* set the clock source to active */
-		sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);
-		/* enable clocks */
-		sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);
-	}
-
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	omap44xx_add_i2c1(NULL);
-	omap44xx_add_mmc1(NULL);
-
-	panda_ehci_init();
-
-	panda_led_init();
-	armlinux_set_architecture(MACH_TYPE_OMAP4_PANDA);
-
-	return 0;
-}
-device_initcall(panda_devices_init);
diff --git a/arch/arm/boards/panda/env/boot/mmc b/arch/arm/boards/panda/env/boot/mmc
deleted file mode 100644
index db638f8cf8..0000000000
--- a/arch/arm/boards/panda/env/boot/mmc
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/boot/zImage"
-#global.bootm.oftree="/boot/oftree"
-global.linux.bootargs.dyn.root="root=mmcblk0p2 rootfstype=ext3 rootwait"
diff --git a/arch/arm/boards/panda/env/network/eth0-discover b/arch/arm/boards/panda/env/network/eth0-discover
deleted file mode 100644
index 77552d30b3..0000000000
--- a/arch/arm/boards/panda/env/network/eth0-discover
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-# Panda has a network adapter on USB
-
-usb
diff --git a/arch/arm/boards/panda/lowlevel.c b/arch/arm/boards/panda/lowlevel.c
deleted file mode 100644
index f535e7f9a4..0000000000
--- a/arch/arm/boards/panda/lowlevel.c
+++ /dev/null
@@ -1,81 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2004-2009 Richard Woodruff <r-woodruff2@ti.com>, Texas Instruments (http://www.ti.com/)
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-generic.h>
-#include <mach/omap/omap4-clock.h>
-#include <mach/omap/syslib.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-
-#include "mux.h"
-
-#define TPS62361_VSEL0_GPIO    7
-
-static const struct ddr_regs ddr_regs_400_mhz_2cs = {
-	/* tRRD changed from 10ns to 12.5ns because of the tFAW requirement*/
-	.tim1		= 0x10eb0662,
-	.tim2		= 0x20370dd2,
-	.tim3		= 0x00b1c33f,
-	.phy_ctrl_1	= 0x849FF408,
-	.ref_ctrl	= 0x00000618,
-	.config_init	= 0x80000eb9,
-	.config_final	= 0x80001ab9,
-	.zq_config	= 0xD00b3215,
-	.mr1		= 0x83,
-	.mr2		= 0x4
-};
-
-static void noinline panda_init_lowlevel(void)
-{
-	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_38M4_DDR400;
-	struct dpll_param mpu = OMAP4_MPU_DPLL_PARAM_38M4_MPU600;
-	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_38M4;
-	struct dpll_param per = OMAP4_PER_DPLL_PARAM_38M4;
-	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_38M4;
-	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_38M4;
-	unsigned int rev = omap4_revision();
-
-	writel(CM_SYS_CLKSEL_38M4, CM_SYS_CLKSEL);
-
-	/* Configure all DPLL's at 100% OPP */
-	omap4_configure_mpu_dpll(&mpu);
-	omap4_configure_iva_dpll(&iva);
-	omap4_configure_per_dpll(&per);
-	omap4_configure_abe_dpll(&abe);
-	omap4_configure_usb_dpll(&usb);
-
-	/* Enable all clocks */
-	omap4_enable_all_clocks();
-
-	panda_set_muxconf_regs();
-
-	omap4_ddr_init(&ddr_regs_400_mhz_2cs, &core);
-
-	if (rev < OMAP4460_ES1_0)
-		omap4430_scale_vcores();
-	else
-		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1210);
-}
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap4_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	if (get_pc() > 0x80000000)
-		goto out;
-
-	arm_setup_stack(0x4030d000);
-
-	panda_init_lowlevel();
-out:
-	barebox_arm_entry(0x80000000, SZ_1G, NULL);
-}
diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
deleted file mode 100644
index b5e1e79c8f..0000000000
--- a/arch/arm/boards/panda/mux.c
+++ /dev/null
@@ -1,260 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-clock.h>
-
-#include "mux.h"
-
-static const struct pad_conf_entry core_padconf_array[] = {
-	{ GPMC_AD0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat0 */ },
-	{ GPMC_AD1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat1 */ },
-	{ GPMC_AD2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat2 */ },
-	{ GPMC_AD3, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat3 */ },
-	{ GPMC_AD4, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat4 */ },
-	{ GPMC_AD5, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat5 */ },
-	{ GPMC_AD6, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat6 */ },
-	{ GPMC_AD7, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_dat7 */ },
-	{ GPMC_AD8, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M3  /* gpio_32 */ },
-	{ GPMC_AD9, PTU | IEN | M3  /* gpio_33 */ },
-	{ GPMC_AD10, PTU | IEN | M3  /* gpio_34 */ },
-	{ GPMC_AD11, PTU | IEN | M3  /* gpio_35 */ },
-	{ GPMC_AD12, PTU | IEN | M3  /* gpio_36 */ },
-	{ GPMC_AD13, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_37 */ },
-	{ GPMC_AD14, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_38 */ },
-	{ GPMC_AD15, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_39 */ },
-	{ GPMC_A16, M3  /* gpio_40 */ },
-	{ GPMC_A17, PTD | M3  /* gpio_41 */ },
-	{ GPMC_A18, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row6 */ },
-	{ GPMC_A19, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row7 */ },
-	{ GPMC_A20, IEN | M3  /* gpio_44 */ },
-	{ GPMC_A21, M3  /* gpio_45 */ },
-	{ GPMC_A22, M3  /* gpio_46 */ },
-	{ GPMC_A23, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col7 */ },
-	{ GPMC_A24, PTD | M3  /* gpio_48 */ },
-	{ GPMC_A25, PTD | M3  /* gpio_49 */ },
-	{ GPMC_NCS0, M3  /* gpio_50 */ },
-	{ GPMC_NCS1, IEN | M3  /* gpio_51 */ },
-	{ GPMC_NCS2, IEN | M3  /* gpio_52 */ },
-	{ GPMC_NCS3, IEN | M3  /* gpio_53 */ },
-	{ GPMC_NWP, M3  /* gpio_54 */ },
-	{ GPMC_CLK, PTD | M3  /* gpio_55 */ },
-	{ GPMC_NADV_ALE, M3  /* gpio_56 */ },
-	{ GPMC_NOE, PTU | IEN | OFF_EN | OFF_OUT_PTD | M1  /* sdmmc2_clk */ },
-	{ GPMC_NWE, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* sdmmc2_cmd */ },
-	{ GPMC_NBE0_CLE, M3  /* gpio_59 */ },
-	{ GPMC_NBE1, PTD | M3  /* gpio_60 */ },
-	{ GPMC_WAIT0, PTU | IEN | M3  /* gpio_61 */ },
-	{ GPMC_WAIT1, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3 /* gpio_62 */ },
-	{ C2C_DATA11, PTD | M3  /* gpio_100 */ },
-	{ C2C_DATA12, PTD | IEN | M3  /* gpio_101 */ },
-	{ C2C_DATA13, PTD | M3  /* gpio_102 */ },
-	{ C2C_DATA14, M1  /* dsi2_te0 */ },
-	{ C2C_DATA15, PTD | M3  /* gpio_104 */ },
-	{ HDMI_HPD, M0  /* hdmi_hpd */ },
-	{ HDMI_CEC, M0  /* hdmi_cec */ },
-	{ HDMI_DDC_SCL, PTU | M0  /* hdmi_ddc_scl */ },
-	{ HDMI_DDC_SDA, PTU | IEN | M0  /* hdmi_ddc_sda */ },
-	{ CSI21_DX0, IEN | M0  /* csi21_dx0 */ },
-	{ CSI21_DY0, IEN | M0  /* csi21_dy0 */ },
-	{ CSI21_DX1, IEN | M0  /* csi21_dx1 */ },
-	{ CSI21_DY1, IEN | M0  /* csi21_dy1 */ },
-	{ CSI21_DX2, IEN | M0  /* csi21_dx2 */ },
-	{ CSI21_DY2, IEN | M0  /* csi21_dy2 */ },
-	{ CSI21_DX3, PTD | M7  /* csi21_dx3 */ },
-	{ CSI21_DY3, PTD | M7  /* csi21_dy3 */ },
-	{ CSI21_DX4, PTD | OFF_EN | OFF_PD | OFF_IN | M7  /* csi21_dx4 */ },
-	{ CSI21_DY4, PTD | OFF_EN | OFF_PD | OFF_IN | M7  /* csi21_dy4 */ },
-	{ CSI22_DX0, IEN | M0  /* csi22_dx0 */ },
-	{ CSI22_DY0, IEN | M0  /* csi22_dy0 */ },
-	{ CSI22_DX1, IEN | M0  /* csi22_dx1 */ },
-	{ CSI22_DY1, IEN | M0  /* csi22_dy1 */ },
-	{ CAM_SHUTTER, OFF_EN | OFF_PD | OFF_OUT_PTD | M0  /* cam_shutter */ },
-	{ CAM_STROBE, OFF_EN | OFF_PD | OFF_OUT_PTD | M0  /* cam_strobe */ },
-	{ CAM_GLOBALRESET, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M3  /* gpio_83 */ },
-	{ USBB1_ULPITLL_CLK, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_clk */ },
-	{ USBB1_ULPITLL_STP, OFF_EN | OFF_OUT_PTD | M4  /* usbb1_ulpiphy_stp */ },
-	{ USBB1_ULPITLL_DIR, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dir */ },
-	{ USBB1_ULPITLL_NXT, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_nxt */ },
-	{ USBB1_ULPITLL_DAT0, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat0 */ },
-	{ USBB1_ULPITLL_DAT1, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat1 */ },
-	{ USBB1_ULPITLL_DAT2, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat2 */ },
-	{ USBB1_ULPITLL_DAT3, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat3 */ },
-	{ USBB1_ULPITLL_DAT4, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat4 */ },
-	{ USBB1_ULPITLL_DAT5, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat5 */ },
-	{ USBB1_ULPITLL_DAT6, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat6 */ },
-	{ USBB1_ULPITLL_DAT7, IEN | OFF_EN | OFF_PD | OFF_IN | M4  /* usbb1_ulpiphy_dat7 */ },
-	{ USBB1_HSIC_DATA, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usbb1_hsic_data */ },
-	{ USBB1_HSIC_STROBE, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usbb1_hsic_strobe */ },
-	{ USBC1_ICUSB_DP, IEN | M0  /* usbc1_icusb_dp */ },
-	{ USBC1_ICUSB_DM, IEN | M0  /* usbc1_icusb_dm */ },
-	{ SDMMC1_CLK, PTU | OFF_EN | OFF_OUT_PTD | M0  /* sdmmc1_clk */ },
-	{ SDMMC1_CMD, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_cmd */ },
-	{ SDMMC1_DAT0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat0 */ },
-	{ SDMMC1_DAT1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat1 */ },
-	{ SDMMC1_DAT2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat2 */ },
-	{ SDMMC1_DAT3, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat3 */ },
-	{ SDMMC1_DAT4, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat4 */ },
-	{ SDMMC1_DAT5, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat5 */ },
-	{ SDMMC1_DAT6, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat6 */ },
-	{ SDMMC1_DAT7, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc1_dat7 */ },
-	{ ABE_MCBSP2_CLKX, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_mcbsp2_clkx */ },
-	{ ABE_MCBSP2_DR, IEN | OFF_EN | OFF_OUT_PTD | M0  /* abe_mcbsp2_dr */ },
-	{ ABE_MCBSP2_DX, OFF_EN | OFF_OUT_PTD | M0  /* abe_mcbsp2_dx */ },
-	{ ABE_MCBSP2_FSX, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_mcbsp2_fsx */ },
-	{ ABE_MCBSP1_CLKX, IEN | M1  /* abe_slimbus1_clock */ },
-	{ ABE_MCBSP1_DR, IEN | M1  /* abe_slimbus1_data */ },
-	{ ABE_MCBSP1_DX, OFF_EN | OFF_OUT_PTD | M0  /* abe_mcbsp1_dx */ },
-	{ ABE_MCBSP1_FSX, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_mcbsp1_fsx */ },
-	{ ABE_PDM_UL_DATA, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_ul_data */ },
-	{ ABE_PDM_DL_DATA, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_dl_data */ },
-	{ ABE_PDM_FRAME, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_frame */ },
-	{ ABE_PDM_LB_CLK, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_pdm_lb_clk */ },
-	{ ABE_CLKS, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* abe_clks */ },
-	{ ABE_DMIC_CLK1, M0  /* abe_dmic_clk1 */ },
-	{ ABE_DMIC_DIN1, IEN | M0  /* abe_dmic_din1 */ },
-	{ ABE_DMIC_DIN2, IEN | M0  /* abe_dmic_din2 */ },
-	{ ABE_DMIC_DIN3, IEN | M0  /* abe_dmic_din3 */ },
-	{ UART2_CTS, PTU | IEN | M0  /* uart2_cts */ },
-	{ UART2_RTS, M0  /* uart2_rts */ },
-	{ UART2_RX, PTU | IEN | M0  /* uart2_rx */ },
-	{ UART2_TX, M0  /* uart2_tx */ },
-	{ HDQ_SIO, M3  /* gpio_127 */ },
-	{ I2C1_SCL, PTU | IEN | M0  /* i2c1_scl */ },
-	{ I2C1_SDA, PTU | IEN | M0  /* i2c1_sda */ },
-	{ I2C2_SCL, PTU | IEN | M0  /* i2c2_scl */ },
-	{ I2C2_SDA, PTU | IEN | M0  /* i2c2_sda */ },
-	{ I2C3_SCL, PTU | IEN | M0  /* i2c3_scl */ },
-	{ I2C3_SDA, PTU | IEN | M0  /* i2c3_sda */ },
-	{ I2C4_SCL, PTU | IEN | M0  /* i2c4_scl */ },
-	{ I2C4_SDA, PTU | IEN | M0  /* i2c4_sda */ },
-	{ MCSPI1_CLK, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_clk */ },
-	{ MCSPI1_SOMI, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_somi */ },
-	{ MCSPI1_SIMO, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_simo */ },
-	{ MCSPI1_CS0, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi1_cs0 */ },
-	{ MCSPI1_CS1, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M3  /* mcspi1_cs1 */ },
-	{ MCSPI1_CS2, PTU | OFF_EN | OFF_OUT_PTU | M3  /* gpio_139 */ },
-	{ MCSPI1_CS3, PTU | IEN | M3  /* gpio_140 */ },
-	{ UART3_CTS_RCTX, PTU | IEN | M0  /* uart3_tx */ },
-	{ UART3_RTS_SD, M0  /* uart3_rts_sd */ },
-	{ UART3_RX_IRRX, IEN | M0  /* uart3_rx */ },
-	{ UART3_TX_IRTX, M0  /* uart3_tx */ },
-	{ SDMMC5_CLK, PTU | IEN | OFF_EN | OFF_OUT_PTD | M0  /* sdmmc5_clk */ },
-	{ SDMMC5_CMD, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_cmd */ },
-	{ SDMMC5_DAT0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat0 */ },
-	{ SDMMC5_DAT1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat1 */ },
-	{ SDMMC5_DAT2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat2 */ },
-	{ SDMMC5_DAT3, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* sdmmc5_dat3 */ },
-	{ MCSPI4_CLK, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_clk */ },
-	{ MCSPI4_SIMO, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_simo */ },
-	{ MCSPI4_SOMI, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_somi */ },
-	{ MCSPI4_CS0, PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* mcspi4_cs0 */ },
-	{ UART4_RX, IEN | M0  /* uart4_rx */ },
-	{ UART4_TX, M0  /* uart4_tx */ },
-	{ USBB2_ULPITLL_CLK, IEN | M3  /* gpio_157 */ },
-	{ USBB2_ULPITLL_STP, IEN | M5  /* dispc2_data23 */ },
-	{ USBB2_ULPITLL_DIR, IEN | M5  /* dispc2_data22 */ },
-	{ USBB2_ULPITLL_NXT, IEN | M5  /* dispc2_data21 */ },
-	{ USBB2_ULPITLL_DAT0, IEN | M5  /* dispc2_data20 */ },
-	{ USBB2_ULPITLL_DAT1, IEN | M5  /* dispc2_data19 */ },
-	{ USBB2_ULPITLL_DAT2, IEN | M5  /* dispc2_data18 */ },
-	{ USBB2_ULPITLL_DAT3, IEN | M5  /* dispc2_data15 */ },
-	{ USBB2_ULPITLL_DAT4, IEN | M5  /* dispc2_data14 */ },
-	{ USBB2_ULPITLL_DAT5, IEN | M5  /* dispc2_data13 */ },
-	{ USBB2_ULPITLL_DAT6, IEN | M5  /* dispc2_data12 */ },
-	{ USBB2_ULPITLL_DAT7, IEN | M5  /* dispc2_data11 */ },
-	{ USBB2_HSIC_DATA, PTD | OFF_EN | OFF_OUT_PTU | M3  /* gpio_169 */ },
-	{ USBB2_HSIC_STROBE, PTD | OFF_EN | OFF_OUT_PTU | M3  /* gpio_170 */ },
-	{ UNIPRO_TX0, PTD | IEN | M3  /* gpio_171 */ },
-	{ UNIPRO_TY0, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col1 */ },
-	{ UNIPRO_TX1, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col2 */ },
-	{ UNIPRO_TY1, OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_col3 */ },
-	{ UNIPRO_TX2, PTU | IEN | M3  /* gpio_0 */ },
-	{ UNIPRO_TY2, PTU | IEN | M3  /* gpio_1 */ },
-	{ UNIPRO_RX0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row0 */ },
-	{ UNIPRO_RY0, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row1 */ },
-	{ UNIPRO_RX1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row2 */ },
-	{ UNIPRO_RY1, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row3 */ },
-	{ UNIPRO_RX2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row4 */ },
-	{ UNIPRO_RY2, PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M1  /* kpd_row5 */ },
-	{ USBA0_OTG_CE, PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M0  /* usba0_otg_ce */ },
-	{ USBA0_OTG_DP, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usba0_otg_dp */ },
-	{ USBA0_OTG_DM, IEN | OFF_EN | OFF_PD | OFF_IN | M0  /* usba0_otg_dm */ },
-	{ FREF_CLK1_OUT, M0  /* fref_clk1_out */ },
-	{ FREF_CLK2_OUT, PTD | IEN | M3  /* gpio_182 */ },
-	{ SYS_NIRQ1, PTU | IEN | M0  /* sys_nirq1 */ },
-	{ SYS_NIRQ2, PTU | IEN | M0  /* sys_nirq2 */ },
-	{ SYS_BOOT0, PTU | IEN | M3  /* gpio_184 */ },
-	{ SYS_BOOT1, M3  /* gpio_185 */ },
-	{ SYS_BOOT2, PTD | IEN | M3  /* gpio_186 */ },
-	{ SYS_BOOT3, M3  /* gpio_187 */ },
-	{ SYS_BOOT4, M3  /* gpio_188 */ },
-	{ SYS_BOOT5, PTD | IEN | M3  /* gpio_189 */ },
-	{ DPM_EMU0, IEN | M0  /* dpm_emu0 */ },
-	{ DPM_EMU1, IEN | M0  /* dpm_emu1 */ },
-	{ DPM_EMU2, IEN | M0  /* dpm_emu2 */ },
-	{ DPM_EMU3, IEN | M5  /* dispc2_data10 */ },
-	{ DPM_EMU4, IEN | M5  /* dispc2_data9 */ },
-	{ DPM_EMU5, IEN | M5  /* dispc2_data16 */ },
-	{ DPM_EMU6, IEN | M5  /* dispc2_data17 */ },
-	{ DPM_EMU7, IEN | M5  /* dispc2_hsync */ },
-	{ DPM_EMU8, IEN | M5  /* dispc2_pclk */ },
-	{ DPM_EMU9, IEN | M5  /* dispc2_vsync */ },
-	{ DPM_EMU10, IEN | M5  /* dispc2_de */ },
-	{ DPM_EMU11, IEN | M5  /* dispc2_data8 */ },
-	{ DPM_EMU12, IEN | M5  /* dispc2_data7 */ },
-	{ DPM_EMU13, IEN | M5  /* dispc2_data6 */ },
-	{ DPM_EMU14, IEN | M5  /* dispc2_data5 */ },
-	{ DPM_EMU15, IEN | M5  /* dispc2_data4 */ },
-	{ DPM_EMU16, M3  /* gpio_27 */ },
-	{ DPM_EMU17, IEN | M5  /* dispc2_data2 */ },
-	{ DPM_EMU18, IEN | M5  /* dispc2_data1 */ },
-	{ DPM_EMU19, IEN | M5  /* dispc2_data0 */ },
-};
-
-static const struct pad_conf_entry wkup_padconf_array[] = {
-	{ GPIO_WK0, IEN | M0  /* sim_io */ },
-	{ GPIO_WK1, M0  /* sim_clk */ },
-	{ GPIO_WK2, M0  /* sim_reset */ },
-	{ GPIO_WK3, PTU | IEN | M0  /* sim_cd */ },
-	{ GPIO_WK4, M0  /* sim_pwrctrl */ },
-	{ SR_SCL, PTU | IEN | M0  /* sr_scl */ },
-	{ SR_SDA, PTU | IEN | M0  /* sr_sda */ },
-	{ FREF_XTAL_IN, M0  /* # */ },
-	{ FREF_SLICER_IN, M0  /* fref_slicer_in */ },
-	{ FREF_CLK_IOREQ, M0  /* fref_clk_ioreq */ },
-	{ FREF_CLK0_OUT, M2  /* sys_drm_msecure */ },
-	{ FREF_CLK3_REQ, PTU | IEN | M0  /* # */ },
-	{ FREF_CLK3_OUT, M0  /* fref_clk3_out */ },
-	{ FREF_CLK4_REQ, PTU | IEN | M0  /* # */ },
-	{ FREF_CLK4_OUT, M0  /* # */ },
-	{ SYS_32K, IEN | M0  /* sys_32k */ },
-	{ SYS_NRESPWRON,  M0  /* sys_nrespwron */ },
-	{ SYS_NRESWARM, M0  /* sys_nreswarm */ },
-	{ SYS_PWR_REQ, PTU | M0  /* sys_pwr_req */ },
-	{ SYS_PWRON_RESET_OUT, M3  /* gpio_wk29 */ },
-	{ SYS_BOOT6, IEN | M3  /* gpio_wk9 */ },
-	{ SYS_BOOT7, IEN | M3  /* gpio_wk10 */ },
-	{ FREF_CLK3_REQ, M3 /* gpio_wk30 */ },
-	{ FREF_CLK4_REQ, M3 /* gpio_wk7 */ },
-	{ FREF_CLK4_OUT, M3 /* gpio_wk8 */ },
-};
-
-void panda_set_muxconf_regs(void)
-{
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
-			ARRAY_SIZE(core_padconf_array));
-
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
-			ARRAY_SIZE(wkup_padconf_array));
-
-	/* gpio_wk7 is used for controlling TPS on 4460 */
-	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
-		/* Enable GPIO-1 clocks before TPS initialization */
-		omap4_enable_gpio1_wup_clocks();
-	}
-}
diff --git a/arch/arm/boards/panda/mux.h b/arch/arm/boards/panda/mux.h
deleted file mode 100644
index 540d4e5d34..0000000000
--- a/arch/arm/boards/panda/mux.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __BOARD_MUX_H
-#define __BOARD_MUX_H
-
-void panda_set_muxconf_regs(void);
-
-#endif /* __BOARD_MUX_H */
diff --git a/arch/arm/boards/phytec-phycard-omap3/Makefile b/arch/arm/boards/phytec-phycard-omap3/Makefile
deleted file mode 100644
index 16f198b38c..0000000000
--- a/arch/arm/boards/phytec-phycard-omap3/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Juergen Kilb <j.kilb@phytec.de>
-
-obj-y += pca-a-l1.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/phytec-phycard-omap3/env/config b/arch/arm/boards/phytec-phycard-omap3/env/config
deleted file mode 100644
index a3f452b3d1..0000000000
--- a/arch/arm/boards/phytec-phycard-omap3/env/config
+++ /dev/null
@@ -1,77 +0,0 @@
-#!/bin/sh
-
-#user=
-
-# Enter MAC address here if not retrieved automatically
-#eth0.ethaddr=de:ad:be:ef:00:00
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.serverip=a.b.c.d
-#eth0.gateway=a.b.c.d
-
-# can be either 'tftp', 'nfs', 'nand' or 'disk'
-kernel_loc=nand
-# can be either 'net', 'nand', 'disk' or 'initrd'
-rootfs_loc=nand
-
-# for flash based rootfs: 'jffs2' or 'ubifs'
-# in case of disk any regular filesystem like 'ext2', 'ext3', 'reiserfs'
-rootfs_type=jffs2
-# where is the rootfs in case of 'rootfs_loc=disk' (linux name)
-rootfs_part_linux_dev=mmcblk0p4
-rootfsimage=rootfs-${global.hostname}.$rootfs_type
-
-# where is the kernel image in case of 'kernel_loc=disk'
-kernel_part=disk0.2
-
-# The image type of the kernel. Can be uimage, zimage, raw or raw_lzo
-#kernelimage=zImage-${global.hostname}
-kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-bareboximage=barebox-${global.hostname}.bin
-bareboxenvimage=barebox-${global.hostname}.bin
-
-if [ -n $user ]; then
-	bareboximage="$user"-"$bareboximage"
-	bareboxenvimage="$user"-"$bareboxenvimage"
-	kernelimage="$user"-"$kernelimage"
-	rootfsimage="$user"-"$rootfsimage"
-	nfsroot="/home/$user/nfsroot/${global.hostname}"
-else
-	nfsroot="/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttyO2,115200"
-
-# the following displays are supported
-# pd050vl1 (640 x 480)
-# pd035vl1 (640 x 480)
-# pd104slf (800 x 600)
-# pm070wl4 (800 x 480)
-#
-# omapfb.mode=<display>:<mode>,[,...]
-# omapfb.debug=<y|n>
-#        - Enable debug printing. You have to have OMAPFB debug support enabled
-#          in kernel config.
-#
-bootargs="$bootargs omapdss.def_disp=pd050vl1"
-#bootargs="$bootargs omapdss.def_disp=pd035vl1"
-#bootargs="$bootargs omapdss.def_disp=pd104slf"
-#bootargs="$bootargs omapdss.def_disp=pm070wl4"
-
-nand_parts="128k(x-loader)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
-nand_device=omap2-nand.0
-rootfs_mtdblock_nand=4
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c b/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
deleted file mode 100644
index 56fbdf12ad..0000000000
--- a/arch/arm/boards/phytec-phycard-omap3/lowlevel.c
+++ /dev/null
@@ -1,266 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <io.h>
-#include <init.h>
-#include <linux/sizes.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/barebox-arm.h>
-#include <mach/omap/omap3-mux.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/control.h>
-#include <mach/omap/syslib.h>
-#include <mach/omap/omap3-silicon.h>
-#include <mach/omap/omap3-generic.h>
-#include <mach/omap/sys_info.h>
-
-/* Slower full frequency range default timings for x32 operation */
-#define SDP_SDRC_SHARING	0x00000100
-/* Diabling power down mode using CKE pin */
-#define SDP_SDRC_POWER_POP	0x00000081
-/* rkw - need to find of 90/72 degree recommendation for speed like before. */
-#define SDP_SDRC_DLLAB_CTRL ((DLL_ENADLL << 3) | \
-	(DLL_LOCKDLL << 2) | (DLL_DLLPHASE_90 << 1))
-
-/* used to create an array of memory configuartions. */
-struct sdrc_config {
-	u32	cs_cfg;
-	u32	mcfg;
-	u32	mr;
-	u32	actim_ctrla;
-	u32	actim_ctrlb;
-	u32	rfr_ctrl;
-} const sdrc_config[] = {
-/* max cs_size for autodetection, common timing */
-/* 2x256MByte, 14 Rows, 10 Columns , RBC (BAL=2) */
-{ 0x00000004, 0x03590099, 0x00000032, 0x9A9DB4C6, 0x00011216, 0x0004e201},
-/* MT46H32M32LF 2x128MByte, 13 Rows, 10 Columns */
-{ 0x00000001, 0x02584099, 0x00000032, 0x9A9DB4C6, 0x00011216, 0x0004e201},
-/* MT46H64M32LF 1x256MByte, 14 Rows, 10 Columns */
-{ 0x00000002, 0x03588099, 0x00000032, 0x629DB4C6, 0x00011113, 0x0004e201},
-/* MT64H128M32L2 2x256MByte, 14 Rows, 10 Columns */
-{ 0x00000002, 0x03588099, 0x00000032, 0x629DB4C6, 0x00011113, 0x0004e201},
-};
-
-/*
- * Boot-time initialization(s)
- */
-
-/*********************************************************************
- * init_sdram_ddr() - Init DDR controller.
- *********************************************************************/
-static void init_sdram_ddr(void)
-{
-	/* reset sdrc controller */
-	writel(SOFTRESET, OMAP3_SDRC_REG(SYSCONFIG));
-	wait_on_value(1<<0, 1<<0, OMAP3_SDRC_REG(STATUS), 12000000);
-	writel(0, OMAP3_SDRC_REG(SYSCONFIG));
-
-	/* setup sdrc to ball mux */
-	writel(SDP_SDRC_SHARING, OMAP3_SDRC_REG(SHARING));
-	writel(SDP_SDRC_POWER_POP, OMAP3_SDRC_REG(POWER));
-
-	/* set up dll */
-	writel(SDP_SDRC_DLLAB_CTRL, OMAP3_SDRC_REG(DLLA_CTRL));
-	sdelay(0x2000);	/* give time to lock */
-
-}
-/*********************************************************************
- * config_sdram_ddr() - Init DDR on dev board.
- *********************************************************************/
-static void config_sdram_ddr(u8 cs, u8 cfg)
-{
-
-	writel(sdrc_config[cfg].mcfg, OMAP3_SDRC_REG(MCFG_0) + (0x30 * cs));
-	writel(sdrc_config[cfg].actim_ctrla, OMAP3_SDRC_REG(ACTIM_CTRLA_0) + (0x28 * cs));
-	writel(sdrc_config[cfg].actim_ctrlb, OMAP3_SDRC_REG(ACTIM_CTRLB_0) + (0x28 * cs));
-	writel(sdrc_config[cfg].rfr_ctrl, OMAP3_SDRC_REG(RFR_CTRL_0) + (0x30 * cs));
-
-	writel(CMD_NOP, OMAP3_SDRC_REG(MANUAL_0) + (0x30 * cs));
-
-	sdelay(5000);
-
-	writel(CMD_PRECHARGE, OMAP3_SDRC_REG(MANUAL_0) + (0x30 * cs));
-	writel(CMD_AUTOREFRESH, OMAP3_SDRC_REG(MANUAL_0) + (0x30 * cs));
-	writel(CMD_AUTOREFRESH, OMAP3_SDRC_REG(MANUAL_0) + (0x30 * cs));
-
-	/* set mr0 */
-	writel(sdrc_config[cfg].mr, OMAP3_SDRC_REG(MR_0) + (0x30 * cs));
-
-	sdelay(2000);
-}
-
-/**
- * @brief Initialize the SDRC module
- * Initialisation for 1x256MByte but normally
- * done by x-loader.
- * @return void
- */
-static void pcaal1_sdrc_init(void)
-{
-	u32 test0, test1;
-	signed char cfg;
-
-	init_sdram_ddr();
-
-	config_sdram_ddr(0, 0); /* 256MByte at CS0 */
-	config_sdram_ddr(1, 0); /* 256MByte at CS1 */
-
-	test0 = get_ram_size((long *) 0x80000000, SZ_256M);
-	test1 = get_ram_size((long *) 0xA0000000, SZ_256M);
-
-	/* mask out lower nible, its not tested with
-	in common/memsize.c */
-	test1 &= 0xfffffff0;
-
-	if ((test1 > 0) && (test1 != test0))
-		hang();
-
-	cfg = -1; /* illegal configuration found */
-
-	if (test1 == 0) {
-		init_sdram_ddr();
-		writel((sdrc_config[(uchar) cfg].mcfg & 0xfffc00ff), OMAP3_SDRC_REG(MCFG_1));
-
-		/* 1 x 256MByte */
-		if (test0 == SZ_256M)
-			cfg = 2;
-
-		if (cfg != -1) {
-			config_sdram_ddr(0, cfg);
-			writel(sdrc_config[(uchar) cfg].cs_cfg, OMAP3_SDRC_REG(CS_CFG));
-		}
-		return;
-	}
-
-	/* reinit both cs with correct size */
-	/* 2 x 128MByte */
-	if (test0 == SZ_128M)
-		cfg = 1;
-	/* 2 x 256MByte */
-	if (test0 == SZ_256M)
-		cfg = 3;
-
-	if (cfg != -1) {
-		init_sdram_ddr();
-		writel(sdrc_config[(uchar) cfg].cs_cfg, OMAP3_SDRC_REG(CS_CFG));
-		config_sdram_ddr(0, cfg);
-		config_sdram_ddr(1, cfg);
-	}
-}
-
-/**
- * @brief Do the necessary pin muxing required for phyCARD-A-L1.
- * Some pins in OMAP3 do not have alternate modes.
- * We don't program these pins.
- *
- * See @ref MUX_VAL for description of the muxing mode.
- *
- * @return void
- */
-static void pcaal1_mux_config(void)
-{
-	/*
-	 * Serial Interface
-	 */
-	MUX_VAL(CP(UART3_CTS_RCTX),	(IEN  | PTD | EN  | M0));
-	MUX_VAL(CP(UART3_RTS_SD),	(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(UART3_RX_IRRX),	(IEN  | PTD | EN  | M0));
-	MUX_VAL(CP(UART3_TX_IRTX),	(IDIS | PTD | DIS | M0));
-
-	/* GPMC */
-	MUX_VAL(CP(GPMC_A1),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A2),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A3),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A4),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A5),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A6),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A7),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A8),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A9),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_A10),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D0),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D1),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D2),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D3),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D4),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D5),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D6),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D7),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D8),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D9),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D10),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D11),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D12),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D13),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D14),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_D15),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_NCS0),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(GPMC_NADV_ALE),	(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NOE),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NWE),		(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NBE0_CLE),	(IDIS | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_NWP),		(IEN  | PTD | DIS | M0));
-	MUX_VAL(CP(GPMC_WAIT0),		(IEN  | PTU | EN  | M0));
-
-	/* ETH_PME (GPIO_55) */
-	MUX_VAL(CP(GPMC_NCS4),		(IDIS | PTU | EN  | M4));
-	/* #CS5 (Ethernet) */
-	MUX_VAL(CP(GPMC_NCS5),		(IDIS | PTU | EN  | M0));
-	/* ETH_FIFO_SEL (GPIO_57) */
-	MUX_VAL(CP(GPMC_NCS6),		(IDIS | PTD | EN  | M4));
-	/* ETH_AMDIX_EN (GPIO_58) */
-	MUX_VAL(CP(GPMC_NCS7),		(IDIS | PTU | EN  | M4));
-	/* ETH_nRST (GPIO_64) */
-	MUX_VAL(CP(GPMC_WAIT2),		(IDIS | PTU | EN  | M4));
-
-	/* HSMMC1 */
-	MUX_VAL(CP(MMC1_CLK),		(IDIS | PTU | EN  | M0));
-	MUX_VAL(CP(MMC1_CMD),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(MMC1_DAT0),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(MMC1_DAT1),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(MMC1_DAT2),		(IEN  | PTU | EN  | M0));
-	MUX_VAL(CP(MMC1_DAT3),		(IEN  | PTU | EN  | M0));
-
-	/* USBOTG_nRST (GPIO_63) */
-	MUX_VAL(CP(GPMC_WAIT1),		(IDIS | PTU | EN  | M4));
-
-	/* USBH_nRST (GPIO_65) */
-	MUX_VAL(CP(GPMC_WAIT3),		(IDIS | PTU | EN  | M4));
-}
-
-/**
- * @brief The basic entry point for board initialization.
- *
- * This is called as part of machine init (after arch init).
- * This is again called with stack in SRAM, so not too many
- * constructs possible here.
- *
- * @return void
- */
-static int pcaal1_board_init(void)
-{
-	int in_sdram = omap3_running_in_sdram();
-
-	if (!in_sdram)
-		omap3_core_init();
-
-	pcaal1_mux_config();
-	/* Dont reconfigure SDRAM while running in SDRAM! */
-	if (!in_sdram)
-		pcaal1_sdrc_init();
-
-	return 0;
-}
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap3_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	pcaal1_board_init();
-
-	barebox_arm_entry(0x80000000, SZ_256M, NULL);
-}
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
deleted file mode 100644
index d878dba082..0000000000
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.c
+++ /dev/null
@@ -1,164 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-/**
- * @file
- * @brief Board Initialization routines for the phyCARD-A-L1
- *
- * This board is based on OMAP3530.
- * More on OMAP3530 (including documentation can be found here):
- * http://focus.ti.com/docs/prod/folders/print/omap3530.html
- *
- * This file provides initialization in two stages:
- * @li Boot time initialization - just get SDRAM working.
- * This is run from SRAM - so no case constructs and global vars can be used.
- * @li Run time initialization - this is for the rest of the initializations
- * such as flash, uart etc.
- *
- * Boot time initialization includes:
- * @li SDRAM initialization.
- * @li Pin Muxing relevant for the EVM.
- *
- * Run time initialization includes
- * @li serial @ref serial_ns16550.c driver device definition
- *
- * Originally from arch/arm/boards/omap/board-beagle.c
- *
- * Copyright (C) 2011 Phytec Messtechnik GmbH - http://www.phytec.de/
- * Juergen Kilb <j.kilb@phytec.de>
- *
- * based on code from Texas Instruments / board-beagle.c
- * Copyright (C) 2009 Texas Instruments Incorporated - http://www.ti.com/
- * Sanjeev Premi <premi@ti.com>
- */
-
-#include <common.h>
-#include <console.h>
-#include <driver.h>
-#include <errno.h>
-#include <init.h>
-#include <nand.h>
-#include <linux/sizes.h>
-#include <asm/armlinux.h>
-#include <asm/io.h>
-#include <asm/mach-types.h>
-#include <linux/err.h>
-#include <mach/omap/gpmc.h>
-#include <mach/omap/gpmc_nand.h>
-#include <mach/omap/omap_hsmmc.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/omap3-silicon.h>
-#include <mach/omap/sys_info.h>
-#include <mach/omap/omap3-devices.h>
-
-#define SMC911X_BASE 0x2c000000
-
-/**
- * @brief Initialize the serial port to be used as console.
- *
- * @return result of device registration
- */
-static int pcaal1_init_console(void)
-{
-	barebox_set_model("Phytec phyCARD-OMAP3");
-	barebox_set_hostname("phycard-omap3");
-
-	omap3_add_uart3();
-
-	return 0;
-}
-console_initcall(pcaal1_init_console);
-
-#ifdef CONFIG_DRIVER_NET_SMC911X
-/** GPMC timing for our SMSC9221 device */
-static struct gpmc_config smsc_cfg = {
-	.cfg = {
-		0x41001000,	/*CONF1 */
-		0x00040500,	/*CONF2 */
-		0x00000000,	/*CONF3 */
-		0x04000500,	/*CONF4 */
-		0x05050505,	/*CONF5 */
-		0x000002c1,	/*CONF6 */
-	},
-	.base = SMC911X_BASE,
-	/* GPMC address map as small as possible */
-	.size = GPMC_SIZE_16M,
-};
-
-/*
- * Routine: setup_net_chip
- * Description: Setting up the configuration GPMC registers specific to the
- *            Ethernet hardware.
- */
-static void pcaal1_setup_net_chip(void)
-{
-	gpmc_cs_config(5, &smsc_cfg);
-}
-#endif
-
-static int pcaal1_mem_init(void)
-{
-
-#ifdef CONFIG_OMAP_GPMC
-	/*
-	 * WP is made high and WAIT1 active Low
-	 */
-	gpmc_generic_init(0x10);
-#endif
-	omap3_add_sram0();
-
-
-	omap_add_ram0(get_sdr_cs_size(SDRC_CS0_OSET));
-	printf("found %s at SDCS0\n", size_human_readable(get_sdr_cs_size(SDRC_CS0_OSET)));
-
-	if ((get_sdr_cs_size(SDRC_CS1_OSET) != 0) && (get_sdr_cs1_base() != OMAP_SDRC_CS0)) {
-		arm_add_mem_device("ram1", get_sdr_cs1_base(), get_sdr_cs_size(SDRC_CS1_OSET));
-		printf("found %s at SDCS1\n", size_human_readable(get_sdr_cs_size(SDRC_CS1_OSET)));
-	}
-
-	return 0;
-}
-mem_initcall(pcaal1_mem_init);
-
-struct omap_hsmmc_platform_data pcaal1_hsmmc_plat = {
-	.f_max = 26000000,
-};
-
-static struct gpmc_nand_platform_data nand_plat = {
-	.device_width = 16,
-	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
-	.nand_cfg = &omap3_nand_cfg,
-};
-
-static int pcaal1_init_devices(void)
-{
-	omap_add_gpmc_nand_device(&nand_plat);
-
-	omap3_add_mmc1(&pcaal1_hsmmc_plat);
-
-#ifdef CONFIG_DRIVER_NET_SMC911X
-	pcaal1_setup_net_chip();
-	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, SMC911X_BASE, SZ_4K,
-			   IORESOURCE_MEM, NULL);
-#endif
-
-	armlinux_set_architecture(MACH_TYPE_PCAAL1);
-
-	return 0;
-}
-device_initcall(pcaal1_init_devices);
-
-static int pcaal1_late_init(void)
-{
-#ifdef CONFIG_PARTITION
-	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "x-loader");
-	dev_add_bb_dev("self_raw", "x_loader0");
-
-	devfs_add_partition("nand0", SZ_128K, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-
-	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-#endif
-	return 0;
-}
-late_initcall(pcaal1_late_init);
diff --git a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h b/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
deleted file mode 100644
index 7e7dadc587..0000000000
--- a/arch/arm/boards/phytec-phycard-omap3/pca-a-l1.h
+++ /dev/null
@@ -1,17 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2008 Raghavendra KH <r-khandenahally@ti.com>, Texas Instruments (http://www.ti.com/)
-
-/**
- * @file
- * @brief exported generic APIs which various board files implement
- *
- * This file will not contain any board specific implementations.
- */
-
-#ifndef __BOARD_OMAP_H_
-#define __BOARD_OMAP_H_
-
-/** Generic Board initialization called from platform.S */
-void board_init(void);
-
-#endif         /* __BOARD_OMAP_H_ */
diff --git a/arch/arm/boards/phytec-phycard-omap4/Makefile b/arch/arm/boards/phytec-phycard-omap4/Makefile
deleted file mode 100644
index 0ac095becc..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2012 Jan Weitzel <j.weitzel@phytec.de>
-
-obj-y += pca-a-xl2.o
-lwl-y += mux.o lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-phytec-phycard-omap4
diff --git a/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/bin/nand_bootstrap b/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/bin/nand_bootstrap
deleted file mode 100644
index f8873fabe2..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/bin/nand_bootstrap
+++ /dev/null
@@ -1,31 +0,0 @@
-
-echo "copying barebox to nand..."
-
-mci0.probe=1
-mkdir mnt
-
-mount /dev/disk0.0 /mnt
-if [ $? != 0 ]; then
-	echo "failed to mount mmc card"
-	exit 1
-fi
-
-if [ ! -f /mnt/mlo-nand.bin ]; then
-	echo "mlo-nand.bin not found on mmc card"
-	exit 1
-fi
-
-if [ ! -f /mnt/barebox.bin ]; then
-	echo "barebox.bin not found on mmc card"
-fi
-
-gpmc_nand0.eccmode=bch8_hw_romcode
-erase /dev/nand0.xload.bb
-cp /mnt/mlo-nand.bin /dev/nand0.xload.bb
-
-gpmc_nand0.eccmode=bch8_hw
-erase /dev/nand0.barebox.bb
-cp /mnt/barebox.bin /dev/nand0.barebox.bb
-
-echo "success"
-
diff --git a/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/config b/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/config
deleted file mode 100644
index 998f9fa0f2..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/defaultenv-phytec-phycard-omap4/config
+++ /dev/null
@@ -1,46 +0,0 @@
-#!/bin/sh
-
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttyO2,115200"
-
-nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),-(root)"
-rootfs_mtdblock_nand=4
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c b/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
deleted file mode 100644
index b5906234d3..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/lowlevel.c
+++ /dev/null
@@ -1,91 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2004-2009 Richard Woodruff <r-woodruff2@ti.com>, Texas Instruments (http://www.ti.com/)
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-generic.h>
-#include <mach/omap/omap4-clock.h>
-#include <mach/omap/syslib.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-
-#include "mux.h"
-
-#define TPS62361_VSEL0_GPIO    7
-
-static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
-	.tim1           = 0x0EEB0662,
-	.tim2           = 0x20370DD2,
-	.tim3           = 0x00BFC33F,
-	.phy_ctrl_1     = 0x849FF408,
-	.ref_ctrl       = 0x00000618,
-	.config_init    = 0x80001AB1,
-	.config_final   = 0x80001AB1,
-	.zq_config      = 0xd0093215,
-	.mr1            = 0x83,
-	.mr2            = 0x4
-};
-
-static noinline void pcaaxl2_init_lowlevel(void)
-{
-	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
-	struct dpll_param mpu44xx = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
-	struct dpll_param mpu4460 = OMAP4_MPU_DPLL_PARAM_19M2_MPU920;
-	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
-	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
-	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
-	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
-	unsigned int rev = omap4_revision();
-
-	phycard_omap4_set_muxconf_regs();
-
-	omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
-
-	if (rev < OMAP4460_ES1_0)
-		omap4430_scale_vcores();
-	else
-		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1320);
-
-	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
-
-	/* Configure all DPLL's at 100% OPP */
-	if (rev < OMAP4460_ES1_0)
-		omap4_configure_mpu_dpll(&mpu44xx);
-	else
-		omap4_configure_mpu_dpll(&mpu4460);
-
-	omap4_configure_iva_dpll(&iva);
-	omap4_configure_per_dpll(&per);
-	omap4_configure_abe_dpll(&abe);
-	omap4_configure_usb_dpll(&usb);
-
-	/* Enable all clocks */
-	omap4_enable_all_clocks();
-
-	sr32(0x4A30a31C, 8, 1, 0x1);  /* enable software ioreq */
-	sr32(0x4A30a31C, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
-	sr32(0x4A30a31C, 16, 4, 0x0); /* set divisor to 1 */
-	sr32(0x4A30a110, 0, 1, 0x1);  /* set the clock source to active */
-	sr32(0x4A30a110, 2, 2, 0x3);  /* enable clocks */
-}
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap4_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	if (get_pc() > 0x80000000)
-		goto out;
-
-	arm_setup_stack(0x4030d000);
-
-	pcaaxl2_init_lowlevel();
-out:
-	barebox_arm_entry(0x80000000, SZ_512M, NULL);
-}
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.c b/arch/arm/boards/phytec-phycard-omap4/mux.c
deleted file mode 100644
index a545ca5948..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/mux.c
+++ /dev/null
@@ -1,257 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-clock.h>
-
-#include "mux.h"
-
-static const struct pad_conf_entry core_padconf_array[] = {
-	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
-	{GPMC_AD1, (IEN | PTD | DIS | M0)},			 	/* gpmc_ad1 */
-	{GPMC_AD2, (IEN | PTD | DIS | M0)},				/* gpmc_ad2 */
-	{GPMC_AD3, (IEN | PTD | DIS | M0)},				/* gpmc_ad3 */
-	{GPMC_AD4, (IEN | PTD | DIS | M0)},				/* gpmc_ad4 */
-	{GPMC_AD5, (IEN | PTD | DIS | M0)},				/* gpmc_ad5 */
-	{GPMC_AD6, (IEN | PTD | DIS | M0)},				/* gpmc_ad6 */
-	{GPMC_AD7, (IEN | PTD | DIS | M0)},				/* gpmc_ad7 */
-	{GPMC_AD8, (IEN | PTD | DIS | M0)},				/* gpmc_ad8 */
-	{GPMC_AD9, (IEN | PTD | DIS | M0)},				/* gpmc_ad9 */
-	{GPMC_AD10, (IEN | PTD | DIS | M0)},				/* gpmc_ad10 */
-	{GPMC_AD11, (IEN | PTD | DIS | M0)},				/* gpmc_ad11 */
-	{GPMC_AD12, (IEN | PTD | DIS | M0)},				/* gpmc_ad12 */
-	{GPMC_AD13, (IEN | PTD | DIS | M0)},				/* gpmc_ad13 */
-	{GPMC_AD14, (IEN | PTD | DIS | M0)},				/* gpmc_ad14 */
-	{GPMC_AD15, (IEN | PTD | DIS | M0)},				/* gpmc_ad15 */
-	{GPMC_A16, (IEN | PTD | DIS | M0)},				/* gpmc_a16 */
-	{GPMC_A17, (SAFE_MODE)},					/* nc */
-	{GPMC_A18, (SAFE_MODE)},					/* nc */
-	{GPMC_A19, (SAFE_MODE)},					/* nc */
-	{GPMC_A20, (SAFE_MODE)},					/* nc */
-	{GPMC_A21, (SAFE_MODE)},					/* nc */
-	{GPMC_A22, (SAFE_MODE)},					/* nc */
-	{GPMC_A23, (SAFE_MODE)},					/* nc */
-	{GPMC_A24, (SAFE_MODE)},					/* nc */
-	{GPMC_A25, (SAFE_MODE)},					/* nc */
-	{GPMC_NCS0, (IDIS | PTU | EN | M0)},				/* gpmc_nsc0 */
-	{GPMC_NCS1, (IDIS | PTU | EN | M0)},				/* gpmc_nsc1 */
-	{GPMC_NCS2, (SAFE_MODE)},					/* nc */
-	{GPMC_NCS3, (SAFE_MODE)},					/* nc */
-	{GPMC_NWP, (IEN | PTD | DIS | M0)},				/* gpmc_nwp */
-	{GPMC_CLK, (PTU | IEN | M3)},					/* gpio_55 */
-	{GPMC_NADV_ALE, (IDIS | PTD | DIS | M0)},			/* gpmc_ndav_ale */
-	{GPMC_NOE, (IDIS | PTD | DIS | M0)},				/* gpmc_noe */
-	{GPMC_NWE, (IDIS | PTD | DIS | M0)},				/* gpmc_nwe */
-	{GPMC_NBE0_CLE, (IDIS | PTD | DIS | M0)},			/* gpmc_nbe0_cle */
-	{GPMC_NBE1, (SAFE_MODE)},					/* nc */
-	{GPMC_WAIT0, (IEN | PTU | EN | M0)},				/* gpmc_wait0 */
-	{GPMC_WAIT1, (IEN | PTU | EN | M0)},				/* gpmc_wait1 */
-	{C2C_DATA11, (SAFE_MODE)},					/* nc */
-	{C2C_DATA12, (SAFE_MODE)},					/* nc */
-	{C2C_DATA13, (IDIS | PTU | EN | M0)},				/* gpmc_nsc5 */
-	{C2C_DATA14, (SAFE_MODE)},					/* nc */
-	{C2C_DATA15, (SAFE_MODE)},					/* nc */
-	{HDMI_HPD, (SAFE_MODE)},					/* nc */
-	{HDMI_CEC, (SAFE_MODE)},					/* nc */
-	{HDMI_DDC_SCL, (SAFE_MODE)},					/* nc */
-	{HDMI_DDC_SDA, (SAFE_MODE)},					/* nc */
-	{CSI21_DX0, (SAFE_MODE)},					/* nc */
-	{CSI21_DY0, (SAFE_MODE)},					/* nc */
-	{CSI21_DX1, (SAFE_MODE)},					/* nc */
-	{CSI21_DY1, (SAFE_MODE)},					/* nc */
-	{CSI21_DX2, (SAFE_MODE)},					/* nc */
-	{CSI21_DY2, (SAFE_MODE)},					/* nc */
-	{CSI21_DX3, (SAFE_MODE)},					/* nc */
-	{CSI21_DY3, (SAFE_MODE)},					/* nc */
-	{CSI21_DX4, (SAFE_MODE)},					/* nc */
-	{CSI21_DY4, (SAFE_MODE)},					/* nc */
-	{CSI22_DX0, (SAFE_MODE)},					/* nc */
-	{CSI22_DY0, (SAFE_MODE)},					/* nc */
-	{CSI22_DX1, (SAFE_MODE)},					/* nc */
-	{CSI22_DY1, (SAFE_MODE)},					/* nc */
-	{CAM_SHUTTER, (SAFE_MODE)},					/* unused */
-	{CAM_STROBE, (SAFE_MODE)},					/* unused */
-	{CAM_GLOBALRESET, (SAFE_MODE)},					/* unused */
-	{USBB1_ULPITLL_CLK, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M4)},/* usbb1_ulpiphy_clk */
-	{USBB1_ULPITLL_STP, (OFF_EN | OFF_OUT_PTD | M4)},		/* usbb1_ulpiphy_stp */
-	{USBB1_ULPITLL_DIR, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dir */
-	{USBB1_ULPITLL_NXT, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_nxt */
-	{USBB1_ULPITLL_DAT0, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat0 */
-	{USBB1_ULPITLL_DAT1, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat1 */
-	{USBB1_ULPITLL_DAT2, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat2 */
-	{USBB1_ULPITLL_DAT3, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat3 */
-	{USBB1_ULPITLL_DAT4, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat4 */
-	{USBB1_ULPITLL_DAT5, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat5 */
-	{USBB1_ULPITLL_DAT6, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat6 */
-	{USBB1_ULPITLL_DAT7, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat7 */
-	{USBB1_HSIC_DATA, (SAFE_MODE)},					/* nc */
-	{USBB1_HSIC_STROBE, (SAFE_MODE)},				/* nc */
-	{USBC1_ICUSB_DP, (SAFE_MODE)},					/* nc */
-	{USBC1_ICUSB_DM, (SAFE_MODE)},					/* nc */
-	{SDMMC1_CLK, (PTU | OFF_EN | OFF_OUT_PTD | M0)},		/* sdmmc1_clk */
-	{SDMMC1_CMD, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_cmd */
-	{SDMMC1_DAT0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat0 */
-	{SDMMC1_DAT1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat1 */
-	{SDMMC1_DAT2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat2 */
-	{SDMMC1_DAT3, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat3 */
-	{SDMMC1_DAT4, (SAFE_MODE)},					/* nc */
-	{SDMMC1_DAT5, (SAFE_MODE)},					/* nc */
-	{SDMMC1_DAT6, (SAFE_MODE)},					/* nc */
-	{SDMMC1_DAT7, (SAFE_MODE)},					/* nc */
-	{ABE_MCBSP2_CLKX, (SAFE_MODE)},					/* nc */
-	{ABE_MCBSP2_DR, (SAFE_MODE)},					/* nc */
-	{ABE_MCBSP2_DX, (SAFE_MODE)},					/* nc */
-	{ABE_MCBSP2_FSX, (SAFE_MODE)},					/* nc */
-	{ABE_MCBSP1_CLKX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_DR, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_DX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_FSX, (SAFE_MODE)},					/* nc */
-	{ABE_PDM_UL_DATA, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_DL_DATA, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_FRAME, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_LB_CLK, (SAFE_MODE)},					/* unused */
-	{ABE_CLKS, (SAFE_MODE)},					/* unused */
-	{ABE_DMIC_CLK1, (SAFE_MODE)},					/* nc */
-	{ABE_DMIC_DIN1, (SAFE_MODE)},					/* unused */
-	{ABE_DMIC_DIN2, (SAFE_MODE)},					/* nc */
-	{ABE_DMIC_DIN3, (SAFE_MODE)},					/* unused */
-	{UART2_CTS, (SAFE_MODE)},					/* nc */
-	{UART2_RTS, (SAFE_MODE)},					/* nc */
-	{UART2_RX, (SAFE_MODE)},					/* nc */
-	{UART2_TX, (SAFE_MODE)},					/* nc */
-	{HDQ_SIO, (SAFE_MODE)},						/* unused */
-	{I2C1_SCL, (PTU | IEN | M0)},					/* i2c1_scl */
-	{I2C1_SDA, (PTU | IEN | M0)},					/* i2c1_sda */
-	{I2C2_SCL, (SAFE_MODE)},					/* unused */
-	{I2C2_SDA, (SAFE_MODE)},					/* unused */
-	{I2C3_SCL, (PTU | IEN | M0)},					/* i2c3_scl */
-	{I2C3_SDA, (PTU | IEN | M0)},					/* i2c3_sda */
-	{I2C4_SCL, (SAFE_MODE)},					/* nc */
-	{I2C4_SDA, (SAFE_MODE)},					/* nc */
-	{MCSPI1_CLK, (SAFE_MODE)},					/* unused */
-	{MCSPI1_SOMI, (SAFE_MODE)},					/* unused */
-	{MCSPI1_SIMO, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS0, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS1, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS2, (SAFE_MODE)},					/* nc */
-	{MCSPI1_CS3, (SAFE_MODE)},					/* nc */
-	{UART3_CTS_RCTX, (PTU | IEN | M0)},				/* uart3_tx */
-	{UART3_RTS_SD, (M0)},						/* uart3_rts_sd */
-	{UART3_RX_IRRX, (IEN | M0)},					/* uart3_rx */
-	{UART3_TX_IRTX, (M0)},						/* uart3_tx */
-	{SDMMC5_CLK, (PTU | IEN | M3)},					/* goio_145 */
-	{SDMMC5_CMD, (PTU | IEN | M3)},					/* goio_146 */
-	{SDMMC5_DAT0, (SAFE_MODE)},					/* nc */
-	{SDMMC5_DAT1, (SAFE_MODE)},					/* nc */
-	{SDMMC5_DAT2, (SAFE_MODE)},					/* nc */
-	{SDMMC5_DAT3, (SAFE_MODE)},					/* nc */
-	{MCSPI4_CLK, (PTU | IEN | M3)},					/* gpio_151 */
-	{MCSPI4_SIMO, (PTU | IEN | M3)},				/* gpio_152 */
-	{MCSPI4_SOMI, (PTU | IEN | M3)},				/* gpio_153 */
-	{MCSPI4_CS0, (SAFE_MODE)},					/* nc */
-	{UART4_RX, (SAFE_MODE)},					/* nc */
-	{UART4_TX, (SAFE_MODE)},					/* nc */
-	{USBB2_ULPITLL_CLK, (SAFE_MODE)},				/* nc */
-	{USBB2_ULPITLL_STP, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DIR, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_NXT, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT0, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT1, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT2, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT3, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT4, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT5, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT6, (SAFE_MODE)},				/* unused */
-	{USBB2_ULPITLL_DAT7, (SAFE_MODE)},				/* unused */
-	{USBB2_HSIC_DATA, (SAFE_MODE)},					/* unused */
-	{USBB2_HSIC_STROBE, (SAFE_MODE)},				/* nc */
-	{UNIPRO_TX0, (SAFE_MODE)},					/* nc */
-	{UNIPRO_TY0, (SAFE_MODE)},					/* nc */
-	{UNIPRO_TX1, (SAFE_MODE)},					/* nc */
-	{UNIPRO_TY1, (SAFE_MODE)},					/* nc */
-	{UNIPRO_TX2, (SAFE_MODE)},					/* unused */
-	{UNIPRO_TY2, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RX0, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RY0, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RX1, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RY1, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RX2, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RY2, (SAFE_MODE)},					/* unused */
-	{USBA0_OTG_CE, (PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M0)},	/* usba0_otg_ce */
-	{USBA0_OTG_DP, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dp */
-	{USBA0_OTG_DM, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dm */
-	{FREF_CLK1_OUT, (SAFE_MODE)},					/* nc */
-	{FREF_CLK2_OUT, (SAFE_MODE)},					/* nc */
-	{SYS_NIRQ1, (PTU | IEN | M0)},					/* sys_nirq1 */
-	{SYS_NIRQ2, (SAFE_MODE)},					/* nc */
-	{SYS_BOOT0, (M0)},						/* sys_boot */
-	{SYS_BOOT1, (M0)},						/* sys_boot */
-	{SYS_BOOT2, (M0)},						/* sys_boot */
-	{SYS_BOOT3, (M0)},						/* sys_boot */
-	{SYS_BOOT4, (M0)},						/* sys_boot */
-	{SYS_BOOT5, (M0)},						/* sys_boot */
-	{DPM_EMU0, (IEN | M0)},						/* dpm_emu0 */
-	{DPM_EMU1, (IEN | M0)},						/* dpm_emu1 */
-	{DPM_EMU2, (SAFE_MODE)},					/* unused */
-	{DPM_EMU3, (SAFE_MODE)},					/* unused */
-	{DPM_EMU4, (SAFE_MODE)},					/* unused */
-	{DPM_EMU5, (SAFE_MODE)},					/* unused */
-	{DPM_EMU6, (SAFE_MODE)},					/* unused */
-	{DPM_EMU7, (SAFE_MODE)},					/* unused */
-	{DPM_EMU8, (SAFE_MODE)},					/* unused */
-	{DPM_EMU9, (SAFE_MODE)},					/* unused */
-	{DPM_EMU10, (SAFE_MODE)},					/* unused */
-	{DPM_EMU11, (SAFE_MODE)},					/* unused */
-	{DPM_EMU12, (SAFE_MODE)},					/* unused */
-	{DPM_EMU13, (SAFE_MODE)},					/* unused */
-	{DPM_EMU14, (SAFE_MODE)},					/* unused */
-	{DPM_EMU15, (SAFE_MODE)},					/* unused */
-	{DPM_EMU16, (SAFE_MODE)},					/* unused */
-	{DPM_EMU17, (SAFE_MODE)},					/* unused */
-	{DPM_EMU18, (SAFE_MODE)},					/* unused */
-	{DPM_EMU19, (SAFE_MODE)},					/* unused */
-};
-
-static const struct pad_conf_entry wkup_padconf_array[] = {
-	{GPIO_WK0, (SAFE_MODE)},		/* tbd */
-	{GPIO_WK1, (SAFE_MODE)},		/* nc */
-	{GPIO_WK2, (SAFE_MODE)},		/* nc */
-	{GPIO_WK3, (SAFE_MODE)},		/* nc */
-	{GPIO_WK4, (SAFE_MODE)},		/* nc */
-	{SR_SCL, (PTU | IEN | M0)},		/* sr_scl */
-	{SR_SDA, (PTU | IEN | M0)},		/* sr_sda */
-	{FREF_XTAL_IN, (M0)},			/* # */
-	{FREF_SLICER_IN, (SAFE_MODE)},		/* nc */
-	{FREF_CLK_IOREQ, (SAFE_MODE)},		/* nc */
-	{FREF_CLK0_OUT, (M2)},			/* sys_drm_msecure */
-	{FREF_CLK3_REQ, (SAFE_MODE)},		/* nc */
-	{FREF_CLK3_OUT, (M0)},			/* fref_clk3_out */
-	{FREF_CLK4_REQ, (IEN | M3)},		/* gpio_wk7 */
-	{FREF_CLK4_OUT, (M0)},			/* fref_clk4_out */
-	{SYS_32K, (IEN | M0)},			/* sys_32k */
-	{SYS_NRESPWRON, (M0)},			/* sys_nrespwron */
-	{SYS_NRESWARM, (M0)},			/* sys_nreswarm */
-	{SYS_PWR_REQ, (PTU | M0)},		/* sys_pwr_req */
-	{SYS_PWRON_RESET_OUT, (M0)},		/* sys_pwron_reset_out */
-	{SYS_BOOT6, (M0)},			/* sys_boot6 */
-	{SYS_BOOT7, (M0)},			/* sys_boot7 */
-};
-
-void phycard_omap4_set_muxconf_regs(void)
-{
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
-			ARRAY_SIZE(core_padconf_array));
-
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
-			ARRAY_SIZE(wkup_padconf_array));
-
-	/* gpio_wk7 is used for controlling TPS on 4460 */
-	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_WKUP + FREF_CLK4_REQ);
-		/* Enable GPIO-1 clocks before TPS initialization */
-		omap4_enable_gpio1_wup_clocks();
-	}
-}
diff --git a/arch/arm/boards/phytec-phycard-omap4/mux.h b/arch/arm/boards/phytec-phycard-omap4/mux.h
deleted file mode 100644
index 46a2434ad0..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/mux.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __BOARD_MUX_H
-#define __BOARD_MUX_H
-
-void phycard_omap4_set_muxconf_regs(void);
-
-#endif /* __BOARD_MUX_H */
diff --git a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c b/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
deleted file mode 100644
index f18f11c331..0000000000
--- a/arch/arm/boards/phytec-phycard-omap4/pca-a-xl2.c
+++ /dev/null
@@ -1,126 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Sascha Hauer, Pengutronix
-
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <io.h>
-#include <gpio.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/sys_info.h>
-#include <mach/omap/syslib.h>
-#include <mach/omap/control.h>
-#include <linux/err.h>
-#include <linux/sizes.h>
-#include <nand.h>
-#include <asm/mmu.h>
-#include <mach/omap/gpmc.h>
-#include <mach/omap/gpmc_nand.h>
-#include <mach/omap/omap_hsmmc.h>
-#include <mach/omap/omap4-devices.h>
-#include <i2c/i2c.h>
-
-static int pcaaxl2_console_init(void)
-{
-	barebox_set_model("Phytec phyCARD-OMAP4");
-	barebox_set_hostname("phycard-omap4");
-
-	omap44xx_add_uart3();
-
-	return 0;
-}
-console_initcall(pcaaxl2_console_init);
-
-static int pcaaxl2_mem_init(void)
-{
-	omap_add_ram0(SZ_512M);
-
-	omap44xx_add_sram0();
-
-	return 0;
-}
-mem_initcall(pcaaxl2_mem_init);
-
-static struct gpmc_config net_cfg = {
-	.cfg = {
-		0x00001000, /* CONF1 */
-		0x00080800, /* CONF2 */
-		0x00000000, /* CONF3 */
-		0x08000800, /* CONF4 */
-		0x000a0a0a, /* CONF5 */
-		0x000003c2, /* CONF6 */
-	},
-	.base = 0x2C000000,
-	.size = GPMC_SIZE_16M,
-};
-
-static void pcaaxl2_network_init(void)
-{
-	gpmc_cs_config(5, &net_cfg);
-
-	add_ks8851_device(DEVICE_ID_DYNAMIC, net_cfg.base, net_cfg.base + 2,
-				IORESOURCE_MEM_16BIT, NULL);
-}
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("twlcore", 0x48),
-	},
-};
-
-static struct omap_hsmmc_platform_data mmc_device = {
-	.f_max = 26000000,
-};
-
-#define OMAP4_CONTROL_PBIASLITE			0x4A100600
-#define OMAP4_MMC1_PBIASLITE_VMODE		(1<<21)
-#define OMAP4_MMC1_PBIASLITE_PWRDNZ		(1<<22)
-#define OMAP4_MMC1_PWRDNZ			(1<<26)
-
-static struct gpmc_nand_platform_data nand_plat = {
-	.device_width = 16,
-	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
-	.nand_cfg = &omap4_nand_cfg,
-};
-
-static int pcaaxl2_devices_init(void)
-{
-	u32 value;
-
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	omap44xx_add_i2c1(NULL);
-
-	value = readl(OMAP4_CONTROL_PBIASLITE);
-	value &= ~OMAP4_MMC1_PBIASLITE_VMODE;
-	value |= (OMAP4_MMC1_PBIASLITE_PWRDNZ |	OMAP4_MMC1_PWRDNZ);
-	writel(value, OMAP4_CONTROL_PBIASLITE);
-
-	omap44xx_add_mmc1(&mmc_device);
-
-	gpmc_generic_init(0x10);
-
-	pcaaxl2_network_init();
-
-	omap_add_gpmc_nand_device(&nand_plat);
-
-#ifdef CONFIG_PARTITION
-	devfs_add_partition("nand0", 0x00000, SZ_128K,
-			DEVFS_PARTITION_FIXED, "xload_raw");
-	dev_add_bb_dev("xload_raw", "xload");
-	devfs_add_partition("nand0", SZ_128K, SZ_512K,
-			DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K,
-			DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-#endif
-
-	armlinux_set_architecture(MACH_TYPE_PCAAXL2);
-
-	return 0;
-}
-device_initcall(pcaaxl2_devices_init);
diff --git a/arch/arm/boards/phytec-phycore-omap4460/Makefile b/arch/arm/boards/phytec-phycore-omap4460/Makefile
deleted file mode 100644
index c5d3950bc3..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o mux.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-phytec-phycore-omap4460
diff --git a/arch/arm/boards/phytec-phycore-omap4460/board.c b/arch/arm/boards/phytec-phycore-omap4460/board.c
deleted file mode 100644
index 2a176f156e..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/board.c
+++ /dev/null
@@ -1,301 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2011 Sascha Hauer, Pengutronix
-
-#include <common.h>
-#include <console.h>
-#include <init.h>
-#include <driver.h>
-#include <gpio.h>
-#include <io.h>
-#include <envfs.h>
-#include <asm/armlinux.h>
-#include <asm/mach-types.h>
-#include <mach/omap/devices.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-devices.h>
-#include <mach/omap/omap4-clock.h>
-#include <mach/omap/sdrc.h>
-#include <mach/omap/sys_info.h>
-#include <mach/omap/syslib.h>
-#include <mach/omap/control.h>
-#include <linux/err.h>
-#include <linux/sizes.h>
-#include <nand.h>
-#include <asm/mmu.h>
-#include <mach/omap/gpmc.h>
-#include <mach/omap/gpmc_nand.h>
-#include <i2c/i2c.h>
-
-static int pcm049_console_init(void)
-{
-	barebox_set_model("Phytec phyCORE-OMAP4460");
-	barebox_set_hostname("phycore-omap4460");
-
-	omap44xx_add_uart3();
-
-	return 0;
-}
-console_initcall(pcm049_console_init);
-
-static int pcm049_mem_init(void)
-{
-#ifdef CONFIG_1024MB_DDR2RAM
-	omap_add_ram0(SZ_1G);
-#else
-	omap_add_ram0(SZ_512M);
-#endif
-
-	omap44xx_add_sram0();
-	return 0;
-}
-mem_initcall(pcm049_mem_init);
-
-static struct gpmc_config net_cfg = {
-	.cfg = {
-		0xc1001000,	/* CONF1 */
-		0x00070700,	/* CONF2 */
-		0x00000000,	/* CONF3 */
-		0x07000700,	/* CONF4 */
-		0x09060909,	/* CONF5 */
-		0x000003c2,	/* CONF6 */
-	},
-	.base = 0x2C000000,
-	.size = GPMC_SIZE_16M,
-};
-
-static void pcm049_network_init(void)
-{
-	gpmc_cs_config(5, &net_cfg);
-
-	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL, 0x2C000000, 0x4000,
-			   IORESOURCE_MEM, NULL);
-}
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("twl6030", 0x48),
-	},
-};
-
-static struct gpmc_nand_platform_data nand_plat = {
-	.wait_mon_pin = 1,
-	.ecc_mode = OMAP_ECC_BCH8_CODE_HW,
-	.nand_cfg = &omap4_nand_cfg,
-};
-
-static struct omapfb_display const pcm049_displays[] = {
-	{
-		.mode	= {
-			.name		= "pd050vl1",
-			.refresh	= 60,
-			.xres		= 640,
-			.yres		= 480,
-			.pixclock	= 25000,
-			.left_margin	= 46,
-			.right_margin	= 18,
-			.hsync_len	= 96,
-			.upper_margin	= 33,
-			.lower_margin	= 10,
-			.vsync_len	= 2,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-	/* Prime-View PM070WL4 */
-	{
-		.mode	= {
-			.name		= "pm070wl4",
-			.refresh	= 60,
-			.xres		= 800,
-			.yres		= 480,
-			.pixclock	= 32000,
-			.left_margin	= 86,
-			.right_margin	= 42,
-			.hsync_len	= 128,
-			.lower_margin	= 10,
-			.upper_margin	= 33,
-			.vsync_len	= 2,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-	/* Prime-View PD104SLF */
-	{
-		.mode	= {
-			.name		= "pd104slf",
-			.refresh	= 60,
-			.xres		= 800,
-			.yres		= 600,
-			.pixclock	= 40000,
-			.left_margin	= 86,
-			.right_margin	= 42,
-			.hsync_len	= 128,
-			.lower_margin	= 1,
-			.upper_margin	= 23,
-			.vsync_len	= 4,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-	/* EDT ETM0350G0DH6 */
-	{
-		.mode	= {
-			.name		= "edt_etm0350G0dh6",
-			.refresh	= 60,
-			.xres		= 320,
-			.yres		= 240,
-			.pixclock	= 15720,
-			.left_margin	= 68,
-			.right_margin	= 20,
-			.hsync_len	= 88,
-			.lower_margin	= 4,
-			.upper_margin	= 18,
-			.vsync_len	= 22,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-	/* EDT ETM0430G0DH6 */
-	{
-		.mode	= {
-			.name		= "edt_etm0430G0dh6",
-			.refresh	= 60,
-			.xres		= 480,
-			.yres		= 272,
-			.pixclock	= 9000,
-			.left_margin	= 2,
-			.right_margin	= 2,
-			.hsync_len	= 41,
-			.lower_margin	= 2,
-			.upper_margin	= 2,
-			.vsync_len	= 10,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-	/* EDT ETMV570G2DHU */
-	{
-		.mode	= {
-			.name		= "edt_etmv570G2dhu",
-			.refresh	= 60,
-			.xres		= 640,
-			.yres		= 480,
-			.pixclock	= 25175,
-			.left_margin	= 114,
-			.right_margin	= 16,
-			.hsync_len	= 30,
-			.lower_margin	= 10,
-			.upper_margin	= 35,
-			.vsync_len	= 3,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-	/* ETD ETM0700G0DH6 */
-	{
-		.mode	= {
-			.name		= "edt_etm0700G0dh6",
-			.refresh	= 60,
-			.xres		= 800,
-			.yres		= 480,
-			.pixclock	= 33260,
-			.left_margin	= 216,
-			.right_margin	= 40,
-			.hsync_len	= 128,
-			.lower_margin	= 10,
-			.upper_margin	= 35,
-			.vsync_len	= 2,
-		},
-
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-	},
-
-	/* CHIMEI G104X1-L03 */
-	{
-		.mode = {
-			.name		= "g104x1",
-			.refresh	= 60,
-			.xres		= 1024,
-			.yres		= 768,
-			.pixclock	= 64000,
-			.left_margin	= 320,
-			.right_margin	= 1,
-			.hsync_len	= 320,
-			.upper_margin	= 38,
-			.lower_margin	= 38,
-			.vsync_len	= 2,
-		},
-		.config = (OMAP_DSS_LCD_TFT | OMAP_DSS_LCD_IVS |
-				OMAP_DSS_LCD_IHS | OMAP_DSS_LCD_IPC |
-				OMAP_DSS_LCD_DATALINES_24),
-
-		.power_on_delay		= 50,
-		.power_off_delay	= 100,
-	},
-};
-
-#define GPIO_DISPENABLE			  118
-#define GPIO_BACKLIGHT			  122
-
-static void pcm049_fb_enable(int e)
-{
-	gpio_direction_output(GPIO_DISPENABLE, e);
-	gpio_direction_output(GPIO_BACKLIGHT, e);
-}
-
-static struct omapfb_platform_data pcm049_fb_data = {
-	.displays	= pcm049_displays,
-	.num_displays	= ARRAY_SIZE(pcm049_displays),
-
-	.dss_clk_hz	= 19200000,
-
-	.bpp		= 32,
-	.enable		= pcm049_fb_enable,
-};
-
-static int pcm049_devices_init(void)
-{
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	omap44xx_add_i2c1(NULL);
-	omap44xx_add_mmc1(NULL);
-
-	gpmc_generic_init(0x10);
-
-	if (IS_ENABLED(CONFIG_DRIVER_NET_SMC911X))
-		pcm049_network_init();
-
-	omap_add_gpmc_nand_device(&nand_plat);
-
-#ifdef CONFIG_PARTITION
-	devfs_add_partition("nand0", 0x00000, SZ_128K, DEVFS_PARTITION_FIXED, "xload_raw");
-	dev_add_bb_dev("xload_raw", "xload");
-	devfs_add_partition("nand0", SZ_128K, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", SZ_128K + SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-#endif
-
-	armlinux_set_architecture(MACH_TYPE_PCM049);
-
-	omap_add_display(&pcm049_fb_data);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_phytec_phycore_omap4460);
-
-	return 0;
-}
-device_initcall(pcm049_devices_init);
diff --git a/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/init_board b/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/init_board
deleted file mode 100644
index d5142ee8d0..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/init_board
+++ /dev/null
@@ -1,23 +0,0 @@
-#!/bin/sh
-global displayargs
-. /env/config
-
-if [ -z $display ]; then
-	echo "no display configured"
-	exit 0
-fi
-
-if [ $display = dvi ]; then
-	global.displayargs="omapdss.def_disp=dvi omapfb.mode=dvi:$dvi_resolution"
-	exit 0
-fi
-
-# Display a splash screen
-
-if [ -e /dev/fb0 ]; then
-	fb0.mode_name=$display
-	splash /dev/nand0.splash.bb
-	fb0.enable=1
-fi
-
-global.displayargs="panel_generic_dpi.name=$display"
diff --git a/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/nand_bootstrap b/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/nand_bootstrap
deleted file mode 100644
index 49e38dc4f0..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/bin/nand_bootstrap
+++ /dev/null
@@ -1,31 +0,0 @@
-#!/bin/sh
-echo "copying barebox to nand..."
-
-mci0.probe=1
-mkdir mnt
-
-mount /dev/disk0.0 /mnt
-if [ $? != 0 ]; then
-	echo "failed to mount mmc card"
-	exit 1
-fi
-
-if [ ! -f /mnt/mlo-nand.bin ]; then
-	echo "mlo-nand.bin not found on mmc card"
-	exit 1
-fi
-
-if [ ! -f /mnt/barebox.bin ]; then
-	echo "barebox.bin not found on mmc card"
-fi
-
-gpmc_nand0.eccmode=bch8_hw_romcode
-erase /dev/nand0.xload.bb
-cp /mnt/mlo-nand.bin /dev/nand0.xload.bb
-
-gpmc_nand0.eccmode=bch8_hw
-erase /dev/nand0.barebox.bb
-cp /mnt/barebox.bin /dev/nand0.barebox.bb
-
-echo "success"
-
diff --git a/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/config b/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/config
deleted file mode 100644
index 1a252dd9c5..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/defaultenv-phytec-phycore-omap4460/config
+++ /dev/null
@@ -1,61 +0,0 @@
-#!/bin/sh
-
-eth0.serverip=
-user=
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp', 'nor' or 'nand'
-kernel_loc=tftp
-# can be either 'net', 'nor', 'nand' or 'initrd'
-rootfs_loc=net
-
-# can be either 'jffs2' or 'ubifs'
-rootfs_type=ubifs
-rootfsimage=root-${global.hostname}.$rootfs_type
-
-kernelimage=zImage-${global.hostname}
-#kernelimage=uImage-${global.hostname}
-#kernelimage=Image-${global.hostname}
-#kernelimage=Image-${global.hostname}.lzo
-
-if [ -n $user ]; then
-	kernelimage="$user"-"$kernelimage"
-	nfsroot="$eth0.serverip:/home/$user/nfsroot/${global.hostname}"
-	rootfsimage="$user"-"$rootfsimage"
-else
-	nfsroot="$eth0.serverip:/path/to/nfs/root"
-fi
-
-autoboot_timeout=3
-
-bootargs="console=ttyO2,115200"
-
-nand_parts="128k(xload)ro,512k(barebox),128k(bareboxenv),4M(kernel),4M(splash),-(root)"
-nand_device="omap2-nand.0"
-rootfs_mtdblock_nand=5
-
-#Displays
-# Splashscreen-Display can be either '', 'pd050vl1', 'pm070wl4', 'pd104slf', 'g104x1'
-# 'edt_etm0350G0dh6', 'edt_etm0430G0dh6', 'edt_etmv570G2dhu' or 'edt_etm0700G0dh6'
-# to use dvi output in kernel set 'display=dvi' and
-# dvi_resolution to '640x480-60' '800x600-60' or '1024x768-60'
-
-display=edt_etm0700G0dh6
-#dvi_resolution=1024x768-60
-
-if [ -n ${global.displayargs} ]; then
-	bootargs="$bootargs ${global.displayargs}"
-fi
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c b/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
deleted file mode 100644
index 17194c6562..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/lowlevel.c
+++ /dev/null
@@ -1,141 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-// SPDX-FileCopyrightText: 2004-2009 Richard Woodruff <r-woodruff2@ti.com>, Texas Instruments (http://www.ti.com/)
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <linux/sizes.h>
-#include <mach/omap/generic.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-generic.h>
-#include <mach/omap/omap4-clock.h>
-#include <mach/omap/syslib.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-
-#include "mux.h"
-
-#define TPS62361_VSEL0_GPIO    182
-#define LPDDR2_2G              0x5
-#define LPDDR2_4G              0x6
-#define LPDDR2_DENSITY_MASK		0x3C
-#define LPDDR2_DENSITY_SHIFT		2
-#define EMIF_SDRAM_CONFIG		0x0008
-#define EMIF_LPDDR2_MODE_REG_CONFIG	0x0050
-#define EMIF_LPDDR2_MODE_REG_DATA	0x0040
-
-/* 512MB */
-static const struct ddr_regs ddr_regs_mt42L64M64_25_400_mhz = {
-	.tim1		= 0x0EEB0662,
-	.tim2		= 0x20370DD2,
-	.tim3		= 0x00BFC33F,
-	.phy_ctrl_1	= 0x849FF408,
-	.ref_ctrl	= 0x00000618,
-	.config_init	= 0x80001AB1,
-	.config_final	= 0x80001AB1,
-	.zq_config	= 0xd0093215,
-	.mr1		= 0x83,
-	.mr2		= 0x4
-};
-
-/* 1GB */
-static const struct ddr_regs ddr_regs_mt42L128M64_25_400_mhz = {
-	.tim1		= 0x0EEB0663,
-	.tim2		= 0x205715D2,
-	.tim3		= 0x00BFC53F,
-	.phy_ctrl_1	= 0x849FF408,
-	.ref_ctrl	= 0x00000618,
-	.config_init	= 0x80001AB9,
-	.config_final	= 0x80001AB9,
-	.zq_config	= 0x50093215,
-	.mr1		= 0x83,
-	.mr2		= 0x4
-};
-
-static const struct ddr_regs ddr_regs_mt42L128M64D2LL_25_400_mhz = {
-	.tim1           = 0x10EB0662,
-	.tim2           = 0x205715D2,
-	.tim3           = 0x00B1C53F,
-	.phy_ctrl_1     = 0x849FF409,
-	.ref_ctrl       = 0x00000618,
-	.config_init    = 0x80001AB2,
-	.config_final   = 0x80001AB2,
-	.zq_config      = 0x500B3214,
-	.mr1            = 0x83,
-	.mr2            = 0x4
-};
-
-static void noinline pcm049_init_lowlevel(void)
-{
-	unsigned int density;
-
-	struct dpll_param core = OMAP4_CORE_DPLL_PARAM_19M2_DDR400;
-	struct dpll_param mpu44xx = OMAP4_MPU_DPLL_PARAM_19M2_MPU1000;
-	struct dpll_param mpu4460 = OMAP4_MPU_DPLL_PARAM_19M2_MPU920;
-	struct dpll_param iva = OMAP4_IVA_DPLL_PARAM_19M2;
-	struct dpll_param per = OMAP4_PER_DPLL_PARAM_19M2;
-	struct dpll_param abe = OMAP4_ABE_DPLL_PARAM_19M2;
-	struct dpll_param usb = OMAP4_USB_DPLL_PARAM_19M2;
-	unsigned int rev = omap4_revision();
-
-	phycore_omap4460_set_muxconf_regs();
-
-	if (IS_ENABLED(CONFIG_1024MB_DDR2RAM)) {
-		omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
-		writel(EMIF_SDRAM_CONFIG, OMAP44XX_EMIF1_BASE +
-		       EMIF_LPDDR2_MODE_REG_CONFIG);
-		density = (readl(OMAP44XX_EMIF1_BASE + EMIF_LPDDR2_MODE_REG_DATA) &
-			   LPDDR2_DENSITY_MASK) >> LPDDR2_DENSITY_SHIFT;
-		if (density == LPDDR2_2G)
-			omap4_ddr_init(&ddr_regs_mt42L128M64_25_400_mhz, &core);
-		else if (density == LPDDR2_4G)
-			omap4_ddr_init(&ddr_regs_mt42L128M64D2LL_25_400_mhz, &core);
-	} else {
-		omap4_ddr_init(&ddr_regs_mt42L64M64_25_400_mhz, &core);
-	}
-
-	/* Set VCORE1 = 1.3 V, VCORE2 = VCORE3 = 1.21V */
-	if (rev < OMAP4460_ES1_0)
-		omap4430_scale_vcores();
-	else
-		omap4460_scale_vcores(TPS62361_VSEL0_GPIO, 1320);
-
-	writel(CM_SYS_CLKSEL_19M2, CM_SYS_CLKSEL);
-
-	/* Configure all DPLL's at 100% OPP */
-	if (rev < OMAP4460_ES1_0)
-		omap4_configure_mpu_dpll(&mpu44xx);
-	else
-		omap4_configure_mpu_dpll(&mpu4460);
-
-	omap4_configure_iva_dpll(&iva);
-	omap4_configure_per_dpll(&per);
-	omap4_configure_abe_dpll(&abe);
-	omap4_configure_usb_dpll(&usb);
-
-	/* Enable all clocks */
-	omap4_enable_all_clocks();
-
-	sr32(OMAP44XX_SCRM_AUXCLK3, 8, 1, 0x1);  /* enable software ioreq */
-	sr32(OMAP44XX_SCRM_AUXCLK3, 1, 2, 0x0);  /* set for sys_clk (19.2MHz) */
-	sr32(OMAP44XX_SCRM_AUXCLK3, 16, 4, 0x0); /* set divisor to 1 */
-	sr32(OMAP44XX_SCRM_ALTCLKSRC, 0, 1, 0x1);  /* activate clock source */
-	sr32(OMAP44XX_SCRM_ALTCLKSRC, 2, 2, 0x3);  /* enable clocks */
-}
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	omap4_save_bootinfo((void *)r0);
-
-	arm_cpu_lowlevel_init();
-
-	if (get_pc() > 0x80000000)
-		goto out;
-
-	arm_setup_stack(0x4030d000);
-
-	pcm049_init_lowlevel();
-out:
-	barebox_arm_entry(0x80000000, SZ_512M, NULL);
-}
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.c b/arch/arm/boards/phytec-phycore-omap4460/mux.c
deleted file mode 100644
index 287c2a4826..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/mux.c
+++ /dev/null
@@ -1,257 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/omap/omap4-silicon.h>
-#include <mach/omap/omap4-mux.h>
-#include <mach/omap/omap4-clock.h>
-
-#include "mux.h"
-
-static const struct pad_conf_entry core_padconf_array[] = {
-	{GPMC_AD0, (IEN | PTD | DIS | M0)},				/* gpmc_ad0 */
-	{GPMC_AD1, (IEN | PTD | DIS | M0)},			 	/* gpmc_ad1 */
-	{GPMC_AD2, (IEN | PTD | DIS | M0)},				/* gpmc_ad2 */
-	{GPMC_AD3, (IEN | PTD | DIS | M0)},				/* gpmc_ad3 */
-	{GPMC_AD4, (IEN | PTD | DIS | M0)},				/* gpmc_ad4 */
-	{GPMC_AD5, (IEN | PTD | DIS | M0)},				/* gpmc_ad5 */
-	{GPMC_AD6, (IEN | PTD | DIS | M0)},				/* gpmc_ad6 */
-	{GPMC_AD7, (IEN | PTD | DIS | M0)},				/* gpmc_ad7 */
-	{GPMC_AD8, (IEN | PTD | DIS | M0)},				/* gpmc_ad8 */
-	{GPMC_AD9, (IEN | PTD | DIS | M0)},				/* gpmc_ad9 */
-	{GPMC_AD10, (IEN | PTD | DIS | M0)},				/* gpmc_ad10 */
-	{GPMC_AD11, (IEN | PTD | DIS | M0)},				/* gpmc_ad11 */
-	{GPMC_AD12, (IEN | PTD | DIS | M0)},				/* gpmc_ad12 */
-	{GPMC_AD13, (IEN | PTD | DIS | M0)},				/* gpmc_ad13 */
-	{GPMC_AD14, (IEN | PTD | DIS | M0)},				/* gpmc_ad14 */
-	{GPMC_AD15, (IEN | PTD | DIS | M0)},				/* gpmc_ad15 */
-	{GPMC_A16, (IEN | PTD | DIS | M0)},				/* gpmc_a16 */
-	{GPMC_A17, (IEN | PTD | DIS | M0)},				/* gpmc_a17 */
-	{GPMC_A18, (IEN | PTD | DIS | M0)},				/* gpmc_a18 */
-	{GPMC_A19, (IEN | PTD | DIS | M0)},				/* gpmc_a19 */
-	{GPMC_A20, (IEN | PTD | DIS | M0)},				/* gpmc_a20 */
-	{GPMC_A21, (IEN | PTD | DIS | M0)},				/* gpmc_a21 */
-	{GPMC_A22, (IEN | PTD | DIS | M0)},				/* gpmc_a22 */
-	{GPMC_A23, (IEN | PTD | DIS | M0)},				/* gpmc_a23 */
-	{GPMC_A24, (IEN | PTD | DIS | M0)},				/* gpmc_a24 */
-	{GPMC_A25, (IEN | PTD | DIS | M0)},				/* gpmc_a25 */
-	{GPMC_NCS0, (IDIS | PTU | EN | M0)},				/* gpmc_nsc0 */
-	{GPMC_NCS1, (IDIS | PTU | EN | M0)},				/* gpmc_nsc1 */
-	{GPMC_NCS2, (SAFE_MODE)},					/* nc */
-	{GPMC_NCS3, (SAFE_MODE)},					/* nc */
-	{GPMC_NWP, (IEN | PTD | DIS | M0)},				/* gpmc_nwp */
-	{GPMC_CLK, (SAFE_MODE)},					/* nc */
-	{GPMC_NADV_ALE, (IDIS | PTD | DIS | M0)},			/* gpmc_ndav_ale */
-	{GPMC_NOE, (IDIS | PTD | DIS | M0)},				/* gpmc_noe */
-	{GPMC_NWE, (IDIS | PTD | DIS | M0)},				/* gpmc_nwe */
-	{GPMC_NBE0_CLE, (IDIS | PTD | DIS | M0)},			/* gpmc_nbe0_cle */
-	{GPMC_NBE1, (SAFE_MODE)},					/* nc */
-	{GPMC_WAIT0, (IEN | PTU | EN | M0)},				/* gpmc_wait0 */
-	{GPMC_WAIT1, (SAFE_MODE)},					/* nc */
-	{C2C_DATA11, (SAFE_MODE)},					/* nc */
-	{C2C_DATA12, (SAFE_MODE)},					/* nc */
-	{C2C_DATA13, (IDIS | PTU | EN | M0)},				/* gpmc_nsc5 */
-	{C2C_DATA14, (SAFE_MODE)},					/* nc */
-	{C2C_DATA15, (SAFE_MODE)},					/* nc */
-	{HDMI_HPD, (SAFE_MODE)},					/* unused */
-	{HDMI_CEC, (SAFE_MODE)},					/* unused */
-	{HDMI_DDC_SCL, (SAFE_MODE)},					/* unused */
-	{HDMI_DDC_SDA, (SAFE_MODE)},					/* unused */
-	{CSI21_DX0, (SAFE_MODE)},					/* unused */
-	{CSI21_DY0, (SAFE_MODE)},					/* unused */
-	{CSI21_DX1, (SAFE_MODE)},					/* unused */
-	{CSI21_DY1, (SAFE_MODE)},					/* unused */
-	{CSI21_DX2, (SAFE_MODE)},					/* unused */
-	{CSI21_DY2, (SAFE_MODE)},					/* unused */
-	{CSI21_DX3, (SAFE_MODE)},					/* unused */
-	{CSI21_DY3, (SAFE_MODE)},					/* unused */
-	{CSI21_DX4, (SAFE_MODE)},					/* unused */
-	{CSI21_DY4, (SAFE_MODE)},					/* unused */
-	{CSI22_DX0, (SAFE_MODE)},					/* unused */
-	{CSI22_DY0, (SAFE_MODE)},					/* unused */
-	{CSI22_DX1, (SAFE_MODE)},					/* unused */
-	{CSI22_DY1, (SAFE_MODE)},					/* unused */
-	{CAM_SHUTTER, (SAFE_MODE)},					/* unused */
-	{CAM_STROBE, (SAFE_MODE)},					/* unused */
-	{CAM_GLOBALRESET, (SAFE_MODE)},					/* unused */
-	{USBB1_ULPITLL_CLK, (PTD | IEN | OFF_EN | OFF_PD | OFF_IN | M4)},/* usbb1_ulpiphy_clk */
-	{USBB1_ULPITLL_STP, (OFF_EN | OFF_OUT_PTD | M4)},		/* usbb1_ulpiphy_stp */
-	{USBB1_ULPITLL_DIR, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dir */
-	{USBB1_ULPITLL_NXT, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_nxt */
-	{USBB1_ULPITLL_DAT0, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat0 */
-	{USBB1_ULPITLL_DAT1, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat1 */
-	{USBB1_ULPITLL_DAT2, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat2 */
-	{USBB1_ULPITLL_DAT3, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat3 */
-	{USBB1_ULPITLL_DAT4, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat4 */
-	{USBB1_ULPITLL_DAT5, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat5 */
-	{USBB1_ULPITLL_DAT6, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat6 */
-	{USBB1_ULPITLL_DAT7, (IEN | OFF_EN | OFF_PD | OFF_IN | M4)},	/* usbb1_ulpiphy_dat7 */
-	{USBB1_HSIC_DATA, (SAFE_MODE)},					/* nc */
-	{USBB1_HSIC_STROBE, (SAFE_MODE)},				/* nc */
-	{USBC1_ICUSB_DP, (SAFE_MODE)},					/* unused */
-	{USBC1_ICUSB_DM, (SAFE_MODE)},					/* unused */
-	{SDMMC1_CLK, (PTU | OFF_EN | OFF_OUT_PTD | M0)},		/* sdmmc1_clk */
-	{SDMMC1_CMD, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_cmd */
-	{SDMMC1_DAT0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat0 */
-	{SDMMC1_DAT1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat1 */
-	{SDMMC1_DAT2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat2 */
-	{SDMMC1_DAT3, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc1_dat3 */
-	{SDMMC1_DAT4, (SAFE_MODE)},					/* unused */
-	{SDMMC1_DAT5, (SAFE_MODE)},					/* unused */
-	{SDMMC1_DAT6, (SAFE_MODE)},					/* unused */
-	{SDMMC1_DAT7, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP2_CLKX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP2_DR, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP2_DX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP2_FSX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_CLKX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_DR, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_DX, (SAFE_MODE)},					/* unused */
-	{ABE_MCBSP1_FSX, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_UL_DATA, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_DL_DATA, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_FRAME, (SAFE_MODE)},					/* unused */
-	{ABE_PDM_LB_CLK, (SAFE_MODE)},					/* unused */
-	{ABE_CLKS, (M3)},						/* gpio_118 */
-	{ABE_DMIC_CLK1, (SAFE_MODE)},					/* nc */
-	{ABE_DMIC_DIN1, (SAFE_MODE)},					/* unused */
-	{ABE_DMIC_DIN2, (DIS | IEN | M3)},				/* gpio_121 */
-	{ABE_DMIC_DIN3, (M3)},						/* gpio_122 */
-	{UART2_CTS, (SAFE_MODE)},					/* unused */
-	{UART2_RTS, (SAFE_MODE)},					/* unused */
-	{UART2_RX, (SAFE_MODE)},					/* unused */
-	{UART2_TX, (SAFE_MODE)},					/* unused */
-	{HDQ_SIO, (SAFE_MODE)},						/* unused */
-	{I2C1_SCL, (PTU | IEN | M0)},					/* i2c1_scl */
-	{I2C1_SDA, (PTU | IEN | M0)},					/* i2c1_sda */
-	{I2C2_SCL, (SAFE_MODE)},					/* unused */
-	{I2C2_SDA, (SAFE_MODE)},					/* unused */
-	{I2C3_SCL, (PTU | IEN | M0)},					/* i2c3_scl */
-	{I2C3_SDA, (PTU | IEN | M0)},					/* i2c3_sda */
-	{I2C4_SCL, (PTU | IEN | M0)},					/* i2c4_scl */
-	{I2C4_SDA, (PTU | IEN | M0)},					/* i2c4_sda */
-	{MCSPI1_CLK, (SAFE_MODE)},					/* unused */
-	{MCSPI1_SOMI, (SAFE_MODE)},					/* unused */
-	{MCSPI1_SIMO, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS0, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS1, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS2, (SAFE_MODE)},					/* unused */
-	{MCSPI1_CS3, (SAFE_MODE)},					/* unused */
-	{UART3_CTS_RCTX, (PTU | IEN | M0)},				/* uart3_tx */
-	{UART3_RTS_SD, (M0)},						/* uart3_rts_sd */
-	{UART3_RX_IRRX, (IEN | M0)},					/* uart3_rx */
-	{UART3_TX_IRTX, (M0)},						/* uart3_tx */
-	{SDMMC5_CLK, (PTU | IEN | OFF_EN | OFF_OUT_PTD | M0)},		/* sdmmc5_clk */
-	{SDMMC5_CMD, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_cmd */
-	{SDMMC5_DAT0, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat0 */
-	{SDMMC5_DAT1, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat1 */
-	{SDMMC5_DAT2, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat2 */
-	{SDMMC5_DAT3, (PTU | IEN | OFF_EN | OFF_PD | OFF_IN | M0)},	/* sdmmc5_dat3 */
-	{MCSPI4_CLK, (SAFE_MODE)},					/* nc */
-	{MCSPI4_SIMO, (PTU | IEN | M3)},				/* gpio_152 */
-	{MCSPI4_SOMI, (PTU | IEN | M3)},				/* gpio_153 */
-	{MCSPI4_CS0, (SAFE_MODE)},					/* nc */
-	{UART4_RX, (SAFE_MODE)},					/* unused */
-	{UART4_TX, (SAFE_MODE)},					/* unused */
-	{USBB2_ULPITLL_CLK, (SAFE_MODE)},				/* nc */
-	{USBB2_ULPITLL_STP, (M5)},					/* dispc2_data23 */
-	{USBB2_ULPITLL_DIR, (M5)},					/* dispc2_data22 */
-	{USBB2_ULPITLL_NXT, (M5)},					/* dispc2_data21 */
-	{USBB2_ULPITLL_DAT0, (M5)},					/* dispc2_data20 */
-	{USBB2_ULPITLL_DAT1, (M5)},					/* dispc2_data19 */
-	{USBB2_ULPITLL_DAT2, (M5)},					/* dispc2_data18 */
-	{USBB2_ULPITLL_DAT3, (M5)},					/* dispc2_data15 */
-	{USBB2_ULPITLL_DAT4, (M5)},					/* dispc2_data14 */
-	{USBB2_ULPITLL_DAT5, (M5)},					/* dispc2_data13 */
-	{USBB2_ULPITLL_DAT6, (M5)},					/* dispc2_data12 */
-	{USBB2_ULPITLL_DAT7, (M5)},					/* dispc2_data11 */
-	{USBB2_HSIC_DATA, (SAFE_MODE)},					/* nc */
-	{USBB2_HSIC_STROBE, (SAFE_MODE)},				/* nc */
-	{UNIPRO_TX0, (SAFE_MODE)},					/* unused */
-	{UNIPRO_TY0, (SAFE_MODE)},					/* unused */
-	{UNIPRO_TX1, (SAFE_MODE)},					/* unused */
-	{UNIPRO_TY1, (SAFE_MODE)},					/* unused */
-	{UNIPRO_TX2, (SAFE_MODE)},					/* unused */
-	{UNIPRO_TY2, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RX0, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RY0, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RX1, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RY1, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RX2, (SAFE_MODE)},					/* unused */
-	{UNIPRO_RY2, (SAFE_MODE)},					/* unused */
-	{USBA0_OTG_CE, (PTD | OFF_EN | OFF_PD | OFF_OUT_PTD | M0)},	/* usba0_otg_ce */
-	{USBA0_OTG_DP, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dp */
-	{USBA0_OTG_DM, (IEN | OFF_EN | OFF_PD | OFF_IN | M0)},		/* usba0_otg_dm */
-	{FREF_CLK1_OUT, (SAFE_MODE)},					/* nc */
-	{FREF_CLK2_OUT, (SAFE_MODE)},					/* nc */
-	{SYS_NIRQ1, (PTU | IEN | M0)},					/* sys_nirq1 */
-	{SYS_NIRQ2, (M0)},						/* sys_boot0 */
-	{SYS_BOOT0, (M0)},						/* sys_boot */
-	{SYS_BOOT1, (M0)},						/* sys_boot */
-	{SYS_BOOT2, (M0)},						/* sys_boot */
-	{SYS_BOOT3, (M0)},						/* sys_boot */
-	{SYS_BOOT4, (M0)},						/* sys_boot */
-	{SYS_BOOT5, (M0)},						/* sys_boot */
-	{DPM_EMU0, (IEN | M0)},						/* dpm_emu0 */
-	{DPM_EMU1, (IEN | M0)},						/* dpm_emu1 */
-	{DPM_EMU2, (SAFE_MODE)},					/* unused */
-	{DPM_EMU3, (M5)},						/* dispc2_data10 */
-	{DPM_EMU4, (M5)},						/* dispc2_data9 */
-	{DPM_EMU5, (M5)},						/* dispc2_data16 */
-	{DPM_EMU6, (M5)},						/* dispc2_data17 */
-	{DPM_EMU7, (M5)},						/* dispc2_hsync */
-	{DPM_EMU8, (M5)},						/* dispc2_pclk */
-	{DPM_EMU9, (M5)},						/* dispc2_vsync */
-	{DPM_EMU10, (M5)},						/* dispc2_de */
-	{DPM_EMU11, (M5)},						/* dispc2_data8 */
-	{DPM_EMU12, (M5)},						/* dispc2_data7 */
-	{DPM_EMU13, (M5)},						/* dispc2_data6 */
-	{DPM_EMU14, (M5)},						/* dispc2_data5 */
-	{DPM_EMU15, (M5)},						/* dispc2_data4 */
-	{DPM_EMU16, (M5)},						/* dispc2_data3 */
-	{DPM_EMU17, (M5)},						/* dispc2_data2 */
-	{DPM_EMU18, (M5)},						/* dispc2_data1 */
-	{DPM_EMU19, (M5)},						/* dispc2_data0 */
-};
-
-static const struct pad_conf_entry wkup_padconf_array[] = {
-	{GPIO_WK0, (SAFE_MODE)},		/* nc */
-	{GPIO_WK1, (SAFE_MODE)},		/* nc */
-	{GPIO_WK2, (SAFE_MODE)},		/* nc */
-	{GPIO_WK3, (SAFE_MODE)},		/* nc */
-	{GPIO_WK4, (SAFE_MODE)},		/* nc */
-	{SR_SCL, (PTU | IEN | M0)},		/* sr_scl */
-	{SR_SDA, (PTU | IEN | M0)},		/* sr_sda */
-	{FREF_XTAL_IN, (M0)},			/* # */
-	{FREF_SLICER_IN, (SAFE_MODE)},		/* nc */
-	{FREF_CLK_IOREQ, (SAFE_MODE)},		/* nc */
-	{FREF_CLK0_OUT, (M2)},			/* sys_drm_msecure */
-	{FREF_CLK3_REQ, (IEN | M3)},		/* gpio_wk30 */
-	{FREF_CLK3_OUT, (M0)},			/* fref_clk3_out */
-	{FREF_CLK4_REQ, (M0)},			/* fref_clk4_req */
-	{FREF_CLK4_OUT, (M0)},			/* fref_clk4_out */
-	{SYS_32K, (IEN | M0)},			/* sys_32k */
-	{SYS_NRESPWRON, (M0)},			/* sys_nrespwron */
-	{SYS_NRESWARM, (M0)},			/* sys_nreswarm */
-	{SYS_PWR_REQ, (PTU | M0)},		/* sys_pwr_req */
-	{SYS_PWRON_RESET_OUT, (M0)},		/* sys_pwron_reset_out */
-	{SYS_BOOT6, (M0)},			/* sys_boot6 */
-	{SYS_BOOT7, (M0)},			/* sys_boot7 */
-};
-
-void phycore_omap4460_set_muxconf_regs(void)
-{
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
-			ARRAY_SIZE(core_padconf_array));
-
-	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
-			ARRAY_SIZE(wkup_padconf_array));
-
-	/* gpio_182 is used for controlling TPS on 4460 */
-	if (omap4_revision() >= OMAP4460_ES1_0) {
-		writew(M3, OMAP44XX_CONTROL_PADCONF_CORE + FREF_CLK2_OUT);
-		/* Enable GPIO-1 clocks before TPS initialization */
-		omap4_enable_gpio_clocks();
-	}
-}
diff --git a/arch/arm/boards/phytec-phycore-omap4460/mux.h b/arch/arm/boards/phytec-phycore-omap4460/mux.h
deleted file mode 100644
index c84ecd32c8..0000000000
--- a/arch/arm/boards/phytec-phycore-omap4460/mux.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __BOARD_MUX_H
-#define __BOARD_MUX_H
-
-void phycore_omap4460_set_muxconf_regs(void);
-
-#endif /* __BOARD_MUX_H */
diff --git a/arch/arm/configs/am335x_mlo_defconfig b/arch/arm/configs/am335x_mlo_defconfig
index 1ceb996187..91d0eb4a8d 100644
--- a/arch/arm/configs/am335x_mlo_defconfig
+++ b/arch/arm/configs/am335x_mlo_defconfig
@@ -1,7 +1,6 @@
-CONFIG_ARCH_OMAP_SINGLE=y
+CONFIG_ARCH_OMAP_MULTI=y
 CONFIG_OMAP_BUILD_IFT=y
 CONFIG_OMAP_SERIALBOOT=y
-CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLEBONE=y
 CONFIG_MACH_MYIRTECH_X335X=y
@@ -35,4 +34,3 @@ CONFIG_PINCTRL_SINGLE=y
 CONFIG_BUS_OMAP_GPMC=y
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/am35xx_pfc200_xload_defconfig b/arch/arm/configs/am35xx_pfc200_xload_defconfig
index a69d4c9fbc..999f7de5d9 100644
--- a/arch/arm/configs/am35xx_pfc200_xload_defconfig
+++ b/arch/arm/configs/am35xx_pfc200_xload_defconfig
@@ -1,6 +1,5 @@
-CONFIG_ARCH_OMAP_SINGLE=y
+CONFIG_ARCH_OMAP_MULTI=y
 CONFIG_OMAP_BUILD_IFT=y
-CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_WAGO_PFC_AM35XX=y
 CONFIG_THUMB2_BAREBOX=y
 # CONFIG_ARM_EXCEPTIONS is not set
@@ -21,7 +20,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_WRITE is not set
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 # CONFIG_MCI_WRITE is not set
@@ -30,4 +28,3 @@ CONFIG_MCI_OMAP_HSMMC=y
 # CONFIG_FS_RAMFS is not set
 # CONFIG_FS_DEVFS is not set
 CONFIG_FS_FAT=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/archosg9_defconfig b/arch/arm/configs/archosg9_defconfig
deleted file mode 100644
index 288d4bda52..0000000000
--- a/arch/arm/configs/archosg9_defconfig
+++ /dev/null
@@ -1,98 +0,0 @@
-CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP4_USBBOOT=y
-CONFIG_MACH_ARCHOSG9=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_BOOTM_AIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/archosg9/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_ARM_MMUINFO=y
-CONFIG_CMD_BOOT_ORDER=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_MENUTREE=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_SMSC95XX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_OMAP=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_OMAP=y
-CONFIG_DRIVER_VIDEO_SIMPLEFB=y
-CONFIG_DRIVER_VIDEO_EDID=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_MFD_TWL6030=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_KEYBOARD_GPIO=y
-CONFIG_KEYBOARD_TWL6030=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_OMAP4_USBBOOT=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
-CONFIG_PNG=y
diff --git a/arch/arm/configs/archosg9_xload_defconfig b/arch/arm/configs/archosg9_xload_defconfig
deleted file mode 100644
index fd475d65ca..0000000000
--- a/arch/arm/configs/archosg9_xload_defconfig
+++ /dev/null
@@ -1,26 +0,0 @@
-CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP_SINGLE=y
-# CONFIG_OMAP_GPMC is not set
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_OMAP4_USBBOOT=y
-CONFIG_MACH_ARCHOSG9=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_BANNER is not set
-# CONFIG_MEMINFO is not set
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_SERIAL_OMAP4_USBBOOT=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_OMAP4_USBBOOT=y
-CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig b/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
deleted file mode 100644
index b41176342f..0000000000
--- a/arch/arm/configs/omap3430_sdp3430_per_uart_defconfig
+++ /dev/null
@@ -1,26 +0,0 @@
-CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PROMPT="X-load 343x> "
-CONFIG_SHELL_SIMPLE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-# CONFIG_CMD_HELP is not set
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
-# CONFIG_CMD_CAT is not set
-# CONFIG_CMD_CD is not set
-# CONFIG_CMD_CP is not set
-# CONFIG_CMD_LS is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_PWD is not set
-# CONFIG_CMD_RM is not set
-# CONFIG_CMD_RMDIR is not set
-# CONFIG_CMD_CLEAR is not set
-# CONFIG_CMD_ECHO is not set
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_defconfig b/arch/arm/configs/omap3530_beagle_defconfig
deleted file mode 100644
index 5bd6de0cc5..0000000000
--- a/arch/arm/configs/omap3530_beagle_defconfig
+++ /dev/null
@@ -1,97 +0,0 @@
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP_MULTI_BOARDS=y
-CONFIG_MACH_BEAGLE=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_BLSPEC=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_RESET_SOURCE=y
-CONFIG_DEBUG_LL=y
-CONFIG_DEBUG_OMAP_UART_PORT=3
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_ARM_MMUINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_MENUTREE=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-CONFIG_NET_USB_SMSC95XX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_OMAP=y
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_EHCI_OMAP=y
-CONFIG_USB_TWL4030=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_MFD_TWL4030=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_IMD_TARGET=y
diff --git a/arch/arm/configs/omap3530_beagle_per_uart_defconfig b/arch/arm/configs/omap3530_beagle_per_uart_defconfig
deleted file mode 100644
index 3a38011f3d..0000000000
--- a/arch/arm/configs/omap3530_beagle_per_uart_defconfig
+++ /dev/null
@@ -1,25 +0,0 @@
-CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_PROMPT="X-load Beagle>"
-CONFIG_SHELL_SIMPLE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-# CONFIG_CMD_HELP is not set
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
-# CONFIG_CMD_CAT is not set
-# CONFIG_CMD_CD is not set
-# CONFIG_CMD_CP is not set
-# CONFIG_CMD_LS is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_PWD is not set
-# CONFIG_CMD_RM is not set
-# CONFIG_CMD_RMDIR is not set
-# CONFIG_CMD_CLEAR is not set
-# CONFIG_CMD_ECHO is not set
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap3530_beagle_xload_defconfig b/arch/arm/configs/omap3530_beagle_xload_defconfig
deleted file mode 100644
index a69989449d..0000000000
--- a/arch/arm/configs/omap3530_beagle_xload_defconfig
+++ /dev/null
@@ -1,33 +0,0 @@
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_OMAP3_USBBOOT=y
-CONFIG_OMAP_MULTI_BOARDS=y
-CONFIG_MACH_BEAGLE=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_STACK_SIZE=0xc00
-CONFIG_MALLOC_SIZE=0x0
-CONFIG_MALLOC_DUMMY=y
-CONFIG_RELOCATABLE=y
-CONFIG_PROMPT="X-load Beagle>"
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
-CONFIG_OMAP3_USB_LOADER=y
diff --git a/arch/arm/configs/omap3_evm_defconfig b/arch/arm/configs/omap3_evm_defconfig
deleted file mode 100644
index 22ac4b66ec..0000000000
--- a/arch/arm/configs/omap3_evm_defconfig
+++ /dev/null
@@ -1,24 +0,0 @@
-CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_MACH_OMAP3EVM=y
-CONFIG_AEABI=y
-CONFIG_PROMPT="OMAP3_EVM> "
-CONFIG_SHELL_SIMPLE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-# CONFIG_DEFAULT_ENVIRONMENT is not set
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-# CONFIG_CMD_MOUNT is not set
-# CONFIG_CMD_UMOUNT is not set
-# CONFIG_CMD_CAT is not set
-# CONFIG_CMD_CP is not set
-# CONFIG_CMD_MKDIR is not set
-# CONFIG_CMD_RM is not set
-# CONFIG_CMD_RMDIR is not set
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
diff --git a/arch/arm/configs/omap_defconfig b/arch/arm/configs/omap_defconfig
index 13b630a978..2383ffcb2c 100644
--- a/arch/arm/configs/omap_defconfig
+++ b/arch/arm/configs/omap_defconfig
@@ -1,8 +1,7 @@
-CONFIG_ARCH_OMAP_SINGLE=y
+CONFIG_ARCH_OMAP_MULTI=y
 CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO=y
 CONFIG_BAREBOX_UPDATE_AM33XX_NAND=y
 CONFIG_BAREBOX_UPDATE_AM33XX_EMMC=y
-CONFIG_OMAP_MULTI_BOARDS=y
 CONFIG_MACH_AFI_GF=y
 CONFIG_MACH_BEAGLE=y
 CONFIG_MACH_BEAGLEBONE=y
@@ -94,7 +93,6 @@ CONFIG_CMD_OF_DISPLAY_TIMINGS=y
 CONFIG_CMD_OF_FIXUP_STATUS=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
-CONFIG_CMD_STATE=y
 CONFIG_NET=y
 CONFIG_NET_NFS=y
 CONFIG_NET_NETCONSOLE=y
@@ -129,7 +127,6 @@ CONFIG_USB_MUSB_GADGET=y
 CONFIG_MCI=y
 CONFIG_MCI_STARTUP=y
 CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_STATE_DRV=y
 CONFIG_LED=y
 CONFIG_LED_GPIO=y
 CONFIG_LED_GPIO_OF=y
@@ -145,7 +142,6 @@ CONFIG_FS_TFTP=y
 CONFIG_FS_NFS=y
 CONFIG_FS_FAT=y
 CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
 CONFIG_FS_UBIFS=y
 CONFIG_FS_UBIFS_COMPRESSION_LZO=y
 CONFIG_FS_UBIFS_COMPRESSION_ZLIB=y
diff --git a/arch/arm/configs/panda_defconfig b/arch/arm/configs/panda_defconfig
deleted file mode 100644
index 97118fb837..0000000000
--- a/arch/arm/configs/panda_defconfig
+++ /dev/null
@@ -1,84 +0,0 @@
-CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_MACH_PANDA=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_PBL_IMAGE=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/panda/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_ARM_MMUINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_MSLEEP=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_SMSC95XX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_OMAP=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/panda_xload_defconfig b/arch/arm/configs/panda_xload_defconfig
deleted file mode 100644
index 9203734dd6..0000000000
--- a/arch/arm/configs/panda_xload_defconfig
+++ /dev/null
@@ -1,21 +0,0 @@
-CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP_SINGLE=y
-# CONFIG_OMAP_GPMC is not set
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_MACH_PANDA=y
-CONFIG_THUMB2_BAREBOX=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_PROMPT="barebox> "
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig b/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
deleted file mode 100644
index 24c50694d1..0000000000
--- a/arch/arm/configs/phytec-phycard-omap3-xload_defconfig
+++ /dev/null
@@ -1,32 +0,0 @@
-CONFIG_TEXT_BASE=0x40200000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_MACH_PCAAL1=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_ARM_EXCEPTIONS is not set
-CONFIG_ENVIRONMENT_VARIABLES=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x0000f000
-CONFIG_BAREBOX_MAX_BARE_INIT_SIZE=0x0000f000
-CONFIG_STACK_SIZE=0xc00
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_DUMMY=y
-CONFIG_PROMPT="X-load pca-a-l1>"
-CONFIG_CBSIZE=128
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycard-omap3_defconfig b/arch/arm/configs/phytec-phycard-omap3_defconfig
deleted file mode 100644
index aede243c91..0000000000
--- a/arch/arm/configs/phytec-phycard-omap3_defconfig
+++ /dev/null
@@ -1,70 +0,0 @@
-CONFIG_TEXT_BASE=0x85000000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_MACH_PCAAL1=y
-CONFIG_AEABI=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_EXPERIMENTAL=y
-CONFIG_PROMPT="phyCARD-A-L1 >"
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycard-omap3/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_SHA1SUM=y
-CONFIG_CMD_SHA224SUM=y
-CONFIG_CMD_SHA256SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_GETOPT=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_LOGIN=y
-CONFIG_CMD_MENU=y
-CONFIG_CMD_MENU_MANAGEMENT=y
-CONFIG_CMD_PASSWD=y
-CONFIG_PASSWD_MODE_STAR=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_SMC911X=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_DISK_INTF_PLATFORM_IDE=y
-CONFIG_MCI=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_FS_CRAMFS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_BZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig b/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
deleted file mode 100644
index 6c14e4635f..0000000000
--- a/arch/arm/configs/phytec-phycard-omap4-xload_defconfig
+++ /dev/null
@@ -1,28 +0,0 @@
-CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_MACH_PCAAXL2=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_ARM_EXCEPTIONS is not set
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_DUMMY=y
-CONFIG_PROMPT="barebox> "
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycard-omap4_defconfig b/arch/arm/configs/phytec-phycard-omap4_defconfig
deleted file mode 100644
index 9614b29422..0000000000
--- a/arch/arm/configs/phytec-phycard-omap4_defconfig
+++ /dev/null
@@ -1,48 +0,0 @@
-CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_MACH_PCAAXL2=y
-CONFIG_AEABI=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-# CONFIG_CMD_BOOTM is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_KS8851_MLL=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_MCI=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
deleted file mode 100644
index 327d212e18..0000000000
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-mmc_defconfig
+++ /dev/null
@@ -1,25 +0,0 @@
-CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_MACH_PCM049=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_ARM_EXCEPTIONS is not set
-# CONFIG_MEMINFO is not set
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_DUMMY=y
-CONFIG_PROMPT="barebox> "
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-# CONFIG_MCI_WRITE is not set
-CONFIG_MCI_OMAP_HSMMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig b/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
deleted file mode 100644
index 237fa48cfb..0000000000
--- a/arch/arm/configs/phytec-phycore-omap4460-xload-nand_defconfig
+++ /dev/null
@@ -1,27 +0,0 @@
-CONFIG_TEXT_BASE=0x40300000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_OMAP_BUILD_IFT=y
-CONFIG_MACH_PCM049=y
-CONFIG_THUMB2_BAREBOX=y
-# CONFIG_ARM_EXCEPTIONS is not set
-# CONFIG_MEMINFO is not set
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0xC000
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_DUMMY=y
-CONFIG_PROMPT="barebox> "
-CONFIG_SHELL_NONE=y
-# CONFIG_ERRNO_MESSAGES is not set
-# CONFIG_TIMESTAMP is not set
-CONFIG_CONSOLE_SIMPLE=y
-CONFIG_PARTITION=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-# CONFIG_MTD_WRITE is not set
-# CONFIG_MTD_OOB_DEVICE is not set
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-# CONFIG_FS_RAMFS is not set
-# CONFIG_FS_DEVFS is not set
-CONFIG_FS_FAT=y
diff --git a/arch/arm/configs/phytec-phycore-omap4460_defconfig b/arch/arm/configs/phytec-phycore-omap4460_defconfig
deleted file mode 100644
index 6a3ebea244..0000000000
--- a/arch/arm/configs/phytec-phycore-omap4460_defconfig
+++ /dev/null
@@ -1,71 +0,0 @@
-CONFIG_TEXT_BASE=0x8f000000
-CONFIG_ARCH_OMAP_SINGLE=y
-CONFIG_MACH_PCM049=y
-CONFIG_AEABI=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x80000
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_KALLSYMS=y
-CONFIG_PROMPT="barebox> "
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_TIMESTAMP is not set
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_SMSC_PHY=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_OMAP=y
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_OMAP_GPMC=y
-CONFIG_USB_HOST=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_OMAP=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_OMAP_HSMMC=y
-CONFIG_MFD_TWL6030=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
-CONFIG_BMP=y
diff --git a/arch/arm/include/asm/mach-types.h b/arch/arm/include/asm/mach-types.h
index 6b446d5185..0baf9b4baf 100644
--- a/arch/arm/include/asm/mach-types.h
+++ b/arch/arm/include/asm/mach-types.h
@@ -185,18 +185,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_pm9263()	(0)
 #endif
 
-#ifdef CONFIG_MACH_OMAP3EVM
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_OMAP3EVM
-# endif
-# define machine_is_omap3evm()	(machine_arch_type == MACH_TYPE_OMAP3EVM)
-#else
-# define machine_is_omap3evm()	(0)
-#endif
-
 #ifdef CONFIG_MACH_OMAP3_BEAGLE
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -425,18 +413,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_omap4_panda()	(0)
 #endif
 
-#ifdef CONFIG_MACH_PCAAL1
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_PCAAL1
-# endif
-# define machine_is_pcaal1()	(machine_arch_type == MACH_TYPE_PCAAL1)
-#else
-# define machine_is_pcaal1()	(0)
-#endif
-
 #ifdef CONFIG_MACH_ARMADA_XP_DB
 # ifdef machine_arch_type
 #  undef machine_arch_type
@@ -533,18 +509,6 @@ extern unsigned int __machine_arch_type;
 # define machine_is_vmx53()	(0)
 #endif
 
-#ifdef CONFIG_MACH_PCM049
-# ifdef machine_arch_type
-#  undef machine_arch_type
-#  define machine_arch_type	__machine_arch_type
-# else
-#  define machine_arch_type	MACH_TYPE_PCM049
-# endif
-# define machine_is_pcm049()	(machine_arch_type == MACH_TYPE_PCM049)
-#else
-# define machine_is_pcm049()	(0)
-#endif
-
 #ifdef CONFIG_MACH_DSS11
 # ifdef machine_arch_type
 #  undef machine_arch_type
diff --git a/arch/arm/mach-omap/Kconfig b/arch/arm/mach-omap/Kconfig
index cb1ba9f7eb..fe3c6316dc 100644
--- a/arch/arm/mach-omap/Kconfig
+++ b/arch/arm/mach-omap/Kconfig
@@ -143,12 +143,6 @@ config OMAP_SERIALBOOT
 	  Say Y here if you want to load the 2nd stage barebox.bin with
 	  xmodem after booting from serial line.
 
-config OMAP_MULTI_BOARDS
-	bool "Allow multiple boards to be selected"
-	select HAVE_PBL_MULTI_IMAGES
-
-if OMAP_MULTI_BOARDS
-
 config MACH_AFI_GF
 	bool "af inventions GF"
 	select ARCH_AM33XX
@@ -193,100 +187,6 @@ config MACH_WAGO_PFC_AM35XX
         help
           Say Y here if you are using a the AM3505 based PFC200 controller
 
-endif
-
 source "arch/arm/boards/phytec-som-am335x/Kconfig"
 
-choice
-	prompt "Select OMAP board"
-	depends on !OMAP_MULTI_BOARDS
-
-config MACH_OMAP343xSDP
-	bool "Texas Instrument's SDP343x"
-	select ARCH_OMAP3
-	help
-	  Say Y here if you are using SDP343x platform
-
-config MACH_OMAP3EVM
-	bool "Texas Instrument's OMAP3 EVM"
-	select ARCH_OMAP3
-	help
-	  Say Y here if you are using OMAP3EVM
-
-config MACH_PANDA
-	bool "Texas Instrument's Panda Board"
-	select ARCH_OMAP4
-	help
-	  Say Y here if you are using OMAP4 Panda board
-
-config MACH_ARCHOSG9
-	bool "Archos G9 tablets"
-	select ARCH_OMAP4
-	help
-	  Say Y here if you are using OMAP4-based Archos G9 tablet
-
-config MACH_PCM049
-	bool "Phytec phyCORE pcm049"
-	select ARCH_OMAP4
-	help
-	  Say Y here if you are using Phytecs phyCORE pcm049 board
-	  based on OMAP4
-
-config MACH_PCAAL1
-	bool "Phytec phyCARD-A-L1"
-	select ARCH_OMAP3
-	help
-	  Say Y here if you are using a phyCARD-A-L1 PCA-A-L1
-
-config MACH_PCAAXL2
-	bool "Phytec phyCARD XL2"
-	select ARCH_OMAP4
-	help
-	  Say Y here if you are using a phyCARD-A-XL1 PCA-A-XL1
-
-endchoice
-
-if ARCH_OMAP
-
-choice
-	prompt "Select UART"
-	default OMAP_UART3
-	depends on MACH_OMAP3EVM
-
-	config OMAP_UART1
-		bool "Use UART1"
-		depends on ARCH_OMAP
-		help
-		  Say Y here if you would like to use UART1 as console.
-
-	config OMAP_UART3
-		bool "Use UART3"
-		depends on ARCH_OMAP
-		help
-		  Say Y here if you would like to use UART3 as console.
-
-endchoice
-
-endif
-
-if MACH_PCM049
-	choice
-	prompt "Select DDR2-RAM Size"
-
-	config 512MB_DDR2RAM
-		bool "512MB"
-	config 1024MB_DDR2RAM
-		bool "1024MB"
-
-	endchoice
-endif
-
-config MACH_OMAP_ADVANCED_MUX
-	bool "Enable advanced pin muxing"
-	depends on MACH_OMAP343xSDP
-	default n
-	help
-	  Say Y here if you would like to have complete pin muxing to be
-	  done at boot time
-
 endmenu
-- 
2.39.2



