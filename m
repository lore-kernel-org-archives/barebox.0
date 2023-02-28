Delivery-date: Tue, 28 Feb 2023 16:08:16 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX1aR-004m6g-Ps
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 16:08:16 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX1aR-0001d0-5J
	for lore@pengutronix.de; Tue, 28 Feb 2023 16:08:16 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cqYiTY4xI/L7wDAxdKMLP87stDy2Saq5B5JQmEO4wXQ=; b=upakywPssHsEjEO0p93wK9zu5D
	H4iP2s1uJB77ZFhSjR51jE4y2yVgOXciBBvlaTU7hfeqN4v25xOJrRLqs/IiDznXLQuIa20UPw5Op
	L5UvMAB71eiUSbKR/YjJmqxLFSrDPlWLgeBP0KR5syePdvCbTJM9RgHaUoBkWbYrkPIv6LvNH5X+D
	4GSX672PMXFZPTqJhvDMp9P2sJSCHHJMMEIeWhxhEgIbXE3BT1syK3UYaGJhuIuIFrN0Aa2/EkHlX
	S/+zCCpRPDiIbhX0Pr21KP0T4ExdDeoH/aovjYx06481gV4YTxm0O9L7HlbHqDOgyr92TsnJXF5Qz
	i8qbEMhg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1Yv-00DbHA-NC; Tue, 28 Feb 2023 15:06:41 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX1Yp-00DbDw-Ny
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 15:06:38 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pX1WW-0000wX-4a; Tue, 28 Feb 2023 16:04:12 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pX1WV-0004kY-T0; Tue, 28 Feb 2023 16:04:11 +0100
Date: Tue, 28 Feb 2023 16:04:11 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230228150411.6fwwdx66eizfzj62@pengutronix.de>
References: <20230228135727.1602351-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230228135727.1602351-1-s.hauer@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_070636_125476_4D5AC963 
X-CRM114-Status: GOOD (  12.15  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 0/5] ARM: remove Samsung arch
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-02-28, Sascha Hauer wrote:
> arch/arm/mach-samsung hasn't seen any active maintenance or interest

Unfortunately..

> for a long time. It starts standing in the way for further development,
> so remove it. RIP.
> 
> Sascha
> 
> Sascha Hauer (5):
>   ARM: remove samsung arch
>   mci: remove s3c driver
>   mtd: nand: remove s3c driver
>   serial: remove s3c driver
>   video: remove s3c driver

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

>  Documentation/boards/s3c/Digi-a9m2440.rst     |  93 --
>  Documentation/boards/samsung.rst              |   8 -
>  arch/arm/Kconfig                              |  19 -
>  arch/arm/Makefile                             |  13 -
>  arch/arm/boards/a9m2410/Makefile              |   4 -
>  arch/arm/boards/a9m2410/a9m2410.c             | 136 ---
>  arch/arm/boards/a9m2410/config.h              | 109 ---
>  arch/arm/boards/a9m2410/env/bin/_update       |  36 -
>  arch/arm/boards/a9m2410/env/bin/boot          |  38 -
>  arch/arm/boards/a9m2410/env/bin/init          |  30 -
>  arch/arm/boards/a9m2410/env/bin/update_kernel |  13 -
>  arch/arm/boards/a9m2410/env/bin/update_root   |  11 -
>  arch/arm/boards/a9m2410/env/config            |  26 -
>  arch/arm/boards/a9m2410/lowlevel_init.S       |  39 -
>  arch/arm/boards/a9m2440/Makefile              |   5 -
>  arch/arm/boards/a9m2440/a9m2410dev.c          |  82 --
>  arch/arm/boards/a9m2440/a9m2440.c             | 143 ----
>  arch/arm/boards/a9m2440/baseboards.h          |   6 -
>  arch/arm/boards/a9m2440/config.h              |  60 --
>  arch/arm/boards/a9m2440/env/bin/_update       |  34 -
>  arch/arm/boards/a9m2440/env/bin/boot          |  40 -
>  arch/arm/boards/a9m2440/env/bin/init          |  30 -
>  arch/arm/boards/a9m2440/env/bin/update_kernel |  13 -
>  arch/arm/boards/a9m2440/env/bin/update_root   |  13 -
>  arch/arm/boards/a9m2440/env/config            |  26 -
>  arch/arm/boards/a9m2440/lowlevel_init.S       | 243 ------
>  arch/arm/boards/friendlyarm-mini2440/Kconfig  |  35 -
>  arch/arm/boards/friendlyarm-mini2440/Makefile |   5 -
>  arch/arm/boards/friendlyarm-mini2440/config.h | 118 ---
>  .../boards/friendlyarm-mini2440/env/boot/nand |   4 -
>  .../friendlyarm-mini2440/env/config-board     |  16 -
>  .../env/init/mtdparts-nand                    |   6 -
>  .../friendlyarm-mini2440/lowlevel_init.S      |  44 -
>  .../boards/friendlyarm-mini2440/mini2440.c    | 341 --------
>  arch/arm/boards/friendlyarm-mini6410/Makefile |   5 -
>  arch/arm/boards/friendlyarm-mini6410/config.h |  10 -
>  .../defaultenv-friendlyarm-mini6410/config    |  52 --
>  .../boards/friendlyarm-mini6410/lowlevel.c    |  13 -
>  .../boards/friendlyarm-mini6410/mini6410.c    | 302 -------
>  arch/arm/boards/friendlyarm-tiny210/Makefile  |   4 -
>  arch/arm/boards/friendlyarm-tiny210/config.h  |  21 -
>  .../arm/boards/friendlyarm-tiny210/lowlevel.c | 100 ---
>  arch/arm/boards/friendlyarm-tiny210/tiny210.c | 102 ---
>  arch/arm/boards/friendlyarm-tiny6410/Kconfig  |  21 -
>  arch/arm/boards/friendlyarm-tiny6410/Makefile |   6 -
>  arch/arm/boards/friendlyarm-tiny6410/config.h |  10 -
>  .../defaultenv-friendlyarm-tiny6410/config    |  52 --
>  .../friendlyarm-tiny6410/development-board.c  |  94 ---
>  .../boards/friendlyarm-tiny6410/lowlevel.c    |  13 -
>  .../boards/friendlyarm-tiny6410/tiny6410.c    |  72 --
>  .../boards/friendlyarm-tiny6410/tiny6410.h    |   4 -
>  arch/arm/configs/a9m2410_defconfig            |  32 -
>  arch/arm/configs/a9m2440_defconfig            |  34 -
>  .../configs/friendlyarm_mini2440_defconfig    |  41 -
>  .../configs/friendlyarm_mini6410_defconfig    |  34 -
>  .../arm/configs/friendlyarm_tiny210_defconfig |   7 -
>  .../configs/friendlyarm_tiny6410_defconfig    |  35 -
>  arch/arm/mach-samsung/Kconfig                 | 178 ----
>  arch/arm/mach-samsung/Makefile                |  14 -
>  arch/arm/mach-samsung/bbu-nand-s3c24x0.c      |  85 --
>  arch/arm/mach-samsung/clocks-s3c24xx.c        | 145 ----
>  arch/arm/mach-samsung/clocks-s3c64xx.c        | 338 --------
>  arch/arm/mach-samsung/clocks-s5pcxx.c         |  98 ---
>  arch/arm/mach-samsung/generic.c               |  51 --
>  arch/arm/mach-samsung/gpio-s3c24x0.c          | 167 ----
>  arch/arm/mach-samsung/gpio-s3c64xx.c          | 302 -------
>  arch/arm/mach-samsung/gpio-s5pcxx.c           | 124 ---
>  arch/arm/mach-samsung/include/mach/bbu.h      |  18 -
>  .../include/mach/devices-s3c24xx.h            |  55 --
>  .../include/mach/devices-s3c64xx.h            |  40 -
>  .../mach-samsung/include/mach/iomux-s3c24x0.h | 422 ---------
>  .../mach-samsung/include/mach/iomux-s3c64xx.h | 542 ------------
>  .../mach-samsung/include/mach/iomux-s5pcxx.h  | 798 ------------------
>  arch/arm/mach-samsung/include/mach/iomux.h    |  28 -
>  .../mach-samsung/include/mach/s3c-busctl.h    |  32 -
>  .../mach-samsung/include/mach/s3c-clocks.h    |  28 -
>  .../mach-samsung/include/mach/s3c-generic.h   |  62 --
>  .../arm/mach-samsung/include/mach/s3c-iomap.h |  23 -
>  arch/arm/mach-samsung/include/mach/s3c-mci.h  |  39 -
>  .../include/mach/s3c24xx-clocks.h             |  24 -
>  .../mach-samsung/include/mach/s3c24xx-fb.h    |  55 --
>  .../mach-samsung/include/mach/s3c24xx-gpio.h  |  77 --
>  .../mach-samsung/include/mach/s3c24xx-iomap.h |  65 --
>  .../mach-samsung/include/mach/s3c24xx-nand.h  |  57 --
>  .../include/mach/s3c64xx-clocks.h             |  67 --
>  .../mach-samsung/include/mach/s3c64xx-iomap.h |  51 --
>  .../mach-samsung/include/mach/s5pcxx-clocks.h |  55 --
>  .../mach-samsung/include/mach/s5pcxx-iomap.h  |  46 -
>  arch/arm/mach-samsung/lowlevel-s3c24x0.S      | 305 -------
>  arch/arm/mach-samsung/lowlevel-s5pcxx.c       |  61 --
>  arch/arm/mach-samsung/mem-s3c24x0.c           |  79 --
>  arch/arm/mach-samsung/mem-s3c64xx.c           |  66 --
>  arch/arm/mach-samsung/mem-s5pcxx.c            | 320 -------
>  arch/arm/mach-samsung/reset_source.c          |  56 --
>  arch/arm/mach-samsung/s3c-timer.c             | 119 ---
>  drivers/mci/Kconfig                           |   7 -
>  drivers/mci/Makefile                          |   1 -
>  drivers/mci/s3c.c                             | 762 -----------------
>  drivers/mtd/nand/Kconfig                      |   7 -
>  drivers/mtd/nand/Makefile                     |   2 -
>  drivers/mtd/nand/nand_s3c24xx.c               | 649 --------------
>  drivers/serial/Kconfig                        |  18 -
>  drivers/serial/Makefile                       |   1 -
>  drivers/serial/serial_s3c.c                   | 198 -----
>  drivers/video/Kconfig                         |  13 -
>  drivers/video/Makefile                        |   1 -
>  drivers/video/s3c24xx.c                       | 411 ---------
>  scripts/.gitignore                            |   1 -
>  scripts/Kconfig                               |   7 -
>  scripts/Makefile                              |   1 -
>  110 files changed, 10074 deletions(-)
>  delete mode 100644 Documentation/boards/s3c/Digi-a9m2440.rst
>  delete mode 100644 Documentation/boards/samsung.rst
>  delete mode 100644 arch/arm/boards/a9m2410/Makefile
>  delete mode 100644 arch/arm/boards/a9m2410/a9m2410.c
>  delete mode 100644 arch/arm/boards/a9m2410/config.h
>  delete mode 100644 arch/arm/boards/a9m2410/env/bin/_update
>  delete mode 100644 arch/arm/boards/a9m2410/env/bin/boot
>  delete mode 100644 arch/arm/boards/a9m2410/env/bin/init
>  delete mode 100644 arch/arm/boards/a9m2410/env/bin/update_kernel
>  delete mode 100644 arch/arm/boards/a9m2410/env/bin/update_root
>  delete mode 100644 arch/arm/boards/a9m2410/env/config
>  delete mode 100644 arch/arm/boards/a9m2410/lowlevel_init.S
>  delete mode 100644 arch/arm/boards/a9m2440/Makefile
>  delete mode 100644 arch/arm/boards/a9m2440/a9m2410dev.c
>  delete mode 100644 arch/arm/boards/a9m2440/a9m2440.c
>  delete mode 100644 arch/arm/boards/a9m2440/baseboards.h
>  delete mode 100644 arch/arm/boards/a9m2440/config.h
>  delete mode 100644 arch/arm/boards/a9m2440/env/bin/_update
>  delete mode 100644 arch/arm/boards/a9m2440/env/bin/boot
>  delete mode 100644 arch/arm/boards/a9m2440/env/bin/init
>  delete mode 100644 arch/arm/boards/a9m2440/env/bin/update_kernel
>  delete mode 100644 arch/arm/boards/a9m2440/env/bin/update_root
>  delete mode 100644 arch/arm/boards/a9m2440/env/config
>  delete mode 100644 arch/arm/boards/a9m2440/lowlevel_init.S
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/Kconfig
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/Makefile
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/config.h
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/boot/nand
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/config-board
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/env/init/mtdparts-nand
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/lowlevel_init.S
>  delete mode 100644 arch/arm/boards/friendlyarm-mini2440/mini2440.c
>  delete mode 100644 arch/arm/boards/friendlyarm-mini6410/Makefile
>  delete mode 100644 arch/arm/boards/friendlyarm-mini6410/config.h
>  delete mode 100644 arch/arm/boards/friendlyarm-mini6410/defaultenv-friendlyarm-mini6410/config
>  delete mode 100644 arch/arm/boards/friendlyarm-mini6410/lowlevel.c
>  delete mode 100644 arch/arm/boards/friendlyarm-mini6410/mini6410.c
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny210/Makefile
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny210/config.h
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny210/lowlevel.c
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny210/tiny210.c
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/Kconfig
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/Makefile
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/config.h
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/defaultenv-friendlyarm-tiny6410/config
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/development-board.c
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/lowlevel.c
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.c
>  delete mode 100644 arch/arm/boards/friendlyarm-tiny6410/tiny6410.h
>  delete mode 100644 arch/arm/configs/a9m2410_defconfig
>  delete mode 100644 arch/arm/configs/a9m2440_defconfig
>  delete mode 100644 arch/arm/configs/friendlyarm_mini2440_defconfig
>  delete mode 100644 arch/arm/configs/friendlyarm_mini6410_defconfig
>  delete mode 100644 arch/arm/configs/friendlyarm_tiny210_defconfig
>  delete mode 100644 arch/arm/configs/friendlyarm_tiny6410_defconfig
>  delete mode 100644 arch/arm/mach-samsung/Kconfig
>  delete mode 100644 arch/arm/mach-samsung/Makefile
>  delete mode 100644 arch/arm/mach-samsung/bbu-nand-s3c24x0.c
>  delete mode 100644 arch/arm/mach-samsung/clocks-s3c24xx.c
>  delete mode 100644 arch/arm/mach-samsung/clocks-s3c64xx.c
>  delete mode 100644 arch/arm/mach-samsung/clocks-s5pcxx.c
>  delete mode 100644 arch/arm/mach-samsung/generic.c
>  delete mode 100644 arch/arm/mach-samsung/gpio-s3c24x0.c
>  delete mode 100644 arch/arm/mach-samsung/gpio-s3c64xx.c
>  delete mode 100644 arch/arm/mach-samsung/gpio-s5pcxx.c
>  delete mode 100644 arch/arm/mach-samsung/include/mach/bbu.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c24xx.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/devices-s3c64xx.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c24x0.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/iomux-s3c64xx.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/iomux-s5pcxx.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/iomux.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-busctl.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-clocks.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-generic.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-iomap.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c-mci.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-clocks.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-fb.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-gpio.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-iomap.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c24xx-nand.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-clocks.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s3c64xx-iomap.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-clocks.h
>  delete mode 100644 arch/arm/mach-samsung/include/mach/s5pcxx-iomap.h
>  delete mode 100644 arch/arm/mach-samsung/lowlevel-s3c24x0.S
>  delete mode 100644 arch/arm/mach-samsung/lowlevel-s5pcxx.c
>  delete mode 100644 arch/arm/mach-samsung/mem-s3c24x0.c
>  delete mode 100644 arch/arm/mach-samsung/mem-s3c64xx.c
>  delete mode 100644 arch/arm/mach-samsung/mem-s5pcxx.c
>  delete mode 100644 arch/arm/mach-samsung/reset_source.c
>  delete mode 100644 arch/arm/mach-samsung/s3c-timer.c
>  delete mode 100644 drivers/mci/s3c.c
>  delete mode 100644 drivers/mtd/nand/nand_s3c24xx.c
>  delete mode 100644 drivers/serial/serial_s3c.c
>  delete mode 100644 drivers/video/s3c24xx.c
> 
> -- 
> 2.30.2
> 
> 
> 


