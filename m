Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pb0-f49.google.com ([209.85.160.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SqZqe-0004wt-0W
 for barebox@lists.infradead.org; Mon, 16 Jul 2012 01:11:43 +0000
Received: by pbbrq13 with SMTP id rq13so10398279pbb.36
 for <barebox@lists.infradead.org>; Sun, 15 Jul 2012 18:10:16 -0700 (PDT)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Mon, 16 Jul 2012 11:04:57 +1000
Message-Id: <1342400699-6753-4-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
References: <1342400699-6753-1-git-send-email-marc@cpdesign.com.au>
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
Subject: [PATCH 3/5] imx35: mmc clock has 6 bit divider, not 3_3
To: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
According to MCIMX35RM rev 3

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
