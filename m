Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UNHfn-00076J-D0
 for barebox@lists.infradead.org; Wed, 03 Apr 2013 06:59:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  3 Apr 2013 08:59:52 +0200
Message-Id: <1364972392-26149-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: tqma53: change uart to second uart
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

From: Steffen Trumtrar <s.trumtrar@pengutronix.de>

The second UART is used on the mba53 baseboard. The first UART is only
used on custom hardware. This patch changes the UART to the one used
on the freely available baseboard.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/boards/tqma53/board.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/tqma53/board.c b/arch/arm/boards/tqma53/board.c
index 03cb8ea..7c660f8 100644
--- a/arch/arm/boards/tqma53/board.c
+++ b/arch/arm/boards/tqma53/board.c
@@ -254,7 +254,7 @@ static int tqma53_console_init(void)
 {
 	mxc_iomux_v3_setup_multiple_pads(tqma53_pads, ARRAY_SIZE(tqma53_pads));
 	imx53_init_lowlevel(800);
-	imx53_add_uart0();
+	imx53_add_uart1();
 
 	return 0;
 }
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
