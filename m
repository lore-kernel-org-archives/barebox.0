Delivery-date: Mon, 16 Feb 2026 11:23:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrvl7-002I2F-1u
	for lore@lore.pengutronix.de;
	Mon, 16 Feb 2026 11:23:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vrvl7-0005wU-Na
	for lore@pengutronix.de; Mon, 16 Feb 2026 11:23:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f11JYr45gx9A43GIJPNcXLKMIplxpLkhG/i8d3dLlAA=; b=zlQKd6VzLHrUjHPILfWSt66uq+
	ZD33RuYoJi9EkQtZga6m2ayWG2aiuZdaPgt1JGnydNM7gnC9MX5ngYV0MrB7Qq2fRqPaycf7xL7cJ
	xE8unnG/6EWkSlEPWh91ms8YytHILOK+58qJ6p+pH+kZvrts8/mIUIJvDnqpQX9deUMzG41Y6Ao6g
	y+EJBQoe5LaBa4NyPoKr5EwaKGsOdXWMYeb5nkwsdKCXVZmyO/8RVVgr8RErBf4xTaY42iWODWzXy
	QAAUedUSmQEeKT/l+B7+x9EnWg6nKUEmzjqv7UEjCHCm0kd82TRD3bYbYz7sFpl45Av8/2Wwv+1Z2
	oGptERLg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvkP-00000006L2R-2MaI;
	Mon, 16 Feb 2026 10:22:33 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vrvkM-00000006L0u-2GGv
	for barebox@lists.infradead.org;
	Mon, 16 Feb 2026 10:22:32 +0000
Received: from dude06.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::5c])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <f.pflug@pengutronix.de>)
	id 1vrvkJ-0005lj-Lq; Mon, 16 Feb 2026 11:22:27 +0100
From: Fabian Pflug <f.pflug@pengutronix.de>
Date: Mon, 16 Feb 2026 11:22:09 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260216-v2025-11-0-topic-optee-imx6-start-v3-2-ad981cb16e6e@pengutronix.de>
References: <20260216-v2025-11-0-topic-optee-imx6-start-v3-0-ad981cb16e6e@pengutronix.de>
In-Reply-To: <20260216-v2025-11-0-topic-optee-imx6-start-v3-0-ad981cb16e6e@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Fabian Pflug <f.pflug@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260216_022230_604768_82B61FDE 
X-CRM114-Status: GOOD (  16.10  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 2/2] ARM: i.MX6: load optee in PBL before barebox proper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This patch uses the space in the scratch memory to hand over to OP-TEE
for device-tree overlays. If OP-TEE is configured with CFG_DT_ADDR=,
then it will write its devicetree-overlay into the address and it will
be picked up and applied by barebox.

This allows for generic OP-TEE loading for i.MX6 devices without changes
to the board or lowlevel code.

Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
---
 arch/arm/mach-imx/esdctl.c | 48 +++++++++++++++++++++++++++++++++++++++++++---
 firmware/Kconfig           |  8 ++++++++
 firmware/Makefile          |  1 +
 include/tee/optee.h        |  9 ++++++++-
 4 files changed, 62 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index f8b8089cb0..b72382e98e 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <io.h>
 #include <errno.h>
+#include <firmware.h>
 #include <linux/sizes.h>
 #include <init.h>
 #include <of.h>
@@ -30,6 +31,7 @@
 #include <mach/imx/imx7-regs.h>
 #include <mach/imx/imx9-regs.h>
 #include <mach/imx/scratch.h>
+#include <mach/imx/tzasc.h>
 #include <tee/optee.h>
 
 struct imx_esdctl_data {
@@ -1016,18 +1018,58 @@ void __noreturn imx53_barebox_entry(void *boarddata)
 static void __noreturn
 imx6_barebox_entry(unsigned long membase, void *boarddata)
 {
-	barebox_arm_entry(membase,
-			  imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR)),
-			  boarddata);
+	ulong memsize = imx6_mmdc_sdram_size(IOMEM(MX6_MMDC_P0_BASE_ADDR));
+
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
+	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
+		void *fdto;
+		unsigned int fdto_size;
+		int tee_size;
+		void *tee;
+
+		get_builtin_firmware(imx6_optee_bin, &tee, &tee_size);
+
+		imx_init_scratch_space(membase + memsize, 1);
+		fdto = imx_scratch_get_fdt(&fdto_size);
+		if (IS_ERR(fdto)) {
+			pr_warn("Failed to get FDT scratch mem.\n");
+			fdto = NULL;
+		} else if (IS_NULL(fdto))
+			pr_warn("No space configured for OP-TEE devicetree\n");
+
+		start_optee_early(fdto, tee);
+		if (!IS_ERR(fdto))
+			optee_handoff_overlay(fdto, fdto_size);
+	}
+
+	barebox_arm_entry(membase, memsize, boarddata);
 }
 
 void __noreturn imx6q_barebox_entry(void *boarddata)
 {
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
+	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
+		if (imx6q_tzc380_is_bypassed())
+			panic("TZC380 is bypassed, abort OP-TEE loading\n");
+
+		/* Add early non-secure TZASC region1 to pass DTO */
+		imx6q_tzc380_early_ns_region1();
+	}
+
 	imx6_barebox_entry(MX6_MMDC_PORT01_BASE_ADDR, boarddata);
 }
 
 void __noreturn imx6ul_barebox_entry(void *boarddata)
 {
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX6_OPTEE) &&
+	    IS_ENABLED(CONFIG_PBL_OPTEE) && imx6_can_access_tzasc()) {
+		if (imx6ul_tzc380_is_bypassed())
+			panic("TZC380 is bypassed, abort OP-TEE loading\n");
+
+		/* Add early non-secure TZASC region1 to pass DTO */
+		imx6ul_tzc380_early_ns_region1();
+	}
+
 	imx6_barebox_entry(MX6_MMDC_PORT0_BASE_ADDR, boarddata);
 }
 
diff --git a/firmware/Kconfig b/firmware/Kconfig
index 3aeba3fc35..81ad6b705b 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -49,6 +49,14 @@ config FIRMWARE_IMX93_ATF
 config FIRMWARE_AGILEX5_ATF
 	bool
 
+config FIRMWARE_IMX6_OPTEE
+	bool "install OP-TEE on i.MX6 boards"
+	depends on PBL_OPTEE
+	help
+	  This enables OP-TEE loading and starting on i.MX6. Place the OP-TEE binary
+	  in CONFIG_EXTRA_FIRMWARE_DIR/imx6-optee.bin. If this is enabled, then
+	  the OP-TEE will automatically be loaded during boot.
+
 config FIRMWARE_IMX8MM_OPTEE
 	bool "install OP-TEE on i.MX8MM boards"
 	depends on FIRMWARE_IMX8MM_ATF && PBL_OPTEE
diff --git a/firmware/Makefile b/firmware/Makefile
index 163055554d..fef7b837d1 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -22,6 +22,7 @@ pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMW
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
 pbl-firmware-$(CONFIG_FIRMWARE_IMX93_ATF) += imx93-bl31.bin$(if $(CONFIG_FIRMWARE_IMX93_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_AGILEX5_ATF) += agilex5-bl31.bin
+pbl-firmware-$(CONFIG_FIRMWARE_IMX6_OPTEE) += imx6-optee.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
diff --git a/include/tee/optee.h b/include/tee/optee.h
index 45e042cbcc..535811278d 100644
--- a/include/tee/optee.h
+++ b/include/tee/optee.h
@@ -69,12 +69,19 @@ static inline bool optee_overlay_registered(void)
 
 #ifdef __PBL__
 
-int start_optee_early(void* fdt, void* tee);
+int start_optee_early(void *fdt, void *tee);
 int imx6q_start_optee_early(void *fdt, void *tee, void *data_location,
 			    unsigned int data_location_size);
 int imx6ul_start_optee_early(void *fdt, void *tee, void *data_location,
 			     unsigned int data_location_size);
 
+#else
+
+static inline int start_optee_early(void *fdt, void *tee)
+{
+	return -ENOSYS;
+}
+
 #endif /* __PBL__ */
 
 struct device_node;

-- 
2.47.3



