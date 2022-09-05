Delivery-date: Mon, 05 Sep 2022 19:45:49 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVGAN-007lC6-TO
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 19:45:49 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVGAO-0003nl-F0
	for lore@pengutronix.de; Mon, 05 Sep 2022 19:45:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7sq013qDTP1wy9QfQo/rlLVhp7vp5KVhD1EKo+uKncc=; b=EN3Sq1Wz+7ROUgvmUH2AtT5ZVT
	X7ntaatHSJ1yAU9vu9IRigaRrrIhP9H7IiMwvpOlDIBIyi/0hR+CIavzdTCgC/cHgg5JLuzI+km6Q
	KnzxgZA3ZWTNEgKOj4dmgRLDzA0fdsWNsnb23Wt8//95YeGpk9mX9KZSLuwOMhSyrOomZnpFu268y
	BIsBJxndIl9uLdjFZKZxsPTTjciXUSGqismjIXOZ5KLhbw/rzlR3AkOoPrjgNCD6x50IBU3ZtN84E
	T4E+MJQW96Gwctjf2ypJToE+wY5P5p6t1ybzG78VXmzGveJhJIh7nqPR6x7DFPBmdz4JbG2e4IYPC
	FYiRGa9Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVG8l-007lZq-Gk; Mon, 05 Sep 2022 17:44:07 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oV9Sl-000R6t-AQ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 10:36:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9Sj-0005ry-I9; Mon, 05 Sep 2022 12:36:18 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9Sf-0042jy-Ii; Mon, 05 Sep 2022 12:36:15 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1oV9Sg-007LMC-55; Mon, 05 Sep 2022 12:36:14 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Sep 2022 12:36:12 +0200
Message-Id: <20220905103613.1750340-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_033619_425942_75171939 
X-CRM114-Status: GOOD (  12.28  )
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
X-Spam-Status: No, score=-3.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] i2c: implement of_i2c_register_devices_by_node()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

i2c controllers probe the devices on their bus themselves, so in the
case the i2c controller was already probed, we currently have no way to
have it reread the device tree after fixing it up or applying an
overlay. Add a new helper that retriggers the device creation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 20 ++++++++++++++++++++
 include/i2c/i2c.h |  1 +
 2 files changed, 21 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index b24fd88f5b39..e70e51618850 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -427,6 +427,12 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 		const __be32 *addr;
 		int len;
 
+		if (n->dev) {
+			dev_dbg(&adap->dev, "of_i2c: skipping already registered %s\n",
+				dev_name(n->dev));
+			continue;
+		}
+
 		of_modalias_node(n, info.type, I2C_NAME_SIZE);
 
 		info.of_node = n;
@@ -452,6 +458,20 @@ static void of_i2c_register_devices(struct i2c_adapter *adap)
 	}
 }
 
+int of_i2c_register_devices_by_node(struct device_node *node)
+{
+	struct i2c_adapter *adap;
+
+	adap = of_find_i2c_adapter_by_node(node);
+	if (!adap)
+		return -ENODEV;
+	if (IS_ERR(adap))
+		return PTR_ERR(adap);
+
+	of_i2c_register_devices(adap);
+	return 0;
+}
+
 /**
  * i2c_new_dummy - return a new i2c device bound to a dummy driver
  * @adapter: the adapter managing the device
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 7207b1180e1d..f5e2dc511ed1 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -295,6 +295,7 @@ static inline int i2c_register_board_info(int busnum,
 extern int i2c_add_numbered_adapter(struct i2c_adapter *adapter);
 struct i2c_adapter *i2c_get_adapter(int busnum);
 struct i2c_adapter *of_find_i2c_adapter_by_node(struct device_node *node);
+int of_i2c_register_devices_by_node(struct device_node *node);
 struct i2c_client *of_find_i2c_device_by_node(struct device_node *node);
 
 void i2c_parse_fw_timings(struct device_d *dev, struct i2c_timings *t, bool use_defaults);
-- 
2.30.2



