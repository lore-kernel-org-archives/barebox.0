Delivery-date: Thu, 19 Aug 2021 10:15:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdCZ-0001AD-5d
	for lore@lore.pengutronix.de; Thu, 19 Aug 2021 10:15:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mGdCW-000803-Hp
	for lore@pengutronix.de; Thu, 19 Aug 2021 10:15:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qmjU6diu/dMbDvFAKijOj+D8qQgdBIbraI0PVqFL5Kw=; b=gJHZynd+dLXVpq
	jNQhpJ2ZbEYAHFG7TxDVgFSUvwYBTdVX8OFdKqKcssvE6bkxdu+ZV+QgFoWJA6OS3RXSMQamaO/xF
	L5mxCxck32R7a1lVLEuZBFr5x1VU6+qV7IYUOZg895KV4kRl6xUeLap6eMiG5SDUd1qJ1cpPS2vSM
	4ZjyEbMEa+5sii7qetbSNvzH/DlwOAj7VYD0i//9uScxe0rFJ5OWe79o3BzHdeTh5Bnl0BRnSd/yF
	lhSi1UrDvOyoEH+uosrg5c1PoZptBYIwAoftc/e7McOtFBShX8GfOzR/4KbHDI0Nig7lkuccpKzs1
	pSkarAOurFhQGM6unzyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mGdAh-007fad-KP; Thu, 19 Aug 2021 08:13:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mGdAW-007fWC-Ui
 for barebox@lists.infradead.org; Thu, 19 Aug 2021 08:12:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAS-0007md-D4; Thu, 19 Aug 2021 10:12:52 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAR-0000zj-St; Thu, 19 Aug 2021 10:12:51 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>)
 id 1mGdAR-003361-SE; Thu, 19 Aug 2021 10:12:51 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Thu, 19 Aug 2021 10:12:49 +0200
Message-Id: <20210819081251.726840-2-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210819081251.726840-1-m.tretter@pengutronix.de>
References: <20210819081251.726840-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210819_011257_032239_95AD33D0 
X-CRM114-Status: GOOD (  12.08  )
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
Subject: [PATCH v2 1/3] firmware: zynqmp-fpga: initialize flags at function
 start
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); Unknown failure

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

