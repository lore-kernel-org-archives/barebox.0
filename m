Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iwJaE-00060d-Ed
 for barebox@lists.infradead.org; Tue, 28 Jan 2020 05:38:44 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue, 28 Jan 2020 06:38:21 +0100
Message-Id: <20200128053821.677207-5-r.czerwinski@pengutronix.de>
In-Reply-To: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
References: <20200128053821.677207-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 4/5] ARM: mach-imx: test PL310 write access
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

If OP-TEE early loading is performed, OP-TEE will configure the PL210
and lock write access to the controller from the normal world. Test this
by trying to write the same value back and do not configure if we can
not write to the PL310.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 20 ++++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 41e0066add..d94a81e779 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -11,6 +11,7 @@
  *
  */
 
+#include <abort.h>
 #include <init.h>
 #include <common.h>
 #include <io.h>
@@ -273,6 +274,22 @@ int imx6_devices_init(void)
 	return 0;
 }
 
+static bool imx6_cannot_write_l2x0(void)
+{
+	void __iomem *l2x0_base = IOMEM(0x00a02000);
+	u32 val;
+	/*
+	 * Mask data aborts and try to access the PL210. If OP-TEE is running we
+	 * will receive a data-abort and assume barebox is running in the normal
+	 * world.
+	 */
+	val = readl(l2x0_base + L2X0_PREFETCH_CTRL);
+
+	data_abort_mask();
+	writel(val, l2x0_base + L2X0_PREFETCH_CTRL);
+	return data_abort_unmask();
+}
+
 static int imx6_mmu_init(void)
 {
 	void __iomem *l2x0_base = IOMEM(0x00a02000);
@@ -281,6 +298,9 @@ static int imx6_mmu_init(void)
 	if (!cpu_is_mx6())
 		return 0;
 
+	if (imx6_cannot_write_l2x0())
+		return 0;
+
 	val = readl(l2x0_base + L2X0_CACHE_ID);
 	cache_part = val & L2X0_CACHE_ID_PART_MASK;
 	cache_rtl  = val & L2X0_CACHE_ID_RTL_MASK;
-- 
2.25.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
