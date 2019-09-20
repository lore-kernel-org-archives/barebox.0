Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iBDoM-0001P6-Bo
 for barebox@lists.infradead.org; Fri, 20 Sep 2019 07:58:39 +0000
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 20 Sep 2019 09:58:13 +0200
Message-Id: <20190920075813.22471-4-ahmad@a3f.at>
In-Reply-To: <20190920075813.22471-1-ahmad@a3f.at>
References: <20190920075813.22471-1-ahmad@a3f.at>
MIME-Version: 1.0
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
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v1 4/4] USB: gadget: ACM: don't announce V.25ter support
To: barebox@lists.infradead.org
Cc: bst@pengutronix.de

barebox currently announces support for ITU V.25ter AT commands, but
doesn't handle them specially when they arrive. Instead they are passed
as is to the sole barebox input console, where it may interfere with
valid user input.
This is especially annoying as ModemManager probes ttyACM devices that
announce their AT command support. So even when not using the ttyACM
device at all, the other UART ports are affected.

Fix this by ceasing to announce USB_CDC_ACM_PROTO_AT_V25TER as function
protocol. After applying this patch, I can't see any spurious AT or ~x~
symbols on the console anymore.

Cc: <bst@pengutronix.de>
Cc: <jlu@pengutronix.de>
Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/usb/gadget/f_acm.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/gadget/f_acm.c b/drivers/usb/gadget/f_acm.c
index cba59b15859b..42a2b03ad291 100644
--- a/drivers/usb/gadget/f_acm.c
+++ b/drivers/usb/gadget/f_acm.c
@@ -104,7 +104,7 @@ acm_iad_descriptor = {
 	.bInterfaceCount = 	2,	// control + data
 	.bFunctionClass =	USB_CLASS_COMM,
 	.bFunctionSubClass =	USB_CDC_SUBCLASS_ACM,
-	.bFunctionProtocol =	USB_CDC_ACM_PROTO_AT_V25TER,
+	.bFunctionProtocol =	USB_CDC_PROTO_NONE,
 	/* .iFunction =		DYNAMIC */
 };
 
@@ -116,7 +116,7 @@ static struct usb_interface_descriptor acm_control_interface_desc = {
 	.bNumEndpoints =	1,
 	.bInterfaceClass =	USB_CLASS_COMM,
 	.bInterfaceSubClass =	USB_CDC_SUBCLASS_ACM,
-	.bInterfaceProtocol =	USB_CDC_ACM_PROTO_AT_V25TER,
+	.bInterfaceProtocol =	USB_CDC_PROTO_NONE,
 	/* .iInterface = DYNAMIC */
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
