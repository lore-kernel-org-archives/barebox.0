Delivery-date: Fri, 07 Nov 2025 13:01:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9w-00GHrr-0H
	for lore@lore.pengutronix.de;
	Fri, 07 Nov 2025 13:01:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vHL9v-0007jQ-HW
	for lore@pengutronix.de; Fri, 07 Nov 2025 13:01:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EKPjRNXeRyUYyzrwfVX1HB1tAuxLDMC7u7EcWsCzI2Y=; b=o0WAS1j6XrNBrfIkZCH9CK3iT3
	GC2G7IeZj9tbxtcVNbF3Dlf1lvMIfBJiIK73DVcE1tXOy3pLK7Nal9gcw5+9KhU35WgVW6bq7yWrS
	VIYivw5fxC2oV5ZvurOZC1bz2PcxQYLsrmDsLmzpjVGMrnn4MJ0qc4BMP/P4DRA8sm1m3bTk79+cD
	ZRRatNNkq9DypRpahvQN2w3witgOquJAjam/OVl/kQhF/Jhydkp2w97GM8IZiGFEd6xmwEDj+mRO1
	SB6uQcxEhD46ZQYEdAPU4Bl7T7otpeC7IISs3el01yRb2am8uy/MU6e3aWPfOq0rfrjpNHNz2B0MA
	IWysI1fA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9O-0000000HG8K-36VR;
	Fri, 07 Nov 2025 12:01:06 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHL9K-0000000HG6r-3Xo6
	for barebox@bombadil.infradead.org;
	Fri, 07 Nov 2025 12:01:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=EKPjRNXeRyUYyzrwfVX1HB1tAuxLDMC7u7EcWsCzI2Y=; b=kXp+hGBehoF1qAucSe22SRGWeN
	XnNnoXx9N3mbZaoqDjHt8CZmZqFhxOccubs8IUcdwRu7Sk2s8+rTyZCBjfU7Jthy2cO5rB6IaW2eq
	XMqp7hs3/aozTUeSbGjOtrELUnNqfIOMUBcFv3MXd/xGR3nozxUozewFKnCb7aU9NqFFP/cCrJQ8J
	3X6859sfqiUpowwmaTeAXyqSWocZ8ixE15ImSBjDSIJ1L7PnLUCwQ43GWXCutoqoIk1YgdO7RBhcv
	EobNxqz98gJYuFKDYngL67T9lLeMe0xvicqFQMh0NMOV81MYEV5lCznXqXqQYb/o9fhOqR30NO9CV
	anXnp9hQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vHKHZ-00000006LIr-2mUh
	for barebox@lists.infradead.org;
	Fri, 07 Nov 2025 11:05:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-0007K9-F8; Fri, 07 Nov 2025 13:00:53 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-007WR4-0d;
	Fri, 07 Nov 2025 13:00:53 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vHL9B-00000000sNa-2IyX;
	Fri, 07 Nov 2025 13:00:53 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 07 Nov 2025 13:00:51 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-memleaks-v1-1-c7b74a2ae9db@pengutronix.de>
References: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
In-Reply-To: <20251107-memleaks-v1-0-c7b74a2ae9db@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762516853; l=1316;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=TZOuEBLJ4aZuPdWT/BouoCNGnt2SAMStKsmry9f2Lig=;
 b=N0axppzZBHgIBP+uiWGAXgDyLz5347eXyvUfgNiyjsVocWOTPMV2LvoGEBxGKfgQxiwzQg/03
 THfYEWf4e9WDMTRKk3YI/GX75ebZ7WnkB1srgO+u8ux2RplsfszSP9O
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251107_110529_906076_20ABB746 
X-CRM114-Status: GOOD (  11.35  )
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
Subject: [PATCH 1/4] tlv: fix memory leak
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_new_node(of_new_node(NULL, NULL), ...) leaks memory of the parent
node which is never freed. Fix this by allocating a reusable parent
node in tlv_bus_register().

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/tlv/bus.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/common/tlv/bus.c b/common/tlv/bus.c
index 4dbffd365667b258991e5ab01a99be4ee225fee2..a59f8d297a27975a43dd98230e04593150bf250d 100644
--- a/common/tlv/bus.c
+++ b/common/tlv/bus.c
@@ -14,6 +14,8 @@ static void tlv_devinfo(struct device *dev)
 	printf("Magic: %08x\n", tlvdev->magic);
 }
 
+static struct device_node *tlv_parent_node;
+
 struct tlv_device *tlv_register_device(struct tlv_header *header,
 				       struct device *parent)
 {
@@ -42,7 +44,7 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 	if (!name)
 		dev_set_name(dev, "tlv%u", id++);
 
-	dev->device_node = of_new_node(of_new_node(NULL, NULL), dev_name(dev));
+	dev->device_node = of_new_node(tlv_parent_node, dev_name(dev));
 	dev->device_node->dev = dev;
 	register_device(dev);
 
@@ -123,6 +125,8 @@ static int tlv_bus_register(void)
 {
 	int ret;
 
+	tlv_parent_node = of_new_node(NULL, NULL);
+
 	ret = bus_register(&tlv_bus);
 	if (ret)
 		return ret;

-- 
2.47.3



