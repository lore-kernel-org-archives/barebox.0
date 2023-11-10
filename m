Delivery-date: Fri, 10 Nov 2023 10:48:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1O7Q-005e15-1X
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 10:48:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1O7Q-0007Ly-0w
	for lore@pengutronix.de; Fri, 10 Nov 2023 10:48:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=c0XXg429TjNswlbLpAUdLT2Q4FMzFODYhpQRB4mQJOc=; b=u3I4SWXdMjf5p60E7E+/y+dpzz
	D6arwwlM+q6DhgaLLMmu+C1Di8frV4+IM/2guomK4DmnNFTGS4CwXX0BBx/YHQ1+iY0BTEz0H8Vjt
	enXeZb2MRDpY0Hy2VkJ1W7f8jCcOgpcJRDBdHjNTaBIJ62lT5Vv42PsKyBaH22+t0hJPLgJtTT53O
	W7Xv+0zmewvkYBJ60EeUUCwfOtZUuwxycvDHcfBOPoAGBjDTutNHZIKXbXqopHb1BJoGVcFT5VJxz
	QfbQZizSzFK3CE1IZbqTeU5QHpLvBd3fTXsL4ZmnY8n9wsbgFGVJlBgOwDs7mehnHevyfN057iN3f
	qZyTJHFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1O65-008EAf-2M;
	Fri, 10 Nov 2023 09:46:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1O60-008E90-26
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 09:46:39 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1O5w-00076p-On; Fri, 10 Nov 2023 10:46:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1O5w-007zJO-CF; Fri, 10 Nov 2023 10:46:32 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1O5w-003gL4-13;
	Fri, 10 Nov 2023 10:46:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 10:46:21 +0100
Message-Id: <20231110094622.877614-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_014636_849759_7EE78F0D 
X-CRM114-Status: GOOD (  20.63  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] ARM: i.MX8MQ: Streamline lowlevel startup code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most i.MX8M SoCs have a imx8m[nmp]_load_and_start_image_via_tfa()
function which does all the magic of loading and starting TF-A,
barebox proper and OP-TEE images. Only the i.MX8MQ boards have the
same open coded in the lowlevel code.
Implement a imx8mq_load_and_start_image_via_tfa() and switch the
i.MX8MQ boards over to it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/mnt-reform/lowlevel.c        | 28 +------------
 arch/arm/boards/nxp-imx8mq-evk/lowlevel.c    | 26 +------------
 arch/arm/boards/phytec-som-imx8mq/lowlevel.c | 27 ++-----------
 arch/arm/boards/zii-imx8mq-dev/lowlevel.c    | 20 +---------
 arch/arm/mach-imx/atf.c                      | 41 ++++++++++++++++++++
 include/mach/imx/atf.h                       |  1 +
 include/mach/imx/xload.h                     |  2 +
 7 files changed, 51 insertions(+), 94 deletions(-)

diff --git a/arch/arm/boards/mnt-reform/lowlevel.c b/arch/arm/boards/mnt-reform/lowlevel.c
index 074beba099..a82991c466 100644
--- a/arch/arm/boards/mnt-reform/lowlevel.c
+++ b/arch/arm/boards/mnt-reform/lowlevel.c
@@ -128,33 +128,7 @@ static __noreturn noinline void mnt_reform_start(void)
 
 		imx8mq_ddr_init(&mnt_reform_dram_timing, DRAM_TYPE_LPDDR4);
 
-		imx8mq_get_boot_source(&src, &instance);
-		switch (src) {
-		case BOOTSOURCE_MMC:
-			imx8m_esdhc_load_image(instance, false);
-			break;
-		case BOOTSOURCE_SERIAL:
-			imx8m_esdhc_load_image(1, false);
-			break;
-		default:
-			printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
-			hang();
-		}
-
-		/*
-		 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
-		 * in EL2. Copy the image there, but replace the PBL part of
-		 * that image with ourselves. On a high assurance boot only the
-		 * currently running code is validated and contains the checksum
-		 * for the piggy data, so we need to ensure that we are running
-		 * the same code in DRAM.
-		 */
-		memcpy((void *)MX8M_ATF_BL33_BASE_ADDR,
-		       __image_start, barebox_pbl_size);
-
-		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
-
-		imx8mq_atf_load_bl31(bl31, bl31_size);
+		imx8mq_load_and_start_image_via_tfa();
 	}
 
 	/*
diff --git a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
index 5167c5f606..d1a517dddb 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/lowlevel.c
@@ -65,33 +65,9 @@ static __noreturn noinline void nxp_imx8mq_evk_start(void)
 	 * to DRAM in EL2.
 	 */
 	if (current_el() == 3) {
-		enum bootsource src = BOOTSOURCE_UNKNOWN;
-		int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-		int ret = -ENOTSUPP;
-		size_t bl31_size;
-		const u8 *bl31;
-
 		ddr_init();
 
-		/*
-		 * On completion the TF-A will jump to MX8MQ_ATF_BL33_BASE_ADDR
-		 * in EL2. Copy the image there, but replace the PBL part of
-		 * that image with ourselves. On a high assurance boot only the
-		 * currently running code is validated and contains the checksum
-		 * for the piggy data, so we need to ensure that we are running
-		 * the same code in DRAM.
-		 */
-		imx8mq_get_boot_source(&src, &instance);
-		if (src == BOOTSOURCE_MMC)
-			ret = imx8m_esdhc_load_image(instance, false);
-		BUG_ON(ret);
-
-		memcpy((void *)MX8MQ_ATF_BL33_BASE_ADDR,
-		       __image_start, barebox_pbl_size);
-
-		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
-		imx8mq_atf_load_bl31(bl31, bl31_size);
-		/* not reached */
+		imx8mq_load_and_start_image_via_tfa();
 	}
 
 	/*
diff --git a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
index ba5f987d22..5708c8d754 100644
--- a/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
+++ b/arch/arm/boards/phytec-som-imx8mq/lowlevel.c
@@ -43,22 +43,6 @@ static void setup_uart(void)
 	putc_ll('>');
 }
 
-static void phytec_imx8mq_som_sram_setup(void)
-{
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-	int ret = -ENOTSUPP;
-
-	ddr_init();
-
-	imx8mq_get_boot_source(&src, &instance);
-
-	if (src == BOOTSOURCE_MMC)
-		ret = imx8m_esdhc_load_image(instance, true);
-
-	BUG_ON(ret);
-}
-
 static __noreturn noinline void phytec_phycore_imx8mq_start(void)
 {
 	setup_uart();
@@ -70,7 +54,7 @@ static __noreturn noinline void phytec_phycore_imx8mq_start(void)
 		 * that means DDR needs to be initialized for the
 		 * first time.
 		 */
-		phytec_imx8mq_som_sram_setup();
+		ddr_init();
 	}
 	/*
 	 * Straight from the power-on we are at EL3, so the following
@@ -80,13 +64,8 @@ static __noreturn noinline void phytec_phycore_imx8mq_start(void)
 	 * initialization routine, it is EL2 which means we'll skip
 	 * loadting ATF blob again
 	 */
-	if (current_el() == 3) {
-		const u8 *bl31;
-		size_t bl31_size;
-
-		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
-		imx8mq_atf_load_bl31(bl31, bl31_size);
-	}
+	if (current_el() == 3)
+		imx8mq_load_and_start_image_via_tfa();
 
 	/*
 	 * Standard entry we hit once we initialized both DDR and ATF
diff --git a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
index d8c429d195..42cd05d3f1 100644
--- a/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
+++ b/arch/arm/boards/zii-imx8mq-dev/lowlevel.c
@@ -63,21 +63,10 @@ static __noreturn void ddr_helper_halt(void)
 
 static void zii_imx8mq_dev_sram_setup(void)
 {
-	enum bootsource src = BOOTSOURCE_UNKNOWN;
-	int instance = BOOTSOURCE_INSTANCE_UNKNOWN;
-	int ret = -ENOTSUPP;
-
 	ddr_init();
 
 	if (running_as_ddr_helper())
 		ddr_helper_halt();
-
-	imx8mq_get_boot_source(&src, &instance);
-
-	if (src == BOOTSOURCE_MMC)
-		ret = imx8m_esdhc_load_image(instance, true);
-
-	BUG_ON(ret);
 }
 
 enum zii_platform_imx8mq_type {
@@ -141,13 +130,8 @@ static __noreturn noinline void zii_imx8mq_dev_start(void)
 	 * initialization routine, it is EL2 which means we'll skip
 	 * loadting ATF blob again
 	 */
-	if (current_el() == 3) {
-		const u8 *bl31;
-		size_t bl31_size;
-
-		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
-		imx8mq_atf_load_bl31(bl31, bl31_size);
-	}
+	if (current_el() == 3)
+		imx8mq_load_and_start_image_via_tfa();
 
 	system_type = get_system_type();
 
diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 834a3e3dea..6f9b69ff9a 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -244,3 +244,44 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 	else
 		imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
 }
+
+void imx8mq_load_bl33(void *bl33)
+{
+	enum bootsource src;
+	int instance;
+
+	imx8mn_get_boot_source(&src, &instance);
+	switch (src) {
+	case BOOTSOURCE_MMC:
+		imx8m_esdhc_load_image(instance, false);
+		break;
+	default:
+		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
+		hang();
+	}
+
+
+	/*
+	 * On completion the TF-A will jump to MX8M_ATF_BL33_BASE_ADDR
+	 * in EL2. Copy the image there, but replace the PBL part of
+	 * that image with ourselves. On a high assurance boot only the
+	 * currently running code is validated and contains the checksum
+	 * for the piggy data, so we need to ensure that we are running
+	 * the same code in DRAM.
+	 */
+	memcpy(bl33, __image_start, barebox_pbl_size);
+}
+
+__noreturn void imx8mq_load_and_start_image_via_tfa(void)
+{
+	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
+	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
+
+	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
+	imx8mq_load_bl33(bl33);
+
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
+		imx8m_load_and_start_optee_via_tfa(imx8mq, (void *)arm_mem_optee(endmem), bl33);
+	else
+		imx8mq_load_and_start_tfa(imx8mq_bl31_bin);
+}
diff --git a/include/mach/imx/atf.h b/include/mach/imx/atf.h
index aed294def9..a823562bc7 100644
--- a/include/mach/imx/atf.h
+++ b/include/mach/imx/atf.h
@@ -33,5 +33,6 @@ void __noreturn imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
 #define imx8mm_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mm, fw_name)
 #define imx8mn_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mn, fw_name)
 #define imx8mp_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mp, fw_name)
+#define imx8mq_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mq, fw_name)
 
 #endif
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index a52b1e8ea1..27d2c33855 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -24,10 +24,12 @@ int imx8mp_qspi_load_image(int instance, bool start);
 void imx8mm_load_bl33(void *bl33);
 void imx8mn_load_bl33(void *bl33);
 void imx8mp_load_bl33(void *bl33);
+void imx8mq_load_bl33(void *bl33);
 
 void __noreturn imx8mm_load_and_start_image_via_tfa(void);
 void __noreturn imx8mn_load_and_start_image_via_tfa(void);
 void __noreturn imx8mp_load_and_start_image_via_tfa(void);
+void __noreturn imx8mq_load_and_start_image_via_tfa(void);
 
 int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
 		   u32 ivt_offset, bool start, unsigned int alignment,
-- 
2.39.2



