Delivery-date: Thu, 11 May 2023 01:39:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOr-00DJHs-2l
	for lore@lore.pengutronix.de; Thu, 11 May 2023 01:39:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pwtOp-0000wK-5T
	for lore@pengutronix.de; Thu, 11 May 2023 01:39:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=mLq60xnw3YDZyReIuEPbE++v/qlrpy/hpUrP3UP8HdA=; b=n3h+CpQUR6L3z+tijpqUHMsRa4
	3OQxEEKB3O/YANort1CO79F/lIXH81pboLmbAGpNlrCl8BWfowrDrom54WnHYujhI+W1f2Pcj2oqW
	tKD9OCGxeSFS0JKwM0wjdga6lXKSOohTeC1HDlLIBtcOOoR5LELtK/7EroUHlrNyupWQOaGZUYqi7
	FCrOk5ZRhNT9PlQO+9dKXtl1n0Hy/HsG4awI8z2Tp/L92KZIV6eTkGtn4xEhqAAxN8s2X1x9m9RC5
	ndeFX8EijxMjVnD9sfN6eaUJEymhow4Fpdi4KBF9tUf1x22w+YTUALiwwJD5TM2Gcz79u5vXOOEDu
	kudivjjg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNV-007Fu5-2i;
	Wed, 10 May 2023 23:37:49 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pwtNP-007Fq2-1h
	for barebox@lists.infradead.org;
	Wed, 10 May 2023 23:37:46 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id E54AD1C0003;
	Wed, 10 May 2023 23:37:34 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 11 May 2023 01:37:00 +0200
Message-Id: <20230510233711.37345-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230510_163743_831992_F2E6597D 
X-CRM114-Status: GOOD (  12.33  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [RFC PATCH 00/11] Add support for Allwinner (sunxi) A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

I have been trying to port barebox on sun50i/A64 SoC targeting the pineA64
single board computer and the pinephone from Pine64.

Currently only the SD/MMC driver have been ported. It does work with SD card
and have worked on eMMC in the past but I might have fried my board...

This patch series has some rough edges, I am looking forward you're insights.

Cheers,

Jules Maselbas (11):
  scripts: Add Allwinner eGON image support
  sunxi: introduce mach-sunxi
  ARM: dls: Add ENTRY_HEADER macro to add .text section
  sunxi: Add lowlevel switch to aarch64
  arm: sunxi: Add debug_ll
  clk: Add clock driver for sun50i-a64
  pinctrl: Add sun50i-a64 pinctrl driver
  mci: Add sunxi-mmc driver
  arm: sunxi: Add sun50i SDRAM init
  arm: boards: sunxi: Add initial support for the pinephone
  arm: boards: sunxi: Add pine64 board

 arch/arm/Kconfig                             |   12 +
 arch/arm/Makefile                            |    1 +
 arch/arm/boards/Makefile                     |    2 +
 arch/arm/boards/pine64-pine64/Makefile       |    1 +
 arch/arm/boards/pine64-pine64/lowlevel.c     |  148 +++
 arch/arm/boards/pine64-pinephone/Makefile    |    2 +
 arch/arm/boards/pine64-pinephone/board.c     |    0
 arch/arm/boards/pine64-pinephone/lowlevel.c  |  119 +++
 arch/arm/configs/pinephone_defconfig         |   11 +
 arch/arm/dts/Makefile                        |    2 +
 arch/arm/dts/sun50i-a64-pine64-plus.dts      |   18 +
 arch/arm/dts/sun50i-a64-pinephone-1_2.dts    |    3 +
 arch/arm/include/asm/barebox.lds.h           |    2 +
 arch/arm/include/asm/debug_ll.h              |    2 +
 arch/arm/lib/pbl.lds.S                       |    1 +
 arch/arm/mach-sunxi/Kconfig                  |   51 +
 arch/arm/mach-sunxi/Makefile                 |    6 +
 arch/arm/mach-sunxi/clock_sun6i.h            |  540 ++++++++++
 arch/arm/mach-sunxi/cpu_init.c               |   44 +
 arch/arm/mach-sunxi/ddr3_1333.c              |   85 ++
 arch/arm/mach-sunxi/dram_sunxi_dw.h          |  241 +++++
 arch/arm/mach-sunxi/egon_header.c            |   11 +
 arch/arm/mach-sunxi/lpddr3_stock.c           |   81 ++
 arch/arm/mach-sunxi/rmr_switch.S             |   47 +
 arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c   |    9 +
 arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c |    9 +
 arch/arm/mach-sunxi/sun50i-sdram.c           |  903 ++++++++++++++++
 arch/arm/mach-sunxi/sunxi-sdram.c            | 1007 ++++++++++++++++++
 arch/arm/mach-sunxi/sunxi.c                  |    0
 drivers/clk/Makefile                         |    1 +
 drivers/clk/sunxi/Makefile                   |    2 +
 drivers/clk/sunxi/clk-sun50i-a64.c           |  317 ++++++
 drivers/clk/sunxi/clk-sun50i-a64.h           |   62 ++
 drivers/mci/Kconfig                          |    6 +
 drivers/mci/Makefile                         |    2 +
 drivers/mci/sunxi-mmc-common.c               |  259 +++++
 drivers/mci/sunxi-mmc-pbl.c                  |   81 ++
 drivers/mci/sunxi-mmc.c                      |  173 +++
 drivers/mci/sunxi-mmc.h                      |  225 ++++
 drivers/pinctrl/Kconfig                      |    2 +
 drivers/pinctrl/Makefile                     |    1 +
 drivers/pinctrl/sunxi/Kconfig                |   15 +
 drivers/pinctrl/sunxi/Makefile               |    3 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c   |  593 +++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.c        |  371 +++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.h        |  224 ++++
 images/Makefile                              |    1 +
 images/Makefile.sunxi                        |   32 +
 include/asm-generic/barebox.lds.h            |    4 +
 include/mach/sunxi/barebox.lds.h             |    6 +
 include/mach/sunxi/debug_ll.h                |   35 +
 include/mach/sunxi/egon.h                    |   63 ++
 include/mach/sunxi/init.h                    |   13 +
 include/mach/sunxi/rmr_switch.h              |   10 +
 include/mach/sunxi/sun50i-regs.h             |   36 +
 include/mach/sunxi/sunxi-pinctrl.h           |   13 +
 include/mach/sunxi/xload.h                   |   12 +
 scripts/Kconfig                              |    7 +
 scripts/Makefile                             |    1 +
 scripts/egon_mkimage.c                       |  115 ++
 60 files changed, 6043 insertions(+)
 create mode 100644 arch/arm/boards/pine64-pine64/Makefile
 create mode 100644 arch/arm/boards/pine64-pine64/lowlevel.c
 create mode 100644 arch/arm/boards/pine64-pinephone/Makefile
 create mode 100644 arch/arm/boards/pine64-pinephone/board.c
 create mode 100644 arch/arm/boards/pine64-pinephone/lowlevel.c
 create mode 100644 arch/arm/configs/pinephone_defconfig
 create mode 100644 arch/arm/dts/sun50i-a64-pine64-plus.dts
 create mode 100644 arch/arm/dts/sun50i-a64-pinephone-1_2.dts
 create mode 100644 arch/arm/mach-sunxi/Kconfig
 create mode 100644 arch/arm/mach-sunxi/Makefile
 create mode 100644 arch/arm/mach-sunxi/clock_sun6i.h
 create mode 100644 arch/arm/mach-sunxi/cpu_init.c
 create mode 100644 arch/arm/mach-sunxi/ddr3_1333.c
 create mode 100644 arch/arm/mach-sunxi/dram_sunxi_dw.h
 create mode 100644 arch/arm/mach-sunxi/egon_header.c
 create mode 100644 arch/arm/mach-sunxi/lpddr3_stock.c
 create mode 100644 arch/arm/mach-sunxi/rmr_switch.S
 create mode 100644 arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-sdram.c
 create mode 100644 arch/arm/mach-sunxi/sunxi-sdram.c
 create mode 100644 arch/arm/mach-sunxi/sunxi.c
 create mode 100644 drivers/clk/sunxi/Makefile
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.c
 create mode 100644 drivers/clk/sunxi/clk-sun50i-a64.h
 create mode 100644 drivers/mci/sunxi-mmc-common.c
 create mode 100644 drivers/mci/sunxi-mmc-pbl.c
 create mode 100644 drivers/mci/sunxi-mmc.c
 create mode 100644 drivers/mci/sunxi-mmc.h
 create mode 100644 drivers/pinctrl/sunxi/Kconfig
 create mode 100644 drivers/pinctrl/sunxi/Makefile
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.c
 create mode 100644 drivers/pinctrl/sunxi/pinctrl-sunxi.h
 create mode 100644 images/Makefile.sunxi
 create mode 100644 include/mach/sunxi/barebox.lds.h
 create mode 100644 include/mach/sunxi/debug_ll.h
 create mode 100644 include/mach/sunxi/egon.h
 create mode 100644 include/mach/sunxi/init.h
 create mode 100644 include/mach/sunxi/rmr_switch.h
 create mode 100644 include/mach/sunxi/sun50i-regs.h
 create mode 100644 include/mach/sunxi/sunxi-pinctrl.h
 create mode 100644 include/mach/sunxi/xload.h
 create mode 100644 scripts/egon_mkimage.c

-- 
2.40.0



