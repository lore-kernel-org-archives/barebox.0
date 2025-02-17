Delivery-date: Mon, 17 Feb 2025 19:23:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5m3-003aOS-08
	for lore@lore.pengutronix.de;
	Mon, 17 Feb 2025 19:23:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tk5lz-0003Ta-TL
	for lore@pengutronix.de; Mon, 17 Feb 2025 19:23:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2LSKv8OCAypXYTCTV6bCYP7haMlq6sVfJ7CsFvgUJv0=; b=JH9v6fiP0wh+bdsJHFAO58Jr3I
	0h6UOIdWM8FftsYMBW/6FJJD6Se+A0d7CO7D8hJr4b7haj2uDnTmLIkhDk03BeIRj+vKk1aLooZ0C
	XM3KxLvWwujYkA7JLv5ChwJJuINb14Ot7MDu36iVltLKaU/cXlWU410IeIXM2mlsKiREWISha7haJ
	20NL0UW7RLSS1YV9ZF8zASyM9KLTTEPg+YLt7hKV+JQAW8r4GdgiE85zCA0kV4jhEOHe2HR2ziMYE
	jBvPqy00fBb6JjB9caYsvRcuQNPu8M+VvpUCGq5o9JVVvPoRt1oRufdxSapyXt+FP+0sflcZEk0/d
	E8XfVPQg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5lM-00000005acR-1s3J;
	Mon, 17 Feb 2025 18:22:36 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xt-00000005Yyt-0yuE
	for barebox@bombadil.infradead.org;
	Mon, 17 Feb 2025 18:08:41 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=2LSKv8OCAypXYTCTV6bCYP7haMlq6sVfJ7CsFvgUJv0=; b=Gva01fobR7V4Ffa62Dhcxnmemk
	N2xl+Zyq9vt+bw8TlAWg+F+w9FrEbL/k2ZwgukYS/aq3dxTJJVSLjgCRPnQ1v4wJlwZFpBWknrZyZ
	91eUvTps6cK3Ok2I0AO0HRB/7ybdMKMioHAQGdJy44Rrb4/lRPS3MtFDPMFk5fKAHsomkiPXRMeLK
	Xx6rrkMub0FWE8AyuHQ74BTSf8i+diDlas0lbsOYw14uY/XOBJvbPK0AktCN9KmLRxWg+p344bcYt
	7S9UPAshNITUdXseeJyfdkiHnYloTo+uKUrIhthJ8b+C3tX5/ONpOaXPgQxgoERkMydS9VfbvVTSd
	xgN4FhlA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tk5Xp-00000001rim-02GS
	for barebox@lists.infradead.org;
	Mon, 17 Feb 2025 18:08:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-00011C-6z; Mon, 17 Feb 2025 19:08:34 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xm-001S7Y-06;
	Mon, 17 Feb 2025 19:08:34 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tk5Xl-00Gc9q-33;
	Mon, 17 Feb 2025 19:08:33 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Feb 2025 19:08:28 +0100
Message-Id: <20250217180833.3955657-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
References: <20250217180833.3955657-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250217_180837_194308_849E30E0 
X-CRM114-Status: GOOD (  13.11  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/6] of: factor out of_node_is_fixed_partitions check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have a number of places where we check if a node is compatible with
"fixed-partitions". In preparation for supporting
"barebox,fixed-partitions" as well, factor out the existing compatible
check into a new of_node_is_fixed_partitions() function.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/of/base.c      | 6 ++----
 drivers/of/of_path.c   | 7 ++++++-
 drivers/of/partition.c | 4 ++--
 include/of.h           | 6 ++++++
 4 files changed, 16 insertions(+), 7 deletions(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 125f24056eec..dfe4861c9eb6 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -351,7 +351,7 @@ static const char *of_get_partition_device_alias(struct device_node *np)
 		return alias;
 
 	np = of_get_parent(np);
-	if (np && of_device_is_compatible(np, "fixed-partitions"))
+	if (np && of_node_is_fixed_partitions(np))
 		np = of_get_parent(np);
 
 	return of_alias_get(np);
@@ -3271,10 +3271,8 @@ char *of_get_reproducible_name(struct device_node *node)
 	 * "fixed-partitions" compatible. We skip this extra subnode from the
 	 * reproducible name to get the same name for both bindings.
 	 */
-	if (node->parent &&
-	    of_device_is_compatible(node->parent, "fixed-partitions")) {
+	if (node->parent && of_node_is_fixed_partitions(node->parent))
 		node = node->parent;
-	}
 
 	offset = of_read_number(reg, na);
 
diff --git a/drivers/of/of_path.c b/drivers/of/of_path.c
index 42efb1ad1dbf..b3feaa07e39d 100644
--- a/drivers/of/of_path.c
+++ b/drivers/of/of_path.c
@@ -12,6 +12,11 @@
 
 #include <linux/mtd/mtd.h>
 
+bool of_node_is_fixed_partitions(const struct device_node *np)
+{
+	return of_device_is_compatible(np, "fixed-partitions");
+}
+
 struct device *of_find_device_by_node_path(const char *path)
 {
 	struct device *dev;
@@ -55,7 +60,7 @@ static struct cdev *__of_cdev_find(struct device_node *node, const char *part)
 		const char *uuid;
 		struct device_node *devnode = node->parent;
 
-		if (of_device_is_compatible(devnode, "fixed-partitions")) {
+		if (of_node_is_fixed_partitions(devnode)) {
 			devnode = devnode->parent;
 
 			/* when partuuid is specified short-circuit the search for the cdev */
diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 56933cc958f7..4f966d900f1f 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -93,7 +93,7 @@ int of_parse_partitions(struct cdev *cdev, struct device_node *node)
 
 	subnode = of_get_child_by_name(node, "partitions");
 	if (subnode) {
-		if (!of_device_is_compatible(subnode, "fixed-partitions"))
+		if (!of_node_is_fixed_partitions(subnode))
 			return -EINVAL;
 		node = subnode;
 	}
@@ -125,7 +125,7 @@ int of_partition_ensure_probed(struct device_node *np)
 		return -EINVAL;
 
 	/* Check if modern partitions binding */
-	if (of_device_is_compatible(parent, "fixed-partitions")) {
+	if (of_node_is_fixed_partitions(parent)) {
 		parent = of_get_parent(parent);
 
 		/*
diff --git a/include/of.h b/include/of.h
index a83663c602b1..985f0195b2aa 100644
--- a/include/of.h
+++ b/include/of.h
@@ -204,6 +204,7 @@ extern const char *of_get_machine_compatible(void);
 extern int of_machine_is_compatible(const char *compat);
 extern int of_device_is_compatible(const struct device_node *device,
 		const char *compat);
+extern bool of_node_is_fixed_partitions(const struct device_node *np);
 extern int of_device_is_available(const struct device_node *device);
 extern bool of_device_is_big_endian(const struct device_node *device);
 
@@ -916,6 +917,11 @@ static inline int of_device_is_compatible(const struct device_node *device,
 	return 0;
 }
 
+static inline bool of_node_is_fixed_partitions(const struct device_node *device)
+{
+	return false;
+}
+
 static inline int of_device_is_available(const struct device_node *device)
 {
 	return 0;
-- 
2.39.5



