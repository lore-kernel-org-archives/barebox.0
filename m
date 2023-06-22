Delivery-date: Thu, 22 Jun 2023 09:25:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgq-00GhNr-H6
	for lore@lore.pengutronix.de; Thu, 22 Jun 2023 09:25:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qCEgo-0001SS-4F
	for lore@pengutronix.de; Thu, 22 Jun 2023 09:25:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=57CQmbVBeICCDdUc5RsDQ4p7weXGcf7XCIwyxamI4S0=; b=oNC/n+7bKpIm2zTUQwHMlO+4si
	+9LNmRqKFqAxGvzapgiGk+DP+aWJqQ0M/RCQb7ue5jAJkdB9eB87dk4OtCqnLA6EltnRRmj5M/yS/
	6mG2RmrG9OGyoLdKH2AZco7ZjpOGOKIIT8fDFceI6TG6FLh9m6UHxv+XRNHqoKYy2rHqwQPjSU+1a
	9AgA9EKG7ctkILxZWD00Gs47YVQdxTCsG8mfHGFIi7/8Mkna0Qnd6gZO/1GWbvRQRq1orwLTQx2Eh
	Qfs/01eV2kEHA2YhHKY7aUB8YZ89H3XZDseBPJHGM2TOTDFW4japTCQlg3kVu2TflSkLSeJC94BVY
	Lv6EACZw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfW-00HDts-0X;
	Thu, 22 Jun 2023 07:23:50 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qCEfR-00HDqA-2e
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 07:23:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfN-000125-I1
	for barebox@lists.infradead.org; Thu, 22 Jun 2023 09:23:41 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfM-009Djy-TO
	for barebox@lists.infradead.org; Thu, 22 Jun 2023 09:23:40 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qCEfL-005cRG-08
	for barebox@lists.infradead.org;
	Thu, 22 Jun 2023 09:23:39 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 22 Jun 2023 09:23:20 +0200
Message-Id: <20230622072329.1339317-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230622_002345_870727_B842B1C2 
X-CRM114-Status: GOOD (  12.07  )
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
Subject: [PATCH v2 0/9] gpio: add proper gpiod API
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

v1 -> v2:
  - drop unrelated help command patch
  - drop gpio-mux patch for separate sending out
  - rebase onto next
  - fix and add stubs for !CONFIG_GPIOLIB
  - rename internal gpioinfo_ functions to gpiodesc_

v1 was here:
https://lore.barebox.org/barebox/20230621092700.GE18491@pengutronix.de/T/#t

Ahmad Fatoum (9):
  driver: include dev_print and family from <driver.h>
  include: linux/printk: define new dev_errp_probe
  gpio: have gpiod_ functions return and accept pointers
  gpio: gpiolib: rename struct gpio_info to gpio_desc
  gpiolib: export proper gpio descriptor API
  bitmap: implement bitmap_{to,from}_arr{32,64}
  gpiolib: factor out finding gpio property
  gpiolib: add support for requesting and setting gpiod arrays
  gpiolib: rename gpioinfo_ to gpiodesc_

 drivers/gpio/gpio-pca953x.c              |   9 +-
 drivers/gpio/gpiolib.c                   | 528 +++++++++++++++++------
 drivers/mci/mci_spi.c                    |  13 +-
 drivers/mtd/nand/atmel/nand-controller.c |  40 +-
 drivers/mtd/nand/nand_base.c             |   6 +-
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
 include/linux/gpio/consumer.h            | 224 ++++++++++
 include/linux/mtd/rawnand.h              |   4 +-
 include/linux/printk.h                   |   3 +
 include/video/mipi_dbi.h                 |   7 +-
 lib/bitmap.c                             | 103 +++++
 31 files changed, 1019 insertions(+), 389 deletions(-)
 create mode 100644 include/linux/gpio/consumer.h

-- 
2.39.2



