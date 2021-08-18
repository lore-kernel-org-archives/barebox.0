Delivery-date: Wed, 18 Aug 2021 15:37:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLl5-00073U-RW
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 15:37:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLl1-0006Z8-6i
	for lore@pengutronix.de; Wed, 18 Aug 2021 15:37:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=LPeOC9uIz1DSrRxLJkGjXHFuYUyjnagSS0oiW11/JM4=; b=HJhOdHCS06W7Nj
	e4gFEF8eBqg39q/rDCc3gCmzf87RssQWRp3ZQyIl42FSaF17EZYjH9dUHcxaZ+YZRaJGJxPXR1vfU
	4IqEkpAHOduViTTNAvIa/2tmFDswCL8g0QvIV6NyR5CZy+tO8OUOgnHdvXULwlZ64Qe7JRN9uaN6c
	4IsMhkXt/kPelJiMa32S7XqHwr9fepIF8Qxe32ayBl0jTlmbftL0jUoxF+iSPLK5wg6kHgqrtrRxL
	qRLXqgpoRwJYKRKeDz4/iIBFaU/zhcufsfQTrzb2C7c3GEzOnxoYBOvKtL2lL/bXU9r4u3JHVXbq+
	xytxGR5mDrouxu+X1RXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGLjN-005htS-DQ; Wed, 18 Aug 2021 13:35:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGLil-005hkF-Lb
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 13:35:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLik-0005z5-02
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:06 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0007wO-Dg
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-002RbF-DB
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Aug 2021 15:35:05 +0200
Message-Id: <20210818133505.582698-4-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818133505.582698-1-m.tretter@pengutronix.de>
References: <20210818133505.582698-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_063507_817047_096FA7C8 
X-CRM114-Status: GOOD (  14.23  )
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
Subject: [PATCH 3/3] firmware: zynqmp-fpga: do not use DMA coherent memory for
 bitstream
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Trying to do unaligned access of coherent memory on AArch64 will lead to
an abort. This can happen when the FPGA loader copies the bitstream to
the temporary buffer for the transfer to the FPGA.

Convert the driver to use regular memory for the temporary buffer to
prevent the issue.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 20 +++++++++++++-------
 1 file changed, 13 insertions(+), 7 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 667910479aa7..0a0e7e880849 100644
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
 
@@ -240,13 +240,19 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	 * memory. Allocate some extra space at the end of the buffer for the
 	 * bitstream size.
 	 */
-	buf_aligned = dma_alloc_coherent(body_length + sizeof(buf_size),
-					 DMA_ADDRESS_BROKEN);
+	buf_aligned = dma_alloc(body_length + sizeof(u32));
 	if (!buf_aligned) {
 		status = -ENOBUFS;
 		goto err_free;
 	}
 
+	addr = dma_map_single(&mgr->dev, buf_aligned,
+			      body_length + sizeof(u32), DMA_TO_DEVICE);
+	if (dma_mapping_error(&mgr->dev, addr)) {
+		status = -EFAULT;
+		goto err_free;
+	}
+
 	if (!(mgr->features & ZYNQMP_PM_FEATURE_BYTE_ORDER_IRREL) &&
 	    byte_order == XILINX_BYTE_ORDER_BIN)
 		copy_words_swapped((u32 *)buf_aligned, body,
@@ -254,8 +260,6 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	else
 		memcpy((u32 *)buf_aligned, body, body_length);
 
-	addr = (u64)buf_aligned;
-
 	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
 		buf_size = body_length;
 	} else {
@@ -263,11 +267,13 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		buf_size = addr + body_length;
 	}
 
-	status = mgr->eemi_ops->fpga_load(addr, buf_size, flags);
+	dma_sync_single_for_device(addr, body_length + sizeof(u32), DMA_TO_DEVICE);
+	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
+	dma_sync_single_for_cpu(addr, body_length + sizeof(u32), DMA_TO_DEVICE);
 	if (status < 0)
 		dev_err(&mgr->dev, "unable to load fpga\n");
 
-	dma_free_coherent(buf_aligned, 0, body_length + sizeof(buf_size));
+	dma_free(buf_aligned);
 
  err_free:
 	free(mgr->buf);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

