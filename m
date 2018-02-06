Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1ej4pc-00024P-Mz
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 15:06:54 +0000
From: Philipp Zabel <p.zabel@pengutronix.de>
Date: Tue,  6 Feb 2018 16:06:32 +0100
Message-Id: <20180206150632.22463-1-p.zabel@pengutronix.de>
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
Subject: [PATCH] improve soc revision calculation
To: barebox@lists.infradead.org

i.MX6QP revision 2.1 currently are not recognized, causing
imx_set_silicon_revision to print IMX_CHIP_REV_UNKNOWN as 15.15:

  detected i.MX6 Quad Plus revision 15.15

To fix this, instead of extending the list with yet another variant,
switch to the method introduced in the Linux kernel in commit
c22dee6e3c16 ("ARM: imx: Improve the soc revision calculation flow").

Signed-off-by: Philipp Zabel <p.zabel@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/imx6.h | 24 ++++--------------------
 1 file changed, 4 insertions(+), 20 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/imx6.h b/arch/arm/mach-imx/include/mach/imx6.h
index 288c7539ae..6b08e6a521 100644
--- a/arch/arm/mach-imx/include/mach/imx6.h
+++ b/arch/arm/mach-imx/include/mach/imx6.h
@@ -87,35 +87,19 @@ DEFINE_MX6_CPU_TYPE(mx6ull, IMX6_CPUTYPE_IMX6ULL);
 
 static inline int __imx6_cpu_revision(void)
 {
-
 	uint32_t rev;
 	uint32_t si_rev_offset = IMX6_ANATOP_SI_REV;
+	u8 major_part, minor_part;
 
 	if (IS_ENABLED(CONFIG_ARCH_IMX6SL) && cpu_mx6_is_mx6sl())
 		si_rev_offset = IMX6SL_ANATOP_SI_REV;
 
 	rev = readl(MX6_ANATOP_BASE_ADDR + si_rev_offset);
 
-	switch (rev & 0xfff) {
-	case 0x00:
-		return IMX_CHIP_REV_1_0;
-	case 0x01:
-		return IMX_CHIP_REV_1_1;
-	case 0x02:
-		return IMX_CHIP_REV_1_2;
-	case 0x03:
-		return IMX_CHIP_REV_1_3;
-	case 0x04:
-		return IMX_CHIP_REV_1_4;
-	case 0x05:
-		return IMX_CHIP_REV_1_5;
-	case 0x06:
-		return IMX_CHIP_REV_1_6;
-	case 0x100:
-		return IMX_CHIP_REV_2_0;
-	}
+	major_part = (rev >> 8) & 0xf;
+	minor_part = rev & 0xf;
 
-	return IMX_CHIP_REV_UNKNOWN;
+	return ((major_part + 1) << 4) | minor_part;
 }
 
 static inline int imx6_cpu_revision(void)
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
