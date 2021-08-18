Delivery-date: Wed, 18 Aug 2021 15:37:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLlG-00074q-MV
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 15:37:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLlB-0006eE-Jg
	for lore@pengutronix.de; Wed, 18 Aug 2021 15:37:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRpTrZUmZl/Lex1NdWZRdqq9GNJiboXdzplQp6KsHjo=; b=UVaBeDGeCSQQo9
	nVce/ZZ3OAVXj1/ikpUD2e7mHm65XO9V72wrXbVBAskIDh6aWOT7nalt5aPOAf14FolJQzwBHbCVr
	YbrN10VZvkT5gbHy3i4V3nBpQFN13i1s6wYZeX2O4SIuVefkfigASWqNHwgntqmzF+GcYALMFRwx3
	KO1ZaTU7aLSDp2+tBwaQWATrZWzW5/h1VlzyNU8xf7ZuUxAxg/6WRX0t2/RQcUNP+yIvOTPv4OPe8
	8zQ2gtreP8Spa+P0+XE5P2R3uz2oFeQt660PWKiqt5M6y+yQOYF5RDKNKdi+cIC8ffDVDnPkBmbhl
	mULd1M1cLrIuZA/es9PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGLjT-005hvm-QT; Wed, 18 Aug 2021 13:35:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGLil-005hkE-La
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 13:35:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0005z4-Vh
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:06 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0007wL-DF
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-002RbC-Cn
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Aug 2021 15:35:04 +0200
Message-Id: <20210818133505.582698-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818133505.582698-1-m.tretter@pengutronix.de>
References: <20210818133505.582698-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_063507_799931_B0780601 
X-CRM114-Status: GOOD (  17.54  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] firmware: zynqmp-fpga: avoid additional buffer for size
 argument
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There are two different APIs for loading an FPGA via the pmu-fw as
indicated by the ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED feature flag.
The pmu-fw expects as second argument either the size of the bitstream or a
pointer to the size of the bitstream.

The driver allocates a separate buffer for the size, which results in
the allocation of a 4k page for storing a 32 bit value.

Allocate some more memory for the bitstream and append the size of the
bitstream at the end of the bitstream to avoid the additional memory
allocation.

Add a comment to explain the surprising size of the allocation.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 37 +++++++++++++++-------------------
 1 file changed, 16 insertions(+), 21 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 736d1950fa5e..667910479aa7 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -197,8 +197,8 @@ static void zynqmp_fpga_show_header(const struct device_d *dev,
 static int fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
-	char *buf_aligned;
-	u32 *buf_size = NULL;
+	u32 *buf_aligned;
+	u32 buf_size;
 	u32 *body;
 	size_t body_length;
 	int header_length = 0;
@@ -234,17 +234,14 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		goto err_free;
 	}
 
-	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)) {
-		buf_size = dma_alloc_coherent(sizeof(*buf_size),
-		DMA_ADDRESS_BROKEN);
-		if (!buf_size) {
-			status = -ENOBUFS;
-			goto err_free;
-		}
-		*buf_size = body_length;
-	}
-
-	buf_aligned = dma_alloc_coherent(body_length, DMA_ADDRESS_BROKEN);
+	/*
+	 * The PMU FW variants without the ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED
+	 * feature expect a pointer to the bitstream size, which is stored in
+	 * memory. Allocate some extra space at the end of the buffer for the
+	 * bitstream size.
+	 */
+	buf_aligned = dma_alloc_coherent(body_length + sizeof(buf_size),
+					 DMA_ADDRESS_BROKEN);
 	if (!buf_aligned) {
 		status = -ENOBUFS;
 		goto err_free;
@@ -259,20 +256,18 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 
 	addr = (u64)buf_aligned;
 
-	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) && buf_size) {
-		status = mgr->eemi_ops->fpga_load(addr,
-				(u32)(uintptr_t)buf_size,
-				flags);
-		dma_free_coherent(buf_size, 0, sizeof(*buf_size));
+	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
+		buf_size = body_length;
 	} else {
-		status = mgr->eemi_ops->fpga_load(addr, (u32)(body_length),
-						  flags);
+		buf_aligned[body_length / sizeof(*buf_aligned)] = body_length;
+		buf_size = addr + body_length;
 	}
 
+	status = mgr->eemi_ops->fpga_load(addr, buf_size, flags);
 	if (status < 0)
 		dev_err(&mgr->dev, "unable to load fpga\n");
 
-	dma_free_coherent(buf_aligned, 0, body_length);
+	dma_free_coherent(buf_aligned, 0, body_length + sizeof(buf_size));
 
  err_free:
 	free(mgr->buf);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

