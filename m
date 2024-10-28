Delivery-date: Mon, 28 Oct 2024 17:38:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5SlK-001w4j-26
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 17:38:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5SlL-00009I-7Z
	for lore@pengutronix.de; Mon, 28 Oct 2024 17:38:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2EjfoIQVbht8tSDX0+JJ0W9SYf6/YqZl3LtG9fMF1PM=; b=UbiVB7buQqGFSU2kmnJ+7HM3pS
	i54UHgpr3PEo1DuullZqZOT5gsF50Oi4Jz/Wm/tUy5tfnCbnaIzb6hXr8+Q+TA+x1mnnrAQjILF6T
	LFZfn7jm1TptkPILn51EILMFAxYjL6yE49xWsz4yLH2yEr5j4fsheLo4rI7q6IRUIs7A6rnjz90ng
	gtxyNt6r92OpFsXh+yhYQnrLWTP3kBq5kNtG0MWUV5a3Ig9GF+maCQA14SgPli/ZW+33DAH2L4njN
	fwchh+ch7Jpo3ipaa611uR19Ghx1tWsGYG9fTXhcoPSktJkvTfudc/1Pxm1jWRd/VJMKikGpyC+rN
	Y1VLAy9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Skk-0000000BW8n-0gnw;
	Mon, 28 Oct 2024 16:38:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SQl-0000000BT8H-1WC5
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 16:17:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQU-00073d-4G; Mon, 28 Oct 2024 17:17:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQT-000t3o-31;
	Mon, 28 Oct 2024 17:17:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQT-0072jj-2q;
	Mon, 28 Oct 2024 17:17:05 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 28 Oct 2024 17:17:02 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-fix-noisy-debug-calls-v1-2-e84ce4272313@pengutronix.de>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
In-Reply-To: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_091723_434235_B6D17709 
X-CRM114-Status: GOOD (  11.66  )
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
Subject: [PATCH 2/2] fs: ramfs: downgrade noisy debug calls to verbose
 debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These debug calls are in the hotpath of any ramfs interaction,
cluttering the log buffer, slowing down reads/writes and are usually not
interesting while debugging, thus they are downgraded to verbose
debugging.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 fs/ramfs.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/fs/ramfs.c b/fs/ramfs.c
index a799b23efb..c1ef7acd91 100644
--- a/fs/ramfs.c
+++ b/fs/ramfs.c
@@ -224,14 +224,14 @@ static int ramfs_read(struct device *_dev, FILE *f, void *buf, size_t insize)
 	unsigned long pos = f->pos;
 	int size = insize;
 
-	debug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
+	pr_vdebug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
 
 	while (size) {
 		data = ramfs_find_chunk(node, pos, &ofs, &len);
 		if (!data)
 			return -EINVAL;
 
-		debug("%s: pos: %lu ofs: %d len: %d\n", __func__, pos, ofs, len);
+		pr_vdebug("%s: pos: %lu ofs: %d len: %d\n", __func__, pos, ofs, len);
 
 		now = min(size, len);
 
@@ -255,14 +255,14 @@ static int ramfs_write(struct device *_dev, FILE *f, const void *buf,
 	unsigned long pos = f->pos;
 	int size = insize;
 
-	debug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
+	pr_vdebug("%s: %p %zu @ %lld\n", __func__, node, insize, f->pos);
 
 	while (size) {
 		data = ramfs_find_chunk(node, pos, &ofs, &len);
 		if (!data)
 			return -EINVAL;
 
-		debug("%s: pos: %lu ofs: %d len: %d\n", __func__, pos, ofs, len);
+		pr_vdebug("%s: pos: %lu ofs: %d len: %d\n", __func__, pos, ofs, len);
 
 		now = min(size, len);
 
@@ -363,7 +363,7 @@ static int ramfs_truncate(struct device *dev, FILE *f, loff_t size)
 	if (size > ULONG_MAX)
 		return -ENOSPC;
 
-	debug("%s: %p cur: %ld new: %lld alloc: %ld\n", __func__, node,
+	pr_vdebug("%s: %p cur: %ld new: %lld alloc: %ld\n", __func__, node,
 	       node->size, size, node->alloc_size);
 
 	if (size == node->size)

-- 
2.39.5



