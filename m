Delivery-date: Fri, 03 Mar 2023 10:25:34 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1fR-007NgL-Tp
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:25:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1fJ-0001qw-LC
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:25:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JgsEyxI7bSXv5zHhDkBUm78Am699bDWMnUVhhDMxaPE=; b=2q6vPB5N2f6S9aOtcYjmdgoXum
	jJJ9ioXvhiDFLxTIUW7KtWa/aD6phGQTNqOci3Nax4xeA256qMz48ZyxKiiDXVAqBZmQ1pBQlhRG/
	WEGaoT+3KcUM6bzT8dlxgXt1W7b+htvfPI5p0yieVcXQVQzgptxeOKx6XOsYbB2upx6w+D9Ss024z
	Rkgt0dOuP9lHwBCJ5DvtVD/yLp+cd1njX8b+9dmJ7MYPSaFlKdulZZMaUqFyBK0CvJqUDOWqrg4N0
	SRKiLP9HxaaE/vvhmrfDGEYFeRH6EX3dK/gtih1/kAU6jDfeUs4+mywH6T5anWHUea6lSqIyO50YA
	bNQxyrBw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1c0-005eZ9-9C; Fri, 03 Mar 2023 09:22:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bc-005eJH-7K
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-00008W-Ly; Fri, 03 Mar 2023 10:21:34 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1ba-001Wgj-04; Fri, 03 Mar 2023 10:21:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bZ-00F2Wj-8m; Fri, 03 Mar 2023 10:21:33 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:20:41 +0100
Message-Id: <20230303092131.3063587-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_012137_045935_BB4407FC 
X-CRM114-Status: GOOD (  14.24  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/50] ARM: multi-arch support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This series adds multi-arch support for ARM. The end result are
two new config files: multi_v7_defconfig and multi_v8_defconfig
which build barebox images for:

- i.MX
- Zynqmp
- Rockchip
- OMAP
- bcm283x
- stm32mp
- vexpress

The main part of this series is about moving the
arch/arm/mach-*/include/mach/ directories to include/mach/*/.  The
machine specific include files used to be included with #include
<mach/foo.h>. With multi-arch support this is no longer possible, as
there is no single mach/ anymore.

What's left is mainly to sort out SoC specific initcalls. Many initcalls
assume that they actually run on the SoC they are destined for. For
multi-arch we need to check the SoC type.

I've done the header moving for all archs, but added multi-arch support
for only some archs. For archs supporting multi-image already it's
easy enough to convert to multi-arch, so I'll probably move more
archs over to multi-arch in the next time.

I've done basic testing for i.MX, Rockchip, OMAP, bcm283x and vexpress,
but not yet for stm32mp and Zynqmp. I would appreciate all kinds of
testing feedback for the multi_v[78]_defconfig files.

Sascha

Sascha Hauer (50):
  ARM: i.MX: Move mach header files to include/mach/imx
  ARM: Rockchip: Move mach header files to include/mach/rockchip
  ARM: Zynqmp: Move mach header files to include/mach/zynqmp
  ARM: mvebu: Move mach header files to include/mach/mvebu
  ARM: davinci: Move mach header files to include/mach/davinci
  ARM: bcm283x: Move mach header files to include/mach/bcm283x
  ARM: stm32mp: Move mach header files to include/mach/stm32mp
  ARM: zynq: Move mach header files to include/mach/zynq
  ARM: vexpress: Move mach header files to include/mach/vexpress
  ARM: versatile: Move mach header files to include/mach/versatile
  ARM: layerscape: Move mach header files to include/mach/layerscape
  ARM: tegra: Move mach header files to include/mach/tegra
  ARM: uemd: Move mach header files to include/mach/uemd
  ARM: socfpga: Move mach header files to include/mach/socfpga
  ARM: pxa: Move mach header files to include/mach/pxa
  ARM: omap: Move mach header files to include/mach/omap
  ARM: nomadik: Move mach header files to include/mach/nomadik
  ARM: mxs: Move mach header files to include/mach/mxs
  ARM: ep93xx: Move mach header files to include/mach/ep93xx
  ARM: digic: Move mach header files to include/mach/digic
  ARM: clps711x: Move mach header files to include/mach/clps711x
  ARM: at91: Move mach header files to include/mach/at91
  ARM: Drop mach dir include path
  include/mach/: use unique double inclusion protectors
  ARM: i.MX: Only provide PUTC_LL() when activated
  debug_ll ns16550: Do not define PUTC_LL()
  debug_ll ns16550: Use CONFIG_BAUDRATE
  ARM: Rockchip: Use ns16550 debug_ll helper
  ARM: Rockchip: Only provide PUTC_LL() when activated
  ARM: omap: Use ns16550 debug_ll helper
  ARM: omap: Only provide PUTC_LL() when activated
  ARM: omap: usbboot: Enable USB communication when needed
  ARM: omap: Make multi-arch safe
  ARM: Rockchip: Make safe for multi-arch
  pm_domains: Enable explicitly when we have power-domain providers
  ARM: add multi-arch support
  ARM: omap: Add support for multi-arch
  ARM: zynqmp: Add multi-arch support
  ARM: i.MX: Add missing include
  ARM: i.MX: move board selection into menu
  ARM: stm32mp: Only provide PUTC_LL() when activated
  ARM: stm32mp: Make safe for multi-arch
  ARM: stm32mp: Add multi-arch support
  ARM: vexpress: Drop unnecessary initcall
  ARM: vexpress: Only provide PUTC_LL() when activated
  ARM: vexpress: Add multi-arch support
  ARM: bcm283x: Only provide PUTC_LL() when activated
  ARM: bcm283x: Add multi-arch support
  ARM: Add multi_v7_defconfig
  ARM: Add multi_v8_defconfig

 arch/arm/Kconfig                              | 192 +++++-----
 arch/arm/Makefile                             |  52 ++-
 arch/arm/boards/ac-sxb/board.c                |   2 +-
 arch/arm/boards/ac-sxb/lowlevel.c             |  15 +-
 arch/arm/boards/advantech-mx6/board.c         |   2 +-
 arch/arm/boards/advantech-mx6/lowlevel.c      |   7 +-
 arch/arm/boards/afi-gf/board.c                |   4 +-
 arch/arm/boards/afi-gf/lowlevel.c             |  21 +-
 arch/arm/boards/altera-socdk/board.c          |   2 +-
 .../altera-socdk/iocsr_config_cyclone5.c      |   2 +-
 arch/arm/boards/altera-socdk/lowlevel.c       |   2 +-
 arch/arm/boards/animeo_ip/init.c              |  12 +-
 arch/arm/boards/animeo_ip/lowlevel.c          |   8 +-
 arch/arm/boards/archosg9/board.c              |  20 +-
 arch/arm/boards/archosg9/lowlevel.c           |  12 +-
 arch/arm/boards/archosg9/mux.c                |   6 +-
 arch/arm/boards/at91rm9200ek/init.c           |   8 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |  12 +-
 arch/arm/boards/at91sam9260ek/init.c          |   8 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c      |   8 +-
 arch/arm/boards/at91sam9261ek/init.c          |  10 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |   7 +-
 arch/arm/boards/at91sam9263ek/init.c          |  10 +-
 arch/arm/boards/at91sam9263ek/lowlevel_init.c |   4 +-
 arch/arm/boards/at91sam9263ek/of_init.c       |  10 +-
 arch/arm/boards/at91sam9m10g45ek/init.c       |  10 +-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   7 +-
 arch/arm/boards/at91sam9m10ihd/init.c         |   8 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   9 +-
 arch/arm/boards/at91sam9n12ek/init.c          |  14 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   7 +-
 arch/arm/boards/at91sam9x5ek/init.c           |  14 +-
 arch/arm/boards/at91sam9x5ek/lowlevel.c       |   2 +-
 arch/arm/boards/avnet-zedboard/board.c        |   2 +-
 arch/arm/boards/avnet-zedboard/lowlevel.c     |   4 +-
 .../boards/avnet-zedboard/zedboard.zynqcfg    |   4 +-
 arch/arm/boards/beagle/board.c                |   8 +-
 arch/arm/boards/beagle/lowlevel.c             |  19 +-
 arch/arm/boards/beaglebone/beaglebone.h       |   2 +-
 arch/arm/boards/beaglebone/board.c            |  10 +-
 arch/arm/boards/beaglebone/lowlevel.c         |  19 +-
 .../boards/boundarydevices-nitrogen6/board.c  |   4 +-
 .../flash-header-nitrogen6dl-1g.imxcfg        |   4 +-
 .../flash-header-nitrogen6dl-2g.imxcfg        |   4 +-
 .../flash-header-nitrogen6q-1g.imxcfg         |   4 +-
 .../flash-header-nitrogen6q-2g.imxcfg         |   4 +-
 .../flash-header-nitrogen6qp-max.imxcfg       |   4 +-
 .../boundarydevices-nitrogen6/lowlevel.c      |   4 +-
 arch/arm/boards/ccxmx51/ccxmx51.c             |  12 +-
 arch/arm/boards/ccxmx51/lowlevel.c            |  11 +-
 arch/arm/boards/ccxmx53/board.c               |  12 +-
 arch/arm/boards/ccxmx53/lowlevel.c            |   6 +-
 .../arm/boards/chumby_falconwing/falconwing.c |  10 +-
 arch/arm/boards/chumby_falconwing/lowlevel.c  |   2 +-
 arch/arm/boards/clep7212/lowlevel.c           |   2 +-
 arch/arm/boards/cm-fx6/board.c                |   8 +-
 arch/arm/boards/cm-fx6/lowlevel.c             |  13 +-
 .../boards/crystalfontz-cfa10036/cfa10036.c   |   8 +-
 .../boards/crystalfontz-cfa10036/lowlevel.c   |   2 +-
 arch/arm/boards/datamodul-edm-qmx6/board.c    |  12 +-
 arch/arm/boards/datamodul-edm-qmx6/lowlevel.c |   4 +-
 arch/arm/boards/dfi-fs700-m60/board.c         |   6 +-
 .../flash-header-fs700-m60-6q-micron.imxcfg   |   4 +-
 .../flash-header-fs700-m60-6q-nanya.imxcfg    |   4 +-
 .../flash-header-fs700-m60-6s.imxcfg          |   4 +-
 arch/arm/boards/dfi-fs700-m60/lowlevel.c      |   4 +-
 arch/arm/boards/digi-ccimx6ulsom/board.c      |   4 +-
 arch/arm/boards/digi-ccimx6ulsom/lowlevel.c   |   4 +-
 arch/arm/boards/dss11/init.c                  |  10 +-
 arch/arm/boards/dss11/lowlevel.c              |   9 +-
 arch/arm/boards/duckbill/board.c              |  12 +-
 arch/arm/boards/duckbill/lowlevel.c           |   6 +-
 arch/arm/boards/ebv-socrates/board.c          |   2 +-
 .../ebv-socrates/iocsr_config_cyclone5.c      |   2 +-
 arch/arm/boards/ebv-socrates/lowlevel.c       |   2 +-
 arch/arm/boards/edb93xx/edb93xx.c             |   2 +-
 arch/arm/boards/edb93xx/flash_cfg.c           |   2 +-
 arch/arm/boards/edb93xx/pll_cfg.h             |   2 +-
 arch/arm/boards/edb93xx/sdram_cfg.h           |   2 +-
 arch/arm/boards/efika-mx-smartbook/board.c    |  14 +-
 arch/arm/boards/efika-mx-smartbook/lowlevel.c |   6 +-
 arch/arm/boards/element14-warp7/board.c       |   4 +-
 .../flash-header-mx7-warp.imxcfg              |   2 +-
 arch/arm/boards/element14-warp7/lowlevel.c    |   5 +-
 arch/arm/boards/eltec-hipercam/board.c        |   2 +-
 .../flash-header-eltec-hipercam.imxcfg        |   4 +-
 arch/arm/boards/eltec-hipercam/lowlevel.c     |   3 +-
 arch/arm/boards/embedsky-e9/board.c           |  16 +-
 .../boards/embedsky-e9/flash-header-e9.imxcfg |   4 +-
 arch/arm/boards/embedsky-e9/lowlevel.c        |   2 +-
 arch/arm/boards/embest-marsboard/board.c      |   2 +-
 arch/arm/boards/embest-marsboard/lowlevel.c   |   7 +-
 arch/arm/boards/embest-riotboard/board.c      |   8 +-
 .../flash-header-embest-riotboard.imxcfg      |   4 +-
 arch/arm/boards/embest-riotboard/lowlevel.c   |   3 +-
 arch/arm/boards/enclustra-aa1/board.c         |   2 +-
 arch/arm/boards/enclustra-aa1/lowlevel.c      |  18 +-
 .../enclustra-aa1/pinmux-config-arria10.c     |   2 +-
 .../boards/enclustra-aa1/pll-config-arria10.c |   2 +-
 arch/arm/boards/freescale-mx23-evk/lowlevel.c |   2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |   8 +-
 arch/arm/boards/freescale-mx28-evk/board.c    |   2 +-
 arch/arm/boards/freescale-mx28-evk/lowlevel.c |   6 +-
 .../arm/boards/freescale-mx51-babbage/board.c |  18 +-
 .../boards/freescale-mx51-babbage/lowlevel.c  |   9 +-
 .../arm/boards/freescale-mx51-babbage/power.c |   4 +-
 arch/arm/boards/freescale-mx53-qsb/board.c    |  12 +-
 arch/arm/boards/freescale-mx53-qsb/lowlevel.c |   6 +-
 arch/arm/boards/freescale-mx53-vmx53/board.c  |   4 +-
 .../boards/freescale-mx53-vmx53/lowlevel.c    |   4 +-
 .../boards/freescale-mx6-sabrelite/board.c    |  16 +-
 .../flash-header-mx6-sabrelite.imxcfg         |   4 +-
 .../boards/freescale-mx6-sabrelite/lowlevel.c |   8 +-
 arch/arm/boards/freescale-mx6-sabresd/board.c |  14 +-
 .../boards/freescale-mx6-sabresd/lowlevel.c   |   5 +-
 .../boards/freescale-mx6sx-sabresdb/board.c   |  12 +-
 .../freescale-mx6sx-sabresdb/lowlevel.c       |   3 +-
 arch/arm/boards/freescale-mx7-sabresd/board.c |   2 +-
 .../flash-header-mx7-sabresd.imxcfg           |   2 +-
 .../boards/freescale-mx7-sabresd/lowlevel.c   |  11 +-
 .../flash-header-vf610-twr.imxcfg             |  12 +-
 .../arm/boards/freescale-vf610-twr/lowlevel.c |  11 +-
 arch/arm/boards/gateworks-ventana/board.c     |   4 +-
 .../flash-header-ventana-quad-1gx64.imxcfg    |   4 +-
 arch/arm/boards/gateworks-ventana/lowlevel.c  |   2 +-
 arch/arm/boards/gk802/board.c                 |   6 +-
 arch/arm/boards/gk802/flash-header.imxcfg     |   4 +-
 arch/arm/boards/gk802/lowlevel.c              |   2 +-
 .../boards/globalscale-guruplug/lowlevel.c    |   4 +-
 .../arm/boards/globalscale-mirabox/lowlevel.c |   4 +-
 arch/arm/boards/grinn-liteboard/board.c       |   4 +-
 arch/arm/boards/grinn-liteboard/lowlevel.c    |   5 +-
 arch/arm/boards/guf-santaro/board.c           |   8 +-
 .../boards/guf-santaro/flash-header.imxcfg    |   4 +-
 arch/arm/boards/guf-santaro/lowlevel.c        |   7 +-
 arch/arm/boards/guf-vincell/board.c           |  10 +-
 arch/arm/boards/guf-vincell/lowlevel.c        |  15 +-
 arch/arm/boards/haba-knx/init.c               |  12 +-
 arch/arm/boards/haba-knx/lowlevel.c           |   9 +-
 .../boards/imx233-olinuxino/imx23-olinuxino.c |   8 +-
 arch/arm/boards/imx233-olinuxino/lowlevel.c   |   6 +-
 arch/arm/boards/innocomm-imx8mm-wb15/board.c  |   2 +-
 .../boards/innocomm-imx8mm-wb15/lowlevel.c    |  13 +-
 .../flash-header-tqma7d.imxcfg                |   2 +-
 .../kamstrup-mx7-concentrator/lowlevel.c      |  11 +-
 arch/arm/boards/karo-tx25/board.c             |  14 +-
 arch/arm/boards/karo-tx25/lowlevel.c          |   6 +-
 arch/arm/boards/karo-tx28/lowlevel.c          |   6 +-
 arch/arm/boards/karo-tx28/tx28-stk5.c         |  10 +-
 arch/arm/boards/karo-tx28/tx28.c              |   6 +-
 arch/arm/boards/karo-tx53/board.c             |  16 +-
 arch/arm/boards/karo-tx53/lowlevel.c          |   9 +-
 arch/arm/boards/karo-tx6x/board.c             |   4 +-
 .../karo-tx6x/flash-header-tx6dl-1g.imxcfg    |   4 +-
 .../karo-tx6x/flash-header-tx6dl-512m.imxcfg  |   4 +-
 .../karo-tx6x/flash-header-tx6q-1g.imxcfg     |   4 +-
 .../karo-tx6x/flash-header-tx6qp-2g.imxcfg    |   4 +-
 arch/arm/boards/karo-tx6x/lowlevel.c          |   5 +-
 arch/arm/boards/kindle-mx50/board.c           |   8 +-
 arch/arm/boards/kindle-mx50/lowlevel.c        |   4 +-
 arch/arm/boards/kontron-samx6i/board.c        |   4 +-
 arch/arm/boards/kontron-samx6i/lowlevel.c     |   5 +-
 arch/arm/boards/kontron-samx6i/mem.c          |   6 +-
 arch/arm/boards/lenovo-ix4-300d/lowlevel.c    |   4 +-
 arch/arm/boards/ls1046ardb/board.c            |   4 +-
 arch/arm/boards/ls1046ardb/lowlevel.c         |   8 +-
 arch/arm/boards/lubbock/board.c               |  10 +-
 arch/arm/boards/lubbock/lowlevel.c            |   4 +-
 arch/arm/boards/lxa-mc1/board.c               |   2 +-
 arch/arm/boards/lxa-mc1/lowlevel.c            |   2 +-
 arch/arm/boards/mainstone/board.c             |  10 +-
 arch/arm/boards/mainstone/lowlevel.c          |   4 +-
 .../boards/marvell-armada-xp-db/lowlevel.c    |   4 +-
 .../boards/marvell-armada-xp-gp/lowlevel.c    |   4 +-
 arch/arm/boards/meerkat96/lowlevel.c          |   8 +-
 .../boards/microchip-ksz9477-evb/lowlevel.c   |  10 +-
 arch/arm/boards/mioa701/board.c               |  10 +-
 arch/arm/boards/mnt-reform/board.c            |   2 +-
 .../mnt-reform/flash-header-mnt-reform.imxcfg |   2 +-
 arch/arm/boards/mnt-reform/lowlevel.c         |  17 +-
 arch/arm/boards/module-mb7707/board.c         |   2 +-
 arch/arm/boards/myirtech-x335x/board.c        |   2 +-
 arch/arm/boards/myirtech-x335x/lowlevel.c     |  15 +-
 arch/arm/boards/netgear-rn104/lowlevel.c      |   4 +-
 arch/arm/boards/netgear-rn2120/lowlevel.c     |   6 +-
 arch/arm/boards/nhk8815/setup.c               |   8 +-
 arch/arm/boards/novena/lowlevel.c             |  13 +-
 arch/arm/boards/nvidia-beaver/board.c         |   2 +-
 arch/arm/boards/nvidia-beaver/entry.c         |   4 +-
 arch/arm/boards/nvidia-jetson-tk1/board.c     |   2 +-
 arch/arm/boards/nvidia-jetson-tk1/entry.c     |   4 +-
 arch/arm/boards/nxp-imx6ull-evk/board.c       |   2 +-
 arch/arm/boards/nxp-imx6ull-evk/lowlevel.c    |   7 +-
 arch/arm/boards/nxp-imx8mm-evk/board.c        |   2 +-
 arch/arm/boards/nxp-imx8mm-evk/lowlevel.c     |  13 +-
 arch/arm/boards/nxp-imx8mn-evk/board.c        |   2 +-
 arch/arm/boards/nxp-imx8mn-evk/lowlevel.c     |  15 +-
 arch/arm/boards/nxp-imx8mp-evk/board.c        |   4 +-
 arch/arm/boards/nxp-imx8mp-evk/lowlevel.c     |  15 +-
 arch/arm/boards/nxp-imx8mq-evk/board.c        |   2 +-
 .../flash-header-imx8mq-evk.imxcfg            |   2 +-
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c     |  13 +-
 arch/arm/boards/omap343xdsp/board.c           |   6 +-
 arch/arm/boards/omap343xdsp/lowlevel.c        |  16 +-
 arch/arm/boards/omap3evm/board.c              |   8 +-
 arch/arm/boards/omap3evm/lowlevel.c           |  16 +-
 arch/arm/boards/panda/board.c                 |  12 +-
 arch/arm/boards/panda/lowlevel.c              |  12 +-
 arch/arm/boards/panda/mux.c                   |   6 +-
 .../boards/phytec-phycard-imx27/lowlevel.c    |   8 +-
 arch/arm/boards/phytec-phycard-imx27/pca100.c |  12 +-
 .../boards/phytec-phycard-omap3/lowlevel.c    |  16 +-
 .../boards/phytec-phycard-omap3/pca-a-l1.c    |  14 +-
 .../boards/phytec-phycard-omap4/lowlevel.c    |  12 +-
 arch/arm/boards/phytec-phycard-omap4/mux.c    |   6 +-
 .../boards/phytec-phycard-omap4/pca-a-xl2.c   |  18 +-
 .../boards/phytec-phycore-imx27/lowlevel.c    |   8 +-
 arch/arm/boards/phytec-phycore-imx27/pcm038.c |  10 +-
 arch/arm/boards/phytec-phycore-imx27/pcm970.c |   4 +-
 arch/arm/boards/phytec-phycore-imx7/board.c   |   6 +-
 .../flash-header-phytec-phycore-imx7.imxcfg   |   2 +-
 .../arm/boards/phytec-phycore-imx7/lowlevel.c |   4 +-
 .../boards/phytec-phycore-omap4460/board.c    |  20 +-
 .../boards/phytec-phycore-omap4460/lowlevel.c |  12 +-
 arch/arm/boards/phytec-phycore-omap4460/mux.c |   6 +-
 arch/arm/boards/phytec-phycore-pxa270/board.c |   8 +-
 .../phytec-phycore-pxa270/lowlevel_init.S     |   6 +-
 .../boards/phytec-phycore-stm32mp1/lowlevel.c |   2 +-
 arch/arm/boards/phytec-som-am335x/board.c     |   6 +-
 arch/arm/boards/phytec-som-am335x/lowlevel.c  |  19 +-
 arch/arm/boards/phytec-som-imx6/board.c       |   6 +-
 ...sh-header-phytec-pcaaxl3-1gib-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pcaaxl3-1gib.imxcfg   |   2 +-
 .../flash-header-phytec-pcaaxl3-2gib.imxcfg   |   2 +-
 .../flash-header-phytec-pcaaxl3.h             |   4 +-
 .../flash-header-phytec-pcl063ul-512mb.imxcfg |   2 +-
 ...flash-header-phytec-pcl063ull-256mb.imxcfg |   2 +-
 ...flash-header-phytec-pcl063ull-512mb.imxcfg |   2 +-
 .../flash-header-phytec-pcm058-1gib.imxcfg    |   2 +-
 .../flash-header-phytec-pcm058-2gib.imxcfg    |   2 +-
 .../flash-header-phytec-pcm058.h              |   4 +-
 ...h-header-phytec-pcm058dl-1gib-32bit.imxcfg |   2 +-
 .../flash-header-phytec-pcm058dl-1gib.imxcfg  |   2 +-
 .../flash-header-phytec-pcm058dl-256mb.imxcfg |   2 +-
 .../flash-header-phytec-pcm058dl-512mb.imxcfg |   2 +-
 .../flash-header-phytec-pcm058dl.h            |   4 +-
 .../flash-header-phytec-pcm058qp-1gib.imxcfg  |   2 +-
 ...ash-header-phytec-pfla02-1gib-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pfla02-1gib.imxcfg    |   2 +-
 .../flash-header-phytec-pfla02-2gib.imxcfg    |   2 +-
 .../flash-header-phytec-pfla02-4gib.imxcfg    |   2 +-
 ...sh-header-phytec-pfla02-512mb-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pfla02.h              |   4 +-
 ...h-header-phytec-pfla02dl-1gib-1bank.imxcfg |   2 +-
 .../flash-header-phytec-pfla02dl-1gib.imxcfg  |   2 +-
 .../flash-header-phytec-pfla02dl.h            |   4 +-
 ...h-header-phytec-pfla02s-128mb-1bank.imxcfg |   2 +-
 ...h-header-phytec-pfla02s-256mb-1bank.imxcfg |   2 +-
 ...h-header-phytec-pfla02s-512mb-1bank.imxcfg |   2 +-
 arch/arm/boards/phytec-som-imx6/lowlevel.c    |   3 +-
 arch/arm/boards/phytec-som-imx8mq/board.c     |   2 +-
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c  |  13 +-
 arch/arm/boards/phytec-som-rk3288/lowlevel.c  |   9 +-
 arch/arm/boards/pine64-quartz64/lowlevel.c    |   6 +-
 .../boards/plathome-openblocks-a6/lowlevel.c  |   4 +-
 .../boards/plathome-openblocks-ax3/lowlevel.c |   4 +-
 arch/arm/boards/pm9261/init.c                 |  10 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |   7 +-
 arch/arm/boards/pm9263/init.c                 |  10 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |   7 +-
 arch/arm/boards/pm9g45/init.c                 |  10 +-
 arch/arm/boards/pm9g45/lowlevel.c             |   8 +-
 arch/arm/boards/polyhex-debix/board.c         |   4 +-
 arch/arm/boards/polyhex-debix/lowlevel.c      |  15 +-
 arch/arm/boards/protonic-imx6/board.c         |   6 +-
 arch/arm/boards/protonic-imx6/lowlevel.c      |   4 +-
 arch/arm/boards/protonic-imx8m/board.c        |   2 +-
 .../boards/protonic-imx8m/lowlevel-prt8mm.c   |  15 +-
 arch/arm/boards/protonic-stm32mp1/board.c     |   2 +-
 arch/arm/boards/protonic-stm32mp1/lowlevel.c  |   2 +-
 arch/arm/boards/qil-a926x/init.c              |  12 +-
 arch/arm/boards/qil-a926x/lowlevel.c          |   9 +-
 arch/arm/boards/radxa-rock/board.c            |   2 +-
 arch/arm/boards/radxa-rock3/board.c           |   2 +-
 arch/arm/boards/radxa-rock3/lowlevel.c        |   6 +-
 arch/arm/boards/raspberry-pi/lowlevel.c       |   5 +-
 arch/arm/boards/raspberry-pi/mbox-helpers.c   |   2 +-
 arch/arm/boards/raspberry-pi/rpi-common.c     |  12 +-
 arch/arm/boards/reflex-achilles/board.c       |   2 +-
 arch/arm/boards/reflex-achilles/lowlevel.c    |  16 +-
 .../reflex-achilles/pinmux-config-arria10.c   |   2 +-
 .../reflex-achilles/pll-config-arria10.c      |   2 +-
 .../boards/rockchip-rk3568-bpi-r2pro/board.c  |   2 +-
 .../rockchip-rk3568-bpi-r2pro/lowlevel.c      |   6 +-
 arch/arm/boards/rockchip-rk3568-evb/board.c   |   2 +-
 .../arm/boards/rockchip-rk3568-evb/lowlevel.c |   6 +-
 .../arm/boards/sama5d27-giantboard/lowlevel.c |  10 +-
 arch/arm/boards/sama5d27-som1/lowlevel.c      |  10 +-
 arch/arm/boards/sama5d3_xplained/board.c      |   4 +-
 arch/arm/boards/sama5d3_xplained/lowlevel.c   |  10 +-
 arch/arm/boards/sama5d3xek/init.c             |  14 +-
 arch/arm/boards/sama5d3xek/lowlevel.c         |   4 +-
 arch/arm/boards/sama5d4_xplained/lowlevel.c   |   4 +-
 .../sama5d4_xplained/sama5d4_xplained.c       |  14 +-
 arch/arm/boards/sama5d4ek/lowlevel.c          |   4 +-
 arch/arm/boards/sama5d4ek/sama5d4ek.c         |  14 +-
 arch/arm/boards/scb9328/lowlevel.c            |   8 +-
 arch/arm/boards/scb9328/lowlevel_init.S       |   2 +-
 arch/arm/boards/scb9328/scb9328.c             |   8 +-
 arch/arm/boards/seeed-odyssey/board.c         |   2 +-
 arch/arm/boards/seeed-odyssey/lowlevel.c      |   2 +-
 arch/arm/boards/skov-arm9cpu/board.c          |  10 +-
 arch/arm/boards/skov-arm9cpu/lowlevel.c       |   4 +-
 arch/arm/boards/skov-imx6/board.c             |   2 +-
 arch/arm/boards/skov-imx6/lowlevel.c          |  17 +-
 arch/arm/boards/skov-imx6/version.c           |   6 +-
 arch/arm/boards/solidrun-cubox/board.c        |   2 +-
 arch/arm/boards/solidrun-cubox/lowlevel.c     |   4 +-
 arch/arm/boards/solidrun-microsom/board.c     |   8 +-
 .../flash-header-microsom-i1.imxcfg           |   4 +-
 .../flash-header-microsom-i2.imxcfg           |   4 +-
 .../flash-header-microsom-i2eX.imxcfg         |   4 +-
 .../flash-header-microsom-i4.imxcfg           |   4 +-
 arch/arm/boards/solidrun-microsom/lowlevel.c  |   4 +-
 arch/arm/boards/stm32mp13xx-dk/lowlevel.c     |   2 +-
 arch/arm/boards/stm32mp15x-ev1/board.c        |   2 +-
 arch/arm/boards/stm32mp15x-ev1/lowlevel.c     |   2 +-
 arch/arm/boards/stm32mp15xx-dkx/board.c       |   2 +-
 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c    |   4 +-
 .../arm/boards/technexion-pico-hobbit/board.c |   8 +-
 .../boards/technexion-pico-hobbit/lowlevel.c  |   7 +-
 arch/arm/boards/technexion-wandboard/board.c  |   8 +-
 .../boards/technexion-wandboard/lowlevel.c    |  13 +-
 arch/arm/boards/telit-evk-pro3/init.c         |   8 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |   9 +-
 arch/arm/boards/terasic-de0-nano-soc/board.c  |   2 +-
 .../iocsr_config_cyclone5.c                   |   2 +-
 .../boards/terasic-de0-nano-soc/lowlevel.c    |   2 +-
 arch/arm/boards/terasic-de10-nano/board.c     |   2 +-
 .../terasic-de10-nano/iocsr_config_cyclone5.c |   2 +-
 arch/arm/boards/terasic-de10-nano/lowlevel.c  |   2 +-
 .../terasic-sockit/iocsr_config_cyclone5.c    |   2 +-
 arch/arm/boards/terasic-sockit/lowlevel.c     |   2 +-
 arch/arm/boards/tny-a926x/init.c              |  14 +-
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c |   9 +-
 .../boards/tny-a926x/tny_a9263_bootstrap.c    |   2 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |   7 +-
 arch/arm/boards/toradex-colibri-t20/entry.c   |   2 +-
 arch/arm/boards/toshiba-ac100/board.c         |   2 +-
 arch/arm/boards/toshiba-ac100/entry.c         |   2 +-
 arch/arm/boards/tqma53/board.c                |   2 +-
 arch/arm/boards/tqma53/lowlevel.c             |   8 +-
 arch/arm/boards/tqma6ulx/board.c              |   4 +-
 .../flash-header-imx6ul-tqma6ulx.imxcfg       |   2 +-
 arch/arm/boards/tqma6ulx/lowlevel.c           |   7 +-
 arch/arm/boards/tqma6x/board.c                |  12 +-
 .../boards/tqma6x/flash-header-tqma6dl.imxcfg |   4 +-
 .../boards/tqma6x/flash-header-tqma6q.imxcfg  |   4 +-
 arch/arm/boards/tqma6x/lowlevel.c             |   3 +-
 arch/arm/boards/tqma8mpxl/board.c             |   4 +-
 arch/arm/boards/tqma8mpxl/lowlevel.c          |  15 +-
 arch/arm/boards/tqmls1046a/board.c            |   4 +-
 arch/arm/boards/tqmls1046a/lowlevel.c         |   8 +-
 arch/arm/boards/turris-omnia/lowlevel.c       |   4 +-
 arch/arm/boards/udoo-neo/board.c              |   4 +-
 arch/arm/boards/udoo-neo/lowlevel.c           |   5 +-
 arch/arm/boards/udoo/board.c                  |  16 +-
 .../boards/udoo/flash-header-mx6-udoo.imxcfg  |   4 +-
 arch/arm/boards/udoo/lowlevel.c               |   2 +-
 arch/arm/boards/usb-a926x/init.c              |  16 +-
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |   9 +-
 .../boards/usb-a926x/usb_a9263_bootstrap.c    |   2 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |   7 +-
 arch/arm/boards/usi-topkick/lowlevel.c        |   4 +-
 .../variscite-dt8mcustomboard-imx8mp/board.c  |   4 +-
 .../lowlevel.c                                |  15 +-
 arch/arm/boards/variscite-mx6/board.c         |  10 +-
 .../flash-header-variscite.imxcfg             |   4 +-
 arch/arm/boards/variscite-mx6/lowlevel.c      |   3 +-
 arch/arm/boards/versatile/versatilepb.c       |   4 +-
 arch/arm/boards/vexpress/init.c               |   2 +-
 arch/arm/boards/vscom-baltos/board.c          |  12 +-
 arch/arm/boards/vscom-baltos/lowlevel.c       |  19 +-
 arch/arm/boards/wago-pfc-am35xx/board-mlo.c   |  10 +-
 arch/arm/boards/wago-pfc-am35xx/board.c       |   2 +-
 arch/arm/boards/wago-pfc-am35xx/lowlevel.c    |  23 +-
 arch/arm/boards/webasto-ccbv2/board.c         |   4 +-
 ...ash-header-imx6ul-webasto-ccbv2-256.imxcfg |   2 +-
 ...ash-header-imx6ul-webasto-ccbv2-512.imxcfg |   2 +-
 arch/arm/boards/webasto-ccbv2/lowlevel.c      |   7 +-
 arch/arm/boards/xilinx-zcu104/board.c         |   2 +-
 arch/arm/boards/xilinx-zcu106/board.c         |   2 +-
 arch/arm/boards/zii-imx51-rdu1/board.c        |   4 +-
 arch/arm/boards/zii-imx51-rdu1/lowlevel.c     |   9 +-
 arch/arm/boards/zii-imx6q-rdu2/board.c        |   4 +-
 arch/arm/boards/zii-imx6q-rdu2/lowlevel.c     |  11 +-
 arch/arm/boards/zii-imx7d-dev/board.c         |   4 +-
 .../flash-header-zii-imx7d-dev.imxcfg         |   2 +-
 arch/arm/boards/zii-imx7d-dev/lowlevel.c      |  10 +-
 arch/arm/boards/zii-imx8mq-dev/board.c        |   2 +-
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c     |  13 +-
 arch/arm/boards/zii-vf610-dev/board.c         |   2 +-
 .../flash-header-zii-vf610-dev.imxcfg         |  12 +-
 arch/arm/boards/zii-vf610-dev/lowlevel.c      |  11 +-
 arch/arm/boards/zylonite/board.c              |   6 +-
 arch/arm/configs/am335x_mlo_defconfig         |   2 +-
 .../arm/configs/am35xx_pfc200_xload_defconfig |   2 +-
 arch/arm/configs/animeo_ip_defconfig          |   1 +
 arch/arm/configs/archosg9_defconfig           |   2 +-
 arch/arm/configs/archosg9_xload_defconfig     |   2 +-
 arch/arm/configs/at91_multi_defconfig         |   1 +
 arch/arm/configs/at91rm9200ek_defconfig       |   3 +-
 arch/arm/configs/at91sam9260ek_defconfig      |   1 +
 .../configs/at91sam9261ek_bootstrap_defconfig |   1 +
 arch/arm/configs/at91sam9261ek_defconfig      |   1 +
 .../at91sam9261ek_first_stage_defconfig       |   1 +
 arch/arm/configs/at91sam9g10ek_defconfig      |   1 +
 arch/arm/configs/at91sam9g20ek_defconfig      |   1 +
 arch/arm/configs/at91sam9m10g45ek_defconfig   |   1 +
 arch/arm/configs/at91sam9m10ihd_defconfig     |   1 +
 arch/arm/configs/at91sam9n12ek_defconfig      |   1 +
 arch/arm/configs/dss11_defconfig              |   1 +
 arch/arm/configs/haba_knx_lite_defconfig      |   1 +
 arch/arm/configs/multi_v7_defconfig           | 361 ++++++++++++++++++
 arch/arm/configs/multi_v8_defconfig           | 205 ++++++++++
 .../omap3430_sdp3430_per_uart_defconfig       |   2 +-
 arch/arm/configs/omap3530_beagle_defconfig    |   2 +-
 .../omap3530_beagle_per_uart_defconfig        |   2 +-
 .../configs/omap3530_beagle_xload_defconfig   |   2 +-
 arch/arm/configs/omap3_evm_defconfig          |   2 +-
 arch/arm/configs/omap_defconfig               |   2 +-
 arch/arm/configs/panda_defconfig              |   2 +-
 arch/arm/configs/panda_xload_defconfig        |   2 +-
 .../phytec-phycard-omap3-xload_defconfig      |   2 +-
 .../configs/phytec-phycard-omap3_defconfig    |   2 +-
 .../phytec-phycard-omap4-xload_defconfig      |   2 +-
 .../configs/phytec-phycard-omap4_defconfig    |   2 +-
 ...hytec-phycore-omap4460-xload-mmc_defconfig |   2 +-
 ...ytec-phycore-omap4460-xload-nand_defconfig |   2 +-
 .../configs/phytec-phycore-omap4460_defconfig |   2 +-
 arch/arm/configs/pm9261_defconfig             |   1 +
 arch/arm/configs/pm9263_defconfig             |   1 +
 arch/arm/configs/pm9g45_defconfig             |   1 +
 arch/arm/configs/qil_a9260_defconfig          |   1 +
 arch/arm/configs/qil_a9g20_defconfig          |   1 +
 arch/arm/configs/sama5d3xek_defconfig         |   1 +
 arch/arm/configs/sama5d4_xplained_defconfig   |   1 +
 arch/arm/configs/sama5d4ek_defconfig          |   1 +
 arch/arm/configs/telit_evk_pro3_defconfig     |   1 +
 arch/arm/configs/tny_a9260_defconfig          |   1 +
 .../arm/configs/tny_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/tny_a9263_defconfig          |   1 +
 arch/arm/configs/tny_a9g20_defconfig          |   1 +
 arch/arm/configs/usb_a9260_defconfig          |   1 +
 .../arm/configs/usb_a9263_bootstrap_defconfig |   1 +
 arch/arm/configs/usb_a9263_defconfig          |   1 +
 arch/arm/configs/usb_a9g20_defconfig          |   1 +
 arch/arm/include/asm/barebox.lds.h            |   2 +-
 arch/arm/include/asm/debug_ll.h               |  62 ++-
 arch/arm/mach-at91/aic.c                      |   2 +-
 arch/arm/mach-at91/at91_pmc_ll.c              |   8 +-
 arch/arm/mach-at91/at91rm9200.c               |   4 +-
 arch/arm/mach-at91/at91rm9200_devices.c       |  10 +-
 arch/arm/mach-at91/at91rm9200_time.c          |   4 +-
 arch/arm/mach-at91/at91sam9260.c              |   8 +-
 arch/arm/mach-at91/at91sam9260_devices.c      |  16 +-
 arch/arm/mach-at91/at91sam9261.c              |   8 +-
 arch/arm/mach-at91/at91sam9261_devices.c      |  16 +-
 arch/arm/mach-at91/at91sam9263.c              |   8 +-
 arch/arm/mach-at91/at91sam9263_devices.c      |  14 +-
 arch/arm/mach-at91/at91sam9_reset.S           |   4 +-
 arch/arm/mach-at91/at91sam9_rst.c             |   2 +-
 arch/arm/mach-at91/at91sam9_sdramc_ll.c       |   4 +-
 arch/arm/mach-at91/at91sam9_xload_mmc.c       |  14 +-
 arch/arm/mach-at91/at91sam9g45.c              |  10 +-
 arch/arm/mach-at91/at91sam9g45_devices.c      |  14 +-
 arch/arm/mach-at91/at91sam9g45_reset.S        |   4 +-
 arch/arm/mach-at91/at91sam9n12.c              |  10 +-
 arch/arm/mach-at91/at91sam9n12_devices.c      |  14 +-
 arch/arm/mach-at91/at91sam9x5.c               |   6 +-
 arch/arm/mach-at91/at91sam9x5_devices.c       |  14 +-
 arch/arm/mach-at91/bootm-barebox.c            |   2 +-
 arch/arm/mach-at91/bootstrap.c                |   2 +-
 arch/arm/mach-at91/clock.c                    |   8 +-
 arch/arm/mach-at91/ddramc.c                   |   8 +-
 arch/arm/mach-at91/ddramc_ll.c                |   6 +-
 arch/arm/mach-at91/early_udelay.c             |   8 +-
 arch/arm/mach-at91/matrix.c                   |   4 +-
 arch/arm/mach-at91/sam9263_ll.c               |  10 +-
 arch/arm/mach-at91/sam9_smc.c                 |   6 +-
 arch/arm/mach-at91/sama5_bootsource.c         |   2 +-
 arch/arm/mach-at91/sama5d2.c                  |   6 +-
 arch/arm/mach-at91/sama5d2_ll.c               |  14 +-
 arch/arm/mach-at91/sama5d3.c                  |  10 +-
 arch/arm/mach-at91/sama5d3_devices.c          |  14 +-
 arch/arm/mach-at91/sama5d3_ll.c               |   6 +-
 arch/arm/mach-at91/sama5d4.c                  |  10 +-
 arch/arm/mach-at91/sama5d4_devices.c          |  14 +-
 arch/arm/mach-at91/setup.c                    |  10 +-
 arch/arm/mach-at91/xload-mmc.c                |  12 +-
 arch/arm/mach-bcm283x/core.c                  |   2 +-
 arch/arm/mach-bcm283x/mbox.c                  |   4 +-
 arch/arm/mach-clps711x/clock.c                |   2 +-
 arch/arm/mach-clps711x/common.c               |   2 +-
 arch/arm/mach-clps711x/devices.c              |   4 +-
 arch/arm/mach-clps711x/lowlevel.c             |   2 +-
 arch/arm/mach-davinci/time.c                  |   2 +-
 arch/arm/mach-ep93xx/clocksource.c            |   2 +-
 arch/arm/mach-ep93xx/gpio.c                   |   2 +-
 arch/arm/mach-ep93xx/led.c                    |   2 +-
 arch/arm/mach-ep93xx/lowlevel_init.S          |   2 +-
 arch/arm/mach-imx/Kconfig                     |   4 +-
 arch/arm/mach-imx/atf.c                       |   9 +-
 arch/arm/mach-imx/boot.c                      |  30 +-
 arch/arm/mach-imx/bootrom-cmd.c               |   4 +-
 arch/arm/mach-imx/cpu_init.c                  |   8 +-
 arch/arm/mach-imx/devices.c                   |   2 +-
 arch/arm/mach-imx/esdctl-v4.c                 |   4 +-
 arch/arm/mach-imx/esdctl.c                    |  30 +-
 arch/arm/mach-imx/external-nand-boot.c        |  16 +-
 arch/arm/mach-imx/iim.c                       |  10 +-
 arch/arm/mach-imx/imx-bbu-external-nand.c     |   4 +-
 arch/arm/mach-imx/imx-bbu-internal.c          |   4 +-
 arch/arm/mach-imx/imx.c                       |   6 +-
 arch/arm/mach-imx/imx1.c                      |  10 +-
 arch/arm/mach-imx/imx21.c                     |   8 +-
 arch/arm/mach-imx/imx25.c                     |   8 +-
 arch/arm/mach-imx/imx27.c                     |  10 +-
 arch/arm/mach-imx/imx31.c                     |   6 +-
 arch/arm/mach-imx/imx35.c                     |  10 +-
 arch/arm/mach-imx/imx5.c                      |   4 +-
 arch/arm/mach-imx/imx50.c                     |  14 +-
 arch/arm/mach-imx/imx51.c                     |  14 +-
 arch/arm/mach-imx/imx53.c                     |  14 +-
 arch/arm/mach-imx/imx6-mmdc.c                 |   6 +-
 arch/arm/mach-imx/imx6.c                      |  18 +-
 arch/arm/mach-imx/imx7.c                      |  13 +-
 arch/arm/mach-imx/imx8m.c                     |  19 +-
 arch/arm/mach-imx/nand.c                      |  12 +-
 arch/arm/mach-imx/romapi.c                    |   8 +-
 arch/arm/mach-imx/tzasc.c                     |   4 +-
 arch/arm/mach-imx/vf610.c                     |  10 +-
 arch/arm/mach-imx/xload-common.c              |   6 +-
 arch/arm/mach-imx/xload-gpmi-nand.c           |   8 +-
 arch/arm/mach-imx/xload-imx-nand.c            |   8 +-
 arch/arm/mach-imx/xload-spi.c                 |   6 +-
 arch/arm/mach-layerscape/boot.c               |   2 +-
 arch/arm/mach-layerscape/errata.c             |   4 +-
 arch/arm/mach-layerscape/lowlevel-ls1046a.c   |   4 +-
 arch/arm/mach-layerscape/ppa.c                |   2 +-
 arch/arm/mach-layerscape/xload-qspi.c         |   4 +-
 arch/arm/mach-layerscape/xload.c              |   4 +-
 arch/arm/mach-mvebu/armada-370-xp.c           |   4 +-
 arch/arm/mach-mvebu/common.c                  |   6 +-
 arch/arm/mach-mvebu/dove.c                    |   2 +-
 arch/arm/mach-mvebu/kirkwood.c                |   2 +-
 arch/arm/mach-mvebu/kwb_bbu.c                 |   2 +-
 arch/arm/mach-mvebu/kwbootimage.c             |   2 +-
 arch/arm/mach-mxs/bcb.c                       |   2 +-
 arch/arm/mach-mxs/clocksource-imx23.c         |   2 +-
 arch/arm/mach-mxs/clocksource-imx28.c         |   2 +-
 arch/arm/mach-mxs/imx.c                       |   6 +-
 arch/arm/mach-mxs/iomux-imx.c                 |   4 +-
 arch/arm/mach-mxs/lradc-init.c                |   6 +-
 arch/arm/mach-mxs/mem-init.c                  |  10 +-
 arch/arm/mach-mxs/ocotp.c                     |   6 +-
 arch/arm/mach-mxs/power-init.c                |  16 +-
 arch/arm/mach-mxs/power.c                     |   4 +-
 arch/arm/mach-mxs/soc-imx23.c                 |   4 +-
 arch/arm/mach-mxs/soc-imx28.c                 |   4 +-
 arch/arm/mach-mxs/usb-imx23.c                 |   6 +-
 arch/arm/mach-mxs/usb-imx28.c                 |   4 +-
 arch/arm/mach-nomadik/8815.c                  |   4 +-
 arch/arm/mach-nomadik/reset.c                 |   2 +-
 arch/arm/mach-nomadik/timer.c                 |   2 +-
 arch/arm/mach-omap/am33xx_bbu_emmc.c          |   2 +-
 arch/arm/mach-omap/am33xx_bbu_nand.c          |   2 +-
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c       |   2 +-
 arch/arm/mach-omap/am33xx_clock.c             |   4 +-
 arch/arm/mach-omap/am33xx_generic.c           |  14 +-
 arch/arm/mach-omap/am33xx_mux.c               |   4 +-
 arch/arm/mach-omap/am33xx_scrm.c              |   4 +-
 arch/arm/mach-omap/am3xxx.c                   |   2 +-
 arch/arm/mach-omap/boot_order.c               |   2 +-
 arch/arm/mach-omap/devices-gpmc-nand.c        |   4 +-
 arch/arm/mach-omap/emif4.c                    |   2 +-
 arch/arm/mach-omap/gpmc.c                     |  14 +-
 arch/arm/mach-omap/omap3_clock.c              |  14 +-
 arch/arm/mach-omap/omap3_generic.c            |  22 +-
 arch/arm/mach-omap/omap3_xload_usb.c          |   4 +-
 arch/arm/mach-omap/omap4_clock.c              |   8 +-
 arch/arm/mach-omap/omap4_generic.c            |  16 +-
 arch/arm/mach-omap/omap4_rom_usb.c            |  10 +-
 arch/arm/mach-omap/omap4_twl6030_mmc.c        |   2 +-
 arch/arm/mach-omap/omap_devices.c             |   2 +-
 arch/arm/mach-omap/omap_generic.c             |  24 +-
 arch/arm/mach-omap/syslib.c                   |   2 +-
 arch/arm/mach-omap/xload.c                    |   9 +-
 arch/arm/mach-pxa/common.c                    |   2 +-
 arch/arm/mach-pxa/devices.c                   |   4 +-
 arch/arm/mach-pxa/gpio.c                      |   2 +-
 arch/arm/mach-pxa/mfp-pxa2xx.c                |   8 +-
 arch/arm/mach-pxa/mfp-pxa3xx.c                |   6 +-
 arch/arm/mach-pxa/pxa2xx.c                    |   4 +-
 arch/arm/mach-pxa/pxa3xx.c                    |   4 +-
 arch/arm/mach-pxa/sleep.S                     |   4 +-
 arch/arm/mach-pxa/speed-pxa25x.c              |   4 +-
 arch/arm/mach-pxa/speed-pxa27x.c              |   4 +-
 arch/arm/mach-pxa/speed-pxa3xx.c              |   4 +-
 arch/arm/mach-rockchip/atf.c                  |   2 +-
 arch/arm/mach-rockchip/bbu.c                  |   4 +-
 arch/arm/mach-rockchip/bootm.c                |   4 +
 .../arm/mach-rockchip/include/mach/debug_ll.h |  99 -----
 arch/arm/mach-rockchip/rk3188.c               |   4 +-
 arch/arm/mach-rockchip/rk3288.c               |   8 +-
 arch/arm/mach-rockchip/rk3568.c               |   4 +-
 arch/arm/mach-rockchip/rockchip.c             |  31 +-
 arch/arm/mach-socfpga/arria10-bootsource.c    |   4 +-
 arch/arm/mach-socfpga/arria10-clock-manager.c |   6 +-
 arch/arm/mach-socfpga/arria10-generic.c       |   8 +-
 arch/arm/mach-socfpga/arria10-init.c          |  12 +-
 arch/arm/mach-socfpga/arria10-reset-manager.c |  10 +-
 arch/arm/mach-socfpga/arria10-sdram.c         |   8 +-
 arch/arm/mach-socfpga/arria10-xload-emmc.c    |   8 +-
 arch/arm/mach-socfpga/arria10-xload.c         |  12 +-
 arch/arm/mach-socfpga/cpu_init.c              |   2 +-
 arch/arm/mach-socfpga/cyclone5-bootsource.c   |   6 +-
 .../arm/mach-socfpga/cyclone5-clock-manager.c |   6 +-
 .../mach-socfpga/cyclone5-freeze-controller.c |   4 +-
 arch/arm/mach-socfpga/cyclone5-generic.c      |  10 +-
 arch/arm/mach-socfpga/cyclone5-init.c         |  12 +-
 .../arm/mach-socfpga/cyclone5-reset-manager.c |   4 +-
 arch/arm/mach-socfpga/cyclone5-scan-manager.c |   4 +-
 .../mach-socfpga/cyclone5-system-manager.c    |   4 +-
 arch/arm/mach-socfpga/nic301.c                |   4 +-
 arch/arm/mach-socfpga/xload.c                 |   6 +-
 arch/arm/mach-stm32mp/bbu.c                   |   2 +-
 arch/arm/mach-stm32mp/bl33-generic.c          |   2 +-
 arch/arm/mach-stm32mp/ddrctrl.c               |   8 +-
 arch/arm/mach-stm32mp/init.c                  |  28 +-
 arch/arm/mach-stm32mp/stm32image.c            |   4 +
 arch/arm/mach-tegra/tegra-bbu.c               |   2 +-
 arch/arm/mach-tegra/tegra20-pmc.c             |   6 +-
 arch/arm/mach-tegra/tegra20-timer.c           |   2 +-
 arch/arm/mach-tegra/tegra20.c                 |   6 +-
 arch/arm/mach-tegra/tegra_avp_init.c          |  12 +-
 arch/arm/mach-tegra/tegra_maincomplex_init.c  |   6 +-
 arch/arm/mach-versatile/core.c                |   4 +-
 arch/arm/mach-vexpress/reset.c                |  11 +-
 arch/arm/mach-vexpress/v2m.c                  |   7 +-
 arch/arm/mach-zynq/cpu_init.c                 |   2 +-
 arch/arm/mach-zynq/zynq.c                     |   2 +-
 arch/arm/mach-zynqmp/firmware-zynqmp.c        |   2 +-
 arch/arm/mach-zynqmp/zynqmp-bbu.c             |   2 +-
 arch/arm/mach-zynqmp/zynqmp.c                 |   3 +
 common/Kconfig                                |  56 +++
 common/filetype.c                             |   2 +-
 common/imx-bbu-nand-fcb.c                     |  10 +-
 drivers/ata/sata-imx.c                        |   4 +-
 drivers/base/power.c                          |  10 +
 drivers/bus/mvebu-mbus.c                      |   2 +-
 drivers/bus/omap-gpmc.c                       |   4 +-
 drivers/clk/clk-rpi.c                         |   6 +-
 drivers/clk/imx/clk-imx1.c                    |   2 +-
 drivers/clk/imx/clk-imx21.c                   |   2 +-
 drivers/clk/imx/clk-imx25.c                   |   2 +-
 drivers/clk/imx/clk-imx27.c                   |   6 +-
 drivers/clk/imx/clk-imx31.c                   |   2 +-
 drivers/clk/imx/clk-imx35.c                   |   2 +-
 drivers/clk/imx/clk-imx5.c                    |   6 +-
 drivers/clk/imx/clk-imx6.c                    |   6 +-
 drivers/clk/imx/clk-imx6sl.c                  |   6 +-
 drivers/clk/imx/clk-imx6sx.c                  |   6 +-
 drivers/clk/imx/clk-imx6ul.c                  |   6 +-
 drivers/clk/imx/clk-imx7.c                    |   4 +-
 drivers/clk/imx/clk-vf610.c                   |   4 +-
 drivers/clk/mxs/clk-imx23.c                   |   2 +-
 drivers/clk/mxs/clk-imx28.c                   |   2 +-
 drivers/clk/socfpga/clk-gate-a10.c            |   4 +-
 drivers/clk/tegra/clk-pll.c                   |   2 +-
 drivers/clk/tegra/clk-tegra124.c              |   6 +-
 drivers/clk/tegra/clk-tegra20.c               |   4 +-
 drivers/clk/tegra/clk-tegra30.c               |   6 +-
 drivers/clk/tegra/clk.c                       |   2 +-
 drivers/clk/zynq/clkc.c                       |   2 +-
 drivers/clk/zynqmp/clk-divider-zynqmp.c       |   2 +-
 drivers/clk/zynqmp/clk-gate-zynqmp.c          |   2 +-
 drivers/clk/zynqmp/clk-mux-zynqmp.c           |   2 +-
 drivers/clk/zynqmp/clk-pll-zynqmp.c           |   2 +-
 drivers/clk/zynqmp/clkc.c                     |   2 +-
 drivers/clocksource/rk_timer.c                |   4 +-
 drivers/clocksource/timer-atmel-pit.c         |   4 +-
 drivers/clocksource/timer-ti-32k.c            |  12 +-
 drivers/clocksource/timer-ti-dm.c             |   4 +-
 drivers/ddr/imx8m/ddr_init.c                  |   6 +-
 drivers/ddr/imx8m/ddrphy_train.c              |   2 +-
 drivers/ddr/imx8m/ddrphy_utils.c              |   4 +-
 drivers/firmware/socfpga.c                    |   8 +-
 drivers/firmware/zynqmp-fpga.c                |   2 +-
 drivers/gpio/gpio-raspberrypi-exp.c           |   2 +-
 drivers/hab/hab.c                             |   8 +-
 drivers/hab/habv3.c                           |   2 +-
 drivers/hab/habv4.c                           |   4 +-
 drivers/i2c/busses/i2c-omap.c                 |   4 +-
 drivers/mci/atmel-sdhci-common.c              |   2 +-
 drivers/mci/atmel-sdhci-pbl.c                 |   4 +-
 drivers/mci/atmel_mci_pbl.c                   |   2 +-
 drivers/mci/imx-esdhc-pbl.c                   |  14 +-
 drivers/mci/mxs.c                             |   4 +-
 drivers/mci/omap_hsmmc.c                      |   4 +-
 drivers/mci/pxamci.c                          |   6 +-
 drivers/mtd/nand/atmel/legacy.c               |   2 +-
 drivers/mtd/nand/nand_imx.c                   |   4 +-
 drivers/mtd/nand/nand_mxs.c                   |   2 +-
 drivers/mtd/nand/nand_omap_gpmc.c             |   4 +-
 drivers/mtd/nand/nomadik_nand.c               |   4 +-
 drivers/net/at91_ether.c                      |   6 +-
 drivers/net/cpsw.c                            |   2 +-
 drivers/net/davinci_emac.c                    |   2 +-
 drivers/net/ep93xx.c                          |   2 +-
 drivers/nvmem/bsec.c                          |   2 +-
 drivers/nvmem/ocotp.c                         |   7 +-
 drivers/pci/pci-tegra.c                       |   2 +-
 drivers/pinctrl/imx-iomux-v1.c                |   2 +-
 drivers/pinctrl/imx-iomux-v3.c                |   4 +-
 drivers/pinctrl/pinctrl-at91-pio4.c           |   2 +-
 drivers/pinctrl/pinctrl-at91.c                |   6 +-
 drivers/pinctrl/pinctrl-vf610.c               |   2 +-
 drivers/pwm/pxa_pwm.c                         |   8 +-
 drivers/regulator/bcm2835.c                   |   2 +-
 drivers/remoteproc/stm32_rproc.c              |   2 +-
 drivers/serial/serial_digic.c                 |   2 +-
 drivers/serial/serial_omap4_usbboot.c         |   8 +-
 drivers/serial/serial_pxa.c                   |   2 +-
 drivers/spi/atmel_spi.c                       |   6 +-
 drivers/spi/dspi_spi.c                        |   4 +-
 drivers/spi/imx_spi.c                         |   4 +-
 drivers/spi/mxs_spi.c                         |   4 +-
 drivers/usb/gadget/at91_udc.c                 |  10 +-
 drivers/usb/gadget/fsl_udc_pbl.c              |   6 +-
 drivers/usb/gadget/pxa27x_udc.c               |   4 +-
 drivers/usb/host/ehci-omap.c                  |  10 +-
 drivers/usb/host/ohci-at91.c                  |   2 +-
 drivers/usb/imx/imx-usb-misc.c                |   4 +-
 drivers/video/atmel_hlcdfb.c                  |   6 +-
 drivers/video/atmel_lcdfb.c                   |   2 +-
 drivers/video/atmel_lcdfb_core.c              |   2 +-
 drivers/video/bcm2835.c                       |   2 +-
 drivers/video/imx-ipu-v3/imx-hdmi.c           |   4 +-
 drivers/video/imx-ipu-v3/imx-ldb.c            |   4 +-
 drivers/video/imx-ipu-v3/ipu-common.c         |   8 +-
 drivers/video/pxa.c                           |   8 +-
 drivers/video/stm.c                           |   2 +-
 drivers/watchdog/at91sam9_wdt.c               |   2 +-
 fs/omap4_usbbootfs.c                          |   5 +-
 images/Makefile.zynq                          |   2 +-
 include/debug_ll/ns16550.h                    |   4 +-
 .../include/mach => include/mach/at91}/aic.h  |   0
 .../mach => include/mach/at91}/at91_dbgu.h    |   0
 .../mach => include/mach/at91}/at91_ddrsdrc.h |   2 +-
 .../mach => include/mach/at91}/at91_pio.h     |   0
 .../mach => include/mach/at91}/at91_pit.h     |   0
 .../mach => include/mach/at91}/at91_pmc.h     |   0
 .../mach => include/mach/at91}/at91_pmc_ll.h  |   2 +-
 .../mach => include/mach/at91}/at91_rstc.h    |   0
 .../mach => include/mach/at91}/at91_rtt.h     |   0
 .../mach => include/mach/at91}/at91_wdt.h     |   0
 .../mach => include/mach/at91}/at91rm9200.h   |   0
 .../mach/at91}/at91rm9200_emac.h              |   0
 .../mach/at91}/at91rm9200_mc.h                |   2 +-
 .../mach/at91}/at91rm9200_st.h                |   0
 .../mach => include/mach/at91}/at91sam9260.h  |   0
 .../mach/at91}/at91sam9260_matrix.h           |   0
 .../mach => include/mach/at91}/at91sam9261.h  |   0
 .../mach/at91}/at91sam9261_matrix.h           |   0
 .../mach => include/mach/at91}/at91sam9263.h  |   0
 .../mach/at91}/at91sam9263_matrix.h           |   0
 .../mach => include/mach/at91}/at91sam926x.h  |   0
 .../mach/at91}/at91sam926x_board_init.h       |  24 +-
 .../mach/at91}/at91sam9_sdramc.h              |   6 +-
 .../mach => include/mach/at91}/at91sam9_smc.h |   0
 .../mach => include/mach/at91}/at91sam9g45.h  |   0
 .../mach/at91}/at91sam9g45_matrix.h           |   0
 .../mach => include/mach/at91}/at91sam9n12.h  |   0
 .../mach/at91}/at91sam9n12_matrix.h           |   0
 .../mach => include/mach/at91}/at91sam9x5.h   |   0
 .../mach/at91}/at91sam9x5_matrix.h            |   0
 .../mach => include/mach/at91}/atmel_hlcdc.h  |   0
 .../mach => include/mach/at91}/barebox-arm.h  |   4 +-
 .../mach => include/mach/at91}/board.h        |   4 +-
 .../mach => include/mach/at91}/bootstrap.h    |   0
 .../include/mach => include/mach/at91}/cpu.h  |   0
 .../mach => include/mach/at91}/ddramc.h       |   0
 .../mach => include/mach/at91}/debug_ll.h     |  12 +-
 .../mach => include/mach/at91}/early_udelay.h |   0
 .../include/mach => include/mach/at91}/gpio.h |   2 +-
 .../mach => include/mach/at91}/hardware.h     |  26 +-
 .../mach => include/mach/at91}/iomux.h        |   6 +-
 .../mach => include/mach/at91}/matrix.h       |   0
 .../mach => include/mach/at91}/sam92_ll.h     |  16 +-
 .../mach/at91}/sama5_bootsource.h             |   2 +-
 .../mach/at91}/sama5d2-sip-ddramc.h           |   6 +-
 .../mach => include/mach/at91}/sama5d2.h      |   0
 .../mach => include/mach/at91}/sama5d2_ll.h   |  12 +-
 .../mach/at91}/sama5d3-xplained-ddramc.h      |   6 +-
 .../mach => include/mach/at91}/sama5d3.h      |   0
 .../mach => include/mach/at91}/sama5d3_ll.h   |   6 +-
 .../mach => include/mach/at91}/sama5d4.h      |   0
 .../mach => include/mach/at91}/tz_matrix.h    |   0
 .../mach => include/mach/at91}/xload.h        |   6 +-
 .../mach => include/mach/bcm283x}/core.h      |   2 +-
 .../mach => include/mach/bcm283x}/debug_ll.h  |  12 +-
 .../mach => include/mach/bcm283x}/mbox.h      |   2 +-
 .../mach => include/mach/bcm283x}/platform.h  |   0
 .../mach => include/mach/clps711x}/clps711x.h |   0
 .../mach => include/mach/clps711x}/debug_ll.h |   8 +-
 .../mach => include/mach/davinci}/debug_ll.h  |   8 +-
 .../mach => include/mach/davinci}/hardware.h  |   6 +-
 .../mach => include/mach/davinci}/serial.h    |   2 +-
 .../mach => include/mach/davinci}/time.h      |   2 +-
 .../mach => include/mach/digic}/debug_ll.h    |  10 +-
 .../mach => include/mach/digic}/digic4.h      |   0
 .../mach => include/mach/digic}/uart.h        |   0
 .../mach/ep93xx}/barebox.lds.h                |   0
 .../mach/ep93xx}/ep93xx-regs.h                |   0
 .../include/mach => include/mach/imx}/atf.h   |   0
 .../include/mach => include/mach/imx}/bbu.h   |   6 +-
 .../include/mach => include/mach/imx}/ccm.h   |   0
 .../mach/imx}/clock-imx51_53.h                |   0
 .../mach => include/mach/imx}/clock-imx6.h    |   0
 .../mach => include/mach/imx}/clock-vf610.h   |   0
 .../mach => include/mach/imx}/debug_ll.h      |  34 +-
 .../mach => include/mach/imx}/devices-imx1.h  |   4 +-
 .../mach => include/mach/imx}/devices-imx21.h |   4 +-
 .../mach => include/mach/imx}/devices-imx25.h |   4 +-
 .../mach => include/mach/imx}/devices-imx27.h |   4 +-
 .../mach => include/mach/imx}/devices-imx31.h |   4 +-
 .../mach => include/mach/imx}/devices-imx35.h |   4 +-
 .../mach => include/mach/imx}/devices-imx50.h |   4 +-
 .../mach => include/mach/imx}/devices-imx51.h |   4 +-
 .../mach => include/mach/imx}/devices-imx53.h |   4 +-
 .../mach => include/mach/imx}/devices-imx6.h  |   4 +-
 .../mach => include/mach/imx}/devices.h       |   6 +-
 .../mach => include/mach/imx}/esdctl-v4.h     |   0
 .../mach => include/mach/imx}/esdctl.h        |   0
 .../flash-header/imx7d-ddr-sabresd.imxcfg     |   2 +-
 .../flash-header/vf610-ddr-cr-default.imxcfg  |   0
 .../flash-header/vf610-ddr-phy-default.imxcfg |   0
 .../flash-header/vf610-ddr-pll2-400mhz.imxcfg |   0
 .../vf610-iomux-ddr-default.imxcfg            |   0
 .../mach => include/mach/imx}/generic.h       |   2 +-
 .../mach/imx}/habv3-imx25-gencsf.h            |   0
 .../mach/imx}/habv4-imx6-gencsf-template.h    |   0
 .../mach/imx}/habv4-imx6-gencsf.h             |   2 +-
 .../mach/imx}/habv4-imx6ull-gencsf.h          |   2 +-
 .../mach/imx}/habv4-imx8-gencsf.h             |   0
 .../include/mach => include/mach/imx}/iim.h   |   0
 .../mach => include/mach/imx}/imx-gpio.h      |   0
 .../mach => include/mach/imx}/imx-header.h    |   0
 .../mach => include/mach/imx}/imx-ipu-fb.h    |   0
 .../mach => include/mach/imx}/imx-nand.h      |   0
 .../mach => include/mach/imx}/imx-pll.h       |   0
 .../mach => include/mach/imx}/imx1-regs.h     |   0
 .../mach => include/mach/imx}/imx21-regs.h    |   0
 .../mach => include/mach/imx}/imx25-fusemap.h |   2 +-
 .../mach => include/mach/imx}/imx25-regs.h    |   0
 .../mach => include/mach/imx}/imx27-regs.h    |   0
 .../mach => include/mach/imx}/imx31-regs.h    |   0
 .../mach => include/mach/imx}/imx35-regs.h    |   0
 .../include/mach => include/mach/imx}/imx5.h  |   0
 .../mach => include/mach/imx}/imx50-regs.h    |   0
 .../mach => include/mach/imx}/imx51-regs.h    |   0
 .../mach => include/mach/imx}/imx53-regs.h    |   0
 .../mach => include/mach/imx}/imx6-anadig.h   |   0
 .../mach => include/mach/imx}/imx6-ddr-regs.h |   0
 .../mach => include/mach/imx}/imx6-fusemap.h  |   2 +-
 .../mach => include/mach/imx}/imx6-mmdc.h     |   2 +-
 .../mach => include/mach/imx}/imx6-regs.h     |   0
 .../include/mach => include/mach/imx}/imx6.h  |   6 +-
 .../mach/imx}/imx6dl-ddr-regs.h               |   0
 .../mach/imx}/imx6q-ddr-regs.h                |   0
 .../mach => include/mach/imx}/imx7-ccm-regs.h |   0
 .../mach => include/mach/imx}/imx7-ddr-regs.h |   0
 .../mach => include/mach/imx}/imx7-regs.h     |   0
 .../include/mach => include/mach/imx}/imx7.h  |   6 +-
 .../mach/imx}/imx8m-ccm-regs.h                |   2 +-
 .../mach => include/mach/imx}/imx8m-regs.h    |   0
 .../mach => include/mach/imx}/imx8mm-regs.h   |   2 +-
 .../mach => include/mach/imx}/imx8mn-regs.h   |   2 +-
 .../mach => include/mach/imx}/imx8mp-regs.h   |   2 +-
 .../mach => include/mach/imx}/imx8mq-regs.h   |   2 +-
 .../mach => include/mach/imx}/imx8mq.h        |  12 +-
 .../mach => include/mach/imx}/imx_cpu_types.h |   0
 .../mach => include/mach/imx}/iomux-mx1.h     |   2 +-
 .../mach => include/mach/imx}/iomux-mx21.h    |   4 +-
 .../mach => include/mach/imx}/iomux-mx25.h    |   2 +-
 .../mach => include/mach/imx}/iomux-mx27.h    |   4 +-
 .../mach => include/mach/imx}/iomux-mx2x.h    |   0
 .../mach => include/mach/imx}/iomux-mx31.h    |   0
 .../mach => include/mach/imx}/iomux-mx35.h    |   2 +-
 .../mach => include/mach/imx}/iomux-mx50.h    |   2 +-
 .../mach => include/mach/imx}/iomux-mx51.h    |   2 +-
 .../mach => include/mach/imx}/iomux-mx53.h    |   2 +-
 .../mach => include/mach/imx}/iomux-mx6.h     |   2 +-
 .../mach => include/mach/imx}/iomux-mx6ul.h   |   2 +-
 .../mach => include/mach/imx}/iomux-mx7.h     |   4 +-
 .../mach => include/mach/imx}/iomux-mx8m.h    |   2 +-
 .../mach => include/mach/imx}/iomux-mx8mm.h   |   6 +-
 .../mach => include/mach/imx}/iomux-mx8mn.h   |   6 +-
 .../mach => include/mach/imx}/iomux-mx8mp.h   |   6 +-
 .../mach => include/mach/imx}/iomux-mx8mq.h   |   6 +-
 .../mach => include/mach/imx}/iomux-v1.h      |   6 +-
 .../mach => include/mach/imx}/iomux-v3.h      |   0
 .../mach => include/mach/imx}/iomux-vf610.h   |   2 +-
 .../mach => include/mach/imx}/ocotp-fusemap.h |   2 +-
 .../include/mach => include/mach/imx}/ocotp.h |   0
 .../mach => include/mach/imx}/reset-reason.h  |   0
 .../mach => include/mach/imx}/revision.h      |   0
 .../mach => include/mach/imx}/romapi.h        |   2 +-
 .../include/mach => include/mach/imx}/spi.h   |   0
 .../include/mach => include/mach/imx}/tzasc.h |   0
 .../include/mach => include/mach/imx}/usb.h   |   0
 .../mach/imx}/vf610-ddrmc-regs.h              |   0
 .../mach => include/mach/imx}/vf610-ddrmc.h   |   2 +-
 .../mach => include/mach/imx}/vf610-fusemap.h |   2 +-
 .../mach/imx}/vf610-iomux-regs.h              |   0
 .../mach => include/mach/imx}/vf610-regs.h    |   0
 .../include/mach => include/mach/imx}/vf610.h |   6 +-
 .../include/mach => include/mach/imx}/weim.h  |   0
 .../include/mach => include/mach/imx}/xload.h |   6 +-
 .../mach => include/mach/layerscape}/bbu.h    |   0
 .../mach/layerscape}/debug_ll.h               |  11 +-
 .../mach => include/mach/layerscape}/errata.h |   0
 .../mach/layerscape}/layerscape.h             |   0
 .../mach/layerscape}/lowlevel.h               |   0
 .../mach => include/mach/layerscape}/xload.h  |   6 +-
 .../mach/mvebu}/armada-370-xp-regs.h          |   2 +-
 .../mach/mvebu}/barebox-arm-head.h            |   2 +-
 .../include/mach => include/mach/mvebu}/bbu.h |   0
 .../mach => include/mach/mvebu}/common.h      |   0
 .../mach => include/mach/mvebu}/debug_ll.h    |   6 +-
 .../mach => include/mach/mvebu}/dove-regs.h   |   2 +-
 .../mach/mvebu}/kirkwood-regs.h               |   2 +-
 .../mach => include/mach/mvebu}/lowlevel.h    |   0
 .../mach => include/mach/mvebu}/socid.h       |   0
 .../mach => include/mach/mxs}/debug_ll.h      |   8 +-
 .../mach => include/mach/mxs}/devices.h       |   2 +-
 .../include/mach => include/mach/mxs}/fb.h    |   0
 .../mach => include/mach/mxs}/generic.h       |   0
 .../mach => include/mach/mxs}/imx-regs.h      |   4 +-
 .../mach => include/mach/mxs}/imx23-regs.h    |   0
 .../include/mach => include/mach/mxs}/imx23.h |   0
 .../mach => include/mach/mxs}/imx28-regs.h    |   0
 .../include/mach => include/mach/mxs}/imx28.h |   0
 .../include/mach => include/mach/mxs}/init.h  |   0
 .../mach => include/mach/mxs}/iomux-imx23.h   |   0
 .../mach => include/mach/mxs}/iomux-imx28.h   |   0
 .../include/mach => include/mach/mxs}/iomux.h |   4 +-
 .../include/mach => include/mach/mxs}/mci.h   |   0
 .../include/mach => include/mach/mxs}/ocotp.h |   0
 .../include/mach => include/mach/mxs}/power.h |   0
 .../mach/mxs}/regs-clkctrl-mx23.h             |   2 +-
 .../mach/mxs}/regs-clkctrl-mx28.h             |   2 +-
 .../mach => include/mach/mxs}/regs-common.h   |   0
 .../mach => include/mach/mxs}/regs-lradc.h    |   2 +-
 .../mach/mxs}/regs-power-mx28.h               |   2 +-
 .../mach => include/mach/mxs}/regs-rtc.h      |   2 +-
 .../mach => include/mach/mxs}/revision.h      |   0
 .../include/mach => include/mach/mxs}/ssp.h   |   0
 .../include/mach => include/mach/mxs}/usb.h   |   0
 .../mach => include/mach/nomadik}/board.h     |   0
 .../mach => include/mach/nomadik}/fsmc.h      |   2 +-
 .../mach => include/mach/nomadik}/hardware.h  |   6 +-
 .../mach => include/mach/nomadik}/nand.h      |   0
 .../mach => include/mach/omap}/am33xx-clock.h |   0
 .../mach/omap}/am33xx-generic.h               |   4 +-
 .../mach => include/mach/omap}/am33xx-mux.h   |   0
 .../mach/omap}/am33xx-silicon.h               |   0
 .../mach/omap}/am3xxx-silicon.h               |   0
 .../include/mach => include/mach/omap}/bbu.h  |   6 +-
 .../mach => include/mach/omap}/clocks.h       |   0
 .../mach/omap}/cm-regbits-34xx.h              |   0
 .../mach => include/mach/omap}/control.h      |   0
 .../include/mach => include/mach/omap}/cpsw.h |   0
 .../mach => include/mach/omap}/debug_ll.h     |  77 ++--
 .../mach => include/mach/omap}/devices.h      |   2 +-
 .../include/mach => include/mach/omap}/ehci.h |   0
 .../mach => include/mach/omap}/emac_defs.h    |   0
 .../mach => include/mach/omap}/emif4.h        |   0
 .../mach => include/mach/omap}/generic.h      |   6 +
 .../include/mach => include/mach/omap}/gpmc.h |   0
 .../mach => include/mach/omap}/gpmc_nand.h    |   0
 .../include/mach => include/mach/omap}/intc.h |   0
 .../mach => include/mach/omap}/mcspi.h        |   0
 .../mach => include/mach/omap}/omap3-clock.h  |   0
 .../mach/omap}/omap3-devices.h                |   8 +-
 .../mach/omap}/omap3-generic.h                |   4 +-
 .../mach => include/mach/omap}/omap3-mux.h    |   0
 .../mach/omap}/omap3-silicon.h                |   0
 .../mach => include/mach/omap}/omap3-smx.h    |   0
 .../mach => include/mach/omap}/omap4-clock.h  |   0
 .../mach/omap}/omap4-devices.h                |   8 +-
 .../mach/omap}/omap4-generic.h                |   4 +-
 .../mach => include/mach/omap}/omap4-mux.h    |   0
 .../mach/omap}/omap4-silicon.h                |   0
 .../mach/omap}/omap4_rom_usb.h                |  13 +
 .../mach/omap}/omap4_twl6030_mmc.h            |   0
 .../mach => include/mach/omap}/omap_hsmmc.h   |   0
 .../include/mach => include/mach/omap}/sdrc.h |   0
 .../mach => include/mach/omap}/sys_info.h     |   0
 .../mach => include/mach/omap}/syslib.h       |   0
 .../mach => include/mach/omap}/timers.h       |   0
 .../include/mach => include/mach/pxa}/clock.h |   0
 .../mach => include/mach/pxa}/devices.h       |   2 +-
 .../include/mach => include/mach/pxa}/gpio.h  |   2 +-
 .../mach => include/mach/pxa}/hardware.h      |   0
 .../mach => include/mach/pxa}/mci_pxa2xx.h    |   0
 .../mach => include/mach/pxa}/mfp-pxa27x.h    |   2 +-
 .../mach => include/mach/pxa}/mfp-pxa2xx.h    |   2 +-
 .../mach => include/mach/pxa}/mfp-pxa3xx.h    |   2 +-
 .../include/mach => include/mach/pxa}/mfp.h   |   0
 .../mach => include/mach/pxa}/pxa-regs.h      |  10 +-
 .../mach => include/mach/pxa}/pxa25x-regs.h   |   0
 .../mach => include/mach/pxa}/pxa27x-regs.h   |   0
 .../mach => include/mach/pxa}/pxa2xx-regs.h   |   2 +-
 .../mach => include/mach/pxa}/pxa3xx-regs.h   |   2 +-
 .../include/mach => include/mach/pxa}/pxafb.h |   0
 .../mach => include/mach/pxa}/regs-intc.h     |   2 +-
 .../mach => include/mach/pxa}/regs-lcd.h      |   0
 .../mach => include/mach/pxa}/regs-ost.h      |   2 +-
 .../mach => include/mach/pxa}/regs-pwm.h      |   2 +-
 .../mach => include/mach/pxa}/udc_pxa2xx.h    |   0
 .../mach => include/mach/rockchip}/atf.h      |   0
 .../mach => include/mach/rockchip}/bbu.h      |   0
 .../mach/rockchip}/cru_rk3288.h               |   0
 include/mach/rockchip/debug_ll.h              |  77 ++++
 .../mach/rockchip}/grf_rk3288.h               |   0
 .../mach => include/mach/rockchip}/hardware.h |   0
 .../mach/rockchip}/rk3188-regs.h              |   0
 .../mach/rockchip}/rk3288-regs.h              |   0
 .../mach/rockchip}/rk3399-regs.h              |   0
 .../mach/rockchip}/rk3568-regs.h              |   0
 .../mach => include/mach/rockchip}/rockchip.h |   2 +
 .../mach/socfpga}/arria10-clock-manager.h     |   0
 .../mach/socfpga}/arria10-fpga.h              |   2 +-
 .../mach/socfpga}/arria10-pinmux.h            |   2 +-
 .../mach/socfpga}/arria10-regs.h              |   0
 .../mach/socfpga}/arria10-reset-manager.h     |   0
 .../mach/socfpga}/arria10-sdram.h             |   2 +-
 .../mach/socfpga}/arria10-system-manager.h    |   2 +-
 .../mach/socfpga}/arria10-xload.h             |   0
 .../mach/socfpga}/barebox-arm-head.h          |   0
 .../mach/socfpga}/cyclone5-clock-manager.h    |   0
 .../socfpga}/cyclone5-freeze-controller.h     |   2 +-
 .../mach/socfpga}/cyclone5-regs.h             |   0
 .../mach/socfpga}/cyclone5-reset-manager.h    |   0
 .../mach/socfpga}/cyclone5-scan-manager.h     |   2 +-
 .../mach/socfpga}/cyclone5-sdram-config.h     |   6 +-
 .../mach/socfpga}/cyclone5-sdram.h            |   0
 .../mach/socfpga}/cyclone5-sequencer.c        |   2 +-
 .../mach/socfpga}/cyclone5-sequencer.h        |   0
 .../mach/socfpga}/cyclone5-system-manager.h   |   0
 .../mach => include/mach/socfpga}/debug_ll.h  |   6 +-
 .../mach => include/mach/socfpga}/generic.h   |   0
 .../mach => include/mach/socfpga}/init.h      |   0
 .../mach => include/mach/socfpga}/lowlevel.h  |   8 +-
 .../mach => include/mach/socfpga}/nic301.h    |   0
 .../mach/socfpga}/pll_config.h                |   2 +-
 .../mach => include/mach/socfpga}/sdram_io.h  |   2 +-
 .../mach => include/mach/socfpga}/system.h    |   0
 .../mach => include/mach/socfpga}/tclrpt.h    |   0
 .../mach => include/mach/stm32mp}/bbu.h       |   0
 .../mach/stm32mp}/bootsource.h                |   0
 .../mach => include/mach/stm32mp}/bsec.h      |   2 +-
 .../mach => include/mach/stm32mp}/ddr_regs.h  |   0
 .../mach => include/mach/stm32mp}/debug_ll.h  |   2 +-
 .../mach => include/mach/stm32mp}/entry.h     |   0
 .../mach => include/mach/stm32mp}/revision.h  |   4 +-
 .../mach => include/mach/stm32mp}/smc.h       |   0
 .../mach => include/mach/stm32mp}/stm32.h     |   2 +
 .../mach => include/mach/tegra}/debug_ll.h    |   8 +-
 .../mach => include/mach/tegra}/iomap.h       |   0
 .../mach/tegra}/lowlevel-dvc.h                |   4 +-
 .../mach => include/mach/tegra}/lowlevel.h    |   2 +-
 .../mach => include/mach/tegra}/tegra-bbu.h   |   0
 .../mach/tegra}/tegra-powergate.h             |   0
 .../mach/tegra}/tegra114-sysctr.h             |   0
 .../mach/tegra}/tegra124-car.h                |   0
 .../mach => include/mach/tegra}/tegra20-car.h |   0
 .../mach => include/mach/tegra}/tegra20-pmc.h |   0
 .../mach => include/mach/tegra}/tegra30-car.h |   0
 .../mach/tegra}/tegra30-flow.h                |   0
 .../mach => include/mach/uemd}/debug_ll.h     |   8 +-
 .../mach => include/mach/uemd}/hardware.h     |   6 +-
 .../mach/versatile}/debug_ll.h                |   6 +-
 .../mach => include/mach/versatile}/init.h    |   0
 .../mach/versatile}/platform.h                |   0
 .../mach => include/mach/vexpress}/debug_ll.h |   6 +-
 .../mach => include/mach/vexpress}/devices.h  |   0
 include/mach/vexpress/vexpress.h              |   6 +
 .../mach => include/mach/zynq}/debug_ll.h     |   8 +-
 .../include/mach => include/mach/zynq}/init.h |   0
 .../mach/zynq}/zynq-flash-header.h            |   0
 .../mach/zynq}/zynq7000-header-regs.h         |   0
 .../mach/zynq}/zynq7000-regs.h                |   0
 .../mach => include/mach/zynqmp}/debug_ll.h   |   6 +-
 .../mach/zynqmp}/firmware-zynqmp.h            |   0
 .../mach => include/mach/zynqmp}/zynqmp-bbu.h |   0
 include/pm_domain.h                           |   6 +
 scripts/Makefile                              |   2 +-
 scripts/imx/Makefile                          |  10 +-
 scripts/imx/imx.h                             |   4 +-
 scripts/zynq_mkimage.c                        |   2 +-
 1113 files changed, 3595 insertions(+), 2712 deletions(-)
 create mode 100644 arch/arm/configs/multi_v7_defconfig
 create mode 100644 arch/arm/configs/multi_v8_defconfig
 delete mode 100644 arch/arm/mach-rockchip/include/mach/debug_ll.h
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/aic.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_dbgu.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_ddrsdrc.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pio.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pit.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pmc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_pmc_ll.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_rstc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_rtt.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91_wdt.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200_emac.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200_mc.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91rm9200_st.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9260.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9260_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9261.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9261_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9263.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9263_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam926x.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam926x_board_init.h (92%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9_sdramc.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9_smc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9g45.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9g45_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9n12.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9n12_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9x5.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/at91sam9x5_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/atmel_hlcdc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/barebox-arm.h (96%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/board.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/bootstrap.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/cpu.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/ddramc.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/debug_ll.h (80%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/early_udelay.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/gpio.h (99%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/hardware.h (69%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/iomux.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sam92_ll.h (80%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5_bootsource.h (98%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d2-sip-ddramc.h (91%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d2.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d2_ll.h (94%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d3-xplained-ddramc.h (96%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d3.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d3_ll.h (82%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/sama5d4.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/tz_matrix.h (100%)
 rename {arch/arm/mach-at91/include/mach => include/mach/at91}/xload.h (86%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/core.h (93%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/debug_ll.h (92%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/mbox.h (99%)
 rename {arch/arm/mach-bcm283x/include/mach => include/mach/bcm283x}/platform.h (100%)
 rename {arch/arm/mach-clps711x/include/mach => include/mach/clps711x}/clps711x.h (100%)
 rename {arch/arm/mach-clps711x/include/mach => include/mach/clps711x}/debug_ll.h (65%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/debug_ll.h (79%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/hardware.h (84%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/serial.h (92%)
 rename {arch/arm/mach-davinci/include/mach => include/mach/davinci}/time.h (93%)
 rename {arch/arm/mach-digic/include/mach => include/mach/digic}/debug_ll.h (85%)
 rename {arch/arm/mach-digic/include/mach => include/mach/digic}/digic4.h (100%)
 rename {arch/arm/mach-digic/include/mach => include/mach/digic}/uart.h (100%)
 rename {arch/arm/mach-ep93xx/include/mach => include/mach/ep93xx}/barebox.lds.h (100%)
 rename {arch/arm/mach-ep93xx/include/mach => include/mach/ep93xx}/ep93xx-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/atf.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/bbu.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/ccm.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/clock-imx51_53.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/clock-imx6.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/clock-vf610.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/debug_ll.h (86%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx1.h (81%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx21.h (92%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx25.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx27.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx31.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx35.h (96%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx50.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx51.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx53.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices-imx6.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/devices.h (94%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/esdctl-v4.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/esdctl.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/imx7d-ddr-sabresd.imxcfg (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-ddr-cr-default.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-ddr-phy-default.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-ddr-pll2-400mhz.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/flash-header/vf610-iomux-ddr-default.imxcfg (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/generic.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv3-imx25-gencsf.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx6-gencsf-template.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx6-gencsf.h (70%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx6ull-gencsf.h (60%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/habv4-imx8-gencsf.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iim.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-gpio.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-header.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-ipu-fb.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-nand.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx-pll.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx1-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx21-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx25-fusemap.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx25-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx27-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx31-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx35-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx5.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx50-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx51-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx53-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-anadig.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-fusemap.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-mmdc.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6dl-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx6q-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7-ccm-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7-ddr-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx7.h (92%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8m-ccm-regs.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8m-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mm-regs.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mn-regs.h (96%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mp-regs.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mq-regs.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx8mq.h (91%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/imx_cpu_types.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx1.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx21.h (98%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx25.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx27.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx2x.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx31.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx35.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx50.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx51.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx53.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx6.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx6ul.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx7.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8m.h (95%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mm.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mn.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mp.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-mx8mq.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-v1.h (95%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-v3.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/iomux-vf610.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/ocotp-fusemap.h (99%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/ocotp.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/reset-reason.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/revision.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/romapi.h (97%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/spi.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/tzasc.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/usb.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-ddrmc-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-ddrmc.h (93%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-fusemap.h (95%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-iomux-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610-regs.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/vf610.h (92%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/weim.h (100%)
 rename {arch/arm/mach-imx/include/mach => include/mach/imx}/xload.h (93%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/bbu.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/debug_ll.h (78%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/errata.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/layerscape.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/lowlevel.h (100%)
 rename {arch/arm/mach-layerscape/include/mach => include/mach/layerscape}/xload.h (74%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/armada-370-xp-regs.h (98%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/barebox-arm-head.h (97%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/bbu.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/common.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/debug_ll.h (86%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/dove-regs.h (98%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/kirkwood-regs.h (97%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/lowlevel.h (100%)
 rename {arch/arm/mach-mvebu/include/mach => include/mach/mvebu}/socid.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/debug_ll.h (72%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/devices.h (97%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/fb.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/generic.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx-regs.h (79%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx23-regs.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx23.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx28-regs.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/imx28.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/init.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/iomux-imx23.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/iomux-imx28.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/iomux.h (98%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/mci.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/ocotp.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/power.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-clkctrl-mx23.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-clkctrl-mx28.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-common.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-lradc.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-power-mx28.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/regs-rtc.h (99%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/revision.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/ssp.h (100%)
 rename {arch/arm/mach-mxs/include/mach => include/mach/mxs}/usb.h (100%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/board.h (100%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/fsmc.h (96%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/hardware.h (97%)
 rename {arch/arm/mach-nomadik/include/mach => include/mach/nomadik}/nand.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-clock.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-generic.h (92%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-mux.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am33xx-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/am3xxx-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/bbu.h (95%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/clocks.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/cm-regbits-34xx.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/control.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/cpsw.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/debug_ll.h (50%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/devices.h (92%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/ehci.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/emac_defs.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/emif4.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/generic.h (95%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/gpmc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/gpmc_nand.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/intc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/mcspi.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-clock.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-devices.h (94%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-generic.h (90%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-mux.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap3-smx.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-clock.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-devices.h (94%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-generic.h (88%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-mux.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4-silicon.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4_rom_usb.h (96%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap4_twl6030_mmc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/omap_hsmmc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/sdrc.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/sys_info.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/syslib.h (100%)
 rename {arch/arm/mach-omap/include/mach => include/mach/omap}/timers.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/clock.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/devices.h (97%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/gpio.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/hardware.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mci_pxa2xx.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp-pxa27x.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp-pxa2xx.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp-pxa3xx.h (95%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/mfp.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa-regs.h (80%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa25x-regs.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa27x-regs.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa2xx-regs.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxa3xx-regs.h (99%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/pxafb.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-intc.h (98%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-lcd.h (100%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-ost.h (97%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/regs-pwm.h (93%)
 rename {arch/arm/mach-pxa/include/mach => include/mach/pxa}/udc_pxa2xx.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/atf.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/bbu.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/cru_rk3288.h (100%)
 create mode 100644 include/mach/rockchip/debug_ll.h
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/grf_rk3288.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/hardware.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3188-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3288-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3399-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rk3568-regs.h (100%)
 rename {arch/arm/mach-rockchip/include/mach => include/mach/rockchip}/rockchip.h (96%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-clock-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-fpga.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-pinmux.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-regs.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-reset-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-sdram.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-system-manager.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/arria10-xload.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/barebox-arm-head.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-clock-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-freeze-controller.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-regs.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-reset-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-scan-manager.h (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sdram-config.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sdram.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sequencer.c (99%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-sequencer.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/cyclone5-system-manager.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/debug_ll.h (94%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/generic.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/init.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/lowlevel.h (91%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/nic301.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/pll_config.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/sdram_io.h (98%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/system.h (100%)
 rename {arch/arm/mach-socfpga/include/mach => include/mach/socfpga}/tclrpt.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/bbu.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/bootsource.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/bsec.h (96%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/ddr_regs.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/debug_ll.h (94%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/entry.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/revision.h (97%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/smc.h (100%)
 rename {arch/arm/mach-stm32mp/include/mach => include/mach/stm32mp}/stm32.h (97%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/debug_ll.h (88%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/iomap.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/lowlevel-dvc.h (98%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/lowlevel.h (99%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra-bbu.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra-powergate.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra114-sysctr.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra124-car.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra20-car.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra20-pmc.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra30-car.h (100%)
 rename {arch/arm/mach-tegra/include/mach => include/mach/tegra}/tegra30-flow.h (100%)
 rename {arch/arm/mach-uemd/include/mach => include/mach/uemd}/debug_ll.h (87%)
 rename {arch/arm/mach-uemd/include/mach => include/mach/uemd}/hardware.h (54%)
 rename {arch/arm/mach-versatile/include/mach => include/mach/versatile}/debug_ll.h (84%)
 rename {arch/arm/mach-versatile/include/mach => include/mach/versatile}/init.h (100%)
 rename {arch/arm/mach-versatile/include/mach => include/mach/versatile}/platform.h (100%)
 rename {arch/arm/mach-vexpress/include/mach => include/mach/vexpress}/debug_ll.h (76%)
 rename {arch/arm/mach-vexpress/include/mach => include/mach/vexpress}/devices.h (100%)
 create mode 100644 include/mach/vexpress/vexpress.h
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/debug_ll.h (84%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/init.h (100%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/zynq-flash-header.h (100%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/zynq7000-header-regs.h (100%)
 rename {arch/arm/mach-zynq/include/mach => include/mach/zynq}/zynq7000-regs.h (100%)
 rename {arch/arm/mach-zynqmp/include/mach => include/mach/zynqmp}/debug_ll.h (85%)
 rename {arch/arm/mach-zynqmp/include/mach => include/mach/zynqmp}/firmware-zynqmp.h (100%)
 rename {arch/arm/mach-zynqmp/include/mach => include/mach/zynqmp}/zynqmp-bbu.h (100%)

-- 
2.30.2



