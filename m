Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr0-x241.google.com ([2a00:1450:400c:c0c::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cqnxK-0006yj-OY
 for barebox@lists.infradead.org; Wed, 22 Mar 2017 21:38:12 +0000
Received: by mail-wr0-x241.google.com with SMTP id 20so621423wrx.0
 for <barebox@lists.infradead.org>; Wed, 22 Mar 2017 14:37:49 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Thu, 23 Mar 2017 00:37:36 +0300
Message-Id: <20170322213736.24579-1-pmamonov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] usb: uhci-hcd: fix submit_int_msg() return value
To: barebox@lists.infradead.org
Cc: Peter Mamonov <pmamonov@gmail.com>

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 drivers/usb/host/uhci-hcd.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/host/uhci-hcd.c b/drivers/usb/host/uhci-hcd.c
index 04d167ee3..d32140026 100644
--- a/drivers/usb/host/uhci-hcd.c
+++ b/drivers/usb/host/uhci-hcd.c
@@ -579,6 +579,7 @@ static int submit_int_msg(struct usb_device *dev,
 	struct uhci_td *mytd;
 	void *_buffer;
 	dma_addr_t buffer_dma;
+	int ret = 0;
 
 	if (interval < 0 || interval >= 256)
 		return -1;
@@ -624,7 +625,7 @@ static int submit_int_msg(struct usb_device *dev,
 
 	usb_dotoggle(dev, usb_pipeendpoint(pipe), usb_pipeout(pipe));
 
-	handle_usb_interrupt(uhci);
+	ret = handle_usb_interrupt(uhci);
 
 	if (buffer) {
 		memcpy(buffer, _buffer, transfer_len);
@@ -633,7 +634,7 @@ static int submit_int_msg(struct usb_device *dev,
 
 	usb_check_int_chain(uhci);
 
-	return 0;
+	return ret;
 }
 /**********************************************************************
  * Low Level functions
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
