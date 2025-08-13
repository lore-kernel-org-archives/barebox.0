Delivery-date: Wed, 13 Aug 2025 16:51:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoq-000CiU-0s
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoo-0006wd-EX
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vEt3BYDuOLZd6SDUfOsXKiL7Mti+JjVibCTpqZvOiCY=; b=T3ISOYoToiWsp0P5TV5qeGtQCo
	rcAcFrLOPQ7xSiJ99e36IK0uaJ56ihodhjvNyLMGBTBI71m0MJ7Da3Ff+tpR7RMeNhSkepZSSqZns
	1bq8BtOBGDwV5aJ0skhtVvPJiYQh+yMBZB/TkGxHHB7AdxPvWfOs7kwngzvciUx0hPnLMO5c+5kQY
	ouhHX/HZpkXsDGfl1bjrsF/rgH5+xGhqakpH1VyXzww1jRd/sKReVS8nVNyx7oprmpZY3apRlHqFC
	amnl3H8ARGN3Ijl7yuzCxFgStkwEzGvNdew9pJjlN84cQ47sLSFS2GN/8tupxxdZ4l0+oKABVnq2U
	Ick9PMrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCo6-0000000Dy1Y-0JHt;
	Wed, 13 Aug 2025 14:50:26 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYL-0000000DvO2-3krb
	for barebox@bombadil.infradead.org;
	Wed, 13 Aug 2025 14:34:09 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=vEt3BYDuOLZd6SDUfOsXKiL7Mti+JjVibCTpqZvOiCY=; b=AXt8XQ5KRl02z1oqnrn7Xrl/cO
	/PgP6UIRgEzOYFmI++JXd8O3QE2WcjZ2gfN4xF2QoVPIowANmgpGtYBODHPQri4+X5DWxqRCLPk4h
	+CRuxOE+7dVPV+JvgOne27Ps7ngRKXyobFq639Y0RT+0vo/1J9FuSs6a2I7INAdxYRbL0M3fQaJ0w
	XLtb4dLK9s+nATFDxl5nmAo4GZ5plbV88ympUtmBOoSE2COYKkJ8mai3IenunhFCVDQNldOyOfx6s
	9XdWKjl59pbEafeoPbggky5Xjw/hTIB7h4wjWoZ5dTYX+sq0olv/PFRnh96vgThYElnBhGg7Vb0Hw
	AgmCwgBg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYH-0000000G6hp-2y7E
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:08 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYE-0003xl-8U; Wed, 13 Aug 2025 16:34:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:41 +0200
Message-Id: <20250813143345.3758653-10-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_153405_977418_0E40025D 
X-CRM114-Status: GOOD (  13.38  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 09/13] security: blobgen: add easy way to check for existent providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

blobgen_get() expects the user to name the blobgen instance to be used.
For general informational purposes, it would be nice to just check if
any provider is registered at all, so make that possible by accepting a
NULL filter argument.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - no change
---
 include/blobgen.h  |  7 +++++++
 security/blobgen.c | 18 +++++++++++-------
 2 files changed, 18 insertions(+), 7 deletions(-)

diff --git a/include/blobgen.h b/include/blobgen.h
index 9f8876cee045..00674ef40f73 100644
--- a/include/blobgen.h
+++ b/include/blobgen.h
@@ -44,7 +44,14 @@ struct blobgen {
 
 int blob_gen_register(struct device *dev, struct blobgen *bg);
 
+#ifdef CONFIG_BLOBGEN
 struct blobgen *blobgen_get(const char *name);
+#else
+static inline struct blobgen *blobgen_get(const char *name)
+{
+	return NULL;
+}
+#endif
 
 int blob_encrypt(struct blobgen *blg, const char *modifier, const void *plain,
 		 int plainsize, void **blob, int *blobsize);
diff --git a/security/blobgen.c b/security/blobgen.c
index 0a4e192a271f..df42c8f6f1bc 100644
--- a/security/blobgen.c
+++ b/security/blobgen.c
@@ -50,24 +50,28 @@ int blob_gen_register(struct device *dev, struct blobgen *bg)
 
 /**
  * blobgen_get - get a blob generator of given name
- * @name: The name of the blob generator to look for
+ * @name: The name of the blob generator to look for or NULL
  *
- * Finds a blob generator by name and returns it. Returns NULL if none is found.
+ * Finds a blob generator by name and returns it.
+ * If name is NULL, returns the first blob generator encountered.
+ * Returns NULL if none is found.
  */
 struct blobgen *blobgen_get(const char *name)
 {
-	struct device *dev;
+	struct device *dev = NULL;
 	struct blobgen *bg;
 
 	if (!name)
 		return bg_default;
 
-	dev = get_device_by_name(name);
-	if (!dev)
-		return NULL;
+	if (name) {
+		dev = get_device_by_name(name);
+		if (!dev)
+			return NULL;
+	}
 
 	list_for_each_entry(bg, &blobs, list) {
-		if (dev == &bg->dev)
+		if (!dev || dev == &bg->dev)
 			return bg;
 	}
 
-- 
2.39.5



