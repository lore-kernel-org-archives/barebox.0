Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1avPfz-0003B0-3c
 for barebox@lists.infradead.org; Wed, 27 Apr 2016 13:38:48 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Apr 2016 15:38:24 +0200
Message-Id: <1461764304-29994-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: GuF Vincell: run code for LT variant aswell
To: Barebox List <barebox@lists.infradead.org>

The LT variant has a different compatible, yet we want to run the
code on this variant aswell. Add the corresponding test.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/guf-vincell/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index ad47ee2..43c1952 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -40,7 +40,8 @@ static void vincell_fec_reset(void)
 
 static int vincell_devices_init(void)
 {
-	if (!of_machine_is_compatible("guf,imx53-vincell"))
+	if (!of_machine_is_compatible("guf,imx53-vincell") &&
+	    !of_machine_is_compatible("guf,imx53-vincell-lt"))
 		return 0;
 
 	writel(0, MX53_M4IF_BASE_ADDR + 0xc);
-- 
2.8.0.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
