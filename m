Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SIPsM-00081K-1L
 for barebox@lists.infradead.org; Thu, 12 Apr 2012 19:40:16 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 12 Apr 2012 21:40:03 +0200
Message-Id: <1334259605-21907-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
References: <1334259605-21907-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] USB ehci: speed up initialization
To: barebox@lists.infradead.org

This is based on the following U-Boot commit:

commit 5f4b4f2fed3ab8590c8c06b78642f8c1467acacf
Author: Vincent Palatin <vpalatin@chromium.org>
Date:   Mon Dec 5 14:52:22 2011 -0800

    ehci: speed up initialization

    According to EHCI specification v1.0, the controller should stabilize
    the power on a port at most 20 ms after the port power bit transition.
    So, we put this setting in the virtual descriptor corresponding field,
    (bPwrOn2PwrGood = 10 => 10 x 2ms = 20ms), this saves about 500ms at each
    controller initialization/enumeration.

    Signed-off-by: Vincent Palatin <vpalatin@chromium.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/core/usb.c      |    2 +-
 drivers/usb/host/ehci-hcd.c |    2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 7039a2c..ba23e0e 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -934,8 +934,8 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 	for (i = 0; i < dev->maxchild; i++) {
 		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
 		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
-		wait_ms(hub->desc.bPwrOn2PwrGood * 2);
 	}
+	mdelay(20);
 }
 
 #define MAX_TRIES 5
diff --git a/drivers/usb/host/ehci-hcd.c b/drivers/usb/host/ehci-hcd.c
index 505d919..ae2b41e 100644
--- a/drivers/usb/host/ehci-hcd.c
+++ b/drivers/usb/host/ehci-hcd.c
@@ -64,7 +64,7 @@ static struct descriptor {
 		0x29,		/* bDescriptorType: hub descriptor */
 		2,		/* bNrPorts -- runtime modified */
 		0,		/* wHubCharacteristics */
-		0xff,		/* bPwrOn2PwrGood */
+		10,		/* bPwrOn2PwrGood */
 		0,		/* bHubCntrCurrent */
 		{},		/* Device removable */
 		{}		/* at most 7 ports! XXX */
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
