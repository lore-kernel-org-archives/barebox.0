Delivery-date: Thu, 09 Mar 2023 13:03:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEz8-00EoEW-BJ
	for lore@lore.pengutronix.de; Thu, 09 Mar 2023 13:03:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1paEz7-0000pv-9K
	for lore@pengutronix.de; Thu, 09 Mar 2023 13:03:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=aFrCwKosK91/jqBkLrMY5mT3UsFHaZIHFVfvQA02iM0=; b=PjzrWplE+yotyoDX96dG1A7Hqu
	QCngG2+OUhYCtU/aKnQomjIvxgUR8GA+nuy6i6qgq/T38h8shfF3roeLEnvRQvLmO83CvKl+yFK7r
	QGTTtP+WwEGNluSbQuB2oGlYqrtGOfizBfjZrrh1/3n6L0CCALugTe0FIUn45VxBfiQ8ASoDmdTC0
	MSnEqwhT4U2bpzt/GH5aPz91AESS7GGLTcBDaH3vTTPJIt4KdV7q6pbY3Dr39BW9kfqTAGLrpCKAH
	tQvcB1OY+6F+DSaeDZXr2ZqQnh48Oue5JiQYGHyDTt094ykd4vwaRX34XsxEOTMR7+EXEFej6ZCKB
	/qkpGW9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paExq-009kKA-3j; Thu, 09 Mar 2023 12:01:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1paEoe-009gJA-H8
	for barebox@lists.infradead.org; Thu, 09 Mar 2023 11:52:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1paEoc-0007AS-TK; Thu, 09 Mar 2023 12:52:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEoc-002w6h-5x; Thu, 09 Mar 2023 12:52:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1paEob-004NYV-CI; Thu, 09 Mar 2023 12:52:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  9 Mar 2023 12:52:01 +0100
Message-Id: <20230309115208.973893-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230309_035212_611228_1C8A1795 
X-CRM114-Status: GOOD (  11.96  )
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
Subject: [PATCH v2 0/7] support overlays to the barebox live tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Support for applying a device tree overlay to the barebox live tree
is already present. This series adds a few missing pieces:

- add support for applying overlays to the live tree from the command
  line
- add support for adding new I2C/SPI devices via overlays
- add Makefile magic to build dtbo files and dtbo.o files to include
  into the barebox binary from dtso files

Changes since v1:
- add a device_rescan() static inline wrapper
- add missing call to of_i2c_register_devices() in i2c_add_numbered_adapter()
- replace device_detect with device_rescan in of_device_create_on_demand()

Sascha Hauer (7):
  kbuild: Add target to build dtb overlay files
  driver: Add rescan hook to struct device
  i2c: implement rescan
  spi: Directly register SPI device
  spi: reduce scope of 'chip'
  spi: implement rescan
  of_overlay: Add option to apply overlay to live tree

 commands/of_overlay.c  | 38 ++++++++++++++++++++++++++++++++++----
 drivers/i2c/i2c.c      | 20 +++++---------------
 drivers/of/platform.c  | 11 +++++------
 drivers/spi/spi.c      | 29 ++++++++++++++++++++++++-----
 include/driver.h       |  6 ++++++
 scripts/Makefile.build |  4 ++++
 scripts/Makefile.lib   | 11 ++++++++++-
 7 files changed, 88 insertions(+), 31 deletions(-)

-- 
2.30.2



