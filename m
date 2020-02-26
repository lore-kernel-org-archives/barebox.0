Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6uEo-00087J-IA
 for barebox@lists.infradead.org; Wed, 26 Feb 2020 10:48:24 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 26 Feb 2020 11:48:06 +0100
Message-Id: <20200226104806.9498-1-a.fatoum@pengutronix.de>
In-Reply-To: <20200225165731.12419-2-a.fatoum@pengutronix.de>
References: <20200225165731.12419-2-a.fatoum@pengutronix.de>
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
Subject: [PATCH] fixup! USB: MUSB: defer driver probes where necessary
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

The NULL assignment is a left over from when it was a global variable.
am_usbphy is local now and is just going out of scope, so need to NULL
it.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/usb/musb/phy-am335x.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/usb/musb/phy-am335x.c b/drivers/usb/musb/phy-am335x.c
index 7dda8caf2a3c..f2e870d7ee61 100644
--- a/drivers/usb/musb/phy-am335x.c
+++ b/drivers/usb/musb/phy-am335x.c
@@ -60,7 +60,6 @@ err_release:
 	release_region(iores);
 err_free:
 	free(am_usbphy);
-	am_usbphy = NULL;
 
 	return ret;
 };
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
