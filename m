Delivery-date: Sun, 15 Dec 2024 10:55:09 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMlLB-008MW9-18
	for lore@lore.pengutronix.de;
	Sun, 15 Dec 2024 10:55:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tMlLB-0005pA-6k
	for lore@pengutronix.de; Sun, 15 Dec 2024 10:55:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eDoE6mX3npKuRmHnYITe7rzDcW82n1tmwgCdvqiwdaI=; b=aKUPAz4Hc+PKIlK9/tBDuMuLQf
	xdP9Fa1Dxt7Wf4jTRg7YhEyzkaAat0K+Rd959/jDmbfy9JfkynuBj9tFTPTAnG7PYw85o8fV57B2S
	UVMKQANcZlqMEYO8vCdxtESziKBBLeFr1HE0ikQC30rEYdB/gmKJ4hr+YsJgVfPraCGhY8CJtzUMB
	pXKLItTCo0ObBW7YOXTNclVD+sp9bv8YBcvkv0DJ/ssKLC+R6N0fh0TupaWyLOFgHFoNxbHwmsAkn
	O0iIwf9WT3i237a/nVzUTTmLdwvf6mBbPgLL7is9cpYbfQu/nRJTCdctV3p1YljiM7+xWxW5rtrhv
	EUOnuvQw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tMlKd-00000007iGf-1v0a;
	Sun, 15 Dec 2024 09:54:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tMlKa-00000007iFz-2VyI
	for barebox@lists.infradead.org;
	Sun, 15 Dec 2024 09:54:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKJ-0005ck-42; Sun, 15 Dec 2024 10:54:15 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKG-003VUg-1K;
	Sun, 15 Dec 2024 10:54:13 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tMlKH-00FlD9-0K;
	Sun, 15 Dec 2024 10:54:13 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sun, 15 Dec 2024 10:54:11 +0100
Message-Id: <20241215095412.3756337-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
References: <20241215095412.3756337-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241215_015432_637578_264F0A95 
X-CRM114-Status: GOOD (  11.78  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 2/3] i2c: i2c: fix getting adapter.nr for I2C muxes
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When probed from device tree, "real" I2C controllers are virtual
devices that have the OF device as parent.

For those the current logic of using the alias of the parent
device's of_node works.

I2C muxes are different, because their parent device is the virtual
device of their controller. Using that controller's alias is often
destined to result in an -EBUSY:

  pca9450-i2c pca9450b0: PMIC Chip ID: 0x3
  ERROR: i2c1: failed to add mux-adapter (error=-16)
  ERROR: pca954x pca95450: failed to register multiplexed adapter0

As a single I2C mux can have multiple channels, there may also be just
one OF device for multiple virtual adapters. As all I2C adapters being
registered in barebox also have the of_node of the virtual device
populated, let's just consult that.

Fixes: b4746725454c ("i2c: get adapter.nr from device tree")
Reported-by: Alexander Shiyan <eagle.alexander923@gmail.com>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index d19506af2627..017842f026dd 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -705,8 +705,8 @@ int i2c_add_numbered_adapter(struct i2c_adapter *adapter)
 	struct device *hw_dev;
 	int ret;
 
-	if (adapter->nr < 0 && adapter->dev.parent && adapter->dev.parent->of_node)
-		adapter->nr = of_alias_get_id(adapter->dev.parent->of_node, "i2c");
+	if (adapter->nr < 0 && dev_of_node(&adapter->dev))
+		adapter->nr = of_alias_get_id(adapter->dev.of_node, "i2c");
 
 	if (adapter->nr < 0) {
 		int nr;
-- 
2.39.5



