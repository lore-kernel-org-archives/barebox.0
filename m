Delivery-date: Wed, 31 Jul 2024 10:05:55 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LL-004jVs-0V
	for lore@lore.pengutronix.de;
	Wed, 31 Jul 2024 10:05:55 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sZ4LJ-0004ME-Rr
	for lore@pengutronix.de; Wed, 31 Jul 2024 10:05:54 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=URk89WUsYNXVXYfcausRNXPR8IM2aZt42l2lprNnV1c=; b=g5wSceR39sISa/VRw1Gsl46m02
	6RqxqQBuUdHzR36o431kseCVbeFBxJmTIvMAd2YQoruPgCLFgcnJubeZQhdFUBVOLpxPQ09uprie8
	drz7OrYRj40aypWpGwiP0GzCWI9ebZCu0F/q4b/A/oONDJ54g0UACah2zwcCgIPGuWYQTx8Bt769E
	IqatcwLq3DDDeZhLnDUWnze4QTgb244aa0w7KXIkDfz2/7lGmKMxPN3Mahq1+9nTE6lKbqRBVzHjg
	gqwJqcIfnu7iYOXzDeOZGBAkI5CxUMlilAKvn7OeTnKIfHdOIc7fNk11UG846kJolX0+f+1+rDkHE
	TYtQLbaQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Kl-00000000F5t-2d12;
	Wed, 31 Jul 2024 08:05:19 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sZ4Ke-00000000F3T-3e3p
	for barebox@lists.infradead.org;
	Wed, 31 Jul 2024 08:05:16 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-0003y7-G3; Wed, 31 Jul 2024 10:05:11 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kd-003Tfg-2t; Wed, 31 Jul 2024 10:05:11 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sZ4Kc-001Wt2-3D;
	Wed, 31 Jul 2024 10:05:11 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 31 Jul 2024 10:05:03 +0200
Message-Id: <20240731080510.364706-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240731080510.364706-1-a.fatoum@pengutronix.de>
References: <20240731080510.364706-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240731_010513_007127_E775F72A 
X-CRM114-Status: GOOD (  14.71  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 03/10] block: factor out chunk_flush helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have two places where we flush chunks: when explicitly flushing
all buffered blocks and when there are no idle blocks.

A third place will be added soon for the new erasure callback, so
prepare for that by factoring out the helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 common/block.c | 42 ++++++++++++++++++++++++------------------
 1 file changed, 24 insertions(+), 18 deletions(-)

diff --git a/common/block.c b/common/block.c
index c7ca4fb4034a..f55da775a797 100644
--- a/common/block.c
+++ b/common/block.c
@@ -31,6 +31,24 @@ static int writebuffer_io_len(struct block_device *blk, struct chunk *chunk)
 	return min_t(blkcnt_t, blk->rdbufsize, blk->num_blocks - chunk->block_start);
 }
 
+static int chunk_flush(struct block_device *blk, struct chunk *chunk)
+{
+	int ret;
+
+	if (!chunk->dirty)
+		return 0;
+
+	ret = blk->ops->write(blk, chunk->data,
+			      chunk->block_start,
+			      writebuffer_io_len(blk, chunk));
+	if (ret < 0)
+		return ret;
+
+	chunk->dirty = 0;
+
+	return 0;
+}
+
 /*
  * Write all dirty chunks back to the device
  */
@@ -43,15 +61,9 @@ static int writebuffer_flush(struct block_device *blk)
 		return 0;
 
 	list_for_each_entry(chunk, &blk->buffered_blocks, list) {
-		if (chunk->dirty) {
-			ret = blk->ops->write(blk, chunk->data,
-					      chunk->block_start,
-					      writebuffer_io_len(blk, chunk));
-			if (ret < 0)
-				return ret;
-
-			chunk->dirty = 0;
-		}
+		ret = chunk_flush(blk, chunk);
+		if (ret < 0)
+			return ret;
 	}
 
 	if (blk->ops->flush)
@@ -112,15 +124,9 @@ static struct chunk *get_chunk(struct block_device *blk)
 	if (list_empty(&blk->idle_blocks)) {
 		/* use last entry which is the most unused */
 		chunk = list_last_entry(&blk->buffered_blocks, struct chunk, list);
-		if (chunk->dirty) {
-			ret = blk->ops->write(blk, chunk->data,
-					      chunk->block_start,
-					      writebuffer_io_len(blk, chunk));
-			if (ret < 0)
-				return ERR_PTR(ret);
-
-			chunk->dirty = 0;
-		}
+		ret = chunk_flush(blk, chunk);
+		if (ret < 0)
+			return ERR_PTR(ret);
 	} else {
 		chunk = list_first_entry(&blk->idle_blocks, struct chunk, list);
 	}
-- 
2.39.2



