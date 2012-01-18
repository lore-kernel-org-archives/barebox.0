Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RnbxI-00032x-GO
 for barebox@lists.infradead.org; Wed, 18 Jan 2012 20:18:02 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Wed, 18 Jan 2012 21:17:39 +0100
Message-Id: <1326917859-25058-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH] usb/gadget: fix poller NPE in early polling
To: barebox@lists.infradead.org

The timings of the poller calling have changed, digging out
a latent bug in pxa27x udc controller.
The polling routine is called before the probe function is
called, and the driver internal are not initialized at that
time. This triggers a NULL pointer exception.

Fix it by adding an extra check.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/usb/gadget/pxa27x_udc.c |    5 ++++-
 1 files changed, 4 insertions(+), 1 deletions(-)

diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index d0dbee9..bde9e74 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1508,7 +1508,10 @@ static struct driver_d udc_driver = {
 
 static int pxa27x_udc_poller(struct poller_struct *poller)
 {
-	return usb_gadget_poll();
+	if (the_controller)
+		return usb_gadget_poll();
+	else
+		return 0;
 }
 static struct poller_struct poller = {
 	.func		= pxa27x_udc_poller
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
