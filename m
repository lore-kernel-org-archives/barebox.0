Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000S9-MA
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000j8-5l
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002GU-IV
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:49 +0200
Message-Id: <20190617150751.3421-11-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 10/12] ARM: sm: move get_gicd_base_address to header for
 reuse
To: barebox@lists.infradead.org

Incoming PSCI implementation for the STM32MP1 needs
to get_gicd_base_address as well, so move it to gic.h to
avoid code duplication.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/cpu/sm.c          | 29 +----------------------------
 arch/arm/include/asm/gic.h | 29 +++++++++++++++++++++++++++++
 2 files changed, 30 insertions(+), 28 deletions(-)

diff --git a/arch/arm/cpu/sm.c b/arch/arm/cpu/sm.c
index d9d62fbd9db0..b7a9eae89b1a 100644
--- a/arch/arm/cpu/sm.c
+++ b/arch/arm/cpu/sm.c
@@ -22,9 +22,6 @@
 
 #include "mmu.h"
 
-/* valid bits in CBAR register / PERIPHBASE value */
-#define CBAR_MASK			0xFFFF8000
-
 static unsigned int read_id_pfr1(void)
 {
 	unsigned int reg;
@@ -51,30 +48,6 @@ static void write_mvbar(u32 val)
 	asm("mcr p15, 0, %0, c12, c0, 1" : : "r"(val));
 }
 
-static unsigned long get_cbar(void)
-{
-	unsigned periphbase;
-
-	/* get the GIC base address from the CBAR register */
-	asm("mrc p15, 4, %0, c15, c0, 0\n" : "=r" (periphbase));
-
-	/* the PERIPHBASE can be mapped above 4 GB (lower 8 bits used to
-	 * encode this). Bail out here since we cannot access this without
-	 * enabling paging.
-	 */
-	if ((periphbase & 0xff) != 0) {
-		pr_err("PERIPHBASE is above 4 GB, no access.\n");
-		return -1;
-	}
-
-	return periphbase & CBAR_MASK;
-}
-
-static unsigned long get_gicd_base_address(void)
-{
-	return get_cbar() + GIC_DIST_OFFSET;
-}
-
 static int cpu_is_virt_capable(void)
 {
 	return read_id_pfr1() & (1 << 12);
@@ -267,4 +240,4 @@ static int sm_init(void)
 
 	return 0;
 }
-device_initcall(sm_init);
\ No newline at end of file
+device_initcall(sm_init);
diff --git a/arch/arm/include/asm/gic.h b/arch/arm/include/asm/gic.h
index bd3a80cdf70a..f83f52814107 100644
--- a/arch/arm/include/asm/gic.h
+++ b/arch/arm/include/asm/gic.h
@@ -107,4 +107,33 @@
 #define ICC_SGI1R_EL1		S3_0_C12_C11_5
 #define ICC_ASGI1R_EL1		S3_0_C12_C11_6
 
+#ifndef __ASSEMBLY__
+/* valid bits in CBAR register / PERIPHBASE value */
+#define CBAR_MASK			0xFFFF8000
+
+static inline unsigned long get_cbar(void)
+{
+	unsigned periphbase;
+
+	/* get the GIC base address from the CBAR register */
+	asm("mrc p15, 4, %0, c15, c0, 0\n" : "=r" (periphbase));
+
+	/* the PERIPHBASE can be mapped above 4 GB (lower 8 bits used to
+	 * encode this). Bail out here since we cannot access this without
+	 * enabling paging.
+	 */
+	if ((periphbase & 0xff) != 0) {
+		pr_err("PERIPHBASE is above 4 GB, no access.\n");
+		return -1;
+	}
+
+	return periphbase & CBAR_MASK;
+}
+
+static inline unsigned long get_gicd_base_address(void)
+{
+	return get_cbar() + GIC_DIST_OFFSET;
+}
+#endif
+
 #endif /* __GIC_H__ */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
