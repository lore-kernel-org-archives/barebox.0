Delivery-date: Thu, 15 Jan 2026 13:06:37 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM7a-001aEU-0P
	for lore@lore.pengutronix.de;
	Thu, 15 Jan 2026 13:06:37 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgM7Z-00027W-4I
	for lore@pengutronix.de; Thu, 15 Jan 2026 13:06:37 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=BY2UBbcVHlkNOXXpe8FV6EppAqWSPal0yBB7lKPwczw=; b=PFUBMVqi/6pGg8qtP6C8pD9prP
	YrtNbnPquRR6bYjDwXVScHP+idBSahQIp34RCGhl9DKDx0Q4rzMQ2i5WRdPb/45BAuqG+aDeowHJo
	jPfElPNxiBLpefS6UR9dMruE6hKOPxV5nOYe9Xxp29JVeEwRYix1zx+bgTIorWl9r/BRL4ye1ILxj
	wGC/3zTaLETGddNNZ3YUOCr9YmoHbi+QVBqdx49EcepGNPHtqhngoT6KS+nayuVJbptt3exm9iIsx
	DnrKdgJBwrRKBbJb5MToxb/03LtOOytgHWuWKY9PzRAOxJOUhvmfvey20jZil03eFDgDs9vXzAGjZ
	vu02fy0g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM73-0000000CIE5-0GeP;
	Thu, 15 Jan 2026 12:06:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgM6y-0000000CICM-1GYK
	for barebox@lists.infradead.org;
	Thu, 15 Jan 2026 12:06:03 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vgM6w-0001zA-BK; Thu, 15 Jan 2026 13:05:58 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Thu, 15 Jan 2026 13:05:52 +0100
Message-ID: <20260115120557.3433211-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260115_040600_342760_52A210C4 
X-CRM114-Status: GOOD (  10.07  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] ARM: mmu: optimize dma_alloc_coherent for cache-coherent DMA masters
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

If a device is DMA-capable and cache-coherent, it can be considerably
faster to keep shared memory cached, instead of mapping it uncached
unconditionally like we currently do.

This was very noticeable when using Virt I/O with KVM acceleration as
described in commit 3ebd05809a49 ("virtio: don't use DMA API unless
required").

In preparation for simplifying the code in the aforementioned commit,
consult dev_is_dma_coherent() before doing cache maintenance.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 arch/arm/cpu/mmu-common.c | 10 ++++++----
 1 file changed, 6 insertions(+), 4 deletions(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index a1431c0ff461..2b22ab47cac8 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -50,9 +50,11 @@ void *dma_alloc_map(struct device *dev,
 		*dma_handle = (dma_addr_t)ret;
 
 	memset(ret, 0, size);
-	dma_flush_range(ret, size);
 
-	remap_range(ret, size, map_type);
+	if (!dev_is_dma_coherent(dev)) {
+		dma_flush_range(ret, size);
+		remap_range(ret, size, map_type);
+	}
 
 	return ret;
 }
@@ -70,8 +72,8 @@ void *dma_alloc_coherent(struct device *dev,
 void dma_free_coherent(struct device *dev,
 		       void *mem, dma_addr_t dma_handle, size_t size)
 {
-	size = PAGE_ALIGN(size);
-	remap_range(mem, size, MAP_CACHED);
+	if (!dev_is_dma_coherent(dev))
+		remap_range(mem, PAGE_ALIGN(size), MAP_CACHED);
 
 	free(mem);
 }
-- 
2.47.3



