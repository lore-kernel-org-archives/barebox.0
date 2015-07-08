Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZCq5l-00044b-LQ
 for barebox@lists.infradead.org; Wed, 08 Jul 2015 14:12:54 +0000
From: Enrico Jorns <ejo@pengutronix.de>
Date: Wed,  8 Jul 2015 16:12:20 +0200
Message-Id: <1436364740-15559-1-git-send-email-ejo@pengutronix.de>
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
Subject: [PATCH] ARM/Vincell LT: Fix nand probe,
 move vincell_devices_init to coredevice_initcall
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

If vincell_devices_init initcall comes after imx_nand initcall,
device probing fails when booting from usb!

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
---

Based on: [PATCH 2/2] ARM: vincell: move to DT probing

 arch/arm/boards/guf-vincell/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index a164c93..d27d9e4 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -53,4 +53,4 @@ static int vincell_devices_init(void)
 	return 0;
 }
 
-device_initcall(vincell_devices_init);
+coredevice_initcall(vincell_devices_init);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
