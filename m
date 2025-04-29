Delivery-date: Tue, 29 Apr 2025 16:15:02 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9lji-000WBU-1c
	for lore@lore.pengutronix.de;
	Tue, 29 Apr 2025 16:15:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9ljh-0000NX-NO
	for lore@pengutronix.de; Tue, 29 Apr 2025 16:15:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=s9t9Csw/pKrzXZX7gbn61G8mO2SfZ6cOeNiqbxZ5kjs=; b=tCFStc1/Zac0rlXSxobO4K+ZmN
	j3yvJSmRv/As91QMFrECXU+MYYeJ47Cb//XXFLbMBxt3qcImdxFtJo0BvzM9gV11WD3CNQy+3qBQ2
	Vikpwvv+XqPXef0Wrj4QXI9nFIIrU9AWRsYGPYz1FzlEBwakUvWQQ+1oe33kcied83HNk8W99+xId
	ckJ1tA93851Q+sSFeQi268BFJDxsJPFL/OwUc+yFCRYOYzvESfn76bWtM2wYfBJ9UMcIzmHT8KNqV
	3XGUkVwRUZF65ng6XM1x8B7J3gxKLyG+u8Iuconb/proc2fm363p6WNqZrQFQyePjtbueD/pe026J
	A98Rm4IA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9lj4-00000009u21-3iPp;
	Tue, 29 Apr 2025 14:14:22 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9lMd-00000009p6D-2Egg
	for barebox@lists.infradead.org;
	Tue, 29 Apr 2025 13:51:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9lMb-0001Oc-MD; Tue, 29 Apr 2025 15:51:09 +0200
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9lMZ-000GvQ-2U;
	Tue, 29 Apr 2025 15:51:07 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1u9lMa-00G1bX-0U;
	Tue, 29 Apr 2025 15:51:07 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 29 Apr 2025 15:50:32 +0200
Message-Id: <20250429135032.3818240-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.5
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250429_065111_567869_5E1E4CAC 
X-CRM114-Status: GOOD (  12.45  )
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
Subject: [PATCH] ARM: v7r: fix TLSF memory pool mix-up
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

dma_alloc_coherent allocates memory from a special memory region backing
the dma_coherent_pool. When freeing said memory, this needs to be done
with the same pool as argument, but free uses the normal pool used for
all other allocations instead. Failure to do so will trigger memory
corruption during free block merging.

This likely went unnoticed so far, because most drivers allocate
coherent memory only once in the probe path and only disable DMA.
The coherent memory is then only leaked for the short time between
barebox shutdown and Linux reclaiming all memory anyway.

This change is untested.

Fixes: 20a8958e0a67 ("ARM: add ARMv7R MPU support")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/armv7r-mpu.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/armv7r-mpu.c b/arch/arm/cpu/armv7r-mpu.c
index e2108ef7235e..1de9e39cc5f5 100644
--- a/arch/arm/cpu/armv7r-mpu.c
+++ b/arch/arm/cpu/armv7r-mpu.c
@@ -230,7 +230,7 @@ void *dma_alloc_coherent(struct device *dev, size_t size, dma_addr_t *dma_handle
 void dma_free_coherent(struct device *dev,
 		       void *mem, dma_addr_t dma_handle, size_t size)
 {
-	free(mem);
+	tlsf_free(dma_coherent_pool, mem);
 }
 
 void arch_sync_dma_for_cpu(void *vaddr, size_t size, enum dma_data_direction dir)
-- 
2.39.5



