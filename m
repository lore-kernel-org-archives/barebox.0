Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1Rnq5p-0007GP-AX
 for barebox@lists.infradead.org; Thu, 19 Jan 2012 11:23:47 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 19 Jan 2012 12:23:27 +0100
Message-Id: <1326972208-438-1-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <20120118225638.GJ25622@game.jcrosoft.org>
References: <20120118225638.GJ25622@game.jcrosoft.org>
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
Subject: [PATCH V2] usb/gadget: fix poller NPE in early polling
To: barebox@lists.infradead.org, plagnioj@jcrosoft.com

The timings of the poller calling have changed, digging out
a latent bug in pxa27x udc controller.
The polling routine is called before the probe function is
called, and the driver internal are not initialized at that
time. This triggers a NULL pointer exception.

Fix it by moving poller registration after driver probe.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>

---
Since V1: Review by Jean-Christophe
---
 drivers/usb/gadget/pxa27x_udc.c |   19 ++++++++++---------
 1 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/usb/gadget/pxa27x_udc.c b/drivers/usb/gadget/pxa27x_udc.c
index d0dbee9..10483c5 100644
--- a/drivers/usb/gadget/pxa27x_udc.c
+++ b/drivers/usb/gadget/pxa27x_udc.c
@@ -1473,6 +1473,14 @@ static struct pxa_udc memory = {
 	}
 };
 
+static int pxa27x_udc_poller(struct poller_struct *poller)
+{
+		return usb_gadget_poll();
+}
+static struct poller_struct poller = {
+	.func		= pxa27x_udc_poller
+};
+
 static int __init pxa_udc_probe(struct device_d *dev)
 {
 	struct pxa_udc *udc = &memory;
@@ -1496,6 +1504,8 @@ static int __init pxa_udc_probe(struct device_d *dev)
 	the_controller = udc;
 	udc_init_data(udc);
 	pxa_eps_setup(udc);
+	poller_register(&poller);
+
 	return 0;
 }
 
@@ -1506,18 +1516,9 @@ static struct driver_d udc_driver = {
 	.probe		= pxa_udc_probe,
 };
 
-static int pxa27x_udc_poller(struct poller_struct *poller)
-{
-	return usb_gadget_poll();
-}
-static struct poller_struct poller = {
-	.func		= pxa27x_udc_poller
-};
-
 static int __init pxa27x_udc_init(void)
 {
 	register_driver(&udc_driver);
-	poller_register(&poller);
 	return 0;
 }
 
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
