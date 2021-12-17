Delivery-date: Fri, 17 Dec 2021 19:49:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIIC-009ikC-UM
	for lore@lore.pengutronix.de; Fri, 17 Dec 2021 19:49:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1myIIA-00025W-9z
	for lore@pengutronix.de; Fri, 17 Dec 2021 19:49:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZKBunuTu+tf0YURktBOta5b158JDWpQifntpGpJcGt4=; b=nt81ImH80s6nIG
	t9WJYSC34YdNgJbs3nqK/1nabqE0dweFcLq6VU28BUrGCVDYXynDtIXMA0UD/GsoIXKq2e6esaL9M
	yp3/1PS2y4++4LYfltzc32n5/maMmeEbMsJCy+QRr7dqs0V+s3Hq5e2XLVtfxZJtNsYf6mtSAsXM+
	wQl+9a4wUlNBBJdKQ3YyicYC/BwuQwurlC74eoUoSfQFLfbAc0D82II1AFHPSMw2cWBGoM2MJIlz3
	qRUrtafYAwDO31Y4l2l87+tmWOdqs3L2DICYMWsPfHT3Tu+E9MTMpvS8k72nzJgag5tPPfE3DKKkx
	vrnDNzr+jpouB4XbHydg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1myIGg-00ByIh-HR; Fri, 17 Dec 2021 18:47:46 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1myHso-00BnmW-Q1
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 18:23:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0007xm-As
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:02 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsk-0054dX-7F
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:01 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>) id 1myHsi-00FoIk-Mn
 for barebox@lists.infradead.org; Fri, 17 Dec 2021 19:23:00 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 17 Dec 2021 19:22:55 +0100
Message-Id: <20211217182300.3768235-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211217_102306_964746_EAE37A47 
X-CRM114-Status: GOOD (  14.89  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 0/5] video: ssd1307fb: Add SPI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hello,

The Solomon single-chip CMOS OLED/PLED driver with controller can be connected
to I2C or SPI. The driver already supports I2C. This series adds support for
SPI connected displays to the driver.

Unfortunately, the bindings for the SPI connected display are not documented.
This driver uses the (undocumented) solomon,ssd1306 compatible of the staging
driver in Linux, but uses properties defined for the solomon,ssd1306fb-i2c
compatible of the I2C driver.

While the driver allows to use SPI and I2C, which would be a use case for
regmap, the driver does not use regmap, because the controller does not
actually expose registers, but simply accepts commands or data. This does not
match the regmap API. Therefore, the driver uses its own abstraction for the
bus.

The updated driver also allows to disable either SPI or I2C and uses #if
statements in the driver code, which I don't really like. I considered it
better than making the driver dependent on SPI and I2C, but if there is a
better way to handle this either/or dependency, I will gladly update the
driver accordingly.

Patches 1-4 refactor the driver to have fewer locations that refer to I2C to
simplify disabling the I2C support.

Patch 5 actually adds the SPI support and makes I2C optional.

Michael

Michael Tretter (5):
  video: ssd1307fb: pass par instead of i2c client to write
  video: ssd1307fb: don't use i2c client for logging
  video: ssd1307fb: move i2c setup to single place
  video: ssd1307fb: use function pointer for write
  video: ssd1307fb: add spi support

 drivers/video/Kconfig     |   2 +-
 drivers/video/ssd1307fb.c | 180 ++++++++++++++++++++++++++------------
 2 files changed, 125 insertions(+), 57 deletions(-)

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

