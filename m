Delivery-date: Mon, 25 Nov 2024 16:31:45 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb3x-000G04-18
	for lore@lore.pengutronix.de;
	Mon, 25 Nov 2024 16:31:45 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tFb3x-0003Xg-7S
	for lore@pengutronix.de; Mon, 25 Nov 2024 16:31:45 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t56boHqDjT9Nuj8ZOf1Rx/yFgSgHIcUDywkCTWI2r9Q=; b=Ocpd46pVqWms/Z0dWHcyz+X0GW
	Kb+BrdUviLD8xqyuk7/dM39v2N6jp9tJZd+An9vaWWBCQcy6P0RRUHv5oBSv+RwM1Q2Digf7/340K
	CG8ePRTmHtQh8/18qB6j+zn4gWEoK6YW7tb5+QnYnkTkSbmnOQn1umQGue0PthNy75TSGSqBdOHOT
	LcuVzuYi9TT4CXfBsZjM5U/+zybWJw3oyXgkucgV8GFzg0yfKMtzLQVFyKpfeYt6h3EkZTyu6f8Rr
	MczSOCw70sDc5ZWeAWm0Nmb6w5TvtNzK0Dpf3pAWvirfuWO/V94wUZotdBS9UmAaQ8G8vzHnVkCjO
	Lda3LSfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb3U-00000008Ubi-2zIx;
	Mon, 25 Nov 2024 15:31:16 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tFb0J-00000008Tzi-0F8t
	for barebox@lists.infradead.org;
	Mon, 25 Nov 2024 15:28:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0H-0002yW-K9; Mon, 25 Nov 2024 16:27:57 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0G-0006Pv-29;
	Mon, 25 Nov 2024 16:27:57 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1tFb0G-0029dw-2M;
	Mon, 25 Nov 2024 16:27:57 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 25 Nov 2024 16:27:55 +0100
Message-Id: <20241125152756.513705-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20241125152756.513705-1-a.fatoum@pengutronix.de>
References: <20241125152756.513705-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241125_072759_104813_EA0BDC9B 
X-CRM114-Status: GOOD (  12.46  )
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
Subject: [PATCH 2/3] partitions: efi: remove guid device parameter on free
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The leak doesn't bother us normally, but when fuzzing it quickly adds
up, so let's fix it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/partitions/efi.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/common/partitions/efi.c b/common/partitions/efi.c
index d4a7ee5d4471..968b959397b5 100644
--- a/common/partitions/efi.c
+++ b/common/partitions/efi.c
@@ -26,6 +26,7 @@ struct efi_partition_desc {
 	struct partition_desc pd;
 	gpt_header *gpt;
 	gpt_entry *ptes;
+	struct param_d *param_guid;
 };
 
 struct efi_partition {
@@ -513,9 +514,6 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	if (!find_valid_gpt(buf, blk, &gpt, &ptes) || !gpt || !ptes)
 		return NULL;
 
-	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
-	dev_add_param_string_fixed(blk->dev, "guid", blk->cdev.diskuuid);
-
 	blk->cdev.flags |= DEVFS_IS_GPT_PARTITIONED;
 
 	nb_part = le32_to_cpu(gpt->num_partition_entries);
@@ -532,6 +530,10 @@ static struct partition_desc *efi_partition(void *buf, struct block_device *blk)
 	epd->gpt = gpt;
 	epd->ptes = ptes;
 
+	snprintf(blk->cdev.diskuuid, sizeof(blk->cdev.diskuuid), "%pUl", &gpt->disk_guid);
+	epd->param_guid = dev_add_param_string_fixed(blk->dev,
+						     "guid", blk->cdev.diskuuid);
+
 	for (i = 0; i < nb_part; i++) {
 		if (!is_pte_valid(&ptes[i], last_lba(blk))) {
 			dev_dbg(blk->dev, "Invalid pte %d\n", i);
@@ -566,6 +568,7 @@ static void efi_partition_free(struct partition_desc *pd)
 		free(epart);
 	}
 
+	dev_remove_param(epd->param_guid);
 	free(epd->ptes);
 	free(epd->gpt);
 	free(epd);
-- 
2.39.5



