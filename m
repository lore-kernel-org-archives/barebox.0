Delivery-date: Wed, 07 Jun 2023 14:08:52 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry9-00EJSi-V9
	for lore@lore.pengutronix.de; Wed, 07 Jun 2023 14:08:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q6ry7-0003xV-At
	for lore@pengutronix.de; Wed, 07 Jun 2023 14:08:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vwhJGOS5hXT8f5ZhUCNxPFkeBtzQUOsVqCx2TrHNdV4=; b=VGGlw5smbGYcEZi6Gra3et+Y/P
	FKXwUVc31qQc1z9GO9BTw97XoSgce3IBDiY3royjeFRUDQPYcioIL1AK/ICIHe/kX8nzRYDlwWAx6
	YUFOoW+HXqzrOgL2gD5s3LLfneUHzBJpNpkJq7V8gigDev/Q8sjJFntRa88bSkaG6Gl4aM4KfPAkK
	8JMs9TlIaegltLqwBy4nDpRnFHhGPQk0ljjPmi1hLWmHQO0o8m+EKPRyKS6sdetHs6zybfDrsiKHc
	s1zXg5TXSu7U/2TSeA4hrBiS8uJuCebDuEsGLgiqd8livahQWeNObfyyZ7CtqHst9BFkDj230A2Su
	h0DFnpTQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rww-005kvQ-2f;
	Wed, 07 Jun 2023 12:07:38 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q6rwk-005knV-2J
	for barebox@lists.infradead.org;
	Wed, 07 Jun 2023 12:07:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-00031V-VT; Wed, 07 Jun 2023 14:07:24 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwh-005jk6-7o; Wed, 07 Jun 2023 14:07:23 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1q6rwe-00CyMV-VG; Wed, 07 Jun 2023 14:07:20 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed,  7 Jun 2023 14:06:59 +0200
Message-Id: <20230607120714.3083182-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
References: <20230607120714.3083182-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230607_050726_835241_315864F2 
X-CRM114-Status: GOOD (  17.74  )
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
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 04/19] of: partition: support of_partition_ensure_probed on parent device
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox-state code uses of_partition_ensure_probed to resolve the
backend property. We want to allow backend to point directly at a
storage device instead of a partition. We can't determine whether a DT
device is a storage device though before it's probed, so let's have
of_partition_ensure_probed support either case.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - reworked and fixed function (Marco)
---
 drivers/of/partition.c | 41 +++++++++++++++++++++++++++++++++++++----
 drivers/of/platform.c  |  2 +-
 2 files changed, 38 insertions(+), 5 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 40c47f554ad2..6957e10c41bf 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -110,14 +110,47 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 	return 0;
 }
 
+/**
+ * of_partition_ensure_probed - ensure a parition is probed
+ * @np: pointer to a partition or to a partitionable device
+ *      Unfortunately, there is no completely reliable way
+ *      to differentiate partitions from devices prior to
+ *      probing, because partitions may also have compatibles.
+ *      We only handle nvmem-cells, so anything besides that
+ *      is assumed to be a device that should be probed directly.
+ *
+ * Returns zero on success or a negative error code otherwise
+ */
 int of_partition_ensure_probed(struct device_node *np)
 {
-	np = of_get_parent(np);
+	struct device_node *parent = of_get_parent(np);
 
-	if (of_device_is_compatible(np, "fixed-partitions"))
-		np = of_get_parent(np);
+	/* root node is not a partition */
+	if (!parent)
+		return -EINVAL;
 
-	return np ? of_device_ensure_probed(np) : -EINVAL;
+	/* Check if modern partitions binding */
+	if (of_device_is_compatible(parent, "fixed-partitions")) {
+		parent = of_get_parent(parent);
+
+		/*
+		 * Can't call of_partition_ensure_probed on root node.
+		 * This catches barebox-specific partuuid binding
+		 * (top-level partition node)
+		 */
+		if (!of_get_parent(parent))
+			return -EINVAL;
+
+		return of_device_ensure_probed(parent);
+	 }
+
+	/* Check if legacy partitions binding */
+	if (!of_property_present(np, "compatible") ||
+	    of_device_is_compatible(np, "nvmem-cells"))
+		return of_device_ensure_probed(parent);
+
+	/* Doesn't look like a partition, so let's probe directly */
+	return of_device_ensure_probed(np);
 }
 EXPORT_SYMBOL_GPL(of_partition_ensure_probed);
 
diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index ab737629325a..78b8a31331db 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -484,7 +484,7 @@ int of_device_ensure_probed(struct device_node *np)
 {
 	struct device *dev;
 
-	if (!deep_probe_is_supported())
+	if (!np || !deep_probe_is_supported())
 		return 0;
 
 	dev = of_device_create_on_demand(np);
-- 
2.39.2



