Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SvOE1-0004ni-RI
 for barebox@lists.infradead.org; Sun, 29 Jul 2012 07:47:42 +0000
Received: by mail-pb0-f49.google.com with SMTP id rq13so8523245pbb.36
 for <barebox@lists.infradead.org>; Sun, 29 Jul 2012 00:47:41 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 29 Jul 2012 17:41:49 +1000
Message-Id: <1343547714-32740-3-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
References: <1343547714-32740-1-git-send-email-marc@cpdesign.com.au>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/7] imx35: mmc clock has 6 bit divider, not 3_3
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 arch/arm/mach-imx/speed-imx35.c |    3 ++-
 1 files changed, 2 insertions(+), 1 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx35.c b/arch/arm/mach-imx/speed-imx35.c
index 905ab47..6d4236a 100644
--- a/arch/arm/mach-imx/speed-imx35.c
+++ b/arch/arm/mach-imx/speed-imx35.c
@@ -170,10 +170,11 @@ unsigned long imx_get_uartclk(void)
 		return imx_get_ppllclk() / div;
 }
 
+/* mmc0 clk only */
 unsigned long imx_get_mmcclk(void)
 {
 	unsigned long pdr3 = readl(IMX_CCM_BASE + CCM_PDR3);
-	unsigned long div = get_3_3_div(pdr3);
+	unsigned long div = get_6_div(pdr3);
 
 	if (pdr3 & (1 << 6))
 		return imx_get_armclk() / div;
-- 
1.7.7


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
