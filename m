Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp34.i.mail.ru ([94.100.177.94])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bIInc-0005fF-QU
 for barebox@lists.infradead.org; Wed, 29 Jun 2016 16:57:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Wed, 29 Jun 2016 19:56:49 +0300
Message-Id: <1467219409-16450-2-git-send-email-shc_work@mail.ru>
In-Reply-To: <1467219409-16450-1-git-send-email-shc_work@mail.ru>
References: <1467219409-16450-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 2/2] ARM: i.MX clk-pllv1: Do not use a negative value for the
 unsigned variable
To: barebox@lists.infradead.org

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/mach-imx/clk-pllv1.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/clk-pllv1.c b/arch/arm/mach-imx/clk-pllv1.c
index 6785da0..f992134 100644
--- a/arch/arm/mach-imx/clk-pllv1.c
+++ b/arch/arm/mach-imx/clk-pllv1.c
@@ -61,8 +61,9 @@ static unsigned long clk_pllv1_recalc_rate(struct clk *clk,
 
 	do_div(ll, mfd + 1);
 	if (mfn < 0)
-		ll = -ll;
-	ll = (freq * mfi) + ll;
+		ll = (freq * mfi) - ll;
+	else
+		ll = (freq * mfi) + ll;
 
 	return ll;
 }
-- 
2.4.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
