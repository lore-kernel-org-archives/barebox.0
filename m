Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T73to-0001sj-W2
 for barebox@lists.infradead.org; Thu, 30 Aug 2012 12:31:06 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Thu, 30 Aug 2012 14:30:50 +0200
Message-Id: <1346329850-3866-4-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346329850-3866-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 3/3] usb: use ep-specific pwrgood delay
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

In usb_hub_configure the hub is asked for its descriptor and among other things
its bPwrOn2PwrGood time. In the actual hub_power_on function this information
was not used and a hardcoded value was used instead. For some hubs this delay
is to short. So, use the delay the hub wants.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/usb/core/usb.c |    3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/usb/core/usb.c b/drivers/usb/core/usb.c
index 81ae9f1..48bc121 100644
--- a/drivers/usb/core/usb.c
+++ b/drivers/usb/core/usb.c
@@ -948,7 +948,8 @@ static void usb_hub_power_on(struct usb_hub_device *hub)
 		usb_set_port_feature(dev, i + 1, USB_PORT_FEAT_POWER);
 		USB_HUB_PRINTF("port %d returns %lX\n", i + 1, dev->status);
 	}
-	mdelay(20);
+	/* power on is encoded in 2ms increments -> times 2 for the actual delay */
+	mdelay(hub->desc.bPwrOn2PwrGood*2);
 }
 
 #define MAX_TRIES 5
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
