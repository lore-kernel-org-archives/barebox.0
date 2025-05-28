Delivery-date: Wed, 28 May 2025 17:05:45 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKILh-001E21-2j
	for lore@lore.pengutronix.de;
	Wed, 28 May 2025 17:05:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uKILh-0007Qq-7P
	for lore@pengutronix.de; Wed, 28 May 2025 17:05:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3HZc4p3rbrM9zJOqCPDZ5sOIgxDiWLAgx8BO+z4aJ3Y=; b=mAGTm69GdZbNCNAyb/2TP7YVyw
	IRnkeGb6IHROIV9wJ8Qrsbrju7OG/zd2h9MZCN/QE5sXJhChQmmoMkbdlQZ6R48SXFMn5OB2KRcGx
	MFV4ZWqldAOa6tpGsE9uIXXFAiFRZlYxl+bFl1UFeAzM+WzQr0rgbAorsJp3qz4WMn3oFQODgHa4B
	ulKrM/LaKWFjqavXm0xWdvGnBlNvapQrqrEEZsAe62JuqQMtNWYLZUCGw9wrARBo3hJ4yUxmdGl3t
	60UBaVI0s1so/1+E0RLdtheoyr+LGRiVi2i9JNRBl145KzHN1okEaCoREN6NH2sDcMePFaB5f3yGD
	QQ6GulHA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKILB-0000000DVJI-182m;
	Wed, 28 May 2025 15:05:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uKIJX-0000000DV3m-2PqC
	for barebox@lists.infradead.org;
	Wed, 28 May 2025 15:03:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIJW-0005ij-6j; Wed, 28 May 2025 17:03:30 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIJW-000bfA-05;
	Wed, 28 May 2025 17:03:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1uKIJV-002ZEO-30;
	Wed, 28 May 2025 17:03:29 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 28 May 2025 17:03:22 +0200
Message-Id: <20250528150322.611761-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250528_080331_616557_F0DDA228 
X-CRM114-Status: GOOD (  15.38  )
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
X-Spam-Status: No, score=-6.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2] of: partition: do not try to translate offset as OF address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

of_platform_populate will eventually call of_platform_device_create,
which will print out errors for partitions with a compatible, because
of_translate_address chokes on the partitions container node as it's
not a valid platform (child) device:

  ERROR: prom_parse: Bad cell count for /soc/bus@5c007000/i2c@5c002000/eeprom@50/partitions

The correct fix would be not to use a platform bus here, but until we
add an alternative bus or switch to mtd_notifier as in Linux, just
create the platform device without the address translation parts.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - factor platform device creation code into of_add_child_device
---
 drivers/base/resource.c | 25 +++++++++++++++++++++++++
 drivers/of/partition.c  | 16 +++++++++++++---
 include/driver.h        | 11 +++++++++++
 3 files changed, 49 insertions(+), 3 deletions(-)

diff --git a/drivers/base/resource.c b/drivers/base/resource.c
index 0d6f200a9d51..e20c939c342c 100644
--- a/drivers/base/resource.c
+++ b/drivers/base/resource.c
@@ -75,6 +75,31 @@ struct device *add_child_device(struct device *parent,
 }
 EXPORT_SYMBOL(add_child_device);
 
+struct device *of_add_child_device(struct device *parent,
+		const char* devname, int id, struct device_node *np)
+{
+	struct device *dev;
+	int err;
+
+	if (!of_property_present(np, "compatible") || !of_device_is_available(np))
+		return NULL;
+
+	dev = device_alloc(devname, id);
+	dev->parent = parent;
+	dev->of_node = np;
+
+	np->dev = dev;
+	err = platform_device_register(dev);
+	if (err) {
+		np->dev = NULL;
+		free_device(dev);
+		return ERR_PTR(err);
+	}
+
+	return dev;
+}
+EXPORT_SYMBOL(of_add_child_device);
+
 struct device *add_generic_device_res(const char* devname, int id,
 		struct resource *res, int nb, void *pdata)
 {
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 7f5a526ac88f..5b769959c80d 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -112,11 +112,21 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	}
 
 	for_each_child_of_node(node, n) {
-		of_parse_partition(cdev, n);
+		struct cdev *partcdev;
+		struct device *dev;
+
+		partcdev = of_parse_partition(cdev, n);
+		if (!partcdev || !subnode)
+			continue;
+
+		/* TODO: migrate to a partition-only bus?
+		 * Linux uses mtd_notifier for this
+		 */
+		dev = of_add_child_device(partcdev->dev, partcdev->name,
+					  DEVICE_ID_SINGLE, n);
+		WARN_ON(IS_ERR(dev));
 	}
 
-	if (subnode)
-		of_platform_populate(subnode, NULL, cdev->dev);
 	return 0;
 }
 
diff --git a/include/driver.h b/include/driver.h
index b5f4de01e424..da10171546fa 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -227,6 +227,17 @@ struct device *add_child_device(struct device *parent,
 				resource_size_t start, resource_size_t size, unsigned int flags,
 				void *pdata);
 
+#ifdef CONFIG_OFDEVICE
+struct device *of_add_child_device(struct device *parent,
+		const char* devname, int id, struct device_node *np);
+#else
+static inline struct device *of_add_child_device(struct device *parent,
+		const char* devname, int id, struct device_node *np)
+{
+	return NULL;
+}
+#endif
+
 /*
  * register a generic device
  * with only one resource
-- 
2.39.5



