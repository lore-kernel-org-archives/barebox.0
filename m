Delivery-date: Thu, 25 Apr 2024 13:55:54 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhi-00Gf74-1U
	for lore@lore.pengutronix.de;
	Thu, 25 Apr 2024 13:55:54 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rzxhY-0006mJ-Uz
	for lore@pengutronix.de; Thu, 25 Apr 2024 13:55:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=4gGqYYi8WPHgAr5x8h7GuuJRMUALaUH+0DFtKgZThUI=; b=A6ghwVW/aqbyEZ
	QwzfPoDiXcwAGoJUIi/1DeumqMeJc77Ob2agWeXXLEZ2+M1v/8eXFLEduI6Y3U0YMAwSwjBA1yiNB
	m3QnC/pckgjfRGkMfECTVM0g+zp5bZ5GZrXjE0JPjnA/MCx24fYAANM+R9/IQr4XievgN+iyi9juK
	e7GakMBMHvpHPVqoUKAUqTrd/Wq9tX5BMeW/kITcdme77+nMM9+RKIjDePwzykR+MVQjQAZ8Tjkdm
	E7WjwBGp08cQE9HW3J7I5c1vWOxtxexV4OZMAfII681NXSQfU6IxlvWia9FLTdYTdP9alGCy5j4Bh
	xHbhyHZtT+uABUl+xlwg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgl-000000085D8-123o;
	Thu, 25 Apr 2024 11:54:55 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rzxgf-000000085BH-1omR
	for barebox@lists.infradead.org;
	Thu, 25 Apr 2024 11:54:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgZ-00062b-8j; Thu, 25 Apr 2024 13:54:43 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-00EFqa-4d; Thu, 25 Apr 2024 13:54:42 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rzxgY-009aQk-02;
	Thu, 25 Apr 2024 13:54:42 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 25 Apr 2024 13:54:24 +0200
Message-Id: <20240425115439.2269239-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240425_045449_817678_E91F18F8 
X-CRM114-Status: GOOD (  15.99  )
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
Subject: [PATCH 00/15] ARM: remove non PBL ARM boards and sub architectures
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ARM architecture support in barebox has become quite complicated
over time.  Most SoCs use PBL and relocatable binaries, but some older
ones still don't.  This makes the lowlevel ARM code hard to maintain and
often hard to understand.

I've decided that it is time to make a cut and to abandon the old non
PBL boards and sometimes the sub architecture with it. This series
removes:

- mach-davinci
- mach-ep93xx
- mach-digic
- mach-nomadik
- mach-uemd
- non PBL Atmel AT91 boards
- non PBL OMAP boards

If you are still using one of these boards/sub architecures then please
speak up.  In some cases the conversion to PBL support is quite straight
forward and I could guide you through the process or create patches for
them. Anyway, I assume most of the sub architectures are unused so I
would do the work only if somebody actively shows interest.

Sascha Hauer (15):
  ARM: move HAVE_PBL_MULTI_IMAGES up to ARCH_MULTIARCH
  ARM: move OFTREE and OFDEVICE up one level
  ARM: remove uemd architecure
  ARM: remove ep93xx
  ARM: remove canon-a1100 support
  ARM: remove davinci
  ARM: remove PXA boards
  ARM: remove nomadik
  ARM: remove non PBL OMAP boards
  ARM: remove non PBL Atmel boards
  ARM: move HAVE_PBL_MULTI_IMAGES to toplevel
  ARM: drop non PBL support
  ARM: drop barebox_arm_head()
  ARM: make relocatable mandatory
  ARM: drop TEXT_BASE

 arch/arm/Kconfig                              | 100 +--
 arch/arm/Makefile                             |  47 +-
 arch/arm/boards/Makefile                      |  27 -
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
 arch/arm/boards/archosg9/feature_list.h       | 352 ----------
 arch/arm/boards/archosg9/lowlevel.c           |  73 ---
 arch/arm/boards/archosg9/mux.c                | 262 --------
 arch/arm/boards/archosg9/mux.h                |   8 -
 arch/arm/boards/canon-a1100/Makefile          |   3 -
 arch/arm/boards/canon-a1100/lowlevel.c        |  32 -
 arch/arm/boards/edb93xx/Makefile              |   4 -
 arch/arm/boards/edb93xx/early_udelay.h        |  15 -
 arch/arm/boards/edb93xx/edb93xx.c             | 121 ----
 arch/arm/boards/edb93xx/edb93xx.h             |  29 -
 arch/arm/boards/edb93xx/env/bin/boot          |  48 --
 .../boards/edb93xx/env/bin/flash_partition    |  22 -
 arch/arm/boards/edb93xx/env/bin/init          |  19 -
 arch/arm/boards/edb93xx/env/bin/set_nor_parts |   3 -
 arch/arm/boards/edb93xx/env/bin/update_kernel |  16 -
 arch/arm/boards/edb93xx/env/bin/update_rootfs |  16 -
 arch/arm/boards/edb93xx/env/config            |  16 -
 arch/arm/boards/edb93xx/flash_cfg.c           |  22 -
 arch/arm/boards/edb93xx/pll_cfg.c             |  41 --
 arch/arm/boards/edb93xx/pll_cfg.h             |  53 --
 arch/arm/boards/edb93xx/sdram_cfg.c           | 128 ----
 arch/arm/boards/edb93xx/sdram_cfg.h           | 125 ----
 arch/arm/boards/lubbock/Makefile              |   4 -
 arch/arm/boards/lubbock/board.c               | 118 ----
 arch/arm/boards/lubbock/env/boot/nor-ubi      |   5 -
 arch/arm/boards/lubbock/env/init/mtdparts-nor |   6 -
 .../lubbock/env/nv/linux.bootargs.console     |   1 -
 arch/arm/boards/lubbock/lowlevel.c            | 194 ------
 arch/arm/boards/mainstone/Makefile            |   4 -
 arch/arm/boards/mainstone/board.c             | 118 ----
 arch/arm/boards/mainstone/env/boot/nor-ubi    |   5 -
 .../boards/mainstone/env/init/mtdparts-nor    |   6 -
 .../mainstone/env/nv/linux.bootargs.console   |   1 -
 arch/arm/boards/mainstone/lowlevel.c          | 266 --------
 arch/arm/boards/mioa701/Makefile              |   4 -
 arch/arm/boards/mioa701/board.c               | 274 --------
 .../arm/boards/mioa701/env/bin/barebox_update |  11 -
 arch/arm/boards/mioa701/env/bin/console_mode  |   6 -
 arch/arm/boards/mioa701/env/bin/dps1_unlock   |  12 -
 arch/arm/boards/mioa701/env/bin/dps1_update   |  12 -
 arch/arm/boards/mioa701/env/bin/init          |  79 ---
 .../boards/mioa701/env/bin/mtd_env_override   |   4 -
 .../boards/mioa701/env/bin/sdcard_override    |  19 -
 arch/arm/boards/mioa701/env/config            |   6 -
 arch/arm/boards/mioa701/env/data/dps1.raw.gz  | Bin 1324 -> 0 bytes
 arch/arm/boards/mioa701/gpio0_poweroff.c      |  67 --
 arch/arm/boards/mioa701/lowlevel.c            |  12 -
 arch/arm/boards/mioa701/mioa701.h             |  67 --
 arch/arm/boards/module-mb7707/Makefile        |   4 -
 arch/arm/boards/module-mb7707/board.c         |  31 -
 arch/arm/boards/module-mb7707/lowlevel.c      |  28 -
 arch/arm/boards/nhk8815/Makefile              |   5 -
 .../boards/nhk8815/defaultenv-nhk8815/config  |  43 --
 arch/arm/boards/nhk8815/lowlevel.c            |  12 -
 arch/arm/boards/nhk8815/setup.c               | 113 ----
 arch/arm/boards/omap343xdsp/Makefile          |   4 -
 arch/arm/boards/omap343xdsp/board.c           |  50 --
 arch/arm/boards/omap343xdsp/lowlevel.c        | 562 ----------------
 arch/arm/boards/omap3evm/Makefile             |   4 -
 arch/arm/boards/omap3evm/board.c              |  83 ---
 arch/arm/boards/omap3evm/lowlevel.c           | 175 -----
 arch/arm/boards/panda/Makefile                |   4 -
 arch/arm/boards/panda/board.c                 | 165 -----
 arch/arm/boards/panda/env/boot/mmc            |   5 -
 .../boards/panda/env/network/eth0-discover    |   5 -
 arch/arm/boards/panda/lowlevel.c              |  81 ---
 arch/arm/boards/panda/mux.c                   | 260 --------
 arch/arm/boards/panda/mux.h                   |   8 -
 arch/arm/boards/phytec-phycard-omap3/Makefile |   5 -
 .../boards/phytec-phycard-omap3/env/config    |  77 ---
 .../boards/phytec-phycard-omap3/lowlevel.c    | 266 --------
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
 .../boards/phytec-phycore-omap4460/board.c    | 301 ---------
 .../bin/init_board                            |  23 -
 .../bin/nand_bootstrap                        |  31 -
 .../defaultenv-phytec-phycore-omap4460/config |  61 --
 .../boards/phytec-phycore-omap4460/lowlevel.c | 141 -----
 arch/arm/boards/phytec-phycore-omap4460/mux.c | 257 --------
 arch/arm/boards/phytec-phycore-omap4460/mux.h |   8 -
 .../arm/boards/phytec-phycore-pxa270/Makefile |   4 -
 arch/arm/boards/phytec-phycore-pxa270/board.c | 171 -----
 .../arm/boards/phytec-phycore-pxa270/config.h | 314 ---------
 .../env/init/mtdparts-nor                     |   6 -
 .../env/nv/linux.bootargs.console             |   1 -
 .../phytec-phycore-pxa270/lowlevel_init.S     | 448 -------------
 arch/arm/boards/sama5d3xek/Makefile           |   6 -
 .../defaultenv-sama5d3xek/bin/init_board      |  15 -
 .../sama5d3xek/defaultenv-sama5d3xek/config   |  44 --
 arch/arm/boards/sama5d3xek/hw_version.c       | 236 -------
 arch/arm/boards/sama5d3xek/hw_version.h       |  40 --
 arch/arm/boards/sama5d3xek/init.c             | 475 --------------
 arch/arm/boards/sama5d3xek/lowlevel.c         |  23 -
 arch/arm/boards/sama5d4_xplained/Makefile     |   4 -
 arch/arm/boards/sama5d4_xplained/env/boot/mmc |   8 -
 .../arm/boards/sama5d4_xplained/env/boot/nand |   8 -
 .../sama5d4_xplained/env/init/automount       |   5 -
 .../sama5d4_xplained/env/init/mtdparts-nand   |   6 -
 .../boards/sama5d4_xplained/env/init/splash   |  15 -
 .../sama5d4_xplained/env/nv/boot.default      |   1 -
 .../env/nv/linux.bootargs.console             |   1 -
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |  23 -
 .../sama5d4_xplained/sama5d4_xplained.c       | 320 ----------
 arch/arm/boards/sama5d4ek/Makefile            |   4 -
 arch/arm/boards/sama5d4ek/env/boot/nand       |   6 -
 .../boards/sama5d4ek/env/init/mtdparts-nand   |   6 -
 .../boards/sama5d4ek/env/init/mtdparts-nor    |   6 -
 arch/arm/boards/sama5d4ek/env/init/splash     |  10 -
 arch/arm/boards/sama5d4ek/env/nv/boot.default |   1 -
 arch/arm/boards/sama5d4ek/env/nv/hostname     |   1 -
 .../sama5d4ek/env/nv/linux.bootargs.console   |   1 -
 arch/arm/boards/sama5d4ek/lowlevel.c          |  23 -
 arch/arm/boards/sama5d4ek/sama5d4ek.c         | 318 ----------
 arch/arm/boards/versatile/Kconfig             |   4 -
 arch/arm/boards/virt2real/Makefile            |   4 -
 arch/arm/boards/virt2real/board.c             |  15 -
 arch/arm/boards/virt2real/lowlevel.c          |  28 -
 arch/arm/boards/zylonite/Makefile             |   4 -
 arch/arm/boards/zylonite/board.c              |  93 ---
 arch/arm/boards/zylonite/env/boot/nand-ubi    |   5 -
 .../boards/zylonite/env/init/mtdparts-nand    |   6 -
 arch/arm/boards/zylonite/env/nv/hostname      |   1 -
 .../zylonite/env/nv/linux.bootargs.base       |   1 -
 .../zylonite/env/nv/linux.bootargs.console    |   1 -
 arch/arm/boards/zylonite/lowlevel.c           |  12 -
 arch/arm/configs/am335x_mlo_defconfig         |   4 +-
 .../arm/configs/am35xx_pfc200_xload_defconfig |   5 +-
 arch/arm/configs/archosg9_defconfig           |  98 ---
 arch/arm/configs/archosg9_xload_defconfig     |  26 -
 arch/arm/configs/canon-a1100_defconfig        |  51 --
 arch/arm/configs/edb93xx_defconfig            |  32 -
 arch/arm/configs/lubbock_defconfig            | 100 ---
 arch/arm/configs/mainstone_defconfig          | 103 ---
 arch/arm/configs/mioa701_defconfig            | 104 ---
 arch/arm/configs/module-mb7707_defconfig      |  45 --
 arch/arm/configs/nhk8815_defconfig            |  50 --
 .../omap3430_sdp3430_per_uart_defconfig       |  26 -
 arch/arm/configs/omap3530_beagle_defconfig    |  97 ---
 .../omap3530_beagle_per_uart_defconfig        |  25 -
 .../configs/omap3530_beagle_xload_defconfig   |  33 -
 arch/arm/configs/omap3_evm_defconfig          |  24 -
 arch/arm/configs/omap_defconfig               |   6 +-
 arch/arm/configs/panda_defconfig              |  84 ---
 arch/arm/configs/panda_xload_defconfig        |  21 -
 .../phytec-phycard-omap3-xload_defconfig      |  32 -
 .../configs/phytec-phycard-omap3_defconfig    |  70 --
 .../phytec-phycard-omap4-xload_defconfig      |  28 -
 .../configs/phytec-phycard-omap4_defconfig    |  48 --
 ...hytec-phycore-omap4460-xload-mmc_defconfig |  25 -
 ...ytec-phycore-omap4460-xload-nand_defconfig |  27 -
 .../configs/phytec-phycore-omap4460_defconfig |  71 ---
 .../configs/phytec-phycore-pxa270_defconfig   |  60 --
 arch/arm/configs/sama5d4_xplained_defconfig   |  84 ---
 arch/arm/configs/sama5d4ek_defconfig          |  83 ---
 arch/arm/configs/virt2real_defconfig          |  45 --
 arch/arm/configs/zylonite310_defconfig        | 104 ---
 arch/arm/cpu/Kconfig                          |   3 -
 arch/arm/cpu/entry_ll_32.S                    |   4 -
 arch/arm/cpu/entry_ll_64.S                    |   4 -
 arch/arm/cpu/exceptions_32.S                  |   2 +-
 arch/arm/cpu/start.c                          |  20 +-
 arch/arm/cpu/uncompress.c                     |  40 +-
 arch/arm/dts/Makefile                         |   3 -
 arch/arm/dts/canon-a1100.dts                  |  36 --
 arch/arm/dts/k1879hb1ya.dtsi                  |  44 --
 arch/arm/dts/module-mb7707.dts                |  25 -
 arch/arm/dts/virt2real.dts                    |  36 --
 arch/arm/include/asm/barebox-arm-head.h       |   8 -
 arch/arm/include/asm/barebox-arm.h            |  11 +-
 arch/arm/include/asm/barebox.lds.h            |   4 -
 arch/arm/include/asm/debug_ll.h               |  10 -
 arch/arm/include/asm/mach-types.h             | 204 ------
 arch/arm/lib/pbl.lds.S                        |  18 +-
 arch/arm/lib32/barebox.lds.S                  |   9 +-
 arch/arm/lib64/barebox.lds.S                  |   9 +-
 arch/arm/mach-at91/Kconfig                    |  44 --
 arch/arm/mach-bcm283x/Kconfig                 |   4 -
 arch/arm/mach-davinci/Kconfig                 |  19 -
 arch/arm/mach-davinci/Makefile                |   3 -
 arch/arm/mach-davinci/time.c                  | 216 -------
 arch/arm/mach-digic/Kconfig                   |  17 -
 arch/arm/mach-digic/Makefile                  |   3 -
 arch/arm/mach-ep93xx/Kconfig                  | 411 ------------
 arch/arm/mach-ep93xx/Makefile                 |   5 -
 arch/arm/mach-ep93xx/clocksource.c            |  93 ---
 arch/arm/mach-ep93xx/gpio.c                   | 134 ----
 arch/arm/mach-ep93xx/header.c                 |  12 -
 arch/arm/mach-ep93xx/led.c                    |  57 --
 arch/arm/mach-ep93xx/led.h                    |  19 -
 arch/arm/mach-ep93xx/lowlevel_init.S          |  61 --
 arch/arm/mach-imx/Kconfig                     |   7 -
 arch/arm/mach-mvebu/Kconfig                   |   7 -
 arch/arm/mach-mxs/Kconfig                     |   9 -
 arch/arm/mach-nomadik/8815.c                  |  71 ---
 arch/arm/mach-nomadik/Kconfig                 |  23 -
 arch/arm/mach-nomadik/Makefile                |   4 -
 arch/arm/mach-nomadik/clock.c                 |  55 --
 arch/arm/mach-nomadik/clock.h                 |  14 -
 arch/arm/mach-nomadik/reset.c                 |  42 --
 arch/arm/mach-nomadik/timer.c                 |  33 -
 arch/arm/mach-omap/Kconfig                    | 107 ----
 arch/arm/mach-pxa/Kconfig                     |  87 ---
 arch/arm/mach-rockchip/Kconfig                |   6 -
 arch/arm/mach-socfpga/Kconfig                 |   6 -
 arch/arm/mach-tegra/Kconfig                   |   4 -
 arch/arm/mach-uemd/Kconfig                    |  17 -
 arch/arm/mach-uemd/Makefile                   |   3 -
 arch/arm/mach-versatile/Kconfig               |   3 -
 arch/arm/mach-vexpress/Kconfig                |   4 -
 arch/arm/mach-zynq/Kconfig                    |   8 -
 include/mach/davinci/debug_ll.h               |  28 -
 include/mach/davinci/hardware.h               |  27 -
 include/mach/davinci/serial.h                 |  18 -
 include/mach/davinci/time.h                   |  18 -
 include/mach/digic/debug_ll.h                 |  39 --
 include/mach/digic/digic4.h                   |  22 -
 include/mach/digic/uart.h                     |  27 -
 include/mach/ep93xx/barebox.lds.h             |  10 -
 include/mach/ep93xx/ep93xx-regs.h             | 599 ------------------
 include/mach/nomadik/board.h                  |  24 -
 include/mach/nomadik/fsmc.h                   |  30 -
 include/mach/nomadik/hardware.h               |  87 ---
 include/mach/nomadik/nand.h                   |  15 -
 include/mach/socfpga/barebox-arm-head.h       |   7 -
 include/mach/uemd/debug_ll.h                  |  41 --
 include/mach/uemd/hardware.h                  |   9 -
 scripts/Kconfig                               |   7 -
 scripts/Makefile                              |   1 -
 scripts/canon-a1100-image                     |  12 -
 scripts/mkublheader.c                         |  85 ---
 258 files changed, 34 insertions(+), 14427 deletions(-)
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
 delete mode 100644 arch/arm/boards/canon-a1100/Makefile
 delete mode 100644 arch/arm/boards/canon-a1100/lowlevel.c
 delete mode 100644 arch/arm/boards/edb93xx/Makefile
 delete mode 100644 arch/arm/boards/edb93xx/early_udelay.h
 delete mode 100644 arch/arm/boards/edb93xx/edb93xx.c
 delete mode 100644 arch/arm/boards/edb93xx/edb93xx.h
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/boot
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/flash_partition
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/init
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/set_nor_parts
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/edb93xx/env/bin/update_rootfs
 delete mode 100644 arch/arm/boards/edb93xx/env/config
 delete mode 100644 arch/arm/boards/edb93xx/flash_cfg.c
 delete mode 100644 arch/arm/boards/edb93xx/pll_cfg.c
 delete mode 100644 arch/arm/boards/edb93xx/pll_cfg.h
 delete mode 100644 arch/arm/boards/edb93xx/sdram_cfg.c
 delete mode 100644 arch/arm/boards/edb93xx/sdram_cfg.h
 delete mode 100644 arch/arm/boards/lubbock/Makefile
 delete mode 100644 arch/arm/boards/lubbock/board.c
 delete mode 100644 arch/arm/boards/lubbock/env/boot/nor-ubi
 delete mode 100644 arch/arm/boards/lubbock/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/lubbock/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/lubbock/lowlevel.c
 delete mode 100644 arch/arm/boards/mainstone/Makefile
 delete mode 100644 arch/arm/boards/mainstone/board.c
 delete mode 100644 arch/arm/boards/mainstone/env/boot/nor-ubi
 delete mode 100644 arch/arm/boards/mainstone/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/mainstone/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/mainstone/lowlevel.c
 delete mode 100644 arch/arm/boards/mioa701/Makefile
 delete mode 100644 arch/arm/boards/mioa701/board.c
 delete mode 100644 arch/arm/boards/mioa701/env/bin/barebox_update
 delete mode 100644 arch/arm/boards/mioa701/env/bin/console_mode
 delete mode 100644 arch/arm/boards/mioa701/env/bin/dps1_unlock
 delete mode 100644 arch/arm/boards/mioa701/env/bin/dps1_update
 delete mode 100644 arch/arm/boards/mioa701/env/bin/init
 delete mode 100644 arch/arm/boards/mioa701/env/bin/mtd_env_override
 delete mode 100644 arch/arm/boards/mioa701/env/bin/sdcard_override
 delete mode 100644 arch/arm/boards/mioa701/env/config
 delete mode 100644 arch/arm/boards/mioa701/env/data/dps1.raw.gz
 delete mode 100644 arch/arm/boards/mioa701/gpio0_poweroff.c
 delete mode 100644 arch/arm/boards/mioa701/lowlevel.c
 delete mode 100644 arch/arm/boards/mioa701/mioa701.h
 delete mode 100644 arch/arm/boards/module-mb7707/Makefile
 delete mode 100644 arch/arm/boards/module-mb7707/board.c
 delete mode 100644 arch/arm/boards/module-mb7707/lowlevel.c
 delete mode 100644 arch/arm/boards/nhk8815/Makefile
 delete mode 100644 arch/arm/boards/nhk8815/defaultenv-nhk8815/config
 delete mode 100644 arch/arm/boards/nhk8815/lowlevel.c
 delete mode 100644 arch/arm/boards/nhk8815/setup.c
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
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/Makefile
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/board.c
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/config.h
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/phytec-phycore-pxa270/lowlevel_init.S
 delete mode 100644 arch/arm/boards/sama5d3xek/Makefile
 delete mode 100644 arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/bin/init_board
 delete mode 100644 arch/arm/boards/sama5d3xek/defaultenv-sama5d3xek/config
 delete mode 100644 arch/arm/boards/sama5d3xek/hw_version.c
 delete mode 100644 arch/arm/boards/sama5d3xek/hw_version.h
 delete mode 100644 arch/arm/boards/sama5d3xek/init.c
 delete mode 100644 arch/arm/boards/sama5d3xek/lowlevel.c
 delete mode 100644 arch/arm/boards/sama5d4_xplained/Makefile
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/mmc
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/boot/nand
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/init/automount
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/init/splash
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/boot.default
 delete mode 100644 arch/arm/boards/sama5d4_xplained/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/sama5d4_xplained/lowlevel.c
 delete mode 100644 arch/arm/boards/sama5d4_xplained/sama5d4_xplained.c
 delete mode 100644 arch/arm/boards/sama5d4ek/Makefile
 delete mode 100644 arch/arm/boards/sama5d4ek/env/boot/nand
 delete mode 100644 arch/arm/boards/sama5d4ek/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/sama5d4ek/env/init/mtdparts-nor
 delete mode 100644 arch/arm/boards/sama5d4ek/env/init/splash
 delete mode 100644 arch/arm/boards/sama5d4ek/env/nv/boot.default
 delete mode 100644 arch/arm/boards/sama5d4ek/env/nv/hostname
 delete mode 100644 arch/arm/boards/sama5d4ek/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/sama5d4ek/lowlevel.c
 delete mode 100644 arch/arm/boards/sama5d4ek/sama5d4ek.c
 delete mode 100644 arch/arm/boards/virt2real/Makefile
 delete mode 100644 arch/arm/boards/virt2real/board.c
 delete mode 100644 arch/arm/boards/virt2real/lowlevel.c
 delete mode 100644 arch/arm/boards/zylonite/Makefile
 delete mode 100644 arch/arm/boards/zylonite/board.c
 delete mode 100644 arch/arm/boards/zylonite/env/boot/nand-ubi
 delete mode 100644 arch/arm/boards/zylonite/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/zylonite/env/nv/hostname
 delete mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.base
 delete mode 100644 arch/arm/boards/zylonite/env/nv/linux.bootargs.console
 delete mode 100644 arch/arm/boards/zylonite/lowlevel.c
 delete mode 100644 arch/arm/configs/archosg9_defconfig
 delete mode 100644 arch/arm/configs/archosg9_xload_defconfig
 delete mode 100644 arch/arm/configs/canon-a1100_defconfig
 delete mode 100644 arch/arm/configs/edb93xx_defconfig
 delete mode 100644 arch/arm/configs/lubbock_defconfig
 delete mode 100644 arch/arm/configs/mainstone_defconfig
 delete mode 100644 arch/arm/configs/mioa701_defconfig
 delete mode 100644 arch/arm/configs/module-mb7707_defconfig
 delete mode 100644 arch/arm/configs/nhk8815_defconfig
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
 delete mode 100644 arch/arm/configs/phytec-phycore-pxa270_defconfig
 delete mode 100644 arch/arm/configs/sama5d4_xplained_defconfig
 delete mode 100644 arch/arm/configs/sama5d4ek_defconfig
 delete mode 100644 arch/arm/configs/virt2real_defconfig
 delete mode 100644 arch/arm/configs/zylonite310_defconfig
 delete mode 100644 arch/arm/dts/canon-a1100.dts
 delete mode 100644 arch/arm/dts/k1879hb1ya.dtsi
 delete mode 100644 arch/arm/dts/module-mb7707.dts
 delete mode 100644 arch/arm/dts/virt2real.dts
 delete mode 100644 arch/arm/mach-davinci/Kconfig
 delete mode 100644 arch/arm/mach-davinci/Makefile
 delete mode 100644 arch/arm/mach-davinci/time.c
 delete mode 100644 arch/arm/mach-digic/Kconfig
 delete mode 100644 arch/arm/mach-digic/Makefile
 delete mode 100644 arch/arm/mach-ep93xx/Kconfig
 delete mode 100644 arch/arm/mach-ep93xx/Makefile
 delete mode 100644 arch/arm/mach-ep93xx/clocksource.c
 delete mode 100644 arch/arm/mach-ep93xx/gpio.c
 delete mode 100644 arch/arm/mach-ep93xx/header.c
 delete mode 100644 arch/arm/mach-ep93xx/led.c
 delete mode 100644 arch/arm/mach-ep93xx/led.h
 delete mode 100644 arch/arm/mach-ep93xx/lowlevel_init.S
 delete mode 100644 arch/arm/mach-nomadik/8815.c
 delete mode 100644 arch/arm/mach-nomadik/Kconfig
 delete mode 100644 arch/arm/mach-nomadik/Makefile
 delete mode 100644 arch/arm/mach-nomadik/clock.c
 delete mode 100644 arch/arm/mach-nomadik/clock.h
 delete mode 100644 arch/arm/mach-nomadik/reset.c
 delete mode 100644 arch/arm/mach-nomadik/timer.c
 delete mode 100644 arch/arm/mach-uemd/Kconfig
 delete mode 100644 arch/arm/mach-uemd/Makefile
 delete mode 100644 include/mach/davinci/debug_ll.h
 delete mode 100644 include/mach/davinci/hardware.h
 delete mode 100644 include/mach/davinci/serial.h
 delete mode 100644 include/mach/davinci/time.h
 delete mode 100644 include/mach/digic/debug_ll.h
 delete mode 100644 include/mach/digic/digic4.h
 delete mode 100644 include/mach/digic/uart.h
 delete mode 100644 include/mach/ep93xx/barebox.lds.h
 delete mode 100644 include/mach/ep93xx/ep93xx-regs.h
 delete mode 100644 include/mach/nomadik/board.h
 delete mode 100644 include/mach/nomadik/fsmc.h
 delete mode 100644 include/mach/nomadik/hardware.h
 delete mode 100644 include/mach/nomadik/nand.h
 delete mode 100644 include/mach/uemd/debug_ll.h
 delete mode 100644 include/mach/uemd/hardware.h
 delete mode 100755 scripts/canon-a1100-image
 delete mode 100644 scripts/mkublheader.c

-- 
2.39.2



