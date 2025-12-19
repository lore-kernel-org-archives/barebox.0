Delivery-date: Fri, 19 Dec 2025 11:39:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXt1-00DAkC-2c
	for lore@lore.pengutronix.de;
	Fri, 19 Dec 2025 11:39:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vWXsh-0006rG-7J
	for lore@pengutronix.de; Fri, 19 Dec 2025 11:39:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-ID:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ILAiccVCu+7dnByLmPsBtFzXv+MF0lgeiX8Q1ZSUqtg=; b=lKjeqwGf1ywMTq
	vtTcR/oLxo1+VTt2a8Y193qVxaqcghss4c6NK9I+hZHoQted1+vbldQdOOvh5XSajpb/toyqhvjxo
	r+VE1bJDufrUHtfp89LwmPwG94Kcpc81g7nEYEboUNNfftPezZgQj1pHR+8M19c6TBXa2l2tN0vkj
	fQFJPnAT7Oaf8OJNJWfmNpHBmH10vvFjB6yo4p+9MdnKSfvOdKQ9oKqLqxiqrQmgV4JkReIwsQjzJ
	9/KYO4QNnWhsBmXFWuCrsDVIN2kyBGH6j6ogGrOjAazmVAFMRU6tUBO+/KqQ/PtNvG4vNZi299Oo8
	SSObDHlBgDi2uL5sUVmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXrY-0000000A6r0-1qxB;
	Fri, 19 Dec 2025 10:37:32 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWXr1-0000000A69Z-3itM
	for barebox@bombadil.infradead.org;
	Fri, 19 Dec 2025 10:36:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=ILAiccVCu+7dnByLmPsBtFzXv+MF0lgeiX8Q1ZSUqtg=; b=Yo88RFUE5wAZmatmw6cDzJtsj4
	g2KjCE8LrIVzqSgTxqkm+xSLely3lKKhfYQpX6j4WfEiXoghraMa02nRtseDbBxBAClhV/Kzm0PUp
	96Rjf1J+tRUpo9cgKWX9C34Jb6EEymAb1YfZIApyIaLAs4Utz4C7ylyOiujGRnkTGJ13Yg1n3CVj8
	unOZFwhIiH/+46qY0XKzSIxbkyjG4QsndCmRe9tTXQyMCNA9tV/lKsrkkVF1su1H6p79u34K2qlQF
	Ug5DvoeYiVOviOwibQBnV0CIFtMuQDQ/h+VAFKYjIO7idaFdGFG8j/fx78KsRkPhd1VBxep7uA3zX
	PcyHJfgg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vWWzR-0000000AbFS-2QwI
	for barebox@lists.infradead.org;
	Fri, 19 Dec 2025 09:41:44 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqt-0004ia-2T; Fri, 19 Dec 2025 11:36:51 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXqs-006RWP-2n;
	Fri, 19 Dec 2025 11:36:50 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1vWXVi-0000000320L-314v;
	Fri, 19 Dec 2025 11:14:58 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Dec 2025 10:21:24 +0100
Message-ID: <20251219101453.2806980-49-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
References: <20251219101453.2806980-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251219_094137_735232_3531FC54 
X-CRM114-Status: UNSURE (   8.91  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
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
Subject: [PATCH v2025.09.y 48/49] i2c: implement i2c_unregister_device()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Sascha Hauer <s.hauer@pengutronix.de>

We had no need so far, but we do in a followup patch.

Link: https://lore.barebox.org/20251217145156.1581678-2-s.hauer@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
(cherry picked from commit aec4d23749922d10aed37641bc6c0fafccec4c09)
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/i2c/i2c.c | 6 ++++++
 include/i2c/i2c.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/drivers/i2c/i2c.c b/drivers/i2c/i2c.c
index 7b11c350399d..658a0a2b7165 100644
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
index 5c0174b0ddc7..fb3f43cabb9d 100644
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



