Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WDspB-0008Ss-Ij
 for barebox@lists.infradead.org; Thu, 13 Feb 2014 09:43:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 13 Feb 2014 10:42:50 +0100
Message-Id: <1392284573-22410-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] USB gadget: at91: return error when no udc is registered
To: barebox@lists.infradead.org

When no udc is registered it is clearly an error when usb_gadget_poll
is called. Let the upper layers know that.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/usb/gadget/at91_udc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/usb/gadget/at91_udc.c b/drivers/usb/gadget/at91_udc.c
index 6eeef7d..8ef1ad0 100644
--- a/drivers/usb/gadget/at91_udc.c
+++ b/drivers/usb/gadget/at91_udc.c
@@ -1327,7 +1327,7 @@ int usb_gadget_poll(void)
 	u32 value;
 
 	if (!udc->udp_baseaddr)
-		return 0;
+		return -ENODEV;
 
 	value = gpio_get_value(udc->board.vbus_pin);
 	value ^= udc->board.vbus_active_low;
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
