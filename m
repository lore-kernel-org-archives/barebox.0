Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i9qME-0006uH-LP
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 12:43:57 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0008Pp-G8
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
Received: from str by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <str@pengutronix.de>) id 1i9qM8-0004Eh-6h
 for barebox@lists.infradead.org; Mon, 16 Sep 2019 14:43:48 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 16 Sep 2019 14:43:42 +0200
Message-Id: <20190916124345.24244-3-s.trumtrar@pengutronix.de>
In-Reply-To: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
References: <20190916124345.24244-1-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/6] usb/ch9.h: add USB 3.1 isoc endpoint define
To: Barebox List <barebox@lists.infradead.org>

Add a new define for USB 3.1 endpoints

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 include/usb/ch9.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/usb/ch9.h b/include/usb/ch9.h
index 89d83e0d09be..85f3e64cac2b 100644
--- a/include/usb/ch9.h
+++ b/include/usb/ch9.h
@@ -234,6 +234,8 @@ struct usb_ctrlrequest {
 #define USB_DT_PIPE_USAGE		0x24
 /* From the USB 3.0 spec */
 #define	USB_DT_SS_ENDPOINT_COMP		0x30
+/* From the USB 3.1 spec */
+#define	USB_DT_SSP_ISOC_ENDPOINT_COMP	0x31
 
 /* Conventional codes for class-specific descriptors.  The convention is
  * defined in the USB "Common Class" Spec (3.11).  Individual class specs
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
