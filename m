Delivery-date: Fri, 19 Jan 2024 15:25:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoV-0079Xi-2B
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 15:25:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQpoV-0003jM-Q2
	for lore@pengutronix.de; Fri, 19 Jan 2024 15:25:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IA/iiVRI+7c0tKPQ9y0doDROtjn4TTo1mMepKHigUbI=; b=AglQIEcs2wwuSLy1JOniU/cGMh
	bcFgexZLvyxMZ3y9r0howOCmya/bxQer2U6Fbny3H1gUuhp2ReU07mn3+jJC4oiFdbQb3U5MosZbx
	cd4bQVGtlwmOnlJrzV4zgdtzi35KHEzXcRDn13EupYWpHaBM4wL26c1G3fgQJGJBr/8UiUSIv/QMk
	gNRn4SRJTv2qCoQh0g0V/rUUblBFLsrPVFpjLQpTMwSZewN6IuGMjX7y4rlKze7HQceXkBQGZhZMr
	zLq94CTB+BwbOVfCGJX/FWuybH4G/Xt/ClI8k6/Rrqeuyx8i484RfGcUKq3StgTZcz4xwIddfaTrd
	OYKdvkdA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnP-005ptv-0q;
	Fri, 19 Jan 2024 14:24:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQpnE-005pnX-2W
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 14:24:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-0003PN-NM; Fri, 19 Jan 2024 15:24:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-000wIL-AX; Fri, 19 Jan 2024 15:24:15 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rQpn5-00DczL-0i;
	Fri, 19 Jan 2024 15:24:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 19 Jan 2024 15:24:13 +0100
Message-Id: <20240119142413.3206832-8-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240119142413.3206832-1-s.hauer@pengutronix.de>
References: <20240119142413.3206832-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_062425_000158_DEDBDA2E 
X-CRM114-Status: GOOD (  23.84  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 7/7] ARM: i.MX93: Add OP-TEE support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This enables OP-TEE support for i.MX93. This is done in a way very
similar to how it's done on i.MX8M.
One major difference is that the i.MX93 needs a RAM firmware for the
EdgeLock secure enclave. Without it OP-TEE doesn't work properly.
The firmware can be integrated into the i.MX93 image where the ROM
picks it up automatically. The firmware image is SoC revision specific
though, so we load the firmware during runtime to avoid having to
create a barebox image for each SoC revision.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c    | 23 ++++++++++++-
 arch/arm/mach-imx/ele.c    | 67 ++++++++++++++++++++++++++++++++++++++
 arch/arm/mach-imx/esdctl.c |  1 +
 arch/arm/mach-imx/imx9.c   | 15 +++++++++
 firmware/Kconfig           | 12 +++++++
 firmware/Makefile          |  5 ++-
 include/mach/imx/ele.h     |  5 +++
 7 files changed, 126 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 148de8f448..fad9b7954f 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -14,6 +14,7 @@
 #include <soc/fsl/fsl_udc.h>
 #include <soc/fsl/caam.h>
 #include <tee/optee.h>
+#include <mach/imx/ele.h>
 
 /**
  * imx8m_atf_load_bl31 - Load ATF BL31 blob and transfer control to it
@@ -383,6 +384,8 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 	void __noreturn (*bl31)(void) = (void *)atf_dest;
 	const void *tfa;
 	size_t tfa_size;
+	void *bl33 = (void *)MX93_ATF_BL33_BASE_ADDR;
+	unsigned long endmem = MX9_DDR_CSD1_BASE_ADDR + imx9_ddrc_sdram_size();
 
 	imx93_init_scratch_space(true);
 
@@ -402,7 +405,25 @@ void __noreturn imx93_load_and_start_image_via_tfa(void)
 	 */
 	memcpy((void *)MX93_ATF_BL33_BASE_ADDR, __image_start, ALIGN(barebox_pbl_size, 1024));
 
-	get_builtin_firmware(imx93_bl31_bin, &tfa, &tfa_size);
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX93_OPTEE)) {
+		void *bl32 = (void *)arm_mem_optee(endmem);
+		size_t bl32_size;
+		void *bl32_image;
+
+		imx93_ele_load_fw(bl33);
+
+		get_builtin_firmware_ext(imx93_bl32_bin,
+				bl33, &bl32_image,
+				&bl32_size);
+
+		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
+
+		memcpy(bl32, bl32_image, bl32_size);
+
+		get_builtin_firmware(imx93_bl31_bin_optee, &tfa, &tfa_size);
+	} else {
+		get_builtin_firmware(imx93_bl31_bin, &tfa, &tfa_size);
+	}
 
 	memcpy(bl31, tfa, tfa_size);
 
diff --git a/arch/arm/mach-imx/ele.c b/arch/arm/mach-imx/ele.c
index 70cfc9ba81..eaae784c94 100644
--- a/arch/arm/mach-imx/ele.c
+++ b/arch/arm/mach-imx/ele.c
@@ -9,6 +9,8 @@
 #include <mach/imx/ele.h>
 #include <mach/imx/imx9-regs.h>
 #include <linux/iopoll.h>
+#include <firmware.h>
+#include <linux/bitfield.h>
 
 #define MU_SR_TE0_MASK		BIT(0)
 #define MU_SR_RF0_MASK		BIT(0)
@@ -142,6 +144,71 @@ int ele_call(struct ele_msg *msg, bool get_response)
 	return imx9_s3mua_call(msg, get_response);
 }
 
+int ele_get_info(struct ele_get_info_data *info)
+{
+        struct ele_msg msg = {
+		.version = ELE_VERSION,
+		.tag = ELE_CMD_TAG,
+		.size = 4,
+		.command = ELE_GET_INFO_REQ,
+		.data = {
+			upper_32_bits((unsigned long)info),
+			lower_32_bits((unsigned long)info),
+			sizeof(struct ele_get_info_data),
+		},
+	};
+	int ret;
+
+	ret = ele_call(&msg, true);
+	if (ret)
+		pr_err("Could not get ELE info: ret %d, response 0x%x\n",
+			ret, msg.data[0]);
+
+	return ret;
+}
+
+int imx93_ele_load_fw(void *bl33)
+{
+	struct ele_get_info_data info = {};
+	struct ele_msg msg = {
+		.version = ELE_VERSION,
+		.tag = ELE_CMD_TAG,
+		.size = 4,
+		.command = ELE_FW_AUTH_REQ,
+	};
+	void *firmware;
+	int size, ret;
+	int rev = 0;
+
+	ele_get_info(&info);
+
+	rev = FIELD_GET(ELE_INFO_SOC_REV, info.soc);
+
+	switch (rev) {
+	case 0xa0:
+		get_builtin_firmware_ext(mx93a0_ahab_container_img, bl33, &firmware, &size);
+		break;
+	case 0xa1:
+		get_builtin_firmware_ext(mx93a1_ahab_container_img, bl33, &firmware, &size);
+		break;
+	default:
+		pr_err("Unknown unhandled SoC revision %2x\n", rev);
+		return -EINVAL;
+	}
+
+	/* Address of the container header */
+	msg.data[0] = lower_32_bits((unsigned long)firmware);
+	/* Actual address of the container header */
+	msg.data[2] = lower_32_bits((unsigned long)firmware);
+
+	ret = ele_call(&msg, true);
+	if (ret)
+		pr_err("Could not start ELE firmware: ret %d, response 0x%x\n",
+			ret, msg.data[0]);
+
+	return 0;
+}
+
 int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response)
 {
 	struct ele_msg msg;
diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 0dbf0f7242..19b630c7e8 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -1048,6 +1048,7 @@ void __noreturn imx7d_barebox_entry(void *boarddata)
 void __noreturn imx93_barebox_entry(void *boarddata)
 {
 	imx93_init_scratch_space(false);
+	optee_set_membase(imx_scratch_get_optee_hdr());
 
 	barebox_arm_entry(MX9_DDR_CSD1_BASE_ADDR,
 			  imx9_ddrc_sdram_size(), boarddata);
diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index 0df4824afd..bfc248aadf 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -7,6 +7,10 @@
 #include <mach/imx/ele.h>
 #include <linux/bitfield.h>
 #include <mach/imx/imx9-regs.h>
+#include <tee/optee.h>
+#include <asm-generic/memory_layout.h>
+#include <asm/optee.h>
+#include <mach/imx/scratch.h>
 
 #define SPEED_GRADING_MASK GENMASK(11, 6)
 #define MARKETING_GRADING_MASK     GENMASK(5, 4)
@@ -169,5 +173,16 @@ int imx93_init(void)
 	imx93_type();
 	imx93_set_arm_clock();
 
+	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
+		static struct of_optee_fixup_data optee_fixup_data = {
+			.shm_size = OPTEE_SHM_SIZE,
+			.method = "smc",
+		};
+
+		optee_set_membase(imx_scratch_get_optee_hdr());
+		of_optee_fixup(of_get_root_node(), &optee_fixup_data);
+		of_register_fixup(of_optee_fixup, &optee_fixup_data);
+	}
+
 	return 0;
 }
diff --git a/firmware/Kconfig b/firmware/Kconfig
index c1731366c6..86a40a9dd1 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -73,6 +73,18 @@ config FIRMWARE_IMX8MQ_OPTEE
 	  in CONFIG_EXTRA_FIRMWARE_DIR/imx8mq-bl32.bin. When this option is enabled then
 	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx8mq-bl31.bin-optee.
 
+config FIRMWARE_IMX93_OPTEE
+	bool "install OP-TEE on i.MX93 boards"
+	depends on FIRMWARE_IMX93_ATF && PBL_OPTEE
+	help
+	  This enables OP-TEE loading and starting on i.MX8MQ. Place the OP-TEE binary
+	  in CONFIG_EXTRA_FIRMWARE_DIR/imx93-bl32.bin. When this option is enabled then
+	  the TF-A binary will be used from CONFIG_EXTRA_FIRMWARE_DIR/imx93-bl31.bin-optee.
+	  Additionally OP-TEE requires a RAM firmware loaded into the ELE. This is expected
+	  in CONFIG_EXTRA_FIRMWARE_DIR/mx93a0-ahab-container.img and
+	  CONFIG_EXTRA_FIRMWARE_DIR/mx93a1-ahab-container.img. You can obtain it from
+	  https://www.nxp.com/lgfiles/NMG/MAD/YOCTO/firmware-ele-imx-0.1.0.bin
+
 config FIRMWARE_CCBV2_OPTEE
 	bool
 	depends on MACH_WEBASTO_CCBV2 && PBL_OPTEE
diff --git a/firmware/Makefile b/firmware/Makefile
index 51d98d54bf..31dd68664e 100644
--- a/firmware/Makefile
+++ b/firmware/Makefile
@@ -16,10 +16,13 @@ pbl-firmware-$(CONFIG_FIRMWARE_IMX8MM_ATF) += imx8mm-bl31.bin$(if $(CONFIG_FIRMW
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MN_ATF) += imx8mn-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MN_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MP_ATF) += imx8mp-bl31.bin$(if $(CONFIG_FIRMWARE_IMX8MP_OPTEE),-optee,)
 pbl-firmware-$(CONFIG_FIRMWARE_IMX8MQ_ATF) += imx8mq-bl31.bin
-pbl-firmware-$(CONFIG_FIRMWARE_IMX93_ATF) += imx93-bl31.bin
+pbl-firmware-$(CONFIG_FIRMWARE_IMX93_ATF) += imx93-bl31.bin$(if $(CONFIG_FIRMWARE_IMX93_OPTEE),-optee,)
 fw-external-$(CONFIG_FIRMWARE_IMX8MM_OPTEE) += imx8mm-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MN_OPTEE) += imx8mn-bl32.bin
 fw-external-$(CONFIG_FIRMWARE_IMX8MP_OPTEE) += imx8mp-bl32.bin
+fw-external-$(CONFIG_FIRMWARE_IMX93_OPTEE) += imx93-bl32.bin \
+					      mx93a0-ahab-container.img \
+					      mx93a1-ahab-container.img
 pbl-firmware-$(CONFIG_ARCH_RK3568) += rk3568-bl31.bin
 pbl-firmware-$(CONFIG_ARCH_RK3568_OPTEE) += rk3568-op-tee.bin
 pbl-firmware-$(CONFIG_ARCH_RK3588) += rk3588-bl31.bin
diff --git a/include/mach/imx/ele.h b/include/mach/imx/ele.h
index 5770878d7d..7e6896be3c 100644
--- a/include/mach/imx/ele.h
+++ b/include/mach/imx/ele.h
@@ -132,10 +132,15 @@ struct ele_get_info_data {
 	u32 state;
 };
 
+#define ELE_INFO_SOC_REV	GENMASK(31, 24)
+
 int ele_call(struct ele_msg *msg, bool get_response);
 
 int ele_read_common_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
 int ele_release_rdc(u8 core_id, u8 xrdc, u32 *response);
 int ele_read_shadow_fuse(u16 fuse_id, u32 *fuse_word, u32 *response);
+int ele_get_info(struct ele_get_info_data *info);
+
+int imx93_ele_load_fw(void *bl33);
 
 #endif
-- 
2.39.2



