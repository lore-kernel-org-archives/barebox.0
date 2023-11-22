Delivery-date: Wed, 22 Nov 2023 19:13:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rie-004gHc-0T
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:13:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rid-0001EL-QN
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:13:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7cXuRfJAAKJ1EobaselyyTBf5N12gTKlety6xmq1Qyo=; b=3o+2C4tQOvBW/6cKzszJNVAtbx
	rfItGa+kXajYnariVJ66JDpPf3OLE9ehSaQTykA2uUoPTNY+seZNDiMe2QVYHlsgDUfGXveh3YR24
	FWDywCYGDXSnXfLm9fJcpgV2rpKeVXH5uQ0CZ2R8L27vFc6Q6e7nVz2b+OOZpKCzJyR6USRMd2Lgv
	Cz9ee10QoEPVg89XbHWkDNc1tNue7/fp6wUpty+EF3nVLRES7Kt5uzhd0Wi4bF+h52BUAMttLFgM4
	nHj96i+XCFpQn6DZCoASUCPezpbAKlYYfnntwSe3Jhzwl+cjg3ln3BXTYG/7ZK9bIrdygLShineEC
	3LUADT+A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rhG-002lpu-3C;
	Wed, 22 Nov 2023 18:11:34 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rh6-002llz-2u
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:11:29 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-0000bZ-Fh; Wed, 22 Nov 2023 19:11:21 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh3-00As17-3D; Wed, 22 Nov 2023 19:11:21 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5rh2-002Wed-3A;
	Wed, 22 Nov 2023 19:11:21 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:11:14 +0100
Message-Id: <20231122181116.591131-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231122181116.591131-1-a.fatoum@pengutronix.de>
References: <20231122181116.591131-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101125_098425_50AD023B 
X-CRM114-Status: GOOD (  17.57  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/7] ARM: stm32mp: init: handle differences between STM32MP13 and STM32MP15
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

setup_cpu_type() was responsible for registering fixups for STM32MP15
and for initializing the values returned by stm32mp_silicon_revision(),
stm32mp_cputype() and stm32mp_package().

It has no support for STM32MP13 and the OTP on that SoC is accessed
differently from the STM32MP15, so let's just mark the function
STM32MP15-specific and delete all helpers that have no users instead of
having to duplicate them for STM32MP13.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp15xx-dkx/lowlevel.c |  2 +-
 arch/arm/mach-stm32mp/init.c               | 54 +++++++++-------------
 include/mach/stm32mp/revision.h            | 37 ++++++---------
 3 files changed, 36 insertions(+), 57 deletions(-)

diff --git a/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
index f52a3f4375c0..402658d592d0 100644
--- a/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
+++ b/arch/arm/boards/stm32mp15xx-dkx/lowlevel.c
@@ -24,7 +24,7 @@ ENTRY_FUNCTION(start_stm32mp15xx_dkx, r0, r1, r2)
 	if (IS_ENABLED(CONFIG_DEBUG_LL))
 		setup_uart();
 
-	err = __stm32mp_get_cpu_type(&cputype);
+	err = __stm32mp15_get_cpu_type(&cputype);
 	if (!err && cputype == CPU_STM32MP157Axx)
 		fdt = __dtb_z_stm32mp157a_dk1_start;
 	else
diff --git a/arch/arm/mach-stm32mp/init.c b/arch/arm/mach-stm32mp/init.c
index b0220fdb8c7d..90f331ecd0dd 100644
--- a/arch/arm/mach-stm32mp/init.c
+++ b/arch/arm/mach-stm32mp/init.c
@@ -43,7 +43,8 @@
 /* TAMP registers */
 #define TAMP_BACKUP_REGISTER(x)         (STM32_TAMP_BASE + 0x100 + 4 * x)
 /* non secure access */
-#define TAMP_BOOT_CONTEXT               TAMP_BACKUP_REGISTER(20)
+#define STM32MP13_TAMP_BOOT_CONTEXT     TAMP_BACKUP_REGISTER(30)
+#define STM32MP15_TAMP_BOOT_CONTEXT     TAMP_BACKUP_REGISTER(20)
 
 #define TAMP_BOOT_MODE_MASK             GENMASK(15, 8)
 #define TAMP_BOOT_MODE_SHIFT            8
@@ -56,9 +57,8 @@
 #define FIXUP_CPU_NUM(mask) ((mask) >> 16)
 #define FIXUP_CPU_HZ(mask) (((mask) & GENMASK(15, 0)) * 1000UL * 1000UL)
 
-static void setup_boot_mode(void)
+static void setup_boot_mode(u32 boot_ctx)
 {
-	u32 boot_ctx = readl(TAMP_BOOT_CONTEXT);
 	u32 boot_mode =
 		(boot_ctx & TAMP_BOOT_MODE_MASK) >> TAMP_BOOT_MODE_SHIFT;
 	int instance = (boot_mode & TAMP_BOOT_INSTANCE_MASK) - 1;
@@ -97,24 +97,6 @@ static void setup_boot_mode(void)
 	bootsource_set_raw(src, instance);
 }
 
-static int __stm32mp_cputype;
-int stm32mp_cputype(void)
-{
-	return __stm32mp_cputype;
-}
-
-static int __stm32mp_silicon_revision;
-int stm32mp_silicon_revision(void)
-{
-	return __stm32mp_silicon_revision;
-}
-
-static int __stm32mp_package;
-int stm32mp_package(void)
-{
-	return __stm32mp_package;
-}
-
 static u32 get_cpu_revision(void)
 {
 	return (stm32mp_read_idc() & DBGMCU_IDC_REV_ID_MASK) >> DBGMCU_IDC_REV_ID_SHIFT;
@@ -177,15 +159,15 @@ static int stm32mp15_fixup_pkg(struct device_node *root, void *_pkg)
 	return fixup_pinctrl(root, "st,stm32mp157-z-pinctrl", pkg);
 }
 
-static int setup_cpu_type(void)
+static int stm32mp15_setup_cpu_type(void)
 {
 	const char *cputypestr, *cpupkgstr, *cpurevstr;
 	unsigned long cpufixupctx = 0, pkgfixupctx = 0;
-	u32 pkg;
+	int cputype, silicon_revision, package;
 	int ret;
 
-	__stm32mp_get_cpu_type(&__stm32mp_cputype);
-	switch (__stm32mp_cputype) {
+	__stm32mp15_get_cpu_type(&cputype);
+	switch (cputype) {
 	case CPU_STM32MP157Fxx:
 		cputypestr = "157F";
 		cpufixupctx = FIXUP_CPU_MASK(2, 800);
@@ -239,8 +221,8 @@ static int setup_cpu_type(void)
 		break;
 	}
 
-	get_cpu_package(&__stm32mp_package );
-	switch (__stm32mp_package) {
+	get_cpu_package(&package);
+	switch (package) {
 	case PKG_AA_LBGA448:
 		cpupkgstr = "AA";
 		pkgfixupctx = STM32MP_PKG_AA;
@@ -262,8 +244,8 @@ static int setup_cpu_type(void)
 		break;
 	}
 
-	__stm32mp_silicon_revision = get_cpu_revision();
-	switch (__stm32mp_silicon_revision) {
+	silicon_revision = get_cpu_revision();
+	switch (silicon_revision) {
 	case CPU_REV_A:
 		cpurevstr = "A";
 		break;
@@ -278,7 +260,7 @@ static int setup_cpu_type(void)
 	}
 
 	pr_debug("cputype = 0x%x, package = 0x%x, revision = 0x%x\n",
-		 __stm32mp_cputype, pkg, __stm32mp_silicon_revision);
+		 cputype, package, silicon_revision);
 	pr_info("detected STM32MP%s%s Rev.%s\n", cputypestr, cpupkgstr, cpurevstr);
 
 	if (cpufixupctx) {
@@ -302,6 +284,8 @@ int stm32mp_soc(void)
 
 static int stm32mp_init(void)
 {
+	u32 boot_ctx;
+
 	if (of_machine_is_compatible("st,stm32mp135"))
 		__st32mp_soc = 32135;
 	else if (of_machine_is_compatible("st,stm32mp151"))
@@ -313,8 +297,14 @@ static int stm32mp_init(void)
 	else
 		return 0;
 
-	setup_cpu_type();
-	setup_boot_mode();
+	if (__st32mp_soc == 32135) {
+		boot_ctx = readl(STM32MP13_TAMP_BOOT_CONTEXT);
+	} else {
+		stm32mp15_setup_cpu_type();
+		boot_ctx = readl(STM32MP15_TAMP_BOOT_CONTEXT);
+	}
+
+	setup_boot_mode(boot_ctx);
 
 	return 0;
 }
diff --git a/include/mach/stm32mp/revision.h b/include/mach/stm32mp/revision.h
index 47e2651432bc..73cc862a4e66 100644
--- a/include/mach/stm32mp/revision.h
+++ b/include/mach/stm32mp/revision.h
@@ -32,30 +32,14 @@
 #define CPU_STM32MP151Fxx	0x050000AE
 #define CPU_STM32MP151Dxx	0x050000AF
 
-#define cpu_stm32_is(mask, val) ({ \
-	u32 type; \
-	__stm32mp_get_cpu_type(&type) == 0 ? (type & mask) == val : 0; \
-})
-
-#define cpu_stm32_is_stm32mp15() cpu_stm32_is(0xFFFF0000, 0x05000000)
-#define cpu_stm32_is_stm32mp13() cpu_stm32_is(0xFFFF0000, 0x05010000)
+#define cpu_stm32_is_stm32mp15() (__stm32mp_get_cpu() == 0x0500)
+#define cpu_stm32_is_stm32mp13() (__stm32mp_get_cpu() == 0x0501)
 
 /* silicon revisions */
 #define CPU_REV_A	0x1000
 #define CPU_REV_B	0x2000
 #define CPU_REV_Z	0x2001
 
-int stm32mp_silicon_revision(void);
-int stm32mp_cputype(void);
-int stm32mp_package(void);
-
-#define cpu_is_stm32mp157c() (stm32mp_cputype() == CPU_STM32MP157Cxx)
-#define cpu_is_stm32mp157a() (stm32mp_cputype() == CPU_STM32MP157Axx)
-#define cpu_is_stm32mp153c() (stm32mp_cputype() == CPU_STM32MP153Cxx)
-#define cpu_is_stm32mp153a() (stm32mp_cputype() == CPU_STM32MP153Axx)
-#define cpu_is_stm32mp151c() (stm32mp_cputype() == CPU_STM32MP151Cxx)
-#define cpu_is_stm32mp151a() (stm32mp_cputype() == CPU_STM32MP151Axx)
-
 /* DBGMCU register */
 #define DBGMCU_APB4FZ1		(STM32_DBGMCU_BASE + 0x2C)
 #define DBGMCU_IDC		(STM32_DBGMCU_BASE + 0x00)
@@ -77,8 +61,13 @@ static inline u32 stm32mp_read_idc(void)
 	return readl(IOMEM(DBGMCU_IDC));
 }
 
+static inline u32 __stm32mp_get_cpu(void)
+{
+	return stm32mp_read_idc() & DBGMCU_IDC_DEV_ID_MASK >> DBGMCU_IDC_DEV_ID_SHIFT;
+}
+
 /* Get Device Part Number (RPN) from OTP */
-static inline int __stm32mp_get_cpu_rpn(u32 *rpn)
+static inline int __stm32mp15_get_cpu_rpn(u32 *rpn)
 {
 	int ret = bsec_read_field(BSEC_OTP_RPN, rpn);
 	if (ret)
@@ -88,15 +77,15 @@ static inline int __stm32mp_get_cpu_rpn(u32 *rpn)
 	return 0;
 }
 
-static inline int __stm32mp_get_cpu_type(u32 *type)
+static inline int __stm32mp15_get_cpu_type(u32 *type)
 {
-	u32 id;
-	int ret = __stm32mp_get_cpu_rpn(type);
+	int ret;
+
+	ret = __stm32mp15_get_cpu_rpn(type);
 	if (ret)
 		return ret;
 
-	id = (stm32mp_read_idc() & DBGMCU_IDC_DEV_ID_MASK) >> DBGMCU_IDC_DEV_ID_SHIFT;
-	*type |= id << 16;
+	*type |= __stm32mp_get_cpu() << 16;
 	return 0;
 }
 
-- 
2.39.2



