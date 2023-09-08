Delivery-date: Fri, 08 Sep 2023 15:05:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebBA-008Fch-FT
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 15:05:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qebB8-0005lT-HD
	for lore@pengutronix.de; Fri, 08 Sep 2023 15:05:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:Message-Id:Date:Subject:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=9mcNxGbzjEwOYEaWI4qtN4TsWXfGNAV3vSC2tV7mRm8=; b=vmV8kzI0SN2hgh
	AZbLKw9LFX+/KH6Ow2vMXB5xQIwEmjUgdTrF/2vQvdnH3UshYCrjhrxhHEVZwrnNDsJ5IAXPvwHP4
	5rWaI8ms74Qtn6ZJuC2FfF39vSywyRcpb+UG+z2HFYJiuBCJTimULCOihQe8up/IFqkfFYKDYbGMo
	QtDN75t7znUANcuYrqpfUTinUdzSnHR+aV0Sh1l9B7IDXrFZDiyE8Uo6vTV3qk1nkNQDSELzqPCXy
	RfqJ1FqdSlVE8bfiy6JeZqXbdEEDZdwlLFdIibMYMTkJSnbIwVGiw1ni42flQ4H95RxO/fdKmScmQ
	dJYz7ouMEd61ESwcZ3tA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qebAA-00DoPF-0G;
	Fri, 08 Sep 2023 13:04:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qebA7-00DoOT-0i
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 13:04:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1qeb9q-0005L3-0p; Fri, 08 Sep 2023 15:04:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qeb9o-004srb-GE; Fri, 08 Sep 2023 15:04:20 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1qeb9n-007Hnr-R1; Fri, 08 Sep 2023 15:04:19 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  8 Sep 2023 15:03:59 +0200
Message-Id: <20230908130401.1735831-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_060439_261869_D6E25757 
X-CRM114-Status: GOOD (  12.13  )
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
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] i2c: Add slices for I2C adapters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a slice for I2C adapters so that devices using I2C in the background
can check if a I2C bus is busy.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/i2c/i2c.c | 5 +++++
 include/i2c/i2c.h | 7 +++++++
 2 files changed, 12 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 300365bd1f..4d4a9a3948 100644
--- a/drivers/i2c/i2c.c
+++ b/drivers/i2c/i2c.c
@@ -23,6 +23,7 @@
 #include <init.h>
 #include <of.h>
 #include <gpio.h>
+#include <slice.h>
 
 #include <i2c/i2c.h>
 
@@ -62,6 +63,8 @@ int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 	uint64_t start;
 	int ret, try;
 
+	slice_acquire(&adap->slice);
+
 	/*
 	 * REVISIT the fault reporting model here is weak:
 	 *
@@ -96,6 +99,8 @@ int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
 			break;
 	}
 
+	slice_release(&adap->slice);
+
 	return ret;
 }
 EXPORT_SYMBOL(i2c_transfer);
diff --git a/include/i2c/i2c.h b/include/i2c/i2c.h
index b1ab72850c..4fc278f800 100644
--- a/include/i2c/i2c.h
+++ b/include/i2c/i2c.h
@@ -18,6 +18,7 @@
 
 #include <driver.h>
 #include <init.h>
+#include <slice.h>
 #include <linux/types.h>
 
 struct i2c_adapter;
@@ -121,6 +122,7 @@ int i2c_generic_scl_recovery(struct i2c_adapter *adap);
  */
 struct i2c_adapter {
 	struct device		dev;	/* ptr to device */
+	struct slice		slice;
 	int			nr;	/* bus number */
 	int (*master_xfer)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
 	struct list_head	list;
@@ -318,6 +320,11 @@ static inline int i2c_adapter_id(struct i2c_adapter *adap)
 	return adap->nr;
 }
 
+static inline struct slice *i2c_client_slice(struct i2c_client *client)
+{
+	return &client->adapter->slice;
+}
+
 extern int i2c_transfer(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
 extern int i2c_master_send(struct i2c_client *client, const char *buf, int count);
 extern int i2c_master_recv(struct i2c_client *client, char *buf, int count);
-- 
2.39.2



