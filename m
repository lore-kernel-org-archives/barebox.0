Delivery-date: Thu, 25 May 2023 01:45:13 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAM-00Crf0-OV
	for lore@lore.pengutronix.de; Thu, 25 May 2023 01:45:13 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1yAJ-000740-8D
	for lore@pengutronix.de; Thu, 25 May 2023 01:45:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=czt8i7TVCWoICachXswKvb8HAP8fzmo06R97EFYiz6I=; b=j89qBtyHDS3Otq41IecPu3VrWo
	Una01kKZsrxFqEGnRh+mxeSqJ3AkrofJwEDXbnuPuKoT+KFBzjrX8fsRaz6gcNlvW1RaVQa+TEGSz
	nU1tpU6F8yONMWF6GsTr3Tsz6f+V8wWHbF2hF0OBdr1xCvMsdg9dniom1uCly59EWtzTOfId8tD9k
	Gq276umlRHAHOEE+gxX/IS9Cc0D2z17uC63t5O5PXjvWf4o1tVWbOlOxj5kfT4oPGppVRgbPtlC3Y
	uQHdv0QQtPgbe3x14vPzRb7leNkkDHRa++GuZE0bUY/Ds34gxvcSTVo3wsLokTFsHQiUbacwMSWhi
	FT0p8CMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8z-00EzLZ-13;
	Wed, 24 May 2023 23:43:49 +0000
Received: from relay5-d.mail.gandi.net ([2001:4b98:dc4:8::225])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1y8u-00EzHc-10
	for barebox@lists.infradead.org;
	Wed, 24 May 2023 23:43:46 +0000
Received: (Authenticated sender: jmaselbas@zdiv.net)
	by mail.gandi.net (Postfix) with ESMTPSA id 433A31C0007;
	Wed, 24 May 2023 23:43:35 +0000 (UTC)
From: Jules Maselbas <jmaselbas@zdiv.net>
To: barebox@lists.infradead.org
Cc: Jules Maselbas <jmaselbas@zdiv.net>
Date: Thu, 25 May 2023 01:43:15 +0200
Message-Id: <20230524234328.82741-1-jmaselbas@zdiv.net>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230524_164344_662521_8B43BB5D 
X-CRM114-Status: GOOD (  16.19  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 00/13]  Add support for Allwinner (sunxi) A64 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

Here is the fresh update of patches for running barebox on sunxi soc,
rebased on 2023.05.0.

Main changes since rfc is the addition of an entry in the documentation,
the correction of some typo in both comments and code.

This series still has some rough edges and few `#if 0` still around. I need
a bit more time to decide if such things are really needed... or not.

I would like to get the eMMC working before this gets merged but I don't
know what happened on my board, so I am looking for more testers !

Cheers,

Jules Maselbas (13):
  Documentation: sunxi: Add some documentation
  scripts: Add Allwinner eGON image support
  ARM: sunxi: introduce mach-sunxi
  ARM: lds: Add SoC specific sections to go before .text_head_prologue
  ARM: sunxi: Add lowlevel switch to aarch64
  ARM: sunxi: Add debug_ll
  clk: Add clock driver for sun50i-a64
  pinctrl: Add sun50i-a64 pinctrl driver
  mci: Add sunxi-mmc driver
  ARM: sunxi: Add sun50i SDRAM init
  ARM: boards: sunxi: Add initial support for the pinephone
  ARM: boards: sunxi: Add pine64 board
  ARM: sunxi: xload: Add helpers for chain-loading from SD-card

 Documentation/boards/sunxi.rst               |   95 ++
 arch/arm/Kconfig                             |   14 +
 arch/arm/Makefile                            |    1 +
 arch/arm/boards/Makefile                     |    2 +
 arch/arm/boards/pine64-pine64/Makefile       |    1 +
 arch/arm/boards/pine64-pine64/lowlevel.c     |   70 ++
 arch/arm/boards/pine64-pinephone/Makefile    |    2 +
 arch/arm/boards/pine64-pinephone/board.c     |    0
 arch/arm/boards/pine64-pinephone/lowlevel.c  |  104 ++
 arch/arm/configs/pinephone_defconfig         |   12 +
 arch/arm/dts/Makefile                        |    2 +
 arch/arm/dts/sun50i-a64-pine64-plus.dts      |   16 +
 arch/arm/dts/sun50i-a64-pinephone-1_2.dts    |    3 +
 arch/arm/include/asm/debug_ll.h              |    2 +
 arch/arm/lib/pbl.lds.S                       |    1 +
 arch/arm/mach-sunxi/Kconfig                  |   29 +
 arch/arm/mach-sunxi/Makefile                 |    5 +
 arch/arm/mach-sunxi/clock_sun6i.h            |  540 ++++++++++
 arch/arm/mach-sunxi/cpu_init.c               |   57 +
 arch/arm/mach-sunxi/ddr3_1333.c              |   85 ++
 arch/arm/mach-sunxi/dram_sunxi_dw.h          |  241 +++++
 arch/arm/mach-sunxi/lpddr3_stock.c           |   81 ++
 arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c   |    9 +
 arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c |    9 +
 arch/arm/mach-sunxi/sun50i-sdram.c           |  903 ++++++++++++++++
 arch/arm/mach-sunxi/sunxi-sdram.c            | 1007 ++++++++++++++++++
 arch/arm/mach-sunxi/sunxi.c                  |    0
 arch/arm/mach-sunxi/xload-mmc.c              |   67 ++
 drivers/clk/Makefile                         |    1 +
 drivers/clk/sunxi/Makefile                   |    2 +
 drivers/clk/sunxi/clk-sun50i-a64.c           |  315 ++++++
 drivers/clk/sunxi/clk-sun50i-a64.h           |   62 ++
 drivers/mci/Kconfig                          |    6 +
 drivers/mci/Makefile                         |    2 +
 drivers/mci/sunxi-mmc-common.c               |  259 +++++
 drivers/mci/sunxi-mmc-pbl.c                  |   80 ++
 drivers/mci/sunxi-mmc.c                      |  173 +++
 drivers/mci/sunxi-mmc.h                      |  229 ++++
 drivers/pinctrl/Kconfig                      |    2 +
 drivers/pinctrl/Makefile                     |    1 +
 drivers/pinctrl/sunxi/Kconfig                |   13 +
 drivers/pinctrl/sunxi/Makefile               |    3 +
 drivers/pinctrl/sunxi/pinctrl-sun50i-a64.c   |  594 +++++++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.c        |  371 +++++++
 drivers/pinctrl/sunxi/pinctrl-sunxi.h        |  224 ++++
 images/Makefile                              |    1 +
 images/Makefile.sunxi                        |   32 +
 include/mach/sunxi/debug_ll.h                |   35 +
 include/mach/sunxi/egon.h                    |   59 +
 include/mach/sunxi/init.h                    |   18 +
 include/mach/sunxi/rmr_switch.h              |   50 +
 include/mach/sunxi/sun50i-regs.h             |   43 +
 include/mach/sunxi/sunxi-pinctrl.h           |   76 ++
 include/mach/sunxi/xload.h                   |   14 +
 scripts/Kconfig                              |    7 +
 scripts/Makefile                             |    1 +
 scripts/egon_mkimage.c                       |  122 +++
 57 files changed, 6153 insertions(+)
 create mode 100644 Documentation/boards/sunxi.rst
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
 create mode 100644 arch/arm/mach-sunxi/lpddr3_stock.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-a64-ddr3-init.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-a64-lpddr3-init.c
 create mode 100644 arch/arm/mach-sunxi/sun50i-sdram.c
 create mode 100644 arch/arm/mach-sunxi/sunxi-sdram.c
 create mode 100644 arch/arm/mach-sunxi/sunxi.c
 create mode 100644 arch/arm/mach-sunxi/xload-mmc.c
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
 create mode 100644 include/mach/sunxi/debug_ll.h
 create mode 100644 include/mach/sunxi/egon.h
 create mode 100644 include/mach/sunxi/init.h
 create mode 100644 include/mach/sunxi/rmr_switch.h
 create mode 100644 include/mach/sunxi/sun50i-regs.h
 create mode 100644 include/mach/sunxi/sunxi-pinctrl.h
 create mode 100644 include/mach/sunxi/xload.h
 create mode 100644 scripts/egon_mkimage.c

-- 
2.40.1



