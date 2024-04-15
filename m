Delivery-date: Mon, 15 Apr 2024 07:31:51 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEwZ-001ZBx-04
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:31:51 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEwY-00022S-E6
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:31:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UtglX6PFCQpdrrDmFy005HdEFLgZwxghGvxfOri1f1Q=; b=PtHHMPIfJEBhqrxDH3Qfs4AU1l
	oNwYNsLjuz3hDByz52D92QA+tUB+cG6/FncJ460QVHH2M78GGE/0TqZKLn+yBZz6jPpNAtqMyGEcF
	kZjDdY08spCT6jvhB+8v1xI6xEDK2C6jKjD+KyOJ0+ED6pbu36v3xNb86kjNZc/L3kAOx2Ck3OyiJ
	7QMQjz8WjZCY5TPtlxpw6FUvMrfhb0e8mO7iGk9iLcEO3BWlCLRgP8nqVUgbS85H5Fxu92N4b/2JI
	3WwWCcVbMU5/IaPs4ISb1KF8CKKsTn9QWTLeJXsFCbEJTJU0csfqHdgC+CBM9Jyopp/9ryi9FZ5nc
	MXf/N4Jg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEwA-000000070h1-1jGv;
	Mon, 15 Apr 2024 05:31:26 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEw7-000000070gQ-0Ge1
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:31:24 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEw5-0001ZD-Sy; Mon, 15 Apr 2024 07:31:21 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEw5-00CMjg-GS; Mon, 15 Apr 2024 07:31:21 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEw5-001XmS-1M;
	Mon, 15 Apr 2024 07:31:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:31:20 +0200
Message-Id: <20240415053120.368168-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223123_128502_2A3D0446 
X-CRM114-Status: GOOD (  11.95  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] partitions: efi: fix NULL dereference on corrupted GPT
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When processing a corrupted GPT, the initial magic check may succeed,
but later partition parsing may terminate unsuccessfully. In such case,
we returned an invalid pointer that happened to be NULL, but didn't do
much about it leading to a NULL pointer dereference.

Fix this by explicitly returning NULL and correctly propagating it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions.c     | 3 +++
 common/partitions/efi.c | 5 ++---
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/common/partitions.c b/common/partitions.c
index 5b861c40fca3..17c2f1eb281a 100644
--- a/common/partitions.c
+++ b/common/partitions.c
@@ -146,6 +146,9 @@ struct partition_desc *partition_table_read(struct block_device *blk)
 		goto err;
 
 	pdesc = parser->parse(buf, blk);
+	if (!pdesc)
+		goto err;
+
 	pdesc->parser = parser;
 err:
 	free(buf);
diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 9df40e3c15f3..829360da6e1f 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -482,10 +482,10 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	int nb_part;
 	struct efi_partition *epart;
 	struct partition *pentry;
-	struct efi_partition_desc *epd = NULL;
+	struct efi_partition_desc *epd;
 
 	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
-		goto out;
+		return NULL;
 
 	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
 	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.diskuuid);
@@ -525,7 +525,6 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 		pentry->num = i;
 		list_add_tail(&pentry->list, &epd->pd.partitions);
 	}
-out:
 
 	return &epd->pd;
 }
-- 
2.39.2



