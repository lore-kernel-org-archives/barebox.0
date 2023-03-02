Delivery-date: Thu, 02 Mar 2023 11:53:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgZL-006Tr7-JP
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 11:53:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgZK-00054v-Ss
	for lore@pengutronix.de; Thu, 02 Mar 2023 11:53:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LzU0V3VzsmDaK+RcLAmSmcOrZb9B1yC78eacg3ugeXE=; b=NLaHPhWGgscf+fc/6+BxE4z6aN
	nDWl9k4vSYZbTJ1Iz2Ix19ttvzjJnRtKLicLXAwo7EOrLWnxwbXmHNo9uRL55ao/Jn1S9E0C0ASRS
	F2pdsMNfGEhUxc8ZG8VfXFxg6wJvPXz+r04pZG6BpE/I2RlBGaspHjgDlRpQPtRzUWakPb+KWip4x
	xZVzUOaz43PctAnpNboQPsxpMMnSppSNMnJS28tIb/9ajR81o9IoBbthuAHftUPkmZAs/mbVJF3OE
	v+fkvNMeDCGNPRJseQTcL8ND5vihsw3dG4/fmDZcVdHUZSjLQDZObGzC1vCw0RI+eITRjRIJv7NTA
	rNBMp+Tw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgY9-001kzk-5y; Thu, 02 Mar 2023 10:52:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgY1-001kwj-8v
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 10:52:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXz-0004si-GD; Thu, 02 Mar 2023 11:52:27 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXy-001J7F-Qj; Thu, 02 Mar 2023 11:52:26 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgXy-003zCC-8T; Thu, 02 Mar 2023 11:52:26 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 11:52:22 +0100
Message-Id: <20230302105225.943524-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_025229_683761_2B862671 
X-CRM114-Status: GOOD (  13.25  )
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
Subject: [PATCH 0/2] i.MX: Remove support for old boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This removes a bunch of old boards that nobody showed interest in for a
long time:

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

The boards all have in common that they do not support device trees and
also don't have multi-image support.

If you are still using these boards and wish them to be supported please
speak up.

Sascha

Sascha Hauer (2):
  ARM: i.MX: Remove old boards
  ARM: i.MX: Remove config CONFIG_ARCH_TEXT_BASE

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
 arch/arm/mach-imx/Kconfig                     | 260 ----------
 112 files changed, 2 insertions(+), 8193 deletions(-)
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

-- 
2.30.2



