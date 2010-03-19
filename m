Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp4-g21.free.fr ([212.27.42.4])
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1NsdAp-0000vf-Ul
	for barebox@lists.infradead.org; Fri, 19 Mar 2010 14:27:45 +0000
Received: from smtp4-g21.free.fr (localhost [127.0.0.1])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 714D74C80E5
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:27:34 +0100 (CET)
Received: from localhost.localdomain (pac33-2-82-240-38-71.fbx.proxad.net
	[82.240.38.71])
	by smtp4-g21.free.fr (Postfix) with ESMTP id 729514C801A
	for <barebox@lists.infradead.org>; Fri, 19 Mar 2010 15:27:32 +0100 (CET)
From: Eric Benard <eric@eukrea.com>
Date: Fri, 19 Mar 2010 15:27:29 +0100
Message-Id: <1269008851-16647-2-git-send-email-eric@eukrea.com>
In-Reply-To: <1269008851-16647-1-git-send-email-eric@eukrea.com>
References: <1269008851-16647-1-git-send-email-eric@eukrea.com>
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
Subject: [PATCH 2/4] i.MX25 : add lcdc clock support
To: barebox@lists.infradead.org

Signed-off-by: Eric Benard <eric@eukrea.com>
---
 arch/arm/mach-imx/speed-imx25.c |    6 ++++++
 1 files changed, 6 insertions(+), 0 deletions(-)

diff --git a/arch/arm/mach-imx/speed-imx25.c b/arch/arm/mach-imx/speed-imx25.c
index be20880..beb7efe 100644
--- a/arch/arm/mach-imx/speed-imx25.c
+++ b/arch/arm/mach-imx/speed-imx25.c
@@ -72,6 +72,11 @@ unsigned long imx_get_fecclk(void)
 	return imx_get_ipgclk();
 }
 
+unsigned long imx_get_lcdclk(void)
+{
+	return imx_get_perclk(7);
+}
+
 int imx_dump_clocks(void)
 {
 	printf("mpll:    %10d Hz\n", imx_get_mpllclk());
@@ -81,6 +86,7 @@ int imx_dump_clocks(void)
 	printf("uart:    %10d Hz\n", imx_get_perclk(15));
 	printf("gpt:     %10d Hz\n", imx_get_ipgclk());
 	printf("nand:    %10d Hz\n", imx_get_perclk(8));
+	printf("lcd:     %10d Hz\n", imx_get_perclk(7));
 	return 0;
 }
 
-- 
1.6.3.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
