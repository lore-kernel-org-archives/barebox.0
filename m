Delivery-date: Thu, 02 Mar 2023 11:55:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgaX-006Ttm-Mh
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:55:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgaN-0005Al-Tc
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:55:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=UgApAhE5BdjP/WuQnSA9t0ricfpM+lCOQGMNZE/S2Xg=; b=HfoYZlF3hSgfsHs1ddEvHfLo8X
	ahlCLj5CwI0DiCtd7QAl2ZJD3hATRIDQvCi5HuRE6S/NC56ZekBSKF9nI1dW7SqhyTshIqeDhQZOp
	d2a6JtnSfbUxd3O7OTbvyaOrVzqDlMZ2i65nc4UcxiM0GH2ObsbO9frpGSWAvZqb+mkBsxdcp2uC5
	CALz82pHCDrE3N0aQmshve2O/mei5nDMMFmDM4jxAkfc2hFGkrbmkTZWk3S4W1OYP7sxRqwuWaZyU
	JNNwh36rnlzAvCxuAw7QZ8eWIfbTamH4LFljx98VtXeGpGzRPPAfMToWysmRvtv6+LCBsltQmgstT
	q9spma1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgYB-001l17-Sb; Thu, 02 Mar 2023 10:52:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgY1-001kwm-8u
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:52:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXz-0004sj-RF; Thu, 02 Mar 2023 11:52:28 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXz-001J7I-6o; Thu, 02 Mar 2023 11:52:27 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXy-003zCF-9z; Thu, 02 Mar 2023 11:52:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:52:23 +0100
Message-Id: <20230302105225.943524-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302105225.943524-1-s.hauer@pengutronix.de>
References: <20230302105225.943524-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX: Remove old boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This removes a bunch of old boards that nobody showed interest in
for a long time:

Freescale boards
================
MACH_IMX21ADS
MACH_IMX27ADS
MACH_FREESCALE_MX25_3STACK
MACH_FREESCALE_MX35_3STACK
MACH_FREESCALE_MX53_SMD

Eukrea boards
=============
MACH_EUKREA_CPUIMX25
MACH_EUKREA_CPUIMX27
MACH_EUKREA_CPUIMX35
MACH_EUKREA_CPUIMX51SD

Garz+Fricke boards
==================
MACH_NESO
MACH_GUF_CUPID

Phytec boards
=============
MACH_PCM037
MACH_PCM043

Amazon boards
=============
MACH_KINDLE3

All these boards have not been converted to device tree nor do they
support multi-image generation. As they are becoming a maintenance
burden remove them now.

A board can always be added back once it is ported to support the
recent barebox interfaces.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/Kconfig                              |   2 +
 arch/arm/Makefile                             |  17 -
 arch/arm/boards/Makefile                      |  14 -
 arch/arm/boards/eukrea_cpuimx25/Makefile      |   6 -
 .../defaultenv-eukrea_cpuimx25/bin/init_board |  41 --
 .../defaultenv-eukrea_cpuimx25/config         |  47 --
 .../boards/eukrea_cpuimx25/eukrea_cpuimx25.c  | 218 ---------
 .../eukrea_cpuimx25/flash-header.imxcfg       |  19 -
 arch/arm/boards/eukrea_cpuimx25/lowlevel.c    | 122 -----
 arch/arm/boards/eukrea_cpuimx27/Makefile      |   4 -
 .../boards/eukrea_cpuimx27/env/bin/_update    |  36 --
 arch/arm/boards/eukrea_cpuimx27/env/bin/boot  |  53 --
 arch/arm/boards/eukrea_cpuimx27/env/bin/init  |  43 --
 .../eukrea_cpuimx27/env/bin/update_kernel     |  15 -
 .../eukrea_cpuimx27/env/bin/update_root       |  16 -
 arch/arm/boards/eukrea_cpuimx27/env/config    |  36 --
 .../boards/eukrea_cpuimx27/eukrea_cpuimx27.c  | 240 ---------
 .../boards/eukrea_cpuimx27/lowlevel_init.S    | 136 ------
 arch/arm/boards/eukrea_cpuimx35/Makefile      |   6 -
 .../defaultenv-eukrea_cpuimx35/bin/init_board |  41 --
 .../defaultenv-eukrea_cpuimx35/config         |  47 --
 .../boards/eukrea_cpuimx35/eukrea_cpuimx35.c  | 346 -------------
 .../eukrea_cpuimx35/flash-header.imxcfg       |  21 -
 arch/arm/boards/eukrea_cpuimx35/lowlevel.c    | 128 -----
 arch/arm/boards/eukrea_cpuimx51/Makefile      |   5 -
 .../defaultenv-eukrea_cpuimx51/bin/init_board |  20 -
 .../defaultenv-eukrea_cpuimx51/config         |  50 --
 .../boards/eukrea_cpuimx51/eukrea_cpuimx51.c  | 134 ------
 .../eukrea_cpuimx51/flash-header.imxcfg       |  61 ---
 arch/arm/boards/eukrea_cpuimx51/lowlevel.c    |  13 -
 arch/arm/boards/freescale-mx21-ads/Makefile   |   4 -
 .../boards/freescale-mx21-ads/env/bin/init    |   1 -
 arch/arm/boards/freescale-mx21-ads/imx21ads.c | 180 -------
 .../boards/freescale-mx21-ads/lowlevel_init.S | 131 -----
 arch/arm/boards/freescale-mx25-3ds/3stack.c   | 210 --------
 arch/arm/boards/freescale-mx25-3ds/Makefile   |   6 -
 .../defaultenv-freescale-mx25-3ds/bin/_update |  36 --
 .../defaultenv-freescale-mx25-3ds/bin/boot    |  47 --
 .../defaultenv-freescale-mx25-3ds/bin/init    |  26 -
 .../bin/update_kernel                         |  15 -
 .../bin/update_root                           |  16 -
 .../defaultenv-freescale-mx25-3ds/config      |  29 --
 .../freescale-mx25-3ds/flash-header.imxcfg    |  44 --
 .../boards/freescale-mx25-3ds/lowlevel_init.S | 213 --------
 arch/arm/boards/freescale-mx27-ads/Makefile   |   4 -
 .../boards/freescale-mx27-ads/env/bin/_update |  36 --
 .../boards/freescale-mx27-ads/env/bin/boot    |  38 --
 .../boards/freescale-mx27-ads/env/bin/init    |  20 -
 .../freescale-mx27-ads/env/bin/update_kernel  |   8 -
 .../freescale-mx27-ads/env/bin/update_root    |   8 -
 arch/arm/boards/freescale-mx27-ads/env/config |  25 -
 arch/arm/boards/freescale-mx27-ads/imx27ads.c | 110 -----
 .../boards/freescale-mx27-ads/lowlevel_init.S | 116 -----
 arch/arm/boards/freescale-mx35-3ds/3stack.c   | 454 ------------------
 arch/arm/boards/freescale-mx35-3ds/Makefile   |   5 -
 .../freescale-mx35-3ds/board-mx35_3stack.h    |  86 ----
 .../defaultenv-freescale-mx35-3ds/config      |  51 --
 .../freescale-mx35-3ds/flash-header.imxcfg    |  36 --
 .../boards/freescale-mx35-3ds/lowlevel_init.S | 241 ----------
 arch/arm/boards/freescale-mx53-smd/Makefile   |   5 -
 arch/arm/boards/freescale-mx53-smd/board.c    | 156 ------
 .../defaultenv-freescale-mx53-smd/config      |  45 --
 .../freescale-mx53-smd/flash-header.imxcfg    |  56 ---
 arch/arm/boards/freescale-mx53-smd/lowlevel.c |  14 -
 arch/arm/boards/guf-cupid/Makefile            |   6 -
 arch/arm/boards/guf-cupid/board.c             | 339 -------------
 .../guf-cupid/defaultenv-guf-cupid/config     |  50 --
 arch/arm/boards/guf-cupid/lowlevel.c          | 301 ------------
 arch/arm/boards/guf-neso/Makefile             |   6 -
 arch/arm/boards/guf-neso/board.c              | 318 ------------
 .../guf-neso/defaultenv-guf-neso/config       |  47 --
 arch/arm/boards/guf-neso/lowlevel.c           |  81 ----
 arch/arm/boards/guf-neso/pll_init.S           |  53 --
 arch/arm/boards/kindle3/Makefile              |   4 -
 arch/arm/boards/kindle3/env/boot/mmc_kernel   |   7 -
 arch/arm/boards/kindle3/env/init/serials      |  21 -
 arch/arm/boards/kindle3/env/init/usbconsole   |   8 -
 .../boards/kindle3/env/nv/autoboot_timeout    |   1 -
 arch/arm/boards/kindle3/env/nv/boot.default   |   1 -
 .../boards/kindle3/env/nv/linux.bootargs.base |   1 -
 .../kindle3/env/nv/linux.bootargs.console     |   1 -
 .../boards/kindle3/env/nv/linux.bootargs.lpj  |   1 -
 arch/arm/boards/kindle3/flash-header.imxcfg   |  26 -
 arch/arm/boards/kindle3/kindle3.c             | 304 ------------
 arch/arm/boards/kindle3/lowlevel.c            | 127 -----
 arch/arm/boards/phytec-phycore-imx31/Makefile |   5 -
 .../phytec-phycore-imx31/env/boot/nand-ubi    |   5 -
 .../env/init/mtdparts-nand                    |   6 -
 .../env/init/mtdparts-nor                     |   6 -
 .../boards/phytec-phycore-imx31/lowlevel.c    | 118 -----
 arch/arm/boards/phytec-phycore-imx31/pcm037.c | 240 ---------
 arch/arm/boards/phytec-phycore-imx35/Makefile |   5 -
 .../phytec-phycore-imx35/env/boot/nand-ubi    |   5 -
 .../env/init/mtdparts-nand                    |   6 -
 .../env/init/mtdparts-nor                     |   6 -
 .../phytec-phycore-imx35/flash-header.imxcfg  |  39 --
 .../boards/phytec-phycore-imx35/lowlevel.c    | 179 -------
 arch/arm/boards/phytec-phycore-imx35/pcm043.c | 313 ------------
 arch/arm/configs/cupid_defconfig              |  70 ---
 arch/arm/configs/eukrea_cpuimx25_defconfig    |  87 ----
 arch/arm/configs/eukrea_cpuimx27_defconfig    |  53 --
 arch/arm/configs/eukrea_cpuimx35_defconfig    |  95 ----
 arch/arm/configs/eukrea_cpuimx51_defconfig    |  68 ---
 arch/arm/configs/freescale-mx25-3ds_defconfig |  56 ---
 arch/arm/configs/freescale-mx27-ads_defconfig |  35 --
 arch/arm/configs/freescale-mx35-3ds_defconfig |  62 ---
 arch/arm/configs/freescale-mx53-smd_defconfig |  61 ---
 arch/arm/configs/kindle3_defconfig            |  67 ---
 arch/arm/configs/neso_defconfig               |  68 ---
 .../configs/phytec-phycore-imx31_defconfig    |  82 ----
 .../configs/phytec-phycore-imx35_defconfig    |  86 ----
 arch/arm/mach-imx/Kconfig                     | 237 ---------
 112 files changed, 2 insertions(+), 8170 deletions(-)
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/Makefile
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/bin/init_board
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/config
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx25/lowlevel.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/Makefile
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/bin/_update
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/bin/boot
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/bin/init
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/bin/update_root
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/env/config
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/Makefile
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/bin/init_board
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/config
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx35/lowlevel.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/Makefile
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/bin/init_board
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/config
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/eukrea_cpuimx51/lowlevel.c
 delete mode 100644 arch/arm/boards/freescale-mx21-ads/Makefile
 delete mode 100644 arch/arm/boards/freescale-mx21-ads/env/bin/init
 delete mode 100644 arch/arm/boards/freescale-mx21-ads/imx21ads.c
 delete mode 100644 arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/3stack.c
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/Makefile
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/_update
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/boot
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/init
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_kernel
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_root
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/config
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/Makefile
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/env/bin/_update
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/env/bin/boot
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/env/bin/init
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/env/bin/update_root
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/env/config
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/imx27ads.c
 delete mode 100644 arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/3stack.c
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/Makefile
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/board-mx35_3stack.h
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/defaultenv-freescale-mx35-3ds/config
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/Makefile
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/board.c
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/defaultenv-freescale-mx53-smd/config
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/freescale-mx53-smd/lowlevel.c
 delete mode 100644 arch/arm/boards/guf-cupid/Makefile
 delete mode 100644 arch/arm/boards/guf-cupid/board.c
 delete mode 100644 arch/arm/boards/guf-cupid/defaultenv-guf-cupid/config
 delete mode 100644 arch/arm/boards/guf-cupid/lowlevel.c
 delete mode 100644 arch/arm/boards/guf-neso/Makefile
 delete mode 100644 arch/arm/boards/guf-neso/board.c
 delete mode 100644 arch/arm/boards/guf-neso/defaultenv-guf-neso/config
 delete mode 100644 arch/arm/boards/guf-neso/lowlevel.c
 delete mode 100644 arch/arm/boards/guf-neso/pll_init.S
 delete mode 100644 arch/arm/boards/kindle3/Makefile
 delete mode 100644 arch/arm/boards/kindle3/env/boot/mmc_kernel
 delete mode 100644 arch/arm/boards/kindle3/env/init/serials
 delete mode 100644 arch/arm/boards/kindle3/env/init/usbconsole
 delete mode 100644 arch/arm/boards/kindle3/env/nv/autoboot_timeout
 delete mode 100644 arch/arm/boards/kindle3/env/nv/boot.default
 delete mode 100644 arch/arm/boards/kindle3/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/kindle3/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj
 delete mode 100644 arch/arm/boards/kindle3/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/kindle3/kindle3.c
 delete mode 100644 arch/arm/boards/kindle3/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycore-imx31/pcm037.c
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/lowlevel.c
 delete mode 100644 arch/arm/boards/phytec-phycore-imx35/pcm043.c
 delete mode 100644 arch/arm/configs/cupid_defconfig
 delete mode 100644 arch/arm/configs/eukrea_cpuimx25_defconfig
 delete mode 100644 arch/arm/configs/eukrea_cpuimx27_defconfig
 delete mode 100644 arch/arm/configs/eukrea_cpuimx35_defconfig
 delete mode 100644 arch/arm/configs/eukrea_cpuimx51_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx25-3ds_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx27-ads_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx35-3ds_defconfig
 delete mode 100644 arch/arm/configs/freescale-mx53-smd_defconfig
 delete mode 100644 arch/arm/configs/kindle3_defconfig
 delete mode 100644 arch/arm/configs/neso_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-imx31_defconfig
 delete mode 100644 arch/arm/configs/phytec-phycore-imx35_defconfig

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a0a6ae9c75..c5645c540e 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -104,6 +104,8 @@ config ARCH_IMX
 	select CLKDEV_LOOKUP
 	select WATCHDOG_IMX_RESET_SOURCE
 	select HAS_DEBUG_LL
+	select HAVE_PBL_MULTI_IMAGES
+	select RELOCATABLE
 
 config ARCH_LAYERSCAPE
 	bool "NXP Layerscape based"
diff --git a/arch/arm/Makefile b/arch/arm/Makefile
index 55b3195310..861b726496 100644
--- a/arch/arm/Makefile
+++ b/arch/arm/Makefile
@@ -228,23 +228,6 @@ ifeq ($(CONFIG_ARCH_MVEBU),y)
 KBUILD_IMAGE  := barebox.kwb barebox.kwbuart
 endif
 
-barebox.imximg: $(KBUILD_BINARY) FORCE
-	$(call if_changed,imx_image,$(CFG_$(@F)),)
-
-boarddir = $(srctree)/arch/arm/boards
-imxcfg-$(CONFIG_MACH_FREESCALE_MX53_SMD) += $(boarddir)/freescale-mx53-smd/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX51SD) += $(boarddir)/eukrea_cpuimx51/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_FREESCALE_MX25_3STACK) += $(boarddir)/freescale-mx25-3ds/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_FREESCALE_MX35_3STACK) += $(boarddir)/freescale-mx35-3ds/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX25) += $(boarddir)/eukrea_cpuimx25/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_EUKREA_CPUIMX35) += $(boarddir)/eukrea_cpuimx35/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_PCM043) += $(boarddir)/phytec-phycore-imx35/flash-header.imxcfg
-imxcfg-$(CONFIG_MACH_KINDLE3) += $(boarddir)/kindle3/flash-header.imxcfg
-ifneq ($(imxcfg-y),)
-CFG_barebox.imximg := $(imxcfg-y)
-KBUILD_IMAGE  := barebox.imximg
-endif
-
 archclean:
 	$(MAKE) $(clean)=$(pbl)
 
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 671f07c7bc..828852c596 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -41,16 +41,9 @@ obj-$(CONFIG_MACH_EFIKA_MX_SMARTBOOK)		+= efika-mx-smartbook/
 obj-$(CONFIG_MACH_EMBEDSKY_E9)			+= embedsky-e9/
 obj-$(CONFIG_MACH_EMBEST_MARSBOARD)		+= embest-marsboard/
 obj-$(CONFIG_MACH_EMBEST_RIOTBOARD)		+= embest-riotboard/
-obj-$(CONFIG_MACH_EUKREA_CPUIMX25)		+= eukrea_cpuimx25/
-obj-$(CONFIG_MACH_EUKREA_CPUIMX27)		+= eukrea_cpuimx27/
-obj-$(CONFIG_MACH_EUKREA_CPUIMX35)		+= eukrea_cpuimx35/
-obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
 obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
-obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
-obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
 obj-y						+= freescale-mx51-babbage/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
-obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
 obj-$(CONFIG_MACH_FREESCALE_MX7_SABRESD)	+= freescale-mx7-sabresd/
 obj-$(CONFIG_MACH_MEERKAT96)			+= meerkat96/
@@ -59,17 +52,13 @@ obj-$(CONFIG_MACH_GK802)			+= gk802/
 obj-$(CONFIG_MACH_GLOBALSCALE_GURUPLUG)		+= globalscale-guruplug/
 obj-$(CONFIG_MACH_GLOBALSCALE_MIRABOX)		+= globalscale-mirabox/
 obj-$(CONFIG_MACH_GRINN_LITEBOARD)		+= grinn-liteboard/
-obj-$(CONFIG_MACH_GUF_CUPID)			+= guf-cupid/
 obj-$(CONFIG_MACH_GUF_SANTARO)			+= guf-santaro/
 obj-$(CONFIG_MACH_GUF_VINCELL)			+= guf-vincell/
 obj-$(CONFIG_MACH_GW_VENTANA)			+= gateworks-ventana/
 obj-$(CONFIG_MACH_HABA_KNX_LITE)		+= haba-knx/
-obj-$(CONFIG_MACH_IMX21ADS)			+= freescale-mx21-ads/
 obj-$(CONFIG_MACH_IMX233_OLINUXINO)		+= imx233-olinuxino/
-obj-$(CONFIG_MACH_IMX27ADS)			+= freescale-mx27-ads/
 obj-$(CONFIG_MACH_INNOCOMM_WB15)			+= innocomm-imx8mm-wb15/
 obj-$(CONFIG_MACH_KAMSTRUP_MX7_CONCENTRATOR)	+= kamstrup-mx7-concentrator/
-obj-$(CONFIG_MACH_KINDLE3)			+= kindle3/
 obj-$(CONFIG_MACH_KONTRON_SAMX6I)		+= kontron-samx6i/
 obj-$(CONFIG_MACH_LENOVO_IX4_300D)		+= lenovo-ix4-300d/
 obj-$(CONFIG_MACH_LUBBOCK)			+= lubbock/
@@ -81,7 +70,6 @@ obj-$(CONFIG_MACH_MIOA701)			+= mioa701/
 obj-$(CONFIG_MACH_MX23EVK)			+= freescale-mx23-evk/
 obj-$(CONFIG_MACH_MX28EVK)			+= freescale-mx28-evk/
 obj-$(CONFIG_MACH_MYIRTECH_X335X)		+= myirtech-x335x/
-obj-$(CONFIG_MACH_NESO)				+= guf-neso/
 obj-$(CONFIG_MACH_NETGEAR_RN104)		+= netgear-rn104/
 obj-$(CONFIG_MACH_NETGEAR_RN2120)		+= netgear-rn2120/
 obj-$(CONFIG_MACH_NOMADIK_8815NHK)		+= nhk8815/
@@ -99,9 +87,7 @@ obj-$(CONFIG_MACH_PANDA)			+= panda/
 obj-$(CONFIG_MACH_PCA100)			+= phytec-phycard-imx27/
 obj-$(CONFIG_MACH_PCAAL1)			+= phytec-phycard-omap3/
 obj-$(CONFIG_MACH_PCAAXL2)			+= phytec-phycard-omap4/
-obj-$(CONFIG_MACH_PCM037)			+= phytec-phycore-imx31/
 obj-$(CONFIG_MACH_PCM038)			+= phytec-phycore-imx27/
-obj-$(CONFIG_MACH_PCM043)			+= phytec-phycore-imx35/
 obj-$(CONFIG_MACH_PCM049)			+= phytec-phycore-omap4460/
 obj-$(CONFIG_MACH_PHYTEC_SOM_AM335X)		+= phytec-som-am335x/
 obj-$(CONFIG_MACH_PHYTEC_SOM_IMX6)		+= phytec-som-imx6/
diff --git a/arch/arm/boards/eukrea_cpuimx25/Makefile b/arch/arm/boards/eukrea_cpuimx25/Makefile
deleted file mode 100644
index 1d2171fbdc..0000000000
--- a/arch/arm/boards/eukrea_cpuimx25/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2010 Eric Bénard <eric@eukrea.com>, Eukrea Electromatique
-
-obj-y += eukrea_cpuimx25.o
-lwl-y += lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx25
diff --git a/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/bin/init_board b/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/bin/init_board
deleted file mode 100644
index 8f4151c357..0000000000
--- a/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/bin/init_board
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/sh
-
-if [ -f /env/logo.bmp ]; then
-	splash /env/logo.bmp
-	fb0.enable=1
-elif [ -f /env/logo.bmp.lzo ]; then
-	uncompress /env/logo.bmp.lzo /logo.bmp
-	splash /logo.bmp
-	fb0.enable=1
-fi
-
-if [ ! -z $use_dfu ]; then
-	gpio_get_value 82
-	if [ $? -eq 0 ]; then
-		gpio_set_value 83 0
-		usbserial
-		timeout -s -a 2
-		gpio_get_value 82
-		if [ $? -eq 0 ]; then
-			usbserial -d
-			dfu -V 0x1234 -P 0x1234 /dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.root.bb(root)r
-			gpio_get_value 82
-			if [ $? -eq 0 ]; then
-				usbserial
-				autoboot_timeout=60
-			else
-				reset
-			fi
-		else
-			autoboot_timeout=28
-		fi
-	fi
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-	saveenv
-fi
diff --git a/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/config b/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/config
deleted file mode 100644
index da19677574..0000000000
--- a/arch/arm/boards/eukrea_cpuimx25/defaultenv-eukrea_cpuimx25/config
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-# otg port mode : can be 'host' or 'device'
-otg_mode="device"
-# video : can be CMO-QVGA, URT-WVGA, DVI-VGA or DVI-SVGA
-video="CMO-QVGA"
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=none
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=nand
-# can be either 'net', 'nand' or 'initrd'
-rootfs_loc=nand
-
-# rootfs
-rootfs_type=ubifs
-rootfsimage=${global.hostname}/rootfs.$rootfs_type
-
-# kernel
-kernelimage=${global.hostname}/uImage-${global.hostname}.bin
-
-# barebox and it's env
-bareboximage=${global.hostname}/barebox-${global.hostname}.bin
-bareboxenvimage=${global.hostname}/bareboxenv-${global.hostname}.bin
-
-nfsroot="$eth0.serverip:/srv/nfs/${global.hostname}"
-
-autoboot_timeout=1
-
-bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=imxfb:$video"
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
-rootfs_mtdblock_nand=3
-nand_device="mxc_nand"
-ubiroot="${global.hostname}-rootfs"
-device_type="nand"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c b/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
deleted file mode 100644
index b24d85b8bc..0000000000
--- a/arch/arm/boards/eukrea_cpuimx25/eukrea_cpuimx25.c
+++ /dev/null
@@ -1,218 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2010 Eric Bénard <eric@eukrea.com>, Eukrea Electromatique
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <gpio.h>
-#include <environment.h>
-#include <mach/imx25-regs.h>
-#include <asm/armlinux.h>
-#include <asm/barebox-arm.h>
-#include <asm/sections.h>
-#include <io.h>
-#include <asm/mmu.h>
-#include <led.h>
-#include <envfs.h>
-
-#include <generated/mach-types.h>
-#include <mach/imx-nand.h>
-#include <platform_data/imxfb.h>
-#include <mach/iim.h>
-#include <platform_data/eth-fec.h>
-#include <nand.h>
-#include <mach/iomux-mx25.h>
-#include <i2c/i2c.h>
-#include <usb/fsl_usb2.h>
-#include <mach/usb.h>
-#include <mach/devices-imx25.h>
-#include <asm/barebox-arm-head.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type	= PHY_INTERFACE_MODE_RMII,
-	.phy_addr	= 0,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width	= 1,
-	.hw_ecc	= 1,
-};
-
-static struct fb_videomode imxfb_mode = {
-	.name		= "CMO-QVGA",
-	.refresh	= 60,
-	.xres		= 320,
-	.yres		= 240,
-	.pixclock	= KHZ2PICOS(6500),
-	.hsync_len	= 30,
-	.left_margin	= 38,
-	.right_margin	= 20,
-	.vsync_len	= 3,
-	.upper_margin	= 15,
-	.lower_margin	= 4,
-};
-
-static struct imx_fb_platform_data eukrea_cpuimx25_fb_data = {
-	.mode		= &imxfb_mode,
-	.num_modes	= 1,
-	.pwmr		= 0x00A903FF,
-	.lscr1		= 0x00120300,
-	.dmacr		= 0x80040060,
-	.pcr		= 0xCAD08B80,
-	.bpp		= 16,
-};
-
-struct gpio_led led0 = {
-	.gpio = 2 * 32 + 19,
-	.active_low = 1,
-};
-
-static iomux_v3_cfg_t eukrea_cpuimx25_pads[] = {
-	MX25_PAD_FEC_MDC__FEC_MDC,
-	MX25_PAD_FEC_MDIO__FEC_MDIO,
-	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
-	MX25_PAD_FEC_RDATA1__FEC_RDATA1,
-	MX25_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX25_PAD_FEC_TDATA0__FEC_TDATA0,
-	MX25_PAD_FEC_TDATA1__FEC_TDATA1,
-	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
-	MX25_PAD_FEC_TX_EN__FEC_TX_EN,
-	/* UART1 */
-	MX25_PAD_UART1_RXD__UART1_RXD,
-	MX25_PAD_UART1_TXD__UART1_TXD,
-	MX25_PAD_UART1_RTS__UART1_RTS,
-	MX25_PAD_UART1_CTS__UART1_CTS,
-	/* LCDC */
-	MX25_PAD_LD0__LD0,
-	MX25_PAD_LD1__LD1,
-	MX25_PAD_LD2__LD2,
-	MX25_PAD_LD3__LD3,
-	MX25_PAD_LD4__LD4,
-	MX25_PAD_LD5__LD5,
-	MX25_PAD_LD6__LD6,
-	MX25_PAD_LD7__LD7,
-	MX25_PAD_LD8__LD8,
-	MX25_PAD_LD9__LD9,
-	MX25_PAD_LD10__LD10,
-	MX25_PAD_LD11__LD11,
-	MX25_PAD_LD12__LD12,
-	MX25_PAD_LD13__LD13,
-	MX25_PAD_LD14__LD14,
-	MX25_PAD_LD15__LD15,
-	MX25_PAD_GPIO_E__LD16,
-	MX25_PAD_GPIO_F__LD17,
-	MX25_PAD_LSCLK__LSCLK,
-	MX25_PAD_OE_ACD__OE_ACD,
-	MX25_PAD_VSYNC__VSYNC,
-	MX25_PAD_HSYNC__HSYNC,
-	/* BACKLIGHT CONTROL */
-	MX25_PAD_PWM__GPIO_1_26,
-	/* I2C */
-	MX25_PAD_I2C1_CLK__I2C1_CLK,
-	MX25_PAD_I2C1_DAT__I2C1_DAT,
-	/* SDCard */
-	MX25_PAD_SD1_CLK__SD1_CLK,
-	MX25_PAD_SD1_CMD__SD1_CMD,
-	MX25_PAD_SD1_DATA0__SD1_DATA0,
-	MX25_PAD_SD1_DATA1__SD1_DATA1,
-	MX25_PAD_SD1_DATA2__SD1_DATA2,
-	MX25_PAD_SD1_DATA3__SD1_DATA3,
-	/* LED */
-	MX25_PAD_POWER_FAIL__GPIO_3_19,
-	/* SWITCH */
-	MX25_PAD_VSTBY_ACK__GPIO_3_18,
-};
-
-#ifdef CONFIG_USB
-#ifndef CONFIG_USB_GADGET
-struct imxusb_platformdata otg_pdata = {
-	.flags = MXC_EHCI_INTERFACE_DIFF_UNI,
-	.mode = USB_DR_MODE_HOST,
-	.phymode = USBPHY_INTERFACE_MODE_UTMI,
-};
-#endif
-
-struct imxusb_platformdata hs_pdata = {
-	.flags = MXC_EHCI_INTERFACE_SINGLE_UNI | MXC_EHCI_INTERNAL_PHY | MXC_EHCI_IPPUE_DOWN,
-	.mode = USB_DR_MODE_HOST,
-};
-#endif
-
-#ifdef CONFIG_USB_GADGET
-static struct fsl_usb2_platform_data usb_pdata = {
-	.operating_mode	= FSL_USB2_DR_DEVICE,
-	.phy_mode	= FSL_USB2_PHY_UTMI,
-};
-#endif
-
-static int eukrea_cpuimx25_devices_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx25_pads,
-		ARRAY_SIZE(eukrea_cpuimx25_pads));
-
-	led_gpio_register(&led0);
-
-	imx25_iim_register_fec_ethaddr();
-	imx25_add_fec(&fec_info);
-
-	nand_info.width = 1;
-	imx25_add_nand(&nand_info);
-
-	devfs_add_partition("nand0", 0x00000, 0x40000,
-		DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-
-	devfs_add_partition("nand0", 0x40000, 0x20000,
-		DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	/* enable LCD */
-	gpio_direction_output(26, 1);
-	gpio_set_value(26, 1);
-
-	/* LED : default OFF */
-	gpio_direction_output(2 * 32 + 19, 1);
-
-	/* Switch : input */
-	gpio_direction_input(2 * 32 + 18);
-
-	imx25_add_fb(&eukrea_cpuimx25_fb_data);
-
-#ifdef CONFIG_USB_GADGET
-	/* Workaround ENGcm09152 */
-	writel(readl(MX25_USB_OTG_BASE_ADDR + 0x608) | (1 << 23), MX25_USB_OTG_BASE_ADDR + 0x608);
-	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, MX25_USB_OTG_BASE_ADDR, 0x200,
-			   IORESOURCE_MEM, &usb_pdata);
-#endif
-
-#ifdef CONFIG_USB
-#ifndef CONFIG_USB_GADGET
-	imx_add_usb((void *)MX25_USB_OTG_BASE_ADDR, 0, &otg_pdata);
-#endif
-	imx_add_usb((void *)MX25_USB_HS_BASE_ADDR, 1, &hs_pdata);
-#endif
-
-	imx25_add_mmc0(NULL);
-	imx25_add_i2c0(NULL);
-
-	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX25SD);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_eukrea_cpuimx25);
-
-	return 0;
-}
-
-device_initcall(eukrea_cpuimx25_devices_init);
-
-static int eukrea_cpuimx25_console_init(void)
-{
-	barebox_set_model("Eukrea CPUIMX25");
-	barebox_set_hostname("eukrea-cpuimx25");
-
-	imx25_add_uart0();
-	return 0;
-}
-
-console_initcall(eukrea_cpuimx25_console_init);
diff --git a/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
deleted file mode 100644
index 00417ddded..0000000000
--- a/arch/arm/boards/eukrea_cpuimx25/flash-header.imxcfg
+++ /dev/null
@@ -1,19 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-soc imx25
-loadaddr 0x80000000
-ivtofs 0x400
-
-wm 32 0xb8001008 0x00000000
-wm 32 0xb8001010 0x00000004
-wm 32 0xb8001000 0x92100000
-wm 8 0x80000400 0x12344321
-wm 32 0xb8001000 0xa2100000
-wm 32 0x80000000 0x12344321
-wm 32 0x80000000 0x12344321
-wm 32 0xb8001000 0xb2100000
-wm 8 0x80000033 0xda
-wm 8 0x81000000 0xff
-wm 32 0xb8001000 0x82216080
-wm 32 0xb8001004 0x00295729
-wm 32 0x53f80008 0x20034000
diff --git a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c b/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
deleted file mode 100644
index 93cd64d90f..0000000000
--- a/arch/arm/boards/eukrea_cpuimx25/lowlevel.c
+++ /dev/null
@@ -1,122 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2010 Eric Bénard <eric@eukrea.com>, Eukrea Electromatique
-
-#include <common.h>
-#include <init.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/sections.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/system.h>
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	uint32_t r;
-	register uint32_t loops = 0x20000;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE);
-
-	/* restart the MPLL and wait until it's stable */
-	writel(readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) | (1 << 27),
-			MX25_CCM_BASE_ADDR + MX25_CCM_CCTL);
-	while (readl(MX25_CCM_BASE_ADDR + MX25_CCM_CCTL) & (1 << 27)) {};
-
-	/* Configure dividers and ARM clock source
-	 * 	ARM @ 400 MHz
-	 * 	AHB @ 133 MHz
-	 */
-	writel(0x20034000, MX25_CCM_BASE_ADDR + MX25_CCM_CCTL);
-
-	/* Enable UART1 / FEC / */
-/*	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR0);
-	writel(0xFFFFFFFF, MX25_CCM_BASE_ADDR + CCM_CGCR1);
-	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + CCM_CGCR2);*/
-
-	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, 0x43f00000);
-	writel(0x77777777, 0x43f00004);
-	writel(0x77777777, 0x53f00000);
-	writel(0x77777777, 0x53f00004);
-
-	/* MAX (Multi-Layer AHB Crossbar Switch) setup
-	 * MPR - priority for MX25 is (SDHC2/SDMA)>USBOTG>RTIC>IAHB>DAHB
-	 */
-	writel(0x00002143, 0x43f04000);
-	writel(0x00002143, 0x43f04100);
-	writel(0x00002143, 0x43f04200);
-	writel(0x00002143, 0x43f04300);
-	writel(0x00002143, 0x43f04400);
-	/* SGPCR - always park on last master */
-	writel(0x10, 0x43f04010);
-	writel(0x10, 0x43f04110);
-	writel(0x10, 0x43f04210);
-	writel(0x10, 0x43f04310);
-	writel(0x10, 0x43f04410);
-	/* MGPCR - restore default values */
-	writel(0x0, 0x43f04800);
-	writel(0x0, 0x43f04900);
-	writel(0x0, 0x43f04a00);
-	writel(0x0, 0x43f04b00);
-	writel(0x0, 0x43f04c00);
-
-	/* Configure M3IF registers
-	 * M3IF Control Register (M3IFCTL) for MX25
-	 * MRRP[0] = LCDC           on priority list (1 << 0)  = 0x00000001
-	 * MRRP[1] = MAX1       not on priority list (0 << 1)  = 0x00000000
-	 * MRRP[2] = MAX0       not on priority list (0 << 2)  = 0x00000000
-	 * MRRP[3] = USB HOST   not on priority list (0 << 3)  = 0x00000000
-	 * MRRP[4] = SDMA       not on priority list (0 << 4)  = 0x00000000
-	 * MRRP[5] = SD/ATA/FEC not on priority list (0 << 5)  = 0x00000000
-	 * MRRP[6] = SCMFBC     not on priority list (0 << 6)  = 0x00000000
-	 * MRRP[7] = CSI        not on priority list (0 << 7)  = 0x00000000
-	 *                                                       ----------
-	 *                                                       0x00000001
-	 */
-	writel(0x1, 0xb8003000);
-
-	/* Speed up NAND controller by adjusting the NFC divider */
-	r = readl(MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
-	r &= ~0xf;
-	r |= 0x1;
-	writel(r, MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (r > 0x80000000 && r < 0x90000000)
-		goto out;
-
-	/* Init Mobile DDR */
-	writel(0x0000000E, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	writel(0x00000004, MX25_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	__asm__ volatile ("1:\n"
-			"subs %0, %1, #1\n"
-			"bne 1b":"=r" (loops):"0" (loops));
-
-	writel(0x0029572B, MX25_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
-	writel(0x92210000, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x400);
-	writel(0xA2210000, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX25_CSD0_BASE_ADDR);
-	writeb(0xda, MX25_CSD0_BASE_ADDR);
-	writel(0xB2210000, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x33);
-	writeb(0xda, MX25_CSD0_BASE_ADDR + 0x1000000);
-	writel(0x82216080, MX25_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx25_barebox_boot_nand_external();
-
-out:
-	imx25_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/eukrea_cpuimx27/Makefile b/arch/arm/boards/eukrea_cpuimx27/Makefile
deleted file mode 100644
index 6b6de4e87d..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-lwl-y += lowlevel_init.o
-obj-y += eukrea_cpuimx27.o
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/_update b/arch/arm/boards/eukrea_cpuimx27/env/bin/_update
deleted file mode 100644
index 014bce3512..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-unprotect $part
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/boot b/arch/arm/boards/eukrea_cpuimx27/env/bin/boot
deleted file mode 100644
index 0e1c80a932..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/boot
+++ /dev/null
@@ -1,53 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xnand ]; then
-	root=nand
-	kernel=nand
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$1 = xnor ]; then
-	root=nor
-	kernel=nor
-fi
-
-if [ x$root = xnet ]; then
-	if [ x$ip = xdhcp ]; then
-		bootargs="$bootargs ip=dhcp"
-	else
-		bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-	fi
-else
-	bootargs="$bootargs ip=off"
-fi
-
-if [ x$rootfstype = xubifs ]; then
-	bootargs="$bootargs root=ubi0:$ubiroot ubi.mtd=$rootpartnum rootfstype=ubifs"
-else
-	if [ x$root = xnand ]; then
-		bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
-	elif [ x$root = xnor ]; then
-		bootargs="$bootargs root=$rootpart_nor rootfstype=jffs2"
-	fi
-fi
-
-bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts;mxc_nand:$nand_parts"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage || exit 1
-	bootm uImage
-elif [ $kernel = nor ]; then
-	bootm /dev/nor0.kernel
-else
-	bootm /dev/nand0.kernel.bb
-fi
-
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/init b/arch/arm/boards/eukrea_cpuimx27/env/bin/init
deleted file mode 100644
index e3c109135a..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/init
+++ /dev/null
@@ -1,43 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-if [ -e /dev/nor0 ]; then
-	addpart /dev/nor0 $nor_parts
-fi
-
-if [ -e /dev/nand0 ]; then
-	addpart /dev/nand0 $nand_parts
-fi
-
-if [ -f /env/logo.bmp ]; then
-	splash /env/logo.bmp
-	fb0.enable=1
-elif [ -f /env/logo.bmp.lzo ]; then
-	uncompress /env/logo.bmp.lzo /logo.bmp
-	splash /logo.bmp
-	fb0.enable=1
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-	saveenv
-fi
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
-	echo "type update_root nand|nor [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/update_kernel b/arch/arm/boards/eukrea_cpuimx27/env/bin/update_kernel
deleted file mode 100644
index 05c822d860..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/update_kernel
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.kernel.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.kernel
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/bin/update_root b/arch/arm/boards/eukrea_cpuimx27/env/bin/update_root
deleted file mode 100644
index eaf36ebcea..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/bin/update_root
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.root.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.root
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
-
diff --git a/arch/arm/boards/eukrea_cpuimx27/env/config b/arch/arm/boards/eukrea_cpuimx27/env/config
deleted file mode 100644
index 7f5600339f..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/env/config
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-# can be either 'net', 'nor' or 'nand''
-kernel=nor
-root=nor
-rootfstype=ubifs
-
-basedir=cpuimx27
-uimage=$basedir/uImage
-rootfs=$basedir/rootfs
-
-autoboot_timeout=1
-
-# DVI-SVGA DVI-VGA CMO-QVGA
-video="CMO-QVGA"
-bootargs="console=ttymxc0,115200 fec_mac=$eth0.ethaddr video=mxcfb:$video"
-
-nor_parts="256k(barebox)ro,128k(bareboxenv),2432k(kernel),-(root)"
-rootpart_nor="/dev/mtdblock3"
-
-nand_parts="-(nand)"
-rootpart_nand=""
-
-rootpartnum=3
-ubiroot="eukrea-cpuimx27-rootfs"
-
-nfsroot=""
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-ip=dhcp
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
diff --git a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c b/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
deleted file mode 100644
index bb5ef52793..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/eukrea_cpuimx27.c
+++ /dev/null
@@ -1,240 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-/*
- * Copyright (C) 2009 Eric Benard, Eukrea Electromatique
- * Based on pcm038.c which is :
- * Copyright (C) 2007 Sascha Hauer, Pengutronix
- */
-
-#include <common.h>
-#include <errno.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx27-regs.h>
-#include <notifier.h>
-#include <gpio.h>
-#include <asm/armlinux.h>
-#include <asm/sections.h>
-#include <asm/barebox-arm.h>
-#include <generated/mach-types.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <nand.h>
-#include <command.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <mach/imx-pll.h>
-#include <mach/weim.h>
-#include <platform_data/imxfb.h>
-#include <platform_data/serial-ns16550.h>
-#include <asm/mmu.h>
-#include <i2c/i2c.h>
-#include <mfd/lp3972.h>
-#include <mach/iomux-mx27.h>
-#include <mach/devices-imx27.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-	.phy_addr = 1,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width = 1,
-	.hw_ecc = 1,
-	.flash_bbt = 1,
-};
-
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
-static struct NS16550_plat quad_uart_serial_plat = {
-	.clock = 14745600,
-	.shift = 1,
-};
-
-#ifdef CONFIG_EUKREA_CPUIMX27_QUART1
-#define QUART_OFFSET 0x200000
-#elif defined CONFIG_EUKREA_CPUIMX27_QUART2
-#define QUART_OFFSET 0x400000
-#elif defined CONFIG_EUKREA_CPUIMX27_QUART3
-#define QUART_OFFSET 0x800000
-#elif defined CONFIG_EUKREA_CPUIMX27_QUART4
-#define QUART_OFFSET 0x1000000
-#endif
-#endif
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("lp3972", 0x34),
-	},
-};
-
-#ifdef CONFIG_DRIVER_VIDEO_IMX
-static struct fb_videomode imxfb_mode = {
-	.name		= "CMO-QVGA",
-	.refresh	= 60,
-	.xres		= 320,
-	.yres		= 240,
-	.pixclock	= 156000,
-	.hsync_len	= 30,
-	.left_margin	= 38,
-	.right_margin	= 20,
-	.vsync_len	= 3,
-	.upper_margin	= 15,
-	.lower_margin	= 4,
-};
-
-static struct imx_fb_platform_data eukrea_cpuimx27_fb_data = {
-	.mode	= &imxfb_mode,
-	.num_modes = 1,
-	.pwmr	= 0x00A903FF,
-	.lscr1	= 0x00120300,
-	.dmacr	= 0x00020010,
-	.pcr	= 0xFAD08B80,
-	.bpp	= 16,
-};
-#endif
-
-static int eukrea_cpuimx27_devices_init(void)
-{
-	char *envdev = "no";
-	int i;
-
-	unsigned int mode[] = {
-		PD0_AIN_FEC_TXD0,
-		PD1_AIN_FEC_TXD1,
-		PD2_AIN_FEC_TXD2,
-		PD3_AIN_FEC_TXD3,
-		PD4_AOUT_FEC_RX_ER,
-		PD5_AOUT_FEC_RXD1,
-		PD6_AOUT_FEC_RXD2,
-		PD7_AOUT_FEC_RXD3,
-		PD8_AF_FEC_MDIO,
-		PD9_AIN_FEC_MDC | GPIO_PUEN,
-		PD10_AOUT_FEC_CRS,
-		PD11_AOUT_FEC_TX_CLK,
-		PD12_AOUT_FEC_RXD0,
-		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_RX_CLK,
-		PD15_AOUT_FEC_COL,
-		PD16_AIN_FEC_TX_ER,
-		PF23_AIN_FEC_TX_EN,
-		PD17_PF_I2C_DATA,
-		PD18_PF_I2C_CLK,
-#ifdef CONFIG_DRIVER_SERIAL_IMX
-		PE12_PF_UART1_TXD,
-		PE13_PF_UART1_RXD,
-		PE14_PF_UART1_CTS,
-		PE15_PF_UART1_RTS,
-#endif
-#ifdef CONFIG_DRIVER_VIDEO_IMX
-		PA5_PF_LSCLK,
-		PA6_PF_LD0,
-		PA7_PF_LD1,
-		PA8_PF_LD2,
-		PA9_PF_LD3,
-		PA10_PF_LD4,
-		PA11_PF_LD5,
-		PA12_PF_LD6,
-		PA13_PF_LD7,
-		PA14_PF_LD8,
-		PA15_PF_LD9,
-		PA16_PF_LD10,
-		PA17_PF_LD11,
-		PA18_PF_LD12,
-		PA19_PF_LD13,
-		PA20_PF_LD14,
-		PA21_PF_LD15,
-		PA22_PF_LD16,
-		PA23_PF_LD17,
-		PA28_PF_HSYNC,
-		PA29_PF_VSYNC,
-		PA31_PF_OE_ACD,
-		GPIO_PORTE | 5 | GPIO_GPIO | GPIO_OUT,
-		GPIO_PORTA | 25 | GPIO_GPIO | GPIO_OUT,
-#endif
-	};
-
-	/* configure 16 bit nor flash on cs0 */
-	imx27_setup_weimcs(0, 0x00008F03, 0xA0330D01, 0x002208C0);
-
-	/* initialize gpios */
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx27_gpio_mode(mode[i]);
-
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
-#ifdef CONFIG_EUKREA_CPUIMX27_NOR_64MB
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC2000000, 32 * 1024 * 1024, 0);
-#endif
-	imx27_add_nand(&nand_info);
-
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	imx27_add_i2c0(NULL);
-
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-	protect_file("/dev/env0", 1);
-	envdev = "NOR";
-
-	printf("Using environment in %s Flash\n", envdev);
-
-#ifdef CONFIG_DRIVER_VIDEO_IMX
-	imx_add_fb((void *)0x10021000, &eukrea_cpuimx27_fb_data);
-	gpio_direction_output(GPIO_PORTE | 5, 0);
-	gpio_set_value(GPIO_PORTE | 5, 1);
-	gpio_direction_output(GPIO_PORTA | 25, 0);
-	gpio_set_value(GPIO_PORTA | 25, 1);
-#endif
-
-	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX27);
-
-	return 0;
-}
-
-device_initcall(eukrea_cpuimx27_devices_init);
-
-static int eukrea_cpuimx27_console_init(void)
-{
-	uint32_t val;
-
-	barebox_set_model("Eukrea CPUIMX27");
-	barebox_set_hostname("eukrea-cpuimx27");
-
-#ifdef CONFIG_DRIVER_SERIAL_IMX
-	imx27_add_uart0();
-#endif
-	/* configure 8 bit UART on cs3 */
-	val = readl(MX27_SYSCTRL_BASE_ADDR + MX27_FMCR);
-	val &= ~0x2;
-	writel(val, MX27_SYSCTRL_BASE_ADDR + MX27_FMCR);
-
-	imx27_setup_weimcs(3, 0x0000D603, 0x0D1D0D01, 0x00D20000);
-#ifdef CONFIG_DRIVER_SERIAL_NS16550
-	add_ns16550_device(DEVICE_ID_DYNAMIC, MX27_CS3_BASE_ADDR + QUART_OFFSET, 0xf,
-			   IORESOURCE_MEM | IORESOURCE_MEM_16BIT,
-			   &quad_uart_serial_plat);
-#endif
-	return 0;
-}
-
-console_initcall(eukrea_cpuimx27_console_init);
-
-static int eukrea_cpuimx27_late_init(void)
-{
-#ifdef CONFIG_MFD_LP3972
-	struct i2c_client *client;
-	u8 reg[1];
-#endif
-	console_flush();
-	imx27_add_fec(&fec_info);
-
-#ifdef CONFIG_MFD_LP3972
-	client = lp3972_get_client();
-	if (!client)
-		return -ENODEV;
-	reg[0] = 0xa0;
-	i2c_write_reg(client, 0x39, reg, sizeof(reg));
-#endif
-	return 0;
-}
-
-late_initcall(eukrea_cpuimx27_late_init);
diff --git a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S b/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
deleted file mode 100644
index 13e906eea4..0000000000
--- a/arch/arm/boards/eukrea_cpuimx27/lowlevel_init.S
+++ /dev/null
@@ -1,136 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <config.h>
-#include <asm-generic/memory_layout.h>
-#include <mach/imx27-regs.h>
-#include <mach/esdctl.h>
-#include <asm/barebox-arm-head.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
-#if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
-#define ROWS0	ESDCTL0_ROW14
-#define CFG0	0x0029572D
-#elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
-#define ROWS0	ESDCTL0_ROW13
-#define CFG0	0x00095728
-#endif
-
-#define ESDCTL0_VAL (ESDCTL0_SDE | ROWS0 | ESDCTL0_COL10)
-
-.macro sdram_init
-	/*
-	 * DDR on CSD0
-	 */
-	/* Enable DDR SDRAM operation */
-	writel(0x0000000C, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-
-	/* Set the driving strength   */
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3))
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5))
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6))
-	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7))
-	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8))
-
-	/* Initial reset */
-	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC)
-	writel(CFG0, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0)
-
-	/* precharge CSD0 all banks */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	writel(0x00000000, 0xA0000F00)	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-
-	ldr	r0, =0xa0000f00
-	mov	r1, #0
-	mov	r2, #8
-1:
-	str	r1, [r0]
-	subs	r2, #1
-	bne	1b
-
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-	ldr		r0, =0xA0000033
-	mov		r1, #0xda
-	strb		r1, [r0]
-#if defined CONFIG_EUKREA_CPUIMX27_SDRAM_256MB
-	ldr		r0, =0xA2000000
-#elif defined CONFIG_EUKREA_CPUIMX27_SDRAM_128MB
-	ldr		r0, =0xA1000000
-#endif
-	mov		r1, #0xff
-	strb		r1, [r0]
-	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
-			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0)
-.endm
-
-	.section ".text_bare_init","ax"
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-
-	bl		arm_cpu_lowlevel_init
-
-	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
-
-	/* ahb lite ip interface */
-	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
-	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
-	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0)
-	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1)
-
-	/* disable mpll/spll */
-	ldr r0, =MX27_CCM_BASE_ADDR + MX27_CSCR
-	ldr r1, [r0]
-	bic r1, r1, #0x03
-	str r1, [r0]
-
-	/*
-	 * pll clock initialization - see section 3.4.3 of the i.MX27 manual
-	 */
-	/* MPLL = 399 MHz */
-	writel(0x00331C23, MX27_CCM_BASE_ADDR + MX27_MPCTL0)
-	/* SPLL = 240 MHz */
-	writel(0x040C2403, MX27_CCM_BASE_ADDR + MX27_SPCTL0)
-	writel(0x33F38107 | MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART,
-			MX27_CCM_BASE_ADDR + MX27_CSCR)
-
-	/* add some delay here */
-	mov r1, #0x1000
-1:	subs r1, r1, #0x1
-	bne 1b
-
-	/* clock gating enable */
-	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR)
-
-	/* peripheral clock divider */
-	/* FIXME                            */
-	writel(0x130400c3, MX27_CCM_BASE_ADDR + MX27_PCDR0)
-	/* PERDIV1=08 @133 MHz              */
-	writel(0x09030208, MX27_CCM_BASE_ADDR + MX27_PCDR1)
-	/* PERDIV1=04 @266 MHz              */
-
-	/* skip sdram initialization if we run from ram */
-	cmp	pc, #0xa0000000
-	bls	1f
-	cmp	pc, #0xc0000000
-	bhi	1f
-
-	b	imx27_barebox_entry
-1:
-	sdram_init
-
-#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
-	mov	r0, #0
-	b	imx27_barebox_boot_nand_external
-#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
-
-ret:
-	b	imx27_barebox_entry
diff --git a/arch/arm/boards/eukrea_cpuimx35/Makefile b/arch/arm/boards/eukrea_cpuimx35/Makefile
deleted file mode 100644
index f1a8e7a5d6..0000000000
--- a/arch/arm/boards/eukrea_cpuimx35/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Juergen Beisert <jbe@pengutronix.de>
-
-obj-y					+= eukrea_cpuimx35.o
-lwl-y					+= lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx35
diff --git a/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/bin/init_board b/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/bin/init_board
deleted file mode 100644
index 2a07a8425a..0000000000
--- a/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/bin/init_board
+++ /dev/null
@@ -1,41 +0,0 @@
-#!/bin/sh
-
-if [ -f /env/logo.bmp ]; then
-	splash /env/logo.bmp
-	fb0.enable=1
-	gpio_set_value 1 1
-elif [ -f /env/logo.bmp.lzo ]; then
-	uncompress /env/logo.bmp.lzo /logo.bmp
-	splash /logo.bmp
-	fb0.enable=1
-	gpio_set_value 1 1
-fi
-
-gpio_get_value 89
-if [ $? -eq 0 ]; then
-	gpio_set_value 93 0
-	usbserial
-	timeout -s -a 2
-	gpio_get_value 89
-	if [ $? -eq 0 ]; then
-		usbserial -d
-		dfu -V 0x1234 -P 0x1234 /dev/nand0.barebox.bb(barebox)sr,/dev/nand0.kernel.bb(kernel)r,/dev/nand0.root.bb(root)r
-		gpio_get_value 89
-		if [ $? -eq 0 ]; then
-			usbserial
-			autoboot_timeout=60
-		else
-			reset
-		fi
-	else
-		autoboot_timeout=28
-	fi
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-	saveenv
-fi
diff --git a/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/config b/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/config
deleted file mode 100644
index 05c4391d35..0000000000
--- a/arch/arm/boards/eukrea_cpuimx35/defaultenv-eukrea_cpuimx35/config
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-# otg port mode : can be 'host' or 'device'
-otg_mode="device"
-# video : can be CMO-QVGA, URT-WVGA, DVI-VGA or DVI-SVGA
-video="CMO-QVGA"
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=none
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=nand
-# can be either 'net', 'nand' or 'initrd'
-rootfs_loc=nand
-
-# rootfs
-rootfs_type=ubifs
-rootfsimage=${global.hostname}/rootfs.$rootfs_type
-
-# kernel
-kernelimage=${global.hostname}/uImage-${global.hostname}.bin
-
-# barebox and it's env
-bareboximage=${global.hostname}/barebox-${global.hostname}.bin
-bareboxenvimage=${global.hostname}/bareboxenv-${global.hostname}.bin
-
-nfsroot="$eth0.serverip:/srv/nfs/${global.hostname}"
-
-autoboot_timeout=1
-
-bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=mx3fb:$video"
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
-rootfs_mtdblock_nand=3
-nand_device="mxc_nand"
-ubiroot="${global.hostname}-rootfs"
-device_type="nand"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c b/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
deleted file mode 100644
index 2506ae8b06..0000000000
--- a/arch/arm/boards/eukrea_cpuimx35/eukrea_cpuimx35.c
+++ /dev/null
@@ -1,346 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-/*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix
- *               2009 Marc Kleine-Budde, Pengutronix
- * (c) 2010 Eukrea Electromatique, Eric Bénard <eric@eukrea.com>
- *
- * Derived from:
- *
- * * mx35_3stack.c - board file for uboot-v1
- *   Copyright (C) 2007, Guennadi Liakhovetski <lg@denx.de>
- *   (C) Copyright 2008-2009 Freescale Semiconductor, Inc.
- */
-
-#include <common.h>
-#include <command.h>
-#include <environment.h>
-#include <errno.h>
-#include <fcntl.h>
-#include <platform_data/eth-fec.h>
-#include <fs.h>
-#include <init.h>
-#include <nand.h>
-#include <net.h>
-#include <gpio.h>
-#include <envfs.h>
-
-#include <asm/armlinux.h>
-#include <io.h>
-#include <generated/mach-types.h>
-#include <asm/mmu.h>
-
-#include <mach/imx-nand.h>
-#include <mach/imx35-regs.h>
-#include <mach/iomux-mx35.h>
-#include <mach/iomux-v3.h>
-#include <mach/imx-ipu-fb.h>
-#include <mach/imx-pll.h>
-#include <i2c/i2c.h>
-#include <usb/fsl_usb2.h>
-#include <mach/usb.h>
-#include <mach/devices-imx35.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type	= PHY_INTERFACE_MODE_MII,
-	.phy_addr	= 0,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width		= 1,
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
-static struct fb_videomode imxfb_mode = {
-	.name		= "CMO_QVGA",
-	.refresh	= 60,
-	.xres		= 320,
-	.yres		= 240,
-	.pixclock	= KHZ2PICOS(7000),
-	.left_margin	= 68,
-	.right_margin	= 20,
-	.upper_margin	= 15,
-	.lower_margin	= 4,
-	.hsync_len	= 30,
-	.vsync_len	= 3,
-	.sync		= 0,
-	.vmode		= FB_VMODE_NONINTERLACED,
-};
-
-static void eukrea_cpuimx35_enable_display(int enable)
-{
-	gpio_direction_output(4, enable);
-}
-
-static struct imx_ipu_fb_platform_data ipu_fb_data = {
-	.mode		= &imxfb_mode,
-	.num_modes	= 1,
-	.bpp		= 16,
-	.enable		= eukrea_cpuimx35_enable_display,
-};
-
-#ifdef CONFIG_USB
-#ifndef CONFIG_USB_GADGET
-struct imxusb_platformdata otg_pdata = {
-	.flags = MXC_EHCI_INTERFACE_DIFF_UNI,
-	.mode = USB_DR_MODE_HOST,
-	.phymode = USBPHY_INTERFACE_MODE_UTMI,
-};
-#endif
-
-struct imxusb_platformdata hs_pdata = {
-	.flags = MXC_EHCI_INTERFACE_SINGLE_UNI | MXC_EHCI_INTERNAL_PHY | MXC_EHCI_IPPUE_DOWN,
-	.mode = USB_DR_MODE_HOST,
-};
-#endif
-
-#ifdef CONFIG_USB_GADGET
-static struct fsl_usb2_platform_data usb_pdata = {
-	.operating_mode	= FSL_USB2_DR_DEVICE,
-	.phy_mode	= FSL_USB2_PHY_UTMI,
-};
-#endif
-
-static int eukrea_cpuimx35_mmu_init(void)
-{
-	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-
-	return 0;
-}
-postmmu_initcall(eukrea_cpuimx35_mmu_init);
-
-static iomux_v3_cfg_t eukrea_cpuimx35_pads[] = {
-	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
-	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
-	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX35_PAD_FEC_COL__FEC_COL,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX35_PAD_FEC_MDC__FEC_MDC,
-	MX35_PAD_FEC_MDIO__FEC_MDIO,
-	MX35_PAD_FEC_TX_ERR__FEC_TX_ERR,
-	MX35_PAD_FEC_RX_ERR__FEC_RX_ERR,
-	MX35_PAD_FEC_CRS__FEC_CRS,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
-	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
-	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
-	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
-	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
-	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
-
-	MX35_PAD_RXD1__UART1_RXD_MUX,
-	MX35_PAD_TXD1__UART1_TXD_MUX,
-	MX35_PAD_RTS1__UART1_RTS,
-	MX35_PAD_CTS1__UART1_CTS,
-
-	MX35_PAD_LD23__GPIO3_29,
-	MX35_PAD_CONTRAST__GPIO1_1,
-	MX35_PAD_D3_CLS__GPIO1_4,
-
-	MX35_PAD_I2C1_CLK__I2C1_SCL,
-	MX35_PAD_I2C1_DAT__I2C1_SDA,
-
-	MX35_PAD_SD1_CMD__ESDHC1_CMD,
-	MX35_PAD_SD1_CLK__ESDHC1_CLK,
-	MX35_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX35_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX35_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX35_PAD_SD1_DATA3__ESDHC1_DAT3,
-
-	MX35_PAD_LD19__GPIO3_25,
-};
-
-static int eukrea_cpuimx35_devices_init(void)
-{
-#ifdef CONFIG_USB_GADGET
-	unsigned int tmp;
-#endif
-	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx35_pads,
-		ARRAY_SIZE(eukrea_cpuimx35_pads));
-
-	imx35_add_nand(&nand_info);
-
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	imx35_add_fec(&fec_info);
-	imx35_add_fb(&ipu_fb_data);
-
-	imx35_add_i2c0(NULL);
-	imx35_add_mmc0(NULL);
-
-	/* led default off */
-	gpio_direction_output(32 * 2 + 29, 1);
-
-	/* Switch : input */
-	gpio_direction_input(32 * 2 + 25);
-
-	/* screen default on to prevent flicker */
-	gpio_direction_output(4, 0);
-	/* backlight default off */
-	gpio_direction_output(1, 0);
-
-#ifdef CONFIG_USB
-#ifndef CONFIG_USB_GADGET
-	imx_add_usb((void *)MX35_USB_OTG_BASE_ADDR, 0, &otg_pdata);
-#endif
-	imx_add_usb((void *)MX35_USB_HS_BASE_ADDR, 1, &hs_pdata);
-#endif
-
-#ifdef CONFIG_USB_GADGET
-	/* Workaround ENGcm09152 */
-	tmp = readl(MX35_USB_OTG_BASE_ADDR + 0x608);
-	writel(tmp | (1 << 23), MX35_USB_OTG_BASE_ADDR + 0x608);
-	add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL, MX35_USB_OTG_BASE_ADDR, 0x200,
-			   IORESOURCE_MEM, &usb_pdata);
-#endif
-	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX35SD);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_eukrea_cpuimx35);
-
-	return 0;
-}
-
-device_initcall(eukrea_cpuimx35_devices_init);
-
-static int eukrea_cpuimx35_console_init(void)
-{
-	barebox_set_model("Eukrea CPUIMX35");
-	barebox_set_hostname("eukrea-cpuimx35");
-
-	imx35_add_uart0();
-	return 0;
-}
-
-console_initcall(eukrea_cpuimx35_console_init);
-
-static int eukrea_cpuimx35_core_init(void)
-{
-	u32 reg;
-
-	/* enable clock for I2C1, ESDHC1, USB and FEC */
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
-	reg |= 0x3 << MX35_CCM_CGR0_ESDHC1_SHIFT;
-	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
-	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
-	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
-	reg |= 0x3 << MX35_CCM_CGR2_USB_SHIFT;
-	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR2);
-
-	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
-	/*
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR + 0x4);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR + 0x4);
-
-	/*
-	 * Clear the on and off peripheral modules Supervisor Protect bit
-	 * for SDMA to access them. Did not change the AIPS control registers
-	 * (offset 0x20) access type
-	 */
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x4C);
-	reg = readl(MX35_AIPS1_BASE_ADDR + 0x50);
-	reg &= 0x00FFFFFF;
-	writel(reg, MX35_AIPS1_BASE_ADDR + 0x50);
-
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x4C);
-	reg = readl(MX35_AIPS2_BASE_ADDR + 0x50);
-	reg &= 0x00FFFFFF;
-	writel(reg, MX35_AIPS2_BASE_ADDR + 0x50);
-
-	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
-
-	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
-#define MAX_PARAM1 0x00302154
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x000); /* for S0 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x100); /* for S1 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x200); /* for S2 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x300); /* for S3 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x400); /* for S4 */
-
-	/* SGPCR - always park on last master */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x10);	/* for S0 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x110);	/* for S1 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x210);	/* for S2 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x310);	/* for S3 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x410);	/* for S4 */
-
-	/* MGPCR - restore default values */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x800);	/* for M0 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x900);	/* for M1 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xa00);	/* for M2 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xb00);	/* for M3 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
-
-	/*
-	 * M3IF Control Register (M3IFCTL)
-	 * MRRP[0] = L2CC0 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[1] = MAX1 not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[2] = L2CC1 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[3] = USB  not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[4] = SDMA not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[5] = GPU not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[6] = IPU1 on priority list (1 << 6)		= 0x00000040
-	 * MRRP[7] = IPU2 not on priority list (0 << 0)		= 0x00000000
-	 *                                                       ------------
-	 *                                                        0x00000040
-	 */
-	writel(0x40, MX35_M3IF_BASE_ADDR);
-
-	return 0;
-}
-
-core_initcall(eukrea_cpuimx35_core_init);
-
-static int do_cpufreq(int argc, char *argv[])
-{
-	unsigned long freq;
-
-	if (argc != 2)
-		return COMMAND_ERROR_USAGE;
-
-	freq = simple_strtoul(argv[1], NULL, 0);
-
-	switch (freq) {
-	case 399:
-		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-		break;
-	case 532:
-		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-		break;
-	default:
-		return COMMAND_ERROR_USAGE;
-	}
-
-	printf("Switched CPU frequency to %luMHz\n", freq);
-
-	return 0;
-}
-
-BAREBOX_CMD_START(cpufreq)
-	.cmd            = do_cpufreq,
-	BAREBOX_CMD_DESC("adjust CPU frequency")
-	BAREBOX_CMD_OPTS("399|532")
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-BAREBOX_CMD_END
diff --git a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
deleted file mode 100644
index ad187db742..0000000000
--- a/arch/arm/boards/eukrea_cpuimx35/flash-header.imxcfg
+++ /dev/null
@@ -1,21 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-soc imx35
-loadaddr 0x80000000
-ivtofs 0x400
-
-wm 32 0x53F80004 0x00821000
-wm 32 0x53F80004 0x00821000
-wm 32 0xb8001010 0x00000004
-wm 32 0xB8001010 0x0000000C
-wm 32 0xb8001004 0x0009572B
-wm 32 0xb8001000 0x92220000
-wm 8 0x80000400 0xda
-wm 32 0xb8001000 0xa2220000
-wm 32 0x80000000 0x12344321
-wm 32 0x80000000 0x12344321
-wm 32 0xb8001000 0xb2220000
-wm 8 0x80000033 0xda
-wm 8 0x82000000 0xda
-wm 32 0xb8001000 0x82224080
-wm 32 0xb8001010 0x00000004
diff --git a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c b/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
deleted file mode 100644
index 7970b82136..0000000000
--- a/arch/arm/boards/eukrea_cpuimx35/lowlevel.c
+++ /dev/null
@@ -1,128 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <common.h>
-#include <init.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/sections.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/system.h>
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	uint32_t r, s;
-	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
-	register uint32_t loops = 0x20000;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE);
-
-	r = get_cr();
-	r |= CR_Z; /* Flow prediction (Z) */
-	r |= CR_U; /* unaligned accesses  */
-	r |= CR_FI; /* Low Int Latency     */
-
-	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1":"=r"(s));
-	s |= 0x7;
-	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 1" : : "r"(s));
-
-	set_cr(r);
-
-	r = 0;
-	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
-
-	/*
-	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
-	 * starting point.  Don't flush BTAC while it is disabled to avoid
-	 * ARM1136 erratum 408023.
-	 */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r));
-
-	/* invalidate I cache and D cache */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c7, 0" : : "r"(r));
-
-	/* invalidate TLBs */
-	__asm__ __volatile__("mcr p15, 0, %0, c8, c7, 0" : : "r"(r));
-
-	/* Drain the write buffer */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c10, 4" : : "r"(r));
-
-	/* Also setup the Peripheral Port Remap register inside the core */
-	r = 0x40000015; /* start from AIPS 2GB region */
-	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
-
-	/*
-	 * End of ARM1136 init
-	 */
-
-	writel(0x003F4208, ccm_base + MX35_CCM_CCMR);
-
-	/* Set MPLL , arm clock and ahb clock*/
-	writel(MPCTL_PARAM_532, ccm_base + MX35_CCM_MPCTL);
-
-	writel(PPCTL_PARAM_300, ccm_base + MX35_CCM_PPCTL);
-	writel(0x00001000, ccm_base + MX35_CCM_PDR0);
-
-	r = readl(ccm_base + MX35_CCM_CGR0);
-	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR0);
-
-	r = readl(ccm_base + MX35_CCM_CGR1);
-	r |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_IOMUX_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR1);
-
-	/* enable watchdog asap */
-	r = readl(ccm_base + MX35_CCM_CGR2);
-	r |= 0x3 << MX35_CCM_CGR2_WDOG_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR2);
-
-	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
-	r |= 0x1000;
-	writel(r, MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (r > 0x80000000 && r < 0x90000000)
-		goto out;
-
-	/* Init Mobile DDR */
-	writel(0x0000000E, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	writel(0x00000004, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	__asm__ volatile ("1:\n"
-			"subs %0, %1, #1\n"
-			"bne 1b":"=r" (loops):"0" (loops));
-
-	writel(0x0009572B, MX35_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
-	writel(0x92220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x400);
-	writel(0xA2220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX35_CSD0_BASE_ADDR);
-	writeb(0xda, MX35_CSD0_BASE_ADDR);
-	writel(0xB2220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x33);
-	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x2000000);
-	writel(0x82228080, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* Speed up NAND controller by adjusting the NFC divider */
-		r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-		r &= ~(0xf << 28);
-		r |= 0x1 << 28;
-		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-		imx35_barebox_boot_nand_external();
-	}
-
-out:
-	imx35_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/eukrea_cpuimx51/Makefile b/arch/arm/boards/eukrea_cpuimx51/Makefile
deleted file mode 100644
index 77bd4cc87a..0000000000
--- a/arch/arm/boards/eukrea_cpuimx51/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += eukrea_cpuimx51.o
-lwl-y += lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-eukrea_cpuimx51
diff --git a/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/bin/init_board b/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/bin/init_board
deleted file mode 100644
index 0af65822f1..0000000000
--- a/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/bin/init_board
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-
-if [ -f /env/logo.bmp ]; then
-	splash /env/logo.bmp
-	fb0.enable=1
-	gpio_set_value 1 1
-elif [ -f /env/logo.bmp.lzo ]; then
-	uncompress /env/logo.bmp.lzo /logo.bmp
-	splash /logo.bmp
-	fb0.enable=1
-	gpio_set_value 1 1
-fi
-
-if [ -z $eth0.ethaddr ]; then
-	while [ -z $eth0.ethaddr ]; do
-		readline "no MAC address set for eth0. please enter the one found on your board: " eth0.ethaddr
-	done
-	echo -a /env/config "eth0.ethaddr=$eth0.ethaddr"
-	saveenv
-fi
diff --git a/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/config b/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/config
deleted file mode 100644
index 57abc1ee3d..0000000000
--- a/arch/arm/boards/eukrea_cpuimx51/defaultenv-eukrea_cpuimx51/config
+++ /dev/null
@@ -1,50 +0,0 @@
-#!/bin/sh
-
-# otg port mode : can be 'host' or 'device'
-otg_mode="device"
-# video mode : can be 'CMO-QVGA' or 'URT-WVGA' or any modefb mode
-# ex : 640x480M-16@60 800x600M-24@60 1024x768M-16@60
-video="CMO-QVGA"
-# screen type : can be 'tft' or 'dvi'
-screen_type="tft"
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-# use 'none' if you want to skip kernel ip autoconfiguration
-ip=none
-
-# or set your networking parameters here
-#eth0.ipaddr=a.b.c.d
-#eth0.netmask=a.b.c.d
-#eth0.gateway=a.b.c.d
-#eth0.serverip=a.b.c.d
-
-# can be either 'nfs', 'tftp' or 'nand'
-kernel_loc=nand
-# can be either 'net', 'nand' or 'initrd'
-rootfs_loc=nand
-
-# rootfs
-rootfs_type=ubifs
-rootfsimage=${global.hostname}/rootfs.$rootfs_type
-
-# kernel
-kernelimage=${global.hostname}/uImage-${global.hostname}.bin
-
-# barebox and it's env
-bareboximage=${global.hostname}/barebox-${global.hostname}.bin
-bareboxenvimage=${global.hostname}/bareboxenv-${global.hostname}.bin
-
-nfsroot="$eth0.serverip:/srv/nfs/${global.hostname}"
-
-autoboot_timeout=1
-
-bootargs="console=ttymxc0,115200 otg_mode=$otg_mode video=$video screen_type=$screen_type"
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),3M(kernel),-(root)"
-rootfs_mtdblock_nand=3
-nand_device="mxc_nand"
-ubiroot="${global.hostname}-rootfs"
-device_type="nand"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c b/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
deleted file mode 100644
index 06608c133b..0000000000
--- a/arch/arm/boards/eukrea_cpuimx51/eukrea_cpuimx51.c
+++ /dev/null
@@ -1,134 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer, Pengutronix
-// SPDX-FileCopyrightText: 2011 Eric Bénard <eric@eukrea.com>, Eukrea Electromatique
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx51-regs.h>
-#include <platform_data/eth-fec.h>
-#include <gpio.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-#include <fs.h>
-#include <envfs.h>
-#include <fcntl.h>
-#include <nand.h>
-#include <spi/spi.h>
-#include <io.h>
-#include <asm/mmu.h>
-#include <mach/imx-nand.h>
-#include <mach/spi.h>
-#include <mach/generic.h>
-#include <mach/imx5.h>
-#include <mach/iomux-mx51.h>
-#include <mach/devices-imx51.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width		= 1,
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
-static iomux_v3_cfg_t eukrea_cpuimx51_pads[] = {
-	/* UART1 */
-	MX51_PAD_UART1_RXD__UART1_RXD,
-	MX51_PAD_UART1_TXD__UART1_TXD,
-	MX51_PAD_UART1_RTS__UART1_RTS,
-	MX51_PAD_UART1_CTS__UART1_CTS,
-	/* FEC */
-	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT1__FEC_RX_ER, MX51_PAD_CTRL_5),
-	MX51_PAD_DISP2_DAT15__FEC_TDATA0,
-	MX51_PAD_DISP2_DAT6__FEC_TDATA1,
-	MX51_PAD_DISP2_DAT7__FEC_TDATA2,
-	MX51_PAD_DISP2_DAT8__FEC_TDATA3,
-	MX51_PAD_DISP2_DAT9__FEC_TX_EN,
-	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT10__FEC_COL, MX51_PAD_CTRL_5),
-	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT11__FEC_RX_CLK, MX51_PAD_CTRL_5),
-	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT12__FEC_RX_DV, MX51_PAD_CTRL_5),
-	MX51_PAD_DISP2_DAT13__FEC_TX_CLK,
-	MX51_PAD_DI2_PIN4__FEC_CRS,
-	MX51_PAD_DI2_PIN2__FEC_MDC,
-	NEW_PAD_CTRL(MX51_PAD_DI2_PIN3__FEC_MDIO, MX51_PAD_CTRL_5),
-	MX51_PAD_DISP2_DAT14__FEC_RDATA0,
-	MX51_PAD_DI2_DISP_CLK__FEC_RDATA1,
-	NEW_PAD_CTRL(MX51_PAD_DI_GP4__FEC_RDATA2, MX51_PAD_CTRL_5),
-	NEW_PAD_CTRL(MX51_PAD_DISP2_DAT0__FEC_RDATA3, MX51_PAD_CTRL_5),
-	MX51_PAD_DI_GP3__FEC_TX_ER,
-	MX51_PAD_EIM_DTACK__GPIO2_31, /* LAN8700 reset pin */
-	/* NAND */
-	MX51_PAD_NANDF_D7__NANDF_D7,
-	MX51_PAD_NANDF_D6__NANDF_D6,
-	MX51_PAD_NANDF_D5__NANDF_D5,
-	MX51_PAD_NANDF_D4__NANDF_D4,
-	MX51_PAD_NANDF_D3__NANDF_D3,
-	MX51_PAD_NANDF_D2__NANDF_D2,
-	MX51_PAD_NANDF_D1__NANDF_D1,
-	MX51_PAD_NANDF_D0__NANDF_D0,
-	MX51_PAD_NANDF_RB0__NANDF_RB0,
-	MX51_PAD_NANDF_RB1__NANDF_RB1,
-	MX51_PAD_NANDF_CS0__NANDF_CS0,
-	MX51_PAD_NANDF_CS1__NANDF_CS1,
-	/* LCD BL */
-	MX51_PAD_DI1_D1_CS__GPIO3_4,
-#ifdef CONFIG_MCI_IMX_ESDHC
-	/* SD 1 */
-	MX51_PAD_SD1_CMD__SD1_CMD,
-	MX51_PAD_SD1_CLK__SD1_CLK,
-	MX51_PAD_SD1_DATA0__SD1_DATA0,
-	MX51_PAD_SD1_DATA1__SD1_DATA1,
-	MX51_PAD_SD1_DATA2__SD1_DATA2,
-	MX51_PAD_SD1_DATA3__SD1_DATA3,
-#endif
-};
-
-#define GPIO_LAN8700_RESET	(1 * 32 + 31)
-#define GPIO_LCD_BL		(2 * 32 + 4)
-
-static int eukrea_cpuimx51_devices_init(void)
-{
-	imx51_add_fec(&fec_info);
-#ifdef CONFIG_MCI_IMX_ESDHC
-	imx51_add_mmc0(NULL);
-#endif
-	imx51_add_nand(&nand_info);
-
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	gpio_direction_output(GPIO_LAN8700_RESET, 0);
-	gpio_set_value(GPIO_LAN8700_RESET, 1);
-	gpio_direction_output(GPIO_LCD_BL, 0);
-
-	armlinux_set_architecture(MACH_TYPE_EUKREA_CPUIMX51SD);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_eukrea_cpuimx51);
-
-	return 0;
-}
-
-device_initcall(eukrea_cpuimx51_devices_init);
-
-static int eukrea_cpuimx51_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(eukrea_cpuimx51_pads, ARRAY_SIZE(eukrea_cpuimx51_pads));
-
-	barebox_set_model("Eukrea CPUIMX51");
-	barebox_set_hostname("eukrea-cpuimx51");
-
-	imx51_init_lowlevel(800);
-
-	imx51_add_uart0();
-
-	return 0;
-}
-
-console_initcall(eukrea_cpuimx51_console_init);
diff --git a/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg b/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
deleted file mode 100644
index 7f9a8773da..0000000000
--- a/arch/arm/boards/eukrea_cpuimx51/flash-header.imxcfg
+++ /dev/null
@@ -1,61 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-soc imx51
-ivtofs 0x400
-loadaddr 0x90000000
-wm 32 0x73fa88a0 0x00000200
-wm 32 0x73fa850c 0x000020c5
-wm 32 0x73fa8510 0x000020c5
-wm 32 0x73fa883c 0x00000002
-wm 32 0x73fa8848 0x00000002
-wm 32 0x73fa84b8 0x000000e7
-wm 32 0x73fa84bc 0x00000045
-wm 32 0x73fa84c0 0x00000045
-wm 32 0x73fa84c4 0x00000045
-wm 32 0x73fa84c8 0x00000045
-wm 32 0x73fa8820 0x00000000
-wm 32 0x73fa84a4 0x00000003
-wm 32 0x73fa84a8 0x00000003
-wm 32 0x73fa84ac 0x000000e3
-wm 32 0x73fa84b0 0x000000e3
-wm 32 0x73fa84b4 0x000000e3
-wm 32 0x73fa84cc 0x000000e3
-wm 32 0x73fa84d0 0x000000e2
-wm 32 0x73fa882c 0x00000004
-wm 32 0x73fa88a4 0x00000004
-wm 32 0x73fa88ac 0x00000004
-wm 32 0x73fa88b8 0x00000004
-wm 32 0x83fd9000 0x82a20000
-wm 32 0x83fd9008 0x82a20000
-wm 32 0x83fd9010 0x000ad0d0
-wm 32 0x83fd9004 0x3f3584ab
-wm 32 0x83fd900c 0x3f3584ab
-wm 32 0x83fd9014 0x04008008
-wm 32 0x83fd9014 0x0000801a
-wm 32 0x83fd9014 0x0000801b
-wm 32 0x83fd9014 0x00448019
-wm 32 0x83fd9014 0x07328018
-wm 32 0x83fd9014 0x04008008
-wm 32 0x83fd9014 0x00008010
-wm 32 0x83fd9014 0x00008010
-wm 32 0x83fd9014 0x06328018
-wm 32 0x83fd9014 0x03808019
-wm 32 0x83fd9014 0x00408019
-wm 32 0x83fd9014 0x00008000
-wm 32 0x83fd9014 0x0400800c
-wm 32 0x83fd9014 0x0000801e
-wm 32 0x83fd9014 0x0000801f
-wm 32 0x83fd9014 0x0000801d
-wm 32 0x83fd9014 0x0732801c
-wm 32 0x83fd9014 0x0400800c
-wm 32 0x83fd9014 0x00008014
-wm 32 0x83fd9014 0x00008014
-wm 32 0x83fd9014 0x0632801c
-wm 32 0x83fd9014 0x0380801d
-wm 32 0x83fd9014 0x0040801d
-wm 32 0x83fd9014 0x00008004
-wm 32 0x83fd9000 0xb2a20000
-wm 32 0x83fd9008 0xb2a20000
-wm 32 0x83fd9010 0x000ad6d0
-wm 32 0x83fd9034 0x90000000
-wm 32 0x83fd9014 0x00000000
diff --git a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c b/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
deleted file mode 100644
index cecc3f6c83..0000000000
--- a/arch/arm/boards/eukrea_cpuimx51/lowlevel.c
+++ /dev/null
@@ -1,13 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	imx5_cpu_lowlevel_init();
-	arm_setup_stack(0x20000000);
-	imx51_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/freescale-mx21-ads/Makefile b/arch/arm/boards/freescale-mx21-ads/Makefile
deleted file mode 100644
index 3e809a8c59..0000000000
--- a/arch/arm/boards/freescale-mx21-ads/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-lwl-y += lowlevel_init.o
-obj-y += imx21ads.o
diff --git a/arch/arm/boards/freescale-mx21-ads/env/bin/init b/arch/arm/boards/freescale-mx21-ads/env/bin/init
deleted file mode 100644
index 224a6b40be..0000000000
--- a/arch/arm/boards/freescale-mx21-ads/env/bin/init
+++ /dev/null
@@ -1 +0,0 @@
-# Dummy Init environment script
diff --git a/arch/arm/boards/freescale-mx21-ads/imx21ads.c b/arch/arm/boards/freescale-mx21-ads/imx21ads.c
deleted file mode 100644
index 0f596b21b9..0000000000
--- a/arch/arm/boards/freescale-mx21-ads/imx21ads.c
+++ /dev/null
@@ -1,180 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-/*
- * Copyright (C) 2009 Ivo Clarysse
- *
- * Based on imx27ads.c,
- *   Copyright (C) 2007 Sascha Hauer, Pengutronix
- */
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx21-regs.h>
-#include <asm/armlinux.h>
-#include <asm/sections.h>
-#include <asm/barebox-arm.h>
-#include <io.h>
-#include <gpio.h>
-#include <mach/weim.h>
-#include <fs.h>
-#include <linux/sizes.h>
-#include <fcntl.h>
-#include <generated/mach-types.h>
-#include <mach/imx-nand.h>
-#include <platform_data/imxfb.h>
-#include <mach/iomux-mx21.h>
-#include <mach/devices-imx21.h>
-
-#define MX21ADS_IO_REG    0xCC800000
-#define MX21ADS_IO_LCDON  (1 << 9)
-
-struct imx_nand_platform_data nand_info = {
-	.width = 1,
-	.hw_ecc = 1,
-};
-
-/* Sharp LQ035Q7DB02 QVGA display */
-static struct fb_videomode imx_fb_modedata = {
-	.name           = "Sharp-LQ035Q7",
-	.refresh        = 60,
-	.xres           = 240,
-	.yres           = 320,
-	.pixclock       = 188679,
-	.left_margin    = 6,
-	.right_margin   = 16,
-	.upper_margin   = 8,
-	.lower_margin   = 10,
-	.hsync_len      = 2,
-	.vsync_len      = 1,
-	.sync           = 0,
-	.vmode          = FB_VMODE_NONINTERLACED,
-};
-
-static struct imx_fb_platform_data imx_fb_data = {
-	.mode           = &imx_fb_modedata,
-	.num_modes	= 1,
-	.cmap_greyscale = 0,
-	.cmap_inverse   = 0,
-	.cmap_static    = 0,
-	.pwmr           = 0x00a903ff,
-	.lscr1          = 0x00120300,
-	.dmacr          = 0x00020008,
-	.pcr            = 0xfb108bc7,
-	.bpp            = 16,
-};
-
-static int imx21ads_timing_init(void)
-{
-	u32 temp;
-
-	/* Configure External Interface Module */
-	/* CS0: burst flash */
-	imx21_setup_eimcs(0, 0x00003E00, 0x00000E01);
-
-	/* CS1: Ethernet controller, external UART, memory-mapped I/O (16-bit) */
-	imx21_setup_eimcs(1, 0x00002000, 0x11118501);
-
-	/* CS2-CS5: disable */
-	imx21_setup_eimcs(2, 0x0, 0x0);
-	imx21_setup_eimcs(3, 0x0, 0x0);
-	imx21_setup_eimcs(4, 0x0, 0x0);
-	imx21_setup_eimcs(5, 0x0, 0x0);
-
-	temp = readl(MX21_CCM_BASE_ADDR + MX21_PCDR0);
-	temp &= ~0xF000;
-	temp |= 0xA000;  /* Set NFC divider; 0xA yields 24.18MHz */
-	writel(temp, MX21_CCM_BASE_ADDR + MX21_PCDR0);
-
-	return 0;
-}
-
-core_initcall(imx21ads_timing_init);
-
-static int mx21ads_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0xc0000000, SZ_64M);
-
-	return 0;
-}
-mem_initcall(mx21ads_mem_init);
-
-static int mx21ads_devices_init(void)
-{
-	int i;
-	unsigned int mode[] = {
-		PA5_PF_LSCLK,
-		PA6_PF_LD0,
-		PA7_PF_LD1,
-		PA8_PF_LD2,
-		PA9_PF_LD3,
-		PA10_PF_LD4,
-		PA11_PF_LD5,
-		PA12_PF_LD6,
-		PA13_PF_LD7,
-		PA14_PF_LD8,
-		PA15_PF_LD9,
-		PA16_PF_LD10,
-		PA17_PF_LD11,
-		PA18_PF_LD12,
-		PA19_PF_LD13,
-		PA20_PF_LD14,
-		PA21_PF_LD15,
-		PA22_PF_LD16,
-		PA23_PF_LD17,
-		PA24_PF_REV,
-		PA25_PF_CLS,
-		PA26_PF_PS,
-		PA27_PF_SPL_SPR,
-		PA28_PF_HSYNC,
-		PA29_PF_VSYNC,
-		PA30_PF_CONTRAST,
-		PA31_PF_OE_ACD,
-		PE12_PF_UART1_TXD,
-		PE13_PF_UART1_RXD,
-		PE14_PF_UART1_CTS,
-		PE15_PF_UART1_RTS,
-	};
-
-	/* initizalize gpios */
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx21_gpio_mode(mode[i]);
-
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX21_CS0_BASE_ADDR,
-			32 * 1024 * 1024, 0);
-	imx21_add_nand(&nand_info);
-	add_generic_device("cs8900", DEVICE_ID_DYNAMIC, NULL,
-			MX21_CS1_BASE_ADDR, 0x1000,
-			IORESOURCE_MEM, NULL);
-	imx21_add_fb(&imx_fb_data);
-
-	armlinux_set_architecture(MACH_TYPE_MX21ADS);
-
-	return 0;
-}
-
-device_initcall(mx21ads_devices_init);
-
-static int mx21ads_enable_display(void)
-{
-	u16 tmp;
-
-	tmp = readw(MX21ADS_IO_REG);
-	tmp |= MX21ADS_IO_LCDON;
-	writew(tmp, MX21ADS_IO_REG);
-	return 0;
-}
-
-late_initcall(mx21ads_enable_display);
-
-static int mx21ads_console_init(void)
-{
-	barebox_set_model("Freescale i.MX21 ADS");
-	barebox_set_hostname("mx21ads");
-
-	imx21_add_uart0();
-	return 0;
-}
-
-console_initcall(mx21ads_console_init);
diff --git a/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S b/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
deleted file mode 100644
index 9b6e4bd472..0000000000
--- a/arch/arm/boards/freescale-mx21-ads/lowlevel_init.S
+++ /dev/null
@@ -1,131 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2010 Jaccon Bastiaansen <jaccon.bastiaansen@gmail.com>
-
-#include <config.h>
-#include <linux/sizes.h>
-#include <asm-generic/memory_layout.h>
-#include <mach/imx21-regs.h>
-#include <asm/barebox-arm-head.h>
-
-	.section ".text_bare_init","ax"
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-
-	bl	arm_cpu_lowlevel_init
-
-/*
- * Initialize the AHB-Lite IP Interface (AIPI) module (to enable access to
- * on chip peripherals) as described in section 7.2 of rev3 of the i.MX21
- * reference manual.
- */
-	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI1_PSR0
-	ldr	r1, =0x00040304
-	str	r1, [r0]
-	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI1_PSR1
-	ldr     r1, =0xfffbfcfb
-	str	r1, [r0]
-
-	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI2_PSR0
-	ldr	r1, =0x3ffc0000
-	str	r1, [r0]
-	ldr	r0, =MX21_AIPI_BASE_ADDR + MX21_AIPI2_PSR1
-	ldr     r1, =0xffffffff
-	str	r1, [r0]
-
-/*
- * Configure CPU core clock (266MHz), peripheral clock (133MHz) and enable
- * the clock to peripherals.
- */
-	ldr	r0, =MX21_CCM_BASE_ADDR + MX21_CSCR
-	ldr	r1, =0x17180607
-	str	r1, [r0]
-
-	ldr	r0, =MX21_CCM_BASE_ADDR + MX21_PCCR1
-	ldr	r1, =0x0e000000
-	str	r1, [r0]
-
-
-/*
- * SDRAM and SDRAM controller configuration
- */
-
-	/*
-	 * CSD1 not required, because the MX21ADS board only contains 64Mbyte.
-	 * CS3 can therefore be made available.
-	 */
-	ldr	r0, =MX21_SYSCTRL_BASE_ADDR + MX21_FMCR
-	ldr	r1, =0xffffffc9
-	str	r1, [r0]
-
-	/* Skip SDRAM initialization if we run from RAM */
-	cmp	pc, #0xc0000000
-	bls	1f
-	cmp	pc, #0xc8000000
-	bhi	1f
-
-	b	ret
-1:
-
-	/* Precharge */
-	ldr	r0, =MX21_X_MEMC_BASE_ADDR + MX21_SDCTL0
-	ldr	r1, =0x92120300
-	str	r1, [r0]
-	ldr	r2, =0xc0200000
-	ldr	r1, [r2]
-
-	bl	mem_delay
-
-	/* Auto refresh */
-	ldr	r1, =0xa2120300
-	str	r1, [r0]
-	ldr	r2, =0xc0000000
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-	ldr	r1, [r2]
-
-	/* Set mode register */
-	ldr	r1, =0xB2120300
-	str	r1, [r0]
-	ldr	r1, =0xC0119800
-	ldr	r2, [r1]
-
-	bl	mem_delay
-
-	/* Back to Normal Mode */
-	ldr	r1, =0x8212F339
-	str	r1, [r0]
-
-	/* Set NFC_CLK to 24MHz */
-	ldr	r0, =MX21_CCM_BASE_ADDR + MX21_PCDR0
-	ldr	r1, =0x6419a007
-	str	r1, [r0]
-
-#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
-
-	/* Setup a temporary stack in SRAM */
-	ldr	sp, =MX21_IRAM_BASE_ADDR + MX21_IRAM_SIZE - 4
-
-	b	imx21_barebox_boot_nand_external
-#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
-
-ret:
-	mov	r0, #0xc0000000
-	mov	r1, #SZ_64M
-	mov	r2, #0
-	b	barebox_arm_entry
-
-/*
- *  spin for a while.  we need to wait at least 200 usecs.
- */
-mem_delay:
-	mov	r4, #0x4000
-spin:	subs	r4, r4, #1
-	bne	spin
-	mov	pc, lr
-
diff --git a/arch/arm/boards/freescale-mx25-3ds/3stack.c b/arch/arm/boards/freescale-mx25-3ds/3stack.c
deleted file mode 100644
index 824e986f74..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/3stack.c
+++ /dev/null
@@ -1,210 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2009 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <gpio.h>
-#include <environment.h>
-#include <mach/imx25-regs.h>
-#include <asm/armlinux.h>
-#include <asm/sections.h>
-#include <asm/barebox-arm.h>
-#include <io.h>
-#include <envfs.h>
-#include <generated/mach-types.h>
-#include <mach/imx-nand.h>
-#include <platform_data/eth-fec.h>
-#include <nand.h>
-#include <mach/iomux-mx25.h>
-#include <mach/generic.h>
-#include <mach/iim.h>
-#include <linux/err.h>
-#include <i2c/i2c.h>
-#include <mfd/mc34704.h>
-#include <mach/devices-imx25.h>
-#include <asm/barebox-arm-head.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type	= PHY_INTERFACE_MODE_RMII,
-	.phy_addr	= 1,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width	= 1,
-	.hw_ecc	= 1,
-};
-
-#ifdef CONFIG_USB
-static void imx25_usb_init(void)
-{
-	unsigned int tmp;
-
-	/* Host 2 */
-	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x600);
-	tmp &= ~(3 << 21);
-	tmp |= (2 << 21) | (1 << 4) | (1 << 5);
-	writel(tmp, MX25_USB_OTG_BASE_ADDR + 0x600);
-
-	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x584);
-	tmp |= 3 << 30;
-	writel(tmp, MX25_USB_OTG_BASE_ADDR + 0x584);
-
-	/* Set to Host mode */
-	tmp = readl(MX25_USB_OTG_BASE_ADDR + 0x5a8);
-	writel(tmp | 0x3, MX25_USB_OTG_BASE_ADDR + 0x5a8);
-}
-#endif
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("mc34704", 0x54),
-	},
-};
-
-static int imx25_3ds_pmic_init(void)
-{
-	struct mc34704 *pmic;
-
-	pmic = mc34704_get();
-	if (pmic == NULL)
-		return -EIO;
-
-	return mc34704_reg_write(pmic, 0x2, 0x9);
-}
-
-static int imx25_3ds_fec_init(void)
-{
-	int ret;
-
-	ret = imx25_3ds_pmic_init();
-	if (ret < 0)
-		return ret;
-
-	/*
-	 * Set up the FEC_RESET_B and FEC_ENABLE GPIO pins.
-	 * Assert FEC_RESET_B, then power up the PHY by asserting
-	 * FEC_ENABLE, at the same time lifting FEC_RESET_B.
-	 *
-	 * FEC_RESET_B: gpio2[3] is ALT 5 mode of pin A17
-	 * FEC_ENABLE_B: gpio4[8] is ALT 5 mode of pin D12
-	 */
-	writel(0x8, MX25_IOMUXC_BASE_ADDR + 0x0238); /* open drain */
-	writel(0x0, MX25_IOMUXC_BASE_ADDR + 0x028C); /* cmos, no pu/pd */
-
-#define FEC_ENABLE_GPIO		35
-#define FEC_RESET_B_GPIO	104
-
-	/* make the pins output */
-	gpio_direction_output(FEC_ENABLE_GPIO, 0);  /* drop PHY power */
-	gpio_direction_output(FEC_RESET_B_GPIO, 0); /* assert reset */
-	udelay(2);
-
-	/* turn on power & lift reset */
-	gpio_set_value(FEC_ENABLE_GPIO, 1);
-	gpio_set_value(FEC_RESET_B_GPIO, 1);
-
-	return 0;
-}
-late_initcall(imx25_3ds_fec_init);
-
-static int imx25_3ds_devices_init(void)
-{
-#ifdef CONFIG_USB
-	/* USB does not work yet. Don't know why. Maybe
-	 * the CPLD has to be initialized.
-	 */
-	imx25_usb_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX25_USB_OTG_BASE_ADDR + 0x400, NULL);
-#endif
-
-	imx25_iim_register_fec_ethaddr();
-	imx25_add_fec(&fec_info);
-
-	add_mem_device("sram0", 0x78000000, 128 * 1024, IORESOURCE_MEM_WRITEABLE);
-
-	if (readl(MX25_CCM_BASE_ADDR + MX25_CCM_RCSR) & (1 << 14))
-		nand_info.width = 2;
-
-	imx25_add_nand(&nand_info);
-
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-
-	devfs_add_partition("nand0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	imx25_add_i2c0(NULL);
-
-	armlinux_set_architecture(MACH_TYPE_MX25_3DS);
-	armlinux_set_serial(imx_uid());
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_freescale_mx25_3ds);
-
-	return 0;
-}
-
-device_initcall(imx25_3ds_devices_init);
-
-static iomux_v3_cfg_t imx25_pads[] = {
-	MX25_PAD_FEC_MDC__FEC_MDC,
-	MX25_PAD_FEC_MDIO__FEC_MDIO,
-	MX25_PAD_FEC_RDATA0__FEC_RDATA0,
-	MX25_PAD_FEC_RDATA1__FEC_RDATA1,
-	MX25_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX25_PAD_FEC_TDATA0__FEC_TDATA0,
-	MX25_PAD_FEC_TDATA1__FEC_TDATA1,
-	MX25_PAD_FEC_TX_CLK__FEC_TX_CLK,
-	MX25_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX25_PAD_POWER_FAIL__POWER_FAIL,
-	MX25_PAD_A17__GPIO_2_3,
-	MX25_PAD_D12__GPIO_4_8,
-	/* UART1 */
-	MX25_PAD_UART1_RXD__UART1_RXD,
-	MX25_PAD_UART1_TXD__UART1_TXD,
-	MX25_PAD_UART1_RTS__UART1_RTS,
-	MX25_PAD_UART1_CTS__UART1_CTS,
-	/* USBH2 */
-	MX25_PAD_D9__USBH2_PWR,
-	MX25_PAD_D8__USBH2_OC,
-	MX25_PAD_LD0__USBH2_CLK,
-	MX25_PAD_LD1__USBH2_DIR,
-	MX25_PAD_LD2__USBH2_STP,
-	MX25_PAD_LD3__USBH2_NXT,
-	MX25_PAD_LD4__USBH2_DATA0,
-	MX25_PAD_LD5__USBH2_DATA1,
-	MX25_PAD_LD6__USBH2_DATA2,
-	MX25_PAD_LD7__USBH2_DATA3,
-	MX25_PAD_HSYNC__USBH2_DATA4,
-	MX25_PAD_VSYNC__USBH2_DATA5,
-	MX25_PAD_LSCLK__USBH2_DATA6,
-	MX25_PAD_OE_ACD__USBH2_DATA7,
-	/* i2c */
-	MX25_PAD_I2C1_CLK__I2C1_CLK,
-	MX25_PAD_I2C1_DAT__I2C1_DAT,
-};
-
-static int imx25_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(imx25_pads, ARRAY_SIZE(imx25_pads));
-
-	writel(0x03010101, 0x53f80024);
-
-	barebox_set_model("Freescale i.MX25 3DS");
-	barebox_set_hostname("mx25-3stack");
-
-	imx25_add_uart0();
-	return 0;
-}
-
-console_initcall(imx25_console_init);
-
-static int imx25_core_setup(void)
-{
-	writel(0x01010103, MX25_CCM_BASE_ADDR + MX25_CCM_PCDR2);
-	return 0;
-
-}
-core_initcall(imx25_core_setup);
diff --git a/arch/arm/boards/freescale-mx25-3ds/Makefile b/arch/arm/boards/freescale-mx25-3ds/Makefile
deleted file mode 100644
index dbb2e77ecb..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Juergen Beisert <jbe@pengutronix.de>
-
-lwl-y += lowlevel_init.o
-obj-y += 3stack.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx25-3ds
diff --git a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/_update b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/_update
deleted file mode 100644
index 014bce3512..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-unprotect $part
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/boot b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/boot
deleted file mode 100644
index 7bbff2d1f6..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/boot
+++ /dev/null
@@ -1,47 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xnand ]; then
-	root=nand
-	kernel=nand
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$1 = xnor ]; then
-	root=nor
-	kernel=nor
-fi
-
-if [ x$ip = xdhcp ]; then
-	bootargs="$bootargs ip=dhcp"
-else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-fi
-
-if [ x$root = xnand ]; then
-	bootargs="$bootargs root=$rootpart_nand rootfstype=jffs2"
-elif [ x$root = xnor ]; then
-	bootargs="$bootargs root=$rootpart_nor rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
-fi
-
-bootargs="$bootargs mtdparts=physmap-flash.0:$nor_parts;mxc_nand:$nand_parts"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage || exit 1
-	bootm uImage
-elif [ $kernel = nor ]; then
-	bootm /dev/nor0.kernel
-else
-	bootm /dev/nand0.kernel.bb
-fi
-
diff --git a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/init b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/init
deleted file mode 100644
index 8eafa34dc8..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/init
+++ /dev/null
@@ -1,26 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-if [ -e /dev/nor0 ]; then
-	addpart /dev/nor0 $nor_parts
-fi
-
-if [ -e /dev/nand0 ]; then
-	addpart /dev/nand0 $nand_parts
-fi
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel nand|nor [<imagename>] to update kernel into flash"
-	echo "type update_root nand|nor [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
diff --git a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_kernel b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_kernel
deleted file mode 100644
index 05c822d860..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_kernel
+++ /dev/null
@@ -1,15 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.kernel.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.kernel
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
diff --git a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_root b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_root
deleted file mode 100644
index eaf36ebcea..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/bin/update_root
+++ /dev/null
@@ -1,16 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-if [ x$1 = xnand ]; then
-	part=/dev/nand0.root.bb
-elif [ x$1 = xnor ]; then
-	part=/dev/nor0.root
-else
-	echo "usage: $0 nor|nand [imagename]"
-	exit 1
-fi
-
-. /env/bin/_update $2
-
diff --git a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/config b/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/config
deleted file mode 100644
index 8469935b20..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/defaultenv-freescale-mx25-3ds/config
+++ /dev/null
@@ -1,29 +0,0 @@
-#!/bin/sh
-
-# can be either 'net', 'nor' or 'nand''
-kernel=net
-root=net
-
-uimage=uImage-pcm043
-jffs2=root-pcm043.jffs2
-
-autoboot_timeout=3
-
-nfsroot="/ptx/work/octopus/rsc/svn/oselas/bsp/phytec/phyCORE-i.MX27/OSELAS.BSP-Phytec-phyCORE-i.MX27-trunk/root"
-bootargs="console=ttymxc0,115200"
-
-nor_parts="256k(barebox)ro,128k(bareboxenv),2048k(kernel),-(root)"
-rootpart_nor="/dev/mtdblock3"
-
-nand_parts="256k(barebox)ro,128k(bareboxenv),2048k(kernel),108416k(root),-(kernel1)"
-rootpart_nand="/dev/mtdblock7"
-
-# use 'dhcp' to do dhcp in barebox and in kernel
-#ip=dhcp
-
-# or set your networking parameters here
-eth0.ipaddr=192.168.3.11
-eth0.netmask=255.255.255.0
-#eth0.gateway=a.b.c.d
-eth0.serverip=192.168.3.10
-#eth0.ethaddr=
diff --git a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
deleted file mode 100644
index 9f83d102cb..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/flash-header.imxcfg
+++ /dev/null
@@ -1,44 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-soc imx25
-loadaddr 0x80000000
-ivtofs 0x400
-wm 32 0xb8002050 0x0000d843
-wm 32 0xb8002054 0x22252521
-wm 32 0xb8002058 0x22220a00
-#if defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-wm 32 0xb8001004 0x0076e83a
-wm 32 0xb8001010 0x00000304
-wm 32 0xb8001000 0x92210000
-wm 32 0x80000f00 0x12344321
-wm 32 0xb8001000 0xb2210000
-wm 8 0x82000000 0xda
-wm 8 0x83000000 0xda
-wm 8 0x81000400 0xda
-wm 8 0x80000333 0xda
-wm 32 0xb8001000 0x92210000
-wm 32 0x80000400 0x12344321
-wm 32 0xb8001000 0xa2210000
-wm 32 0x80000000 0x87654321
-wm 32 0x80000000 0x87654321
-wm 32 0xb8001000 0xb2210000
-wm 8 0x80000233 0xda
-wm 8 0x81000780 0xda
-wm 8 0x81000400 0xda
-wm 32 0xb8001000 0x82216080
-#elif defined CONFIG_FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-wm 32 0xb8001010 0x00000004
-wm 32 0xb8001000 0x92100000
-wm 8 0x80000400 0x21
-wm 32 0xb8001000 0xa2100000
-wm 32 0x80000000 0x12344321
-wm 32 0x80000000 0x12344321
-wm 32 0xb8001000 0xb2100000
-wm 8 0x80000033 0xda
-wm 8 0x81000000 0xff
-wm 32 0xb8001000 0x82216880
-wm 32 0xb8001004 0x00295729
-#else
-#error "Unsupported SDRAM type"
-#endif
-wm 32 0x53f80008 0x20034000
diff --git a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
deleted file mode 100644
index 9be9c1a77b..0000000000
--- a/arch/arm/boards/freescale-mx25-3ds/lowlevel_init.S
+++ /dev/null
@@ -1,213 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <linux/sizes.h>
-#include <asm-generic/memory_layout.h>
-#include <mach/imx25-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/barebox-arm-head.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,	[r0];
-
-#define writeb(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	strb		r1,	[r0];
-
-/* Assuming 24MHz input clock */
-#define MPCTL_PARAM_532_MX25 \
-	(IMX_PLL_PD(1) | IMX_PLL_MFD(0) | IMX_PLL_MFI(11) | IMX_PLL_MFN(1))
-
-.section ".text_bare_init","ax"
-
-ARM_PPMRR:              .word   0x40000015
-L2CACHE_PARAM:          .word   0x00030024
-CCM_CCMR_W:             .word   0x003F4208
-CCM_PDR0_W:             .word   0x00801000
-MPCTL_PARAM_399_W:      .word   MPCTL_PARAM_399
-MPCTL_PARAM_532_W:      .word   MPCTL_PARAM_532_MX25
-PPCTL_PARAM_W:    	.word   PPCTL_PARAM_300
-CCM_BASE_ADDR_W:        .word   MX25_CCM_BASE_ADDR
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-	bl arm_cpu_lowlevel_init
-
-#define MX25_CCM_MCR	0x64
-
-	ldr r0, CCM_BASE_ADDR_W
-	/* default CLKO to 1/32 of the ARM core */
-	ldr r1, [r0, #MX25_CCM_MCR]
-	bic r1, r1, #0x00F00000
-	bic r1, r1, #0x7F000000
-	mov r2,     #0x5F000000
-	add r2, r2, #0x00200000
-	orr r1, r1, r2
-	str r1, [r0, #MX25_CCM_MCR]
-
-	/* enable all the clocks */
-	writel(0x1FFFFFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR0)
-	writel(0xFFFFFFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR1)
-	writel(0x000FDFFF, MX25_CCM_BASE_ADDR + MX25_CCM_CGCR2)
-	writel(0x0000FEFF, MX25_CCM_BASE_ADDR + MX25_CCM_MCR)
-
-	/* Setup a temporary stack in SRAM */
-	ldr	sp, =MX25_IRAM_BASE_ADDR + MX25_IRAM_SIZE - 4
-
-	/* Skip SDRAM initialization if we run from RAM */
-	cmp	pc, #0x80000000
-	bls	1f
-	cmp	pc, #0x90000000
-	bhi	1f
-
-	b	imx25_barebox_entry
-
-1:
-	ldr r0, ESDCTL_BASE_W
-	mov r3, #0x2000
-	str r3, [r0, #0x0]
-	str r3, [r0, #0x8]
-
-	mov r12, #0x00
-	mov r2, #0x1	/* mDDR */
-	mov r1, #MX25_CSD0_BASE_ADDR
-	bl setup_sdram_bank
-//	cmp r3, #0x0
-//	orreq r12, r12, #1
-//	eorne r2, r2, #0x1
-//	blne setup_sdram_bank
-
-	ldr r3, ESDCTL_DELAY5
-	str r3, [r0, #0x30]
-
-#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
-
-	mov	r0, #0
-	b	imx25_barebox_boot_nand_external
-#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
-
-ret:
-	b	imx25_barebox_entry
-
-/*
- * r0: control base, r1: ram bank base
- * r2: ddr type(0:DDR2, 1:MDDR) r3, r4: working
- */
-setup_sdram_bank:
-	mov r3, #0xE /* 0xA + 0x4 */
-	tst r2, #0x1
-	orreq r3, r3, #0x300 /* DDR2 */
-	str r3, [r0, #0x10]
-	bic r3, r3, #0x00A
-	str r3, [r0, #0x10]
-	beq 2f
-
-	mov r3, #0x20000
-1:	subs r3, r3, #1
-	bne 1b
-
-2:	adr r4, ESDCTL_CONFIG
-	tst r2, #0x1
-	ldreq r3, [r4, #0x0]
-	ldrne r3, [r4, #0x4]
-	cmp r1, #MX25_CSD1_BASE_ADDR
-	strlo r3, [r0, #0x4]
-	strhs r3, [r0, #0xC]
-
-	ldr r3, ESDCTL_0x92220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	ldr r4, RAM_PARAM1_MDDR
-	strb r3, [r1, r4]
-
-	tst r2, #0x1
-	bne skip_set_mode
-
-	cmp r1, #MX25_CSD1_BASE_ADDR
-	ldr r3, ESDCTL_0xB2220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	ldr r4, RAM_PARAM4_MDDR
-	strb r3, [r1, r4]
-	ldr r4, RAM_PARAM5_MDDR
-	strb r3, [r1, r4]
-	ldr r4, RAM_PARAM3_MDDR
-	strb r3, [r1, r4]
-	ldr r4, RAM_PARAM2_MDDR
-	strb r3, [r1, r4]
-
-	ldr r3, ESDCTL_0x92220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	ldr r4, RAM_PARAM1_MDDR
-	strb r3, [r1, r4]
-
-skip_set_mode:
-	cmp r1, #MX25_CSD1_BASE_ADDR
-	ldr r3, ESDCTL_0xA2220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	mov r3, #0xDA
-	strb r3, [r1]
-	strb r3, [r1]
-
-	ldr r3, ESDCTL_0xB2220000
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-	adr r4, RAM_PARAM6_MDDR
-	tst r2, #0x1
-	ldreq r4, [r4, #0x0]
-	ldrne r4, [r4, #0x4]
-	mov r3, #0xDA
-	strb r3, [r1, r4]
-	ldreq r4, RAM_PARAM7_MDDR
-	streqb r3, [r1, r4]
-	adr r4, RAM_PARAM3_MDDR
-	ldreq r4, [r4, #0x0]
-	ldrne r4, [r4, #0x4]
-	strb r3, [r1, r4]
-
-	cmp r1, #MX25_CSD1_BASE_ADDR
-	ldr r3, ESDCTL_0x82226080
-	strlo r3, [r0, #0x0]
-	strhs r3, [r0, #0x8]
-
-	tst r2, #0x1
-	moveq r4, #0x20000
-	movne r4, #0x200
-1:	subs r4, r4, #1
-	bne 1b
-
-	str r3, [r1, #0x100]
-	ldr r4, [r1, #0x100]
-	cmp r3, r4
-	movne r3, #1
-	moveq r3, #0
-
-	mov pc, lr
-
-RAM_PARAM1_MDDR:	.word	0x00000400
-RAM_PARAM2_MDDR:	.word	0x00000333
-RAM_PARAM3_MDDR:	.word	0x02000400
-			.word	0x02000000
-RAM_PARAM4_MDDR:	.word	0x04000000
-RAM_PARAM5_MDDR:	.word	0x06000000
-RAM_PARAM6_MDDR:	.word	0x00000233
-			.word	0x00000033
-RAM_PARAM7_MDDR:	.word	0x02000780
-ESDCTL_0x92220000:	.word	0x92210000
-ESDCTL_0xA2220000:	.word	0xA2210000
-ESDCTL_0xB2220000:	.word	0xB2210000
-ESDCTL_0x82226080:	.word	0x82216080
-ESDCTL_CONFIG:		.word	0x007FFC3F
-			.word	0x007FFC3F
-ESDCTL_DELAY5:		.word	0x00F49F00
-ESDCTL_BASE_W:		.word	MX25_ESDCTL_BASE_ADDR
-
diff --git a/arch/arm/boards/freescale-mx27-ads/Makefile b/arch/arm/boards/freescale-mx27-ads/Makefile
deleted file mode 100644
index 9fd43dd984..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-lwl-y += lowlevel_init.o
-obj-y += imx27ads.o
diff --git a/arch/arm/boards/freescale-mx27-ads/env/bin/_update b/arch/arm/boards/freescale-mx27-ads/env/bin/_update
deleted file mode 100644
index 014bce3512..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/env/bin/_update
+++ /dev/null
@@ -1,36 +0,0 @@
-#!/bin/sh
-
-if [ -z "$part" -o -z "$image" ]; then
-	echo "define \$part and \$image"
-	exit 1
-fi
-
-if [ ! -e "$part" ]; then
-	echo "Partition $part does not exist"
-	exit 1
-fi
-
-if [ $# = 1 ]; then
-	image=$1
-fi
-
-if [ x$ip = xdhcp ]; then
-	dhcp
-fi
-
-ping $eth0.serverip
-if [ $? -ne 0 ] ; then
-	echo "update aborted"
-	exit 1
-fi
-
-unprotect $part
-
-echo
-echo "erasing partition $part"
-erase $part
-
-echo
-echo "flashing $image to $part"
-echo
-tftp $image $part
diff --git a/arch/arm/boards/freescale-mx27-ads/env/bin/boot b/arch/arm/boards/freescale-mx27-ads/env/bin/boot
deleted file mode 100644
index 3859dc113b..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/env/bin/boot
+++ /dev/null
@@ -1,38 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-if [ x$1 = xflash ]; then
-	root=flash
-	kernel=flash
-fi
-
-if [ x$1 = xnet ]; then
-	root=net
-	kernel=net
-fi
-
-if [ x$ip = xdhcp ]; then
-	bootargs="$bootargs ip=dhcp"
-else
-	bootargs="$bootargs ip=$eth0.ipaddr:$eth0.serverip:$eth0.gateway:$eth0.netmask:::"
-fi
-
-if [ x$root = xflash ]; then
-	bootargs="$bootargs root=$rootpart rootfstype=jffs2"
-else
-	bootargs="$bootargs root=/dev/nfs nfsroot=$eth0.serverip:$nfsroot,v3,tcp"
-fi
-
-bootargs="$bootargs mtdparts=physmap-flash.0:$mtdparts"
-
-if [ $kernel = net ]; then
-	if [ x$ip = xdhcp ]; then
-		dhcp
-	fi
-	tftp $uimage uImage || exit 1
-	bootm uImage
-else
-	bootm /dev/nor0.kernel
-fi
-
diff --git a/arch/arm/boards/freescale-mx27-ads/env/bin/init b/arch/arm/boards/freescale-mx27-ads/env/bin/init
deleted file mode 100644
index 48e2139f7d..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/env/bin/init
+++ /dev/null
@@ -1,20 +0,0 @@
-#!/bin/sh
-
-PATH=/env/bin
-export PATH
-
-. /env/config
-addpart /dev/nor0 $mtdparts
-
-echo
-echo -n "Hit any key to stop autoboot: "
-timeout -a $autoboot_timeout
-if [ $? != 0 ]; then
-	echo
-	echo "type update_kernel [<imagename>] to update kernel into flash"
-	echo "type udate_root [<imagename>] to update rootfs into flash"
-	echo
-	exit
-fi
-
-boot
\ No newline at end of file
diff --git a/arch/arm/boards/freescale-mx27-ads/env/bin/update_kernel b/arch/arm/boards/freescale-mx27-ads/env/bin/update_kernel
deleted file mode 100644
index 1ad95fc5d6..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/env/bin/update_kernel
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$uimage
-part=/dev/nor0.kernel
-
-. /env/bin/_update $1
diff --git a/arch/arm/boards/freescale-mx27-ads/env/bin/update_root b/arch/arm/boards/freescale-mx27-ads/env/bin/update_root
deleted file mode 100644
index b757a5b922..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/env/bin/update_root
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-. /env/config
-
-image=$jffs2
-part=/dev/nor0.root
-
-. /env/bin/_update $1
diff --git a/arch/arm/boards/freescale-mx27-ads/env/config b/arch/arm/boards/freescale-mx27-ads/env/config
deleted file mode 100644
index f18a86b7c1..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/env/config
+++ /dev/null
@@ -1,25 +0,0 @@
-#!/bin/sh
-
-# can be either 'net' or 'flash'
-kernel=net
-root=net
-
-# use 'dhcp' todo dhcp in barebox and in kernel
-ip=dhcp
-
-eth0.ipaddr=192.168.23.164
-eth0.netmask=255.255.255.0
-eth0.gateway=192.168.23.2
-eth0.serverip=192.168.23.2
-
-uimage=uImage-mx27ads
-jffs2=root-mx27ads.jffs2
-
-autoboot_timeout=3
-
-nfsroot="/tmp/imx27ads"
-bootargs="console=ttymxc0,115200"
-
-mtdparts="128k(barebox)ro,128k(bareboxenv),1536k(kernel),-(root)"
-rootpart="/dev/mtdblock3"
-
diff --git a/arch/arm/boards/freescale-mx27-ads/imx27ads.c b/arch/arm/boards/freescale-mx27-ads/imx27ads.c
deleted file mode 100644
index 1ea4b39ae3..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/imx27ads.c
+++ /dev/null
@@ -1,110 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer, Pengutronix
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <mach/imx27-regs.h>
-#include <asm/armlinux.h>
-#include <io.h>
-#include <platform_data/eth-fec.h>
-#include <gpio.h>
-#include <mach/weim.h>
-#include <fs.h>
-#include <fcntl.h>
-#include <generated/mach-types.h>
-#include <mach/iomux-mx27.h>
-#include <mach/devices-imx27.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-	.phy_addr = 1,
-};
-
-static int imx27ads_timing_init(void)
-{
-	/* configure cpld on cs4 */
-	imx27_setup_weimcs(4, 0x0000DCF6, 0x444A4541, 0x44443302);
-
-	/* configure synchronous mode for
-	 * 16 bit nor flash on cs0 */
-	imx27_setup_weimcs(0, 0x0000CC03, 0xa0330D01, 0x00220800);
-
-	writew(0x00f0, 0xc0000000);
-	writew(0x00aa, 0xc0000aaa);
-	writew(0x0055, 0xc0000554);
-	writew(0x00d0, 0xc0000aaa);
-	writew(0x66ca, 0xc0000aaa);
-	writew(0x00f0, 0xc0000000);
-
-	imx27_setup_weimcs(0, 0x23524E80, 0x10000D03, 0x00720900);
-
-	/* Select FEC data through data path */
-	writew(0x0020, MX27_CS4_BASE_ADDR + 0x10);
-
-	/* Enable CPLD FEC data path */
-	writew(0x0010, MX27_CS4_BASE_ADDR + 0x14);
-
-	return 0;
-}
-
-core_initcall(imx27ads_timing_init);
-
-static int mx27ads_devices_init(void)
-{
-	int i;
-	unsigned int mode[] = {
-		PD0_AIN_FEC_TXD0,
-		PD1_AIN_FEC_TXD1,
-		PD2_AIN_FEC_TXD2,
-		PD3_AIN_FEC_TXD3,
-		PD4_AOUT_FEC_RX_ER,
-		PD5_AOUT_FEC_RXD1,
-		PD6_AOUT_FEC_RXD2,
-		PD7_AOUT_FEC_RXD3,
-		PD8_AF_FEC_MDIO,
-		PD9_AIN_FEC_MDC | GPIO_PUEN,
-		PD10_AOUT_FEC_CRS,
-		PD11_AOUT_FEC_TX_CLK,
-		PD12_AOUT_FEC_RXD0,
-		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_RX_CLK,
-		PD15_AOUT_FEC_COL,
-		PD16_AIN_FEC_TX_ER,
-		PF23_AIN_FEC_TX_EN,
-		PE12_PF_UART1_TXD,
-		PE13_PF_UART1_RXD,
-		PE14_PF_UART1_CTS,
-		PE15_PF_UART1_RTS,
-	};
-
-	/* initizalize gpios */
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx27_gpio_mode(mode[i]);
-
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, 0xC0000000, 32 * 1024 * 1024, 0);
-
-	imx27_add_fec(&fec_info);
-	devfs_add_partition("nor0", 0x00000, 0x20000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("nor0", 0x20000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-	protect_file("/dev/env0", 1);
-
-	armlinux_set_architecture(MACH_TYPE_MX27ADS);
-
-	return 0;
-}
-
-device_initcall(mx27ads_devices_init);
-
-static int mx27ads_console_init(void)
-{
-	barebox_set_model("Freescale i.MX27 ADS");
-	barebox_set_hostname("mx27ads");
-
-	imx27_add_uart0();
-	return 0;
-}
-
-console_initcall(mx27ads_console_init);
-
diff --git a/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S b/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
deleted file mode 100644
index bd78ebf9e8..0000000000
--- a/arch/arm/boards/freescale-mx27-ads/lowlevel_init.S
+++ /dev/null
@@ -1,116 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-/*
- * For clock initialization, see chapter 3 of the "MCIMX27 Multimedia
- * Applications Processor Reference Manual, Rev. 0.2".
- *
- */
-
-#include <config.h>
-#include <mach/imx27-regs.h>
-#include <asm/barebox-arm-head.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
-#define CRM_PLL_PCTL_PARAM(pd, fd, fi, fn)  (((pd-1)<<26) + ((fd-1)<<16) + (fi<<10) + (fn<<0))
-
-.macro sdram_init
-	/*
-	 * DDR on CSD0
-	 */
-	writel(0x00000008, 0xD8001010)
-	writel(0x55555555, 0x10027828)
-	writel(0x55555555, 0x10027830)
-	writel(0x55555555, 0x10027834)
-	writel(0x00005005, 0x10027838)
-	writel(0x15555555, 0x1002783C)
-	writel(0x00000004, 0xD8001010)
-	writel(0x006ac73a, 0xD8001004)
-	writel(0x92100000, 0xD8001000)
-	writel(0x00000000, 0xA0000F00)
-	writel(0xA2100000, 0xD8001000)
-	writel(0x00000000, 0xA0000F00)
-	writel(0x00000000, 0xA0000F00)
-	writel(0x00000000, 0xA0000F00)
-	writel(0x00000000, 0xA0000F00)
-	writel(0xA2200000, 0xD8001000)
-	writel(0x00000000, 0xA0000F00)
-	writel(0x00000000, 0xA0000F00)
-	writel(0x00000000, 0xA0000F00)
-	writel(0x00000000, 0xA0000F00)
-	writel(0xb2100000, 0xD8001000)
-	ldr		r0, =0xA0000033
-	mov		r1, #0xda
-	strb		r1, [r0]
-	ldr		r0, =0xA1000000
-	mov		r1, #0xff
-	strb		r1, [r0]
-	writel(0x82226080, 0xD8001000)
-.endm
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-
-	bl arm_cpu_lowlevel_init
-
-	ldr	sp, =MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE - 4;
-
-	/* ahb lite ip interface */
-	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0)
-	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1)
-	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0)
-	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1)
-
-	/* disable mpll/spll */
-	ldr r0, =MX27_CCM_BASE_ADDR + MX27_CSCR
-	ldr r1, [r0]
-	bic r1, r1, #0x03
-	str r1, [r0]
-
-	/*
-	 * pll clock initialization - see section 3.4.3 of the i.MX27 manual
-	 *
-	 * FIXME: Using the 399*2 MHz values from table 3-8 doens't work
-	 *        with 1.2 V core voltage! Find out if this is
-	 *        documented somewhere.
-	 */
-	writel(0x00191403, MX27_CCM_BASE_ADDR + MX27_MPCTL0)	/* MPLL = 199.5*2 MHz               */
-	writel(0x040C2403, MX27_CCM_BASE_ADDR + MX27_SPCTL0)	/* SPLL = FIXME (needs review)      */
-
-	/*
-	 * ARM clock = (399 MHz / 2) / (ARM divider = 1) = 200 MHz
-	 * AHB clock = (399 MHz / 3) / (AHB divider = 2) = 66.5 MHz
-	 * System clock (HCLK) = 133 MHz
-	 */
-	writel(0x33F30307 | MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART,
-			MX27_CCM_BASE_ADDR + MX27_CSCR)
-
-	/* add some delay here */
-	mov r1, #0x1000
-1:	subs r1, r1, #0x1
-	bne 1b
-
-	/* clock gating enable */
-	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR)
-
-	/* peripheral clock divider */
-	/* FIXME                            */
-	writel(0x23C8F403, MX27_CCM_BASE_ADDR + MX27_PCDR0)
-	/* PERDIV1=08 @133 MHz              */
-	/* PERDIV1=04 @266 MHz              */
-	writel(0x09030913, MX27_CCM_BASE_ADDR + MX27_PCDR1)
-	/* skip sdram initialization if we run from ram */
-	cmp	pc, #0xa0000000
-	bls	1f
-	cmp	pc, #0xc0000000
-	bhi	1f
-
-	b imx27_barebox_entry
-1:
-	sdram_init
-
-	b imx27_barebox_entry
-
diff --git a/arch/arm/boards/freescale-mx35-3ds/3stack.c b/arch/arm/boards/freescale-mx35-3ds/3stack.c
deleted file mode 100644
index f18703fc7f..0000000000
--- a/arch/arm/boards/freescale-mx35-3ds/3stack.c
+++ /dev/null
@@ -1,454 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-
-/*
- * Copyright (C) 2007 Sascha Hauer, Pengutronix
- *               2009 Marc Kleine-Budde, Pengutronix
- *
- * Derived from:
- *
- * * mx35_3stack.c - board file for uboot-v1
- *   Copyright (C) 2007, Guennadi Liakhovetski <lg@denx.de>
- *   (C) Copyright 2008-2009 Freescale Semiconductor, Inc.
- */
-
-#include <common.h>
-#include <environment.h>
-#include <errno.h>
-#include <fcntl.h>
-#include <platform_data/eth-fec.h>
-#include <fs.h>
-#include <init.h>
-#include <nand.h>
-#include <net.h>
-#include <envfs.h>
-#include <linux/sizes.h>
-#include <gpio.h>
-
-#include <asm/armlinux.h>
-#include <asm/sections.h>
-#include <asm/barebox-arm.h>
-#include <io.h>
-#include <generated/mach-types.h>
-
-#include <mach/weim.h>
-#include <mach/imx-nand.h>
-#include <mach/imx35-regs.h>
-#include <mach/iomux-mx35.h>
-#include <mach/iomux-v3.h>
-#include <mach/imx-ipu-fb.h>
-#include <mach/generic.h>
-#include <mach/devices-imx35.h>
-#include <mach/revision.h>
-
-#include <i2c/i2c.h>
-#include <mfd/mc13xxx.h>
-#include <mfd/mc9sdz60.h>
-
-
-/* Board rev for the PDK 3stack */
-#define MX35PDK_BOARD_REV_1		0
-#define MX35PDK_BOARD_REV_2		1
-
-static struct fec_platform_data fec_info = {
-	.xcv_type	= PHY_INTERFACE_MODE_MII,
-	.phy_addr	= 0x1F,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
-static struct i2c_board_info i2c_devices[] = {
-	{
-		I2C_BOARD_INFO("mc13892", 0x08),
-	}, {
-		I2C_BOARD_INFO("mc9sdz60", 0x69),
-	},
-};
-
-/*
- * Generic display, shipped with the PDK
- */
-static struct fb_videomode CTP_CLAA070LC0ACW = {
-	/* 800x480 @ 60 Hz */
-	.name		= "CTP-CLAA070LC0ACW",
-	.refresh	= 60,
-	.xres		= 800,
-	.yres		= 480,
-	.pixclock	= KHZ2PICOS(27000),
-	.left_margin	= 50,
-	.right_margin	= 50,	/* whole line should have 900 clocks */
-	.upper_margin	= 10,
-	.lower_margin	= 10,	/* whole frame should have 500 lines */
-	.hsync_len	= 1,	/* note: DE only display */
-	.vsync_len	= 1,	/* note: DE only display */
-	.sync		= FB_SYNC_CLK_IDLE_EN | FB_SYNC_OE_ACT_HIGH,
-	.vmode		= FB_VMODE_NONINTERLACED,
-};
-
-static struct imx_ipu_fb_platform_data ipu_fb_data = {
-	.mode		= &CTP_CLAA070LC0ACW,
-	.num_modes	= 1,
-	.bpp		= 16,
-};
-
-/*
- * Revision to be passed to kernel. The kernel provided
- * by freescale relies on this.
- *
- * C --> CPU type
- * S --> Silicon revision
- * B --> Board rev
- *
- * 31    20     16     12    8      4     0
- *        | Cmaj | Cmin | B  | Smaj | Smin|
- *
- * e.g 0x00035120 --> i.MX35, Cpu silicon rev 2.0, Board rev 2
-*/
-static unsigned int imx35_3ds_system_rev = 0x00035000;
-
-static void set_silicon_rev( int rev)
-{
-	imx35_3ds_system_rev = imx35_3ds_system_rev | (rev & 0xFF);
-}
-
-static void set_board_rev(int rev)
-{
-	imx35_3ds_system_rev =  (imx35_3ds_system_rev & ~(0xF << 8)) | (rev & 0xF) << 8;
-}
-
-static const struct devfs_partition f3s_nand0_partitions[] = {
-	{
-		.offset = 0,
-		.size = 0x40000,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "self_raw",
-		.bbname = "self0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 0x40000 */
-		.size = 0x80000,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env_raw",
-		.bbname = "env0",
-	}, {
-		/* sentinel */
-	}
-};
-
-static const struct devfs_partition f3s_nor0_partitions[] = {
-	{
-		.offset = 0,
-		.size = 0x40000,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "self0",
-	}, {
-		.offset = DEVFS_PARTITION_APPEND, /* 0x40000 */
-		.size = 0x80000,
-		.flags = DEVFS_PARTITION_FIXED,
-		.name = "env0",
-	}, {
-		/* sentinel */
-	}
-};
-
-static int f3s_devices_init(void)
-{
-	uint32_t reg;
-
-	/* CS0: Nor Flash */
-	imx35_setup_weimcs(0, 0x0000cf03, 0x10000d03, 0x00720900);
-
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
-	/* some fuses provide us vital information about connected hardware */
-	if (reg & 0x20000000)
-		nand_info.width = 2;	/* 16 bit */
-	else
-		nand_info.width = 1;	/* 8 bit */
-
-	/*
-	 * This platform supports NOR and NAND
-	 */
-	imx35_add_nand(&nand_info);
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX35_CS0_BASE_ADDR, 64 * 1024 * 1024, 0);
-
-	switch ((reg >> 25) & 0x3) {
-	case 0x01:		/* NAND is the source */
-		devfs_create_partitions("nand0", f3s_nand0_partitions);
-		break;
-
-	case 0x00:		/* NOR is the source */
-		devfs_create_partitions("nor0", f3s_nor0_partitions);
-		protect_file("/dev/env0", 1);
-		break;
-	}
-
-	set_silicon_rev(imx_silicon_revision());
-
-	i2c_register_board_info(0, i2c_devices, ARRAY_SIZE(i2c_devices));
-	imx35_add_i2c0(NULL);
-
-	imx35_add_fec(&fec_info);
-	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	MX35_CS5_BASE_ADDR, MX35_CS5_SIZE,
-			IORESOURCE_MEM, NULL);
-
-	imx35_add_mmc0(NULL);
-
-	imx35_add_fb(&ipu_fb_data);
-
-	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_freescale_mx35_3ds);
-
-	return 0;
-}
-
-device_initcall(f3s_devices_init);
-
-static int f3s_enable_display(void)
-{
-	/* Enable power to the LCD. (bit 6 hi.) */
-	mc9sdz60_set_bits(mc9sdz60_get(), MC9SDZ60_REG_GPIO_1, 0x40, 0x40);
-
-	return 0;
-}
-
-late_initcall(f3s_enable_display);
-
-static iomux_v3_cfg_t f3s_pads[] = {
-	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
-	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
-	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX35_PAD_FEC_COL__FEC_COL,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX35_PAD_FEC_MDC__FEC_MDC,
-	MX35_PAD_FEC_MDIO__FEC_MDIO,
-	MX35_PAD_FEC_TX_ERR__FEC_TX_ERR,
-	MX35_PAD_FEC_RX_ERR__FEC_RX_ERR,
-	MX35_PAD_FEC_CRS__FEC_CRS,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
-	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
-	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
-	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
-	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
-	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
-
-	MX35_PAD_RXD1__UART1_RXD_MUX,
-	MX35_PAD_TXD1__UART1_TXD_MUX,
-	MX35_PAD_RTS1__UART1_RTS,
-	MX35_PAD_CTS1__UART1_CTS,
-
-	MX35_PAD_I2C1_CLK__I2C1_SCL,
-	MX35_PAD_I2C1_DAT__I2C1_SDA,
-
-	MX35_PAD_WDOG_RST__GPIO1_6,
-	MX35_PAD_COMPARE__GPIO1_5,
-
-	/* Display */
-	MX35_PAD_LD0__IPU_DISPB_DAT_0,
-	MX35_PAD_LD1__IPU_DISPB_DAT_1,
-	MX35_PAD_LD2__IPU_DISPB_DAT_2,
-	MX35_PAD_LD3__IPU_DISPB_DAT_3,
-	MX35_PAD_LD4__IPU_DISPB_DAT_4,
-	MX35_PAD_LD5__IPU_DISPB_DAT_5,
-	MX35_PAD_LD6__IPU_DISPB_DAT_6,
-	MX35_PAD_LD7__IPU_DISPB_DAT_7,
-	MX35_PAD_LD8__IPU_DISPB_DAT_8,
-	MX35_PAD_LD9__IPU_DISPB_DAT_9,
-	MX35_PAD_LD10__IPU_DISPB_DAT_10,
-	MX35_PAD_LD11__IPU_DISPB_DAT_11,
-	MX35_PAD_LD12__IPU_DISPB_DAT_12,
-	MX35_PAD_LD13__IPU_DISPB_DAT_13,
-	MX35_PAD_LD14__IPU_DISPB_DAT_14,
-	MX35_PAD_LD15__IPU_DISPB_DAT_15,
-	MX35_PAD_LD16__IPU_DISPB_DAT_16,
-	MX35_PAD_LD17__IPU_DISPB_DAT_17,
-	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
-	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
-	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
-	MX35_PAD_CONTRAST__IPU_DISPB_CONTR,
-	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
-	MX35_PAD_D3_REV__IPU_DISPB_D3_REV,
-	MX35_PAD_D3_CLS__IPU_DISPB_D3_CLS,
-};
-
-static int f3s_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(f3s_pads, ARRAY_SIZE(f3s_pads));
-
-	barebox_set_model("Freescale i.MX35 3DS");
-	barebox_set_hostname("mx35-3stack");
-
-	imx35_add_uart0();
-	return 0;
-}
-
-console_initcall(f3s_console_init);
-
-static int f3s_core_init(void)
-{
-	u32 reg;
-
-	/* CS5: smc9117 */
-	imx35_setup_weimcs(5, 0x0000D843, 0x22252521, 0x22220A00);
-
-	/* enable clock for I2C1 and FEC */
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-	reg |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
-	reg |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
-	reg = writel(reg, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-
-	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
-	/*
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR + 0x4);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR + 0x4);
-
-	/*
-	 * Clear the on and off peripheral modules Supervisor Protect bit
-	 * for SDMA to access them. Did not change the AIPS control registers
-	 * (offset 0x20) access type
-	 */
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x4C);
-	reg = readl(MX35_AIPS1_BASE_ADDR + 0x50);
-	reg &= 0x00FFFFFF;
-	writel(reg, MX35_AIPS1_BASE_ADDR + 0x50);
-
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x4C);
-	reg = readl(MX35_AIPS2_BASE_ADDR + 0x50);
-	reg &= 0x00FFFFFF;
-	writel(reg, MX35_AIPS2_BASE_ADDR + 0x50);
-
-	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
-
-	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
-#define MAX_PARAM1 0x00302154
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x000); /* for S0 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x100); /* for S1 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x200); /* for S2 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x300); /* for S3 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x400); /* for S4 */
-
-	/* SGPCR - always park on last master */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x10);	/* for S0 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x110);	/* for S1 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x210);	/* for S2 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x310);	/* for S3 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x410);	/* for S4 */
-
-	/* MGPCR - restore default values */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x800);	/* for M0 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x900);	/* for M1 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xa00);	/* for M2 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xb00);	/* for M3 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
-
-	return 0;
-}
-
-core_initcall(f3s_core_init);
-
-static int f3s_get_rev(struct mc13xxx *mc13xxx)
-{
-	u32 rev;
-	int err;
-
-	err = mc13xxx_reg_read(mc13xxx, MC13XXX_REG_IDENTIFICATION, &rev);
-	if (err)
-		return err;
-
-	if (rev == 0x00ffffff)
-		return -ENODEV;
-
-	return ((rev >> 6) & 0x7) ? MX35PDK_BOARD_REV_2 : MX35PDK_BOARD_REV_1;
-}
-
-static int f3s_pmic_init_v2(struct mc13xxx *mc13xxx)
-{
-	int err = 0;
-
-	/* COMPARE pin (GPIO1_5) as output and set high */
-	gpio_direction_output( 32*0 + 5 , 1);
-
-	err |= mc13xxx_set_bits(mc13xxx, MC13892_REG_SETTING_0, 0x03, 0x03);
-	err |= mc13xxx_set_bits(mc13xxx, MC13892_REG_MODE_0, 0x01, 0x01);
-	if (err)
-		printf("mc13892 Init sequence failed, the system might not be working!\n");
-
-	return err;
-}
-
-static int f3s_pmic_init_all(struct mc9sdz60 *mc9sdz60)
-{
-	int err = 0;
-
-	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_GPIO_1, 0x04, 0x04);
-
-	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_1, 0x80, 0x00);
-	mdelay(200);
-	err |= mc9sdz60_set_bits(mc9sdz60, MC9SDZ60_REG_RESET_1, 0x80, 0x80);
-
-	if (err)
-		dev_err(&mc9sdz60->client->dev,
-			"Init sequence failed, the system might not be working!\n");
-
-	return err;
-}
-
-static int f3s_pmic_init(void)
-{
-	struct mc13xxx *mc13xxx;
-	struct mc9sdz60 *mc9sdz60;
-	int rev;
-
-	mc13xxx = mc13xxx_get();
-	if (!mc13xxx) {
-		printf("FAILED to get PMIC handle!\n");
-		return 0;
-	}
-
-	rev = f3s_get_rev(mc13xxx);
-	switch (rev) {
-	case MX35PDK_BOARD_REV_1:
-		break;
-	case MX35PDK_BOARD_REV_2:
-		f3s_pmic_init_v2(mc13xxx);
-		break;
-	default:
-		printf("FAILED to identify board revision!\n");
-		return 0;
-	}
-
-	set_board_rev(rev);
-	printf("i.MX35 PDK CPU board version %d.\n", rev );
-
-	mc9sdz60 = mc9sdz60_get();
-	if (!mc9sdz60) {
-		printf("FAILED to get mc9sdz60 handle!\n");
-		return 0;
-	}
-
-	f3s_pmic_init_all(mc9sdz60);
-
-	armlinux_set_revision(imx35_3ds_system_rev);
-
-	return 0;
-}
-
-late_initcall(f3s_pmic_init);
diff --git a/arch/arm/boards/freescale-mx35-3ds/Makefile b/arch/arm/boards/freescale-mx35-3ds/Makefile
deleted file mode 100644
index e33babb4b3..0000000000
--- a/arch/arm/boards/freescale-mx35-3ds/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y					+= 3stack.o
-lwl-y					+= lowlevel_init.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx35-3ds
diff --git a/arch/arm/boards/freescale-mx35-3ds/board-mx35_3stack.h b/arch/arm/boards/freescale-mx35-3ds/board-mx35_3stack.h
deleted file mode 100644
index 9d0d492062..0000000000
--- a/arch/arm/boards/freescale-mx35-3ds/board-mx35_3stack.h
+++ /dev/null
@@ -1,86 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2008 Freescale Semiconductor, Inc.
-
-#ifndef __BOARD_MX35_3STACK_H
-#define __BOARD_MX35_3STACK_H
-
-#define UNALIGNED_ACCESS_ENABLE
-#define LOW_INT_LATENCY_ENABLE
-#define BRANCH_PREDICTION_ENABLE
-
-#define L2CC_AUX_CTL_CONFIG	0x00030024
-
-#define AIPS_MPR_CONFIG		0x77777777
-#define AIPS_OPACR_CONFIG	0x00000000
-
-/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
-#define MAX_MPR_CONFIG		0x00302154
-/* SGPCR - always park on last master */
-#define MAX_SGPCR_CONFIG	0x00000010
-/* MGPCR - restore default values */
-#define MAX_MGPCR_CONFIG	0x00000000
-
-/*
- * M3IF Control Register (M3IFCTL)
- * MRRP[0] = L2CC0 not on priority list (0 << 0) = 0x00000000
- * MRRP[1] = L2CC1 not on priority list (0 << 0) = 0x00000000
- * MRRP[2] = MBX not on priority list (0 << 0)   = 0x00000000
- * MRRP[3] = MAX1 not on priority list (0 << 0)  = 0x00000000
- * MRRP[4] = SDMA not on priority list (0 << 0)  = 0x00000000
- * MRRP[5] = MPEG4 not on priority list (0 << 0) = 0x00000000
- * MRRP[6] = IPU1 on priority list (1 << 6)      = 0x00000040
- * MRRP[7] = IPU2 not on priority list (0 << 0)  = 0x00000000
- *                                               ------------
- *                                                 0x00000040
- */
-#define M3IF_CONFIG	0x00000040
-
-#define DBG_BASE_ADDR		WEIM_CTRL_CS5
-#define DBG_CSCR_U_CONFIG	0x0000D843
-#define DBG_CSCR_L_CONFIG	0x22252521
-#define DBG_CSCR_A_CONFIG	0x22220A00
-
-#define CCM_CCMR_CONFIG		0x003F4208
-#define CCM_PDR0_CONFIG		0x00821000
-
-#define PLL_BRM_OFFSET	31
-#define PLL_PD_OFFSET	26
-#define PLL_MFD_OFFSET	16
-#define PLL_MFI_OFFSET	10
-
-#define _PLL_BRM(x)	((x) << PLL_BRM_OFFSET)
-#define _PLL_PD(x)	(((x) - 1) << PLL_PD_OFFSET)
-#define _PLL_MFD(x)	(((x) - 1) << PLL_MFD_OFFSET)
-#define _PLL_MFI(x)	((x) << PLL_MFI_OFFSET)
-#define _PLL_MFN(x)	(x)
-#define _PLL_SETTING(brm, pd, mfd, mfi, mfn) \
-	(_PLL_BRM(brm) | _PLL_PD(pd) | _PLL_MFD(mfd) | _PLL_MFI(mfi) |\
-	 _PLL_MFN(mfn))
-
-#define CCM_MPLL_532_HZ	_PLL_SETTING(1, 1, 12, 11, 1)
-#define CCM_MPLL_399_HZ _PLL_SETTING(0, 1, 16, 8, 5)
-#define CCM_PPLL_300_HZ _PLL_SETTING(0, 1, 4, 6, 1)
-
-/*MEMORY SETING*/
-#define ESDCTL_0x92220000	0x92220000
-#define ESDCTL_0xA2220000	0xA2220000
-#define ESDCTL_0xB2220000	0xB2220000
-#define ESDCTL_0x82228080 	0x82228080
-
-#define ESDCTL_PRECHARGE	0x00000400
-
-#define ESDCTL_MDDR_CONFIG 	0x007FFC3F
-#define ESDCTL_MDDR_MR		0x00000033
-#define ESDCTL_MDDR_EMR		0x02000000
-
-#define ESDCTL_DDR2_CONFIG 	0x007FFC3F
-#define ESDCTL_DDR2_EMR2	0x04000000
-#define ESDCTL_DDR2_EMR3	0x06000000
-#define ESDCTL_DDR2_EN_DLL	0x02000400
-#define ESDCTL_DDR2_RESET_DLL	0x00000333
-#define ESDCTL_DDR2_MR		0x00000233
-#define ESDCTL_DDR2_OCD_DEFAULT 0x02000780
-
-#define ESDCTL_DELAY_LINE5	0x00F49F00
-#endif				/* __BOARD_MX35_3STACK_H */
diff --git a/arch/arm/boards/freescale-mx35-3ds/defaultenv-freescale-mx35-3ds/config b/arch/arm/boards/freescale-mx35-3ds/defaultenv-freescale-mx35-3ds/config
deleted file mode 100644
index af2fb6b2bc..0000000000
--- a/arch/arm/boards/freescale-mx35-3ds/defaultenv-freescale-mx35-3ds/config
+++ /dev/null
@@ -1,51 +0,0 @@
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
-bootargs="console=ttymxc0,115200"
-
-nor_parts="256k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
-rootfs_mtdblock_nor=3
-
-nand_parts="256k(barebox)ro,512k(bareboxenv),4M(kernel),-(root)"
-rootfs_mtdblock_nand=7
-nand_device=mxc_nand
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg b/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
deleted file mode 100644
index a6d16e8ab4..0000000000
--- a/arch/arm/boards/freescale-mx35-3ds/flash-header.imxcfg
+++ /dev/null
@@ -1,36 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-soc imx35
-loadaddr 0x80000000
-ivtofs 0x400
-
-wm 32 0xb8002050 0x0000d843
-wm 32 0xb8002054 0x22252521
-wm 32 0xb8002058 0x22220a00
-wm 32 0xb8001010 0x00000304
-wm 32 0xb8001010 0x0000030c
-wm 32 0xb8001004 0x007ffc3f
-wm 32 0xb800100c 0x007ffc3f
-wm 32 0xb8001000 0x92220000
-wm 32 0xb8001008 0x92220000
-wm 32 0x80000400 0x12345678
-wm 32 0x90000400 0x12345678
-wm 32 0xb8001000 0xa2220000
-wm 32 0xb8001008 0xa2220000
-wm 32 0x80000000 0x87654321
-wm 32 0x90000000 0x87654321
-wm 32 0x80000000 0x87654321
-wm 32 0x90000000 0x87654321
-wm 32 0xb8001000 0xb2220000
-wm 32 0xb8001008 0xb2220000
-wm 8 0x80000233 0xda
-wm 8 0x90000233 0xda
-wm 8 0x82000780 0xda
-wm 8 0x92000780 0xda
-wm 8 0x82000400 0xda
-wm 8 0x92000400 0xda
-wm 32 0xb8001000 0x82226080
-wm 32 0xb8001008 0x82226080
-wm 32 0xb8001004 0x007ffc3f
-wm 32 0xb800100c 0x007ffc3f
-wm 32 0xb8001010 0x00000304
diff --git a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S b/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
deleted file mode 100644
index fbc08d8fae..0000000000
--- a/arch/arm/boards/freescale-mx35-3ds/lowlevel_init.S
+++ /dev/null
@@ -1,241 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <mach/imx35-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/barebox-arm-head.h>
-
-#include "board-mx35_3stack.h"
-
-#define CSD0_BASE_ADDR		0x80000000
-#define CSD1_BASE_ADDR		0x90000000
-#define ESDCTL_BASE_ADDR	0xB8001000
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,	[r0];
-
-#define writeb(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	strb		r1,	[r0];
-
-	.section ".text_bare_init","ax"
-
-ARM_PPMRR:		.word	0x40000015
-L2CACHE_PARAM:		.word	0x00030024
-CCM_CCMR_W:		.word	0x003F4208
-CCM_PDR0_W:		.word	0x00001000
-MPCTL_PARAM_399_W:	.word	MPCTL_PARAM_399
-MPCTL_PARAM_532_W:	.word	MPCTL_PARAM_532
-PPCTL_PARAM_W:		.word	PPCTL_PARAM_300
-CCM_BASE_ADDR_W:	.word	MX35_CCM_BASE_ADDR
-
-.globl barebox_arm_reset_vector
-barebox_arm_reset_vector:
-	bl	arm_cpu_lowlevel_init
-
-	/* Setup a temporary stack in internal SRAM */
-	ldr	sp, =MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE - 4
-
-	mrc	15, 0, r1, c1, c0, 0
-
-	mrc	15, 0, r0, c1, c0, 1
-	orr	r0, r0, #7
-	mcr	15, 0, r0, c1, c0, 1
-
-	orr	r1, r1, #(1 << 11)		/* Flow prediction (Z) */
-	orr	r1, r1, #(1 << 22)		/* unaligned accesses */
-	orr	r1, r1, #(1 << 21)		/* Low Int Latency */
-
-	mcr	15, 0, r1, c1, c0, 0
-
-	mov	r0, #0
-	mcr	15, 0, r0, c15, c2, 4
-
-	/*
-	 * Branch predicition is now enabled. Flush the BTAC to ensure a valid
-	 * starting point. Don't flush BTAC while it is disabled to avoid
-	 * ARM1136 erratum 408023.
-	 */
-	mov	r0, #0
-	mcr	p15, 0, r0, c7, c5, 6		/* flush entire BTAC */
-
-	mov	r0, #0
-	mcr	15, 0, r0, c7, c7, 0		/* invalidate I cache and D cache */
-	mcr	15, 0, r0, c8, c7, 0		/* invalidate TLBs */
-	mcr	15, 0, r0, c7, c10, 4		/* Drain the write buffer */
-
-	/* Also setup the Peripheral Port Remap register inside the core */
-	ldr	r0, ARM_PPMRR			/* start from AIPS 2GB region */
-	mcr	p15, 0, r0, c15, c2, 4
-
-/*
- * End of ARM1136 init
- */
-	ldr	r0, CCM_BASE_ADDR_W
-
-	ldr	r2, CCM_CCMR_W
-	str	r2, [r0, #MX35_CCM_CCMR]
-
-	ldr	r3, MPCTL_PARAM_532_W		/* consumer path*/
-
-	/* Set MPLL, arm clock and ahb clock */
-	str	r3, [r0, #MX35_CCM_MPCTL]
-
-	ldr	r1, PPCTL_PARAM_W
-	str	r1, [r0, #MX35_CCM_PPCTL]
-
-	ldr	r1, CCM_PDR0_W
-	str	r1, [r0, #MX35_CCM_PDR0]
-
-	ldr	r1, [r0, #MX35_CCM_CGR0]
-	orr	r1, r1, #0x00300000
-	str	r1, [r0, #MX35_CCM_CGR0]
-
-	ldr	r1, [r0, #MX35_CCM_CGR1]
-	orr	r1, r1, #0x00000C00
-	orr	r1, r1, #0x00000003
-	str	r1, [r0, #MX35_CCM_CGR1]
-
-	/* Skip SDRAM initialization if we run from RAM */
-	cmp	pc, #CSD0_BASE_ADDR
-	bls	1f
-	cmp	pc, #CSD1_BASE_ADDR
-	bhi	1f
-
-	b	imx35_barebox_entry
-
-1:
-	ldr	r0, =ESDCTL_BASE_ADDR
-	mov	r3, #0x2000
-	str	r3, [r0, #0x0]
-	str	r3, [r0, #0x8]
-
-	/* ip(r12) has used to save lr register in upper calling */
-	mov	fp, lr
-
-	/* setup bank 0 */
-	mov	r5, #0x00
-	mov	r2, #0x00
-	mov	r1, #MX35_CSD0_BASE_ADDR
-	bl	setup_sdram_bank
-
-	/* setup bank 1 */
-	mov	r5, #0x00
-	mov	r2, #0x00
-	mov	r1, #MX35_CSD1_BASE_ADDR
-	bl	setup_sdram_bank
-
-	mov	lr, fp
-
-	ldr	r3, =ESDCTL_DELAY_LINE5
-	str	r3, [r0, #0x30]
-
-#ifdef CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND
-	mov	r0, #0
-	b	imx35_barebox_boot_nand_external
-#endif /* CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND */
-
-	b	imx35_barebox_entry
-
-/*
- * r0: ESDCTL control base, r1: sdram slot base
- * r2: DDR type (0: DDR2, 1: MDDR) r3, r4: working base
- */
-setup_sdram_bank:
-	mov	r3, #0xE			/* 0xA + 0x4 */
-	tst	r2, #0x1
-	orreq	r3, r3, #0x300			/* DDR2 */
-	str	r3, [r0, #0x10]
-	bic	r3, r3, #0x00A
-	str	r3, [r0, #0x10]
-	beq	2f
-
-	mov	r3, #0x20000
-1:	subs	r3, r3, #1
-	bne	1b
-
-2:	tst	r2, #0x1
-	ldreq	r3, =ESDCTL_DDR2_CONFIG
-	ldrne	r3, =ESDCTL_MDDR_CONFIG
-	cmp	r1, #CSD1_BASE_ADDR
-	strlo	r3, [r0, #0x4]
-	strhs	r3, [r0, #0xC]
-
-	ldr	r3, =ESDCTL_0x92220000
-	strlo	r3, [r0, #0x0]
-	strhs	r3, [r0, #0x8]
-	mov	r3, #0xDA
-	ldr	r4, =ESDCTL_PRECHARGE
-	strb	r3, [r1, r4]
-
-	tst	r2, #0x1
-	bne	skip_set_mode
-
-	cmp	r1, #CSD1_BASE_ADDR
-	ldr	r3, =ESDCTL_0xB2220000
-	strlo	r3, [r0, #0x0]
-	strhs	r3, [r0, #0x8]
-	mov	r3, #0xDA
-	ldr	r4, =ESDCTL_DDR2_EMR2
-	strb	r3, [r1, r4]
-	ldr	r4, =ESDCTL_DDR2_EMR3
-	strb	r3, [r1, r4]
-	ldr	r4, =ESDCTL_DDR2_EN_DLL
-	strb	r3, [r1, r4]
-	ldr	r4, =ESDCTL_DDR2_RESET_DLL
-	strb	r3, [r1, r4]
-
-	ldr	r3, =ESDCTL_0x92220000
-	strlo	r3, [r0, #0x0]
-	strhs	r3, [r0, #0x8]
-	mov	r3, #0xDA
-	ldr	r4, =ESDCTL_PRECHARGE
-	strb	r3, [r1, r4]
-
-skip_set_mode:
-	cmp	r1, #CSD1_BASE_ADDR
-	ldr	r3, =ESDCTL_0xA2220000
-	strlo	r3, [r0, #0x0]
-	strhs	r3, [r0, #0x8]
-	mov	r3, #0xDA
-	strb	r3, [r1]
-	strb	r3, [r1]
-
-	ldr	r3, =ESDCTL_0xB2220000
-	strlo	r3, [r0, #0x0]
-	strhs	r3, [r0, #0x8]
-	tst	r2, #0x1
-	ldreq	r4, =ESDCTL_DDR2_MR
-	ldrne	r4, =ESDCTL_MDDR_MR
-	mov	r3, #0xDA
-	strb	r3, [r1, r4]
-	ldreq	r4, =ESDCTL_DDR2_OCD_DEFAULT
-	streqb	r3, [r1, r4]
-	ldreq	r4, =ESDCTL_DDR2_EN_DLL
-	ldrne	r4, =ESDCTL_MDDR_EMR
-	strb	r3, [r1, r4]
-
-	cmp	r1, #CSD1_BASE_ADDR
-	ldr	r3, =ESDCTL_0x82228080
-	strlo	r3, [r0, #0x0]
-	strhs	r3, [r0, #0x8]
-
-	tst	r2, #0x1
-	moveq	r4, #0x20000
-	movne	r4, #0x200
-1:	subs	r4, r4, #1
-	bne	1b
-
-	str	r3, [r1, #0x100]
-	ldr	r4, [r1, #0x100]
-	cmp	r3, r4
-	movne	r3, #1
-	moveq	r3, #0
-
-	mov	pc, lr
diff --git a/arch/arm/boards/freescale-mx53-smd/Makefile b/arch/arm/boards/freescale-mx53-smd/Makefile
deleted file mode 100644
index 9e7882a5db..0000000000
--- a/arch/arm/boards/freescale-mx53-smd/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += board.o
-lwl-y += lowlevel.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-freescale-mx53-smd
diff --git a/arch/arm/boards/freescale-mx53-smd/board.c b/arch/arm/boards/freescale-mx53-smd/board.c
deleted file mode 100644
index ca3badf490..0000000000
--- a/arch/arm/boards/freescale-mx53-smd/board.c
+++ /dev/null
@@ -1,156 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer, Pengutronix
-// SPDX-FileCopyrightText: 2011 Marc Kleine-Budde <mkl@pengutronix.de>
-
-#include <common.h>
-#include <environment.h>
-#include <fcntl.h>
-#include <platform_data/eth-fec.h>
-#include <fs.h>
-#include <init.h>
-#include <nand.h>
-#include <net.h>
-#include <linux/sizes.h>
-#include <gpio.h>
-#include <mci.h>
-#include <envfs.h>
-
-#include <generated/mach-types.h>
-
-#include <mach/imx53-regs.h>
-#include <mach/iomux-mx53.h>
-#include <mach/devices-imx53.h>
-#include <mach/generic.h>
-#include <mach/imx-nand.h>
-#include <mach/iim.h>
-#include <mach/imx5.h>
-
-#include <asm/armlinux.h>
-#include <io.h>
-#include <asm/mmu.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_RMII,
-};
-
-static iomux_v3_cfg_t smd_pads[] = {
-	/* UART1 */
-	MX53_PAD_CSI0_DAT10__UART1_TXD_MUX,
-	MX53_PAD_CSI0_DAT11__UART1_RXD_MUX,
-
-	/* UART2 */
-	MX53_PAD_PATA_BUFFER_EN__UART2_RXD_MUX,
-	MX53_PAD_PATA_DMARQ__UART2_TXD_MUX,
-
-	/* UART3 */
-	MX53_PAD_PATA_CS_0__UART3_TXD_MUX,
-	MX53_PAD_PATA_CS_1__UART3_RXD_MUX,
-	MX53_PAD_PATA_DA_1__UART3_CTS,
-	MX53_PAD_PATA_DA_2__UART3_RTS,
-
-	/* FEC */
-	MX53_PAD_FEC_MDC__FEC_MDC,
-	MX53_PAD_FEC_MDIO__FEC_MDIO,
-	MX53_PAD_FEC_REF_CLK__FEC_TX_CLK,
-	MX53_PAD_FEC_RX_ER__FEC_RX_ER,
-	MX53_PAD_FEC_CRS_DV__FEC_RX_DV,
-	MX53_PAD_FEC_RXD1__FEC_RDATA_1,
-	MX53_PAD_FEC_RXD0__FEC_RDATA_0,
-	MX53_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX53_PAD_FEC_TXD1__FEC_TDATA_1,
-	MX53_PAD_FEC_TXD0__FEC_TDATA_0,
-	/* FEC_nRST */
-	MX53_PAD_PATA_DA_0__GPIO7_6,
-
-	/* SD1 */
-	MX53_PAD_SD1_CMD__ESDHC1_CMD,
-	MX53_PAD_SD1_CLK__ESDHC1_CLK,
-	MX53_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX53_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX53_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX53_PAD_SD1_DATA3__ESDHC1_DAT3,
-	/* SD1_CD */
-	MX53_PAD_EIM_DA13__GPIO3_13,
-	/* SD1_WP */
-	MX53_PAD_KEY_ROW2__GPIO4_11,
-
-	/* SD3 */
-	MX53_PAD_PATA_DATA8__ESDHC3_DAT0,
-	MX53_PAD_PATA_DATA9__ESDHC3_DAT1,
-	MX53_PAD_PATA_DATA10__ESDHC3_DAT2,
-	MX53_PAD_PATA_DATA11__ESDHC3_DAT3,
-	MX53_PAD_PATA_DATA0__ESDHC3_DAT4,
-	MX53_PAD_PATA_DATA1__ESDHC3_DAT5,
-	MX53_PAD_PATA_DATA2__ESDHC3_DAT6,
-	MX53_PAD_PATA_DATA3__ESDHC3_DAT7,
-	MX53_PAD_PATA_IORDY__ESDHC3_CLK,
-	MX53_PAD_PATA_RESET_B__ESDHC3_CMD,
-};
-
-#define SMD_FEC_PHY_RST		IMX_GPIO_NR(7, 6)
-
-static void smd_fec_reset(void)
-{
-	gpio_direction_output(SMD_FEC_PHY_RST, 0);
-	mdelay(1);
-	gpio_set_value(SMD_FEC_PHY_RST, 1);
-}
-
-#define LOCO_SD1_CD			IMX_GPIO_NR(3, 13)
-#define LOCO_SD1_WP			IMX_GPIO_NR(4, 11)
-
-static struct esdhc_platform_data loco_sd1_data = {
-	.cd_gpio = LOCO_SD1_CD,
-	.wp_gpio = LOCO_SD1_WP,
-	.cd_type = ESDHC_CD_GPIO,
-	.wp_type = ESDHC_WP_GPIO,
-	.caps    = MMC_CAP_4_BIT_DATA,
-};
-
-static struct esdhc_platform_data loco_sd3_data = {
-	.wp_type = ESDHC_WP_NONE,
-	.cd_type = ESDHC_CD_PERMANENT,
-};
-
-static int smd_devices_init(void)
-{
-	imx53_iim_register_fec_ethaddr();
-	imx53_add_fec(&fec_info);
-	imx53_add_mmc0(&loco_sd1_data);
-	imx53_add_mmc2(&loco_sd3_data);
-
-	smd_fec_reset();
-
-	armlinux_set_architecture(MACH_TYPE_MX53_SMD);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_freescale_mx53_smd);
-
-	return 0;
-}
-device_initcall(smd_devices_init);
-
-static int smd_part_init(void)
-{
-	devfs_add_partition("disk0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");
-	devfs_add_partition("disk0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");
-
-	return 0;
-}
-late_initcall(smd_part_init);
-
-static int smd_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(smd_pads, ARRAY_SIZE(smd_pads));
-
-	barebox_set_model("Freescale i.MX53 SMD");
-	barebox_set_hostname("imx53-smd");
-
-	imx53_init_lowlevel(1000);
-
-	imx53_add_uart0();
-	imx53_add_uart1();
-	imx53_add_uart2();
-	return 0;
-}
-console_initcall(smd_console_init);
diff --git a/arch/arm/boards/freescale-mx53-smd/defaultenv-freescale-mx53-smd/config b/arch/arm/boards/freescale-mx53-smd/defaultenv-freescale-mx53-smd/config
deleted file mode 100644
index 27d2663566..0000000000
--- a/arch/arm/boards/freescale-mx53-smd/defaultenv-freescale-mx53-smd/config
+++ /dev/null
@@ -1,45 +0,0 @@
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
-bootargs="console=ttymxc0,115200"
-
-disk_parts="256k(barebox)ro,128k(bareboxenv),4M(kernel),-(root)"
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
diff --git a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg b/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
deleted file mode 100644
index e885186c54..0000000000
--- a/arch/arm/boards/freescale-mx53-smd/flash-header.imxcfg
+++ /dev/null
@@ -1,56 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-loadaddr 0x70000000
-soc imx53
-ivtofs 0x400
-wm 32 0x53fa8554 0x00300000
-wm 32 0x53fa8558 0x00300040
-wm 32 0x53fa8560 0x00300000
-wm 32 0x53fa8564 0x00300040
-wm 32 0x53fa8568 0x00300040
-wm 32 0x53fa8570 0x00300000
-wm 32 0x53fa8574 0x00300000
-wm 32 0x53fa8578 0x00300000
-wm 32 0x53fa857c 0x00300040
-wm 32 0x53fa8580 0x00300040
-wm 32 0x53fa8584 0x00300000
-wm 32 0x53fa8588 0x00300000
-wm 32 0x53fa8590 0x00300040
-wm 32 0x53fa8594 0x00300000
-wm 32 0x53fa86f0 0x00300000
-wm 32 0x53fa86f4 0x00000000
-wm 32 0x53fa86fc 0x00000000
-wm 32 0x53fa8714 0x00000000
-wm 32 0x53fa8718 0x00300000
-wm 32 0x53fa871c 0x00300000
-wm 32 0x53fa8720 0x00300000
-wm 32 0x53fa8724 0x04000000
-wm 32 0x53fa8728 0x00300000
-wm 32 0x53fa872c 0x00300000
-wm 32 0x63fd9088 0x35343535
-wm 32 0x63fd9090 0x4d444c44
-wm 32 0x63fd907c 0x01370138
-wm 32 0x63fd9080 0x013b013c
-wm 32 0x63fd9018 0x00011740
-wm 32 0x63fd9000 0xc3190000
-wm 32 0x63fd900c 0x9f5152e3
-wm 32 0x63fd9010 0xb68e8a63
-wm 32 0x63fd9014 0x01ff00db
-wm 32 0x63fd902c 0x000026d2
-wm 32 0x63fd9030 0x009f0e21
-wm 32 0x63fd9008 0x12273030
-wm 32 0x63fd9004 0x0002002d
-wm 32 0x63fd901c 0x00008032
-wm 32 0x63fd901c 0x00008033
-wm 32 0x63fd901c 0x00028031
-wm 32 0x63fd901c 0x052080b0
-wm 32 0x63fd901c 0x04008040
-wm 32 0x63fd901c 0x0000803a
-wm 32 0x63fd901c 0x0000803b
-wm 32 0x63fd901c 0x00028039
-wm 32 0x63fd901c 0x05208138
-wm 32 0x63fd901c 0x04008048
-wm 32 0x63fd9020 0x00005800
-wm 32 0x63fd9040 0x04b80003
-wm 32 0x63fd9058 0x00022227
-wm 32 0x63fd901c 0x00000000
diff --git a/arch/arm/boards/freescale-mx53-smd/lowlevel.c b/arch/arm/boards/freescale-mx53-smd/lowlevel.c
deleted file mode 100644
index b15025ba18..0000000000
--- a/arch/arm/boards/freescale-mx53-smd/lowlevel.c
+++ /dev/null
@@ -1,14 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-
-#include <common.h>
-#include <mach/imx53-regs.h>
-#include <mach/esdctl.h>
-#include <mach/generic.h>
-#include <asm/barebox-arm-head.h>
-
-void __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	imx5_cpu_lowlevel_init();
-	arm_setup_stack(MX53_IRAM_BASE_ADDR + MX53_IRAM_SIZE);
-	imx53_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/guf-cupid/Makefile b/arch/arm/boards/guf-cupid/Makefile
deleted file mode 100644
index 86a27f301d..0000000000
--- a/arch/arm/boards/guf-cupid/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Juergen Beisert <jbe@pengutronix.de>
-
-lwl-y += lowlevel.o
-obj-y += board.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-guf-cupid
diff --git a/arch/arm/boards/guf-cupid/board.c b/arch/arm/boards/guf-cupid/board.c
deleted file mode 100644
index 419b3e2464..0000000000
--- a/arch/arm/boards/guf-cupid/board.c
+++ /dev/null
@@ -1,339 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2009 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
-
-/* Board support for the Garz+Fricke Cupid board */
-
-#include <common.h>
-#include <command.h>
-#include <init.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <envfs.h>
-#include <mach/imx35-regs.h>
-#include <asm/armlinux.h>
-#include <io.h>
-#include <gpio.h>
-#include <nand.h>
-#include <generated/mach-types.h>
-#include <mach/imx-nand.h>
-#include <platform_data/eth-fec.h>
-#include <fb.h>
-#include <asm/mmu.h>
-#include <mach/weim.h>
-#include <mach/imx-ipu-fb.h>
-#include <mach/imx-pll.h>
-#include <mach/iomux-mx35.h>
-#include <mach/devices-imx35.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width	= 1,
-	.hw_ecc	= 1,
-	.flash_bbt = 1,
-};
-
-static struct fb_videomode guf_cupid_fb_mode = {
-	/* 800x480 @ 70 Hz */
-	.name		= "CPT CLAA070LC0JCT",
-	.refresh	= 70,
-	.xres		= 800,
-	.yres		= 480,
-	.pixclock	= 30761,
-	.left_margin	= 24,
-	.right_margin	= 47,
-	.upper_margin	= 5,
-	.lower_margin	= 3,
-	.hsync_len	= 24,
-	.vsync_len	= 3,
-	.sync		= FB_SYNC_VERT_HIGH_ACT | FB_SYNC_CLK_INVERT |
-			  FB_SYNC_OE_ACT_HIGH,
-	.vmode		= FB_VMODE_NONINTERLACED,
-};
-
-#define GPIO_LCD_ENABLE		(2 * 32 + 24)
-#define GPIO_LCD_BACKLIGHT	(0 * 32 + 19)
-
-static void cupid_fb_enable(int enable)
-{
-	if (enable) {
-		gpio_direction_output(GPIO_LCD_ENABLE, 1);
-		mdelay(100);
-		gpio_direction_output(GPIO_LCD_BACKLIGHT, 1);
-	} else {
-		gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
-		mdelay(100);
-		gpio_direction_output(GPIO_LCD_ENABLE, 0);
-	}
-}
-
-static struct imx_ipu_fb_platform_data ipu_fb_data = {
-	.mode		= &guf_cupid_fb_mode,
-	.num_modes	= 1,
-	.bpp		= 16,
-	.enable		= cupid_fb_enable,
-};
-
-static int cupid_mmu_init(void)
-{
-	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-
-	return 0;
-}
-postmmu_initcall(cupid_mmu_init);
-
-static int cupid_devices_init(void)
-{
-	uint32_t reg;
-
-	gpio_direction_output(GPIO_LCD_ENABLE, 0);
-	gpio_direction_output(GPIO_LCD_BACKLIGHT, 0);
-
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
-	/* some fuses provide us vital information about connected hardware */
-	if (reg & 0x20000000)
-		nand_info.width = 2;    /* 16 bit */
-	else
-		nand_info.width = 1;    /* 8 bit */
-
-	imx35_add_fec(&fec_info);
-	imx35_add_nand(&nand_info);
-
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	imx35_add_fb(&ipu_fb_data);
-	imx35_add_mmc0(NULL);
-
-	armlinux_set_architecture(MACH_TYPE_GUF_CUPID);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_guf_cupid);
-
-	return 0;
-}
-
-device_initcall(cupid_devices_init);
-
-static iomux_v3_cfg_t cupid_pads[] = {
-	/* UART1 */
-	MX35_PAD_CTS1__UART1_CTS,
-	MX35_PAD_RTS1__UART1_RTS,
-	MX35_PAD_TXD1__UART1_TXD_MUX,
-	MX35_PAD_RXD1__UART1_RXD_MUX,
-	/* UART2 */
-	MX35_PAD_CTS2__UART2_CTS,
-	MX35_PAD_RTS2__UART2_RTS,
-	MX35_PAD_TXD2__UART2_TXD_MUX,
-	MX35_PAD_RXD2__UART2_RXD_MUX,
-	/* FEC */
-	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
-	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
-	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX35_PAD_FEC_COL__FEC_COL,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX35_PAD_FEC_MDC__FEC_MDC,
-	MX35_PAD_FEC_MDIO__FEC_MDIO,
-	MX35_PAD_FEC_TX_ERR__FEC_TX_ERR,
-	MX35_PAD_FEC_RX_ERR__FEC_RX_ERR,
-	MX35_PAD_FEC_CRS__FEC_CRS,
-	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
-	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
-	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
-	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
-	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
-	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
-	/* I2C1 */
-	MX35_PAD_I2C1_CLK__I2C1_SCL,
-	MX35_PAD_I2C1_DAT__I2C1_SDA,
-	/* Display */
-	MX35_PAD_LD0__IPU_DISPB_DAT_0,
-	MX35_PAD_LD1__IPU_DISPB_DAT_1,
-	MX35_PAD_LD2__IPU_DISPB_DAT_2,
-	MX35_PAD_LD3__IPU_DISPB_DAT_3,
-	MX35_PAD_LD4__IPU_DISPB_DAT_4,
-	MX35_PAD_LD5__IPU_DISPB_DAT_5,
-	MX35_PAD_LD6__IPU_DISPB_DAT_6,
-	MX35_PAD_LD7__IPU_DISPB_DAT_7,
-	MX35_PAD_LD8__IPU_DISPB_DAT_8,
-	MX35_PAD_LD9__IPU_DISPB_DAT_9,
-	MX35_PAD_LD10__IPU_DISPB_DAT_10,
-	MX35_PAD_LD11__IPU_DISPB_DAT_11,
-	MX35_PAD_LD12__IPU_DISPB_DAT_12,
-	MX35_PAD_LD13__IPU_DISPB_DAT_13,
-	MX35_PAD_LD14__IPU_DISPB_DAT_14,
-	MX35_PAD_LD15__IPU_DISPB_DAT_15,
-	MX35_PAD_LD16__IPU_DISPB_DAT_16,
-	MX35_PAD_LD17__IPU_DISPB_DAT_17,
-	MX35_PAD_D3_HSYNC__IPU_DISPB_D3_HSYNC,
-	MX35_PAD_D3_FPSHIFT__IPU_DISPB_D3_CLK,
-	MX35_PAD_D3_DRDY__IPU_DISPB_D3_DRDY,
-	MX35_PAD_D3_VSYNC__IPU_DISPB_D3_VSYNC,
-	MX35_PAD_LD18__GPIO3_24,		/* LCD enable */
-	MX35_PAD_CSPI1_SS1__GPIO1_19,		/* LCD backligtht PWM */
-	/* USB Host*/
-	MX35_PAD_MLB_CLK__GPIO3_3,		/* USB Host PWR */
-	MX35_PAD_MLB_DAT__GPIO3_4,		/* USB Host Overcurrent */
-	/* USB OTG */
-	MX35_PAD_USBOTG_PWR__USB_TOP_USBOTG_PWR,
-	MX35_PAD_USBOTG_OC__USB_TOP_USBOTG_OC,
-	/* SSI */
-	MX35_PAD_STXFS4__AUDMUX_AUD4_TXFS,
-	MX35_PAD_STXD4__AUDMUX_AUD4_TXD,
-	MX35_PAD_SRXD4__AUDMUX_AUD4_RXD,
-	MX35_PAD_SCK4__AUDMUX_AUD4_TXC,
-	/* UCB1400 IRQ */
-	MX35_PAD_ATA_INTRQ__GPIO2_29,
-	/* Speaker On */
-	MX35_PAD_LD20__GPIO3_26,
-	/* LEDs */
-	MX35_PAD_TX1__GPIO1_14,
-	/* ESDHC1 */
-	MX35_PAD_SD1_CMD__ESDHC1_CMD,
-	MX35_PAD_SD1_CLK__ESDHC1_CLK,
-	MX35_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX35_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX35_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX35_PAD_SD1_DATA3__ESDHC1_DAT3,
-	/* ESDHC1 CD */
-	MX35_PAD_ATA_DATA5__GPIO2_18,
-	/* ESDHC1 WP */
-	MX35_PAD_ATA_DATA6__GPIO2_19,
-};
-
-static int cupid_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(cupid_pads, ARRAY_SIZE(cupid_pads));
-
-	barebox_set_model("Garz & Fricke CUPID");
-	barebox_set_hostname("cupid");
-
-	imx35_add_uart0();
-
-	return 0;
-}
-
-console_initcall(cupid_console_init);
-
-static int cupid_core_setup(void)
-{
-	u32 tmp;
-
-	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
-	/*
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR + 0x4);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR + 0x4);
-
-	/*
-	 * Clear the on and off peripheral modules Supervisor Protect bit
-	 * for SDMA to access them. Did not change the AIPS control registers
-	 * (offset 0x20) access type
-	 */
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x4C);
-	tmp = readl(MX35_AIPS1_BASE_ADDR + 0x50);
-	tmp &= 0x00FFFFFF;
-	writel(tmp, MX35_AIPS1_BASE_ADDR + 0x50);
-
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x4C);
-	tmp = readl(MX35_AIPS2_BASE_ADDR + 0x50);
-	tmp &= 0x00FFFFFF;
-	writel(tmp, MX35_AIPS2_BASE_ADDR + 0x50);
-
-	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
-
-	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
-#define MAX_PARAM1 0x00302154
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x0);   /* for S0 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x100); /* for S1 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x200); /* for S2 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x300); /* for S3 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x400); /* for S4 */
-
-	/* SGPCR - always park on last master */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x10);	/* for S0 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x110);	/* for S1 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x210);	/* for S2 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x310);	/* for S3 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x410);	/* for S4 */
-
-	/* MGPCR - restore default values */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x800);	/* for M0 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x900);	/* for M1 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xa00);	/* for M2 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xb00);	/* for M3 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
-
-	/* CS0: NOR Flash */
-	imx35_setup_weimcs(0, 0x0000DCF6, 0x444A4541, 0x44443302);
-
-	/*
-	 * M3IF Control Register (M3IFCTL)
-	 * MRRP[0] = L2CC0 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[1] = MAX1 not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[2] = L2CC1 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[3] = USB  not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[4] = SDMA not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[5] = GPU not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[6] = IPU1 on priority list (1 << 6)		= 0x00000040
-	 * MRRP[7] = IPU2 not on priority list (0 << 0)		= 0x00000000
-	 *                                                       ------------
-	 *                                                        0x00000040
-	 */
-	writel(0x40, MX35_M3IF_BASE_ADDR);
-
-	return 0;
-}
-
-core_initcall(cupid_core_setup);
-
-static int do_cpufreq(int argc, char *argv[])
-{
-	unsigned long freq;
-
-	if (argc != 2)
-		return COMMAND_ERROR_USAGE;
-
-	freq = simple_strtoul(argv[1], NULL, 0);
-
-	switch (freq) {
-	case 399:
-		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-		break;
-	case 532:
-		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-		break;
-	default:
-		return COMMAND_ERROR_USAGE;
-	}
-
-	printf("Switched CPU frequency to %luMHz\n", freq);
-
-	return 0;
-}
-
-BAREBOX_CMD_START(cpufreq)
-	.cmd            = do_cpufreq,
-	BAREBOX_CMD_DESC("adjust CPU frequency")
-	BAREBOX_CMD_OPTS("399|532")
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-BAREBOX_CMD_END
diff --git a/arch/arm/boards/guf-cupid/defaultenv-guf-cupid/config b/arch/arm/boards/guf-cupid/defaultenv-guf-cupid/config
deleted file mode 100644
index dc289b39f2..0000000000
--- a/arch/arm/boards/guf-cupid/defaultenv-guf-cupid/config
+++ /dev/null
@@ -1,50 +0,0 @@
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
-bootargs="console=ttymxc0,115200"
-
-bootargs="$bootargs video=mx3fb:CTP-CLAA070LC0ACW"
-
-nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
-nand_device=mxc_nand
-rootfs_mtdblock_nand=3
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/guf-cupid/lowlevel.c b/arch/arm/boards/guf-cupid/lowlevel.c
deleted file mode 100644
index 6b6590f5d8..0000000000
--- a/arch/arm/boards/guf-cupid/lowlevel.c
+++ /dev/null
@@ -1,301 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <common.h>
-#include <init.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/sections.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/system.h>
-
-#define SDRAM_MODE_BL_8	0x0003
-#define SDRAM_MODE_BSEQ	0x0000
-#define SDRAM_MODE_CL_3	0x0030
-#define MDDR_DS_HALF	0x20
-#define SDRAM_COMPARE_CONST1	0x55555555
-#define SDRAM_COMPARE_CONST2	0xaaaaaaaa
-
-static void __bare_init noinline setup_sdram(u32 memsize, u32 mode, u32 sdram_addr)
-{
-	volatile int loop;
-	void *r9 = (void *)MX35_CSD0_BASE_ADDR;
-	u32 r11 = 0xda; /* dummy constant */
-	u32 r1, r0;
-
-	/* disable second SDRAM region to save power */
-	r1 = readl(MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
-	r1 &= ~ESDCTL0_SDE;
-	writel(r1, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
-
-	mode |= ESDMISC_RST | ESDMISC_MDDR_DL_RST;
-	writel(mode, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-
-	mode &= ~(ESDMISC_RST | ESDMISC_MDDR_DL_RST);
-	writel(mode, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-
-	/* wait for esdctl reset */
-	for (loop = 0; loop < 0x20000; loop++);
-
-	r1 = ESDCFGx_tXP_4 | ESDCFGx_tWTR_1 |
-		ESDCFGx_tRP_3 | ESDCFGx_tMRD_2 |
-		ESDCFGx_tWR_1_2 | ESDCFGx_tRAS_6 |
-		ESDCFGx_tRRD_2 | ESDCFGx_tCAS_3 |
-		ESDCFGx_tRCD_3 | ESDCFGx_tRC_20;
-
-	writel(r1, MX35_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
-
-	/* enable SDRAM controller */
-	writel(memsize | ESDCTL0_SMODE_NORMAL,
-			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	/* Micron Datasheet Initialization Step 3: Wait 200us before first command */
-	for (loop = 0; loop < 1000; loop++);
-
-	/* Micron Datasheet Initialization Step 4: PRE CHARGE ALL */
-	writel(memsize | ESDCTL0_SMODE_PRECHARGE,
-			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(r11, sdram_addr);
-
-	/* Micron Datasheet Initialization Step 5: NOP for tRP (at least 22.5ns)
-	 * The CPU is not fast enough to cause a problem here
-	 */
-
-	/* Micron Datasheet Initialization Step 6: 2 AUTO REFRESH and tRFC NOP
-	 * (at least 140ns)
-	 */
-	writel(memsize | ESDCTL0_SMODE_AUTO_REFRESH,
-			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(r11, r9); /* AUTO REFRESH #1 */
-
-	for (loop = 0; loop < 3; loop++); /* ~140ns delay at 532MHz */
-
-	writeb(r11, r9); /* AUTO REFRESH #2 */
-
-	for (loop = 0; loop < 3; loop++); /* ~140ns delay at 532MHz */
-
-	/* Micron Datasheet Initialization Step 7: LOAD MODE REGISTER */
-	writel(memsize | ESDCTL0_SMODE_LOAD_MODE,
-			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(r11, r9 + (SDRAM_MODE_BL_8 | SDRAM_MODE_BSEQ | SDRAM_MODE_CL_3));
-
-	/* Micron Datasheet Initialization Step 8: tMRD = 2 tCK NOP
-	 * (The memory controller will take care of this delay)
-	 */
-
-	/* Micron Datasheet Initialization Step 9: LOAD MODE REGISTER EXTENDED */
-	writeb(r11, 0x84000000 | MDDR_DS_HALF);  /*we assume 14 Rows / 10 Cols here */
-
-	/* Micron Datasheet Initialization Step 9: tMRD = 2 tCK NOP
-	 * (The memory controller will take care of this delay)
-	 */
-
-	/* Now configure SDRAM-Controller and check that it works */
-	writel(memsize | ESDCTL0_BL | ESDCTL0_REF4,
-			MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	/* Freescale asks for first access to be a write to properly
-	 * initialize DQS pin-state and keepers
-	 */
-	writel(0xdeadbeef, r9);
-
-	/* test that the RAM is in fact working */
-	writel(SDRAM_COMPARE_CONST1, r9);
-	writel(SDRAM_COMPARE_CONST2, r9 + 0x4);
-
-	if (readl(r9) != SDRAM_COMPARE_CONST1)
-		while (1);
-
-	/* Verify that the correct row and coloumn is selected */
-
-	/* So far we asssumed that we have 14 rows, verify this */
-	writel(SDRAM_COMPARE_CONST1, r9);
-	writel(SDRAM_COMPARE_CONST2, r9 + (1 << 25));
-
-	/* if both value are identical, we don't have 14 rows. assume 13 instead */
-	if (readl(r9) == readl(r9 + (1 << 25))) {
-		r0 = readl(MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-		r0 &= ~ESDCTL0_ROW_MASK;
-		r0 |= ESDCTL0_ROW13;
-		writel(r0, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	}
-
-	/* So far we asssumed that we have 10 columns, verify this */
-	writel(SDRAM_COMPARE_CONST1, r9);
-	writel(SDRAM_COMPARE_CONST2, r9 + (1 << 11));
-
-	/* if both value are identical, we don't have 10 cols. assume 9 instead */
-	if (readl(r9) == readl(r9 + (1 << 11))) {
-		r0 = readl(MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-		r0 &= ~ESDCTL0_COL_MASK;
-		r0 |= ESDCTL0_COL9;
-		writel(r0, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	}
-}
-
-#define BRANCH_PREDICTION_ENABLE
-#define UNALIGNED_ACCESS_ENABLE
-#define LOW_INT_LATENCY_ENABLE
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	void *iomuxc_base = (void *)MX35_IOMUXC_BASE_ADDR;
-	int i;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(0x10000000 + 128 * 1024);
-
-	/*
-	 *       ARM1136 init
-	 *       - invalidate I/D cache/TLB and drain write buffer;
-	 *       - invalidate L2 cache
-	 *       - unaligned access
-	 *       - branch predictions
-	 */
-#ifdef TURN_OFF_IMPRECISE_ABORT
-	__asm__ __volatile__("mrs %0, cpsr":"=r"(r0));
-	r0 &= ~0x100;
-	__asm__ __volatile__("msr cpsr, %0" : : "r"(r0));
-#endif
-	/* ensure L1 caches and MMU are turned-off for now */
-	r1 = get_cr();
-	r1 &= ~(CR_I | CR_M | CR_C);
-
-	/* setup core features */
-	__asm__ __volatile__("mrc p15, 0, r0, c1, c0, 1":"=r"(r0));
-#ifdef BRANCH_PREDICTION_ENABLE
-	r0 |= 7;
-	r1 |= CR_Z;
-#else
-	r0 &= ~7;
-	r1 &= ~CR_Z;
-#endif
-	__asm__ __volatile__("mcr p15, 0, r0, c1, c0, 1" : : "r"(r0));
-
-#ifdef UNALIGNED_ACCESS_ENABLE
-	r1 |= CR_U;
-#else
-	r1 &= ~CR_U;
-#endif
-
-#ifdef LOW_INT_LATENCY_ENABLE
-	r1 |= CR_FI;
-#else
-	r1 &= ~CR_FI;
-#endif
-	set_cr(r1);
-
-	r0 = 0;
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r0));
-
-	/* invalidate I cache and D cache */
-	__asm__ __volatile__("mcr p15, 0, r0, c7, c7, 0" : : "r"(r0));
-	/* invalidate TLBs */
-	__asm__ __volatile__("mcr p15, 0, r0, c8, c7, 0" : : "r"(r0));
-	/* Drain the write buffer */
-	__asm__ __volatile__("mcr p15, 0, r0, c7, c10, 4" : : "r"(r0));
-
-	/* Also setup the Peripheral Port Remap register inside the core */
-	r0 = 0x40000015; /* start from AIPS 2GB region */
-	__asm__ __volatile__("mcr p15, 0, r0, c15, c2, 4" : : "r"(r0));
-
-#define	WDOG_WMCR 0x8
-	/* silence reset WDOG */
-	writew(0, MX35_WDOG_BASE_ADDR + WDOG_WMCR);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r0 = get_pc();
-	if (r0 > 0x80000000 && r0 < 0x90000000)
-		goto out;
-
-	/* Configure drive strength */
-
-	/* Configure DDR-pins to correct mode */
-	r0 = 0x00001800;
-	writel(r0, iomuxc_base + 0x794);
-	writel(r0, iomuxc_base + 0x798);
-	writel(r0, iomuxc_base + 0x79c);
-	writel(r0, iomuxc_base + 0x7a0);
-	writel(r0, iomuxc_base + 0x7a4);
-
-	/* Set drive strength for DDR-pins */
-	for (i = 0x368; i <= 0x4c8; i += 4) {
-		r0 = readl(iomuxc_base + i);
-		r0 &= ~0x6;
-		r0 |= 0x2;
-		writel(r0, iomuxc_base + i);
-		if (i == 0x468)
-			i = 0x4a4;
-	}
-
-	r0 = readl(iomuxc_base + 0x480);
-	r0 &= ~0x6;
-	r0 |= 0x2;
-	writel(r0, iomuxc_base + 0x480);
-
-	r0 = readl(iomuxc_base + 0x4b8);
-	r0 &= ~0x6;
-	r0 |= 0x2;
-	writel(r0, iomuxc_base + 0x4b8);
-
-	/* Configure static chip-selects */
-	r0 = readl(iomuxc_base + 0x000);
-	r0 &= ~1; /* configure CS2/CSD0 for SDRAM */
-	writel(r0, iomuxc_base + 0x000);
-
-	/* start-up code doesn't need any static chip-select.
-	 * Leave their initialization to high-level code that
-	 * can initialize them depending on the baseboard.
-	 */
-
-	/* Configure clocks */
-
-	/* setup cpu/bus clocks */
-	writel(0x003f4208, MX35_CCM_BASE_ADDR + MX35_CCM_CCMR);
-
-	/* configure MPLL */
-	writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-
-	/* configure PPLL */
-	writel(PPCTL_PARAM_300, MX35_CCM_BASE_ADDR + MX35_CCM_PPCTL);
-
-	/* configure core dividers */
-	r0 = MX35_PDR0_CCM_PER_AHB(1) | MX35_PDR0_HSP_PODF(2);
-
-	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR0);
-
-	/* configure clock-gates */
-	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
-	r0 |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
-	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR0);
-
-	r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-	r0 |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
-	r0 |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
-	writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_CGR1);
-
-	/* Configure SDRAM */
-	/* Try 32-Bit 256 MB DDR memory */
-	r0 = ESDCTL0_SDE | ESDCTL0_ROW14 | ESDCTL0_COL10 | ESDCTL0_DSIZ_31_0; /* 1024 MBit DDR-SDRAM */
-	setup_sdram(r0, ESDMISC_MDDR_EN, 0x80000f00);
-
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* Speed up NAND controller by adjusting the NFC divider */
-		r0 = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-		r0 &= ~(0xf << 28);
-		r0 |= 0x1 << 28;
-		writel(r0, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-		imx35_barebox_boot_nand_external();
-	}
-
-out:
-	imx35_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/guf-neso/Makefile b/arch/arm/boards/guf-neso/Makefile
deleted file mode 100644
index 8d304e4afb..0000000000
--- a/arch/arm/boards/guf-neso/Makefile
+++ /dev/null
@@ -1,6 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-lwl-y += lowlevel.o
-obj-y += board.o
-obj-y += pll_init.o
-bbenv-$(CONFIG_DEFAULT_ENVIRONMENT_GENERIC) += defaultenv-guf-neso
diff --git a/arch/arm/boards/guf-neso/board.c b/arch/arm/boards/guf-neso/board.c
deleted file mode 100644
index 4a98592107..0000000000
--- a/arch/arm/boards/guf-neso/board.c
+++ /dev/null
@@ -1,318 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2010 Sascha Hauer, Pengutronix
-
-#include <common.h>
-#include <net.h>
-#include <init.h>
-#include <environment.h>
-#include <platform_data/eth-fec.h>
-#include <notifier.h>
-#include <gpio.h>
-#include <fs.h>
-#include <envfs.h>
-#include <fcntl.h>
-#include <nand.h>
-#include <command.h>
-#include <spi/spi.h>
-#include <usb/ulpi.h>
-
-#include <io.h>
-#include <asm/mmu.h>
-#include <asm/armlinux.h>
-#include <generated/mach-types.h>
-
-#include <mach/spi.h>
-#include <mach/imx27-regs.h>
-#include <mach/iomux-mx27.h>
-#include <mach/imx-nand.h>
-#include <mach/imx-pll.h>
-#include <platform_data/imxfb.h>
-#include <mach/devices-imx27.h>
-
-/* two pins are controlling the CS signals to the USB phys */
-#define USBH2_PHY_CS_GPIO (GPIO_PORTF + 20)
-#define OTG_PHY_CS_GPIO (GPIO_PORTF + 19)
-
-/* two pins are controlling the display and its backlight */
-#define LCD_POWER_GPIO (GPIO_PORTF + 18)
-#define BACKLIGHT_POWER_GPIO (GPIO_PORTE + 5)
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-	.phy_addr = 31,
-};
-
-static struct imx_nand_platform_data nand_info = {
-	.width		= 1,
-	.hw_ecc		= 1,
-	.flash_bbt	= 1,
-};
-
-static struct fb_videomode imxfb_mode = {
-	.name		= "CPT CLAA070LC0JCT",
-	.refresh	= 60,
-	.xres		= 800,
-	.yres		= 480,
-	.pixclock	= KHZ2PICOS(27000),
-	.hsync_len	= 1,	/* DE only sync */
-	.left_margin	= 50,
-	.right_margin	= 50,
-	.vsync_len	= 1,	/* DE only sync */
-	.upper_margin	= 10,
-	.lower_margin	= 10,
-};
-
-static void neso_fb_enable(int enable)
-{
-	gpio_direction_output(LCD_POWER_GPIO, enable);
-	gpio_direction_output(BACKLIGHT_POWER_GPIO, enable);
-}
-
-static struct imx_fb_platform_data neso_fb_data = {
-	.mode	= &imxfb_mode,
-	.num_modes = 1,
-	.pwmr	= 0x00000000,	/* doesn't matter */
-	.lscr1	= 0x00120300,	/* doesn't matter */
-	/* dynamic mode -> using the reset values (as recommended in the datasheet) */
-	.dmacr	= (0 << 31) | (4 << 16) | 96,
-	.enable	= neso_fb_enable,
-	.framebuffer_ovl = (void *)0xa7f00000,
-	/*
-	 * - TFT style panel
-	 * - clk enabled while idle
-	 * - clock inverted
-	 * - data not inverted
-	 * - data enable high active
-	 */
-	.pcr = PCR_TFT |
-		PCR_COLOR |
-		PCR_PBSIZ_8 |
-		PCR_BPIX_16 |
-		PCR_CLKPOL |
-		PCR_SCLK_SEL |
-		PCR_LPPOL |
-		PCR_FLMPOL,
-	.bpp = 16,	/* TODO 32 bit does not work: The 'green' component is lacking in this mode */
-};
-
-#if defined(CONFIG_USB) && defined(CONFIG_USB_ULPI)
-static void neso_usbh_init(void)
-{
-	uint32_t temp;
-
-	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x600);
-	temp &= ~((3 << 21) | 1);
-	temp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20) | (1<<11);
-	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x600);
-
-	temp = readl(MX27_USB_OTG_BASE_ADDR + 0x584);
-	temp &= ~(3 << 30);
-	temp |= 2 << 30;
-	writel(temp, MX27_USB_OTG_BASE_ADDR + 0x584);
-
-	mdelay(10);
-
-	gpio_set_value(USBH2_PHY_CS_GPIO, 0);
-	mdelay(10);
-	ulpi_setup((void *)(MX27_USB_OTG_BASE_ADDR + 0x570), 1);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC,
-				    MX27_USB_OTG_BASE_ADDR + 0x400, NULL);
-}
-#else
-static void neso_usbh_init(void) { }
-#endif
-
-static int neso_devices_init(void)
-{
-	int i;
-
-	unsigned int mode[] = {
-		/* UART1 */
-		PE12_PF_UART1_TXD,
-		PE13_PF_UART1_RXD,
-		PE14_PF_UART1_CTS,
-		PE15_PF_UART1_RTS,
-		/* FEC */
-		PD0_AIN_FEC_TXD0,
-		PD1_AIN_FEC_TXD1,
-		PD2_AIN_FEC_TXD2,
-		PD3_AIN_FEC_TXD3,
-		PD4_AOUT_FEC_RX_ER,
-		PD5_AOUT_FEC_RXD1,
-		PD6_AOUT_FEC_RXD2,
-		PD7_AOUT_FEC_RXD3,
-		PD8_AF_FEC_MDIO,
-		PD9_AIN_FEC_MDC,
-		PD10_AOUT_FEC_CRS,
-		PD11_AOUT_FEC_TX_CLK,
-		PD12_AOUT_FEC_RXD0,
-		PD13_AOUT_FEC_RX_DV,
-		PD14_AOUT_FEC_RX_CLK,
-		PD15_AOUT_FEC_COL,
-		PD16_AIN_FEC_TX_ER,
-		PF23_AIN_FEC_TX_EN,
-
-		/* SSI1 connected in AC97 style */
-		PC20_PF_SSI1_FS,
-		PC21_PF_SSI1_RXD,
-		PC22_PF_SSI1_TXD,
-		PC23_PF_SSI1_CLK,
-
-		/* LED 1 */
-		(GPIO_PORTB | 15 | GPIO_GPIO | GPIO_OUT),
-		/* LED 2 */
-		(GPIO_PORTB | 16 | GPIO_GPIO | GPIO_OUT),
-		/* CTOUCH reset */
-		(GPIO_PORTB | 17 | GPIO_GPIO | GPIO_OUT),
-		/* CTOUCH IRQ */
-		(GPIO_PORTB | 14 | GPIO_GPIO | GPIO_IN),
-		/* RTC IRQ */
-		(GPIO_PORTF | 14 | GPIO_GPIO | GPIO_IN),
-		/* SD change card detection */
-		(GPIO_PORTF | 17 | GPIO_GPIO | GPIO_IN),
-		/* SDHC1*/
-		PE18_PF_SD1_D0,
-		PE19_PF_SD1_D1,
-		PE20_PF_SD1_D2,
-		PE21_PF_SD1_D3,
-		PE22_PF_SD1_CMD,
-		PE23_PF_SD1_CLK,
-		/* I2C1 */
-		PD17_PF_I2C_DATA,
-		PD18_PF_I2C_CLK,
-		/* I2C2, for CTOUCH */
-		PC5_PF_I2C2_SDA,
-		PC6_PF_I2C2_SCL,
-
-		/* Connected to: Both USB phys and ethernet phy FIXME 1 = RESET? */
-		PE17_PF_RESET_OUT,
-
-		/* USB host */
-		(USBH2_PHY_CS_GPIO | GPIO_GPIO | GPIO_OUT),
-		PA0_PF_USBH2_CLK,
-		PA1_PF_USBH2_DIR,
-		PA3_PF_USBH2_NXT,
-		PA4_PF_USBH2_STP,
-		PD22_AF_USBH2_DATA0,
-		PD24_AF_USBH2_DATA1,
-		PD23_AF_USBH2_DATA2,
-		PD20_AF_USBH2_DATA3,
-		PD19_AF_USBH2_DATA4,
-		PD26_AF_USBH2_DATA5,
-		PD21_AF_USBH2_DATA6,
-		PA2_PF_USBH2_DATA7,
-
-		/* USB OTG */
-		(OTG_PHY_CS_GPIO | GPIO_GPIO | GPIO_OUT),
-		PE24_PF_USBOTG_CLK,
-		PE2_PF_USBOTG_DIR,
-		PE0_PF_USBOTG_NXT,
-		PE1_PF_USBOTG_STP,
-		PC9_PF_USBOTG_DATA0,
-		PC11_PF_USBOTG_DATA1,
-		PC10_PF_USBOTG_DATA2,
-		PC13_PF_USBOTG_DATA3,
-		PC12_PF_USBOTG_DATA4,
-		PC7_PF_USBOTG_DATA5,
-		PC8_PF_USBOTG_DATA6,
-		PE25_PF_USBOTG_DATA7,
-
-		/* Display signals */
-		(LCD_POWER_GPIO | GPIO_GPIO | GPIO_OUT), /* LCD power: 1 = LCD on */
-		PA5_PF_LSCLK,
-		PA6_PF_LD0,
-		PA7_PF_LD1,
-		PA8_PF_LD2,
-		PA9_PF_LD3,
-		PA10_PF_LD4,
-		PA11_PF_LD5,
-		PA12_PF_LD6,
-		PA13_PF_LD7,
-		PA14_PF_LD8,
-		PA15_PF_LD9,
-		PA16_PF_LD10,
-		PA17_PF_LD11,
-		PA18_PF_LD12,
-		PA19_PF_LD13,
-		PA20_PF_LD14,
-		PA21_PF_LD15,
-		PA22_PF_LD16,
-		PA23_PF_LD17,
-		PA31_PF_OE_ACD,	/* DE */
-
-		/* Backlight PWM (Use as gpio) */
-		(BACKLIGHT_POWER_GPIO | GPIO_GPIO | GPIO_OUT),
-	};
-
-	/* reset the chip select lines to the USB/OTG phys to avoid any hang */
-	gpio_direction_output(OTG_PHY_CS_GPIO, 1);
-	gpio_direction_output(USBH2_PHY_CS_GPIO, 1);
-
-	/* initialize gpios */
-	for (i = 0; i < ARRAY_SIZE(mode); i++)
-		imx27_gpio_mode(mode[i]);
-
-	imx27_add_nand(&nand_info);
-	imx27_add_fb(&neso_fb_data);
-
-	neso_usbh_init();
-
-	imx27_add_fec(&fec_info);
-
-	devfs_add_partition("nand0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self_raw");
-	dev_add_bb_dev("self_raw", "self0");
-
-	devfs_add_partition("nand0", 0x40000, 0x80000, DEVFS_PARTITION_FIXED, "env_raw");
-	dev_add_bb_dev("env_raw", "env0");
-
-	armlinux_set_architecture(MACH_TYPE_NESO);
-
-	if (IS_ENABLED(CONFIG_DEFAULT_ENVIRONMENT_GENERIC))
-		defaultenv_append_directory(defaultenv_guf_neso);
-
-	return 0;
-}
-
-device_initcall(neso_devices_init);
-
-static int neso_console_init(void)
-{
-	barebox_set_model("Garz & Fricke NESO");
-	barebox_set_hostname("neso");
-
-	imx27_add_uart0();
-
-	return 0;
-}
-
-console_initcall(neso_console_init);
-
-extern void *neso_pll_init, *neso_pll_init_end;
-
-static int neso_pll(void)
-{
-	void *vram = (void *)0xffff4c00;
-	void (*pllfunc)(void) = vram;
-
-	printf("initialising PLLs\n");
-
-	memcpy(vram, &neso_pll_init, 0x100);
-
-	console_flush();
-
-	pllfunc();
-
-	/* clock gating enable */
-	writel(0x00050f08, MX27_SYSCTRL_BASE_ADDR + MX27_GPCR);
-
-	writel(0x130410c3, MX27_CCM_BASE_ADDR + MX27_PCDR0);
-	writel(0x09030911, MX27_CCM_BASE_ADDR + MX27_PCDR1);
-
-	/* Clocks have changed. Notify clients */
-	clock_notifier_call_chain();
-
-	return 0;
-}
-
-late_initcall(neso_pll);
-
diff --git a/arch/arm/boards/guf-neso/defaultenv-guf-neso/config b/arch/arm/boards/guf-neso/defaultenv-guf-neso/config
deleted file mode 100644
index bd44a555d9..0000000000
--- a/arch/arm/boards/guf-neso/defaultenv-guf-neso/config
+++ /dev/null
@@ -1,47 +0,0 @@
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
-bootargs="console=ttymxc0,115200"
-
-nand_parts="256k(barebox)ro,512k(bareboxenv),2M(kernel),-(root)"
-rootfs_mtdblock_nand=3
-
-# set a fancy prompt (if support is compiled in)
-PS1="\e[1;32mbarebox@\e[1;31m\h:\w\e[0m "
-
diff --git a/arch/arm/boards/guf-neso/lowlevel.c b/arch/arm/boards/guf-neso/lowlevel.c
deleted file mode 100644
index df91bc329f..0000000000
--- a/arch/arm/boards/guf-neso/lowlevel.c
+++ /dev/null
@@ -1,81 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <common.h>
-#include <init.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/system.h>
-#include <asm/sections.h>
-#include <asm-generic/memory_layout.h>
-
-#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	uint32_t r;
-	int i;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(MX27_IRAM_BASE_ADDR + MX27_IRAM_SIZE);
-
-	/* ahb lite ip interface */
-	writel(0x20040304, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR0);
-	writel(0xDFFBFCFB, MX27_AIPI_BASE_ADDR + MX27_AIPI1_PSR1);
-	writel(0x00000000, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR0);
-	writel(0xFFFFFFFF, MX27_AIPI_BASE_ADDR + MX27_AIPI2_PSR1);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (r > 0xa0000000 && r < 0xb0000000)
-		goto out;
-
-	/*
-	 * DDR on CSD0
-	 */
-	/* Enable DDR SDRAM operation */
-	writel(0x00000008, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-
-	/* Set the driving strength   */
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(3));
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(5));
-	writel(0x55555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(6));
-	writel(0x00005005, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(7));
-	writel(0x15555555, MX27_SYSCTRL_BASE_ADDR + MX27_DSCR(8));
-
-	/* Initial reset */
-	writel(0x00000004, MX27_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	writel(0x006ac73a, MX27_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
-
-	/* precharge CSD0 all banks */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_PRECHARGE,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writel(0x00000000, 0xA0000F00);	/* CSD0 precharge address (A10 = 1) */
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_AUTO_REFRESH,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	for (i = 0; i < 8; i++)
-		writel(0, 0xa0000f00);
-
-	writel(ESDCTL0_VAL | ESDCTL0_SMODE_LOAD_MODE,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	writeb(0xda, 0xa0000033);
-	writeb(0xff, 0xa1000000);
-	writel(ESDCTL0_VAL | ESDCTL0_DSIZ_31_0 | ESDCTL0_REF4 |
-			ESDCTL0_BL | ESDCTL0_SMODE_NORMAL,
-			MX27_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx27_barebox_boot_nand_external();
-
-out:
-	imx27_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/guf-neso/pll_init.S b/arch/arm/boards/guf-neso/pll_init.S
deleted file mode 100644
index fe28c457fc..0000000000
--- a/arch/arm/boards/guf-neso/pll_init.S
+++ /dev/null
@@ -1,53 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#include <config.h>
-#include <mach/imx27-regs.h>
-#include <mach/imx-pll.h>
-#include <linux/linkage.h>
-
-#define writel(val, reg) \
-	ldr		r0,	=reg;	\
-	ldr		r1,	=val;	\
-	str		r1,   [r0];
-
-#define CSCR_VAL MX27_CSCR_USB_DIV(3) |	\
-		 MX27_CSCR_SD_CNT(3) |	\
-		 MX27_CSCR_MSHC_SEL |	\
-		 MX27_CSCR_H264_SEL |	\
-		 MX27_CSCR_SSI1_SEL |	\
-		 MX27_CSCR_SSI2_SEL |	\
-		 MX27_CSCR_MCU_SEL |		\
-		 MX27_CSCR_ARM_SRC_MPLL |	\
-		 MX27_CSCR_SP_SEL |		\
-		 MX27_CSCR_ARM_DIV(0) |	\
-		 MX27_CSCR_FPM_EN |		\
-		 MX27_CSCR_SPEN |		\
-		 MX27_CSCR_MPEN |		\
-		 MX27_CSCR_AHB_DIV(1)
-
-ENTRY(neso_pll_init)
-
-	/* 399 MHz */
-	writel(IMX_PLL_PD(0) |
-		 IMX_PLL_MFD(51) |
-		 IMX_PLL_MFI(7) |
-		 IMX_PLL_MFN(35), MX27_CCM_BASE_ADDR + MX27_MPCTL0)
-
-	/* SPLL = 2 * 26 * 4.61538 MHz = 240 MHz */
-	writel(IMX_PLL_PD(1) |
-		 IMX_PLL_MFD(12) |
-		 IMX_PLL_MFI(9) |
-		 IMX_PLL_MFN(3), MX27_CCM_BASE_ADDR + MX27_SPCTL0)
-
-	writel(CSCR_VAL | MX27_CSCR_MPLL_RESTART | MX27_CSCR_SPLL_RESTART,
-			MX27_CCM_BASE_ADDR + MX27_CSCR)
-
-	ldr r2, =16000
-1:
-	subs    r2, r2, #1
-	nop
-	bcs 1b
-
-	mov     pc, lr
-ENDPROC(neso_pll_init)
-
diff --git a/arch/arm/boards/kindle3/Makefile b/arch/arm/boards/kindle3/Makefile
deleted file mode 100644
index 75a0ff560f..0000000000
--- a/arch/arm/boards/kindle3/Makefile
+++ /dev/null
@@ -1,4 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-obj-y += kindle3.o
-lwl-y += lowlevel.o
diff --git a/arch/arm/boards/kindle3/env/boot/mmc_kernel b/arch/arm/boards/kindle3/env/boot/mmc_kernel
deleted file mode 100644
index c6145b85ac..0000000000
--- a/arch/arm/boards/kindle3/env/boot/mmc_kernel
+++ /dev/null
@@ -1,7 +0,0 @@
-#!/bin/sh
-# Boot the Amazon factory-shipped kernel uimage stored on
-# the eMMC at MOVINAND_OFFSET_KERNEL=266240.
-
-global linux.bootargs.dyn.root="root=/dev/mmcblk0p1 ro"
-
-bootm -c -a 0x80008000 /dev/disk0.kernel
diff --git a/arch/arm/boards/kindle3/env/init/serials b/arch/arm/boards/kindle3/env/init/serials
deleted file mode 100644
index 76580aeece..0000000000
--- a/arch/arm/boards/kindle3/env/init/serials
+++ /dev/null
@@ -1,21 +0,0 @@
-#!/bin/sh
-
-global board.serial16
-global board.revision16
-
-# 16-byte alphanumeric containing the serial number
-# SN is the first 16 bytes before the bootloader
-if test -b /dev/disk0.serial; then
-	if memcpy -s /dev/disk0.serial -d tmp_serial16 -b 0 0 16; then
-		readf tmp_serial16 global.board.serial16
-	fi
-fi
-[ -f tmp_serial16 ] && rm tmp_serial16
-
-# 16-byte alphanumeric containing the board revision
-if test -b /dev/disk0.imx_header; then
-	if memcpy -s /dev/disk0.imx_header -d tmp_revision16 -b 2032 0 16; then
-		readf tmp_revision16 global.board.revision16
-	fi
-fi
-[ -f tmp_revision16 ] && rm tmp_revision16
diff --git a/arch/arm/boards/kindle3/env/init/usbconsole b/arch/arm/boards/kindle3/env/init/usbconsole
deleted file mode 100644
index 87a8f9bf8c..0000000000
--- a/arch/arm/boards/kindle3/env/init/usbconsole
+++ /dev/null
@@ -1,8 +0,0 @@
-#!/bin/sh
-
-# Fiveway device select key activates usbserial access for 60s
-echo
-if gpio_get_value 63; then
-	usbserial
-	global.autoboot_timeout=60
-fi
diff --git a/arch/arm/boards/kindle3/env/nv/autoboot_timeout b/arch/arm/boards/kindle3/env/nv/autoboot_timeout
deleted file mode 100644
index 00750edc07..0000000000
--- a/arch/arm/boards/kindle3/env/nv/autoboot_timeout
+++ /dev/null
@@ -1 +0,0 @@
-3
diff --git a/arch/arm/boards/kindle3/env/nv/boot.default b/arch/arm/boards/kindle3/env/nv/boot.default
deleted file mode 100644
index 3118b7af45..0000000000
--- a/arch/arm/boards/kindle3/env/nv/boot.default
+++ /dev/null
@@ -1 +0,0 @@
-mmc_kernel
diff --git a/arch/arm/boards/kindle3/env/nv/linux.bootargs.base b/arch/arm/boards/kindle3/env/nv/linux.bootargs.base
deleted file mode 100644
index 3a940d88fa..0000000000
--- a/arch/arm/boards/kindle3/env/nv/linux.bootargs.base
+++ /dev/null
@@ -1 +0,0 @@
-mem=256M ip=none
diff --git a/arch/arm/boards/kindle3/env/nv/linux.bootargs.console b/arch/arm/boards/kindle3/env/nv/linux.bootargs.console
deleted file mode 100644
index d775310b40..0000000000
--- a/arch/arm/boards/kindle3/env/nv/linux.bootargs.console
+++ /dev/null
@@ -1 +0,0 @@
-console=ttymxc0,115200
diff --git a/arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj b/arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj
deleted file mode 100644
index aa3ba59e55..0000000000
--- a/arch/arm/boards/kindle3/env/nv/linux.bootargs.lpj
+++ /dev/null
@@ -1 +0,0 @@
-lpj=2555904
diff --git a/arch/arm/boards/kindle3/flash-header.imxcfg b/arch/arm/boards/kindle3/flash-header.imxcfg
deleted file mode 100644
index 5ef09200ed..0000000000
--- a/arch/arm/boards/kindle3/flash-header.imxcfg
+++ /dev/null
@@ -1,26 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-soc imx35
-loadaddr 0x87eff400
-ivtofs 0x400
-
-wm 32 0x53f80004 0x00821000
-wm 32 0x53f80004 0x00821000
-wm 32 0xb8001010 0x00000002
-wm 32 0xb8001010 0x00000004
-wm 32 0xb8001004 0x0019672f
-wm 32 0xb8001000 0x93100000
-wm 8 0x80000400 0xda
-wm 32 0xb8001000 0xa3100000
-wm 32 0x80000000 0x12344321
-wm 32 0x80000000 0x12344321
-wm 32 0xb8001000 0xb3100000
-wm 8 0x80000033 0xda
-wm 8 0x82000000 0xff
-wm 32 0xb8001000 0x83226080
-wm 32 0xb8001010 0x0000000c
-wm 32 0x80000000 0xdeadbeef
-wm 32 0xb8001030 0x00e78000
-wm 32 0x43fac004 0x00000004
-wm 32 0x43fac328 0x00002100
-wm 32 0x43fac7d0 0x00000000
diff --git a/arch/arm/boards/kindle3/kindle3.c b/arch/arm/boards/kindle3/kindle3.c
deleted file mode 100644
index a593dc424d..0000000000
--- a/arch/arm/boards/kindle3/kindle3.c
+++ /dev/null
@@ -1,304 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2016 Alexander Kurz <akurz@blala.de>
-
-/* Board support for the Amazon Kindle 3rd generation */
-
-#include <common.h>
-#include <command.h>
-#include <driver.h>
-#include <init.h>
-#include <bootsource.h>
-#include <io.h>
-#include <environment.h>
-#include <generated/mach-types.h>
-#include <asm/armlinux.h>
-#include <asm/mmu.h>
-#include <asm/setup.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/iomux-mx35.h>
-#include <mach/devices-imx35.h>
-#include <mach/generic.h>
-#include <usb/fsl_usb2.h>
-#include <mach/usb.h>
-#include <mach/spi.h>
-#include <spi/spi.h>
-#include <magicvar.h>
-
-/* 16 byte id for serial number */
-#define ATAG_SERIAL16   0x5441000a
-/* 16 byte id for a board revision */
-#define ATAG_REVISION16 0x5441000b
-
-struct char16_tag {
-	char data[16];
-};
-
-static struct tag *setup_16char_tag(struct tag *params, uint32_t tag,
-				    const char *value)
-{
-	struct char16_tag *target;
-	target = ((void *) params) + sizeof(struct tag_header);
-	params->hdr.tag = tag;
-	params->hdr.size = tag_size(char16_tag);
-	memcpy(target->data, value, sizeof target->data);
-	return tag_next(params);
-}
-
-static const char *get_env_16char_tag(const char *tag)
-{
-	static const char *default16 = "0000000000000000";
-	const char *value;
-	value = getenv(tag);
-	if (!value) {
-		printf("env var %s not found, using default\n", tag);
-		return default16;
-	}
-	if (strlen(value) != 16) {
-		printf("env var %s: expecting 16 characters, using default\n",
-			tag);
-		return default16;
-	}
-	printf("%s: %s\n", tag, value);
-	return value;
-}
-
-BAREBOX_MAGICVAR(global.board.serial16,
-	"Pass the kindle Serial as vendor-specific ATAG to linux");
-BAREBOX_MAGICVAR(global.board.revision16,
-	"Pass the kindle BoardId as vendor-specific ATAG to linux");
-
-/* The Kindle3 Kernel expects two custom ATAGs, ATAG_REVISION16 describing
- * the board and ATAG_SERIAL16 to identify the individual device.
- */
-static struct tag *kindle3_append_atags(struct tag *params)
-{
-	params = setup_16char_tag(params, ATAG_SERIAL16,
-				get_env_16char_tag("global.board.serial16"));
-	params = setup_16char_tag(params, ATAG_REVISION16,
-				get_env_16char_tag("global.board.revision16"));
-	return params;
-}
-
-static struct fsl_usb2_platform_data kindle3_usb_info = {
-	.operating_mode = FSL_USB2_DR_DEVICE,
-	.phy_mode = FSL_USB2_PHY_UTMI,
-};
-
-/* SPI master devices. */
-static int kindle3_spi0_internal_chipselect[] = {
-	IMX_GPIO_NR(1, 18),
-};
-
-static struct spi_imx_master kindle3_spi0_info = {
-	.chipselect	= kindle3_spi0_internal_chipselect,
-	.num_chipselect	= ARRAY_SIZE(kindle3_spi0_internal_chipselect),
-};
-
-static const struct spi_board_info kindle3_spi_board_info[] = {
-	{
-		.name		= "mc13892",
-		.bus_num	= 0,
-		.chip_select	= 0,
-		.mode		= SPI_CS_HIGH,
-	},
-};
-
-static int kindle3_mmu_init(void)
-{
-	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-
-	return 0;
-}
-postmmu_initcall(kindle3_mmu_init);
-
-static int kindle3_devices_init(void)
-{
-	imx35_add_mmc0(NULL);
-
-	if (IS_ENABLED(CONFIG_USB_GADGET)) {
-		unsigned int tmp;
-		/* Workaround ENGcm09152 */
-		tmp = readl(MX35_USB_OTG_BASE_ADDR + 0x608);
-		writel(tmp | (1 << 23), MX35_USB_OTG_BASE_ADDR + 0x608);
-		add_generic_device("fsl-udc", DEVICE_ID_DYNAMIC, NULL,
-				   MX35_USB_OTG_BASE_ADDR, 0x200,
-				   IORESOURCE_MEM, &kindle3_usb_info);
-	}
-
-	/* The kindle3 related linux patch published by amazon bluntly
-	 * renamed MACH_MX35_3DS to MACH_MX35_LUIGI
-	 */
-	armlinux_set_architecture(MACH_TYPE_MX35_3DS);
-
-	/* Compatibility ATAGs for original kernel */
-	armlinux_set_atag_appender(kindle3_append_atags);
-	return 0;
-}
-device_initcall(kindle3_devices_init);
-
-#define FIVEWAY_PAD_CTL (PAD_CTL_PUS_100K_UP | PAD_CTL_HYS | PAD_CTL_DVS)
-static iomux_v3_cfg_t kindle3_pads[] = {
-	/* UART1 */
-	MX35_PAD_RXD1__UART1_RXD_MUX,
-	MX35_PAD_TXD1__UART1_TXD_MUX,
-
-	/* eMMC */
-	MX35_PAD_SD1_CMD__ESDHC1_CMD,
-	MX35_PAD_SD1_CLK__ESDHC1_CLK,
-	MX35_PAD_SD1_DATA0__ESDHC1_DAT0,
-	MX35_PAD_SD1_DATA1__ESDHC1_DAT1,
-	MX35_PAD_SD1_DATA2__ESDHC1_DAT2,
-	MX35_PAD_SD1_DATA3__ESDHC1_DAT3,
-
-	/* USB */
-	MX35_PAD_USBOTG_PWR__USB_TOP_USBOTG_PWR,
-	MX35_PAD_USBOTG_OC__USB_TOP_USBOTG_OC,
-
-	/* I2C 1+2 */
-	MX35_PAD_I2C1_CLK__I2C1_SCL,
-	MX35_PAD_I2C1_DAT__I2C1_SDA,
-	MX35_PAD_I2C2_CLK__I2C2_SCL,
-	MX35_PAD_I2C2_DAT__I2C2_SDA,
-
-	/* SPI */
-	MX35_PAD_CSPI1_SS0__GPIO1_18,
-	MX35_PAD_CSPI1_SCLK__CSPI1_SCLK,
-	MX35_PAD_CSPI1_MOSI__CSPI1_MOSI,
-	MX35_PAD_CSPI1_MISO__CSPI1_MISO,
-	MX35_PAD_CSPI1_SPI_RDY__CSPI1_RDY,
-
-	/* fiveway device: up, down, left, right, select */
-	IOMUX_PAD(0x718, 0x2b4, 5, 0x8b4, 1, FIVEWAY_PAD_CTL),
-	IOMUX_PAD(0x71c, 0x2b8, 5, 0x8b8, 1, FIVEWAY_PAD_CTL),
-	IOMUX_PAD(0x59c, 0x158, 5, 0x830, 0, FIVEWAY_PAD_CTL),
-	IOMUX_PAD(0x724, 0x2c0, 5, 0x8c4, 1, FIVEWAY_PAD_CTL),
-	IOMUX_PAD(0x728, 0x2c4, 5, 0x8c8, 1, FIVEWAY_PAD_CTL),
-
-	/* Volume keys: up, down */
-	MX35_PAD_SCKR__GPIO1_4,
-	MX35_PAD_FSR__GPIO1_5,
-
-};
-
-static int kindle3_part_init(void)
-{
-	devfs_add_partition("disk0", SZ_1K, 2 * SZ_1K,
-			    DEVFS_PARTITION_FIXED, "disk0.imx_header");
-	devfs_add_partition("disk0", 4 * SZ_1K, (192 - 1) * SZ_1K,
-			    DEVFS_PARTITION_FIXED, "disk0.self");
-	devfs_add_partition("disk0", (192 + 3) * SZ_1K, SZ_64K,
-			    DEVFS_PARTITION_FIXED, "env0");
-	devfs_add_partition("disk0", (256 + 3) * SZ_1K, SZ_1K,
-			    DEVFS_PARTITION_FIXED, "disk0.serial");
-	devfs_add_partition("disk0", (256 + 4) * SZ_1K, 3407872,
-			    DEVFS_PARTITION_FIXED, "disk0.kernel");
-	devfs_add_partition("disk0", 3674112, SZ_256K,
-			    DEVFS_PARTITION_FIXED, "disk0.waveform");
-	return 0;
-}
-
-late_initcall(kindle3_part_init);
-
-static int imx35_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(kindle3_pads,
-					 ARRAY_SIZE(kindle3_pads));
-
-	barebox_set_model("Kindle3");
-	barebox_set_hostname("kindle3");
-
-	imx35_add_uart0();
-
-	spi_register_board_info(kindle3_spi_board_info,
-				ARRAY_SIZE(kindle3_spi_board_info));
-	imx35_add_spi0(&kindle3_spi0_info);
-
-	imx35_add_i2c0(NULL);
-	imx35_add_i2c1(NULL);
-	return 0;
-}
-console_initcall(imx35_console_init);
-
-static int kindle3_core_setup(void)
-{
-	u32 tmp;
-
-	/* AIPS setup - Only setup MPROTx registers.
-	 * The PACR default values are good.
-	 */
-	/*
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR + 0x4);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR + 0x4);
-
-	/*
-	 * Clear the on and off peripheral modules Supervisor Protect bit
-	 * for SDMA to access them. Did not change the AIPS control registers
-	 * (offset 0x20) access type
-	 */
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x4C);
-	tmp = readl(MX35_AIPS1_BASE_ADDR + 0x50);
-	tmp &= 0x00FFFFFF;
-	writel(tmp, MX35_AIPS1_BASE_ADDR + 0x50);
-
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x4C);
-	tmp = readl(MX35_AIPS2_BASE_ADDR + 0x50);
-	tmp &= 0x00FFFFFF;
-	writel(tmp, MX35_AIPS2_BASE_ADDR + 0x50);
-
-	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
-
-	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
-#define MAX_PARAM1 0x00302154
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x0);   /* for S0 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x100); /* for S1 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x200); /* for S2 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x300); /* for S3 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x400); /* for S4 */
-
-	/* SGPCR - always park on last master */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x10);	/* for S0 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x110);	/* for S1 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x210);	/* for S2 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x310);	/* for S3 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x410);	/* for S4 */
-
-	/* MGPCR - restore default values */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x800);	/* for M0 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x900);	/* for M1 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xa00);	/* for M2 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xb00);	/* for M3 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
-
-	/*
-	 * M3IF Control Register (M3IFCTL)
-	 * MRRP[0] = L2CC0 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[1] = MAX1 not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[2] = L2CC1 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[3] = USB  not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[4] = SDMA not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[5] = GPU not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[6] = IPU1 on priority list (1 << 6)		= 0x00000040
-	 * MRRP[7] = IPU2 not on priority list (0 << 0)		= 0x00000000
-	 *                                                       ------------
-	 *                                                        0x00000040
-	 */
-	writel(0x40, MX35_M3IF_BASE_ADDR);
-
-	return 0;
-}
-
-core_initcall(kindle3_core_setup);
diff --git a/arch/arm/boards/kindle3/lowlevel.c b/arch/arm/boards/kindle3/lowlevel.c
deleted file mode 100644
index 251bcf9d42..0000000000
--- a/arch/arm/boards/kindle3/lowlevel.c
+++ /dev/null
@@ -1,127 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2016 Alexander Kurz <akurz@blala.de>
-
-#include <common.h>
-#include <init.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/sections.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/system.h>
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	uint32_t r, s;
-	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
-	register uint32_t loops = 0x20000;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE);
-
-	r = get_cr();
-	r |= CR_Z; /* Flow prediction (Z) */
-	r |= CR_U; /* unaligned accesses  */
-	r |= CR_FI; /* Low Int Latency     */
-
-	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1" : "=r"(s));
-	s |= 0x7;
-	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 1" : : "r"(s));
-
-	set_cr(r);
-
-	r = 0;
-	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
-
-	/*
-	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
-	 * starting point.  Don't flush BTAC while it is disabled to avoid
-	 * ARM1136 erratum 408023.
-	 */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r));
-
-	/* invalidate I cache and D cache */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c7, 0" : : "r"(r));
-
-	/* invalidate TLBs */
-	__asm__ __volatile__("mcr p15, 0, %0, c8, c7, 0" : : "r"(r));
-
-	/* Drain the write buffer */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c10, 4" : : "r"(r));
-
-	/* Also setup the Peripheral Port Remap register inside the core */
-	r = 0x40000015; /* start from AIPS 2GB region */
-	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
-
-	/*
-	 * End of ARM1136 init
-	 */
-
-	writel(0x003F4208, ccm_base + MX35_CCM_CCMR);
-
-	/* Set MPLL , arm clock and ahb clock*/
-	writel(MPCTL_PARAM_532, ccm_base + MX35_CCM_MPCTL);
-
-	writel(PPCTL_PARAM_300, ccm_base + MX35_CCM_PPCTL);
-	writel(0x00001000, ccm_base + MX35_CCM_PDR0);
-
-	r = readl(ccm_base + MX35_CCM_CGR0);
-	r |= 0x3 << MX35_CCM_CGR0_CSPI1_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR0_ESDHC1_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR0);
-
-	r = readl(ccm_base + MX35_CCM_CGR1);
-	r |= 0x3 << MX35_CCM_CGR1_IOMUX_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_I2C2_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_GPIO1_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_GPIO2_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR1);
-
-	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
-	r |= 0x1000;
-	writel(r, MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (r > 0x80000000 && r < 0x90000000)
-		goto out;
-
-	/* Init Mobile DDR */
-	writel(0x0000000E, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	/* ESD_MISC: Enable DDR SDRAM */
-	writel(0x00000004, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	__asm__ volatile ("1:\n"
-			"subs %0, %1, #1\n"
-			"bne 1b" : "=r" (loops) : "0" (loops));
-
-	writel(0x0019672f, MX35_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
-	/* ESD_ESDCTL0 : select Prechare-All mode */
-	writel(0x93220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x400);
-	/* ESD_ESDCTL0: Auto Refresh command */
-	writel(0xA3220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX35_CSD0_BASE_ADDR);
-	writeb(0xda, MX35_CSD0_BASE_ADDR);
-	/* ESD_ESDCTL0: Load Mode Register */
-	writel(0xB3220000, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX35_CSD0_BASE_ADDR + 0x33);
-	writeb(0xff, MX35_CSD0_BASE_ADDR + 0x2000000);
-	/* ESD_ESDCTL0: enable Auto-Refresh */
-	writel(0x83228080, MX35_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-
-	writel(0x0000000c, MX35_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	writel(0xdeadbeef, MX35_CSD0_BASE_ADDR);
-	writel(0x00e78000, MX35_CSD0_BASE_ADDR + 0x1030);
-
-out:
-	imx35_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/phytec-phycore-imx31/Makefile b/arch/arm/boards/phytec-phycore-imx31/Makefile
deleted file mode 100644
index 1a5be8e81f..0000000000
--- a/arch/arm/boards/phytec-phycore-imx31/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Juergen Beisert <jbe@pengutronix.de>
-
-lwl-y += lowlevel.o
-obj-y += pcm037.o
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
deleted file mode 100644
index d555a538d1..0000000000
--- a/arch/arm/boards/phytec-phycore-imx31/env/boot/nand-ubi
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
deleted file mode 100644
index 540277cdeb..0000000000
--- a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nand
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="512k(nand0.barebox)ro,128k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
-kernelname="mxc_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
deleted file mode 100644
index 940eb86c95..0000000000
--- a/arch/arm/boards/phytec-phycore-imx31/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="256k(nor0.barebox)ro,128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
-kernelname="physmap-flash.0"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c b/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
deleted file mode 100644
index 7e1c6efd3f..0000000000
--- a/arch/arm/boards/phytec-phycore-imx31/lowlevel.c
+++ /dev/null
@@ -1,118 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <common.h>
-#include <init.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/system.h>
-#include <asm-generic/memory_layout.h>
-#include <asm-generic/sections.h>
-#include <asm/barebox-arm-head.h>
-#include <mach/imx31-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-
-#define ESDCTL0_VAL (ESDCTL0_SDE | ESDCTL0_ROW13 | ESDCTL0_COL10)
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	uint32_t r;
-	volatile int v;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(MX31_IRAM_BASE_ADDR + MX31_IRAM_SIZE);
-
-	writel(1 << 6, MX31_IPU_CTRL_BASE_ADDR);
-
-	writel(0x074B0BF5, MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
-
-	for (v = 0; v < 0x4000; v++);
-
-	writel(0x074B0BF5 | MX31_CCMR_MPE, MX31_CCM_BASE_ADDR +
-			MX31_CCM_CCMR);
-	writel((0x074B0BF5 | MX31_CCMR_MPE) & ~MX31_CCMR_MDS,
-			MX31_CCM_BASE_ADDR + MX31_CCM_CCMR);
-
-	writel(MX31_PDR0_CSI_PODF(0xff1) | \
-		MX31_PDR0_PER_PODF(7) | \
-		MX31_PDR0_HSP_PODF(3) | \
-		MX31_PDR0_NFC_PODF(5) | \
-		MX31_PDR0_IPG_PODF(1) | \
-		MX31_PDR0_MAX_PODF(3) | \
-		MX31_PDR0_MCU_PODF(0), \
-		MX31_CCM_BASE_ADDR + MX31_CCM_PDR0);
-
-	writel(IMX_PLL_PD(0) | IMX_PLL_MFD(0xe) |
-			IMX_PLL_MFI(9) | IMX_PLL_MFN(0xd),
-			MX31_CCM_BASE_ADDR + MX31_CCM_MPCTL);
-	writel(IMX_PLL_PD(1) | IMX_PLL_MFD(0x43) | IMX_PLL_MFI(12) |
-			IMX_PLL_MFN(1), MX31_CCM_BASE_ADDR +
-			MX31_CCM_SPCTL);
-
-	/*
-	 * Configure IOMUXC
-	 * Clears 0x43fa_c26c - 0x43fa_c2dc with 0, except 0x43fa_c278 (untouched),
-	 * 0x43fa_c27c (set to 0x1000) and 0x43fa_c280 (untouched)
-	 * (behaviour copied by sha, source unknown)
-	 */
-	writel(0, 0x43fac26c);
-	writel(0, 0x43fac270);
-	writel(0, 0x43fac274);
-
-	writel(0x1000, 0x43fac27c);
-
-	for (r = 0x43fac284; r <= 0x43fac2dc; r += 4)
-		writel(0, r);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (r > 0x80000000 && r < 0xa0000000)
-		imx31_barebox_entry(NULL);
-
-#if defined CONFIG_PCM037_SDRAM_BANK0_128MB
-#define ROWS0	ESDCTL0_ROW13
-#elif defined CONFIG_PCM037_SDRAM_BANK0_256MB
-#define ROWS0	ESDCTL0_ROW14
-#endif
-	writel(0x00000004, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG0);
-	writel(0x90100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writel(0x12344321, MX31_CSD0_BASE_ADDR + 0xf00);
-	writel(0xa0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writel(0x12344321, MX31_CSD0_BASE_ADDR);
-	writel(0x12344321, MX31_CSD0_BASE_ADDR);
-	writel(0xb0100000 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writeb(0xda, MX31_CSD0_BASE_ADDR + 0x33);
-	writeb(0xff, MX31_CSD0_BASE_ADDR + 0x01000000);
-	writel(0x80226080 | ROWS0, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL0);
-	writel(0xDEADBEEF, MX31_CSD0_BASE_ADDR);
-	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-
-#ifndef CONFIG_PCM037_SDRAM_BANK1_NONE
-#if defined CONFIG_PCM037_SDRAM_BANK1_128MB
-#define ROWS1	ESDCTL0_ROW13
-#elif defined CONFIG_PCM037_SDRAM_BANK1_256MB
-#define ROWS1	ESDCTL0_ROW14
-#endif
-	writel(0x006ac73a, MX31_ESDCTL_BASE_ADDR + IMX_ESDCFG1);
-	writel(0x90100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
-	writel(0x12344321, MX31_CSD1_BASE_ADDR + 0xf00);
-	writel(0xa0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
-	writel(0x12344321, MX31_CSD1_BASE_ADDR);
-	writel(0x12344321, MX31_CSD1_BASE_ADDR);
-	writel(0xb0100000 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
-	writeb(0xda, MX31_CSD1_BASE_ADDR + 0x33);
-	writeb(0xff, MX31_CSD1_BASE_ADDR + 0x01000000);
-	writel(0x80226080 | ROWS1, MX31_ESDCTL_BASE_ADDR + IMX_ESDCTL1);
-	writel(0xDEADBEEF, MX31_CSD1_BASE_ADDR);
-	writel(0x0000000c, MX31_ESDCTL_BASE_ADDR + IMX_ESDMISC);
-#endif
-
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND))
-		imx31_barebox_boot_nand_external();
-	else
-		imx31_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/phytec-phycore-imx31/pcm037.c b/arch/arm/boards/phytec-phycore-imx31/pcm037.c
deleted file mode 100644
index a736919daf..0000000000
--- a/arch/arm/boards/phytec-phycore-imx31/pcm037.c
+++ /dev/null
@@ -1,240 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-/* Board support for Phytec's, i.MX31 based CPU card, called: PCM037 */
-
-#include <common.h>
-#include <init.h>
-#include <driver.h>
-#include <fs.h>
-#include <gpio.h>
-#include <environment.h>
-#include <usb/ulpi.h>
-#include <mach/imx31-regs.h>
-#include <mach/iomux-mx31.h>
-#include <asm/armlinux.h>
-#include <asm/sections.h>
-#include <mach/weim.h>
-#include <io.h>
-#include <platform_data/eth-smc911x.h>
-#include <asm/mmu.h>
-#include <generated/mach-types.h>
-#include <asm/barebox-arm.h>
-#include <mach/imx-nand.h>
-#include <mach/devices-imx31.h>
-
-struct imx_nand_platform_data nand_info = {
-	.width = 1,
-	.hw_ecc = 1,
-	.flash_bbt = 1,
-};
-
-#ifdef CONFIG_USB
-static void pcm037_usb_init(void)
-{
-	u32 tmp;
-
-	/* enable clock */
-	tmp = readl(0x53f80000);
-	tmp |= (1 << 9);
-	writel(tmp, 0x53f80000);
-
-	/* Host 1 */
-	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x600);
-	tmp &= ~((3 << 21) | 1);
-	tmp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 11) | (1 << 20);
-	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x600);
-
-	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x184);
-	tmp &= ~(3 << 30);
-	tmp |= 2 << 30;
-	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x184);
-
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA0__USBOTG_DATA0);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA1__USBOTG_DATA1);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA2__USBOTG_DATA2);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA3__USBOTG_DATA3);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA4__USBOTG_DATA4);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA5__USBOTG_DATA5);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA6__USBOTG_DATA6);
-	imx_iomux_mode(MX31_PIN_USBOTG_DATA7__USBOTG_DATA7);
-	imx_iomux_mode(MX31_PIN_USBOTG_CLK__USBOTG_CLK);
-	imx_iomux_mode(MX31_PIN_USBOTG_DIR__USBOTG_DIR);
-	imx_iomux_mode(MX31_PIN_USBOTG_NXT__USBOTG_NXT);
-	imx_iomux_mode(MX31_PIN_USBOTG_STP__USBOTG_STP);
-
-	mdelay(50);
-	ulpi_setup((void *)(MX31_USB_OTG_BASE_ADDR + 0x170), 1);
-
-	/* Host 2 */
-	tmp = readl(MX31_IOMUXC_GPR);
-	tmp |= 1 << 11;	/* IOMUX GPR: enable USBH2 signals */
-	writel(tmp, MX31_IOMUXC_GPR);
-
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_CLK, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DIR, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_NXT, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_STP, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DATA0, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_USBH2_DATA1, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_STXD3, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SRXD3, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SCK3, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SFS3, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_STXD6, IOMUX_CONFIG_FUNC));
-	imx_iomux_mode(IOMUX_MODE(MX31_PIN_SRXD6, IOMUX_CONFIG_FUNC));
-
-#define H2_PAD_CFG (PAD_CTL_DRV_MAX | PAD_CTL_SRE_FAST | PAD_CTL_HYS_CMOS | PAD_CTL_ODE_CMOS | PAD_CTL_100K_PU)
-	imx_iomux_set_pad(MX31_PIN_USBH2_CLK, H2_PAD_CFG);
-	imx_iomux_set_pad(MX31_PIN_USBH2_DIR, H2_PAD_CFG);
-	imx_iomux_set_pad(MX31_PIN_USBH2_NXT, H2_PAD_CFG);
-	imx_iomux_set_pad(MX31_PIN_USBH2_STP, H2_PAD_CFG);
-	imx_iomux_set_pad(MX31_PIN_USBH2_DATA0, H2_PAD_CFG); /* USBH2_DATA0 */
-	imx_iomux_set_pad(MX31_PIN_USBH2_DATA1, H2_PAD_CFG); /* USBH2_DATA1 */
-	imx_iomux_set_pad(MX31_PIN_SRXD6, H2_PAD_CFG);	/* USBH2_DATA2 */
-	imx_iomux_set_pad(MX31_PIN_STXD6, H2_PAD_CFG);	/* USBH2_DATA3 */
-	imx_iomux_set_pad(MX31_PIN_SFS3, H2_PAD_CFG);	/* USBH2_DATA4 */
-	imx_iomux_set_pad(MX31_PIN_SCK3, H2_PAD_CFG);	/* USBH2_DATA5 */
-	imx_iomux_set_pad(MX31_PIN_SRXD3, H2_PAD_CFG);	/* USBH2_DATA6 */
-	imx_iomux_set_pad(MX31_PIN_STXD3, H2_PAD_CFG);	/* USBH2_DATA7 */
-
-	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x600);
-	tmp &= ~((3 << 21) | 1);
-	tmp |= (1 << 5) | (1 << 16) | (1 << 19) | (1 << 20);
-	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x600);
-
-	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x584);
-	tmp &= ~(3 << 30);
-	tmp |= 2 << 30;
-	writel(tmp, MX31_USB_OTG_BASE_ADDR + 0x584);
-
-	mdelay(50);
-	ulpi_setup((void *)(MX31_USB_OTG_BASE_ADDR + 0x570), 1);
-
-	/* Set to Host mode */
-	tmp = readl(MX31_USB_OTG_BASE_ADDR + 0x1a8);
-	writel(tmp | 0x3, MX31_USB_OTG_BASE_ADDR + 0x1a8);
-
-}
-#endif
-
-static int pcm037_mmu_init(void)
-{
-	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-
-	return 0;
-}
-postmmu_initcall(pcm037_mmu_init);
-
-static struct smc911x_plat smsc9217_pdata = {
-	.flags = SMC911X_FORCE_INTERNAL_PHY,
-};
-
-static int pcm037_devices_init(void)
-{
-	/* CS0: Nor Flash */
-	imx31_setup_weimcs(0, 0x0000cf03, 0x10000d03, 0x00720900);
-	/* CS1: Network Controller */
-	imx31_setup_weimcs(1, 0x0000df06, 0x444a4541, 0x44443302);
-	/* CS4: SRAM */
-	imx31_setup_weimcs(4, 0x0000d843, 0x22252521, 0x22220a00);
-	/* CS5: SJA1000 */
-	imx31_setup_weimcs(4, 0x0000DCF6, 0x444A0301, 0x44443302);
-
-	/*
-	 * Up to 32MiB NOR type flash, connected to
-	 * CS line 0, data width is 16 bit
-	 */
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX31_CS0_BASE_ADDR, 32 * 1024 * 1024, 0);
-
-	imx31_add_mmc0(NULL);
-
-	/*
-	 * Create partitions that should be
-	 * not touched by any regular user
-	 */
-	devfs_add_partition("nor0", 0x00000, 0x40000, DEVFS_PARTITION_FIXED, "self0");	/* ourself */
-	devfs_add_partition("nor0", 0x40000, 0x20000, DEVFS_PARTITION_FIXED, "env0");	/* environment */
-
-	protect_file("/dev/env0", 1);
-
-	/*
-	 * up to 2MiB static RAM type memory, connected
-	 * to CS4, data width is 16 bit
-	 */
-	add_mem_device("sram0", MX31_CS4_BASE_ADDR, MX31_CS4_SIZE, /* area size */
-				   IORESOURCE_MEM_WRITEABLE);
-	imx31_add_nand(&nand_info);
-
-	/*
-	 * SMSC 9217 network controller
-	 * connected to CS line 1 and interrupt line
-	 * GPIO3, data width is 16 bit
-	 */
-	add_generic_device("smc911x", DEVICE_ID_DYNAMIC, NULL,	MX31_CS1_BASE_ADDR,
-			MX31_CS1_SIZE, IORESOURCE_MEM, &smsc9217_pdata);
-
-#ifdef CONFIG_USB
-	pcm037_usb_init();
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX31_USB_OTG_BASE_ADDR, NULL);
-	add_generic_usb_ehci_device(DEVICE_ID_DYNAMIC, MX31_USB_HS2_BASE_ADDR, NULL);
-#endif
-	armlinux_set_architecture(MACH_TYPE_PCM037);
-
-	return 0;
-}
-
-device_initcall(pcm037_devices_init);
-
-static unsigned int pcm037_iomux[] = {
-	/* UART1 */
-	MX31_PIN_RXD1__RXD1,
-	MX31_PIN_TXD1__TXD1,
-	MX31_PIN_CTS1__CTS1,
-	MX31_PIN_RTS1__RTS1,
-	/* I2C */
-	MX31_PIN_CSPI2_MOSI__SCL,
-	MX31_PIN_CSPI2_MISO__SDA,
-	MX31_PIN_CSPI2_SS2__I2C3_SDA,
-	MX31_PIN_CSPI2_SCLK__I2C3_SCL,
-	/* SDHC1 */
-	MX31_PIN_SD1_DATA3__SD1_DATA3,
-	MX31_PIN_SD1_DATA2__SD1_DATA2,
-	MX31_PIN_SD1_DATA1__SD1_DATA1,
-	MX31_PIN_SD1_DATA0__SD1_DATA0,
-	MX31_PIN_SD1_CLK__SD1_CLK,
-	MX31_PIN_SD1_CMD__SD1_CMD,
-	IOMUX_MODE(MX31_PIN_SCK6, IOMUX_CONFIG_GPIO), /* card detect */
-	IOMUX_MODE(MX31_PIN_SFS6, IOMUX_CONFIG_GPIO), /* write protect */
-	/* SPI1 */
-	MX31_PIN_CSPI1_MOSI__MOSI,
-	MX31_PIN_CSPI1_MISO__MISO,
-	MX31_PIN_CSPI1_SCLK__SCLK,
-	MX31_PIN_CSPI1_SPI_RDY__SPI_RDY,
-	MX31_PIN_CSPI1_SS0__SS0,
-	MX31_PIN_CSPI1_SS1__SS1,
-	MX31_PIN_CSPI1_SS2__SS2,
-	/* UART2 */
-	MX31_PIN_TXD2__TXD2,
-	MX31_PIN_RXD2__RXD2,
-	MX31_PIN_CTS2__CTS2,
-	MX31_PIN_RTS2__RTS2,
-	/* UART3 */
-	MX31_PIN_CSPI3_MOSI__RXD3,
-	MX31_PIN_CSPI3_MISO__TXD3,
-	MX31_PIN_CSPI3_SCLK__RTS3,
-	MX31_PIN_CSPI3_SPI_RDY__CTS3,
-};
-
-static int imx31_console_init(void)
-{
-	imx_iomux_setup_multiple_pins(pcm037_iomux, ARRAY_SIZE(pcm037_iomux));
-
-	barebox_set_model("Phytec phyCORE-i.MX31");
-	barebox_set_hostname("phycore-imx31");
-
-	imx31_add_uart0();
-	return 0;
-}
-
-console_initcall(imx31_console_init);
diff --git a/arch/arm/boards/phytec-phycore-imx35/Makefile b/arch/arm/boards/phytec-phycore-imx35/Makefile
deleted file mode 100644
index 5029714421..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/Makefile
+++ /dev/null
@@ -1,5 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Juergen Beisert <jbe@pengutronix.de>
-
-lwl-y += lowlevel.o
-obj-y += pcm043.o
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi b/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
deleted file mode 100644
index d555a538d1..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/env/boot/nand-ubi
+++ /dev/null
@@ -1,5 +0,0 @@
-#!/bin/sh
-
-global.bootm.image="/dev/nand0.kernel.bb"
-#global.bootm.oftree="/env/oftree"
-global.linux.bootargs.dyn.root="root=ubi0:root ubi.mtd=nand0.root rootfstype=ubifs"
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
deleted file mode 100644
index c7185db7f7..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nand
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="512k(nand0.barebox),256k(nand0.bareboxenv),4M(nand0.kernel),-(nand0.root)"
-kernelname="mxc_nand"
-
-mtdparts-add -b -d nand0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor b/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
deleted file mode 100644
index 09c3ba9842..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/env/init/mtdparts-nor
+++ /dev/null
@@ -1,6 +0,0 @@
-#!/bin/sh
-
-mtdparts="512k(nor0.barebox),128k(nor0.bareboxenv),4M(nor0.kernel),-(nor0.root)"
-kernelname="physmap-flash.0"
-
-mtdparts-add -d nor0 -k ${kernelname} -p ${mtdparts}
diff --git a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg b/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
deleted file mode 100644
index 3d690e9732..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/flash-header.imxcfg
+++ /dev/null
@@ -1,39 +0,0 @@
-# SPDX-License-Identifier: GPL-2.0-only
-
-soc imx35
-ivtofs 0x400
-loadaddr 0x80000000
-wm 32 0x53f80004 0x00821000
-wm 32 0x53f80004 0x00821000
-
-wm 32 0x43fac794 0x00000800
-wm 32 0x43fac798 0x00000800
-wm 32 0x43fac79c 0x00000800
-wm 32 0x43fac7a0 0x00000800
-wm 32 0x43fac7a4 0x00000800
-
-wm 32 0xb8001010 0x00000304
-wm 32 0xb8001004 0x0025541f
-wm 32 0xb8001000 0x92220000
-wm 32 0x80000400 0x12345678
-
-wm 32 0xb8001000 0xb8001000
-wm 8  0x84000000 0xda
-wm 8  0x86000000 0xda
-wm 8  0x82000400 0xda
-wm 8  0x80000333 0xda
-
-wm 32 0xb8001000 0x92220000
-wm 32 0x80000400 0x12345678
-
-wm 32 0xb8001000 0xa2220000
-wm 32 0x80000000 0x12344321
-wm 32 0x80000000 0x12344321
-wm 32 0xb8001000 0xb2220000
-wm 8  0x80000233 0xda
-wm 8  0x82000780 0xda
-wm 8  0x82000400 0xda
-wm 32 0xb8001000 0x82220080
-wm 32 0xb8001000 0x82228080
-wm 32 0xb8001008 0x00002000
-
diff --git a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c b/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
deleted file mode 100644
index 73097eea10..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/lowlevel.c
+++ /dev/null
@@ -1,179 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-
-#include <common.h>
-#include <init.h>
-#include <mach/imx35-regs.h>
-#include <mach/imx-pll.h>
-#include <mach/esdctl.h>
-#include <asm/cache-l2x0.h>
-#include <io.h>
-#include <mach/imx-nand.h>
-#include <asm/barebox-arm.h>
-#include <asm/barebox-arm-head.h>
-#include <asm/sections.h>
-#include <asm-generic/memory_layout.h>
-#include <asm/system.h>
-
-#define IMX35_CHIP_REVISION_2_1		0x11
-
-#define CCM_PDR0_399	0x00011000
-#define CCM_PDR0_532	0x00001000
-
-void __bare_init __naked barebox_arm_reset_vector(uint32_t r0, uint32_t r1, uint32_t r2)
-{
-	uint32_t r, s;
-	unsigned long ccm_base = MX35_CCM_BASE_ADDR;
-	unsigned long iomuxc_base = MX35_IOMUXC_BASE_ADDR;
-	unsigned long esdctl_base = MX35_ESDCTL_BASE_ADDR;
-
-	arm_cpu_lowlevel_init();
-
-	arm_setup_stack(MX35_IRAM_BASE_ADDR + MX35_IRAM_SIZE);
-
-	r = get_cr();
-	r |= CR_Z; /* Flow prediction (Z) */
-	r |= CR_U; /* unaligned accesses  */
-	r |= CR_FI; /* Low Int Latency     */
-
-	__asm__ __volatile__("mrc p15, 0, %0, c1, c0, 1":"=r"(s));
-	s |= 0x7;
-	__asm__ __volatile__("mcr p15, 0, %0, c1, c0, 1" : : "r"(s));
-
-	set_cr(r);
-
-	r = 0;
-	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
-
-	/*
-	 * Branch predicition is now enabled.  Flush the BTAC to ensure a valid
-	 * starting point.  Don't flush BTAC while it is disabled to avoid
-	 * ARM1136 erratum 408023.
-	 */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c5, 6" : : "r"(r));
-
-	/* invalidate I cache and D cache */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c7, 0" : : "r"(r));
-
-	/* invalidate TLBs */
-	__asm__ __volatile__("mcr p15, 0, %0, c8, c7, 0" : : "r"(r));
-
-	/* Drain the write buffer */
-	__asm__ __volatile__("mcr p15, 0, %0, c7, c10, 4" : : "r"(r));
-
-	/* Also setup the Peripheral Port Remap register inside the core */
-	r = 0x40000015; /* start from AIPS 2GB region */
-	__asm__ __volatile__("mcr p15, 0, %0, c15, c2, 4" : : "r"(r));
-
-	/*
-	 * End of ARM1136 init
-	 */
-
-	writel(0x003F4208, ccm_base + MX35_CCM_CCMR);
-
-	/* Set MPLL , arm clock and ahb clock*/
-	writel(MPCTL_PARAM_532, ccm_base + MX35_CCM_MPCTL);
-
-	writel(PPCTL_PARAM_300, ccm_base + MX35_CCM_PPCTL);
-
-	/* Check silicon revision and use 532MHz if >=2.1 */
-	r = readl(MX35_IIM_BASE_ADDR + 0x24);
-	if (r >= IMX35_CHIP_REVISION_2_1)
-		writel(CCM_PDR0_532, ccm_base + MX35_CCM_PDR0);
-	else
-		writel(CCM_PDR0_399, ccm_base + MX35_CCM_PDR0);
-
-	r = readl(ccm_base + MX35_CCM_CGR0);
-	r |= 0x3 << MX35_CCM_CGR0_EPIT1_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR0);
-
-	r = readl(ccm_base + MX35_CCM_CGR1);
-	r |= 0x3 << MX35_CCM_CGR1_FEC_SHIFT;
-	r |= 0x3 << MX35_CCM_CGR1_I2C1_SHIFT;
-	writel(r, ccm_base + MX35_CCM_CGR1);
-
-	r = readl(MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
-	r |= 0x1000;
-	writel(r, MX35_L2CC_BASE_ADDR + L2X0_AUX_CTRL);
-
-	/* Skip SDRAM initialization if we run from RAM */
-	r = get_pc();
-	if (r > 0x80000000 && r < 0x90000000)
-		goto out;
-
-	/* Set DDR Type to SDRAM, drive strength workaround	*
-	 * 0x00000000	MDDR					*
-	 * 0x00000800	3,3V SDRAM				*/
-
-	r = 0x00000800;
-	writel(r, iomuxc_base + 0x794);
-	writel(r, iomuxc_base + 0x798);
-	writel(r, iomuxc_base + 0x79c);
-	writel(r, iomuxc_base + 0x7a0);
-	writel(r, iomuxc_base + 0x7a4);
-
-	/* MDDR init, enable mDDR*/
-	writel(0x00000304, esdctl_base + IMX_ESDMISC); /* was 0x00000004 */
-
-	/* set timing paramters */
-	writel(0x0025541F, esdctl_base + IMX_ESDCFG0);
-	/* select Precharge-All mode */
-	writel(0x92220000, esdctl_base + IMX_ESDCTL0);
-	/* Precharge-All */
-	writel(0x12345678, MX35_CSD0_BASE_ADDR + 0x400);
-
-	/* select Load-Mode-Register mode */
-	writel(0xB8001000, esdctl_base + IMX_ESDCTL0);
-	/* Load reg EMR2 */
-	writeb(0xda, 0x84000000);
-	/* Load reg EMR3 */
-	writeb(0xda, 0x86000000);
-	/* Load reg EMR1 -- enable DLL */
-	writeb(0xda, 0x82000400);
-	/* Load reg MR -- reset DLL */
-	writeb(0xda, 0x80000333);
-
-	/* select Precharge-All mode */
-	writel(0x92220000, esdctl_base + IMX_ESDCTL0);
-	/* Precharge-All */
-	writel(0x12345678, MX35_CSD0_BASE_ADDR + 0x400);
-
-	/* select Manual-Refresh mode */
-	writel(0xA2220000, esdctl_base + IMX_ESDCTL0);
-	/* Manual-Refresh 2 times */
-	writel(0x87654321, MX35_CSD0_BASE_ADDR);
-	writel(0x87654321, MX35_CSD0_BASE_ADDR);
-
-	/* select Load-Mode-Register mode */
-	writel(0xB2220000, esdctl_base + IMX_ESDCTL0);
-	/* Load reg MR -- CL3, BL8, end DLL reset */
-	writeb(0xda, 0x80000233);
-	/* Load reg EMR1 -- OCD default */
-	writeb(0xda, 0x82000780);
-	/* Load reg EMR1 -- OCD exit */
-	writeb(0xda, 0x82000400);
-
-	/* select normal-operation mode
-	 * DSIZ32-bit, BL8, COL10-bit, ROW13-bit
-	 * disable PWT & PRCT
-	 * disable Auto-Refresh */
-	writel(0x82220080, esdctl_base + IMX_ESDCTL0);
-
-	/* enable Auto-Refresh */
-	writel(0x82228080, esdctl_base + IMX_ESDCTL0);
-	/* enable Auto-Refresh */
-	writel(0x00002000, esdctl_base + IMX_ESDCTL1);
-
-	if (IS_ENABLED(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND)) {
-		/* Speed up NAND controller by adjusting the NFC divider */
-		r = readl(MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-		r &= ~(0xf << 28);
-		r |= 0x1 << 28;
-		writel(r, MX35_CCM_BASE_ADDR + MX35_CCM_PDR4);
-
-		imx35_barebox_boot_nand_external();
-	}
-
-out:
-	imx35_barebox_entry(NULL);
-}
diff --git a/arch/arm/boards/phytec-phycore-imx35/pcm043.c b/arch/arm/boards/phytec-phycore-imx35/pcm043.c
deleted file mode 100644
index 76615e6c44..0000000000
--- a/arch/arm/boards/phytec-phycore-imx35/pcm043.c
+++ /dev/null
@@ -1,313 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-or-later
-// SPDX-FileCopyrightText: 2007 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
-// SPDX-FileCopyrightText: 2009 Juergen Beisert <kernel@pengutronix.de>, Pengutronix
-
-/* Board support for Phytec's, i.MX35 based CPU card, called: PCM043 */
-
-#include <common.h>
-#include <command.h>
-#include <init.h>
-#include <driver.h>
-#include <environment.h>
-#include <fs.h>
-#include <gpio.h>
-#include <linux/sizes.h>
-#include <mach/imx35-regs.h>
-#include <asm/armlinux.h>
-#include <io.h>
-#include <nand.h>
-#include <generated/mach-types.h>
-#include <mach/imx-nand.h>
-#include <fb.h>
-#include <led.h>
-#include <bootsource.h>
-#include <asm/mmu.h>
-#include <mach/weim.h>
-#include <mach/imx-ipu-fb.h>
-#include <mach/imx-pll.h>
-#include <mach/iomux-mx35.h>
-#include <mach/devices-imx35.h>
-#include <mach/generic.h>
-#include <mach/bbu.h>
-
-static struct fec_platform_data fec_info = {
-	.xcv_type = PHY_INTERFACE_MODE_MII,
-};
-
-struct imx_nand_platform_data nand_info = {
-	.width	= 1,
-	.hw_ecc	= 1,
-	.flash_bbt = 1,
-};
-
-static struct fb_videomode pcm043_fb_mode[] = {
-	{
-		/* 240x320 @ 60 Hz */
-		.name		= "TX090",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 38255,
-		.left_margin	= 144,
-		.right_margin	= 0,
-		.upper_margin	= 7,
-		.lower_margin	= 40,
-		.hsync_len	= 96,
-		.vsync_len	= 1,
-		.sync		= FB_SYNC_VERT_HIGH_ACT | FB_SYNC_OE_ACT_HIGH,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	}, {
-		/* 240x320 @ 60 Hz */
-		.name		= "Sharp-LQ035Q7",
-		.refresh	= 60,
-		.xres		= 240,
-		.yres		= 320,
-		.pixclock	= 185925,
-		.left_margin	= 9,
-		.right_margin	= 16,
-		.upper_margin	= 7,
-		.lower_margin	= 9,
-		.hsync_len	= 1,
-		.vsync_len	= 1,
-		.sync		= FB_SYNC_HOR_HIGH_ACT | FB_SYNC_SHARP_MODE | \
-				 FB_SYNC_CLK_INVERT | FB_SYNC_CLK_IDLE_EN,
-		.vmode		= FB_VMODE_NONINTERLACED,
-	}
-};
-
-static struct imx_ipu_fb_platform_data ipu_fb_data = {
-	.mode			= pcm043_fb_mode,
-	.num_modes		= ARRAY_SIZE(pcm043_fb_mode),
-	.framebuffer_ovl	= (void *) (MX35_CSD0_BASE_ADDR + SZ_128M - SZ_1M),
-	.bpp			= 16,
-};
-
-static int pcm043_mmu_init(void)
-{
-	l2x0_init((void __iomem *)0x30000000, 0x00030024, 0x00000000);
-
-	return 0;
-}
-postmmu_initcall(pcm043_mmu_init);
-
-struct gpio_led led0 = {
-	.gpio = 1 * 32 + 6,
-};
-
-static int pcm043_devices_init(void)
-{
-	uint32_t reg;
-	char *envstr;
-	unsigned long bbu_nand_flags = 0;
-
-	/* CS0: Nor Flash */
-	imx35_setup_weimcs(5, 0x22C0CF00, 0x75000D01, 0x00000900);
-
-	led_gpio_register(&led0);
-
-	reg = readl(MX35_CCM_BASE_ADDR + MX35_CCM_RCSR);
-	/* some fuses provide us vital information about connected hardware */
-	if (reg & 0x20000000)
-		nand_info.width = 2;    /* 16 bit */
-	else
-		nand_info.width = 1;    /* 8 bit */
-
-	imx35_add_fec(&fec_info);
-	/*
-	 * This platform supports NOR and NAND
-	 */
-	imx35_add_nand(&nand_info);
-	/*
-	 * Up to 32MiB NOR type flash, connected to
-	 * CS line 0, data width is 16 bit
-	 */
-	add_cfi_flash_device(DEVICE_ID_DYNAMIC, MX35_CS0_BASE_ADDR, 32 * 1024 * 1024, 0);
-
-	switch (bootsource_get()) {
-	case BOOTSOURCE_NAND:
-		devfs_add_partition("nand0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self_raw");
-		dev_add_bb_dev("self_raw", "self0");
-		devfs_add_partition("nand0", SZ_512K, SZ_256K, DEVFS_PARTITION_FIXED, "env_raw");
-		dev_add_bb_dev("env_raw", "env0");
-		envstr = "NAND";
-		bbu_nand_flags = BBU_HANDLER_FLAG_DEFAULT;
-		break;
-	case BOOTSOURCE_NOR:
-	default:
-		devfs_add_partition("nor0", 0x00000, SZ_512K, DEVFS_PARTITION_FIXED, "self0"); /* ourself */
-		devfs_add_partition("nor0", SZ_512K, SZ_128K, DEVFS_PARTITION_FIXED, "env0");  /* environment */
-		protect_file("/dev/env0", 1);
-		envstr = "NOR";
-		break;
-	}
-
-	pr_info("using environment from %s flash\n", envstr);
-
-	imx35_add_fb(&ipu_fb_data);
-
-	armlinux_set_architecture(MACH_TYPE_PCM043);
-
-	imx_bbu_external_nand_register_handler("nand", "/dev/nand0.barebox",
-			bbu_nand_flags);
-
-	return 0;
-}
-
-device_initcall(pcm043_devices_init);
-
-static iomux_v3_cfg_t pcm043_pads[] = {
-	MX35_PAD_FEC_TX_CLK__FEC_TX_CLK,
-	MX35_PAD_FEC_RX_CLK__FEC_RX_CLK,
-	MX35_PAD_FEC_RX_DV__FEC_RX_DV,
-	MX35_PAD_FEC_COL__FEC_COL,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_TX_EN__FEC_TX_EN,
-	MX35_PAD_FEC_MDC__FEC_MDC,
-	MX35_PAD_FEC_MDIO__FEC_MDIO,
-	MX35_PAD_FEC_TX_ERR__FEC_TX_ERR,
-	MX35_PAD_FEC_RX_ERR__FEC_RX_ERR,
-	MX35_PAD_FEC_CRS__FEC_CRS,
-	MX35_PAD_FEC_RDATA0__FEC_RDATA_0,
-	MX35_PAD_FEC_TDATA0__FEC_TDATA_0,
-	MX35_PAD_FEC_RDATA1__FEC_RDATA_1,
-	MX35_PAD_FEC_TDATA1__FEC_TDATA_1,
-	MX35_PAD_FEC_RDATA2__FEC_RDATA_2,
-	MX35_PAD_FEC_TDATA2__FEC_TDATA_2,
-	MX35_PAD_FEC_RDATA3__FEC_RDATA_3,
-	MX35_PAD_FEC_TDATA3__FEC_TDATA_3,
-	MX35_PAD_RXD1__UART1_RXD_MUX,
-	MX35_PAD_TXD1__UART1_TXD_MUX,
-	MX35_PAD_RTS1__UART1_RTS,
-	MX35_PAD_CTS1__UART1_CTS,
-	MX35_PAD_I2C1_CLK__I2C1_SCL,
-	MX35_PAD_I2C1_DAT__I2C1_SDA,
-	MX35_PAD_ATA_CS0__GPIO2_6, /* LED */
-};
-
-static int imx35_console_init(void)
-{
-	mxc_iomux_v3_setup_multiple_pads(pcm043_pads, ARRAY_SIZE(pcm043_pads));
-
-	barebox_set_model("Phytec phyCORE-i.MX35");
-	barebox_set_hostname("phycore-imx35");
-
-	imx35_add_uart0();
-
-	return 0;
-}
-
-console_initcall(imx35_console_init);
-
-static int pcm043_core_setup(void)
-{
-	u32 tmp;
-
-	/* AIPS setup - Only setup MPROTx registers. The PACR default values are good.*/
-	/*
-	 * Set all MPROTx to be non-bufferable, trusted for R/W,
-	 * not forced to user-mode.
-	 */
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS1_BASE_ADDR + 0x4);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR);
-	writel(0x77777777, MX35_AIPS2_BASE_ADDR + 0x4);
-
-	/*
-	 * Clear the on and off peripheral modules Supervisor Protect bit
-	 * for SDMA to access them. Did not change the AIPS control registers
-	 * (offset 0x20) access type
-	 */
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS1_BASE_ADDR + 0x4C);
-	tmp = readl(MX35_AIPS1_BASE_ADDR + 0x50);
-	tmp &= 0x00FFFFFF;
-	writel(tmp, MX35_AIPS1_BASE_ADDR + 0x50);
-
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x40);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x44);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x48);
-	writel(0x0, MX35_AIPS2_BASE_ADDR + 0x4C);
-	tmp = readl(MX35_AIPS2_BASE_ADDR + 0x50);
-	tmp &= 0x00FFFFFF;
-	writel(tmp, MX35_AIPS2_BASE_ADDR + 0x50);
-
-	/* MAX (Multi-Layer AHB Crossbar Switch) setup */
-
-	/* MPR - priority is M4 > M2 > M3 > M5 > M0 > M1 */
-#define MAX_PARAM1 0x00302154
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x0);   /* for S0 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x100); /* for S1 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x200); /* for S2 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x300); /* for S3 */
-	writel(MAX_PARAM1, MX35_MAX_BASE_ADDR + 0x400); /* for S4 */
-
-	/* SGPCR - always park on last master */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x10);	/* for S0 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x110);	/* for S1 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x210);	/* for S2 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x310);	/* for S3 */
-	writel(0x10, MX35_MAX_BASE_ADDR + 0x410);	/* for S4 */
-
-	/* MGPCR - restore default values */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x800);	/* for M0 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0x900);	/* for M1 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xa00);	/* for M2 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xb00);	/* for M3 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xc00);	/* for M4 */
-	writel(0x0, MX35_MAX_BASE_ADDR + 0xd00);	/* for M5 */
-
-	/*
-	 * M3IF Control Register (M3IFCTL)
-	 * MRRP[0] = L2CC0 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[1] = MAX1 not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[2] = L2CC1 not on priority list (0 << 0)	= 0x00000000
-	 * MRRP[3] = USB  not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[4] = SDMA not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[5] = GPU not on priority list (0 << 0)		= 0x00000000
-	 * MRRP[6] = IPU1 on priority list (1 << 6)		= 0x00000040
-	 * MRRP[7] = IPU2 not on priority list (0 << 0)		= 0x00000000
-	 *                                                       ------------
-	 *                                                        0x00000040
-	 */
-	writel(0x40, MX35_M3IF_BASE_ADDR);
-
-	return 0;
-}
-
-core_initcall(pcm043_core_setup);
-
-static int do_cpufreq(int argc, char *argv[])
-{
-	unsigned long freq;
-
-	if (argc != 2)
-		return COMMAND_ERROR_USAGE;
-
-	freq = simple_strtoul(argv[1], NULL, 0);
-
-	switch (freq) {
-	case 399:
-		writel(MPCTL_PARAM_399, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-		break;
-	case 532:
-		writel(MPCTL_PARAM_532, MX35_CCM_BASE_ADDR + MX35_CCM_MPCTL);
-		break;
-	default:
-		return COMMAND_ERROR_USAGE;
-	}
-
-	printf("Switched CPU frequency to %luMHz\n", freq);
-
-	return 0;
-}
-
-BAREBOX_CMD_START(cpufreq)
-	.cmd            = do_cpufreq,
-	BAREBOX_CMD_DESC("adjust CPU frequency")
-	BAREBOX_CMD_OPTS("399|532")
-	BAREBOX_CMD_GROUP(CMD_GRP_HWMANIP)
-BAREBOX_CMD_END
-
diff --git a/arch/arm/configs/cupid_defconfig b/arch/arm/configs/cupid_defconfig
deleted file mode 100644
index 4e6dd96a97..0000000000
--- a/arch/arm/configs/cupid_defconfig
+++ /dev/null
@@ -1,70 +0,0 @@
-CONFIG_TEXT_BASE=0x87F00000
-CONFIG_ARCH_IMX=y
-CONFIG_CACHE_L2X0=y
-CONFIG_MACH_GUF_CUPID=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-CONFIG_NAND_IMX=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX_IPU=y
-CONFIG_MCI=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/eukrea_cpuimx25_defconfig b/arch/arm/configs/eukrea_cpuimx25_defconfig
deleted file mode 100644
index b296122bc2..0000000000
--- a/arch/arm/configs/eukrea_cpuimx25_defconfig
+++ /dev/null
@@ -1,87 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MACH_EUKREA_CPUIMX25=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x800000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_MTD_UBI=y
-CONFIG_MTD_UBI_FASTMAP=y
-CONFIG_USB_HOST=y
-CONFIG_USB_IMX_CHIPIDEA=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX=y
-CONFIG_MCI=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
-CONFIG_BMP=y
-CONFIG_PNG=y
diff --git a/arch/arm/configs/eukrea_cpuimx27_defconfig b/arch/arm/configs/eukrea_cpuimx27_defconfig
deleted file mode 100644
index cb4a709d42..0000000000
--- a/arch/arm/configs/eukrea_cpuimx27_defconfig
+++ /dev/null
@@ -1,53 +0,0 @@
-CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_ARCH_IMX=y
-CONFIG_MACH_EUKREA_CPUIMX27=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x800000
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/eukrea_cpuimx27/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_NET=y
-CONFIG_DRIVER_SERIAL_NS16550=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_AMD is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_1 is not set
-# CONFIG_DRIVER_CFI_BANK_WIDTH_4 is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX=y
-CONFIG_MFD_LP3972=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/eukrea_cpuimx35_defconfig b/arch/arm/configs/eukrea_cpuimx35_defconfig
deleted file mode 100644
index b3d5741c69..0000000000
--- a/arch/arm/configs/eukrea_cpuimx35_defconfig
+++ /dev/null
@@ -1,95 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MACH_EUKREA_CPUIMX35=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x800000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_CONSOLE_ACTIVATE_ALL=y
-CONFIG_DEFAULT_COMPRESSION_LZO=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_IMD=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_AUTOMOUNT=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_DHCP=y
-CONFIG_CMD_MIITOOL=y
-CONFIG_CMD_PING=y
-CONFIG_CMD_TFTP=y
-CONFIG_CMD_ECHO_E=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_SPLASH=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_MM=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_USBGADGET=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_SMSC_PHY=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_MTD=y
-CONFIG_MTD_RAW_DEVICE=y
-CONFIG_NAND=y
-CONFIG_NAND_ALLOW_ERASE_BAD=y
-CONFIG_NAND_IMX=y
-CONFIG_USB_HOST=y
-CONFIG_USB_IMX_CHIPIDEA=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_STORAGE=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_DFU=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX_IPU=y
-CONFIG_MCI=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/eukrea_cpuimx51_defconfig b/arch/arm/configs/eukrea_cpuimx51_defconfig
deleted file mode 100644
index 8d700b1e75..0000000000
--- a/arch/arm/configs/eukrea_cpuimx51_defconfig
+++ /dev/null
@@ -1,68 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
-CONFIG_MACH_EUKREA_CPUIMX51SD=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_EXPERIMENTAL=y
-CONFIG_MALLOC_TLSF=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADB=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_CMD_I2C=y
-CONFIG_CMD_LED=y
-CONFIG_CMD_LED_TRIGGER=y
-CONFIG_CMD_OFTREE=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_MTD=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_MCI=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_LED=y
-CONFIG_LED_GPIO=y
-CONFIG_LED_TRIGGERS=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale-mx25-3ds_defconfig b/arch/arm/configs/freescale-mx25-3ds_defconfig
deleted file mode 100644
index eca608be40..0000000000
--- a/arch/arm/configs/freescale-mx25-3ds_defconfig
+++ /dev/null
@@ -1,56 +0,0 @@
-CONFIG_TEXT_BASE=0x87F00000
-CONFIG_ARCH_IMX=y
-CONFIG_MACH_FREESCALE_MX25_3STACK=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x01000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-# CONFIG_ERRNO_MESSAGES is not set
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_FS_TFTP=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale-mx27-ads_defconfig b/arch/arm/configs/freescale-mx27-ads_defconfig
deleted file mode 100644
index ef112d6d5c..0000000000
--- a/arch/arm/configs/freescale-mx27-ads_defconfig
+++ /dev/null
@@ -1,35 +0,0 @@
-CONFIG_TEXT_BASE=0xa7f00000
-CONFIG_ARCH_IMX=y
-CONFIG_MACH_IMX27ADS=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/freescale-mx27-ads/env"
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_GO=y
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
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_NET=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-# CONFIG_DRIVER_CFI_INTEL is not set
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/freescale-mx35-3ds_defconfig b/arch/arm/configs/freescale-mx35-3ds_defconfig
deleted file mode 100644
index 5399849a54..0000000000
--- a/arch/arm/configs/freescale-mx35-3ds_defconfig
+++ /dev/null
@@ -1,62 +0,0 @@
-CONFIG_TEXT_BASE=0x87F00000
-CONFIG_ARCH_IMX=y
-CONFIG_MACH_FREESCALE_MX35_3STACK=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_DRIVER_NET_SMC911X=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX_IPU=y
-CONFIG_FS_TFTP=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/freescale-mx53-smd_defconfig b/arch/arm/configs/freescale-mx53-smd_defconfig
deleted file mode 100644
index b292b972a3..0000000000
--- a/arch/arm/configs/freescale-mx53-smd_defconfig
+++ /dev/null
@@ -1,61 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_MACH_FREESCALE_MX53_SMD=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/kindle3_defconfig b/arch/arm/configs/kindle3_defconfig
deleted file mode 100644
index 98691c3a81..0000000000
--- a/arch/arm/configs/kindle3_defconfig
+++ /dev/null
@@ -1,67 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x30000
-CONFIG_MACH_KINDLE3=y
-CONFIG_IMX_IIM=y
-CONFIG_AEABI=y
-CONFIG_ARM_BOARD_APPEND_ATAG=y
-CONFIG_ARM_BOARD_PREPEND_ATAG=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_PBL_IMAGE=y
-CONFIG_PBL_RELOCATABLE=y
-CONFIG_IMAGE_COMPRESSION_XZKERN=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x2000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_RELOCATABLE=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/kindle3/env/"
-CONFIG_RESET_SOURCE=y
-CONFIG_CMD_DMESG=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_MEMINFO=y
-CONFIG_CMD_MMC_EXTCSD=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_BOOTZ=y
-CONFIG_CMD_GO=y
-CONFIG_CMD_LOADY=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_DEFAULTENV=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_READF=y
-CONFIG_CMD_SLEEP=y
-CONFIG_CMD_EDIT=y
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_MEMTEST=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_I2C=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_USBGADGET=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_I2C=y
-CONFIG_I2C_IMX=y
-CONFIG_USB_GADGET=y
-CONFIG_USB_GADGET_SERIAL=y
-CONFIG_MCI=y
-CONFIG_MCI_STARTUP=y
-CONFIG_MCI_IMX_ESDHC=y
-CONFIG_MFD_MC13XXX=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ARCH_IMX_USBLOADER=y
diff --git a/arch/arm/configs/neso_defconfig b/arch/arm/configs/neso_defconfig
deleted file mode 100644
index 7d6ab2818e..0000000000
--- a/arch/arm/configs/neso_defconfig
+++ /dev/null
@@ -1,68 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
-CONFIG_MACH_NESO=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_GLOB=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_UNCOMPRESS=y
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
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_NET_RESOLV=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-CONFIG_DRIVER_SPI_IMX=y
-CONFIG_MTD=y
-CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-CONFIG_NAND_IMX=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_USB_ULPI=y
-CONFIG_VIDEO=y
-CONFIG_DRIVER_VIDEO_IMX=y
-CONFIG_IMXFB_DRIVER_VIDEO_IMX_OVERLAY=y
-CONFIG_FS_TFTP=y
diff --git a/arch/arm/configs/phytec-phycore-imx31_defconfig b/arch/arm/configs/phytec-phycore-imx31_defconfig
deleted file mode 100644
index a6bc28c4c7..0000000000
--- a/arch/arm/configs/phytec-phycore-imx31_defconfig
+++ /dev/null
@@ -1,82 +0,0 @@
-CONFIG_ARCH_IMX=y
-CONFIG_CACHE_L2X0=y
-CONFIG_MACH_PCM037=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x01000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx31/env"
-CONFIG_RESET_SOURCE=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
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
-CONFIG_CMD_FILETYPE=y
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
-CONFIG_CMD_CLK=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_SPI=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_NET_SMC911X=y
-CONFIG_NET_USB=y
-CONFIG_NET_USB_ASIX=y
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_USB_HOST=y
-CONFIG_USB_EHCI=y
-CONFIG_FS_EXT4=y
-CONFIG_FS_TFTP=y
-CONFIG_FS_NFS=y
-CONFIG_FS_FAT=y
-CONFIG_FS_FAT_WRITE=y
-CONFIG_FS_FAT_LFN=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/configs/phytec-phycore-imx35_defconfig b/arch/arm/configs/phytec-phycore-imx35_defconfig
deleted file mode 100644
index 2ed2cf9ef3..0000000000
--- a/arch/arm/configs/phytec-phycore-imx35_defconfig
+++ /dev/null
@@ -1,86 +0,0 @@
-CONFIG_TEXT_BASE=0x87E00000
-CONFIG_ARCH_IMX=y
-CONFIG_CACHE_L2X0=y
-CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND=y
-CONFIG_MACH_PCM043=y
-CONFIG_IMX_IIM=y
-CONFIG_IMX_IIM_FUSE_BLOW=y
-CONFIG_AEABI=y
-CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
-CONFIG_ARM_UNWIND=y
-CONFIG_MMU=y
-CONFIG_MALLOC_SIZE=0x1000000
-CONFIG_MALLOC_TLSF=y
-CONFIG_KALLSYMS=y
-CONFIG_HUSH_FANCY_PROMPT=y
-CONFIG_CMDLINE_EDITING=y
-CONFIG_AUTO_COMPLETE=y
-CONFIG_MENU=y
-CONFIG_BOOTM_SHOW_TYPE=y
-CONFIG_BOOTM_VERBOSE=y
-CONFIG_BOOTM_INITRD=y
-CONFIG_BOOTM_OFTREE=y
-CONFIG_BOOTM_OFTREE_UIMAGE=y
-CONFIG_PARTITION=y
-CONFIG_DEFAULT_ENVIRONMENT_GENERIC_NEW=y
-CONFIG_DEFAULT_ENVIRONMENT_PATH="arch/arm/boards/phytec-phycore-imx35/env"
-CONFIG_RESET_SOURCE=y
-CONFIG_LONGHELP=y
-CONFIG_CMD_IOMEM=y
-CONFIG_CMD_MEMINFO=y
-# CONFIG_CMD_BOOTU is not set
-CONFIG_CMD_GO=y
-CONFIG_CMD_RESET=y
-CONFIG_CMD_UIMAGE=y
-CONFIG_CMD_PARTITION=y
-CONFIG_CMD_EXPORT=y
-CONFIG_CMD_LOADENV=y
-CONFIG_CMD_PRINTENV=y
-CONFIG_CMD_MAGICVAR=y
-CONFIG_CMD_MAGICVAR_HELP=y
-CONFIG_CMD_SAVEENV=y
-CONFIG_CMD_FILETYPE=y
-CONFIG_CMD_LN=y
-CONFIG_CMD_MD5SUM=y
-CONFIG_CMD_UNCOMPRESS=y
-CONFIG_CMD_LET=y
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
-CONFIG_CMD_READLINE=y
-CONFIG_CMD_TIMEOUT=y
-CONFIG_CMD_CRC=y
-CONFIG_CMD_CRC_CMP=y
-CONFIG_CMD_CLK=y
-CONFIG_CMD_DETECT=y
-CONFIG_CMD_FLASH=y
-CONFIG_CMD_GPIO=y
-CONFIG_CMD_WD=y
-CONFIG_CMD_BAREBOX_UPDATE=y
-CONFIG_CMD_OF_NODE=y
-CONFIG_CMD_OF_PROPERTY=y
-CONFIG_CMD_OFTREE=y
-CONFIG_CMD_TIME=y
-CONFIG_NET=y
-CONFIG_NET_NFS=y
-CONFIG_NET_NETCONSOLE=y
-CONFIG_DRIVER_NET_FEC_IMX=y
-# CONFIG_SPI is not set
-CONFIG_MTD=y
-CONFIG_DRIVER_CFI=y
-CONFIG_CFI_BUFFER_WRITE=y
-CONFIG_NAND=y
-CONFIG_NAND_IMX=y
-CONFIG_WATCHDOG=y
-CONFIG_WATCHDOG_IMX=y
-CONFIG_FS_TFTP=y
-CONFIG_ZLIB=y
-CONFIG_LZO_DECOMPRESS=y
diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 2e49fdb9d5..ea4756c493 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -4,25 +4,12 @@ if ARCH_IMX
 
 config ARCH_TEXT_BASE
 	hex
-	default 0x83f00000 if MACH_EUKREA_CPUIMX25
-	default 0xa0000000 if MACH_EUKREA_CPUIMX27
-	default 0x87f00000 if MACH_EUKREA_CPUIMX35
-	default 0x97f00000 if MACH_EUKREA_CPUIMX51SD
-	default 0xc0000000 if MACH_IMX21ADS
-	default 0xa0000000 if MACH_IMX27ADS
-	default 0x83f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-	default 0x87f00000 if MACH_FREESCALE_MX25_3STACK && FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-	default 0x87f00000 if MACH_FREESCALE_MX35_3STACK
 	default 0xa7f00000 if MACH_PCA100
 	default 0xa0000000 if MACH_PCM038
-	default 0x87f00000 if MACH_PCM037
-	default 0x87f00000 if MACH_PCM043
-	default 0xa7e00000 if MACH_NESO
 	default 0x97f00000 if MACH_FREESCALE_MX51_PDK
 	default 0x7ff00000 if MACH_FREESCALE_MX53_LOCO
 	default 0x7ff00000 if MACH_FREESCALE_MX53_SMD
 	default 0x7ff00000 if MACH_FREESCALE_MX53_VMX53
-	default 0x87f00000 if MACH_GUF_CUPID
 	default 0x93d00000 if MACH_TX25
 	default 0x7ff00000 if MACH_TQMA53
 	default 0x4fc00000 if MACH_SABRELITE
@@ -31,7 +18,6 @@ config ARCH_TEXT_BASE
 	default 0x17800000 if MACH_SABRESD
 	default 0x4fc00000 if MACH_REALQ7
 	default 0x4fc00000 if MACH_GK802
-	default 0x87f00000 if MACH_KINDLE3
 	default 0x2fc00000 if MACH_TQMA6X
 	default 0x4fc00000 if MACH_DFI_FS700_M60
 	default 0x4fc00000 if MACH_UDOO
@@ -216,13 +202,6 @@ config ARCH_VF610
 	select IMX_OCOTP	# Needed for clock adjustement
 	select CLOCKSOURCE_ARM_GLOBAL_TIMER
 
-config IMX_MULTI_BOARDS
-	bool "Allow multiple boards to be selected"
-	select HAVE_PBL_MULTI_IMAGES
-	select RELOCATABLE
-
-if IMX_MULTI_BOARDS
-
 config MACH_SCB9328
 	bool "Synertronixx scb9328"
 	select ARCH_IMX1
@@ -692,224 +671,8 @@ config MACH_SKOV_IMX6
 	select DSA
 	select DRIVER_NET_KSZ8873
 
-endif
-
-# ----------------------------------------------------------
-
-choice
-	prompt "Select Board"
-	depends on !IMX_MULTI_BOARDS
-
-# ----------------------------------------------------------
-
-comment "i.MX21 Boards"
-
-config MACH_IMX21ADS
-	bool "Freescale i.MX21ADS"
-	select ARCH_IMX21
-	select HAS_CS8900
-	help
-	  Say Y here if you are using the Freescale i.MX21ads board equipped
-	  with a Freescale i.MX21 Processor
-
-# ----------------------------------------------------------
-
-comment "i.MX25 Boards"
-
-config MACH_EUKREA_CPUIMX25
-	bool "Eukrea CPUIMX25"
-	select ARCH_IMX25
-	help
-	  Say Y here if you are using the Eukrea Electromatique's CPUIMX25
-	  equipped with a Freescale i.MX25 Processor
-
-config MACH_FREESCALE_MX25_3STACK
-	bool "Freescale MX25 3stack"
-	select ARCH_IMX25
-	select I2C
-	select MFD_MC34704
-	help
-	  Say Y here if you are using the Freescale MX25 3stack board equipped
-	  with a Freescale i.MX25 Processor
-
-# ----------------------------------------------------------
-
-comment "i.MX27 Boards"
-
-config MACH_EUKREA_CPUIMX27
-	bool "EUKREA CPUIMX27"
-	select ARCH_IMX27
-	help
-	  Say Y here if you are using Eukrea's CPUIMX27 equipped
-	  with a Freescale i.MX27 Processor
-
-config MACH_IMX27ADS
-	bool "Freescale i.MX27ADS"
-	select ARCH_IMX27
-	help
-	  Say Y here if you are using the Freescale i.MX27ads board equipped
-	  with a Freescale i.MX27 Processor
-
-config MACH_NESO
-	bool "Garz+Fricke Neso"
-	select ARCH_IMX27
-	help
-	  Say Y here if you are using the Garz+Fricke Neso board equipped
-	  with a Freescale i.MX27 Processor
-
-# ----------------------------------------------------------
-
-comment "i.MX31 Boards"
-
-config MACH_PCM037
-	bool "phyCORE-i.MX31"
-	select ARCH_IMX31
-	select USB_ULPI if USB
-	select ARCH_HAS_L2X0
-	help
-	  Say Y here if you are using Phytec's phyCORE-i.MX31 (pcm037) equipped
-	  with a Freescale i.MX31 Processor
-
-# ----------------------------------------------------------
-
-comment "i.MX35 Boards"
-
-config MACH_EUKREA_CPUIMX35
-	bool "EUKREA CPUIMX35"
-	select ARCH_IMX35
-	select ARCH_HAS_L2X0
-	help
-	  Say Y here if you are using Eukrea's CPUIMX35 equipped
-	  with a Freescale i.MX35 Processor
-
-config MACH_FREESCALE_MX35_3STACK
-	bool "Freescale MX35 3stack"
-	select ARCH_IMX35
-	select I2C
-	select I2C_IMX
-	select MFD_MC13XXX
-	select MFD_MC9SDZ60
-	help
-	  Say Y here if you are using the Freescale MX35 3stack board equipped
-	  with a Freescale i.MX35 Processor
-
-config MACH_PCM043
-	bool "phyCORE-i.MX35"
-	select ARCH_IMX35
-	select ARCH_HAS_L2X0
-	help
-	  Say Y here if you are using Phytec's phyCORE-i.MX35 (pcm043) equipped
-	  with a Freescale i.MX35 Processor
-
-config MACH_GUF_CUPID
-	bool "Garz+Fricke Cupid"
-	select ARCH_IMX35
-	select ARCH_HAS_L2X0
-	help
-	  Say Y here if you are using the Garz+Fricke Neso board equipped
-	  with a Freescale i.MX35 Processor
-
-config MACH_KINDLE3
-	bool "Amazon Kindle3"
-	select ARCH_IMX35
-	select ARCH_HAS_L2X0
-	help
-	  Say Y here if you are using the Amazon Model No. D00901 Kindle
-
 # ----------------------------------------------------------
 
-comment "i.MX51 Boards"
-
-config MACH_EUKREA_CPUIMX51SD
-	bool "EUKREA CPUIMX51"
-	select ARCH_IMX51
-	help
-	  Say Y here if you are using Eukrea's CPUIMX51 equipped
-	  with a Freescale i.MX51 Processor
-
-# ----------------------------------------------------------
-
-comment "i.MX53 Boards"
-
-config MACH_FREESCALE_MX53_SMD
-	bool "Freescale i.MX53 SMD"
-	select ARCH_IMX53
-
-endchoice
-
-# ----------------------------------------------------------
-
-menu "Board specific settings"
-
-if MACH_PCM037
-
-choice
-	prompt "SDRAM Bank0"
-config PCM037_SDRAM_BANK0_128MB
-	bool "128MB"
-config PCM037_SDRAM_BANK0_256MB
-	bool "256MB"
-endchoice
-
-choice
-	prompt "SDRAM Bank1"
-config PCM037_SDRAM_BANK1_NONE
-	bool "none"
-config PCM037_SDRAM_BANK1_128MB
-	bool "128MB"
-config PCM037_SDRAM_BANK1_256MB
-	bool "256MB"
-endchoice
-
-endif
-
-if MACH_EUKREA_CPUIMX27
-
-choice
-	prompt "SDRAM Size"
-config EUKREA_CPUIMX27_SDRAM_128MB
-	bool "128 MB"
-config EUKREA_CPUIMX27_SDRAM_256MB
-	bool "256 MB"
-endchoice
-
-choice
-	prompt "NOR Flash Size"
-config EUKREA_CPUIMX27_NOR_32MB
-	bool "<= 32 MB"
-config EUKREA_CPUIMX27_NOR_64MB
-	bool "> 32 MB"
-endchoice
-
-choice
-	prompt "Quad UART Port"
-	depends on DRIVER_SERIAL_NS16550
-config EUKREA_CPUIMX27_QUART1
-	bool "Q1"
-config EUKREA_CPUIMX27_QUART2
-	bool "Q2"
-config EUKREA_CPUIMX27_QUART3
-	bool "Q3"
-config EUKREA_CPUIMX27_QUART4
-	bool "Q4"
-endchoice
-
-endif
-
-if MACH_FREESCALE_MX25_3STACK
-
-choice
-	prompt "SDRAM Type"
-config FREESCALE_MX25_3STACK_SDRAM_64MB_DDR2
-	bool "64 MB (DDR2)"
-config FREESCALE_MX25_3STACK_SDRAM_128MB_MDDR
-	bool "128 MB (mDDR)"
-endchoice
-
-endif
-
-endmenu
-
 menu "i.MX specific settings"
 
 config IMX_IIM
-- 
2.30.2



