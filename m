Delivery-date: Mon, 19 Feb 2024 14:39:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rd-00Ea0w-2d
	for lore@lore.pengutronix.de;
	Mon, 19 Feb 2024 14:39:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rc3rc-0005jR-Gj
	for lore@pengutronix.de; Mon, 19 Feb 2024 14:39:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=xPcI0WQPkzqIGIZN6tPyVyCY03cLlZvV8bJQRoe5n50=; b=ow+BRl4LdK0F1SzK9w7XCgv73P
	tIbwrJT5Aanyr6Q2vndVmrIBprUVa01R0A7c21IB7o4UwU3qfnv+4x8vDhBrZIciIjFfMEVSFWzGw
	jcc6pYT0FYZG2IjCdWYBqW46BQ5qMEydCRZqv3yHzh1BS5v/zE0F/MmPxCHrh7OXrRj6XDu8hflN3
	/iKwE+sklBzdweNa8JrEpzugf0zhZiNvsKXtdqoA+oKgpg/asC7oY78Hx9Yk6MJ94LKvVDQP5U+ed
	M1cwM0kTM+di0FRWWVlMs4y2NuwJOrBwOQO6k5Fruz0TT631jFHQRhKr5/bb32XSKnjC9iNuwlBOy
	gUIcMmuA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r8-0000000Afzk-1O8C;
	Mon, 19 Feb 2024 13:38:50 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rc3r2-0000000Afw1-2EFS
	for barebox@lists.infradead.org;
	Mon, 19 Feb 2024 13:38:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r1-000514-AU; Mon, 19 Feb 2024 14:38:43 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-001f3N-UK; Mon, 19 Feb 2024 14:38:42 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rc3r0-00GySQ-2a;
	Mon, 19 Feb 2024 14:38:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 19 Feb 2024 14:38:22 +0100
Message-Id: <20240219133835.3886399-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
References: <20240219133835.3886399-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240219_053844_636586_AF5EDEEE 
X-CRM114-Status: GOOD (  11.26  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/15] usb: xhci: add various debugging prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For debugging potential issues around the driver, add some debug
prints.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/host/xhci-ring.c |  8 ++++++++
 drivers/usb/host/xhci.c      | 16 +++++++++++++---
 2 files changed, 21 insertions(+), 3 deletions(-)

diff --git a/drivers/usb/host/xhci-ring.c b/drivers/usb/host/xhci-ring.c
index 547047305dd0..804384e0307f 100644
--- a/drivers/usb/host/xhci-ring.c
+++ b/drivers/usb/host/xhci-ring.c
@@ -461,6 +461,14 @@ union xhci_trb *xhci_wait_for_event(struct xhci_ctrl *ctrl, trb_type expected,
 			BUG_ON(GET_COMP_CODE(
 				le32_to_cpu(event->generic.field[2])) !=
 								COMP_SUCCESS);
+		else
+			dev_dbg(ctrl->dev, "Unexpected XHCI event TRB, skipping... "
+				"(%08x %08x %08x %08x)\n",
+				le32_to_cpu(event->generic.field[0]),
+				le32_to_cpu(event->generic.field[1]),
+				le32_to_cpu(event->generic.field[2]),
+				le32_to_cpu(event->generic.field[3]));
+
 		xhci_acknowledge_event(ctrl);
 	} while (!is_timeout_non_interruptible(start, timeout_ms * MSECOND));
 
diff --git a/drivers/usb/host/xhci.c b/drivers/usb/host/xhci.c
index f149e784524d..01817d9c79cd 100644
--- a/drivers/usb/host/xhci.c
+++ b/drivers/usb/host/xhci.c
@@ -151,6 +151,8 @@ static int xhci_start(struct xhci_ctrl *ctrl)
 	u32 temp;
 	int ret;
 
+	dev_dbg(ctrl->dev, "Starting the controller\n");
+
 	temp = xhci_readl(&hcor->or_usbcmd);
 	temp |= (CMD_RUN);
 	xhci_writel(&hcor->or_usbcmd, temp);
@@ -1088,8 +1090,10 @@ static int xhci_submit_root(struct usb_device *udev, unsigned long pipe,
 static int _xhci_submit_int_msg(struct usb_device *udev, unsigned long pipe,
 				void *buffer, int length, int interval)
 {
-	if (usb_pipetype(pipe) != PIPE_INTERRUPT)
+	if (usb_pipetype(pipe) != PIPE_INTERRUPT) {
+		dev_err(&udev->dev, "non-interrupt pipe (type=%lu)", usb_pipetype(pipe));
 		return -EINVAL;
+	}
 
 	/*
 	 * xHCI uses normal TRBs for both bulk and interrupt. When the
@@ -1112,8 +1116,10 @@ static int _xhci_submit_int_msg(struct usb_device *udev, unsigned long pipe,
 static int _xhci_submit_bulk_msg(struct usb_device *udev, unsigned long pipe,
 				 void *buffer, int length, int timeout_ms)
 {
-	if (usb_pipetype(pipe) != PIPE_BULK)
+	if (usb_pipetype(pipe) != PIPE_BULK) {
+		dev_err(&udev->dev, "non-bulk pipe (type=%lu)", usb_pipetype(pipe));
 		return -EINVAL;
+	}
 
 	return xhci_bulk_tx(udev, pipe, length, buffer, timeout_ms);
 }
@@ -1137,8 +1143,10 @@ static int _xhci_submit_control_msg(struct usb_device *udev, unsigned long pipe,
 	struct xhci_ctrl *ctrl = xhci_get_ctrl(udev);
 	int ret = 0;
 
-	if (usb_pipetype(pipe) != PIPE_CONTROL)
+	if (usb_pipetype(pipe) != PIPE_CONTROL) {
+		dev_err(&udev->dev, "non-control pipe (type=%lu)", usb_pipetype(pipe));
 		return -EINVAL;
+	}
 
 	if (usb_pipedevice(pipe) == ctrl->rootdev)
 		return xhci_submit_root(udev, pipe, buffer, setup);
@@ -1218,6 +1226,8 @@ static int xhci_lowlevel_stop(struct xhci_ctrl *ctrl)
 
 	xhci_reset(ctrl);
 
+	dev_dbg(ctrl->dev, "Disabling event ring interrupts\n");
+
 	temp = xhci_readl(&ctrl->hcor->or_usbsts);
 	xhci_writel(&ctrl->hcor->or_usbsts, temp & ~STS_EINT);
 	temp = xhci_readl(&ctrl->ir_set->irq_pending);
-- 
2.39.2



