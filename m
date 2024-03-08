Delivery-date: Fri, 08 Mar 2024 10:15:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWKc-00DVVb-2n
	for lore@lore.pengutronix.de;
	Fri, 08 Mar 2024 10:15:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1riWKc-0008BH-36
	for lore@pengutronix.de; Fri, 08 Mar 2024 10:15:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=XFtLwCZpWaxlmi8uQa7Q/5OhFXlfPSn0//ckk/Tb5fc=; b=OStXOhUBHXgun10Jy7eK/04Gij
	klFLiRPASVCn/p85sD1aQJMm4GPk/HN0MVW4ytP/mnXojPt2AA2fgXwWx2JPM6fbmSZfXXMXJ/dkU
	Aix/5L2OHzsanhgx2FmOZKCiNKN8mD65WpETUItxXL73rFw16dXyxwHTGVIa2KG9MCHu7O+OWNpRY
	FcnD5tDyI1RHDw1yutsHwq7buF9u3xpxy4m4Smw1tEmBpi1u80j83KXRwbsQiSM49kPonKgFQK42G
	yA2Bh9qhnD8tgZVIeGEfc18re95yPkEJI61HbDQIHYvaCBjtmrjuASPU7OKX9aiLzHDUBSu6d5RfB
	dHHbQVMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWJy-00000008WZu-0o2M;
	Fri, 08 Mar 2024 09:15:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1riWJt-00000008WZ1-3zkE
	for barebox@lists.infradead.org;
	Fri, 08 Mar 2024 09:15:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ukl@pengutronix.de>)
	id 1riWJs-0007dI-6H; Fri, 08 Mar 2024 10:15:12 +0100
Received: from [2a0a:edc0:0:900:1d::77] (helo=ptz.office.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <ukl@pengutronix.de>)
	id 1riWJr-0056mI-Pm; Fri, 08 Mar 2024 10:15:11 +0100
Received: from ukl by ptz.office.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <ukl@pengutronix.de>)
	id 1riWJr-0025Rg-2I;
	Fri, 08 Mar 2024 10:15:11 +0100
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Fri,  8 Mar 2024 10:15:08 +0100
Message-ID: <20240308091507.249009-3-uwe@kleine-koenig.org>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=3287; i=uwe@kleine-koenig.org; h=from:subject; bh=31xYtg7LhAVldEV/nf+LG6cgRx9vI6wpZnassEsiNo0=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl6tcbJwKJPYVWAYHBg8wtIsBSxiE0S+C/YqNgJ 7cSPQyupqyJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZerXGwAKCRCPgPtYfRL+ TorvB/9HA3Jz7TA2v5czJTrVgH5uxgWos/akaxIEuO+fFCB8OsyVcZrKsQPOx6VCW7VLyZw0/df Ap7kO8pvAdGyhRbOQa4NV3BTKdit5CYtvoZ5UV0tc1JK7MlotRqzLuRoTXOf471veojisFATqiU 8qBwnngSVl0+cJH+FqQYhDW8Epqs/YuOdpcINILua9HJS/t+j/F6W17L9913X/Z+Yxf0F0L+Fua pVOUYACEc6N/Mze1VP8Qvkz2EXDntuuT1GLI+ZQE7JCi+PFtS2BO0+P5qW4AeMiLwrfSTxdTekb v1A+1HmFiuKSNXgiPGO7nKXQs6oJuV7bGhGlTSBAknaucjZw
X-Developer-Key: i=uwe@kleine-koenig.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240308_011514_022308_AF6D4E9E 
X-CRM114-Status: GOOD (  12.59  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] of: partition: Move some parts of of_fixup_partitions() into separate function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>

This is a preparation for the next commit that fixes mtd partition
creation.

Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 drivers/of/partition.c | 81 ++++++++++++++++++++++++------------------
 1 file changed, 47 insertions(+), 34 deletions(-)

diff --git a/drivers/of/partition.c b/drivers/of/partition.c
index 7c9f443ee7bd..d11e1d1690f9 100644
--- a/drivers/of/partition.c
+++ b/drivers/of/partition.c
@@ -167,10 +167,55 @@ static void delete_subnodes(struct device_node *np)
 	}
 }
 
+static int of_fixup_one_partition(struct device_node *partnode, loff_t partoffset,
+				  loff_t size, const char *partname,
+				  unsigned int flags)
+{
+	int na, ns, len = 0;
+	char *name;
+	void *p;
+	u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
+	struct device_node *part;
+	int ret;
+
+	name = basprintf("partition@%0llx", partoffset);
+	if (!name)
+		return -ENOMEM;
+
+	part = of_new_node(partnode, name);
+	free(name);
+	if (!part)
+		return -ENOMEM;
+
+	p = of_new_property(part, "label", partname, strlen(partname) + 1);
+	if (!p)
+		return -ENOMEM;
+
+	na = of_n_addr_cells(part);
+	ns = of_n_size_cells(part);
+
+	of_write_number(tmp + len, partoffset, na);
+	len += na * 4;
+	of_write_number(tmp + len, size, ns);
+	len += ns * 4;
+
+	ret = of_set_property(part, "reg", tmp, len, 1);
+	if (ret)
+		return ret;
+
+	if (flags & DEVFS_PARTITION_READONLY) {
+		ret = of_set_property(part, "read-only", NULL, 0, 1);
+		if (ret)
+			return ret;
+	}
+
+	return 0;
+}
+
 int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 {
 	struct cdev *partcdev;
-	struct device_node *part, *partnode;
+	struct device_node *partnode;
 	int ret;
 	int n_cells, n_parts = 0;
 
@@ -223,10 +268,6 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		return ret;
 
 	list_for_each_entry(partcdev, &cdev->partitions, partition_entry) {
-		int na, ns, len = 0;
-		char *name;
-		void *p;
-		u8 tmp[16 * 16]; /* Up to 64-bit address + 64-bit size */
 		loff_t partoffset;
 
 		if (!(partcdev->flags & DEVFS_PARTITION_FROM_OF))
@@ -237,37 +278,9 @@ int of_fixup_partitions(struct device_node *np, struct cdev *cdev)
 		else
 			partoffset = partcdev->offset;
 
-		name = basprintf("partition@%0llx", partoffset);
-		if (!name)
-			return -ENOMEM;
-
-		part = of_new_node(partnode, name);
-		free(name);
-		if (!part)
-			return -ENOMEM;
-
-		p = of_new_property(part, "label", partcdev->partname,
-                                strlen(partcdev->partname) + 1);
-		if (!p)
-			return -ENOMEM;
-
-		na = of_n_addr_cells(part);
-		ns = of_n_size_cells(part);
-
-		of_write_number(tmp + len, partoffset, na);
-		len += na * 4;
-		of_write_number(tmp + len, partcdev->size, ns);
-		len += ns * 4;
-
-		ret = of_set_property(part, "reg", tmp, len, 1);
+		ret = of_fixup_one_partition(partnode, partoffset, partcdev->size, partcdev->partname, partcdev->flags);
 		if (ret)
 			return ret;
-
-		if (partcdev->flags & DEVFS_PARTITION_READONLY) {
-			ret = of_set_property(part, "read-only", NULL, 0, 1);
-			if (ret)
-				return ret;
-		}
 	}
 
 	return 0;

base-commit: ed7c14536d521793199abf0597164a46ba68e8e5
-- 
2.43.0



