Delivery-date: Fri, 26 Jun 2026 10:47:08 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DM-00A11q-32
	for lore@lore.pengutronix.de;
	Fri, 26 Jun 2026 10:47:08 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wd2DL-0005zM-Fb
	for lore@pengutronix.de; Fri, 26 Jun 2026 10:47:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ik1ojqeIkegAI6SOJhkQyesncKmiKAyusxYiC3gi70k=; b=je0+0syyp1z1DFa7UG0Bzb/353
	ryi5Www9su+EjLuJTzuECryfWOR7Z7kajHAQAhcBUdaAkxhHUPAJ0eYosfr0aqwEqejxbsOdbihfx
	+aZjFbLq0mEt/Chh7IiI55ubKZIKRYCX9IazvBaCZBzGg+6y+8f6Gn8V8O8fhI/rf4ifQ1sWI0rww
	lVJn70ZsnC69IFYeko7iclZe4DTadhS6270xVHjpTjCffs+zabyqgRlLfVEv5E1tezqxkzVWXNXGf
	tN7KHWoddp0ld2kfHwH39iDDizhVo6B2yTAUSsXOcOIuzU1E/alN1tvbWkl66PKHtp8iYpRFTnNlM
	DiKnev+w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2Ce-0000000AtHR-2Z93;
	Fri, 26 Jun 2026 08:46:24 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wd2CW-0000000At8E-2IsZ
	for barebox@lists.infradead.org;
	Fri, 26 Jun 2026 08:46:21 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1wd2CT-0003ZP-Dp; Fri, 26 Jun 2026 10:46:13 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Fri, 26 Jun 2026 10:42:19 +0200
Message-ID: <20260626084608.1388806-9-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260626084608.1388806-1-a.fatoum@barebox.org>
References: <20260626084608.1388806-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260626_014616_584058_C108CE18 
X-CRM114-Status: GOOD (  10.09  )
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
Subject: [PATCH 08/26] block: fix discard zeroing too little memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Discard ranges are stored as cdev byte ranges, while
writebuffer_io_nblocks() returns a number of logical blocks.

block_cache() mixes these units up when checking whether a cache chunk
falls inside the most recent discard range.

This bug resulted in a cache hit for discarded data zeroing only the
logical block count in bytes. A 16-block chunk cleared 16 bytes instead of
16 logical blocks, leaving stale data in the rest of the cache buffer.

Fixes: e488952b9d ("block: Implement discard_range")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/block.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/block.c b/common/block.c
index 96f48ba7aa41..f4b2a692407a 100644
--- a/common/block.c
+++ b/common/block.c
@@ -185,9 +185,9 @@ static int block_cache(struct block_device *blk, sector_t block)
 
 	len = writebuffer_io_nblocks(blk, chunk);
 	if (chunk->block_start * BLOCKSIZE(blk) >= blk->discard_start &&
-	    chunk->block_start * BLOCKSIZE(blk) + len
+	    (chunk->block_start + len) * BLOCKSIZE(blk)
 	    <= blk->discard_start + blk->discard_size) {
-		memset(chunk->data, 0, len);
+		memset(chunk->data, 0, len << blk->blockbits);
 		list_add(&chunk->list, &blk->buffered_blocks);
 		return 0;
 	}
-- 
2.47.3



