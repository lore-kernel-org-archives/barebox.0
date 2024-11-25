Delivery-date: Mon, 25 Nov 2024 16:31:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb3t-000Fzi-2z
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:31:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb3t-0003Vv-QB
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:31:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=xzVH5o8nGb81MPWuTNnjVV3MuUdpnJ/OPLsxQMwzvz4=; b=oFtP0lOex0v5naSbh4iHXwtmd6
	C2pL9FNAd+Wg7JvUKfagx3KS8iyT+mXqYv0Q38ha8/v38AkzQ4e1T72METRdx1g9MfoSwTwEmGb1O
	76zYCP7C5ItrJiEffGToFDnL6KGCUN/sV4T721bn4kcbAK6mWgdiOobUdQ2vpFv9KthyMpctibkyg
	zlKSSLehMVgvo3oPtKFbO+mPIlSn+M4iG9r0fllGjel+JszgdGAdAVh9Pu/3Am/ESs8unO9gE0qPM
	P5ehtbfw7hpJIHxBAC3VhN/ItCn+xnv2eAn1fP+C2JEgEtRMPP4SWCaT9mrxVXP3Fz0eFBb8j8o17
	KQDwWT0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb3V-00000008Ubt-0vK9;
	Mon, 25 Nov 2024 15:31:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb0J-00000008Tzk-0Euu
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:28:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0H-0002yV-Ii; Mon, 25 Nov 2024 16:27:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0G-0006Pu-20;
	Mon, 25 Nov 2024 16:27:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0G-0029dw-2D;
	Mon, 25 Nov 2024 16:27:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:27:54 +0100
Message-Id: <20241125152756.513705-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072759_109848_6B59AFD1 
X-CRM114-Status: GOOD (  13.74  )
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
Subject: [PATCH 1/3] partitions: dos: fix memory leaks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These leaks don't bother us normally, but when fuzzing they quickly add
up, so let's fix them.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/dos.c | 28 +++++++++++++++++++---------
 1 file changed, 19 insertions(+), 9 deletions(-)

diff --git a/common/partitions/dos.c b/common/partitions/dos.c
index a388a23eed0d..5a055efec7d1 100644
--- a/common/partitions/dos.c
+++ b/common/partitions/dos.c
@@ -20,9 +20,16 @@
 #include <linux/err.h>
 #include <partitions.h>
 
+struct disk_signature_priv {
+	uint32_t signature;
+	struct block_device *blk;
+	struct param_d *param;
+};
+
 struct dos_partition_desc {
 	struct partition_desc pd;
 	uint32_t signature;
+	struct disk_signature_priv disksig;
 };
 
 struct dos_partition {
@@ -76,11 +83,6 @@ static int write_mbr(struct block_device *blk, void *buf)
 	return block_flush(blk);
 }
 
-struct disk_signature_priv {
-	uint32_t signature;
-	struct block_device *blk;
-};
-
 static int dos_set_disk_signature(struct param_d *p, void *_priv)
 {
 	struct disk_signature_priv *priv = _priv;
@@ -273,7 +275,7 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 	if (extended_partition)
 		dos_extended_partition(blk, dpd, extended_partition, signature);
 
-	dsp = xzalloc(sizeof(*dsp));
+	dsp = &dpd->disksig;
 	dsp->blk = blk;
 
 	/*
@@ -286,7 +288,7 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 	 * signature and pp is a zero-filled hex representation of the 1-based
 	 * partition number.
 	 */
-	dev_add_param_uint32(blk->dev, "nt_signature",
+	dsp->param = dev_add_param_uint32(blk->dev, "nt_signature",
 			dos_set_disk_signature, dos_get_disk_signature,
 			&dsp->signature, "%08x", dsp);
 
@@ -295,6 +297,8 @@ static struct partition_desc *dos_partition(void *buf, struct block_device *blk)
 
 static void dos_partition_free(struct partition_desc *pd)
 {
+	struct dos_partition_desc *dpd
+		= container_of(pd, struct dos_partition_desc, pd);
 	struct partition *part, *tmp;
 
 	list_for_each_entry_safe(part, tmp, &pd->partitions, list) {
@@ -303,6 +307,8 @@ static void dos_partition_free(struct partition_desc *pd)
 		free(dpart);
 	}
 
+	dev_remove_param(dpd->disksig.param);
+
 	free(pd);
 }
 
@@ -414,12 +420,16 @@ static __maybe_unused int dos_partition_mkpart(struct partition_desc *pd,
 	dpart = xzalloc(sizeof(*dpart));
 	part = &dpart->part;
 
-	if (start_lba > UINT_MAX)
+	if (start_lba > UINT_MAX) {
+		free(dpart);
 		return -ENOSPC;
+	}
 	size = end_lba - start_lba + 1;
 
-	if (size > UINT_MAX)
+	if (size > UINT_MAX) {
+		free(dpart);
 		return -ENOSPC;
+	}
 
 	dpart->type = fs_type_to_type(fs_type);
 
-- 
2.39.5



