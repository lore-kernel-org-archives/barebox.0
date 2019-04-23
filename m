Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hIz4P-0003tQ-Tt
 for barebox@lists.infradead.org; Tue, 23 Apr 2019 17:19:03 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 23 Apr 2019 19:18:48 +0200
Message-Id: <20190423171852.26126-2-a.fatoum@pengutronix.de>
In-Reply-To: <20190423171852.26126-1-a.fatoum@pengutronix.de>
References: <20190423171852.26126-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 1/5] ARM: cache-armv7: add work-around for errata 814220
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, lst@pengutronix.de, ore@pengutronix.de, rcz@pengutronix.de

The v7 ARM states that all cache and branch predictor maintenance operations
that do not specify an address execute, relative to each other, in program
order. However, because of this erratum, an L2 set/way cache maintenance
operation can overtake an L1 set/way cache maintenance operation, this would
cause the data corruption.

This ERRATA affected the Cortex-A7 and present in r0p2, r0p3, r0p4, r0p5.

This patch is the SW workaround by adding a DSB before changing cache levels as
the ARM ERRATA: ARM/MP: 814220 told in the ARM ERRATA documentation.

Signed-off-by: Jason Liu <r64343@freescale.com>
Signed-off-by: Benjamin Gaignard <benjamin.gaignard@linaro.org>
Acked-by: Arnd Bergmann <arnd@arndb.de>
[afa: picked from LKML: <20190214083145.15148-1-benjamin.gaignard@linaro.org>]
[afa: edited commit message headline]
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig           | 12 ++++++++++++
 arch/arm/cpu/cache-armv7.S |  3 +++
 2 files changed, 15 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index a683c9c86661..fc622640aa2b 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -448,4 +448,16 @@ config ARM_PSCI_DEBUG
 	  putc function.
 	  Only use for debugging.
 
+config ARM_ERRATA_814220
+       bool "ARM errata: Cache maintenance by set/way operations can execute out of order"
+       depends on CPU_V7
+       help
+         The v7 ARM states that all cache and branch predictor maintenance
+         operations that do not specify an address execute, relative to
+         each other, in program order.
+         However, because of this erratum, an L2 set/way cache maintenance
+         operation can overtake an L1 set/way cache maintenance operation.
+         This ERRATA only affected the Cortex-A7 and present in r0p2, r0p3,
+         r0p4, r0p5.
+
 endmenu
diff --git a/arch/arm/cpu/cache-armv7.S b/arch/arm/cpu/cache-armv7.S
index 7a1c5c01894c..0eb0ecfee756 100644
--- a/arch/arm/cpu/cache-armv7.S
+++ b/arch/arm/cpu/cache-armv7.S
@@ -120,6 +120,9 @@ THUMB(		ite	eq			)
 skip:
 		add	r12, r12, #2		@ increment cache number
 		cmp	r3, r12
+#ifdef CONFIG_ARM_ERRATA_814220
+		dsb
+#endif
 		bgt	loop1
 finished:
 		ldmfd	sp!, {r4-r11}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
