Delivery-date: Thu, 10 Apr 2025 13:18:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2pvn-00Ao9f-0B
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 13:18:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2pvm-0004rc-DI
	for lore@pengutronix.de; Thu, 10 Apr 2025 13:18:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=kA95Q0oGFzcnJRmOGLXlminxrbsmWfIdEmV/X9tTCeM=; b=B1x1VGLAMtokJYUUZd9OlkJLVI
	RoHQwnKE8hQ52LLaFl2oyo0MUHwJVOhBSmKY3tEf/GxjW0vjkGytTNJXmFyh2LDX9uK/XbhXDBWfz
	yzsaV/9NhIxvoW6/zFfplTrFIAKJeAAnN0lNvb60VKeY9MxZixAQ6UaSQSXxlU0w9eqiMqQyMVktR
	c93vXHlholHO7yWomvgkwm4XbKaYueshF4CbNeUWXBIejMexVLxCHkVv1mrjIbyqOx3YUBJma6LJD
	N7NDV8si8bWM5DCOaQmIaJTEmVxF3/fXKfi/VR0kyLmUtdpa/EAGx4mCPZXywB8CQD0geITPQL/kQ
	G5qsjmpA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2pvB-0000000AErs-0pUG;
	Thu, 10 Apr 2025 11:18:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2odf-0000000A0bG-1kwF
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 09:56:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2odb-0004Af-1g; Thu, 10 Apr 2025 11:55:59 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2oda-004FU9-2k;
	Thu, 10 Apr 2025 11:55:58 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u2oda-009RGG-2Q;
	Thu, 10 Apr 2025 11:55:58 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 10 Apr 2025 11:55:57 +0200
Message-Id: <20250410095557.2248025-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_025603_453872_0A4411C4 
X-CRM114-Status: GOOD (  12.08  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] of: partition: do not try to translate offset as OF address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_platform_populate will eventually call of_platform_device_create,
which will print out errors, because of_translate_address chokes on the
partitions node.

The correct fix would be not to use a platform bus here, but until we
add something like the fauxbus, just opencode the platform device
creation without the address translation parts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/partition.c | 28 +++++++++++++++++++++++++---
 1 file changed, 25 insertions(+), 3 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index a0890bfcdef0..4be2a2c33716 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -112,11 +112,33 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	}
 
 	for_each_child_of_node(node, n) {
-		of_parse_partition(cdev, n);
+		struct cdev *partcdev;
+		struct device *dev;
+		int ret;
+
+		partcdev = of_parse_partition(cdev, n);
+		if (!partcdev || !subnode)
+			continue;
+
+		if (!of_property_present(n, "compatible") ||
+		    !of_device_is_available(n))
+			continue;
+
+		/* TODO: migrate to a faux bus? */
+		dev = xzalloc(sizeof(*dev));
+		dev->id = DEVICE_ID_SINGLE;
+		dev->of_node = n;
+		dev->parent = partcdev->dev;
+		n->dev = dev;
+		dev_set_name(dev, "%s", partcdev->name);
+
+		ret = platform_device_register(dev);
+		if (WARN_ON(ret)) {
+			n->dev = NULL;
+			free_device(dev);
+		}
 	}
 
-	if (subnode)
-		of_platform_populate(subnode, NULL, cdev->dev);
 	return 0;
 }
 
-- 
2.39.5



