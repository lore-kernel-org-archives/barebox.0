Delivery-date: Wed, 18 Aug 2021 15:37:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLl6-00073t-PY
	for lore@lore.pengutronix.de; Wed, 18 Aug 2021 15:37:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGLl2-0006ZL-Mi
	for lore@pengutronix.de; Wed, 18 Aug 2021 15:37:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmjU6diu/dMbDvFAKijOj+D8qQgdBIbraI0PVqFL5Kw=; b=Q73rTkJyNmqzUV
	CGThKAolrxCjUGbrE1TKX34966UhmfFQMhKcjsIT/dhyXootRuEImHfXNJXEhqSos0a4QXvhawQjW
	jwqqjfgBbDaRUL9T4ALJMxk8Sk8lzwtATyg39UsoqyvYTlUPlH+46JvlWM2QksYQj/cC3eM/+wyp+
	+UNzy3J/DahJiQExj4EP+3jhzpulP1PFUhBMlt/Il+/H/cSV2kH9MYO4Z8YH77frSGhjwAAdguqvo
	Nm6MEUC5uVQNoMHe7yDfUm+sh2BswNkAoN+ONkw4cC0ZF1wYIlq+DZXSIQEMqWFniGnYcbOFhjFab
	O8FOoY+/pRoit08B87xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGLjF-005hr9-FP; Wed, 18 Aug 2021 13:35:37 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGLil-005hkD-LX
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 13:35:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0005z3-TL
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-0007wI-Cu
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1mGLij-002Rb9-CN
 for barebox@lists.infradead.org; Wed, 18 Aug 2021 15:35:05 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Wed, 18 Aug 2021 15:35:03 +0200
Message-Id: <20210818133505.582698-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210818133505.582698-1-m.tretter@pengutronix.de>
References: <20210818133505.582698-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210818_063507_802016_B8EE2B90 
X-CRM114-Status: GOOD (  11.38  )
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
Subject: [PATCH 1/3] firmware: zynqmp-fpga: initialize flags at function start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The ZYNQMP_FPGA_BIT_ONLY_BIN flag is always set when programming the
FPGA. Simplify the code by initializing the flags with
ZYNQMP_FPGA_BIT_ONLY_BIN already set.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/firmware/zynqmp-fpga.c | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/firmware/zynqmp-fpga.c b/drivers/firmware/zynqmp-fpga.c
index 0fc229bfd3dd..736d1950fa5e 100644
--- a/drivers/firmware/zynqmp-fpga.c
+++ b/drivers/firmware/zynqmp-fpga.c
@@ -205,7 +205,7 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 	enum xilinx_byte_order byte_order;
 	u64 addr;
 	int status = 0;
-	u8 flags = 0;
+	u8 flags = ZYNQMP_FPGA_BIT_ONLY_BIN;
 
 	if (!mgr->buf) {
 		status = -ENOBUFS;
@@ -259,9 +259,6 @@ static int fpgamgr_program_finish(struct firmware_handler *fh)
 
 	addr = (u64)buf_aligned;
 
-	/* we do not provide a header */
-	flags |= ZYNQMP_FPGA_BIT_ONLY_BIN;
-
 	if (!(mgr->features & ZYNQMP_PM_FEATURE_SIZE_NOT_NEEDED) && buf_size) {
 		status = mgr->eemi_ops->fpga_load(addr,
 				(u32)(uintptr_t)buf_size,
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

