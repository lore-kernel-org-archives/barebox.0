Delivery-date: Wed, 02 Jun 2021 10:04:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loLrI-0007zP-Ef
	for lore@lore.pengutronix.de; Wed, 02 Jun 2021 10:04:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1loLrF-0000nv-Hf
	for lore@pengutronix.de; Wed, 02 Jun 2021 10:04:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=klqFXxEJGbitNnRsjvcqx5SsAKP4hZsI4T5iqLfqSFA=; b=uiE6/61P/EIowz
	ugjoyx1LzitdSn0yWmh2UhbYlIlDPLoJCAkzhwL7nIVoWta44fSGHuTDXT0moOyQvrrVTzruIz7NU
	msuo6Lg1+NlcYKwTSGaPRWEMkOt8EIt1G+ylN4W8Au3nDuWln1P9HLvK4TMI923b+yJK7ClKis42K
	Ym7aI3QJCjkAl6EKXdbwUIJqym319FV9gLCBvU22KZdeAynhS3IgvzcSKZFBxgbHjBAJV/29qUr+a
	Rh074O+IlpEqNat0578eAr8WBuLvJPEw1kC4lSpLQsy2CLPZt0lkj8DSGFhdAeIfXMezBKJOTudsE
	lSmC0UPE1fQCq7x1sckA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1loLpX-002TD9-4O; Wed, 02 Jun 2021 08:02:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1loL6G-002F5P-Ez
 for barebox@lists.infradead.org; Wed, 02 Jun 2021 07:15:38 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loL6F-0003v3-47; Wed, 02 Jun 2021 09:15:35 +0200
Received: from sha by dude02.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <sha@pengutronix.de>)
 id 1loL6E-0002mU-Rm; Wed, 02 Jun 2021 09:15:34 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed,  2 Jun 2021 09:15:33 +0200
Message-Id: <20210602071533.10093-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210602071533.10093-1-s.hauer@pengutronix.de>
References: <20210602071533.10093-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210602_001536_551708_D407A491 
X-CRM114-Status: GOOD (  14.01  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] partitions: efi: Fix MAX_PARTITION check
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The GPT partiton parser has a check which should check if the GPT has
more partitions than we support. This doesn't work because the loop
iterating over the partitions exits with a maximum i of MAX_PARTITION,
i > MAX_PARTITION will never be true. Fix the check.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 13 ++++++++-----
 1 file changed, 8 insertions(+), 5 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 437c3d64f8..135b08901a 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -446,7 +446,14 @@ static void efi_partition(void *buf, struct block_device *blk,
 	}
 
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
-	for (i = 0; i < MAX_PARTITION && i < nb_part; i++) {
+
+	if (nb_part > MAX_PARTITION) {
+		dev_warn(blk->dev, "GPT has more partitions than we support (%d) > max partition number (%d)\n",
+			 nb_part, MAX_PARTITION);
+		nb_part = MAX_PARTITION;
+	}
+
+	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
 			dev_dbg(blk->dev, "Invalid pte %d\n", i);
 			return;
@@ -460,10 +467,6 @@ static void efi_partition(void *buf, struct block_device *blk,
 		snprintf(pentry->partuuid, sizeof(pentry->partuuid), "%pUl", &ptes[i].unique_partition_guid);
 		pd->used_entries++;
 	}
-
-	if (i > MAX_PARTITION)
-		dev_warn(blk->dev, "num_partition_entries (%d) > max partition number (%d)\n",
-			 nb_part, MAX_PARTITION);
 }
 
 static struct partition_parser efi_partition_parser = {
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

