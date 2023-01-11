Delivery-date: Wed, 11 Jan 2023 09:03:41 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5G-008dsr-0E
	for lore@lore.pengutronix.de; Wed, 11 Jan 2023 09:03:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFW5D-0000c2-Aj
	for lore@pengutronix.de; Wed, 11 Jan 2023 09:03:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xET31FdJjn2o1nWw2nwRbfj/DDECPhnp754BDF9XUCw=; b=HIel1f1qS+9AnJcxIwOUytHmKx
	F18gYmL9serUZ0rAL2SeNc2BtH7wNb4kJ97EYbpEyW2HFsi33OHnxWcgLz0cS1/SNuk1lng2ruygt
	6BAsh/uUtDerx8vWoQ/CwcM8xFLb26fZDRfHY+CyR9uYIw6w1n8FSGM05rHIswxe5FIb2a+DEpowJ
	MRESib+W9uSAGB4Nw2F5dnBSJWyi0It8hoS7yxxzjWg5kZ5cdqsaiRVJlxGlpszyo+exB7y1htXjQ
	LbXJdFl+X/rDbGi2ADiX5d1iotQgqk9R3WZEptTKA+jLPyM6fxM+wEHUA9UvCNNRiUT5NRodeL2Dv
	/hEiCqEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW3p-00AEsM-4u; Wed, 11 Jan 2023 08:02:13 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFW37-00AEWv-3t
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 08:01:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW35-0008Lo-SX
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW35-005Ff6-7y
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:01:27 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFW33-003uzd-8q
	for barebox@lists.infradead.org; Wed, 11 Jan 2023 09:01:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 11 Jan 2023 09:01:08 +0100
Message-Id: <20230111080119.933475-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230111_000129_204033_AAC708FC 
X-CRM114-Status: GOOD (  11.81  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 00/11] net: dsa: ksz9477: use regmap to add I2C support next to SPI
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Linux DSA driver supports both I2C and SPI as management interface
by using regmaps as abstraction. barebox regmaps were not quite that
powerful yet, so we rework our regmaps to support optional formatting
and then use that to make the KSZ driver work with either I2C or SPI
transports.

This series has been tested with both an I2C-connected KSZ8563 and
a SPI-connected KSZ9563, both of which are supported by the barebox
KSZ9477 driver.

Ahmad Fatoum (11):
  regmap: consolidate reg/val format into regmap_format
  regmap: support formatted read and write
  regmap: port regmap_init_spi
  regmap: factor out regmap cdev size calculation
  net: dsa: ksz9477: switch to regmap_init_spi
  net: dsa: ksz9477: create regmap cdev for switch registers
  drivers: base: regmap: introduce REGMAP_I2C
  dev: add dev_bus_is_spi/i2c helpers
  net: dsa: ksz9477: refactor to prepare i2c support
  regmap: i2c: use formatted I/O
  net: ksz9477: add I2C support

 drivers/base/Kconfig               |   2 +
 drivers/base/regmap/Kconfig        |  14 +
 drivers/base/regmap/Makefile       |   5 +-
 drivers/base/regmap/internal.h     |  35 +-
 drivers/base/regmap/regmap-fmt.c   | 577 +++++++++++++++++++++++++++++
 drivers/base/regmap/regmap-i2c.c   |  50 ++-
 drivers/base/regmap/regmap-multi.c |  81 ++++
 drivers/base/regmap/regmap-spi.c   |  42 +++
 drivers/base/regmap/regmap.c       |  66 +++-
 drivers/mfd/Kconfig                |   4 +
 drivers/net/Kconfig                |   4 +-
 drivers/net/ksz9477.c              | 189 +++-------
 drivers/net/ksz_common.h           | 154 ++++++++
 drivers/rtc/Kconfig                |   1 +
 drivers/video/ssd1307fb.c          |   4 +-
 include/i2c/i2c.h                  |   5 +
 include/regmap.h                   |  63 ++++
 include/spi/spi.h                  |   5 +
 18 files changed, 1126 insertions(+), 175 deletions(-)
 create mode 100644 drivers/base/regmap/Kconfig
 create mode 100644 drivers/base/regmap/regmap-fmt.c
 create mode 100644 drivers/base/regmap/regmap-multi.c
 create mode 100644 drivers/base/regmap/regmap-spi.c
 create mode 100644 drivers/net/ksz_common.h

-- 
2.30.2



