Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1X870u-0006th-V2
 for barebox@lists.infradead.org; Fri, 18 Jul 2014 12:11:49 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 18 Jul 2014 14:11:22 +0200
Message-Id: <1405685482-1024-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] ARM: i.MX: esdctl: i.MX53 has esdctl v4, not v3
To: barebox@lists.infradead.org

On the i.MX53 this has the effect that in early init only
half of the memory bank is detected and the barebox image
is place in the middle of SDRAM.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index bb8fec2..811592f 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -549,9 +549,9 @@ void __naked __noreturn imx53_barebox_entry(void *boarddata)
 	unsigned long base, size;
 
 	upper_or_coalesced_range(MX53_CSD0_BASE_ADDR,
-			imx_v3_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 0),
+			imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 0),
 			MX53_CSD1_BASE_ADDR,
-			imx_v3_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 1),
+			imx_v4_sdram_size((void *)MX53_ESDCTL_BASE_ADDR, 1),
 			&base, &size);
 
 	barebox_arm_entry(base, size, boarddata);
-- 
2.0.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
