Delivery-date: Thu, 19 Aug 2021 10:14:59 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdCV-00019Q-28
	for lore@lore.pengutronix.de; Thu, 19 Aug 2021 10:14:59 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdCP-0007yl-PJ
	for lore@pengutronix.de; Thu, 19 Aug 2021 10:14:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GJl9L2HfxXF8ZvO9ODhRPioP5QrNVgltI4Q8r7Sbbj8=; b=EqYekvgjLdJTvU
	BPLvt6JSgDB4ewOqrtn6u1s4dnCeeZfomOixR9yPwUb+baQ8VeAcGUxmKJAEipQfMKzCQaJCBqFKY
	bkpzemhbmrleeLlP/vLN6ALRcTC3eJgCiENCF/kOFbP5kv5gNBf5d3wdt537zGAxCV+peIpgHBYRm
	g9IDT+JmvIwXFy0cfTB5rMylFejgLp/CURCuhqco5AQQMeNxmC2aJSNsh6gTfwksc5IhgLHuG9Vq4
	hBXzUAKr48GrElYi0rLCt9frBd1ekg7ZtbOZ2b2waFXieL0SjXrmHA6ODYAd9u4JJnmC0GzTzZ5R1
	VCpWViNYiXlXfnDOM85w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGdAf-007fa6-4O; Thu, 19 Aug 2021 08:13:05 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGdAW-007fWN-Sq
 for barebox@lists.infradead.org; Thu, 19 Aug 2021 08:12:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAS-0007mf-OF; Thu, 19 Aug 2021 10:12:52 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAR-0000zp-Ts; Thu, 19 Aug 2021 10:12:51 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAR-003367-T6; Thu, 19 Aug 2021 10:12:51 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Thu, 19 Aug 2021 10:12:51 +0200
Message-Id: <20210819081251.726840-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819081251.726840-1-m.tretter@pengutronix.de>
References: <20210819081251.726840-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_011256_976519_C66B4AD0 
X-CRM114-Status: GOOD (  16.72  )
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
Subject: [PATCH v2 3/3] firmware: zynqmp-fpga: do not use DMA coherent memory
 for bitstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Trying to do unaligned access of coherent memory on AArch64 will lead to
an abort. This can happen when the FPGA loader copies the bitstream to
the temporary buffer for the transfer to the FPGA.

Convert the driver to use regular memory for the temporary buffer to
prevent the issue.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
Changelog:

v2:
- drop dma_sync_single_for_device and use dma_map_single to flush
- fix missing free of DMA memory in case of mapping error
- use size_of(buf_size) to clarify extra space in buffer
---
 drivers/firmware/zynqmp-fpga.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 667910479aa7..b76607f7eec1 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -203,7 +203,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	size_t body_length;
 	int header_length = 0;
 	enum xilinx_byte_order byte_order;
-	u64 addr;
+	dma_addr_t addr;
 	int status = 0;
 	u8 flags = ZYNQMP_FPGA_BIT_ONLY_BIN;
 
@@ -237,11 +237,10 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	/*
 	 * The PMU FW variants without the ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED
 	 * feature expect a pointer to the bitstream size, which is stored in
-	 * memory. Allocate some extra space at the end of the buffer for the
+	 * memory. Allocate extra space at the end of the buffer for the
 	 * bitstream size.
 	 */
-	buf_aligned = dma_alloc_coherent(body_length + sizeof(buf_size),
-					 DMA_ADDRESS_BROKEN);
+	buf_aligned = dma_alloc(body_length + sizeof(buf_size));
 	if (!buf_aligned) {
 		status = -ENOBUFS;
 		goto err_free;
@@ -254,8 +253,6 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	else
 		memcpy((u32 *)buf_aligned, body, body_length);
 
-	addr = (u64)buf_aligned;
-
 	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
 		buf_size = body_length;
 	} else {
@@ -263,11 +260,21 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		buf_size = addr + body_length;
 	}
 
-	status = mgr->eemi_ops->fpga_load(addr, buf_size, flags);
+	addr = dma_map_single(&mgr->dev, buf_aligned,
+			      body_length + sizeof(buf_size), DMA_TO_DEVICE);
+	if (dma_mapping_error(&mgr->dev, addr)) {
+		status = -EFAULT;
+		goto err_free_dma;
+	}
+
+	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
+	dma_unmap_single(&mgr->dev, addr, body_length + sizeof(buf_size),
+			 DMA_TO_DEVICE);
 	if (status < 0)
 		dev_err(&mgr->dev, "unable to load fpga\n");
 
-	dma_free_coherent(buf_aligned, 0, body_length + sizeof(buf_size));
+err_free_dma:
+	dma_free(buf_aligned);
 
  err_free:
 	free(mgr->buf);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

