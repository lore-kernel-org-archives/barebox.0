Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZUt21-0002o7-6x
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 08:59:37 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZUt1e-0001f3-GK
 for barebox@lists.infradead.org; Thu, 27 Aug 2015 10:59:14 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu, 27 Aug 2015 10:59:14 +0200
Message-Id: <1440665954-2994-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH] ARM: imx53: vincell: guard board initcall
To: barebox@lists.infradead.org

Make sure that the initcall only executes on the expected board.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
Sascha, please apply to master. This breaks other boards.
---
 arch/arm/boards/guf-vincell/board.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/boards/guf-vincell/board.c b/arch/arm/boards/guf-vincell/board.c
index d27d9e4ddf05..ad47ee25580b 100644
--- a/arch/arm/boards/guf-vincell/board.c
+++ b/arch/arm/boards/guf-vincell/board.c
@@ -40,6 +40,9 @@ static void vincell_fec_reset(void)
 
 static int vincell_devices_init(void)
 {
+	if (!of_machine_is_compatible("guf,imx53-vincell"))
+		return 0;
+
 	writel(0, MX53_M4IF_BASE_ADDR + 0xc);
 
 	clk_set_rate(clk_lookup("emi_slow_podf"), 133333334);
-- 
2.5.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
