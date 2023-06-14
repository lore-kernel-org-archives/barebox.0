Delivery-date: Wed, 14 Jun 2023 15:57:05 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzi-006j5j-PF
	for lore@lore.pengutronix.de; Wed, 14 Jun 2023 15:57:05 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q9Qzg-0005kJ-7H
	for lore@pengutronix.de; Wed, 14 Jun 2023 15:57:04 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=HWXExEOdX4agbj/IyCEeD44y6NrusdtvQxB+vo2EjJI=; b=20L8m0C1TJvJXqsZsFfDMnBN4H
	++uinBh2sQKp9fBATGvnpziN/l/I3xm5QlR4yKt1dGo1w42cE+wmzzPrdNm73U0QJvMwhdl8ObjDN
	L30+EUEIyH2ueCjtA0Z5XOaJsHAnQEKIw++26hZp6fixuxX9bsizjj1NQZ5W/oemGgebwOcfZ4e7Z
	CaCjhcBBsGOEc94DCCtZA5OUCfQRTaIPxARf37iTuOu/TBOzc1y9VwfgPyUToShB/L8hGL6Mc6Jjb
	nsUnGw4jxpiDrow93u2FjYSz3WZN59Q2pZnC6rEGFooT3QGMGDPFmJreUTY4vn+taxuqBQDXCcnwT
	hkBCKtow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q9Qyb-00Bp9t-2H;
	Wed, 14 Jun 2023 13:55:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q9QyV-00Bp4W-1C
	for barebox@lists.infradead.org;
	Wed, 14 Jun 2023 13:55:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyS-0005CH-MM
	for barebox@lists.infradead.org; Wed, 14 Jun 2023 15:55:48 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyR-007MxQ-TJ
	for barebox@lists.infradead.org; Wed, 14 Jun 2023 15:55:47 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q9QyR-008D83-C6
	for barebox@lists.infradead.org; Wed, 14 Jun 2023 15:55:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 14 Jun 2023 15:54:42 +0200
Message-Id: <20230614135452.1884124-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230614_065551_426073_913E5A85 
X-CRM114-Status: GOOD (  11.64  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 00/10] gpio: add proper gpiod API and gpio-mux support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The gpiod_ (GPIO descriptor) API used with Linux differs from barebox'
normal GPIO API:

 - gpiod handles are opaque pointers and not an integer, which users
   have an expectation of stability for

 - gpiod API uses logic levels by default with separate raw API for
   physical level instead of physical level by default and separate
   API taking active level into account.

The barebox gpiod_ API mimics the latter point, but still uses integers
requiring ugly and arguably error prone conversions when porting kernel
code.

This series fixes that by adding proper struct gpio_desc API like in
Linux and then builds upon that to port the kernel gpio-mux driver.

Ahmad Fatoum (10):
  driver: include dev_print and family from <driver.h>
  include: linux/printk: define new dev_errp_probe
  gpio: have gpiod_ functions return and accept pointers
  gpio: gpiolib: rename struct gpio_info to gpio_desc
  gpiolib: export proper gpio descriptor API
  bitmap: implement bitmap_{to,from}_arr{32,64}
  commands: help: ignore options after first regular argument
  gpiolib: factor out finding gpio property
  gpiolib: add support for requesting and setting gpiod arrays
  drivers: port Linux mux framework and gpio-mux driver

 commands/help.c                          |  19 +-
 drivers/Kconfig                          |   1 +
 drivers/Makefile                         |   1 +
 drivers/gpio/gpio-pca953x.c              |   9 +-
 drivers/gpio/gpiolib.c                   | 528 +++++++++++++++++------
 drivers/mci/mci_spi.c                    |  13 +-
 drivers/mtd/nand/atmel/nand-controller.c |  40 +-
 drivers/mtd/nand/nand_base.c             |   4 +-
 drivers/mux/Kconfig                      |  29 ++
 drivers/mux/Makefile                     |  10 +
 drivers/mux/core.c                       | 472 ++++++++++++++++++++
 drivers/mux/gpio.c                       | 103 +++++
 drivers/net/designware_eqos.c            |  26 +-
 drivers/net/ksz8873.c                    |  13 +-
 drivers/net/ksz9477.c                    |  13 +-
 drivers/net/realtek-dsa/realtek-mdio.c   |  10 +-
 drivers/net/realtek-dsa/realtek-smi.c    |  18 +-
 drivers/net/realtek-dsa/realtek.h        |   6 +-
 drivers/net/sja1105.c                    |  25 +-
 drivers/nvmem/starfive-otp.c             |  12 +-
 drivers/pci/pcie-dw-rockchip.c           |  14 +-
 drivers/power/reset/gpio-poweroff.c      |  14 +-
 drivers/power/reset/gpio-restart.c       |  23 +-
 drivers/regulator/fixed.c                |  27 +-
 drivers/sound/gpio-beeper.c              |  14 +-
 drivers/usb/misc/onboard_usb_hub.c       |  11 +-
 drivers/video/mipi_dbi.c                 |   8 +-
 drivers/video/panel-ilitek-ili9341.c     |  17 +-
 drivers/video/panel-mipi-dbi.c           |  17 +-
 drivers/watchdog/gpio_wdt.c              |  22 +-
 include/driver.h                         |   1 +
 include/gpiod.h                          |  79 +---
 include/linux/bitmap.h                   | 101 +++++
 include/linux/gpio/consumer.h            | 137 ++++++
 include/linux/mtd/rawnand.h              |   4 +-
 include/linux/printk.h                   |   3 +
 include/video/mipi_dbi.h                 |   7 +-
 lib/bitmap.c                             | 103 +++++
 38 files changed, 1559 insertions(+), 395 deletions(-)
 create mode 100644 drivers/mux/Kconfig
 create mode 100644 drivers/mux/Makefile
 create mode 100644 drivers/mux/core.c
 create mode 100644 drivers/mux/gpio.c
 create mode 100644 include/linux/gpio/consumer.h

-- 
2.39.2



