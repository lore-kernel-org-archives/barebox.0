Delivery-date: Wed, 03 Dec 2025 16:19:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodo-007YPg-37
	for lore@lore.pengutronix.de;
	Wed, 03 Dec 2025 16:19:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQodo-0003T0-BS
	for lore@pengutronix.de; Wed, 03 Dec 2025 16:19:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7PjuuZ3iNnJsmUNj+7gS8kBR5Zr8iTyetiu5YrjsEL4=; b=yCT6iXmbi5MOpIWH20pKRkxDPk
	07ai9wdiBWH8WuboNBCD3O3B9a7R620wQM3mB0Qu/BxhreH8DtbUq4Ix7dgPFOXMO8zRhRJONWSsg
	kGw9Tvt2LZ0V6cdKbUgJdIE//wfGFm/mesLkxq0iNp4nefIVI9zilfE91p1AtmMxQeA2L3w/dS8xT
	fZtsyoOw6xobFQvy95EZeLCX0NlLoME8ontWISoiUB+jPYAmCTLznreoqjkTJxkTfFF4YoaoWRfZK
	ZwRlx3S5yYfaxFPJfE9tVE7fJs6xEotIdVerw8OjZo/T/0h5ZIxW9KOyxZVabLMJ1L+OZqXzhro2/
	BejIb+FQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodS-00000006gok-3aQI;
	Wed, 03 Dec 2025 15:19:18 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQodQ-00000006gkp-1YHY
	for barebox@lists.infradead.org;
	Wed, 03 Dec 2025 15:19:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-0003AC-Ut; Wed, 03 Dec 2025 16:19:06 +0100
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-003nYN-2H;
	Wed, 03 Dec 2025 16:19:06 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1vQodG-00000009MJM-2cDD;
	Wed, 03 Dec 2025 16:19:06 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 03 Dec 2025 16:19:08 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251203-efi-partition-refresh-v1-4-f0b6e79b5fa0@pengutronix.de>
References: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
In-Reply-To: <20251203-efi-partition-refresh-v1-0-f0b6e79b5fa0@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764775146; l=1671;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=pwwVJw4EnMGDxq0JqI1zLdlIwSeTQGFN1ExltrmqMHg=;
 b=QBbNMZaeFpXR9W9OsnUMrK6565z2404yTCU0R2AmH8I8hUOB6E3+qL8s+n97sxqDa2kC5hBZF
 18wGn6+vOPBAr/igj3XfCHt2VlFMisRQafcY2Bn6rcYzmx8KmMGyfUY
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251203_071916_427001_3BD72133 
X-CRM114-Status: GOOD (  14.50  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] partitions: gpt: write inactive GPT first
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

There are two GPT partition tables on a device, the primary at the
beginning of a device and the alternate at the end of the device.

For the sake of being more robust against power failures let's write the
inactive GPT first and the currently active one afterwards. This always
leaves us a usable GPT on the device when updating the partition table.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/partitions/efi.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index 8da62acf36646b62ff2fac25673adbc48650d299..1766f0123353d502065673d02e983e6cdd51b9af 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -27,6 +27,8 @@ struct efi_partition_desc {
 	gpt_header *gpt;
 	gpt_entry *ptes;
 	struct param_d *param_guid;
+	bool good_pgpt;
+	bool good_agpt;
 };
 
 struct efi_partition {
@@ -424,6 +426,9 @@ static int find_valid_gpt(struct efi_partition_desc *epd, void *buf)
 	if (IS_ENABLED(CONFIG_PARTITION_DISK_EFI_GPT_COMPARE))
 		compare_gpts(blk->dev, pgpt, agpt, lastlba);
 
+	epd->good_pgpt = good_pgpt;
+	epd->good_agpt = good_agpt;
+
 	/* The good cases */
 	if (good_pgpt) {
 		epd->gpt  = pgpt;
@@ -810,11 +815,11 @@ static __maybe_unused int efi_partition_write(struct partition_desc *pd)
 	if (ret)
 		return ret;
 
-	ret = __efi_partition_write(epd, true);
+	ret = __efi_partition_write(epd, !epd->good_pgpt);
 	if (ret)
 		goto err_block_write;
 
-	ret = __efi_partition_write(epd, false);
+	ret = __efi_partition_write(epd, epd->good_pgpt);
 	if (ret)
 		goto err_block_write;
 

-- 
2.47.3



