Delivery-date: Wed, 11 Feb 2026 23:42:12 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuR-000gF6-1I
	for lore@lore.pengutronix.de;
	Wed, 11 Feb 2026 23:42:12 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vqIuQ-0005Ea-JA
	for lore@pengutronix.de; Wed, 11 Feb 2026 23:42:12 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1wScaE3/c4NCrtwduQlNuyD/RbMzytesvuOL46BuiTI=; b=urb1hcv5OApVIC5cnpKzR6JOWB
	wTmMESEhsE0L6/8BghMUJt9I4eZlvIFaQaJYxx8yGHeIs/tPAg3y0SAPRIh7vQsu5CTR4bBz2I+Vn
	ToBiyMqMAk1Ao8zCbeS/xP+T+OsYdOA/D88bNyQ5uyxqT04Lvl1YzmzASX/2EP3wcNG8dXOm2h4H8
	hC2Kq3EGHKBEXnP3HRaI8jIjFOxcfCfgUkkOO1TYt8yce3CIenUaaUkloW1YuLVDPR5PpB/dxmYqD
	I2GOVoFs5y8LkRg3+5m4RntNSyErpZodAf1Jey82v8kG6ZjzEeTzefARE9/xsYyq3gydYnfF17fcp
	b/6cY+fw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqItn-000000018vW-0jVH;
	Wed, 11 Feb 2026 22:41:31 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vqIte-000000018ne-2m42
	for barebox@lists.infradead.org;
	Wed, 11 Feb 2026 22:41:28 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vqItb-0004Xa-27; Wed, 11 Feb 2026 23:41:19 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Feb 2026 23:41:13 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260211-v2025-09-0-topic-optee-of-handling-v3-2-dd83358ae624@pengutronix.de>
References: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
In-Reply-To: <20260211-v2025-09-0-topic-optee-of-handling-v3-0-dd83358ae624@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260211_144122_855967_0692F127 
X-CRM114-Status: GOOD (  14.35  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 02/14] ARM: i.MX8M: move BL32 setup into
 imx8m_tfa_start_bl31()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Each i.MX8M platform repeated the same pattern for loading the optional
BL32 image because of the firmware name handling and the BL32 location
(end of memory).

The firmware name handling can't be generalized without change the logic
to function-like macros but the rest can be handled within the common
imx8m_tfa_start_bl31() function.

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 153 ++++++++++++++++++++++--------------------------
 1 file changed, 70 insertions(+), 83 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index a8fc017fb6c86b807aef465226808144514c28f7..a7ec09ea7e9a90e3af7c01126bb6da9626d2d09d 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -19,30 +19,75 @@
 #include <mach/imx/xload.h>
 #include <mach/imx/snvs.h>
 
+static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32_size)
+{
+	struct optee_header *hdr = *bl32_image;
+	u64 membase;
+
+	if (optee_verify_header(hdr))
+		return;
+
+	imx_scratch_save_optee_hdr(hdr);
+
+	membase = (u64)hdr->init_load_addr_hi << 32;
+	membase |= hdr->init_load_addr_lo;
+
+	*bl32 = (void *)membase;
+	*bl32_size -= sizeof(*hdr);
+	*bl32_image += sizeof(*hdr);
+}
+
 /**
  * imx8m_tfa_start_bl31 - Load TF-A BL31 blob and transfer control to it
  *
  * @tfa:	Pointer to the BL31 blob
  * @tfa_size:	Size of the BL31 blob
  * @tfa_dest:	Place where the BL31 is copied to and executed
+ * @tee:	Pointer to the optional BL32 blob
+ * @tee_size:	Size of the optional BL32 blob
  *
  * This function:
  *
- *     1. Copies built-in BL31 blob to an address i.MX8M's BL31
+ *     1. Copies built-in BL32 blob (if any) to the well-known OP-TEE address
+ *        (end of RAM) or the address specified via the OP-TEE v2 header if
+ *        found.
+ *
+ *     2. Copies built-in BL31 blob to an address i.MX8M's BL31
  *        expects to be placed (TF-A v2.8+ is position-independent)
  *
- *     2. Sets up temporary stack pointer for EL2, which is execution
+ *     3. Sets up temporary stack pointer for EL2, which is execution
  *        level that BL31 will drop us off at after it completes its
  *        initialization routine
  *
- *     3. Transfers control to BL31
+ *     4. Transfers control to BL31
  */
 
-static __noreturn void imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest)
+static __noreturn void
+imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size, void *tfa_dest,
+		     void *tee_bin, size_t tee_size)
 {
 	void __noreturn (*bl31)(void) = tfa_dest;
+	unsigned long endmem;
+	void *bl32 = NULL;
 	int ret;
 
+	endmem = MX8M_DDR_CSD1_BASE_ADDR;
+	if (cpu_is_mx8mn())
+		endmem += imx8m_barebox_earlymem_size(16);
+	else
+		endmem += imx8m_barebox_earlymem_size(32);
+
+	/* TEE (BL32) handling */
+	if (tee_bin && tee_size) {
+		imx8m_tzc380_init();
+
+		bl32 = (void *)arm_mem_optee(endmem);
+		imx_adjust_optee_memory(&bl32, &tee_bin, &tee_size);
+
+		memcpy(bl32, tee_bin, tee_size);
+	}
+
+	/* TF-A (BL31) handling */
 	BUG_ON(tfa_size > MX8M_ATF_BL31_SIZE_LIMIT);
 
 	if (IS_ENABLED(CONFIG_FSL_CAAM_RNG_PBL_INIT)) {
@@ -70,7 +115,7 @@ static __noreturn void imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size
 	 */
 	pr_debug("and jumping with SP: %p\n", tfa_dest - 16);
 
-
+	/* Stack setup and BL31 jump */
 	asm volatile("msr sp_el2, %0" : :
 		     "r" (tfa_dest - 16) :
 		     "cc");
@@ -140,24 +185,6 @@ void imx8mm_load_bl33(void *bl33)
 	memcpy(bl33, __image_start, barebox_pbl_size);
 }
 
-static void imx_adjust_optee_memory(void **bl32, void **bl32_image, size_t *bl32_size)
-{
-	struct optee_header *hdr = *bl32_image;
-	u64 membase;
-
-	if (optee_verify_header(hdr))
-		return;
-
-	imx_scratch_save_optee_hdr(hdr);
-
-	membase = (u64)hdr->init_load_addr_hi << 32;
-	membase |= hdr->init_load_addr_lo;
-
-	*bl32 = (void *)membase;
-	*bl32_size -= sizeof(*hdr);
-	*bl32_image += sizeof(*hdr);
-}
-
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 {
 	__imx8mm_load_and_start_image_via_tfa(NULL, (void *)MX8M_ATF_BL33_BASE_ADDR);
@@ -167,7 +194,8 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MM);
 	imx8mm_init_scratch_space();
@@ -176,25 +204,14 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
-		void *bl32 = (void *)arm_mem_optee(endmem);
-		size_t bl32_size;
-		void *bl32_image;
-
-		imx8m_tzc380_init();
-		get_builtin_firmware_ext(imx8mm_bl32_bin,
-				bl33, &bl32_image,
-				&bl32_size);
-
-		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
-
-		memcpy(bl32, bl32_image, bl32_size);
-
+		get_builtin_firmware_ext(imx8mm_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31, &bl31_size);
 	} else {
 		get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR,
+			     bl32, bl32_size);
 }
 
 void imx8mp_load_bl33(void *bl33)
@@ -242,7 +259,8 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MP);
 	imx8mp_init_scratch_space();
@@ -251,25 +269,14 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
-		void *bl32 = (void *)arm_mem_optee(endmem);
-		size_t bl32_size;
-		void *bl32_image;
-
-		imx8m_tzc380_init();
-		get_builtin_firmware_ext(imx8mp_bl32_bin,
-				bl33, &bl32_image,
-				&bl32_size);
-
-		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
-
-		memcpy(bl32, bl32_image, bl32_size);
-
+		get_builtin_firmware_ext(imx8mp_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31, &bl31_size);
 	} else {
 		get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR,
+			     bl32, bl32_size);
 }
 
 void imx8mn_load_bl33(void *bl33)
@@ -317,7 +324,8 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MN);
 	imx8mn_init_scratch_space();
@@ -326,25 +334,14 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
-		void *bl32 = (void *)arm_mem_optee(endmem);
-		size_t bl32_size;
-		void *bl32_image;
-
-		imx8m_tzc380_init();
-		get_builtin_firmware_ext(imx8mn_bl32_bin,
-				bl33, &bl32_image,
-				&bl32_size);
-
-		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
-
-		memcpy(bl32, bl32_image, bl32_size);
-
+		get_builtin_firmware_ext(imx8mn_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31, &bl31_size);
 	} else {
 		get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR,
+			     bl32, bl32_size);
 }
 
 void imx8mq_load_bl33(void *bl33)
@@ -386,7 +383,8 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MQ);
 	imx8mq_init_scratch_space();
@@ -395,25 +393,14 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 	imx8mq_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
-		void *bl32 = (void *)arm_mem_optee(endmem);
-		size_t bl32_size;
-		void *bl32_image;
-
-		imx8m_tzc380_init();
-		get_builtin_firmware_ext(imx8mq_bl32_bin,
-				bl33, &bl32_image,
-				&bl32_size);
-
-		imx_adjust_optee_memory(&bl32, &bl32_image, &bl32_size);
-
-		memcpy(bl32, bl32_image, bl32_size);
-
+		get_builtin_firmware_ext(imx8mq_bl32_bin, bl33, &bl32, &bl32_size);
 		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31, &bl31_size);
 	} else {
 		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
 	}
 
-	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
+	imx8m_tfa_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR,
+			     bl32, bl32_size);
 }
 
 void __noreturn imx93_load_and_start_image_via_tfa(void)

-- 
2.47.3



