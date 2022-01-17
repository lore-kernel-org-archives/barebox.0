Delivery-date: Mon, 17 Jan 2022 23:21:49 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNp-004zGh-A5
	for lore@lore.pengutronix.de; Mon, 17 Jan 2022 23:21:49 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n9aNn-0005Q8-2X
	for lore@pengutronix.de; Mon, 17 Jan 2022 23:21:48 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=p3u9gqPJwnRSi93rUWGyg/jQAdymct34oqFV/kUilJA=; b=ZSzvum3VjZK5U9
	Dpm/byECVbbv92jiEqYjOp8DgUSvTWSe6LpFhtn3Bz5p+k5H/UE0KUF1ZmLT0zkIBGkYkx+RusUh1
	AGaKOb4E8fZaxAurhm+Lr4ToTnV9obuyL5nPwf1l9xDJShutdTnrQ97sDGWGgtiNFq1rkupHRDMzo
	+EqpFvd0n01ck7a3uhh6ntonFLeumcy4i268xodb3nGreYdyRentwJCwalKtg2KZfsfqYOYfgtq6W
	++HgVM99F0SOcqBi9o1Ong99jDXXv41J+9xF1EsDobuzSEyiwa3QrMqlNCxQ+F4m9Lo32IxU/sZWx
	SHQ4R27GTcqWOVei+oFg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n9aML-00GTCy-2E; Mon, 17 Jan 2022 22:20:17 +0000
Received: from smtpout140.security-mail.net ([85.31.212.146]
 helo=fx601.security-mail.net)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n9aM3-00GT6i-AN
 for barebox@lists.infradead.org; Mon, 17 Jan 2022 22:20:02 +0000
Received: from localhost (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 7EF8C3ACE3A
 for <barebox@lists.infradead.org>; Mon, 17 Jan 2022 23:19:57 +0100 (CET)
Received: from fx601 (localhost [127.0.0.1])
 by fx601.security-mail.net (Postfix) with ESMTP id 6AD903ACE08;
 Mon, 17 Jan 2022 23:19:56 +0100 (CET)
X-Virus-Scanned: E-securemail
Secumail-id: <5eb7.61e5eb8b.d68e6.0>
Received: from zimbra2.kalray.eu (unknown [217.181.231.53])
 by fx601.security-mail.net (Postfix) with ESMTPS id D895B3ACD7F;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from zimbra2.kalray.eu (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTPS id B47D127E03AE;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 9B41F27E03E1;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu 9B41F27E03E1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1642457995;
 bh=vo2nWTeNpbmRFPzzAxPZp9cf26GiBjcjYtyN9VAbmHI=;
 h=From:To:Date:Message-Id;
 b=ilqrDKSrlb8R824eXO4Kbu/pFxnZwmaIAOa4ZI8fZRbrlKKNs6nWVymBXzZZfH/jW
 g19LbpAzEJEgkYOSCrTSao4O3GqhPC4Rb/EzWZL4tEtTWQTpEMnVSLEJnjAekq27Eo
 xhLWIcupGRbpJsIf9dd/wRG5Ayw5ucEkpiCx65zo=
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id FCYz3-NOh32g; Mon, 17 Jan 2022 23:19:55 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 796C727E03AE;
 Mon, 17 Jan 2022 23:19:55 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Cc: Clement Leger <clement.leger@bootlin.com>,
 Louis Morhet <lmorhet@kalray.eu>, Luc Michel <lmichel@kalray.eu>,
 Yann Sionneau <ysionneau@kalray.eu>, Jules Maselbas <jmaselbas@kalray.eu>
Date: Mon, 17 Jan 2022 23:19:07 +0100
Message-Id: <20220117221917.26970-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220117221917.26970-1-jmaselbas@kalray.eu>
References: <20220117221917.26970-1-jmaselbas@kalray.eu>
X-Virus-Scanned: by Secumail
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220117_141959_693462_C353FFA4 
X-CRM114-Status: UNSURE (   8.03  )
X-CRM114-Notice: Please train this message.
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/11] kvx: dma: Remove arch dma_map/unmap_single
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Since dma_map/unmap_single functions have been moved to common, barebox
doesn't compile for kvx anymore. The original functions were doing some
magic to support 32bits dma buffer addresses. The original behavior can
be replaced by a device-tree dma-range property.

Fixes: 3f975f810 ("dma: move dma_map/unmap_single from ARM to common code")
Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 arch/kvx/lib/dma-default.c | 38 --------------------------------------
 1 file changed, 38 deletions(-)

diff --git a/arch/kvx/lib/dma-default.c b/arch/kvx/lib/dma-default.c
index 2a4144696c..c84a32954e 100644
--- a/arch/kvx/lib/dma-default.c
+++ b/arch/kvx/lib/dma-default.c
@@ -54,41 +54,3 @@ void dma_sync_single_for_cpu(dma_addr_t addr, size_t size,
 		BUG();
 	}
 }
-
-#define KVX_DDR_ALIAS_OFFSET \
-	(KVX_DDR_64BIT_RAM_WINDOW_BA - KVX_DDR_32BIT_RAM_WINDOW_BA)
-#define KVX_DDR_ALIAS_WINDOW \
-	(KVX_DDR_64BIT_RAM_WINDOW_BA + KVX_DDR_ALIAS_OFFSET)
-
-/* Local smem is aliased between 0 and 16MB */
-#define KVX_SMEM_LOCAL_ALIAS 0x1000000ULL
-
-dma_addr_t dma_map_single(struct device_d *dev, void *ptr, size_t size,
-			  enum dma_data_direction dir)
-{
-	uintptr_t addr = (uintptr_t) ptr;
-
-	dma_sync_single_for_device(addr, size, dir);
-
-	/* Local smem alias should never be used for dma */
-	if (addr < KVX_SMEM_LOCAL_ALIAS)
-		return addr + (1 + kvx_cluster_id()) * KVX_SMEM_LOCAL_ALIAS;
-
-	if (dev->dma_mask && addr <= dev->dma_mask)
-		return addr;
-
-	if (addr >= KVX_DDR_ALIAS_WINDOW)
-		return DMA_ERROR_CODE;
-
-	addr -= KVX_DDR_ALIAS_OFFSET;
-	if (dev->dma_mask && addr > dev->dma_mask)
-		return DMA_ERROR_CODE;
-
-	return addr;
-}
-
-void dma_unmap_single(struct device_d *dev, dma_addr_t addr, size_t size,
-		      enum dma_data_direction dir)
-{
-	dma_sync_single_for_cpu(addr, size, dir);
-}
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

