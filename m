Delivery-date: Mon, 28 Oct 2024 17:38:38 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5SlJ-001w4N-2J
	for lore@lore.pengutronix.de;
	Mon, 28 Oct 2024 17:38:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1t5SlK-00008k-93
	for lore@pengutronix.de; Mon, 28 Oct 2024 17:38:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2whMYWHNQeyJk970oqep+rT2Bu1jSZRFrarDnzotghA=; b=M1UpZc+rHRFXApGvzoKkzIoA0Q
	GoPaJTQC4RZQOXK0nF+IUv5ON/SK+Sby4YcKnhCdweIh5WYvi29xeRzoio4CUwLxLg0ybhQPJbc1H
	KqdrZFaxnQaSeO8Cci0Y28FuMgK9egqCILfGIM876NjUGuVuOcXGBGX8By0WUjfln8vzJ2GXtw4/S
	tT5VlRIbPY6o0JU8RbegdCt1W6r6BzdmcK5JCzRwOUWzi2gIxCyqSman01apPMxRvnq0mCuQqvSaU
	/IhDlrqWZTcx3NpD6iDCjwvTkY6HZs/xpzwfjVNX7+VumWO2rShIqfcOUjeK7bSGjsFBb4aRR4c8j
	v4GDi4TA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1t5Skf-0000000BW4B-0r9q;
	Mon, 28 Oct 2024 16:37:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1t5SQW-0000000BT6l-3XgC
	for barebox@lists.infradead.org;
	Mon, 28 Oct 2024 16:17:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQU-00073f-4S; Mon, 28 Oct 2024 17:17:06 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQT-000t3n-30;
	Mon, 28 Oct 2024 17:17:05 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1t5SQT-0072jj-2p;
	Mon, 28 Oct 2024 17:17:05 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 28 Oct 2024 17:17:01 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241028-fix-noisy-debug-calls-v1-1-e84ce4272313@pengutronix.de>
References: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
In-Reply-To: <20241028-fix-noisy-debug-calls-v1-0-e84ce4272313@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20241028_091708_916703_3B32D630 
X-CRM114-Status: GOOD (  12.22  )
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
Subject: [PATCH 1/2] block: downgrade noisy debug calls to verbose debug
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

These debug calls are in the hotpath of any block device interaction,
cluttering the log buffer, slowing down reads/writes and are usually not
interesting while debugging, thus they are downgraded to verbose
debugging.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 common/block.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/block.c b/common/block.c
index 3101fceea7..3ee33f2bf0 100644
--- a/common/block.c
+++ b/common/block.c
@@ -105,7 +105,7 @@ static struct chunk *chunk_get_cached(struct block_device *blk, sector_t block)
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
 		if (block >= chunk->block_start &&
 				block < chunk->block_start + blk->rdbufsize) {
-			dev_dbg(blk->dev, "%s: found %llu in %d\n", __func__,
+			dev_vdbg(blk->dev, "%s: found %llu in %d\n", __func__,
 				block, chunk->num);
 			/*
 			 * move most recently used entry to the head of the list
@@ -175,7 +175,7 @@ static int block_cache(struct block_device *blk, sector_t block)
 
 	chunk->block_start = block & ~blk->blkmask;
 
-	dev_dbg(blk->dev, "%s: %llu to %d\n", __func__, chunk->block_start,
+	dev_vdbg(blk->dev, "%s: %llu to %d\n", __func__, chunk->block_start,
 		chunk->num);
 
 	len = writebuffer_io_len(blk, chunk);

-- 
2.39.5



