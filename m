Delivery-date: Thu, 22 May 2025 15:42:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bq-001XqV-2y
	for lore@lore.pengutronix.de;
	Thu, 22 May 2025 15:42:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uI6Bq-0005yP-A3
	for lore@pengutronix.de; Thu, 22 May 2025 15:42:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=OOliLKSsCssdcue2XmiluUbwbdq+hvwIjD2ZJjVUfZU=; b=cPhb+Z+Pfj2B+KmNR5MlMsgJFj
	XwhBR2eJVpznb76KOtjYzdA62x1y2LiaUAHK5GyTElGSs+tW82rqwqUSkaRoPXVGQ3S8aSDCh1K6I
	ZKzYsmpV3bMJpZrDAoLUnGWq55ZFT6nhvLyGhZIkcQuhLqhxWhmzByFV0czDsmWGEAnJ2HBS901fe
	C5xfdvyT19ao+MEZCYQqdL87P0q7bAkB9CPaLGq30GkEArXKxn0l6Dz5cggxjMNxC0wSgwYOIcIyJ
	pW/YnfJ7mCdsZBMLQBSOOIkhP0SijuWxLw9P84v9Go9POXA3bB6g0bqekOWbKHj7ng+rh0AOaLHBv
	VezFwMHQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI6BG-0000000197B-2eP7;
	Thu, 22 May 2025 13:41:54 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uI69v-000000018vp-0S4o
	for barebox@lists.infradead.org;
	Thu, 22 May 2025 13:40:33 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-00059v-Lq; Thu, 22 May 2025 15:40:27 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000kDd-1R;
	Thu, 22 May 2025 15:40:27 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uI69r-000ybx-1C;
	Thu, 22 May 2025 15:40:27 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 22 May 2025 15:40:23 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250522-parted-size-v1-2-369d146aa100@pengutronix.de>
References: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
In-Reply-To: <20250522-parted-size-v1-0-369d146aa100@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1747921227; l=2246;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=6ZMdcdOanjnCm/d+BPfFYVa72uIJOjt8bOorvM1iMDo=;
 b=wUQZtwmF86TdhcYFxWXrFfobGdp5jCP+hzxaOkIoF9Ji2WISsM2xe7QuUNyttAzwzRQow3n2o
 GKmL+8S5A8AB1LI+RX9cHlZ9ryewF97e3QNh4KJRuURPebhZ3jTUSn6
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250522_064031_154887_C989B94C 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: [PATCH 2/3] parted: align partitions to 1MiB
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Common partitioning tools align partition start offsets and sizes to
1MiB. Do likewise in barebox parted to avoid unnecessary write
amplification due to unaligned partition starts.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/parted.c    | 10 ++++++++--
 include/partitions.h |  4 ++++
 2 files changed, 12 insertions(+), 2 deletions(-)

diff --git a/commands/parted.c b/commands/parted.c
index 68b056a0758a14e597d72f76cdc4ba6781a06051..221c6fc98601f1532ea85e000d1e2147f7a5af63 100644
--- a/commands/parted.c
+++ b/commands/parted.c
@@ -8,6 +8,7 @@
 #include <linux/sizes.h>
 #include <partitions.h>
 #include <linux/math64.h>
+#include <range.h>
 
 static struct partition_desc *gpdesc;
 static bool table_needs_write;
@@ -160,13 +161,18 @@ static int do_mkpart(struct block_device *blk, int argc, char *argv[])
 	end *= mult;
 
 	/* If not on sector boundaries move start up and end down */
-	start = ALIGN(start, SECTOR_SIZE);
-	end = ALIGN_DOWN(end, SECTOR_SIZE);
+	start = ALIGN(start, SZ_1M);
+	end = ALIGN_DOWN(end, SZ_1M);
 
 	/* convert to LBA */
 	start >>= SECTOR_SHIFT;
 	end >>= SECTOR_SHIFT;
 
+	if (end == start) {
+		printf("Error: After alignment the partition has zero size\n");
+		return -EINVAL;
+	}
+
 	/*
 	 * When unit is >= KB then substract one sector for user convenience.
 	 * It allows to start the next partition where the previous ends
diff --git a/include/partitions.h b/include/partitions.h
index 7fd6899bd3b88f691385c330bb7900d9ec1547ac..dd3e631c5aa337d752312cd94be5e7dbb4f527a5 100644
--- a/include/partitions.h
+++ b/include/partitions.h
@@ -11,6 +11,7 @@
 #include <filetype.h>
 #include <linux/uuid.h>
 #include <linux/list.h>
+#include <linux/sizes.h>
 
 #define MAX_PARTITION		128
 #define MAX_PARTITION_NAME	38
@@ -55,6 +56,9 @@ struct partition_parser {
 	const char *name;
 };
 
+#define PARTITION_ALIGN_SIZE	SZ_1M
+#define PARTITION_ALIGN_SECTORS	(PARTITION_ALIGN_SIZE >> SECTOR_SHIFT)
+
 void partition_desc_init(struct partition_desc *pd, struct block_device *blk);
 int partition_parser_register(struct partition_parser *p);
 struct partition_desc *partition_table_read(struct block_device *blk);

-- 
2.39.5



