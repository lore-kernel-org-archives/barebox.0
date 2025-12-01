Delivery-date: Mon, 01 Dec 2025 22:19:50 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQBJG-006wXo-1E
	for lore@lore.pengutronix.de;
	Mon, 01 Dec 2025 22:19:50 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vQBJF-00025Y-RQ
	for lore@pengutronix.de; Mon, 01 Dec 2025 22:19:50 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=DaUN6i4E7ev8CS9z9WMSQ0FFV+ZHnJXLVzlS2IsmpIc=; b=T809LTM1rWlE9LxgCwMuOA3TpF
	B2cZf9sHTIpeiviNu6u7v7spBem2gCrb0+Uq7xhI2iCaxS6FiFCqGHS+ASreDRnPhAEwrSbKfrPgp
	8SvCtEMbvVKqsnWXgzRz+yknc2p88Dj4Tm180OeytyvA7KO1QSVZQbBQxWEJEarl7OzRqxwFFHKvc
	Fi+DcNQk7AWfrVYEuqekOJkuqaCHSLYnA8MGoPi2BOSaI7xAvzo2dHNMtgKbrhhnZSIWiBQ9Bca0V
	qcFaQr6YF5ethU0/F4jG7TfGhn4chMXirjkU6KQnjzVCc2AeBICXNdpcWncgEsZN4OvP+Qt/IxZfv
	Uex9uJ0w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQBIj-00000004XDY-1PyA;
	Mon, 01 Dec 2025 21:19:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vQBIg-00000004XCW-2oVu
	for barebox@lists.infradead.org;
	Mon, 01 Dec 2025 21:19:16 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.lan)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1vQBIe-0001xf-24; Mon, 01 Dec 2025 22:19:12 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: chalianis1@gmail.com,
	Ahmad Fatoum <a.fatoum@barebox.org>
Date: Mon,  1 Dec 2025 22:18:53 +0100
Message-ID: <20251201211911.1402617-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251201_131914_733250_E486CD94 
X-CRM114-Status: GOOD (  11.27  )
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
Subject: [PATCH RFT 1/2] ARM: mmu: take DMA offset into account for coherent memory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Now that dma_alloc_coherent and dma_alloc_writecombine take an optional
device parameter, let's take the dma_offset of the device into account
if a device has been supplied.

This will allow supporting systems, where the CPU and other DMA masters,
see the SDRAM at different addresses (i.e. has a dma-ranges in the DT).

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
Result of a discussion with Anis. Needs to be tested.
---
 arch/arm/cpu/mmu-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/cpu/mmu-common.c b/arch/arm/cpu/mmu-common.c
index dd4c8f7de7d4..30a9dfbcb9c0 100644
--- a/arch/arm/cpu/mmu-common.c
+++ b/arch/arm/cpu/mmu-common.c
@@ -47,7 +47,7 @@ void *dma_alloc_map(struct device *dev,
 	size = PAGE_ALIGN(size);
 	ret = xmemalign(PAGE_SIZE, size);
 	if (dma_handle)
-		*dma_handle = (dma_addr_t)ret;
+		*dma_handle = cpu_to_dma(ret);
 
 	memset(ret, 0, size);
 	dma_flush_range(ret, size);
-- 
2.47.3



