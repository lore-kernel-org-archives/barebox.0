Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDspG-0008T9-E2
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:43:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:42:52 +0100
Message-Id: <1392284573-22410-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
References: <1392284573-22410-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/4] USB gadget: fsl: Bail out if no udc exists
To: barebox@lists.infradead.org

When there is no udc registered bail out in usb_gadget_poll
instead of crashing the system.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/fsl_udc.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/usb/gadget/fsl_udc.c b/drivers/usb/gadget/fsl_udc.c
index 993c7eb..50bae78 100644
--- a/drivers/usb/gadget/fsl_udc.c
+++ b/drivers/usb/gadget/fsl_udc.c
@@ -1938,6 +1938,9 @@ int usb_gadget_poll(void)
 	u32 irq_src;
 	int status = 0;
 
+	if (!udc)
+		return -ENODEV;
+
 	/* Disable ISR for OTG host mode */
 	if (udc->stopped)
 		return -EIO;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
