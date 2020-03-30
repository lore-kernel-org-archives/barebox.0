Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay4-d.mail.gandi.net ([217.70.183.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jIvZh-0008RR-L0
 for barebox@lists.infradead.org; Mon, 30 Mar 2020 14:39:39 +0000
Received: from geraet.fritz.box (i577B69AA.versanet.de [87.123.105.170])
 (Authenticated sender: ahmad@a3f.at)
 by relay4-d.mail.gandi.net (Postfix) with ESMTPSA id AD3BBE000E
 for <barebox@lists.infradead.org>; Mon, 30 Mar 2020 14:39:35 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 30 Mar 2020 16:39:14 +0200
Message-Id: <20200330143915.663705-7-ahmad@a3f.at>
In-Reply-To: <20200330143915.663705-1-ahmad@a3f.at>
References: <20200330143915.663705-1-ahmad@a3f.at>
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
Subject: [PATCH 7/8] ARM: stm32mp: init: don't query package type
To: barebox@lists.infradead.org

Now that we have a nvmem cell describing the package, we don't need to
provide a stm32mp_package() function for querying it. Displaying the
package type on every boot is also not that useful, especially when some
SoCs don't even have the bsec field populated.

As the code has now become duplicate (it's used in the stm32-pinctrl
driver), remove it.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-stm32mp/include/mach/revision.h |  1 -
 arch/arm/mach-stm32mp/init.c                  | 60 ++-----------------
 2 files changed, 4 insertions(+), 57 deletions(-)

diff --git a/arch/arm/mach-stm32mp/include/mach/revision.h b/arch/arm/mach-stm32mp/include/mach/revision.h
index 2eb4d44b3368..d930bfe836a7 100644
--- a/arch/arm/mach-stm32mp/include/mach/revision.h
+++ b/arch/arm/mach-stm32mp/include/mach/revision.h
@@ -36,7 +36,6 @@
 
 int stm32mp_silicon_revision(void);
 int stm32mp_cputype(void);
-int stm32mp_package(void);
 
 #define cpu_is_stm32mp157c() (stm32mp_cputype() == CPU_STM32MP157Cxx)
 #define cpu_is_stm32mp157a() (stm32mp_cputype() == CPU_STM32MP157Axx)
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index d687e44af1ff..3e22490190ec 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -28,27 +28,11 @@
 
 /* BSEC OTP index */
 #define BSEC_OTP_RPN	1
-#define BSEC_OTP_PKG	16
 
 /* Device Part Number (RPN) = OTP_DATA1 lower 8 bits */
 #define RPN_SHIFT	0
 #define RPN_MASK	GENMASK(7, 0)
 
-/* Package = bit 27:29 of OTP16
- * - 100: LBGA448  (FFI) => AA = LFBGA 18x18mm 448 balls p. 0.8mm
- * - 011: LBGA354  (LCI) => AB = LFBGA 16x16mm 359 balls p. 0.8mm
- * - 010: TFBGA361 (FFC) => AC = TFBGA 12x12mm 361 balls p. 0.5mm
- * - 001: TFBGA257 (LCC) => AD = TFBGA 10x10mm 257 balls p. 0.5mm
- * - others: Reserved
- */
-#define PKG_SHIFT	27
-#define PKG_MASK	GENMASK(2, 0)
-
-#define PKG_AA_LBGA448	4
-#define PKG_AB_LBGA354	3
-#define PKG_AC_TFBGA361	2
-#define PKG_AD_TFBGA257	1
-
 /*
  * enumerated for boot interface from Bootrom, used in TAMP_BOOT_CONTEXT
  * - boot device = bit 8:4
@@ -145,12 +129,6 @@ int stm32mp_silicon_revision(void)
 	return __stm32mp_silicon_revision;
 }
 
-static int __stm32mp_package;
-int stm32mp_package(void)
-{
-	return __stm32mp_package;
-}
-
 static inline u32 read_idc(void)
 {
 	setbits_le32(RCC_DBGCFGR, RCC_DBGCFGR_DBGCKEN);
@@ -185,16 +163,6 @@ static int get_cpu_type(u32 *type)
 	return 0;
 }
 
-static int get_cpu_package(u32 *pkg)
-{
-	int ret = bsec_read_field(BSEC_OTP_PKG, pkg);
-	if (ret)
-		return ret;
-
-	*pkg = (*pkg >> PKG_SHIFT) & PKG_MASK;
-	return 0;
-}
-
 static int stm32mp15_fixup_cpus(struct device_node *root, void *_ctx)
 {
 	unsigned long ctx = (unsigned long)_ctx;
@@ -223,9 +191,8 @@ static int stm32mp15_fixup_cpus(struct device_node *root, void *_ctx)
 
 static int setup_cpu_type(void)
 {
-	const char *cputypestr, *cpupkgstr, *cpurevstr;
+	const char *cputypestr, *cpurevstr;
 	unsigned long fixupctx = 0;
-	u32 pkg;
 
 	get_cpu_type(&__stm32mp_cputype);
 	switch (__stm32mp_cputype) {
@@ -282,25 +249,6 @@ static int setup_cpu_type(void)
 		break;
 	}
 
-	get_cpu_package(&__stm32mp_package );
-	switch (__stm32mp_package) {
-	case PKG_AA_LBGA448:
-		cpupkgstr = "AA";
-		break;
-	case PKG_AB_LBGA354:
-		cpupkgstr = "AB";
-		break;
-	case PKG_AC_TFBGA361:
-		cpupkgstr = "AC";
-		break;
-	case PKG_AD_TFBGA257:
-		cpupkgstr = "AD";
-		break;
-	default:
-		cpupkgstr = "??";
-		break;
-	}
-
 	__stm32mp_silicon_revision = get_cpu_revision();
 	switch (__stm32mp_silicon_revision) {
 	case CPU_REV_A:
@@ -316,9 +264,9 @@ static int setup_cpu_type(void)
 		cpurevstr = "?";
 	}
 
-	pr_debug("cputype = 0x%x, package = 0x%x, revision = 0x%x\n",
-		 __stm32mp_cputype, pkg, __stm32mp_silicon_revision);
-	pr_info("detected STM32MP%s%s Rev.%s\n", cputypestr, cpupkgstr, cpurevstr);
+	pr_debug("cputype = 0x%x, revision = 0x%x\n",
+		 __stm32mp_cputype, __stm32mp_silicon_revision);
+	pr_info("detected STM32MP%s Rev.%s\n", cputypestr, cpurevstr);
 
 	if (fixupctx)
 		return of_register_fixup(stm32mp15_fixup_cpus, (void*)fixupctx);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
