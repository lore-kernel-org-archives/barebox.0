Delivery-date: Thu, 19 Aug 2021 10:14:56 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdCS-00018z-UN
	for lore@lore.pengutronix.de; Thu, 19 Aug 2021 10:14:56 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdCO-0007yX-Bq
	for lore@pengutronix.de; Thu, 19 Aug 2021 10:14:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=KRpTrZUmZl/Lex1NdWZRdqq9GNJiboXdzplQp6KsHjo=; b=AEZvILHoSXWkkS
	T1TbFGwA5O42ce8gargoqDUY5oPi5GMvx38BRLTUZCRRsGF66ajDIIEn7Lsy7EgGFzm1vpq/TPT58
	sEBmqciv6JLDl+TmIVJ9MQi5KH9jrWkGkhencGSW4CZ5JfycKsQm+0kt88Bh8ptl6jYDpBobx5y+r
	b6jPpGDw5Uhuq1MaFTs8Y9mP9TwucHcJw5xBhtRZZxufUTpBUZdsJRFoQomUhJlfsK4r7Ku1T0dCz
	RNwbsdJNZd/X/ENvh4l0hJR0t5uPskxe0kv+auuvFE8Npl5YK4WPv32sWDJwdqyBUF8wCn1dn2TjO
	msOzFwgCYGQC+D++YGiw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGdAk-007fbS-UP; Thu, 19 Aug 2021 08:13:11 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGdAW-007fWO-Tb
 for barebox@lists.infradead.org; Thu, 19 Aug 2021 08:12:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAS-0007me-Oc; Thu, 19 Aug 2021 10:12:52 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAR-0000zn-TR; Thu, 19 Aug 2021 10:12:51 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAR-003364-Sf; Thu, 19 Aug 2021 10:12:51 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Thu, 19 Aug 2021 10:12:50 +0200
Message-Id: <20210819081251.726840-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819081251.726840-1-m.tretter@pengutronix.de>
References: <20210819081251.726840-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_011257_009860_4B91BA7B 
X-CRM114-Status: GOOD (  18.16  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/3] firmware: zynqmp-fpga: avoid additional buffer for
 size argument
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

