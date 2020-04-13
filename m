Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jNttU-0005og-3d
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 07:52:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttS-0003Zb-Pt
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:34 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1jNttR-0005Fx-V0
 for barebox@lists.infradead.org; Mon, 13 Apr 2020 09:52:33 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 13 Apr 2020 09:52:01 +0200
Message-Id: <20200413075204.17544-19-a.fatoum@pengutronix.de>
In-Reply-To: <20200413075204.17544-1-a.fatoum@pengutronix.de>
References: <20200413075204.17544-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 18/21] clk: at91: allow 24 Mhz clock as input for PLL
To: barebox@lists.infradead.org

From: Eugen Hristev <eugen.hristev@microchip.com>

The PLL input range needs to be able to allow 24 Mhz crystal as input
Update the range accordingly in plla characteristics struct

Signed-off-by: Eugen Hristev <eugen.hristev@microchip.com>
Link: https://lkml.kernel.org/r/1568183622-7858-1-git-send-email-eugen.hristev@microchip.com
Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>
Fixes: c561e41ce4d2 ("clk: at91: add sama5d2 PMC driver")
Signed-off-by: Stephen Boyd <sboyd@kernel.org>
[afa: ported to barebox from Linux commit 81a6b601f9f49]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/sama5d2.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/at91/sama5d2.c b/drivers/clk/at91/sama5d2.c
index 3daff89f5958..61fdf256c036 100644
--- a/drivers/clk/at91/sama5d2.c
+++ b/drivers/clk/at91/sama5d2.c
@@ -27,7 +27,7 @@ static const struct clk_range plla_outputs[] = {
 };
 
 static const struct clk_pll_characteristics plla_characteristics = {
-	.input = { .min = 12000000, .max = 12000000 },
+	.input = { .min = 12000000, .max = 24000000 },
 	.num_output = ARRAY_SIZE(plla_outputs),
 	.output = plla_outputs,
 	.icpll = plla_icpll,
-- 
2.26.0.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
