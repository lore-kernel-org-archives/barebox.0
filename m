Delivery-date: Thu, 05 Jun 2025 13:37:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uG-003ziu-16
	for lore@lore.pengutronix.de;
	Thu, 05 Jun 2025 13:37:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uN8uC-0000Ub-IK
	for lore@pengutronix.de; Thu, 05 Jun 2025 13:37:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=O/G0Maia46t8IsLAMClPiUArPpJCebLw767qZE5OyAI=; b=oDLSXMl2Cq8n8tZjxvkmJZS+tU
	SwxmQ2tJjdHkjf68Jb8x0IXX2hMRu1HmGzxsfWr2n+0q0ThI7UNwM0ieWfTTDXi5eXFTBaPZUmEJS
	7P4sTQf/FDZKNBkF68XK7F0TFm0SyWbigDgU5gW4Ds+S5/x6VrZWfnmEMRyKjljNDiUhk1HYIhMlU
	SdrFzf/3KG2B4udcrZ5meVt1KZqfhVkwfom8HmA9eMUf1jr79TwjHJX+Rip82HBHxrO3B3CIDGO58
	1UFZvCSwwL6mW+j6VXKtljgM7whAp3DLQNyELbh5DQ5u7LBjOm5Ey2FGz9G5SrKVxIQBtWSbICwuI
	WIYLIcvA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8tU-0000000FNEz-1vIk;
	Thu, 05 Jun 2025 11:36:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uN8j2-0000000FMDl-0VvP
	for barebox@lists.infradead.org;
	Thu, 05 Jun 2025 11:25:37 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j0-0001FL-QA; Thu, 05 Jun 2025 13:25:34 +0200
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j0-001wtu-1x;
	Thu, 05 Jun 2025 13:25:34 +0200
Received: from localhost ([::1] helo=dude06.red.stw.pengutronix.de)
	by dude06.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uN8j1-008F6s-0X;
	Thu, 05 Jun 2025 13:25:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 Jun 2025 13:25:31 +0200
Message-Id: <20250605112533.1960069-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250605_042536_260330_7F05B631 
X-CRM114-Status: GOOD (  10.87  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] common: tlv: clean up device name setting
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that dev_set_name has a __printf attribute, we get a warning that we
are not using a string literal as format argument to it.

Fix this and while at it avoid a superfluous memory allocation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/tlv/bus.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/common/tlv/bus.c b/common/tlv/bus.c
index 336415483622..0f11f2a9442b 100644
--- a/common/tlv/bus.c
+++ b/common/tlv/bus.c
@@ -19,7 +19,6 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 {
 	struct tlv_device *tlvdev;
 	const char *name = NULL;
-	char *buf = NULL;
 	struct device *dev;
 	static int id = 0;
 
@@ -34,17 +33,19 @@ struct tlv_device *tlv_register_device(struct tlv_header *header,
 	dev->parent = parent ?: tlv_bus.dev;
 	dev->id = DEVICE_ID_SINGLE;
 
-	if (parent)
+	if (parent) {
 		name = of_alias_get(parent->device_node);
-	if (!name)
-		name = buf = basprintf("tlv%u", id++);
+		if (name)
+			dev_set_name(dev, "%s", name);
+	}
 
-	dev->device_node = of_new_node(of_new_node(NULL, NULL), name);
+	if (!name)
+		dev_set_name(dev, "tlv%u", id++);
+
+	dev->device_node = of_new_node(of_new_node(NULL, NULL), dev_name(dev));
 	dev->device_node->dev = dev;
-	dev_set_name(dev, name);
 	register_device(dev);
 
-	free(buf);
 	return tlvdev;
 }
 
-- 
2.39.5



