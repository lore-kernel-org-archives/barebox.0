Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPZW-0007R9-Df
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:01:59 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:01:29 +0100
Message-Id: <1322103690-32669-5-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103690-32669-1-git-send-email-robert.jarzmik@free.fr>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 4/5] usb/gadget: add USB serial connect and disconnect
To: barebox@lists.infradead.org
Cc: Robert Jarzmik <robert.jarzmik@atosorigin.com>

From: Robert Jarzmik <robert.jarzmik@atosorigin.com>

The serial gadget can only work if the serial function is
properly connected on USB trigger (ie. on SET_CONFIGURATION
or SET_INTERFACE USB message triggering set_alt() in
composite.c).

Make this connection and handle also the disconnection in
f_serial.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/usb/gadget/f_serial.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/gadget/f_serial.c b/drivers/usb/gadget/f_serial.c
index 5b7eb2c..b933105 100644
--- a/drivers/usb/gadget/f_serial.c
+++ b/drivers/usb/gadget/f_serial.c
@@ -16,7 +16,6 @@
 #include "gadget_chips.h"
 #include "u_serial.h"
 
-
 /*
  * This function packages a simple "generic serial" port with no real
  * control mechanisms, just raw data transfer over two bulk endpoints.
@@ -140,6 +139,7 @@ static int gser_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 				gser->hs.in, gser->fs.in);
 		gser->port.out_desc = ep_choose(cdev->gadget,
 				gser->hs.out, gser->fs.out);
+		gserial_connect(&gser->port, gser->port_num);
 	}
 
 	return 0;
@@ -147,7 +147,10 @@ static int gser_set_alt(struct usb_function *f, unsigned intf, unsigned alt)
 
 static void gser_disable(struct usb_function *f)
 {
+	struct f_gser		*gser = func_to_gser(f);
+
 	DBG(cdev, "generic ttyGS%d deactivated\n", gser->port_num);
+	gserial_disconnect(&gser->port);
 }
 
 /*-------------------------------------------------------------------------*/
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
