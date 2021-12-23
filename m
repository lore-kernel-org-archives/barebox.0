Delivery-date: Thu, 23 Dec 2021 17:06:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbT-00Fsc6-28
	for lore@lore.pengutronix.de; Thu, 23 Dec 2021 17:06:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n0QbP-0008D8-4I
	for lore@pengutronix.de; Thu, 23 Dec 2021 17:06:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=atRlmXxPN66txRfocUN0cl5XsyZAAxpRq57OJuYMGJU=; b=ClJZs8xHXNgkEl
	18yuK/kz2BpBdJKVySAGRfslJi9h7rpGE+59SSqGFgnAS/HVH3YiMJKDuTihwvGMJyEsYTiR8pIle
	XOhzAiUiItpKKNpx3CFB3hNID4xdLyHjlU5cXdaEBMkFO9sxaR97wcB6IFJk4MY/mxKrRJ+47mMch
	gFwug18uK+If891Da0tLhuQuRhNUNWjV0Xd5OZnJB4lF+SpkN/VWIhDebsr6EbIS8xR27yZzZbzN0
	fn9kmudPGWN4cR/B9qXMzFjs5UCGnH4e+6+QRJE39xuMJJC2vNqQSqdg6Cj5G+CusJkSEEPUVWp+P
	QHqL934DvWFv4S9Krc3g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n0QZm-00D0aL-GT; Thu, 23 Dec 2021 16:04:18 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n0QZe-00D0XB-GX
 for barebox@lists.infradead.org; Thu, 23 Dec 2021 16:04:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZa-0007fh-Mz; Thu, 23 Dec 2021 17:04:06 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZa-006DL8-K9; Thu, 23 Dec 2021 17:04:05 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1n0QZY-000VDl-Pf; Thu, 23 Dec 2021 17:04:04 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Thu, 23 Dec 2021 17:03:56 +0100
Message-Id: <20211223160404.119970-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211223_080410_569970_E7FE3A34 
X-CRM114-Status: GOOD (  16.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 0/8] video: ssd1307fb: Add SPI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

The Solomon single-chip CMOS OLED/PLED driver with controller can be connected
to I2C or SPI. The driver already supports I2C. This series adds support for
SPI connected displays to the driver.

The bindings for the SPI connected display are still not documented. The
driver uses the (undocumented) solomon,ssd1306 compatible of the staging
driver in Linux, but uses properties defined for the solomon,ssd1306fb-i2c
compatible of the I2C driver. I moved the warning about the compatible from
the commit message into the driver to have it in the same place as the use of
the compatible and to allow to eventually remove it.

The driver still allows to use SPI and I2C with its own hand-rolled
abstraction, because the controller does not actually expose registers, but
simply accepts commands or data. I followed Ahmad's suggestions how to remove
the ugly #ifdefs and the driver looks a lot nicer now.

Patches 1-3 adjust the SPI and I2C frameworks to make them nicer to use for
drivers that support devices that may be connected via SPI or I2C.

Patches 4-7 refactor the driver to have fewer locations that refer to I2C to
simplify disabling the I2C support.

Patch 8 actually adds the SPI support and makes I2C optional.

Michael

---

Changelog:

v2:

- add new Patches 1-3 for the SPI and I2C frameworks
- use new SPI and I2C helpers to get rid of use of config macros
- move warning about undocumented compatible into driver

Michael Tretter (8):
  spi: stub device_spi_driver if SPI is disabled
  spi: add to_spi_device helper
  i2c: stub device_i2c_driver if I2C is disabled
  video: ssd1307fb: pass par instead of i2c client to write
  video: ssd1307fb: don't use i2c client for logging
  video: ssd1307fb: move i2c setup to single place
  video: ssd1307fb: use function pointer for write
  video: ssd1307fb: add spi support

 drivers/video/Kconfig     |   2 +-
 drivers/video/ssd1307fb.c | 170 +++++++++++++++++++++++++-------------
 include/i2c/i2c.h         |   5 ++
 include/spi/spi.h         |  10 +++
 4 files changed, 130 insertions(+), 57 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

