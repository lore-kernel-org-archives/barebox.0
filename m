Delivery-date: Fri, 01 Oct 2021 12:12:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFWw-0002eq-2j
	for lore@lore.pengutronix.de; Fri, 01 Oct 2021 12:12:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mWFWp-0006oz-AV
	for lore@pengutronix.de; Fri, 01 Oct 2021 12:12:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZAhil4BYlzqJrrFFwnU2ux+NTmMpCE1UwFn3PHICXE0=; b=VHcJUnvXdGNSwd
	u3AKSq66OHj0H3iMvmHaiudTz/i/WLvhQJWRQF4P9JKh1xnM0sGMJXOm1sbo66/Uud7r7hXm7HMW5
	E6STnkGX1POna8Flv2hKyKCTfsC8Wac8ZproPUWktaxYYTqjCYWS1EJ1mwx6tdHhc2EJY3ySkLl2u
	FDZ3Mu6qHS8yuxFzrK6jOoe/J1clntLP7/9klS59o6MqWOQEnpt6nC59BReaLHZnTUetLWe3FMHK8
	k1utOTHT6SYWO7oxH2QZHpzN57o5dpbCzp/ntKbZwjNxJBfMzd0jk13tfDK/mBt00V+gurq0gsQFB
	RAQW8qvtFxPBkd7tbTbg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mWFUt-00HR4Z-DB; Fri, 01 Oct 2021 10:10:31 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mWFUO-00HQlW-E2
 for barebox@lists.infradead.org; Fri, 01 Oct 2021 10:10:05 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUF-0005kp-2f; Fri, 01 Oct 2021 12:09:51 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mWFUE-0001pS-E7; Fri, 01 Oct 2021 12:09:50 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Trent Piepho <tpiepho@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri,  1 Oct 2021 12:09:42 +0200
Message-Id: <20211001100949.6891-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211001100949.6891-1-a.fatoum@pengutronix.de>
References: <20211001100949.6891-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211001_031001_266892_484E8D17 
X-CRM114-Status: GOOD (  25.99  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/8] ARM: i.MX: add i.MX8MN (Nano) SoC support boilerplate
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The Nano is basically a downsized mini. Add the necessary bits, so
driver and board support can be added.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-imx/Kconfig                     |   4 +
 arch/arm/mach-imx/atf.c                       |   5 +
 arch/arm/mach-imx/boot.c                      |   6 +
 arch/arm/mach-imx/cpu_init.c                  |   3 +
 arch/arm/mach-imx/esdctl.c                    |   8 +
 arch/arm/mach-imx/imx-bbu-internal.c          |   8 +-
 arch/arm/mach-imx/imx.c                       |   4 +
 arch/arm/mach-imx/imx8m.c                     |  23 +
 arch/arm/mach-imx/include/mach/atf.h          |   2 +
 arch/arm/mach-imx/include/mach/esdctl.h       |   1 +
 arch/arm/mach-imx/include/mach/generic.h      |  18 +-
 arch/arm/mach-imx/include/mach/imx8mn-regs.h  |  34 +
 arch/arm/mach-imx/include/mach/imx8mq.h       |  11 +
 .../arm/mach-imx/include/mach/imx_cpu_types.h |   1 +
 arch/arm/mach-imx/include/mach/iomux-mx8mn.h  | 774 ++++++++++++++++++
 arch/arm/mach-imx/include/mach/xload.h        |   1 +
 drivers/mci/imx-esdhc-pbl.c                   |   3 +
 scripts/imx/imx.h                             |   1 +
 18 files changed, 902 insertions(+), 5 deletions(-)
 create mode 100644 arch/arm/mach-imx/include/mach/imx8mn-regs.h
 create mode 100644 arch/arm/mach-imx/include/mach/iomux-mx8mn.h

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index fa373f9a7cdf..959b934b6abb 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -186,6 +186,10 @@ config ARCH_IMX8MM
 	select ARCH_IMX8M
 	bool
 
+config ARCH_IMX8MN
+	select ARCH_IMX8M
+	bool
+
 config ARCH_IMX8MP
 	select ARCH_IMX8M
 	bool
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 03857e6b9b47..4b6ac8a2ae5e 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -47,6 +47,11 @@ void imx8mm_atf_load_bl31(const void *fw, size_t fw_size)
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
 }
 
+void imx8mn_atf_load_bl31(const void *fw, size_t fw_size)
+{
+	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
+}
+
 void imx8mp_atf_load_bl31(const void *fw, size_t fw_size)
 {
 	imx8m_atf_load_bl31(fw, fw_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index fcb3c1006440..63afdf1ef4ed 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -672,6 +672,12 @@ void imx8mm_boot_save_loc(void)
 	imx_boot_save_loc(imx8mm_get_boot_source);
 }
 
+void imx8mn_get_boot_source(enum bootsource *src, int *instance)
+	__alias(imx8mm_get_boot_source);
+
+void imx8mn_boot_save_loc(void)
+	__alias(imx8mm_boot_save_loc);
+
 void imx8mp_get_boot_source(enum bootsource *src, int *instance)
 {
 	unsigned long addr;
diff --git a/arch/arm/mach-imx/cpu_init.c b/arch/arm/mach-imx/cpu_init.c
index ea1c67469122..559692c765fc 100644
--- a/arch/arm/mach-imx/cpu_init.c
+++ b/arch/arm/mach-imx/cpu_init.c
@@ -75,6 +75,9 @@ void imx8mm_cpu_lowlevel_init(void)
 	imx8m_cpu_lowlevel_init();
 }
 
+void imx8mn_cpu_lowlevel_init(void)
+	__alias(imx8mm_cpu_lowlevel_init);
+
 void imx8mp_cpu_lowlevel_init(void)
 	__alias(imx8mm_cpu_lowlevel_init);
 
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 64a583249411..e56da3cb76d4 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -678,6 +678,9 @@ static __maybe_unused struct of_device_id imx_esdctl_dt_ids[] = {
 	}, {
 		.compatible = "fsl,imx8mm-ddrc",
 		.data = &imx8mq_data
+	}, {
+		.compatible = "fsl,imx8mn-ddrc",
+		.data = &imx8mq_data
 	}, {
 		.compatible = "fsl,imx8mq-ddrc",
 		.data = &imx8mq_data
@@ -887,6 +890,11 @@ void __noreturn imx8mm_barebox_entry(void *boarddata)
 	imx8m_barebox_entry(boarddata);
 }
 
+void __noreturn imx8mn_barebox_entry(void *boarddata)
+{
+	imx8m_barebox_entry(boarddata);
+}
+
 void __noreturn imx8mp_barebox_entry(void *boarddata)
 {
 	imx8m_barebox_entry(boarddata);
diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 91e1785d18e0..64d4d77ff596 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -384,10 +384,10 @@ static unsigned long imx_bbu_flash_header_offset_mmc(void)
 		return SZ_32K + SZ_1K;
 
 	/*
-	 * i.MX8MP moved the header by 32K to accomodate for GPT partition
+	 * i.MX8MN/P moved the header by 32K to accomodate for GPT partition
 	 * tables, but the IVT is right at the beginning of the image.
 	 */
-	if (cpu_is_mx8mp())
+	if (cpu_is_mx8mn() || cpu_is_mx8mp())
 		return SZ_32K;
 
 	return SZ_1K;
@@ -396,10 +396,10 @@ static unsigned long imx_bbu_flash_header_offset_mmc(void)
 static unsigned long imx_bbu_flash_header_offset_mmcboot(unsigned long *flags)
 {
 	/*
-	 * i.MX8MP places IVT directly at start of eMMC boot partition. IVT
+	 * i.MX8MN/P places IVT directly at start of eMMC boot partition. IVT
 	 * in eMMC user partition and SD is at 32K offset.
 	 */
-	if (cpu_is_mx8mp())
+	if (cpu_is_mx8mn() || cpu_is_mx8mp())
 		*flags |= IMX_BBU_FLAG_PARTITION_STARTS_AT_HEADER;
 
 	return imx_bbu_flash_header_offset_mmc();
diff --git a/arch/arm/mach-imx/imx.c b/arch/arm/mach-imx/imx.c
index 0d2a5b2063cf..489cef6d863d 100644
--- a/arch/arm/mach-imx/imx.c
+++ b/arch/arm/mach-imx/imx.c
@@ -71,6 +71,8 @@ static int imx_soc_from_dt(void)
 		return IMX_CPU_IMX8MQ;
 	if (of_machine_is_compatible("fsl,imx8mm"))
 		return IMX_CPU_IMX8MM;
+	if (of_machine_is_compatible("fsl,imx8mn"))
+		return IMX_CPU_IMX8MN;
 	if (of_machine_is_compatible("fsl,imx8mp"))
 		return IMX_CPU_IMX8MP;
 	if (of_machine_is_compatible("fsl,vf610"))
@@ -115,6 +117,8 @@ static int imx_init(void)
 		ret = imx7_init();
 	else if (cpu_is_mx8mm())
 		ret = imx8mm_init();
+	else if (cpu_is_mx8mn())
+		ret = imx8mn_init();
 	else if (cpu_is_mx8mp())
 		ret = imx8mp_init();
 	else if (cpu_is_mx8mq())
diff --git a/arch/arm/mach-imx/imx8m.c b/arch/arm/mach-imx/imx8m.c
index 8672d5fe39eb..ac48e7aa0ab1 100644
--- a/arch/arm/mach-imx/imx8m.c
+++ b/arch/arm/mach-imx/imx8m.c
@@ -95,6 +95,29 @@ int imx8mm_init(void)
 	return imx8m_init(cputypestr);
 }
 
+int imx8mn_init(void)
+{
+	void __iomem *anatop = IOMEM(MX8M_ANATOP_BASE_ADDR);
+	uint32_t type = FIELD_GET(DIGPROG_MAJOR,
+				  readl(anatop + MX8MN_ANATOP_DIGPROG));
+	const char *cputypestr;
+
+	imx8mn_boot_save_loc();
+
+	switch (type) {
+	case IMX8M_CPUTYPE_IMX8MN:
+		cputypestr = "i.MX8MN";
+		break;
+	default:
+		cputypestr = "unknown i.MX8M";
+		break;
+	};
+
+	imx_set_silicon_revision(cputypestr, imx8mn_cpu_revision());
+
+	return imx8m_init(cputypestr);
+}
+
 int imx8mp_init(void)
 {
 	void __iomem *anatop = IOMEM(MX8MP_ANATOP_BASE_ADDR);
diff --git a/arch/arm/mach-imx/include/mach/atf.h b/arch/arm/mach-imx/include/mach/atf.h
index c21ffaeb5639..5ca75f8f92d2 100644
--- a/arch/arm/mach-imx/include/mach/atf.h
+++ b/arch/arm/mach-imx/include/mach/atf.h
@@ -7,6 +7,7 @@
 #define MX8M_ATF_BL31_SIZE_LIMIT	SZ_64K
 
 #define MX8MM_ATF_BL31_BASE_ADDR	0x00920000
+#define MX8MN_ATF_BL31_BASE_ADDR	0x00960000
 #define MX8MP_ATF_BL31_BASE_ADDR	0x00960000
 #define MX8MQ_ATF_BL31_BASE_ADDR	0x00910000
 #define MX8M_ATF_BL33_BASE_ADDR		0x40200000
@@ -14,6 +15,7 @@
 #define MX8MQ_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 
 void imx8mm_atf_load_bl31(const void *fw, size_t fw_size);
+void imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
 void imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
 void imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
 
diff --git a/arch/arm/mach-imx/include/mach/esdctl.h b/arch/arm/mach-imx/include/mach/esdctl.h
index e6bbc3145a4e..caafa4732314 100644
--- a/arch/arm/mach-imx/include/mach/esdctl.h
+++ b/arch/arm/mach-imx/include/mach/esdctl.h
@@ -140,6 +140,7 @@ void __noreturn imx6q_barebox_entry(void *boarddata);
 void __noreturn imx6ul_barebox_entry(void *boarddata);
 void __noreturn vf610_barebox_entry(void *boarddata);
 void __noreturn imx8mm_barebox_entry(void *boarddata);
+void __noreturn imx8mn_barebox_entry(void *boarddata);
 void __noreturn imx8mp_barebox_entry(void *boarddata);
 void __noreturn imx8mq_barebox_entry(void *boarddata);
 void __noreturn imx7d_barebox_entry(void *boarddata);
diff --git a/arch/arm/mach-imx/include/mach/generic.h b/arch/arm/mach-imx/include/mach/generic.h
index f30133a05aa8..fce7a813200b 100644
--- a/arch/arm/mach-imx/include/mach/generic.h
+++ b/arch/arm/mach-imx/include/mach/generic.h
@@ -17,6 +17,7 @@ void imx6_boot_save_loc(void);
 void imx7_boot_save_loc(void);
 void vf610_boot_save_loc(void);
 void imx8mm_boot_save_loc(void);
+void imx8mn_boot_save_loc(void);
 void imx8mp_boot_save_loc(void);
 void imx8mq_boot_save_loc(void);
 
@@ -29,6 +30,7 @@ void imx6_get_boot_source(enum bootsource *src, int *instance);
 void imx7_get_boot_source(enum bootsource *src, int *instance);
 void vf610_get_boot_source(enum bootsource *src, int *instance);
 void imx8mm_get_boot_source(enum bootsource *src, int *instance);
+void imx8mn_get_boot_source(enum bootsource *src, int *instance);
 void imx8mp_get_boot_source(enum bootsource *src, int *instance);
 void imx8mq_get_boot_source(enum bootsource *src, int *instance);
 
@@ -45,6 +47,7 @@ int imx6_init(void);
 int imx7_init(void);
 int vf610_init(void);
 int imx8mm_init(void);
+int imx8mn_init(void);
 int imx8mp_init(void);
 int imx8mq_init(void);
 
@@ -66,6 +69,7 @@ void imx7_cpu_lowlevel_init(void);
 void vf610_cpu_lowlevel_init(void);
 void imx8mq_cpu_lowlevel_init(void);
 void imx8mm_cpu_lowlevel_init(void);
+void imx8mn_cpu_lowlevel_init(void);
 void imx8mp_cpu_lowlevel_init(void);
 
 /* There's a off-by-one betweem the gpio bank number and the gpiochip */
@@ -219,6 +223,18 @@ extern unsigned int __imx_cpu_type;
 # define cpu_is_mx8mm()	(0)
 #endif
 
+#ifdef CONFIG_ARCH_IMX8MN
+# ifdef imx_cpu_type
+#  undef imx_cpu_type
+#  define imx_cpu_type __imx_cpu_type
+# else
+#  define imx_cpu_type IMX_CPU_IMX8MN
+# endif
+# define cpu_is_mx8mn()	(imx_cpu_type == IMX_CPU_IMX8MN)
+#else
+# define cpu_is_mx8mn()	(0)
+#endif
+
 #ifdef CONFIG_ARCH_IMX8MP
 # ifdef imx_cpu_type
 #  undef imx_cpu_type
@@ -267,6 +283,6 @@ extern unsigned int __imx_cpu_type;
 #define cpu_is_mx23()	(0)
 #define cpu_is_mx28()	(0)
 
-#define cpu_is_mx8m()	(cpu_is_mx8mq() || cpu_is_mx8mm() || cpu_is_mx8mp())
+#define cpu_is_mx8m()	(cpu_is_mx8mq() || cpu_is_mx8mm() || cpu_is_mx8mn() || cpu_is_mx8mp())
 
 #endif /* __MACH_GENERIC_H */
diff --git a/arch/arm/mach-imx/include/mach/imx8mn-regs.h b/arch/arm/mach-imx/include/mach/imx8mn-regs.h
new file mode 100644
index 000000000000..9d0ec513c28f
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/imx8mn-regs.h
@@ -0,0 +1,34 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __MACH_IMX8MN_REGS_H
+#define __MACH_IMX8MN_REGS_H
+
+#include <mach/imx8m-regs.h>
+
+#define MX8MN_GPIO1_BASE_ADDR		0x30200000
+#define MX8MN_GPIO2_BASE_ADDR		0x30210000
+#define MX8MN_GPIO3_BASE_ADDR		0x30220000
+#define MX8MN_GPIO4_BASE_ADDR		0x30230000
+#define MX8MN_GPIO5_BASE_ADDR		0x30240000
+#define MX8MN_WDOG1_BASE_ADDR		0x30280000
+#define MX8MN_WDOG2_BASE_ADDR		0x30290000
+#define MX8MN_WDOG3_BASE_ADDR		0x302a0000
+#define MX8MN_IOMUXC_BASE_ADDR		0x30330000
+#define MX8MN_IOMUXC_GPR_BASE_ADDR	0x30340000
+#define MX8MN_OCOTP_BASE_ADDR		0x30350000
+#define MX8MN_ANATOP_BASE_ADDR		0x30360000
+#define MX8MN_CCM_BASE_ADDR		0x30380000
+#define MX8MN_SRC_BASE_ADDR		0x30390000
+
+#define MX8MN_SYSCNT_RD_BASE_ADDR	0x306a0000
+
+
+#define MX8MN_I2C1_BASE_ADDR		0x30a20000
+#define MX8MN_I2C2_BASE_ADDR		0x30a30000
+#define MX8MN_I2C3_BASE_ADDR		0x30a40000
+#define MX8MN_I2C4_BASE_ADDR		0x30a50000
+#define MX8MN_USDHC1_BASE_ADDR		0x30b40000
+#define MX8MN_USDHC2_BASE_ADDR		0x30b50000
+
+#define MX8MN_USB1_BASE_ADDR		0x32e40000
+
+#endif /* __MACH_IMX8MN_REGS_H */
diff --git a/arch/arm/mach-imx/include/mach/imx8mq.h b/arch/arm/mach-imx/include/mach/imx8mq.h
index 1494fd661f55..f8f39cdd63fb 100644
--- a/arch/arm/mach-imx/include/mach/imx8mq.h
+++ b/arch/arm/mach-imx/include/mach/imx8mq.h
@@ -5,6 +5,7 @@
 #include <mach/generic.h>
 #include <mach/imx8mq-regs.h>
 #include <mach/imx8mm-regs.h>
+#include <mach/imx8mn-regs.h>
 #include <mach/imx8mp-regs.h>
 #include <mach/revision.h>
 #include <linux/bitfield.h>
@@ -16,6 +17,7 @@
 
 #define MX8MQ_ANATOP_DIGPROG	0x6c
 #define MX8MM_ANATOP_DIGPROG	0x800
+#define MX8MN_ANATOP_DIGPROG	0x800
 #define MX8MP_ANATOP_DIGPROG	0x800
 
 #define DIGPROG_MAJOR	GENMASK(23, 8)
@@ -23,6 +25,7 @@
 
 #define IMX8M_CPUTYPE_IMX8MQ	0x8240
 #define IMX8M_CPUTYPE_IMX8MM	0x8241
+#define IMX8M_CPUTYPE_IMX8MN	0x8242
 #define IMX8M_CPUTYPE_IMX8MP	0x8243
 
 static inline int imx8mm_cpu_revision(void)
@@ -33,6 +36,14 @@ static inline int imx8mm_cpu_revision(void)
 	return revision;
 }
 
+static inline int imx8mn_cpu_revision(void)
+{
+	void __iomem *anatop = IOMEM(MX8MN_ANATOP_BASE_ADDR);
+	uint32_t revision = FIELD_GET(DIGPROG_MINOR,
+				      readl(anatop + MX8MN_ANATOP_DIGPROG));
+	return revision;
+}
+
 static inline int imx8mp_cpu_revision(void)
 {
 	void __iomem *anatop = IOMEM(MX8MP_ANATOP_BASE_ADDR);
diff --git a/arch/arm/mach-imx/include/mach/imx_cpu_types.h b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
index 6d96f7c5900e..e9a9d8b38a08 100644
--- a/arch/arm/mach-imx/include/mach/imx_cpu_types.h
+++ b/arch/arm/mach-imx/include/mach/imx_cpu_types.h
@@ -14,6 +14,7 @@
 #define IMX_CPU_IMX7	7
 #define IMX_CPU_IMX8MQ	8
 #define IMX_CPU_IMX8MM  81
+#define IMX_CPU_IMX8MN  82
 #define IMX_CPU_IMX8MP  83
 #define IMX_CPU_VF610	610
 
diff --git a/arch/arm/mach-imx/include/mach/iomux-mx8mn.h b/arch/arm/mach-imx/include/mach/iomux-mx8mn.h
new file mode 100644
index 000000000000..3c3e0ecba38c
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/iomux-mx8mn.h
@@ -0,0 +1,774 @@
+/* SPDX-License-Identifier: GPL-2.0+ */
+/*
+ * Copyright 2018-2019 NXP
+ */
+
+#ifndef __ASM_ARCH_IMX8MN_PINS_H__
+#define __ASM_ARCH_IMX8MN_PINS_H__
+
+#include <mach/iomux-v3.h>
+#include <mach/imx8mn-regs.h>
+#include <mach/iomux-mx8m.h>
+
+enum {
+	IMX8MN_PAD_BOOT_MODE2__CCMSRCGPCMIX_BOOT_MODE2                          = IOMUX_PAD(0x025C, 0x0020, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_BOOT_MODE2__I2C1_SCL                                         = IOMUX_PAD(0x025C, 0x0020, 1, 0x055C, 3, 0),
+
+	IMX8MN_PAD_BOOT_MODE3__CCMSRCGPCMIX_BOOT_MODE3                          = IOMUX_PAD(0x0260, 0x0024, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_BOOT_MODE3__I2C1_SDA                                         = IOMUX_PAD(0x0260, 0x0024, 1, 0x056C, 3, 0),
+
+	IMX8MN_PAD_GPIO1_IO00__GPIO1_IO0                                        = IOMUX_PAD(0x0290, 0x0028, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO00__CCMSRCGPCMIX_ENET_PHY_REF_CLK_ROOT               = IOMUX_PAD(0x0290, 0x0028, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO00__ANAMIX_REF_CLK_32K                               = IOMUX_PAD(0x0290, 0x0028, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO00__CCMSRCGPCMIX_EXT_CLK1                            = IOMUX_PAD(0x0290, 0x0028, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO01__GPIO1_IO1                                        = IOMUX_PAD(0x0294, 0x002C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO01__PWM1_OUT                                         = IOMUX_PAD(0x0294, 0x002C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO01__ANAMIX_REF_CLK_24M                               = IOMUX_PAD(0x0294, 0x002C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO01__CCMSRCGPCMIX_EXT_CLK2                            = IOMUX_PAD(0x0294, 0x002C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO02__GPIO1_IO2                                        = IOMUX_PAD(0x0298, 0x0030, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO02__WDOG1_WDOG_B                                     = IOMUX_PAD(0x0298, 0x0030, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO02__WDOG1_WDOG_ANY                                   = IOMUX_PAD(0x0298, 0x0030, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO03__GPIO1_IO3                                        = IOMUX_PAD(0x029C, 0x0034, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO03__USDHC1_VSELECT                                   = IOMUX_PAD(0x029C, 0x0034, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO03__SDMA1_EXT_EVENT0                                 = IOMUX_PAD(0x029C, 0x0034, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO03__ANAMIX_XTAL_OK                                   = IOMUX_PAD(0x029C, 0x0034, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO04__GPIO1_IO4                                        = IOMUX_PAD(0x02A0, 0x0038, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO04__USDHC2_VSELECT                                   = IOMUX_PAD(0x02A0, 0x0038, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO04__SDMA1_EXT_EVENT1                                 = IOMUX_PAD(0x02A0, 0x0038, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO04__ANAMIX_XTAL_OK_LV                                = IOMUX_PAD(0x02A0, 0x0038, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO05__GPIO1_IO5                                        = IOMUX_PAD(0x02A4, 0x003C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO05__M4_NMI                                           = IOMUX_PAD(0x02A4, 0x003C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO05__CCMSRCGPCMIX_PMIC_READY                          = IOMUX_PAD(0x02A4, 0x003C, 5, 0x04BC, 0, 0),
+	IMX8MN_PAD_GPIO1_IO05__CCMSRCGPCMIX_INT_BOOT                            = IOMUX_PAD(0x02A4, 0x003C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO06__GPIO1_IO6                                        = IOMUX_PAD(0x02A8, 0x0040, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO06__ENET1_MDC                                        = IOMUX_PAD(0x02A8, 0x0040, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO06__USDHC1_CD_B                                      = IOMUX_PAD(0x02A8, 0x0040, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO06__CCMSRCGPCMIX_EXT_CLK3                            = IOMUX_PAD(0x02A8, 0x0040, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO07__GPIO1_IO7                                        = IOMUX_PAD(0x02AC, 0x0044, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO07__ENET1_MDIO                                       = IOMUX_PAD(0x02AC, 0x0044, 1, 0x04C0, 0, 0),
+	IMX8MN_PAD_GPIO1_IO07__USDHC1_WP                                        = IOMUX_PAD(0x02AC, 0x0044, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO07__CCMSRCGPCMIX_EXT_CLK4                            = IOMUX_PAD(0x02AC, 0x0044, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO08__GPIO1_IO8                                        = IOMUX_PAD(0x02B0, 0x0048, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO08__ENET1_1588_EVENT0_IN                             = IOMUX_PAD(0x02B0, 0x0048, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO08__PWM1_OUT                                         = IOMUX_PAD(0x02B0, 0x0048, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO08__USDHC2_RESET_B                                   = IOMUX_PAD(0x02B0, 0x0048, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO08__CCMSRCGPCMIX_WAIT                                = IOMUX_PAD(0x02B0, 0x0048, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO09__GPIO1_IO9                                        = IOMUX_PAD(0x02B4, 0x004C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO09__ENET1_1588_EVENT0_OUT                            = IOMUX_PAD(0x02B4, 0x004C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO09__PWM2_OUT                                         = IOMUX_PAD(0x02B4, 0x004C, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO09__USDHC3_RESET_B                                   = IOMUX_PAD(0x02B4, 0x004C, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO09__SDMA2_EXT_EVENT0                                 = IOMUX_PAD(0x02B4, 0x004C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO09__CCMSRCGPCMIX_STOP                                = IOMUX_PAD(0x02B4, 0x004C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO10__GPIO1_IO10                                       = IOMUX_PAD(0x02B8, 0x0050, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO10__USB1_OTG_ID                                      = IOMUX_PAD(0x02B8, 0x0050, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO10__PWM3_OUT                                         = IOMUX_PAD(0x02B8, 0x0050, 2, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO11__GPIO1_IO11                                       = IOMUX_PAD(0x02BC, 0x0054, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO11__PWM2_OUT                                         = IOMUX_PAD(0x02BC, 0x0054, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO11__USDHC3_VSELECT                                   = IOMUX_PAD(0x02BC, 0x0054, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO11__CCMSRCGPCMIX_PMIC_READY                          = IOMUX_PAD(0x02BC, 0x0054, 5, 0x04BC, 1, 0),
+	IMX8MN_PAD_GPIO1_IO11__CCMSRCGPCMIX_OUT0                                = IOMUX_PAD(0x02BC, 0x0054, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO12__GPIO1_IO12                                       = IOMUX_PAD(0x02C0, 0x0058, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO12__USB1_OTG_PWR                                     = IOMUX_PAD(0x02C0, 0x0058, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO12__SDMA2_EXT_EVENT1                                 = IOMUX_PAD(0x02C0, 0x0058, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO12__CCMSRCGPCMIX_OUT1                                = IOMUX_PAD(0x02C0, 0x0058, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO13__GPIO1_IO13                                       = IOMUX_PAD(0x02C4, 0x005C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO13__USB1_OTG_OC                                      = IOMUX_PAD(0x02C4, 0x005C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO13__PWM2_OUT                                         = IOMUX_PAD(0x02C4, 0x005C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO13__CCMSRCGPCMIX_OUT2                                = IOMUX_PAD(0x02C4, 0x005C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO14__GPIO1_IO14                                       = IOMUX_PAD(0x02C8, 0x0060, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO14__USDHC3_CD_B                                      = IOMUX_PAD(0x02C8, 0x0060, 4, 0x0598, 2, 0),
+	IMX8MN_PAD_GPIO1_IO14__PWM3_OUT                                         = IOMUX_PAD(0x02C8, 0x0060, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO14__CCMSRCGPCMIX_CLKO1                               = IOMUX_PAD(0x02C8, 0x0060, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_GPIO1_IO15__GPIO1_IO15                                       = IOMUX_PAD(0x02CC, 0x0064, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO15__USDHC3_WP                                        = IOMUX_PAD(0x02CC, 0x0064, 4, 0x05B8, 2, 0),
+	IMX8MN_PAD_GPIO1_IO15__PWM4_OUT                                         = IOMUX_PAD(0x02CC, 0x0064, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_GPIO1_IO15__CCMSRCGPCMIX_CLKO2                               = IOMUX_PAD(0x02CC, 0x0064, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ENET_MDC__ENET1_MDC                                          = IOMUX_PAD(0x02D0, 0x0068, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_MDC__SAI6_TX_DATA0                                      = IOMUX_PAD(0x02D0, 0x0068, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_MDC__PDM_BIT_STREAM3                                    = IOMUX_PAD(0x02D0, 0x0068, 3, 0x0540, 1, 0),
+	IMX8MN_PAD_ENET_MDC__SPDIF1_OUT                                         = IOMUX_PAD(0x02D0, 0x0068, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_MDC__GPIO1_IO16                                         = IOMUX_PAD(0x02D0, 0x0068, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_MDC__USDHC3_STROBE                                      = IOMUX_PAD(0x02D0, 0x0068, 6, 0x059C, 1, 0),
+
+	IMX8MN_PAD_ENET_MDIO__ENET1_MDIO                                        = IOMUX_PAD(0x02D4, 0x006C, 0, 0x04C0, 1, 0),
+	IMX8MN_PAD_ENET_MDIO__SAI6_TX_SYNC                                      = IOMUX_PAD(0x02D4, 0x006C, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_MDIO__PDM_BIT_STREAM2                                   = IOMUX_PAD(0x02D4, 0x006C, 3, 0x053C, 1, 0),
+	IMX8MN_PAD_ENET_MDIO__SPDIF1_IN                                         = IOMUX_PAD(0x02D4, 0x006C, 4, 0x05CC, 1, 0),
+	IMX8MN_PAD_ENET_MDIO__GPIO1_IO17                                        = IOMUX_PAD(0x02D4, 0x006C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_MDIO__USDHC3_DATA5                                      = IOMUX_PAD(0x02D4, 0x006C, 6, 0x0550, 1, 0),
+
+	IMX8MN_PAD_ENET_TD3__ENET1_RGMII_TD3                                    = IOMUX_PAD(0x02D8, 0x0070, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD3__SAI6_TX_BCLK                                       = IOMUX_PAD(0x02D8, 0x0070, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD3__PDM_BIT_STREAM1                                    = IOMUX_PAD(0x02D8, 0x0070, 3, 0x0538, 1, 0),
+	IMX8MN_PAD_ENET_TD3__SPDIF1_EXT_CLK                                     = IOMUX_PAD(0x02D8, 0x0070, 4, 0x0568, 1, 0),
+	IMX8MN_PAD_ENET_TD3__GPIO1_IO18                                         = IOMUX_PAD(0x02D8, 0x0070, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD3__USDHC3_DATA6                                       = IOMUX_PAD(0x02D8, 0x0070, 6, 0x0584, 1, 0),
+
+	IMX8MN_PAD_ENET_TD2__ENET1_RGMII_TD2                                    = IOMUX_PAD(0x02DC, 0x0074, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD2__ENET1_TX_CLK                                       = IOMUX_PAD(0x02DC, 0x0074, 1, 0x05A4, 0, 0),
+	IMX8MN_PAD_ENET_TD2__CCMSRCGPCMIX_ENET_REF_CLK_ROOT                     = IOMUX_PAD(0x02DC, 0x0074, 1, 0x05A4, 0, 0),
+	IMX8MN_PAD_ENET_TD2__SAI6_RX_DATA0                                      = IOMUX_PAD(0x02DC, 0x0074, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD2__PDM_BIT_STREAM3                                    = IOMUX_PAD(0x02DC, 0x0074, 3, 0x0540, 2, 0),
+	IMX8MN_PAD_ENET_TD2__GPIO1_IO19                                         = IOMUX_PAD(0x02DC, 0x0074, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD2__USDHC3_DATA7                                       = IOMUX_PAD(0x02DC, 0x0074, 6, 0x054C, 1, 0),
+
+	IMX8MN_PAD_ENET_TD1__ENET1_RGMII_TD1                                    = IOMUX_PAD(0x02E0, 0x0078, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD1__SAI6_RX_SYNC                                       = IOMUX_PAD(0x02E0, 0x0078, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD1__PDM_BIT_STREAM2                                    = IOMUX_PAD(0x02E0, 0x0078, 3, 0x053C, 2, 0),
+	IMX8MN_PAD_ENET_TD1__GPIO1_IO20                                         = IOMUX_PAD(0x02E0, 0x0078, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD1__USDHC3_CD_B                                        = IOMUX_PAD(0x02E0, 0x0078, 6, 0x0598, 3, 0),
+
+	IMX8MN_PAD_ENET_TD0__ENET1_RGMII_TD0                                    = IOMUX_PAD(0x02E4, 0x007C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD0__SAI6_RX_BCLK                                       = IOMUX_PAD(0x02E4, 0x007C, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD0__PDM_BIT_STREAM1                                    = IOMUX_PAD(0x02E4, 0x007C, 3, 0x0538, 2, 0),
+	IMX8MN_PAD_ENET_TD0__GPIO1_IO21                                         = IOMUX_PAD(0x02E4, 0x007C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TD0__USDHC3_WP                                          = IOMUX_PAD(0x02E4, 0x007C, 6, 0x05B8, 3, 0),
+
+	IMX8MN_PAD_ENET_TX_CTL__ENET1_RGMII_TX_CTL                              = IOMUX_PAD(0x02E8, 0x0080, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TX_CTL__SAI6_MCLK                                       = IOMUX_PAD(0x02E8, 0x0080, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TX_CTL__GPIO1_IO22                                      = IOMUX_PAD(0x02E8, 0x0080, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TX_CTL__USDHC3_DATA0                                    = IOMUX_PAD(0x02E8, 0x0080, 6, 0x05B4, 1, 0),
+
+	IMX8MN_PAD_ENET_TXC__ENET1_RGMII_TXC                                    = IOMUX_PAD(0x02EC, 0x0084, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TXC__ENET1_TX_ER                                        = IOMUX_PAD(0x02EC, 0x0084, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TXC__SAI7_TX_DATA0                                      = IOMUX_PAD(0x02EC, 0x0084, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TXC__GPIO1_IO23                                         = IOMUX_PAD(0x02EC, 0x0084, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_TXC__USDHC3_DATA1                                       = IOMUX_PAD(0x02EC, 0x0084, 6, 0x05B0, 1, 0),
+
+	IMX8MN_PAD_ENET_RX_CTL__ENET1_RGMII_RX_CTL                              = IOMUX_PAD(0x02F0, 0x0088, 0, 0x0574, 0, 0),
+	IMX8MN_PAD_ENET_RX_CTL__SAI7_TX_SYNC                                    = IOMUX_PAD(0x02F0, 0x0088, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RX_CTL__PDM_BIT_STREAM3                                 = IOMUX_PAD(0x02F0, 0x0088, 3, 0x0540, 3, 0),
+	IMX8MN_PAD_ENET_RX_CTL__GPIO1_IO24                                      = IOMUX_PAD(0x02F0, 0x0088, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RX_CTL__USDHC3_DATA2                                    = IOMUX_PAD(0x02F0, 0x0088, 6, 0x05E4, 1, 0),
+
+	IMX8MN_PAD_ENET_RXC__ENET1_RGMII_RXC                                    = IOMUX_PAD(0x02F4, 0x008C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RXC__ENET1_RX_ER                                        = IOMUX_PAD(0x02F4, 0x008C, 1, 0x05C8, 0, 0),
+	IMX8MN_PAD_ENET_RXC__SAI7_TX_BCLK                                       = IOMUX_PAD(0x02F4, 0x008C, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RXC__PDM_BIT_STREAM2                                    = IOMUX_PAD(0x02F4, 0x008C, 3, 0x053C, 3, 0),
+	IMX8MN_PAD_ENET_RXC__GPIO1_IO25                                         = IOMUX_PAD(0x02F4, 0x008C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RXC__USDHC3_DATA3                                       = IOMUX_PAD(0x02F4, 0x008C, 6, 0x05E0, 1, 0),
+
+	IMX8MN_PAD_ENET_RD0__ENET1_RGMII_RD0                                    = IOMUX_PAD(0x02F8, 0x0090, 0, 0x057C, 0, 0),
+	IMX8MN_PAD_ENET_RD0__SAI7_RX_DATA0                                      = IOMUX_PAD(0x02F8, 0x0090, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD0__PDM_BIT_STREAM1                                    = IOMUX_PAD(0x02F8, 0x0090, 3, 0x0538, 3, 0),
+	IMX8MN_PAD_ENET_RD0__GPIO1_IO26                                         = IOMUX_PAD(0x02F8, 0x0090, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD0__USDHC3_DATA4                                       = IOMUX_PAD(0x02F8, 0x0090, 6, 0x0558, 1, 0),
+
+	IMX8MN_PAD_ENET_RD1__ENET1_RGMII_RD1                                    = IOMUX_PAD(0x02FC, 0x0094, 0, 0x0554, 0, 0),
+	IMX8MN_PAD_ENET_RD1__SAI7_RX_SYNC                                       = IOMUX_PAD(0x02FC, 0x0094, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD1__PDM_BIT_STREAM0                                    = IOMUX_PAD(0x02FC, 0x0094, 3, 0x0534, 1, 0),
+	IMX8MN_PAD_ENET_RD1__GPIO1_IO27                                         = IOMUX_PAD(0x02FC, 0x0094, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD1__USDHC3_RESET_B                                     = IOMUX_PAD(0x02FC, 0x0094, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ENET_RD2__ENET1_RGMII_RD2                                    = IOMUX_PAD(0x0300, 0x0098, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD2__SAI7_RX_BCLK                                       = IOMUX_PAD(0x0300, 0x0098, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD2__PDM_CLK                                            = IOMUX_PAD(0x0300, 0x0098, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD2__GPIO1_IO28                                         = IOMUX_PAD(0x0300, 0x0098, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD2__USDHC3_CLK                                         = IOMUX_PAD(0x0300, 0x0098, 6, 0x05A0, 1, 0),
+
+	IMX8MN_PAD_ENET_RD3__ENET1_RGMII_RD3                                    = IOMUX_PAD(0x0304, 0x009C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD3__SAI7_MCLK                                          = IOMUX_PAD(0x0304, 0x009C, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD3__SPDIF1_IN                                          = IOMUX_PAD(0x0304, 0x009C, 3, 0x05CC, 5, 0),
+	IMX8MN_PAD_ENET_RD3__GPIO1_IO29                                         = IOMUX_PAD(0x0304, 0x009C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_ENET_RD3__USDHC3_CMD                                         = IOMUX_PAD(0x0304, 0x009C, 6, 0x05DC, 1, 0),
+
+	IMX8MN_PAD_SD1_CLK__USDHC1_CLK                                          = IOMUX_PAD(0x0308, 0x00A0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_CLK__ENET1_MDC                                           = IOMUX_PAD(0x0308, 0x00A0, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_CLK__UART1_DCE_TX                                        = IOMUX_PAD(0x0308, 0x00A0, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_CLK__UART1_DTE_RX                                        = IOMUX_PAD(0x0308, 0x00A0, 4, 0x04F4, 4, 0),
+	IMX8MN_PAD_SD1_CLK__GPIO2_IO0                                           = IOMUX_PAD(0x0308, 0x00A0, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_CMD__USDHC1_CMD                                          = IOMUX_PAD(0x030C, 0x00A4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_CMD__ENET1_MDIO                                          = IOMUX_PAD(0x030C, 0x00A4, 1, 0x04C0, 3, 0),
+	IMX8MN_PAD_SD1_CMD__UART1_DCE_RX                                        = IOMUX_PAD(0x030C, 0x00A4, 4, 0x04F4, 5, 0),
+	IMX8MN_PAD_SD1_CMD__UART1_DTE_TX                                        = IOMUX_PAD(0x030C, 0x00A4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_CMD__GPIO2_IO1                                           = IOMUX_PAD(0x030C, 0x00A4, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA0__USDHC1_DATA0                                      = IOMUX_PAD(0x0310, 0x00A8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA0__ENET1_RGMII_TD1                                   = IOMUX_PAD(0x0310, 0x00A8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA0__UART1_DCE_RTS_B                                   = IOMUX_PAD(0x0310, 0x00A8, 4, 0x04F0, 4, 0),
+	IMX8MN_PAD_SD1_DATA0__UART1_DTE_CTS_B                                   = IOMUX_PAD(0x0310, 0x00A8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA0__GPIO2_IO2                                         = IOMUX_PAD(0x0310, 0x00A8, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA1__USDHC1_DATA1                                      = IOMUX_PAD(0x0314, 0x00AC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA1__ENET1_RGMII_TD0                                   = IOMUX_PAD(0x0314, 0x00AC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA1__UART1_DCE_CTS_B                                   = IOMUX_PAD(0x0314, 0x00AC, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA1__UART1_DTE_RTS_B                                   = IOMUX_PAD(0x0314, 0x00AC, 4, 0x04F0, 5, 0),
+	IMX8MN_PAD_SD1_DATA1__GPIO2_IO3                                         = IOMUX_PAD(0x0314, 0x00AC, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA2__USDHC1_DATA2                                      = IOMUX_PAD(0x0318, 0x00B0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA2__ENET1_RGMII_RD0                                   = IOMUX_PAD(0x0318, 0x00B0, 1, 0x057C, 1, 0),
+	IMX8MN_PAD_SD1_DATA2__UART2_DCE_TX                                      = IOMUX_PAD(0x0318, 0x00B0, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA2__UART2_DTE_RX                                      = IOMUX_PAD(0x0318, 0x00B0, 4, 0x04FC, 4, 0),
+	IMX8MN_PAD_SD1_DATA2__GPIO2_IO4                                         = IOMUX_PAD(0x0318, 0x00B0, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA3__USDHC1_DATA3                                      = IOMUX_PAD(0x031C, 0x00B4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA3__ENET1_RGMII_RD1                                   = IOMUX_PAD(0x031C, 0x00B4, 1, 0x0554, 1, 0),
+	IMX8MN_PAD_SD1_DATA3__UART2_DCE_RX                                      = IOMUX_PAD(0x031C, 0x00B4, 4, 0x04FC, 5, 0),
+	IMX8MN_PAD_SD1_DATA3__UART2_DTE_TX                                      = IOMUX_PAD(0x031C, 0x00B4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA3__GPIO2_IO5                                         = IOMUX_PAD(0x031C, 0x00B4, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA4__USDHC1_DATA4                                      = IOMUX_PAD(0x0320, 0x00B8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA4__ENET1_RGMII_TX_CTL                                = IOMUX_PAD(0x0320, 0x00B8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA4__I2C1_SCL                                          = IOMUX_PAD(0x0320, 0x00B8, 3, 0x055C, 1, 0),
+	IMX8MN_PAD_SD1_DATA4__UART2_DCE_RTS_B                                   = IOMUX_PAD(0x0320, 0x00B8, 4, 0x04F8, 4, 0),
+	IMX8MN_PAD_SD1_DATA4__UART2_DTE_CTS_B                                   = IOMUX_PAD(0x0320, 0x00B8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA4__GPIO2_IO6                                         = IOMUX_PAD(0x0320, 0x00B8, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA5__USDHC1_DATA5                                      = IOMUX_PAD(0x0324, 0x00BC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA5__ENET1_TX_ER                                       = IOMUX_PAD(0x0324, 0x00BC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA5__I2C1_SDA                                          = IOMUX_PAD(0x0324, 0x00BC, 3, 0x056C, 1, 0),
+	IMX8MN_PAD_SD1_DATA5__UART2_DCE_CTS_B                                   = IOMUX_PAD(0x0324, 0x00BC, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA5__UART2_DTE_RTS_B                                   = IOMUX_PAD(0x0324, 0x00BC, 4, 0x04F8, 5, 0),
+	IMX8MN_PAD_SD1_DATA5__GPIO2_IO7                                         = IOMUX_PAD(0x0324, 0x00BC, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA6__USDHC1_DATA6                                      = IOMUX_PAD(0x0328, 0x00C0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA6__ENET1_RGMII_RX_CTL                                = IOMUX_PAD(0x0328, 0x00C0, 1, 0x0574, 1, 0),
+	IMX8MN_PAD_SD1_DATA6__I2C2_SCL                                          = IOMUX_PAD(0x0328, 0x00C0, 3, 0x05D0, 1, 0),
+	IMX8MN_PAD_SD1_DATA6__UART3_DCE_TX                                      = IOMUX_PAD(0x0328, 0x00C0, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA6__UART3_DTE_RX                                      = IOMUX_PAD(0x0328, 0x00C0, 4, 0x0504, 4, 0),
+	IMX8MN_PAD_SD1_DATA6__GPIO2_IO8                                         = IOMUX_PAD(0x0328, 0x00C0, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_DATA7__USDHC1_DATA7                                      = IOMUX_PAD(0x032C, 0x00C4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA7__ENET1_RX_ER                                       = IOMUX_PAD(0x032C, 0x00C4, 1, 0x05C8, 1, 0),
+	IMX8MN_PAD_SD1_DATA7__I2C2_SDA                                          = IOMUX_PAD(0x032C, 0x00C4, 3, 0x0560, 1, 0),
+	IMX8MN_PAD_SD1_DATA7__UART3_DCE_RX                                      = IOMUX_PAD(0x032C, 0x00C4, 4, 0x0504, 5, 0),
+	IMX8MN_PAD_SD1_DATA7__UART3_DTE_TX                                      = IOMUX_PAD(0x032C, 0x00C4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_DATA7__GPIO2_IO9                                         = IOMUX_PAD(0x032C, 0x00C4, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_RESET_B__USDHC1_RESET_B                                  = IOMUX_PAD(0x0330, 0x00C8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_RESET_B__ENET1_TX_CLK                              = IOMUX_PAD(0x0330, 0x00C8, 1, 0x05A4, 1, 0),
+	IMX8MN_PAD_SD1_RESET_B__CCMSRCGPCMIX_ENET_REF_CLK_ROOT                  = IOMUX_PAD(0x0330, 0x00C8, 1, 0x05A4, 0, 0),
+	IMX8MN_PAD_SD1_RESET_B__I2C3_SCL                                        = IOMUX_PAD(0x0330, 0x00C8, 3, 0x0588, 1, 0),
+	IMX8MN_PAD_SD1_RESET_B__UART3_DCE_RTS_B                                 = IOMUX_PAD(0x0330, 0x00C8, 4, 0x0500, 2, 0),
+	IMX8MN_PAD_SD1_RESET_B__UART3_DTE_CTS_B                                 = IOMUX_PAD(0x0330, 0x00C8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_RESET_B__GPIO2_IO10                                      = IOMUX_PAD(0x0330, 0x00C8, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD1_STROBE__USDHC1_STROBE                                    = IOMUX_PAD(0x0334, 0x00CC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_STROBE__I2C3_SDA                                         = IOMUX_PAD(0x0334, 0x00CC, 3, 0x05BC, 1, 0),
+	IMX8MN_PAD_SD1_STROBE__UART3_DCE_CTS_B                                  = IOMUX_PAD(0x0334, 0x00CC, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD1_STROBE__UART3_DTE_RTS_B                                  = IOMUX_PAD(0x0334, 0x00CC, 4, 0x0500, 3, 0),
+	IMX8MN_PAD_SD1_STROBE__GPIO2_IO11                                       = IOMUX_PAD(0x0334, 0x00CC, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_CD_B__USDHC2_CD_B                                        = IOMUX_PAD(0x0338, 0x00D0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CD_B__GPIO2_IO12                                         = IOMUX_PAD(0x0338, 0x00D0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CD_B__CCMSRCGPCMIX_TESTER_ACK                            = IOMUX_PAD(0x0338, 0x00D0, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_CLK__USDHC2_CLK                                          = IOMUX_PAD(0x033C, 0x00D4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CLK__SAI5_RX_SYNC                                        = IOMUX_PAD(0x033C, 0x00D4, 1, 0x04E4, 1, 0),
+	IMX8MN_PAD_SD2_CLK__ECSPI2_SCLK                                         = IOMUX_PAD(0x033C, 0x00D4, 2, 0x0580, 1, 0),
+	IMX8MN_PAD_SD2_CLK__UART4_DCE_RX                                        = IOMUX_PAD(0x033C, 0x00D4, 3, 0x050C, 4, 0),
+	IMX8MN_PAD_SD2_CLK__UART4_DTE_TX                                        = IOMUX_PAD(0x033C, 0x00D4, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CLK__SAI5_MCLK                                           = IOMUX_PAD(0x033C, 0x00D4, 4, 0x0594, 1, 0),
+	IMX8MN_PAD_SD2_CLK__GPIO2_IO13                                          = IOMUX_PAD(0x033C, 0x00D4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CLK__CCMSRCGPCMIX_OBSERVE0                               = IOMUX_PAD(0x033C, 0x00D4, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_CMD__USDHC2_CMD                                          = IOMUX_PAD(0x0340, 0x00D8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CMD__SAI5_RX_BCLK                                        = IOMUX_PAD(0x0340, 0x00D8, 1, 0x04D0, 1, 0),
+	IMX8MN_PAD_SD2_CMD__ECSPI2_MOSI                                         = IOMUX_PAD(0x0340, 0x00D8, 2, 0x0590, 1, 0),
+	IMX8MN_PAD_SD2_CMD__UART4_DCE_TX                                        = IOMUX_PAD(0x0340, 0x00D8, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CMD__UART4_DTE_RX                                        = IOMUX_PAD(0x0340, 0x00D8, 3, 0x050C, 5, 0),
+	IMX8MN_PAD_SD2_CMD__PDM_CLK                                             = IOMUX_PAD(0x0340, 0x00D8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CMD__GPIO2_IO14                                          = IOMUX_PAD(0x0340, 0x00D8, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_CMD__CCMSRCGPCMIX_OBSERVE1                               = IOMUX_PAD(0x0340, 0x00D8, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_DATA0__USDHC2_DATA0                                      = IOMUX_PAD(0x0344, 0x00DC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA0__SAI5_RX_DATA0                                     = IOMUX_PAD(0x0344, 0x00DC, 1, 0x04D4, 1, 0),
+	IMX8MN_PAD_SD2_DATA0__I2C4_SDA                                          = IOMUX_PAD(0x0344, 0x00DC, 2, 0x058C, 1, 0),
+	IMX8MN_PAD_SD2_DATA0__UART2_DCE_RX                                      = IOMUX_PAD(0x0344, 0x00DC, 3, 0x04FC, 6, 0),
+	IMX8MN_PAD_SD2_DATA0__UART2_DTE_TX                                      = IOMUX_PAD(0x0344, 0x00DC, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA0__PDM_BIT_STREAM0                                   = IOMUX_PAD(0x0344, 0x00DC, 4, 0x0534, 2, 0),
+	IMX8MN_PAD_SD2_DATA0__GPIO2_IO15                                        = IOMUX_PAD(0x0344, 0x00DC, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA0__CCMSRCGPCMIX_OBSERVE2                             = IOMUX_PAD(0x0344, 0x00DC, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_DATA1__USDHC2_DATA1                                      = IOMUX_PAD(0x0348, 0x00E0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA1__SAI5_TX_SYNC                                      = IOMUX_PAD(0x0348, 0x00E0, 1, 0x04EC, 1, 0),
+	IMX8MN_PAD_SD2_DATA1__I2C4_SCL                                          = IOMUX_PAD(0x0348, 0x00E0, 2, 0x05D4, 1, 0),
+	IMX8MN_PAD_SD2_DATA1__UART2_DCE_TX                                      = IOMUX_PAD(0x0348, 0x00E0, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA1__UART2_DTE_RX                                      = IOMUX_PAD(0x0348, 0x00E0, 3, 0x04FC, 7, 0),
+	IMX8MN_PAD_SD2_DATA1__PDM_BIT_STREAM1                                   = IOMUX_PAD(0x0348, 0x00E0, 4, 0x0538, 4, 0),
+	IMX8MN_PAD_SD2_DATA1__GPIO2_IO16                                        = IOMUX_PAD(0x0348, 0x00E0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA1__CCMSRCGPCMIX_WAIT                                 = IOMUX_PAD(0x0348, 0x00E0, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_DATA2__USDHC2_DATA2                                      = IOMUX_PAD(0x034C, 0x00E4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA2__SAI5_TX_BCLK                                      = IOMUX_PAD(0x034C, 0x00E4, 1, 0x04E8, 1, 0),
+	IMX8MN_PAD_SD2_DATA2__ECSPI2_SS0                                        = IOMUX_PAD(0x034C, 0x00E4, 2, 0x0570, 2, 0),
+	IMX8MN_PAD_SD2_DATA2__SPDIF1_OUT                                        = IOMUX_PAD(0x034C, 0x00E4, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA2__PDM_BIT_STREAM2                                   = IOMUX_PAD(0x034C, 0x00E4, 4, 0x053C, 4, 0),
+	IMX8MN_PAD_SD2_DATA2__GPIO2_IO17                                        = IOMUX_PAD(0x034C, 0x00E4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA2__CCMSRCGPCMIX_STOP                                 = IOMUX_PAD(0x034C, 0x00E4, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_DATA3__USDHC2_DATA3                                      = IOMUX_PAD(0x0350, 0x00E8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA3__SAI5_TX_DATA0                                     = IOMUX_PAD(0x0350, 0x00E8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA3__ECSPI2_MISO                                       = IOMUX_PAD(0x0350, 0x00E8, 2, 0x0578, 1, 0),
+	IMX8MN_PAD_SD2_DATA3__SPDIF1_IN                                         = IOMUX_PAD(0x0350, 0x00E8, 3, 0x05CC, 2, 0),
+	IMX8MN_PAD_SD2_DATA3__PDM_BIT_STREAM3                                   = IOMUX_PAD(0x0350, 0x00E8, 4, 0x0540, 4, 0),
+	IMX8MN_PAD_SD2_DATA3__GPIO2_IO18                                        = IOMUX_PAD(0x0350, 0x00E8, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_DATA3__CCMSRCGPCMIX_EARLY_RESET                          = IOMUX_PAD(0x0350, 0x00E8, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_RESET_B__USDHC2_RESET_B                                  = IOMUX_PAD(0x0354, 0x00EC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_RESET_B__GPIO2_IO19                                      = IOMUX_PAD(0x0354, 0x00EC, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_RESET_B__CCMSRCGPCMIX_SYSTEM_RESET                       = IOMUX_PAD(0x0354, 0x00EC, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SD2_WP__USDHC2_WP                                            = IOMUX_PAD(0x0358, 0x00F0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_WP__GPIO2_IO20                                           = IOMUX_PAD(0x0358, 0x00F0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SD2_WP__CORESIGHT_EVENTI                                     = IOMUX_PAD(0x0358, 0x00F0, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_ALE__RAWNAND_ALE                                        = IOMUX_PAD(0x035C, 0x00F4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_ALE__QSPI_A_SCLK                                        = IOMUX_PAD(0x035C, 0x00F4, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_ALE__PDM_BIT_STREAM0                                    = IOMUX_PAD(0x035C, 0x00F4, 3, 0x0534, 3, 0),
+	IMX8MN_PAD_NAND_ALE__UART3_DCE_RX                                       = IOMUX_PAD(0x035C, 0x00F4, 4, 0x0504, 6, 0),
+	IMX8MN_PAD_NAND_ALE__UART3_DTE_TX                                       = IOMUX_PAD(0x035C, 0x00F4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_ALE__GPIO3_IO0                                          = IOMUX_PAD(0x035C, 0x00F4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_ALE__CORESIGHT_TRACE_CLK                                = IOMUX_PAD(0x035C, 0x00F4, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_CE0_B__RAWNAND_CE0_B                                    = IOMUX_PAD(0x0360, 0x00F8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE0_B__QSPI_A_SS0_B                                     = IOMUX_PAD(0x0360, 0x00F8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE0_B__PDM_BIT_STREAM1                                  = IOMUX_PAD(0x0360, 0x00F8, 3, 0x0538, 5, 0),
+	IMX8MN_PAD_NAND_CE0_B__UART3_DCE_TX                                     = IOMUX_PAD(0x0360, 0x00F8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE0_B__UART3_DTE_RX                                     = IOMUX_PAD(0x0360, 0x00F8, 4, 0x0504, 7, 0),
+	IMX8MN_PAD_NAND_CE0_B__GPIO3_IO1                                        = IOMUX_PAD(0x0360, 0x00F8, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE0_B__CORESIGHT_TRACE_CTL                              = IOMUX_PAD(0x0360, 0x00F8, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_CE1_B__RAWNAND_CE1_B                                    = IOMUX_PAD(0x0364, 0x00FC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE1_B__QSPI_A_SS1_B                                     = IOMUX_PAD(0x0364, 0x00FC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE1_B__USDHC3_STROBE                                    = IOMUX_PAD(0x0364, 0x00FC, 2, 0x059C, 0, 0),
+	IMX8MN_PAD_NAND_CE1_B__PDM_BIT_STREAM0                                  = IOMUX_PAD(0x0364, 0x00FC, 3, 0x0534, 4, 0),
+	IMX8MN_PAD_NAND_CE1_B__I2C4_SCL                                         = IOMUX_PAD(0x0364, 0x00FC, 4, 0x05D4, 2, 0),
+	IMX8MN_PAD_NAND_CE1_B__GPIO3_IO2                                        = IOMUX_PAD(0x0364, 0x00FC, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE1_B__CORESIGHT_TRACE0                                 = IOMUX_PAD(0x0364, 0x00FC, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_CE2_B__RAWNAND_CE2_B                                    = IOMUX_PAD(0x0368, 0x0100, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE2_B__QSPI_B_SS0_B                                     = IOMUX_PAD(0x0368, 0x0100, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE2_B__USDHC3_DATA5                                     = IOMUX_PAD(0x0368, 0x0100, 2, 0x0550, 0, 0),
+	IMX8MN_PAD_NAND_CE2_B__PDM_BIT_STREAM1                                  = IOMUX_PAD(0x0368, 0x0100, 3, 0x0538, 6, 0),
+	IMX8MN_PAD_NAND_CE2_B__I2C4_SDA                                         = IOMUX_PAD(0x0368, 0x0100, 4, 0x058C, 2, 0),
+	IMX8MN_PAD_NAND_CE2_B__GPIO3_IO3                                        = IOMUX_PAD(0x0368, 0x0100, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE2_B__CORESIGHT_TRACE1                                 = IOMUX_PAD(0x0368, 0x0100, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_CE3_B__RAWNAND_CE3_B                                    = IOMUX_PAD(0x036C, 0x0104, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE3_B__QSPI_B_SS1_B                                     = IOMUX_PAD(0x036C, 0x0104, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE3_B__USDHC3_DATA6                                     = IOMUX_PAD(0x036C, 0x0104, 2, 0x0584, 0, 0),
+	IMX8MN_PAD_NAND_CE3_B__PDM_BIT_STREAM2                                  = IOMUX_PAD(0x036C, 0x0104, 3, 0x053C, 5, 0),
+	IMX8MN_PAD_NAND_CE3_B__I2C3_SDA                                         = IOMUX_PAD(0x036C, 0x0104, 4, 0x05BC, 2, 0),
+	IMX8MN_PAD_NAND_CE3_B__GPIO3_IO4                                        = IOMUX_PAD(0x036C, 0x0104, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CE3_B__CORESIGHT_TRACE2                                 = IOMUX_PAD(0x036C, 0x0104, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_CLE__RAWNAND_CLE                                        = IOMUX_PAD(0x0370, 0x0108, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CLE__QSPI_B_SCLK                                        = IOMUX_PAD(0x0370, 0x0108, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CLE__USDHC3_DATA7                                       = IOMUX_PAD(0x0370, 0x0108, 2, 0x054C, 0, 0),
+	IMX8MN_PAD_NAND_CLE__GPIO3_IO5                                          = IOMUX_PAD(0x0370, 0x0108, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_CLE__CORESIGHT_TRACE3                                   = IOMUX_PAD(0x0370, 0x0108, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA00__RAWNAND_DATA00                                  = IOMUX_PAD(0x0374, 0x010C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA00__QSPI_A_DATA0                                    = IOMUX_PAD(0x0374, 0x010C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA00__PDM_BIT_STREAM2                                 = IOMUX_PAD(0x0374, 0x010C, 3, 0x053C, 6, 0),
+	IMX8MN_PAD_NAND_DATA00__UART4_DCE_RX                                    = IOMUX_PAD(0x0374, 0x010C, 4, 0x050C, 6, 0),
+	IMX8MN_PAD_NAND_DATA00__UART4_DTE_TX                                    = IOMUX_PAD(0x0374, 0x010C, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA00__GPIO3_IO6                                       = IOMUX_PAD(0x0374, 0x010C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA00__CORESIGHT_TRACE4                                = IOMUX_PAD(0x0374, 0x010C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA01__RAWNAND_DATA01                                  = IOMUX_PAD(0x0378, 0x0110, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA01__QSPI_A_DATA1                                    = IOMUX_PAD(0x0378, 0x0110, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA01__PDM_BIT_STREAM3                                 = IOMUX_PAD(0x0378, 0x0110, 3, 0x0540, 5, 0),
+	IMX8MN_PAD_NAND_DATA01__UART4_DCE_TX                                    = IOMUX_PAD(0x0378, 0x0110, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA01__UART4_DTE_RX                                    = IOMUX_PAD(0x0378, 0x0110, 4, 0x050C, 7, 0),
+	IMX8MN_PAD_NAND_DATA01__GPIO3_IO7                                       = IOMUX_PAD(0x0378, 0x0110, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA01__CORESIGHT_TRACE5                                = IOMUX_PAD(0x0378, 0x0110, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA02__RAWNAND_DATA02                                  = IOMUX_PAD(0x037C, 0x0114, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA02__QSPI_A_DATA2                                    = IOMUX_PAD(0x037C, 0x0114, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA02__USDHC3_CD_B                                     = IOMUX_PAD(0x037C, 0x0114, 2, 0x0598, 0, 0),
+	IMX8MN_PAD_NAND_DATA02__I2C4_SDA                                        = IOMUX_PAD(0x037C, 0x0114, 4, 0x058C, 3, 0),
+	IMX8MN_PAD_NAND_DATA02__GPIO3_IO8                                       = IOMUX_PAD(0x037C, 0x0114, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA02__CORESIGHT_TRACE6                                = IOMUX_PAD(0x037C, 0x0114, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA03__RAWNAND_DATA03                                  = IOMUX_PAD(0x0380, 0x0118, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA03__QSPI_A_DATA3                                    = IOMUX_PAD(0x0380, 0x0118, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA03__USDHC3_WP                                       = IOMUX_PAD(0x0380, 0x0118, 2, 0x05B8, 0, 0),
+	IMX8MN_PAD_NAND_DATA03__GPIO3_IO9                                       = IOMUX_PAD(0x0380, 0x0118, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA03__CORESIGHT_TRACE7                                = IOMUX_PAD(0x0380, 0x0118, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA04__RAWNAND_DATA04                                  = IOMUX_PAD(0x0384, 0x011C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA04__QSPI_B_DATA0                                    = IOMUX_PAD(0x0384, 0x011C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA04__USDHC3_DATA0                                    = IOMUX_PAD(0x0384, 0x011C, 2, 0x05B4, 0, 0),
+	IMX8MN_PAD_NAND_DATA04__GPIO3_IO10                                      = IOMUX_PAD(0x0384, 0x011C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA04__CORESIGHT_TRACE8                                = IOMUX_PAD(0x0384, 0x011C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA05__RAWNAND_DATA05                                  = IOMUX_PAD(0x0388, 0x0120, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA05__QSPI_B_DATA1                                    = IOMUX_PAD(0x0388, 0x0120, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA05__USDHC3_DATA1                                    = IOMUX_PAD(0x0388, 0x0120, 2, 0x05B0, 0, 0),
+	IMX8MN_PAD_NAND_DATA05__GPIO3_IO11                                      = IOMUX_PAD(0x0388, 0x0120, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA05__CORESIGHT_TRACE9                                = IOMUX_PAD(0x0388, 0x0120, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA06__RAWNAND_DATA06                                  = IOMUX_PAD(0x038C, 0x0124, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA06__QSPI_B_DATA2                                    = IOMUX_PAD(0x038C, 0x0124, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA06__USDHC3_DATA2                                    = IOMUX_PAD(0x038C, 0x0124, 2, 0x05E4, 0, 0),
+	IMX8MN_PAD_NAND_DATA06__GPIO3_IO12                                      = IOMUX_PAD(0x038C, 0x0124, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA06__CORESIGHT_TRACE10                               = IOMUX_PAD(0x038C, 0x0124, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DATA07__RAWNAND_DATA07                                  = IOMUX_PAD(0x0390, 0x0128, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA07__QSPI_B_DATA3                                    = IOMUX_PAD(0x0390, 0x0128, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA07__USDHC3_DATA3                                    = IOMUX_PAD(0x0390, 0x0128, 2, 0x05E0, 0, 0),
+	IMX8MN_PAD_NAND_DATA07__GPIO3_IO13                                      = IOMUX_PAD(0x0390, 0x0128, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DATA07__CORESIGHT_TRACE11                               = IOMUX_PAD(0x0390, 0x0128, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_DQS__RAWNAND_DQS                                        = IOMUX_PAD(0x0394, 0x012C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DQS__QSPI_A_DQS                                         = IOMUX_PAD(0x0394, 0x012C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DQS__PDM_CLK                                            = IOMUX_PAD(0x0394, 0x012C, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DQS__I2C3_SCL                                           = IOMUX_PAD(0x0394, 0x012C, 4, 0x0588, 2, 0),
+	IMX8MN_PAD_NAND_DQS__GPIO3_IO14                                         = IOMUX_PAD(0x0394, 0x012C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_DQS__CORESIGHT_TRACE12                                  = IOMUX_PAD(0x0394, 0x012C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_RE_B__RAWNAND_RE_B                                      = IOMUX_PAD(0x0398, 0x0130, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_RE_B__QSPI_B_DQS                                        = IOMUX_PAD(0x0398, 0x0130, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_RE_B__USDHC3_DATA4                                      = IOMUX_PAD(0x0398, 0x0130, 2, 0x0558, 0, 0),
+	IMX8MN_PAD_NAND_RE_B__PDM_BIT_STREAM1                                   = IOMUX_PAD(0x0398, 0x0130, 3, 0x0538, 7, 0),
+	IMX8MN_PAD_NAND_RE_B__GPIO3_IO15                                        = IOMUX_PAD(0x0398, 0x0130, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_RE_B__CORESIGHT_TRACE13                                 = IOMUX_PAD(0x0398, 0x0130, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_READY_B__RAWNAND_READY_B                                = IOMUX_PAD(0x039C, 0x0134, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_READY_B__USDHC3_RESET_B                                 = IOMUX_PAD(0x039C, 0x0134, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_READY_B__PDM_BIT_STREAM3                                = IOMUX_PAD(0x039C, 0x0134, 3, 0x0540, 6, 0),
+	IMX8MN_PAD_NAND_READY_B__I2C3_SCL                                       = IOMUX_PAD(0x039C, 0x0134, 4, 0x0588, 3, 0),
+	IMX8MN_PAD_NAND_READY_B__GPIO3_IO16                                     = IOMUX_PAD(0x039C, 0x0134, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_READY_B__CORESIGHT_TRACE14                              = IOMUX_PAD(0x039C, 0x0134, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_WE_B__RAWNAND_WE_B                                      = IOMUX_PAD(0x03A0, 0x0138, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_WE_B__USDHC3_CLK                                        = IOMUX_PAD(0x03A0, 0x0138, 2  | IOMUX_CONFIG_SION, 0x05A0, 0, 0),
+	IMX8MN_PAD_NAND_WE_B__I2C3_SDA                                          = IOMUX_PAD(0x03A0, 0x0138, 4, 0x05BC, 3, 0),
+	IMX8MN_PAD_NAND_WE_B__GPIO3_IO17                                        = IOMUX_PAD(0x03A0, 0x0138, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_WE_B__CORESIGHT_TRACE15                                 = IOMUX_PAD(0x03A0, 0x0138, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_NAND_WP_B__RAWNAND_WP_B                                      = IOMUX_PAD(0x03A4, 0x013C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_WP_B__USDHC3_CMD                                        = IOMUX_PAD(0x03A4, 0x013C, 2, 0x05DC, 0, 0),
+	IMX8MN_PAD_NAND_WP_B__I2C4_SDA                                          = IOMUX_PAD(0x03A4, 0x013C, 4, 0x058C, 4, 0),
+	IMX8MN_PAD_NAND_WP_B__GPIO3_IO18                                        = IOMUX_PAD(0x03A4, 0x013C, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_NAND_WP_B__CORESIGHT_EVENTO                                  = IOMUX_PAD(0x03A4, 0x013C, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_RXFS__SAI5_RX_SYNC                                      = IOMUX_PAD(0x03A8, 0x0140, 0, 0x04E4, 0, 0),
+	IMX8MN_PAD_SAI5_RXFS__GPIO3_IO19                                        = IOMUX_PAD(0x03A8, 0x0140, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_RXC__SAI5_RX_BCLK                                       = IOMUX_PAD(0x03AC, 0x0144, 0, 0x04D0, 0, 0),
+	IMX8MN_PAD_SAI5_RXC__PDM_CLK                                            = IOMUX_PAD(0x03AC, 0x0144, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI5_RXC__GPIO3_IO20                                         = IOMUX_PAD(0x03AC, 0x0144, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_RXD0__SAI5_RX_DATA0                                     = IOMUX_PAD(0x03B0, 0x0148, 0, 0x04D4, 0, 0),
+	IMX8MN_PAD_SAI5_RXD0__PDM_BIT_STREAM0                                   = IOMUX_PAD(0x03B0, 0x0148, 4, 0x0534, 0, 0),
+	IMX8MN_PAD_SAI5_RXD0__GPIO3_IO21                                        = IOMUX_PAD(0x03B0, 0x0148, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_RXD1__SAI5_RX_DATA1                                     = IOMUX_PAD(0x03B4, 0x014C, 0, 0x04D8, 0, 0),
+	IMX8MN_PAD_SAI5_RXD1__SAI5_TX_SYNC                                      = IOMUX_PAD(0x03B4, 0x014C, 3, 0x04EC, 0, 0),
+	IMX8MN_PAD_SAI5_RXD1__PDM_BIT_STREAM1                                   = IOMUX_PAD(0x03B4, 0x014C, 4, 0x0538, 0, 0),
+	IMX8MN_PAD_SAI5_RXD1__GPIO3_IO22                                        = IOMUX_PAD(0x03B4, 0x014C, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_RXD2__SAI5_RX_DATA2                                     = IOMUX_PAD(0x03B8, 0x0150, 0, 0x04DC, 0, 0),
+	IMX8MN_PAD_SAI5_RXD2__SAI5_TX_BCLK                                      = IOMUX_PAD(0x03B8, 0x0150, 3, 0x04E8, 0, 0),
+	IMX8MN_PAD_SAI5_RXD2__PDM_BIT_STREAM2                                   = IOMUX_PAD(0x03B8, 0x0150, 4, 0x053C, 0, 0),
+	IMX8MN_PAD_SAI5_RXD2__GPIO3_IO23                                        = IOMUX_PAD(0x03B8, 0x0150, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_RXD3__SAI5_RX_DATA3                                     = IOMUX_PAD(0x03BC, 0x0154, 0, 0x04E0, 0, 0),
+	IMX8MN_PAD_SAI5_RXD3__SAI5_TX_DATA0                                     = IOMUX_PAD(0x03BC, 0x0154, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI5_RXD3__PDM_BIT_STREAM3                                   = IOMUX_PAD(0x03BC, 0x0154, 4, 0x0540, 0, 0),
+	IMX8MN_PAD_SAI5_RXD3__GPIO3_IO24                                        = IOMUX_PAD(0x03BC, 0x0154, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI5_MCLK__SAI5_MCLK                                         = IOMUX_PAD(0x03C0, 0x0158, 0, 0x0594, 0, 0),
+	IMX8MN_PAD_SAI5_MCLK__GPIO3_IO25                                        = IOMUX_PAD(0x03C0, 0x0158, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI2_RXFS__SAI2_RX_SYNC                                      = IOMUX_PAD(0x0418, 0x01B0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXFS__SAI5_TX_SYNC                                      = IOMUX_PAD(0x0418, 0x01B0, 1, 0x04EC, 2, 0),
+	IMX8MN_PAD_SAI2_RXFS__SAI5_TX_DATA1                                     = IOMUX_PAD(0x0418, 0x01B0, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXFS__SAI2_RX_DATA1                                     = IOMUX_PAD(0x0418, 0x01B0, 3, 0x05AC, 0, 0),
+	IMX8MN_PAD_SAI2_RXFS__UART1_DCE_TX                                      = IOMUX_PAD(0x0418, 0x01B0, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXFS__UART1_DTE_RX                                      = IOMUX_PAD(0x0418, 0x01B0, 4, 0x04F4, 2, 0),
+	IMX8MN_PAD_SAI2_RXFS__GPIO4_IO21                                        = IOMUX_PAD(0x0418, 0x01B0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXFS__PDM_BIT_STREAM2                                   = IOMUX_PAD(0x0418, 0x01B0, 6, 0x053C, 7, 0),
+
+	IMX8MN_PAD_SAI2_RXC__SAI2_RX_BCLK                                       = IOMUX_PAD(0x041C, 0x01B4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXC__SAI5_TX_BCLK                                       = IOMUX_PAD(0x041C, 0x01B4, 1, 0x04E8, 2, 0),
+	IMX8MN_PAD_SAI2_RXC__UART1_DCE_RX                                       = IOMUX_PAD(0x041C, 0x01B4, 4, 0x04F4, 3, 0),
+	IMX8MN_PAD_SAI2_RXC__UART1_DTE_TX                                       = IOMUX_PAD(0x041C, 0x01B4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXC__GPIO4_IO22                                         = IOMUX_PAD(0x041C, 0x01B4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXC__PDM_BIT_STREAM1                                    = IOMUX_PAD(0x041C, 0x01B4, 6, 0x0538, 8, 0),
+
+	IMX8MN_PAD_SAI2_RXD0__SAI2_RX_DATA0                                     = IOMUX_PAD(0x0420, 0x01B8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXD0__SAI5_TX_DATA0                                     = IOMUX_PAD(0x0420, 0x01B8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXD0__SAI2_TX_DATA1                                     = IOMUX_PAD(0x0420, 0x01B8, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXD0__UART1_DCE_RTS_B                                   = IOMUX_PAD(0x0420, 0x01B8, 4, 0x04F0, 2, 0),
+	IMX8MN_PAD_SAI2_RXD0__UART1_DTE_CTS_B                                   = IOMUX_PAD(0x0420, 0x01B8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXD0__GPIO4_IO23                                        = IOMUX_PAD(0x0420, 0x01B8, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_RXD0__PDM_BIT_STREAM3                                   = IOMUX_PAD(0x0420, 0x01B8, 6, 0x0540, 7, 0),
+
+	IMX8MN_PAD_SAI2_TXFS__SAI2_TX_SYNC                                      = IOMUX_PAD(0x0424, 0x01BC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXFS__SAI5_TX_DATA1                                     = IOMUX_PAD(0x0424, 0x01BC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXFS__SAI2_TX_DATA1                                     = IOMUX_PAD(0x0424, 0x01BC, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXFS__UART1_DCE_CTS_B                                   = IOMUX_PAD(0x0424, 0x01BC, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXFS__UART1_DTE_RTS_B                                   = IOMUX_PAD(0x0424, 0x01BC, 4, 0x04F0, 3, 0),
+	IMX8MN_PAD_SAI2_TXFS__GPIO4_IO24                                        = IOMUX_PAD(0x0424, 0x01BC, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXFS__PDM_BIT_STREAM2                                   = IOMUX_PAD(0x0424, 0x01BC, 6, 0x053C, 8, 0),
+
+	IMX8MN_PAD_SAI2_TXC__SAI2_TX_BCLK                                       = IOMUX_PAD(0x0428, 0x01C0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXC__SAI5_TX_DATA2                                      = IOMUX_PAD(0x0428, 0x01C0, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXC__GPIO4_IO25                                         = IOMUX_PAD(0x0428, 0x01C0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXC__PDM_BIT_STREAM1                                    = IOMUX_PAD(0x0428, 0x01C0, 6, 0x0538, 9, 0),
+
+	IMX8MN_PAD_SAI2_TXD0__SAI2_TX_DATA0                                     = IOMUX_PAD(0x042C, 0x01C4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXD0__SAI5_TX_DATA3                                     = IOMUX_PAD(0x042C, 0x01C4, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXD0__GPIO4_IO26                                        = IOMUX_PAD(0x042C, 0x01C4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_TXD0__CCMSRCGPCMIX_BOOT_MODE4                           = IOMUX_PAD(0x042C, 0x01C4, 6, 0x0540, 8, 0),
+
+	IMX8MN_PAD_SAI2_MCLK__SAI2_MCLK                                         = IOMUX_PAD(0x0430, 0x01C8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_MCLK__SAI5_MCLK                                         = IOMUX_PAD(0x0430, 0x01C8, 1, 0x0594, 2, 0),
+	IMX8MN_PAD_SAI2_MCLK__GPIO4_IO27                                        = IOMUX_PAD(0x0430, 0x01C8, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI2_MCLK__SAI3_MCLK                                         = IOMUX_PAD(0x0430, 0x01C8, 6, 0x05C0, 1, 0),
+
+	IMX8MN_PAD_SAI3_RXFS__SAI3_RX_SYNC                                      = IOMUX_PAD(0x0434, 0x01CC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXFS__GPT1_CAPTURE1                                     = IOMUX_PAD(0x0434, 0x01CC, 1, 0x05F0, 0, 0),
+	IMX8MN_PAD_SAI3_RXFS__SAI5_RX_SYNC                                      = IOMUX_PAD(0x0434, 0x01CC, 2, 0x04E4, 2, 0),
+	IMX8MN_PAD_SAI3_RXFS__SAI3_RX_DATA1                                     = IOMUX_PAD(0x0434, 0x01CC, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXFS__SPDIF1_IN                                         = IOMUX_PAD(0x0434, 0x01CC, 4, 0x05CC, 3, 0),
+	IMX8MN_PAD_SAI3_RXFS__GPIO4_IO28                                        = IOMUX_PAD(0x0434, 0x01CC, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXFS__PDM_BIT_STREAM0                                   = IOMUX_PAD(0x0434, 0x01CC, 6, 0x0534, 5, 0),
+
+	IMX8MN_PAD_SAI3_RXC__SAI3_RX_BCLK                                       = IOMUX_PAD(0x0438, 0x01D0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXC__GPT1_CLK                                           = IOMUX_PAD(0x0438, 0x01D0, 1, 0x05E8, 0, 0),
+	IMX8MN_PAD_SAI3_RXC__SAI5_RX_BCLK                                       = IOMUX_PAD(0x0438, 0x01D0, 2, 0x04D0, 2, 0),
+	IMX8MN_PAD_SAI3_RXC__SAI2_RX_DATA1                                      = IOMUX_PAD(0x0438, 0x01D0, 3, 0x05AC, 2, 0),
+	IMX8MN_PAD_SAI3_RXC__UART2_DCE_CTS_B                                    = IOMUX_PAD(0x0438, 0x01D0, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXC__UART2_DTE_RTS_B                                    = IOMUX_PAD(0x0438, 0x01D0, 4, 0x04F8, 2, 0),
+	IMX8MN_PAD_SAI3_RXC__GPIO4_IO29                                         = IOMUX_PAD(0x0438, 0x01D0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXC__PDM_CLK                                            = IOMUX_PAD(0x0438, 0x01D0, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI3_RXD__SAI3_RX_DATA0                                      = IOMUX_PAD(0x043C, 0x01D4, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXD__GPT1_COMPARE1                                      = IOMUX_PAD(0x043C, 0x01D4, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXD__SAI5_RX_DATA0                                      = IOMUX_PAD(0x043C, 0x01D4, 2, 0x04D4, 2, 0),
+	IMX8MN_PAD_SAI3_RXD__SAI3_TX_DATA1                                      = IOMUX_PAD(0x043C, 0x01D4, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXD__UART2_DCE_RTS_B                                    = IOMUX_PAD(0x043C, 0x01D4, 4, 0x04F8, 3, 0),
+	IMX8MN_PAD_SAI3_RXD__UART2_DTE_CTS_B                                    = IOMUX_PAD(0x043C, 0x01D4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXD__GPIO4_IO30                                         = IOMUX_PAD(0x043C, 0x01D4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_RXD__PDM_BIT_STREAM1                                    = IOMUX_PAD(0x043C, 0x01D4, 6, 0x0538, 10, 0),
+
+	IMX8MN_PAD_SAI3_TXFS__SAI3_TX_SYNC                                      = IOMUX_PAD(0x0440, 0x01D8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXFS__GPT1_CAPTURE2                                     = IOMUX_PAD(0x0440, 0x01D8, 1, 0x05EC, 0, 0),
+	IMX8MN_PAD_SAI3_TXFS__SAI5_RX_DATA1                                     = IOMUX_PAD(0x0440, 0x01D8, 2, 0x04D8, 1, 0),
+	IMX8MN_PAD_SAI3_TXFS__SAI3_TX_DATA1                                     = IOMUX_PAD(0x0440, 0x01D8, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXFS__UART2_DCE_RX                                      = IOMUX_PAD(0x0440, 0x01D8, 4, 0x04FC, 2, 0),
+	IMX8MN_PAD_SAI3_TXFS__UART2_DTE_TX                                      = IOMUX_PAD(0x0440, 0x01D8, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXFS__GPIO4_IO31                                        = IOMUX_PAD(0x0440, 0x01D8, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXFS__PDM_BIT_STREAM3                                   = IOMUX_PAD(0x0440, 0x01D8, 6, 0x0540, 9, 0),
+
+	IMX8MN_PAD_SAI3_TXC__SAI3_TX_BCLK                                       = IOMUX_PAD(0x0444, 0x01DC, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXC__GPT1_COMPARE2                                      = IOMUX_PAD(0x0444, 0x01DC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXC__SAI5_RX_DATA2                                      = IOMUX_PAD(0x0444, 0x01DC, 2, 0x04DC, 1, 0),
+	IMX8MN_PAD_SAI3_TXC__SAI2_TX_DATA1                                      = IOMUX_PAD(0x0444, 0x01DC, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXC__UART2_DCE_TX                                       = IOMUX_PAD(0x0444, 0x01DC, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXC__UART2_DTE_RX                                       = IOMUX_PAD(0x0444, 0x01DC, 4, 0x04FC, 3, 0),
+	IMX8MN_PAD_SAI3_TXC__GPIO5_IO0                                          = IOMUX_PAD(0x0444, 0x01DC, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXC__PDM_BIT_STREAM2                                    = IOMUX_PAD(0x0444, 0x01DC, 6, 0x053C, 9, 0),
+
+	IMX8MN_PAD_SAI3_TXD__SAI3_TX_DATA0                                      = IOMUX_PAD(0x0448, 0x01E0, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXD__GPT1_COMPARE3                                      = IOMUX_PAD(0x0448, 0x01E0, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXD__SAI5_RX_DATA3                                      = IOMUX_PAD(0x0448, 0x01E0, 2, 0x04E0, 1, 0),
+	IMX8MN_PAD_SAI3_TXD__SPDIF1_EXT_CLK                                     = IOMUX_PAD(0x0448, 0x01E0, 4, 0x0568, 2, 0),
+	IMX8MN_PAD_SAI3_TXD__GPIO5_IO1                                          = IOMUX_PAD(0x0448, 0x01E0, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_TXD__CCMSRCGPCMIX_BOOT_MODE5                            = IOMUX_PAD(0x0448, 0x01E0, 6, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SAI3_MCLK__SAI3_MCLK                                         = IOMUX_PAD(0x044C, 0x01E4, 0, 0x05C0, 0, 0),
+	IMX8MN_PAD_SAI3_MCLK__PWM4_OUT                                          = IOMUX_PAD(0x044C, 0x01E4, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_MCLK__SAI5_MCLK                                         = IOMUX_PAD(0x044C, 0x01E4, 2, 0x0594, 3, 0),
+	IMX8MN_PAD_SAI3_MCLK__SPDIF1_OUT                                        = IOMUX_PAD(0x044C, 0x01E4, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_MCLK__GPIO5_IO2                                         = IOMUX_PAD(0x044C, 0x01E4, 5, 0x0000, 0, 0),
+	IMX8MN_PAD_SAI3_MCLK__SPDIF1_IN                                         = IOMUX_PAD(0x044C, 0x01E4, 6, 0x05CC, 4, 0),
+
+	IMX8MN_PAD_SPDIF_TX__SPDIF1_OUT                                         = IOMUX_PAD(0x0450, 0x01E8, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_SPDIF_TX__PWM3_OUT                                           = IOMUX_PAD(0x0450, 0x01E8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SPDIF_TX__GPIO5_IO3                                          = IOMUX_PAD(0x0450, 0x01E8, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SPDIF_RX__SPDIF1_IN                                          = IOMUX_PAD(0x0454, 0x01EC, 0, 0x05CC, 0, 0),
+	IMX8MN_PAD_SPDIF_RX__PWM2_OUT                                           = IOMUX_PAD(0x0454, 0x01EC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SPDIF_RX__GPIO5_IO4                                          = IOMUX_PAD(0x0454, 0x01EC, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_SPDIF_EXT_CLK__SPDIF1_EXT_CLK                                = IOMUX_PAD(0x0458, 0x01F0, 0, 0x0568, 0, 0),
+	IMX8MN_PAD_SPDIF_EXT_CLK__PWM1_OUT                                      = IOMUX_PAD(0x0458, 0x01F0, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_SPDIF_EXT_CLK__GPIO5_IO5                                     = IOMUX_PAD(0x0458, 0x01F0, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI1_SCLK__ECSPI1_SCLK                                     = IOMUX_PAD(0x045C, 0x01F4, 0, 0x05D8, 0, 0),
+	IMX8MN_PAD_ECSPI1_SCLK__UART3_DCE_RX                                    = IOMUX_PAD(0x045C, 0x01F4, 1, 0x0504, 0, 0),
+	IMX8MN_PAD_ECSPI1_SCLK__UART3_DTE_TX                                    = IOMUX_PAD(0x045C, 0x01F4, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI1_SCLK__I2C1_SCL                                        = IOMUX_PAD(0x045C, 0x01F4, 2, 0x055C, 2, 0),
+	IMX8MN_PAD_ECSPI1_SCLK__SAI5_RX_SYNC                                    = IOMUX_PAD(0x045C, 0x01F4, 3, 0x04DC, 2, 0),
+	IMX8MN_PAD_ECSPI1_SCLK__GPIO5_IO6                                       = IOMUX_PAD(0x045C, 0x01F4, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI1_MOSI__ECSPI1_MOSI                                     = IOMUX_PAD(0x0460, 0x01F8, 0, 0x05A8, 0, 0),
+	IMX8MN_PAD_ECSPI1_MOSI__UART3_DCE_TX                                    = IOMUX_PAD(0x0460, 0x01F8, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI1_MOSI__UART3_DTE_RX                                    = IOMUX_PAD(0x0460, 0x01F8, 1, 0x0504, 1, 0),
+	IMX8MN_PAD_ECSPI1_MOSI__I2C1_SDA                                        = IOMUX_PAD(0x0460, 0x01F8, 2, 0x056C, 2, 0),
+	IMX8MN_PAD_ECSPI1_MOSI__SAI5_RX_BCLK                                    = IOMUX_PAD(0x0460, 0x01F8, 3, 0x04D0, 3, 0),
+	IMX8MN_PAD_ECSPI1_MOSI__GPIO5_IO7                                       = IOMUX_PAD(0x0460, 0x01F8, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI1_MISO__ECSPI1_MISO                                     = IOMUX_PAD(0x0464, 0x01FC, 0, 0x05C4, 0, 0),
+	IMX8MN_PAD_ECSPI1_MISO__UART3_DCE_CTS_B                                 = IOMUX_PAD(0x0464, 0x01FC, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI1_MISO__UART3_DTE_RTS_B                                 = IOMUX_PAD(0x0464, 0x01FC, 1, 0x0500, 0, 0),
+	IMX8MN_PAD_ECSPI1_MISO__I2C2_SCL                                        = IOMUX_PAD(0x0464, 0x01FC, 2, 0x05D0, 2, 0),
+	IMX8MN_PAD_ECSPI1_MISO__SAI5_RX_DATA0                                   = IOMUX_PAD(0x0464, 0x01FC, 3, 0x04D4, 3, 0),
+	IMX8MN_PAD_ECSPI1_MISO__GPIO5_IO8                                       = IOMUX_PAD(0x0464, 0x01FC, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI1_SS0__ECSPI1_SS0                                       = IOMUX_PAD(0x0468, 0x0200, 0, 0x0564, 0, 0),
+	IMX8MN_PAD_ECSPI1_SS0__UART3_DCE_RTS_B                                  = IOMUX_PAD(0x0468, 0x0200, 1, 0x0500, 1, 0),
+	IMX8MN_PAD_ECSPI1_SS0__UART3_DTE_CTS_B                                  = IOMUX_PAD(0x0468, 0x0200, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI1_SS0__I2C2_SDA                                         = IOMUX_PAD(0x0468, 0x0200, 2, 0x0560, 2, 0),
+	IMX8MN_PAD_ECSPI1_SS0__SAI5_RX_DATA1                                    = IOMUX_PAD(0x0468, 0x0200, 3, 0x04D8, 2, 0),
+	IMX8MN_PAD_ECSPI1_SS0__SAI5_TX_SYNC                                     = IOMUX_PAD(0x0468, 0x0200, 4, 0x04EC, 3, 0),
+	IMX8MN_PAD_ECSPI1_SS0__GPIO5_IO9                                        = IOMUX_PAD(0x0468, 0x0200, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI2_SCLK__ECSPI2_SCLK                                     = IOMUX_PAD(0x046C, 0x0204, 0, 0x0580, 0, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__UART4_DCE_RX                                    = IOMUX_PAD(0x046C, 0x0204, 1, 0x050C, 0, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__UART4_DTE_TX                                    = IOMUX_PAD(0x046C, 0x0204, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__I2C3_SCL                                        = IOMUX_PAD(0x046C, 0x0204, 2, 0x0588, 4, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__SAI5_RX_DATA2                                   = IOMUX_PAD(0x046C, 0x0204, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__SAI5_TX_BCLK                                    = IOMUX_PAD(0x046C, 0x0204, 4, 0x04E8, 3, 0),
+	IMX8MN_PAD_ECSPI2_SCLK__GPIO5_IO10                                      = IOMUX_PAD(0x046C, 0x0204, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI2_MOSI__ECSPI2_MOSI                                     = IOMUX_PAD(0x0470, 0x0208, 0, 0x0590, 0, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__UART4_DCE_TX                                    = IOMUX_PAD(0x0470, 0x0208, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__UART4_DTE_RX                                    = IOMUX_PAD(0x0470, 0x0208, 1, 0x050C, 1, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__I2C3_SDA                                        = IOMUX_PAD(0x0470, 0x0208, 2, 0x05BC, 4, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__SAI5_RX_DATA3                                   = IOMUX_PAD(0x0470, 0x0208, 3, 0x04E0, 2, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__SAI5_TX_DATA0                                   = IOMUX_PAD(0x0470, 0x0208, 4, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI2_MOSI__GPIO5_IO11                                      = IOMUX_PAD(0x0470, 0x0208, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI2_MISO__ECSPI2_MISO                                     = IOMUX_PAD(0x0474, 0x020C, 0, 0x0578, 0, 0),
+	IMX8MN_PAD_ECSPI2_MISO__UART4_DCE_CTS_B                                 = IOMUX_PAD(0x0474, 0x020C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI2_MISO__UART4_DTE_RTS_B                                 = IOMUX_PAD(0x0474, 0x020C, 1, 0x0508, 0, 0),
+	IMX8MN_PAD_ECSPI2_MISO__I2C4_SCL                                        = IOMUX_PAD(0x0474, 0x020C, 2, 0x05D4, 3, 0),
+	IMX8MN_PAD_ECSPI2_MISO__SAI5_MCLK                                       = IOMUX_PAD(0x0474, 0x020C, 3, 0x0594, 4, 0),
+	IMX8MN_PAD_ECSPI2_MISO__GPIO5_IO12                                      = IOMUX_PAD(0x0474, 0x020C, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_ECSPI2_SS0__ECSPI2_SS0                                       = IOMUX_PAD(0x0478, 0x0210, 0, 0x0570, 0, 0),
+	IMX8MN_PAD_ECSPI2_SS0__UART4_DCE_RTS_B                                  = IOMUX_PAD(0x0478, 0x0210, 1, 0x0508, 1, 0),
+	IMX8MN_PAD_ECSPI2_SS0__UART4_DTE_CTS_B                                  = IOMUX_PAD(0x0478, 0x0210, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_ECSPI2_SS0__I2C4_SDA                                         = IOMUX_PAD(0x0478, 0x0210, 2, 0x058C, 5, 0),
+	IMX8MN_PAD_ECSPI2_SS0__GPIO5_IO13                                       = IOMUX_PAD(0x0478, 0x0210, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C1_SCL__I2C1_SCL                                           = IOMUX_PAD(0x047C, 0x0214, 0 | IOMUX_CONFIG_SION, 0x055C, 0, 0),
+	IMX8MN_PAD_I2C1_SCL__ENET1_MDC                                          = IOMUX_PAD(0x047C, 0x0214, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C1_SCL__ECSPI1_SCLK                                        = IOMUX_PAD(0x047C, 0x0214, 3, 0x05D8, 1, 0),
+	IMX8MN_PAD_I2C1_SCL__GPIO5_IO14                                         = IOMUX_PAD(0x047C, 0x0214, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C1_SDA__I2C1_SDA                                           = IOMUX_PAD(0x0480, 0x0218, 0 | IOMUX_CONFIG_SION, 0x056C, 0, 0),
+	IMX8MN_PAD_I2C1_SDA__ENET1_MDIO                                         = IOMUX_PAD(0x0480, 0x0218, 1, 0x04C0, 2, 0),
+	IMX8MN_PAD_I2C1_SDA__ECSPI1_MOSI                                        = IOMUX_PAD(0x0480, 0x0218, 3, 0x05A8, 1, 0),
+	IMX8MN_PAD_I2C1_SDA__GPIO5_IO15                                         = IOMUX_PAD(0x0480, 0x0218, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C2_SCL__I2C2_SCL                                           = IOMUX_PAD(0x0484, 0x021C, 0, 0x05D0, 0, 0),
+	IMX8MN_PAD_I2C2_SCL__ENET1_1588_EVENT1_IN                               = IOMUX_PAD(0x0484, 0x021C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C2_SCL__USDHC3_CD_B                                        = IOMUX_PAD(0x0484, 0x021C, 2, 0x0598, 1, 0),
+	IMX8MN_PAD_I2C2_SCL__ECSPI1_MISO                                        = IOMUX_PAD(0x0484, 0x021C, 3, 0x05C4, 1, 0),
+	IMX8MN_PAD_I2C2_SCL__GPIO5_IO16                                         = IOMUX_PAD(0x0484, 0x021C, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C2_SDA__I2C2_SDA                                           = IOMUX_PAD(0x0488, 0x0220, 0, 0x0560, 0, 0),
+	IMX8MN_PAD_I2C2_SDA__ENET1_1588_EVENT1_OUT                              = IOMUX_PAD(0x0488, 0x0220, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C2_SDA__USDHC3_WP                                          = IOMUX_PAD(0x0488, 0x0220, 2, 0x05B8, 1, 0),
+	IMX8MN_PAD_I2C2_SDA__ECSPI1_SS0                                         = IOMUX_PAD(0x0488, 0x0220, 3, 0x0564, 1, 0),
+	IMX8MN_PAD_I2C2_SDA__GPIO5_IO17                                         = IOMUX_PAD(0x0488, 0x0220, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C3_SCL__I2C3_SCL                                           = IOMUX_PAD(0x048C, 0x0224, 0, 0x0588, 0, 0),
+	IMX8MN_PAD_I2C3_SCL__PWM4_OUT                                           = IOMUX_PAD(0x048C, 0x0224, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C3_SCL__GPT2_CLK                                           = IOMUX_PAD(0x048C, 0x0224, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C3_SCL__ECSPI2_SCLK                                        = IOMUX_PAD(0x048C, 0x0224, 3, 0x0580, 2, 0),
+	IMX8MN_PAD_I2C3_SCL__GPIO5_IO18                                         = IOMUX_PAD(0x048C, 0x0224, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C3_SDA__I2C3_SDA                                           = IOMUX_PAD(0x0490, 0x0228, 0, 0x05BC, 0, 0),
+	IMX8MN_PAD_I2C3_SDA__PWM3_OUT                                           = IOMUX_PAD(0x0490, 0x0228, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C3_SDA__GPT3_CLK                                           = IOMUX_PAD(0x0490, 0x0228, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C3_SDA__ECSPI2_MOSI                                        = IOMUX_PAD(0x0490, 0x0228, 3, 0x0590, 2, 0),
+	IMX8MN_PAD_I2C3_SDA__GPIO5_IO19                                         = IOMUX_PAD(0x0490, 0x0228, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C4_SCL__I2C4_SCL                                           = IOMUX_PAD(0x0494, 0x022C, 0, 0x05D4, 0, 0),
+	IMX8MN_PAD_I2C4_SCL__PWM2_OUT                                           = IOMUX_PAD(0x0494, 0x022C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C4_SCL__ECSPI2_MISO                                        = IOMUX_PAD(0x0494, 0x022C, 3, 0x0578, 2, 0),
+	IMX8MN_PAD_I2C4_SCL__GPIO5_IO20                                         = IOMUX_PAD(0x0494, 0x022C, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_I2C4_SDA__I2C4_SDA                                           = IOMUX_PAD(0x0498, 0x0230, 0, 0x058C, 0, 0),
+	IMX8MN_PAD_I2C4_SDA__PWM1_OUT                                           = IOMUX_PAD(0x0498, 0x0230, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_I2C4_SDA__ECSPI2_SS0                                         = IOMUX_PAD(0x0498, 0x0230, 3, 0x0570, 1, 0),
+	IMX8MN_PAD_I2C4_SDA__GPIO5_IO21                                         = IOMUX_PAD(0x0498, 0x0230, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART1_RXD__UART1_DCE_RX                                      = IOMUX_PAD(0x049C, 0x0234, 0, 0x04F4, 0, 0),
+	IMX8MN_PAD_UART1_RXD__UART1_DTE_TX                                      = IOMUX_PAD(0x049C, 0x0234, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART1_RXD__ECSPI3_SCLK                                       = IOMUX_PAD(0x049C, 0x0234, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART1_RXD__GPIO5_IO22                                        = IOMUX_PAD(0x049C, 0x0234, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART1_TXD__UART1_DCE_TX                                      = IOMUX_PAD(0x04A0, 0x0238, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART1_TXD__UART1_DTE_RX                                      = IOMUX_PAD(0x04A0, 0x0238, 0, 0x04F4, 1, 0),
+	IMX8MN_PAD_UART1_TXD__ECSPI3_MOSI                                       = IOMUX_PAD(0x04A0, 0x0238, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART1_TXD__GPIO5_IO23                                        = IOMUX_PAD(0x04A0, 0x0238, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART2_RXD__UART2_DCE_RX                                      = IOMUX_PAD(0x04A4, 0x023C, 0, 0x04FC, 0, 0),
+	IMX8MN_PAD_UART2_RXD__UART2_DTE_TX                                      = IOMUX_PAD(0x04A4, 0x023C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART2_RXD__ECSPI3_MISO                                       = IOMUX_PAD(0x04A4, 0x023C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART2_RXD__GPT1_COMPARE3                                     = IOMUX_PAD(0x04A4, 0x023C, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_UART2_RXD__GPIO5_IO24                                        = IOMUX_PAD(0x04A4, 0x023C, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART2_TXD__UART2_DCE_TX                                      = IOMUX_PAD(0x04A8, 0x0240, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART2_TXD__UART2_DTE_RX                                      = IOMUX_PAD(0x04A8, 0x0240, 0, 0x04FC, 1, 0),
+	IMX8MN_PAD_UART2_TXD__ECSPI3_SS0                                        = IOMUX_PAD(0x04A8, 0x0240, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART2_TXD__GPT1_COMPARE2                                     = IOMUX_PAD(0x04A8, 0x0240, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_UART2_TXD__GPIO5_IO25                                        = IOMUX_PAD(0x04A8, 0x0240, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART3_RXD__UART3_DCE_RX                                      = IOMUX_PAD(0x04AC, 0x0244, 0, 0x0504, 2, 0),
+	IMX8MN_PAD_UART3_RXD__UART3_DTE_TX                                      = IOMUX_PAD(0x04AC, 0x0244, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART3_RXD__UART1_DCE_CTS_B                                   = IOMUX_PAD(0x04AC, 0x0244, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART3_RXD__UART1_DTE_RTS_B                                   = IOMUX_PAD(0x04AC, 0x0244, 1, 0x04F0, 0, 0),
+	IMX8MN_PAD_UART3_RXD__USDHC3_RESET_B                                    = IOMUX_PAD(0x04AC, 0x0244, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_UART3_RXD__GPT1_CAPTURE2                                     = IOMUX_PAD(0x04AC, 0x0244, 3, 0x05EC, 1, 0),
+	IMX8MN_PAD_UART3_RXD__GPIO5_IO26                                        = IOMUX_PAD(0x04AC, 0x0244, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART3_TXD__UART3_DCE_TX                                      = IOMUX_PAD(0x04B0, 0x0248, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART3_TXD__UART3_DTE_RX                                      = IOMUX_PAD(0x04B0, 0x0248, 0, 0x0504, 3, 0),
+	IMX8MN_PAD_UART3_TXD__UART1_DCE_RTS_B                                   = IOMUX_PAD(0x04B0, 0x0248, 1, 0x04F0, 1, 0),
+	IMX8MN_PAD_UART3_TXD__UART1_DTE_CTS_B                                   = IOMUX_PAD(0x04B0, 0x0248, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART3_TXD__USDHC3_VSELECT                                    = IOMUX_PAD(0x04B0, 0x0248, 2, 0x0000, 0, 0),
+	IMX8MN_PAD_UART3_TXD__GPT1_CLK                                          = IOMUX_PAD(0x04B0, 0x0248, 3, 0x05E8, 1, 0),
+	IMX8MN_PAD_UART3_TXD__GPIO5_IO27                                        = IOMUX_PAD(0x04B0, 0x0248, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART4_RXD__UART4_DCE_RX                                      = IOMUX_PAD(0x04B4, 0x024C, 0, 0x050C, 2, 0),
+	IMX8MN_PAD_UART4_RXD__UART4_DTE_TX                                      = IOMUX_PAD(0x04B4, 0x024C, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART4_RXD__UART2_DCE_CTS_B                                   = IOMUX_PAD(0x04B4, 0x024C, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART4_RXD__UART2_DTE_RTS_B                                   = IOMUX_PAD(0x04B4, 0x024C, 1, 0x04F8, 0, 0),
+	IMX8MN_PAD_UART4_RXD__GPT1_COMPARE1                                     = IOMUX_PAD(0x04B4, 0x024C, 3, 0x0000, 0, 0),
+	IMX8MN_PAD_UART4_RXD__GPIO5_IO28                                        = IOMUX_PAD(0x04B4, 0x024C, 5, 0x0000, 0, 0),
+
+	IMX8MN_PAD_UART4_TXD__UART4_DCE_TX                                      = IOMUX_PAD(0x04B8, 0x0250, 0, 0x0000, 0, 0),
+	IMX8MN_PAD_UART4_TXD__UART4_DTE_RX                                      = IOMUX_PAD(0x04B8, 0x0250, 0, 0x050C, 3, 0),
+	IMX8MN_PAD_UART4_TXD__UART2_DCE_RTS_B                                   = IOMUX_PAD(0x04B8, 0x0250, 1, 0x04F8, 1, 0),
+	IMX8MN_PAD_UART4_TXD__UART2_DTE_CTS_B                                   = IOMUX_PAD(0x04B8, 0x0250, 1, 0x0000, 0, 0),
+	IMX8MN_PAD_UART4_TXD__GPT1_CAPTURE1                                     = IOMUX_PAD(0x04B8, 0x0250, 3, 0x05F0, 1, 0),
+	IMX8MN_PAD_UART4_TXD__GPIO5_IO29                                        = IOMUX_PAD(0x04B8, 0x0250, 5, 0x0000, 0, 0),
+};
+
+
+static inline void imx8mn_setup_pad(iomux_v3_cfg_t pad)
+{
+	void __iomem *iomux = IOMEM(MX8MN_IOMUXC_BASE_ADDR);
+
+	imx8m_setup_pad(iomux, pad);
+}
+
+#endif
diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 7187787f5b79..f0deaf068aed 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -8,6 +8,7 @@ int imx6_esdhc_start_image(int instance);
 int imx6_nand_start_image(void);
 int imx7_esdhc_start_image(int instance);
 int imx8m_esdhc_load_image(int instance, bool start);
+int imx8mn_esdhc_load_image(int instance, bool start);
 int imx8mp_esdhc_load_image(int instance, bool start);
 
 int imx_image_size(void);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 66df4f6dfc74..5a76e7a66381 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -384,6 +384,9 @@ int imx8mp_esdhc_load_image(int instance, bool start)
 	return esdhc_load_image(&host, MX8M_DDR_CSD1_BASE_ADDR,
 				MX8MQ_ATF_BL33_BASE_ADDR, offset, 0, start);
 }
+
+int imx8mn_esdhc_load_image(int instance, bool start)
+	__alias(imx8mp_esdhc_load_image);
 #endif
 
 #ifdef CONFIG_ARCH_LS1046
diff --git a/scripts/imx/imx.h b/scripts/imx/imx.h
index 7a3ac31cd218..77dea7c54a3b 100644
--- a/scripts/imx/imx.h
+++ b/scripts/imx/imx.h
@@ -7,6 +7,7 @@ static inline int cpu_is_mx8m(const struct config_data *data)
 	switch (data->cpu_type) {
 	case IMX_CPU_IMX8MQ:
 	case IMX_CPU_IMX8MM:
+	case IMX_CPU_IMX8MN:
 	case IMX_CPU_IMX8MP:
 		return true;
 	default:
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

