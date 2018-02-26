Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eqEJI-0005VL-Fe
 for barebox@lists.infradead.org; Mon, 26 Feb 2018 08:41:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 26 Feb 2018 09:38:47 +0100
Message-Id: <20180226083847.30625-1-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM/i.MX53: fix compiler warning
To: Barebox List <barebox@lists.infradead.org>

The code wants to test if the lower 16bits of the content of
MX53_CSD0_BASE_ADDR and SDRAM_COMPARE_CONST1 are identical. The assembly
this code was derived from did:

	mov             r5, r0, lsl #16
        mov             r6, r7, lsl #16
        cmp             r5, r6

In C this is better written with masks which is better readable and
avoid this compiler warning:

arch/arm/mach-imx/esdctl-v4.c:613:63: warning: result of '305419896 << 16' requires 46 bits to represent, but 'int' only has 32 bits [-Wshift-overflow=]

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl-v4.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/esdctl-v4.c b/arch/arm/mach-imx/esdctl-v4.c
index 6de4a8d6e7..b32f56d622 100644
--- a/arch/arm/mach-imx/esdctl-v4.c
+++ b/arch/arm/mach-imx/esdctl-v4.c
@@ -610,7 +610,7 @@ void imx_esdctlv4_init(void)
 	 * ok, last possibility is 16b bus on low data-lines, check that
 	 * (i.MX25 also suports 16b on high data-lines, but i.MX53 doesn't)
 	 */
-	if (readl(MX53_CSD0_BASE_ADDR) << 16 == SDRAM_COMPARE_CONST1 << 16) {
+	if ((readl(MX53_CSD0_BASE_ADDR) & 0xffff) == (SDRAM_COMPARE_CONST1 & 0xffff)) {
 		esdctl0 |= ESDCTL_V4_ESDCTLx_DSIZ_16B_LOW;
 		mask >>= 16;
 		goto sdram_bussize_found;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
