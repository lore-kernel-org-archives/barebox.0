Delivery-date: Wed, 17 Dec 2025 15:52:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVstQ-00CVEp-1o
	for lore@lore.pengutronix.de;
	Wed, 17 Dec 2025 15:52:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vVstQ-0007PO-1I
	for lore@pengutronix.de; Wed, 17 Dec 2025 15:52:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Hdc/wzN4uxDTrA1RHa7KhmUicqfIwwqzpCm3m4MsNpU=; b=bbnPZV+iwWcgy4bqTRt4HoE1fG
	JzSy6tLn0Ye9X4ujB1CTno2X3y1Ul0zmP/aJf62jhiJ+fTff+NsUOWs+rjavlI5JgOCMJweIoprWA
	XXlDwYKzZFcHquKQv4zPo+FMacenl8u/L+r1ASk1lX64xCy0qHTDzx4Kf0lw0H4J1r8TpOGN2iJt7
	qn04+wGMvhx8pfF2QTiJXJ/sG9pa1AI1MsdkQFphLw0BXnV4Z7oEIoVFPTrFCrtu/4iVW+Ig4XP62
	cKI1tVizQ/xwsEjl1vPkNFHnCPQBTNytCp3Tbq6ZWOjXhJyh6nRHBG99yiQx1voV3ZRmYKOfI45sG
	PiGTR+3Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVssm-00000006y6J-24wh;
	Wed, 17 Dec 2025 14:52:04 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vVssi-00000006y4C-3BvC
	for barebox@lists.infradead.org;
	Wed, 17 Dec 2025 14:52:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-0007Ez-Bt; Wed, 17 Dec 2025 15:51:57 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-006825-0a;
	Wed, 17 Dec 2025 15:51:57 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vVssf-00000006dT9-0Jzy;
	Wed, 17 Dec 2025 15:51:57 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 17 Dec 2025 15:51:54 +0100
Message-ID: <20251217145156.1581678-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251217145156.1581678-1-s.hauer@pengutronix.de>
References: <20251217145156.1581678-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251217_065200_797154_7B4C8194 
X-CRM114-Status: UNSURE (   9.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] i2c: implement i2c_unregister_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We had no need so far, but we do in a followup patch.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 6 ++++++
 include/i2c/i2c.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 0f294a93bf..407c4db8a7 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -421,6 +421,12 @@ static struct i2c_client *i2c_new_device(struct i2c_adapter *adapter,
 	return client;
 }
 
+void i2c_unregister_device(struct i2c_client *client)
+{
+	unregister_device(&client->dev);
+	devinfo_del(&client->dev, i2c_info);
+}
+
 static void of_i2c_register_devices(struct i2c_adapter *adap)
 {
 	struct device_node *n;
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index 5c0174b0dd..fb3f43cabb 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -313,6 +313,8 @@ extern struct class i2c_adapter_class;
 extern struct i2c_client *
 i2c_new_dummy(struct i2c_adapter *adap, u16 address);
 
+void i2c_unregister_device(struct i2c_client *client);
+
 /* Return the adapter number for a specific adapter */
 static inline int i2c_adapter_id(struct i2c_adapter *adap)
 {
-- 
2.47.3



