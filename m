Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YCwv5-0002SL-Bu
 for barebox@lists.infradead.org; Sun, 18 Jan 2015 20:58:04 +0000
Received: from antimon.intern.lynxeye.de.Speedport_W_504V_Typ_A
 (p4FD7DEA0.dip0.t-ipconnect.de [79.215.222.160])
 by lynxeye.de (Postfix) with ESMTPA id F225026C2002
 for <barebox@lists.infradead.org>; Sun, 18 Jan 2015 21:57:09 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Sun, 18 Jan 2015 21:57:03 +0100
Message-Id: <1421614624-14656-2-git-send-email-dev@lynxeye.de>
In-Reply-To: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
References: <1421614624-14656-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH 2/3] usb: musb-dsps: select OFDEVICE
To: barebox@lists.infradead.org

Fixes:
In function `dsps_probe': undefined reference to `of_usb_get_dr_mode'

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 drivers/usb/musb/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/usb/musb/Kconfig b/drivers/usb/musb/Kconfig
index e0a1139bc0d0..b795f30275cf 100644
--- a/drivers/usb/musb/Kconfig
+++ b/drivers/usb/musb/Kconfig
@@ -5,6 +5,7 @@ if USB_MUSB
 
 config USB_MUSB_DSPS
 	tristate
+	select OFDEVICE
 
 config USB_MUSB_AM335X
 	tristate "AM335x USB support"
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
