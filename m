Delivery-date: Mon, 01 Mar 2021 10:32:46 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGev0-0004ON-9v
	for lore@lore.pengutronix.de; Mon, 01 Mar 2021 10:32:46 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGeuw-0006KQ-JE
	for lore@pengutronix.de; Mon, 01 Mar 2021 10:32:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:References:In-Reply-To:Message-Id:Date:Subject:To:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LbWRGX0edO7oipZO7ThleG0Yl+kXXjgOWqueZ1ljHJ0=; b=JGH80lL4Wi4LbkzA9Ek4cxKbCZ
	qyIuVQ+CFWFDaRIGtH/6HYpW8cs/r1/e6Tnpay351UgcIgJZbW6+CSvC8wI9Rb/Ha409zCyVuFOh8
	3eP97incNzQDzefLQzCVGAMOH9et0t29IIN9/G3/CrJW09DpuGIALCp2BCHGXuuQ/2A5hxmXsvIo6
	zW3q6/6lzSbXWX3Eejl132ZnqU7fy9OZAKCAqh/csG6pC8pglHIVim+lC/Q47sqr9JVEGtj9w4rg+
	u4gOSzP6jzEnCSIme1TL0CbhuVDPgyBeodExUByybdWHG20PLCzbxTEub+gnr2UJXsHGF2r9hWePx
	6c75rWRQ==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGetV-0005NJ-O3; Mon, 01 Mar 2021 09:31:13 +0000
Received: from mib.mailinblack.com ([137.74.84.110])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGetR-0005MR-CJ
 for barebox@lists.infradead.org; Mon, 01 Mar 2021 09:31:10 +0000
Received: from localhost (localhost [127.0.0.1])
 by mib.mailinblack.com (Postfix) with ESMTP id 540B01A2F56
 for <barebox@lists.infradead.org>; Mon,  1 Mar 2021 09:31:07 +0000 (UTC)
Received: from mib.mailinblack.com (localhost [127.0.0.1])
 by mib.mailinblack.com with SMTP (Mib Daemon ) id KLQDU0R3;
 Mon, 01 Mar 2021 09:31:07 +0000 (UTC)
Received: from zimbra2.kalray.eu (zimbra2.kalray.eu [92.103.151.219])
 by mib.mailinblack.com (Postfix) with ESMTPS id 2C7DD1A2F52;
 Mon,  1 Mar 2021 09:31:07 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id 01E7927E0842;
 Mon,  1 Mar 2021 10:31:07 +0100 (CET)
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10032)
 with ESMTP id B4rQYDOPm2ab; Mon,  1 Mar 2021 10:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
 by zimbra2.kalray.eu (Postfix) with ESMTP id AC9E227E0840;
 Mon,  1 Mar 2021 10:31:06 +0100 (CET)
DKIM-Filter: OpenDKIM Filter v2.10.3 zimbra2.kalray.eu AC9E227E0840
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kalray.eu;
 s=32AE1B44-9502-11E5-BA35-3734643DEF29; t=1614591066;
 bh=8rlsMJbzUzhL1SgmgENec1cGrHbxbvRcjAKPeDGsxVc=;
 h=From:To:Date:Message-Id;
 b=IhZwqI4IEWoLgnFUokcdVR07WnVx5iJEyQuDY0iBVXUDJ5beCQjb9TRJqpAWhKFGp
 aXx2UX7kXcSI91tfXe6lO3O6jhVPKiVDM7Jmf98vkUjTXEoN2m6MOSCFKiTQOlRjkK
 n46zoIkUgOx1QRcCoBMwSl7g2WcN6M/FT5GZcZ1w=
X-Virus-Scanned: amavisd-new at zimbra2.kalray.eu
Received: from zimbra2.kalray.eu ([127.0.0.1])
 by localhost (zimbra2.kalray.eu [127.0.0.1]) (amavisd-new, port 10026)
 with ESMTP id s9n_JmTNIVmE; Mon,  1 Mar 2021 10:31:06 +0100 (CET)
Received: from tellis.lin.mbt.kalray.eu (unknown [192.168.36.206])
 by zimbra2.kalray.eu (Postfix) with ESMTPSA id 9097127E083D;
 Mon,  1 Mar 2021 10:31:06 +0100 (CET)
From: Jules Maselbas <jmaselbas@kalray.eu>
To: barebox@lists.infradead.org
Date: Mon,  1 Mar 2021 10:30:40 +0100
Message-Id: <20210301093040.1721-2-jmaselbas@kalray.eu>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20210301093040.1721-1-jmaselbas@kalray.eu>
References: <20210215141843.27629-2-jmaselbas@kalray.eu>
 <20210301093040.1721-1-jmaselbas@kalray.eu>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210301_043109_536176_92CCA38E 
X-CRM114-Status: UNSURE (   8.00  )
X-CRM114-Notice: Please train this message.
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Jules Maselbas <jmaselbas@kalray.eu>,
 Ahmad Fatoum <a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] fixup! usb: gadget: dfu: Wrap fs operation in workqueue
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Simplify the state handle, the idle state will only be entered
from do_close.

Signed-off-by: Jules Maselbas <jmaselbas@kalray.eu>
---
 drivers/usb/gadget/dfu.c | 7 +++----
 1 file changed, 3 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/gadget/dfu.c b/drivers/usb/gadget/dfu.c
index 3234f25b3..1dc659953 100644
--- a/drivers/usb/gadget/dfu.c
+++ b/drivers/usb/gadget/dfu.c
@@ -320,6 +320,8 @@ static void dfu_do_close(struct dfu_work *dw)
 
 	if (!stat(DFU_TEMPFILE, &s))
 		unlink(DFU_TEMPFILE);
+
+	dw->dfu->dfu_state = DFU_STATE_dfuIDLE;
 }
 
 static void dfu_do_copy(struct dfu_work *dw)
@@ -756,11 +758,8 @@ static int dfu_setup(struct usb_function *f, const struct usb_ctrlrequest *ctrl)
 	case DFU_STATE_dfuMANIFEST_SYNC:
 		switch (ctrl->bRequest) {
 		case USB_REQ_DFU_GETSTATUS:
+			dfu->dfu_state = DFU_STATE_dfuMANIFEST;
 			value = dfu_status(f, ctrl);
-			if (dfu_file_entry->flags & FILE_LIST_FLAG_SAFE)
-				dfu->dfu_state = DFU_STATE_dfuMANIFEST;
-			else
-				dfu->dfu_state = DFU_STATE_dfuIDLE;
 			value = min(value, w_length);
 			break;
 		case USB_REQ_DFU_GETSTATE:
-- 
2.17.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

