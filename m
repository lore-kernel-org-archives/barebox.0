Delivery-date: Tue, 28 Feb 2023 14:59:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX0Vi-004jMg-K5
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 14:59:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX0Vh-0000Ov-NA
	for lore@pengutronix.de; Tue, 28 Feb 2023 14:59:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=FTxx0icPxjz929aWKDgyJWA3ZUuYm7GKz23vMBIeMu8=; b=nm2LXPu5wgofri3s1oPXMdsi7v
	Tbvjpn2S3RM467KCqOyyE6YjrapIMiJW8Zgbu73GXZ6gITq4tLwnnMdMgbvIHDpbd4hprEh9qjbov
	+GTW54A7r1+exiRfvdBprV5jH1gWnMfL5cETmxjF8UZSigBhSeRHDd6RrV5SJ+RSzUOE9xouE9xv+
	6KmPx9N3jYi8VxfcmfLM/D+Di3CV6f8sRgqfQQFvsnVj20qfxW0pEF0QkivTYVSySWd3zxf51RHx+
	+moP+4jPMWbS/y5+NPUYe/mOSf22LHU5C9poNZwkkjvGBqtC+YTQPrMrGOC3o9SmParzxXrrQlZ7n
	2IfwGptg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX0U9-00DMdP-LP; Tue, 28 Feb 2023 13:57:41 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX0U1-00DMZw-Pr
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 13:57:36 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Ty-00009y-Ra; Tue, 28 Feb 2023 14:57:30 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Ty-000sdi-5G; Tue, 28 Feb 2023 14:57:30 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0Tx-006irV-1f; Tue, 28 Feb 2023 14:57:29 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 14:57:22 +0100
Message-Id: <20230228135727.1602351-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_055734_232306_C4629669 
X-CRM114-Status: GOOD (  11.93  )
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
Subject: [PATCH 0/5] ARM: remove Samsung arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

arch/arm/mach-samsung hasn't seen any active maintenance or interest
for a long time. It starts standing in the way for further development,
so remove it. RIP.

Sascha

Sascha Hauer (5):
  ARM: remove samsung arch
  mci: remove s3c driver
  mtd: nand: remove s3c driver
  serial: remove s3c driver
  video: remove s3c driver

 Documentation/boards/s3c/Digi-a9m2440.rst     |  93 --
 Documentation/boards/samsung.rst              |   8 -
 arch/arm/Kconfig                              |  19 -
 arch/arm/Makefile                             |  13 -
 arch/arm/boards/a9m2410/Makefile              |   4 -
 arch/arm/boards/a9m2410/a9m2410.c             | 136 ---
 arch/arm/boards/a9m2410/config.h              | 109 ---
 arch/arm/boards/a9m2410/env/bin/_update       |  36 -
 arch/arm/boards/a9m2410/env/bin/boot          |  38 -
 arch/arm/boards/a9m2410/env/bin/init          |  30 -
 arch/arm/boards/a9m2410/env/bin/update_kernel |  13 -
 arch/arm/boards/a9m2410/env/bin/update_root   |  11 -
 arch/arm/boards/a9m2410/env/config            |  26 -
 arch/arm/boards/a9m2410/lowlevel_init.S       |  39 -
 arch/arm/boards/a9m2440/Makefile              |   5 -
 arch/arm/boards/a9m2440/a9m2410dev.c          |  82 --
 arch/arm/boards/a9m2440/a9m2440.c             | 143 ----
 arch/arm/boards/a9m2440/baseboards.h          |   6 -
 arch/arm/boards/a9m2440/config.h              |  60 --
 arch/arm/boards/a9m2440/env/bin/_update       |  34 -
 arch/arm/boards/a9m2440/env/bin/boot          |  40 -
 arch/arm/boards/a9m2440/env/bin/init          |  30 -
 arch/arm/boards/a9m2440/env/bin/update_kernel |  13 -
 arch/arm/boards/a9m2440/env/bin/update_root   |  13 -
 arch/arm/boards/a9m2440/env/config            |  26 -
 arch/arm/boards/a9m2440/lowlevel_init.S       | 243 ------
 arch/arm/boards/friendlyarm-mini2440/Kconfig  |  35 -
 arch/arm/boards/friendlyarm-mini2440/Makefile |   5 -
 arch/arm/boards/friendlyarm-mini2440/config.h | 118 ---
 .../boards/friendlyarm-mini2440/env/boot/nand |   4 -
 .../friendlyarm-mini2440/env/config-board     |  16 -
 .../env/init/mtdparts-nand                    |   6 -
 .../friendlyarm-mini2440/lowlevel_init.S      |  44 -
 .../boards/friendlyarm-mini2440/mini2440.c    | 341 --------
 arch/arm/boards/friendlyarm-mini6410/Makefile |   5 -
 arch/arm/boards/friendlyarm-mini6410/config.h |  10 -
 .../defaultenv-friendlyarm-mini6410/config    |  52 --
 .../boards/friendlyarm-mini6410/lowlevel.c    |  13 -
 .../boards/friendlyarm-mini6410/mini6410.c    | 302 -------
 arch/arm/boards/friendlyarm-tiny210/Makefile  |   4 -
 arch/arm/boards/friendlyarm-tiny210/config.h  |  21 -
 .../arm/boards/friendlyarm-tiny210/lowlevel.c | 100 ---
 arch/arm/boards/friendlyarm-tiny210/tiny210.c | 102 ---
 arch/arm/boards/friendlyarm-tiny6410/Kconfig  |  21 -
 arch/arm/boards/friendlyarm-tiny6410/Makefile |   6 -
 arch/arm/boards/friendlyarm-tiny6410/config.h |  10 -
 .../defaultenv-friendlyarm-tiny6410/config    |  52 --
 .../friendlyarm-tiny6410/development-board.c  |  94 ---
 .../boards/friendlyarm-tiny6410/lowlevel.c    |  13 -
 .../boards/friendlyarm-tiny6410/tiny6410.c    |  72 --
 .../boards/friendlyarm-tiny6410/tiny6410.h    |   4 -
 arch/arm/configs/a9m2410_defconfig            |  32 -
 arch/arm/configs/a9m2440_defconfig            |  34 -
 .../configs/friendlyarm_mini2440_defconfig    |  41 -
 .../configs/friendlyarm_mini6410_defconfig    |  34 -
 .../arm/configs/friendlyarm_tiny210_defconfig |   7 -
 .../configs/friendlyarm_tiny6410_defconfig    |  35 -
 arch/arm/mach-samsung/Kconfig                 | 178 ----
 arch/arm/mach-samsung/Makefile                |  14 -
 arch/arm/mach-samsung/bbu-nand-s3c24x0.c      |  85 --
 arch/arm/mach-samsung/clocks-s3c24xx.c        | 145 ----
 arch/arm/mach-samsung/clocks-s3c64xx.c        | 338 --------
 arch/arm/mach-samsung/clocks-s5pcxx.c         |  98 ---
 arch/arm/mach-samsung/generic.c               |  51 --
 arch/arm/mach-samsung/gpio-s3c24x0.c          | 167 ----
 arch/arm/mach-samsung/gpio-s3c64xx.c          | 302 -------
 arch/arm/mach-samsung/gpio-s5pcxx.c           | 124 ---
 arch/arm/mach-samsung/include/mach/bbu.h      |  18 -
 .../include/mach/devices-s3c24xx.h            |  55 --
 .../include/mach/devices-s3c64xx.h            |  40 -
 .../mach-samsung/include/mach/iomux-s3c24x0.h | 422 ---------
 .../mach-samsung/include/mach/iomux-s3c64xx.h | 542 ------------
 .../mach-samsung/include/mach/iomux-s5pcxx.h  | 798 ------------------
 arch/arm/mach-samsung/include/mach/iomux.h    |  28 -
 .../mach-samsung/include/mach/s3c-busctl.h    |  32 -
 .../mach-samsung/include/mach/s3c-clocks.h    |  28 -
 .../mach-samsung/include/mach/s3c-generic.h   |  62 --
 .../arm/mach-samsung/include/mach/s3c-iomap.h |  23 -
 arch/arm/mach-samsung/include/mach/s3c-mci.h  |  39 -
 .../include/mach/s3c24xx-clocks.h             |  24 -
 .../mach-samsung/include/mach/s3c24xx-fb.h    |  55 --
 .../mach-samsung/include/mach/s3c24xx-gpio.h  |  77 --
 .../mach-samsung/include/mach/s3c24xx-iomap.h |  65 --
 .../mach-samsung/include/mach/s3c24xx-nand.h  |  57 --
 .../include/mach/s3c64xx-clocks.h             |  67 --
 .../mach-samsung/include/mach/s3c64xx-iomap.h |  51 --
 .../mach-samsung/include/mach/s5pcxx-clocks.h |  55 --
 .../mach-samsung/include/mach/s5pcxx-iomap.h  |  46 -
 arch/arm/mach-samsung/lowlevel-s3c24x0.S      | 305 -------
 arch/arm/mach-samsung/lowlevel-s5pcxx.c       |  61 --
 arch/arm/mach-samsung/mem-s3c24x0.c           |  79 --
 arch/arm/mach-samsung/mem-s3c64xx.c           |  66 --
 arch/arm/mach-samsung/mem-s5pcxx.c            | 320 -------
 arch/arm/mach-samsung/reset_source.c          |  56 --
 arch/arm/mach-samsung/s3c-timer.c             | 119 ---
 drivers/mci/Kconfig                           |   7 -
 drivers/mci/Makefile                          |   1 -
 drivers/mci/s3c.c                             | 762 -----------------
 drivers/mtd/nand/Kconfig                      |   7 -
 drivers/mtd/nand/Makefile                     |   2 -
 drivers/mtd/nand/nand_s3c24xx.c               | 649 --------------
 drivers/serial/Kconfig                        |  18 -
 drivers/serial/Makefile                       |   1 -
 drivers/serial/serial_s3c.c                   | 198 -----
 drivers/video/Kconfig                         |  13 -
 drivers/video/Makefile                        |   1 -
 drivers/video/s3c24xx.c                       | 411 ---------
 scripts/.gitignore                            |   1 -
 scripts/Kconfig                               |   7 -
 scripts/Makefile                              |   1 -
 110 files changed, 10074 deletions(-)
 delete mode 100644 Documentation/boards/s3c/Digi-a9m2440.rst
 delete mode 100644 Documentation/boards/samsung.rst
 delete mode 100644 arch/arm/boards/a9m2410/Makefile
 delete mode 100644 arch/arm/boards/a9m2410/a9m2410.c
 delete mode 100644 arch/arm/boards/a9m2410/config.h
 delete mode 100644 arch/arm/boards/a9m2410/env/bin/_update
 delete mode 100644 arch/arm/boards/a9m2410/env/bin/boot
 delete mode 100644 arch/arm/boards/a9m2410/env/bin/init
 delete mode 100644 arch/arm/boards/a9m2410/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/a9m2410/env/bin/update_root
 delete mode 100644 arch/arm/boards/a9m2410/env/config
 delete mode 100644 arch/arm/boards/a9m2410/lowlevel_init.S
 delete mode 100644 arch/arm/boards/a9m2440/Makefile
 delete mode 100644 arch/arm/boards/a9m2440/a9m2410dev.c
 delete mode 100644 arch/arm/boards/a9m2440/a9m2440.c
 delete mode 100644 arch/arm/boards/a9m2440/baseboards.h
 delete mode 100644 arch/arm/boards/a9m2440/config.h
 delete mode 100644 arch/arm/boards/a9m2440/env/bin/_update
 delete mode 100644 arch/arm/boards/a9m2440/env/bin/boot
 delete mode 100644 arch/arm/boards/a9m2440/env/bin/init
 delete mode 100644 arch/arm/boards/a9m2440/env/bin/update_kernel
 delete mode 100644 arch/arm/boards/a9m2440/env/bin/update_root
 delete mode 100644 arch/arm/boards/a9m2440/env/config
 delete mode 100644 arch/arm/boards/a9m2440/lowlevel_init.S
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/Kconfig
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/Makefile
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/config.h
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/boot/nand
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/config-board
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
 delete mode 100644 arch/arm/boards/friendlyarm-mini2440/mini2440.c
 delete mode 100644 arch/arm/boards/friendlyarm-mini6410/Makefile
 delete mode 100644 arch/arm/boards/friendlyarm-mini6410/config.h
 delete mode 100644 arch/arm/boards/friendlyarm-mini6410/defaultenv-friendlyarm-mini6410/config
 delete mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
 delete mode 100644 arch/arm/boards/friendlyarm-mini6410/mini6410.c
 delete mode 100644 arch/arm/boards/friendlyarm-tiny210/Makefile
 delete mode 100644 arch/arm/boards/friendlyarm-tiny210/config.h
 delete mode 100644 arch/arm/boards/friendlyarm-tiny210/lowlevel.c
 delete mode 100644 arch/arm/boards/friendlyarm-tiny210/tiny210.c
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/Kconfig
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/Makefile
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/config.h
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/defaultenv-friendlyarm-tiny6410/config
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/development-board.c
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
 delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
 delete mode 100644 arch/arm/configs/a9m2410_defconfig
 delete mode 100644 arch/arm/configs/a9m2440_defconfig
 delete mode 100644 arch/arm/configs/friendlyarm_mini2440_defconfig
 delete mode 100644 arch/arm/configs/friendlyarm_mini6410_defconfig
 delete mode 100644 arch/arm/configs/friendlyarm_tiny210_defconfig
 delete mode 100644 arch/arm/configs/friendlyarm_tiny6410_defconfig
 delete mode 100644 arch/arm/mach-samsung/Kconfig
 delete mode 100644 arch/arm/mach-samsung/Makefile
 delete mode 100644 arch/arm/mach-samsung/bbu-nand-s3c24x0.c
 delete mode 100644 arch/arm/mach-samsung/clocks-s3c24xx.c
 delete mode 100644 arch/arm/mach-samsung/clocks-s3c64xx.c
 delete mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
 delete mode 100644 arch/arm/mach-samsung/generic.c
 delete mode 100644 arch/arm/mach-samsung/gpio-s3c24x0.c
 delete mode 100644 arch/arm/mach-samsung/gpio-s3c64xx.c
 delete mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
 delete mode 100644 arch/arm/mach-samsung/include/mach/bbu.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c24xx.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c64xx.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/iomux.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-busctl.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-clocks.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-generic.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-iomap.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-mci.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-clocks.h
 delete mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
 delete mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
 delete mode 100644 arch/arm/mach-samsung/lowlevel-s5pcxx.c
 delete mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
 delete mode 100644 arch/arm/mach-samsung/mem-s3c64xx.c
 delete mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
 delete mode 100644 arch/arm/mach-samsung/reset_source.c
 delete mode 100644 arch/arm/mach-samsung/s3c-timer.c
 delete mode 100644 drivers/mci/s3c.c
 delete mode 100644 drivers/mtd/nand/nand_s3c24xx.c
 delete mode 100644 drivers/serial/serial_s3c.c
 delete mode 100644 drivers/video/s3c24xx.c

-- 
2.30.2



