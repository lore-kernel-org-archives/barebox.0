Delivery-date: Tue, 28 Feb 2023 15:32:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11O-004kwI-Nn
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11O-0004fb-HF
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=LU7Coz7GdVgEKzxBh5bGQaXxwUrLQHlEw5+YdOuTVjg=; b=MV80MpmnCdQhVH4u2153DARYbw
	dua/7vJIsTOSGK3VZT2pVmiy7UoZvor1Gmo0fRWuCcFPukE/Cupfl9k9TDDveDyGTKcuSrQVmKkpy
	9Q6a+8/tmq/m+GkQrtNZQdIQoiSVxCzcR23Bo/hS0LyMBQS3awDFFjRqr807XVKigyO6S7urGUglU
	Jcvk5xE+tn4twToYWhZZK4ph6r8kfu4hj9sJtfDK0MflYB24Yry6hM2CPD2+OAnSeYZsJLSrBDu1F
	ETD50G3rbDZkqrbaQqt0X4ia4VWotzzDxa/gxssh6gcs11ab8Jm0yUjjIfa3X8fMDoDdlfHuUpPjd
	wDZcXalA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10C-00DSks-5B; Tue, 28 Feb 2023 14:30:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX100-00DSgL-Lq
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00047E-0Y; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zy-000t8t-B3; Tue, 28 Feb 2023 15:30:34 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LW6-R2; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:22 +0100
Message-Id: <20230228143031.1718565-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063036_753688_01CB4B48 
X-CRM114-Status: GOOD (  12.44  )
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
Subject: [PATCH 0/9] ARM: misc cleanups
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

I am working on making it possible to build support for multiple
arch/arm/mach-*/ into the same barebox. Here are some misc cleanups
I stumbled upon while preparing multi arch support.

Sascha Hauer (9):
  ARM: mxs: remove unused mach/clock.h
  ARM: imx: remove unused mach/clock.h
  ARM: rockchip: drop mach/timer.h
  ARM: i.MX: Move imxfb.h to include/platform_data/
  pinctrl: rockchip: Fix uninitialized var warning
  ARM: at91: remove unnecessary configs
  ARM: at91: Switch all boards to multiimage
  at91: consolidate usb-a963 128m images
  ARM: pxa: Move plat/ include files to mach/

 arch/arm/Kconfig                              |   1 +
 arch/arm/boards/animeo_ip/lowlevel.c          |   2 +-
 arch/arm/boards/at91rm9200ek/lowlevel.c       |   2 +-
 arch/arm/boards/at91sam9260ek/lowlevel.c      |  13 +-
 arch/arm/boards/at91sam9261ek/lowlevel_init.c |  11 +-
 arch/arm/boards/at91sam9m10g45ek/lowlevel.c   |   2 +-
 arch/arm/boards/at91sam9m10ihd/lowlevel.c     |   2 +-
 arch/arm/boards/at91sam9n12ek/lowlevel.c      |   2 +-
 .../arm/boards/chumby_falconwing/falconwing.c |   1 -
 .../boards/crystalfontz-cfa10036/cfa10036.c   |   1 -
 arch/arm/boards/dss11/lowlevel.c              |   2 +-
 arch/arm/boards/duckbill/board.c              |   1 -
 .../boards/eukrea_cpuimx25/eukrea_cpuimx25.c  |   2 +-
 .../boards/eukrea_cpuimx27/eukrea_cpuimx27.c  |   2 +-
 arch/arm/boards/freescale-mx21-ads/imx21ads.c |   2 +-
 arch/arm/boards/freescale-mx23-evk/mx23-evk.c |   1 -
 arch/arm/boards/guf-neso/board.c              |   2 +-
 arch/arm/boards/haba-knx/lowlevel.c           |   2 +-
 .../boards/imx233-olinuxino/imx23-olinuxino.c |   1 -
 arch/arm/boards/karo-tx28/tx28-stk5.c         |   1 -
 arch/arm/boards/phytec-phycard-imx27/pca100.c |   2 +-
 arch/arm/boards/phytec-phycore-imx27/pcm038.c |   2 +-
 arch/arm/boards/pm9261/lowlevel_init.c        |   2 +-
 arch/arm/boards/pm9263/lowlevel_init.c        |   2 +-
 arch/arm/boards/pm9g45/lowlevel.c             |   2 +-
 arch/arm/boards/qil-a926x/lowlevel.c          |  13 +-
 arch/arm/boards/telit-evk-pro3/lowlevel.c     |   2 +-
 .../arm/boards/tny-a926x/tny_a9260_lowlevel.c |  13 +-
 .../arm/boards/tny-a926x/tny_a9263_lowlevel.c |   2 +-
 .../arm/boards/usb-a926x/usb_a9260_lowlevel.c |  13 +-
 .../arm/boards/usb-a926x/usb_a9263_lowlevel.c |  21 +-
 arch/arm/configs/qil_a9260_128mib_defconfig   |  73 ---
 arch/arm/configs/qil_a9g20_128mib_defconfig   |  73 ---
 .../usb_a9263_128mib_bootstrap_defconfig      |  24 -
 arch/arm/configs/usb_a9263_128mib_defconfig   |  77 ---
 arch/arm/configs/usb_a9g20_128mib_defconfig   |  83 ----
 arch/arm/mach-at91/Kconfig                    |   7 -
 arch/arm/mach-imx/include/mach/clock.h        |   3 -
 arch/arm/mach-imx/include/mach/devices.h      |   2 +-
 arch/arm/mach-mxs/clocksource-imx23.c         |   1 -
 arch/arm/mach-mxs/clocksource-imx28.c         |   1 -
 arch/arm/mach-mxs/include/mach/clock.h        |   7 -
 arch/arm/mach-pxa/include/mach/gpio.h         |  38 +-
 arch/arm/mach-pxa/include/mach/mfp-pxa2xx.h   |   2 +-
 arch/arm/mach-pxa/include/mach/mfp-pxa3xx.h   |   2 +-
 arch/arm/mach-pxa/include/mach/mfp.h          | 460 ++++++++++++++++-
 arch/arm/mach-pxa/include/plat/gpio.h         |  42 --
 arch/arm/mach-pxa/include/plat/mfp.h          | 469 ------------------
 arch/arm/mach-pxa/mfp-pxa3xx.c                |   2 +-
 arch/arm/mach-rockchip/include/mach/timer.h   |  19 -
 drivers/clocksource/rk_timer.c                |  10 +-
 drivers/mci/mxs.c                             |   1 -
 drivers/pinctrl/pinctrl-rockchip.c            |   2 +-
 drivers/serial/serial_auart.c                 |   2 -
 drivers/serial/stm-serial.c                   |   1 -
 drivers/spi/mxs_spi.c                         |   1 -
 drivers/video/imx-ipu-fb.c                    |   2 +-
 drivers/video/imx.c                           |   2 +-
 images/Makefile.at91                          |  96 ++++
 .../mach => include/platform_data}/imxfb.h    |   0
 60 files changed, 695 insertions(+), 934 deletions(-)
 delete mode 100644 arch/arm/configs/qil_a9260_128mib_defconfig
 delete mode 100644 arch/arm/configs/qil_a9g20_128mib_defconfig
 delete mode 100644 arch/arm/configs/usb_a9263_128mib_bootstrap_defconfig
 delete mode 100644 arch/arm/configs/usb_a9263_128mib_defconfig
 delete mode 100644 arch/arm/configs/usb_a9g20_128mib_defconfig
 delete mode 100644 arch/arm/mach-imx/include/mach/clock.h
 delete mode 100644 arch/arm/mach-mxs/include/mach/clock.h
 delete mode 100644 arch/arm/mach-pxa/include/plat/gpio.h
 delete mode 100644 arch/arm/mach-pxa/include/plat/mfp.h
 delete mode 100644 arch/arm/mach-rockchip/include/mach/timer.h
 rename {arch/arm/mach-imx/include/mach => include/platform_data}/imxfb.h (100%)

-- 
2.30.2



