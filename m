Delivery-date: Tue, 30 Jul 2024 09:20:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9V-004O79-0N
	for lore@lore.pengutronix.de;
	Tue, 30 Jul 2024 09:20:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sYh9T-0007BC-SS
	for lore@pengutronix.de; Tue, 30 Jul 2024 09:20:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=yqQm5ecbBNAU38HBEpWbvXJvPws54gYi4CS/3DcKSu8=; b=whSlzcZMHHiZeCIiC61BXwmWrW
	hbNJxkbhRT6JlNa5DS8NGCR8bPCeJee4AoTkeUGzdtffrqOGZUsYiZ1WCV4Bh3kS1VQoLw2pLIdTi
	8p/fHcpakC4hNmhN6aQJ/HFTKr3oswBve7e59pxxbPmK4Fz0w6242drMgfEwNVMkC/nr3BdU6P/9t
	MeH3bqT6NMa9hiWU2AG5n3hCkiHaep9kPW8nD6dK8TJnKb7Ghfogf4IJyPM4IQFvFNqMXQb24i8Hm
	6MDm1ATq3h1DrNGeIf91RKYSPFFHIV7WQGOBjWJaRcCnF68OQodrKu4PJMOzb2AHb4/LDbSKSSWdA
	BF6T+m+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh8z-0000000DyyM-3RPj;
	Tue, 30 Jul 2024 07:19:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sYh8u-0000000Dyut-258V
	for barebox@lists.infradead.org;
	Tue, 30 Jul 2024 07:19:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-0006nO-Hc; Tue, 30 Jul 2024 09:19:30 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-003EJ7-48; Tue, 30 Jul 2024 09:19:30 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1sYh8s-008TRQ-06;
	Tue, 30 Jul 2024 09:19:30 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 30 Jul 2024 09:19:21 +0200
Message-Id: <20240730071929.2016537-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
References: <20240730071929.2016537-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240730_001932_595314_14B69A4D 
X-CRM114-Status: GOOD (  14.02  )
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
Subject: [PATCH 02/10] block: factor out chunk_flush helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We have two places where we flush chunks: when explicitly flushing
all buffered blocks and when there are no idle blocks.

A third place will be added soon for the new erasure callback, so
prepare for that by factoring out the helper.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
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



