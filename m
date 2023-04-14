Delivery-date: Fri, 14 Apr 2023 16:54:25 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKoi-003OaY-RH
	for lore@lore.pengutronix.de; Fri, 14 Apr 2023 16:54:25 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pnKoi-00029q-JX
	for lore@pengutronix.de; Fri, 14 Apr 2023 16:54:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=j7viVyPqpj2y3sBkjo3gt3z2iQcUQctDpj+SgP5BkMQ=; b=sFUNyEY7zhnqcvF6XugSPIg0R4
	/hUM6ixqivO4/1xWrmiMYJTCseiJjWzjN11gnTt8Ovam4nP/Nq6mr+KZxuituI3e1AzcXdgIvX4If
	M10kv7qfeAcISN5B+Nlrax+JZ8e+Pn6Raa67GoubkUY8wHA1uVPnGyJ1suPgD26TF7hWvSYgUKnrj
	BeBfsuQSEDkYjXQNyHXXFmgo7yyRdPXaETMcSggO3fa7W1CJO4aV8xpnDFpyg8wPtBdz0rFYv7vVk
	z8xFC1ylXo6TQmhMrOfqqsmqhqriCSaay/c2m1VeAydDYD5wIOGyoPD+15zccmGwYpl3LVF+zSKrP
	MOcL03oQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnY-009sTR-10;
	Fri, 14 Apr 2023 14:53:12 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pnKnS-009sR0-1L
	for barebox@lists.infradead.org;
	Fri, 14 Apr 2023 14:53:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnR-0001rD-0M; Fri, 14 Apr 2023 16:53:05 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnQ-00BDox-By; Fri, 14 Apr 2023 16:53:04 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pnKnO-00FM0E-SN; Fri, 14 Apr 2023 16:53:02 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Michael Tretter <m.tretter@pengutronix.de>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 14 Apr 2023 16:52:58 +0200
Message-Id: <20230414145259.3644816-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
References: <20230414145259.3644816-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230414_075306_567359_6955EBB7 
X-CRM114-Status: GOOD (  13.77  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 4/5] firmware: zynqmp-fpga: pass physical device to DMA API
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The manager device is just a child of the physical device with no
DT node assigned. As such, it lacks all DMA settings that may be
set in the DT. Fix this by using the hardware device instead.

Cc: Michael Tretter <m.tretter@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 2544d015d6b7..fe3a7df6d30f 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -197,6 +197,7 @@ static void zynqmp_fpga_show_header(const struct device *dev,
 static int fpgamgr_program_finish(struct firmware_handler *fh)
 {
 	struct fpgamgr *mgr = container_of(fh, struct fpgamgr, fh);
+	struct device *hw_dev = mgr->dev.parent;
 	u32 *buf_aligned;
 	u32 buf_size;
 	u32 *body;
@@ -254,9 +255,9 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		memcpy((u32 *)buf_aligned, body, body_length);
 	buf_aligned[body_length / sizeof(*buf_aligned)] = body_length;
 
-	addr = dma_map_single(&mgr->dev, buf_aligned,
+	addr = dma_map_single(hw_dev, buf_aligned,
 			      body_length + sizeof(buf_size), DMA_TO_DEVICE);
-	if (dma_mapping_error(&mgr->dev, addr)) {
+	if (dma_mapping_error(hw_dev, addr)) {
 		status = -EFAULT;
 		goto err_free_dma;
 	}
@@ -267,7 +268,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		buf_size = addr + body_length;
 
 	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
-	dma_unmap_single(&mgr->dev, addr, body_length + sizeof(buf_size),
+	dma_unmap_single(hw_dev, addr, body_length + sizeof(buf_size),
 			 DMA_TO_DEVICE);
 	if (status < 0)
 		dev_err(&mgr->dev, "unable to load fpga\n");
-- 
2.39.2



