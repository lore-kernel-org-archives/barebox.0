Delivery-date: Fri, 26 Jun 2026 10:47:09 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DN-00A12T-1Q
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DL-000609-RA
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VBxmU+58OTej8Jtm++TsegfRVMfZm32H8iHnoy+4XVQ=; b=ojxX6euk0sZ77CLKU3VdT/dJz4
	jtLGznpm6WYC8k0I2Mw911a9dNa92P273/S4zzDcWLV+aFLsMkMnTGynAp+SOVfGDuwsUStJOZ3hy
	igqKqvH/0uGrH36sO8ZTEtk2JinsXxe7ut/oq1jbXS5tMNassxa85MW1M6wXj594BKiDdAt9FYh/4
	pCLVkid2vb7nsFg658gwcN5EGPdC32e+f9bfLiplEaxX5shP8lCTKACB/7227jIO5VqfQnkumhGIM
	tDSPkG0QcAu8vCLB56yqKzjjTpY0I3B72028IYB26KZrr1tJqI0amj9ZoberZUmUjYbvEhTPvDG30
	DSb+YctA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Cb-0000000AtE6-3pIv;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CV-0000000At8C-40wA
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:19 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CT-0003ZP-19; Fri, 26 Jun 2026 10:46:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:17 +0200
Message-ID: <20260626084608.1388806-7-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_085379_09DD7F58 
X-CRM114-Status: GOOD (  11.93  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/26] block: clarify that writebuffer_io_len returns sector counts
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It's not immediately clear whether len is the block count or the byte
count and indeed the two callsites  of writebuffer_io_len() interpret it
differently.

In preparation for fixing that, adjust return type and function name to
reflect that number of blocks is the unit.

No functional change.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/block.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/common/block.c b/common/block.c
index beb7e7b14fdd..96f48ba7aa41 100644
--- a/common/block.c
+++ b/common/block.c
@@ -29,7 +29,7 @@ struct chunk {
 
 #define BUFSIZE (PAGE_SIZE * 16)
 
-static int writebuffer_io_len(struct block_device *blk, struct chunk *chunk)
+static blkcnt_t writebuffer_io_nblocks(struct block_device *blk, struct chunk *chunk)
 {
 	return min_t(blkcnt_t, blk->rdbufsize, blk->num_blocks - chunk->block_start);
 }
@@ -55,7 +55,7 @@ static void blk_stats_record_erase(struct block_device *blk, blkcnt_t count) { }
 
 static int chunk_flush(struct block_device *blk, struct chunk *chunk)
 {
-	size_t len;
+	blkcnt_t len;
 	int ret;
 
 	if (!chunk->dirty)
@@ -64,7 +64,7 @@ static int chunk_flush(struct block_device *blk, struct chunk *chunk)
 	if (!blk->ops->write)
 		return 0;
 
-	len = writebuffer_io_len(blk, chunk);
+	len = writebuffer_io_nblocks(blk, chunk);
 	ret = blk->ops->write(blk, chunk->data, chunk->block_start, len);
 	if (ret < 0)
 		return ret;
@@ -171,7 +171,7 @@ static struct chunk *get_chunk(struct block_device *blk)
 static int block_cache(struct block_device *blk, sector_t block)
 {
 	struct chunk *chunk;
-	size_t len;
+	blkcnt_t len;
 	int ret;
 
 	chunk = get_chunk(blk);
@@ -183,7 +183,7 @@ static int block_cache(struct block_device *blk, sector_t block)
 	dev_vdbg(blk->dev, "%s: %llu to %d\n", __func__, chunk->block_start,
 		chunk->num);
 
-	len = writebuffer_io_len(blk, chunk);
+	len = writebuffer_io_nblocks(blk, chunk);
 	if (chunk->block_start * BLOCKSIZE(blk) >= blk->discard_start &&
 	    chunk->block_start * BLOCKSIZE(blk) + len
 	    <= blk->discard_start + blk->discard_size) {
-- 
2.47.3



