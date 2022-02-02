Delivery-date: Wed, 02 Feb 2022 11:12:25 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFCcj-003bPm-ES
	for lore@lore.pengutronix.de; Wed, 02 Feb 2022 11:12:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFCch-00051R-PO
	for lore@pengutronix.de; Wed, 02 Feb 2022 11:12:24 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=kHCyic+q4DmYbnnCnOOVntfuz7T2xM3IxXiq8DAtfwI=; b=XqnYXYTHN4xrZ7
	lzkT0HHWCuSq5OWS+4JCrbWfn1w3vm5Mt0avKemF6ml4ndOWOTwBHhDjyya0QrOuo0lciTX6U1zlp
	hY/QlOoRHdpM8GA9bfLs1rWlV6rq5NqjtcE6M9cGGm+v3ydvPofCa3VVN8t1Iw5CeJ3ngUMwlXgad
	FNSfETNgMrVgUHXjRbBDXxpwkUKNUxXevm6LtEDR2hyQfal4bGVY8/1Mdi45+PT7d7bwzUqswG3h3
	Nf3ReMaqSBDs92k8Wt3oaiSN9LuQWREWxMvNuonvC/x8i7GRJhy1gdbV+7A5AYgfUQiLQ5bbVGEWH
	DWfZbTm+NyT/2R4gae5w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFCbP-00Es1i-Uf; Wed, 02 Feb 2022 10:11:04 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFCbL-00Es0Z-Ab
 for barebox@lists.infradead.org; Wed, 02 Feb 2022 10:11:00 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1nFCbH-0004r7-W1; Wed, 02 Feb 2022 11:10:56 +0100
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1nFCbH-00E0oc-WA; Wed, 02 Feb 2022 11:10:55 +0100
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <mtr@pengutronix.de>)
 id 1nFCbG-00GSua-Ed; Wed, 02 Feb 2022 11:10:54 +0100
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: m.tretter@pengutronix.de
Date: Wed,  2 Feb 2022 11:10:54 +0100
Message-Id: <20220202101054.3924339-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220202_021059_394232_5498AC6A 
X-CRM114-Status: GOOD (  14.41  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] firmware: zynqmp-fpga: fix use of uninitialized addr
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The bitstream loading API of the firmware is a bit clunky, as the driver
needs to either pass the size of the bitstream or a pointer to the size
of the bitstream.

Commit 2f29ee311f1d ("firmware: zynqmp-fpga: do not use DMA coherent
memory for bitstream") broke the loading by address, as the pointer to
the bitstream size was set using the uninitialized DMA address.

Fix it by determining the argument that is passed to the firmware after
the bitstream has been mapped and always write the size of the bitstream
at the end of the passed buffer.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 13 ++++++-------
 1 file changed, 6 insertions(+), 7 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index a76600d4c96d..63d7398fd4e8 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -252,13 +252,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 				   body_length / sizeof(u32));
 	else
 		memcpy((u32 *)buf_aligned, body, body_length);
-
-	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) {
-		buf_size = body_length;
-	} else {
-		buf_aligned[body_length / sizeof(*buf_aligned)] = body_length;
-		buf_size = addr + body_length;
-	}
+	buf_aligned[body_length / sizeof(*buf_aligned)] = body_length;
 
 	addr = dma_map_single(&mgr->dev, buf_aligned,
 			      body_length + sizeof(buf_size), DMA_TO_DEVICE);
@@ -267,6 +261,11 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 		goto err_free_dma;
 	}
 
+	if (mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED)
+		buf_size = body_length;
+	else
+		buf_size = addr + body_length;
+
 	status = mgr->eemi_ops->fpga_load((u64)addr, buf_size, flags);
 	dma_unmap_single(&mgr->dev, addr, body_length + sizeof(buf_size),
 			 DMA_TO_DEVICE);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

