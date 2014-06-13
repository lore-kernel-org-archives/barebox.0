Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x229.google.com ([2a00:1450:4010:c04::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WvML5-000098-4Q
 for barebox@lists.infradead.org; Fri, 13 Jun 2014 07:55:58 +0000
Received: by mail-lb0-f169.google.com with SMTP id l4so1354706lbv.0
 for <barebox@lists.infradead.org>; Fri, 13 Jun 2014 00:55:35 -0700 (PDT)
Received: from mars.ipredator.se (anon-32-73.vpn.ipredator.se. [46.246.32.73])
 by mx.google.com with ESMTPSA id
 fb6sm512523lac.40.2014.06.13.00.55.33
 for <barebox@lists.infradead.org>
 (version=TLSv1 cipher=RC4-SHA bits=128/128);
 Fri, 13 Jun 2014 00:55:34 -0700 (PDT)
From: Christoph Fritz <chf.fritz@googlemail.com>
Date: Fri, 13 Jun 2014 09:54:29 +0200
Message-Id: <1402646075-22747-13-git-send-email-chf.fritz@googlemail.com>
In-Reply-To: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
References: <1402646075-22747-1-git-send-email-chf.fritz@googlemail.com>
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
Subject: [PATCH 12/18] musb: only support USB_SPEED_HIGH devices
To: barebox@lists.infradead.org

This patch enables usb high-speed power. To support full-speed or low-speed
devices, this patch needs to be reverted.
---
 drivers/usb/musb/musb_core.c |    5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/drivers/usb/musb/musb_core.c b/drivers/usb/musb/musb_core.c
index 6dbf1cc..2847444 100644
--- a/drivers/usb/musb/musb_core.c
+++ b/drivers/usb/musb/musb_core.c
@@ -943,10 +943,7 @@ void musb_start(struct musb *musb)
 	musb_writeb(regs, MUSB_TESTMODE, 0);
 
 	/* put into basic highspeed mode and start session */
-	musb_writeb(regs, MUSB_POWER, MUSB_POWER_ISOUPDATE
-#ifdef CONFIG_USB_GADGET_DUALSPEED
-						| MUSB_POWER_HSENAB
-#endif
+	musb_writeb(regs, MUSB_POWER, MUSB_POWER_ISOUPDATE | MUSB_POWER_HSENAB
 						/* ENSUSPEND wedges tusb */
 						/* | MUSB_POWER_ENSUSPEND */
 						);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
