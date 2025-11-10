Delivery-date: Mon, 10 Nov 2025 21:35:53 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYcD-00HVSs-26
	for lore@lore.pengutronix.de;
	Mon, 10 Nov 2025 21:35:53 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vIYc8-0002MY-8O
	for lore@pengutronix.de; Mon, 10 Nov 2025 21:35:53 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1MjQ4YDe6y3NeSG7ers3CVJx90qiePBYbgsKDO908lc=; b=tzWBVhXHcxQwqRquq/rFiS3x/Q
	fgKiSWll/2tdnU3otjdwtAmxhZU7uVy3D1DJuF4POo4J8Fv/0ktC32mHHrFEqZLzTBh3Ft/4PdKjA
	nEBzlkMbRFwtbgXT3kCFjbYdfir/Jjbgn9goXJxmvGZe4Dt/vvGAxCTIANogElld/c8rKPKppfkfR
	2+oCB3iS2T+6v8heSfGCbM/83wrR5XEuve2TxPdjEJ5a6c4I2RvCi4+lKHsYwAinemWqBfB/PcqhV
	rQtE4R3zVeP+yIjk6BONdou3JpqUUQn82Us4W6PGEyo4RWAB8tftpk5p7MA1ZrDeaigF9B8Qss5e3
	kjksEl1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbO-000000065iw-0nOi;
	Mon, 10 Nov 2025 20:35:02 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vIYbC-000000065SD-2b2N
	for barebox@lists.infradead.org;
	Mon, 10 Nov 2025 20:34:56 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1vIYb8-0001MT-Jj; Mon, 10 Nov 2025 21:34:46 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 10 Nov 2025 21:34:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251110-v2025-09-0-topic-optee-of-handling-v1-6-8f0625ac5471@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
In-Reply-To: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Marco Felsch <m.felsch@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251110_123450_829028_C5755FF8 
X-CRM114-Status: GOOD (  15.17  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 06/23] ARM: i.MX8M: move BL32 setup into
 imx8m_tfa_start_bl31()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Each i.MX8M platform repeated the same pattern for loading the optional
BL32 image because of the firmware name handling and the BL32 location
(end of memory).

The firmware name handling can't be generalized without change the logic
to function-like macros but the rest can be handled within the common
imx8m_tfa_start_bl31() function. While on it the commit adds a sanity
check that the BL32 image size is > 0.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c | 154 ++++++++++++++++++++++--------------------------
 1 file changed, 72 insertions(+), 82 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index dd861f1ad87c98c8baffa2986aeef40eacedc88c..531ded2c57b1f194a2f209161ea086f41fccf58f 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -18,30 +18,77 @@
 #include <mach/imx/ele.h>
 #include <mach/imx/xload.h>
 
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
+	if (tee_bin) {
+		BUG_ON(tee_size <= 0);
+
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
@@ -54,6 +101,7 @@ static __noreturn void imx8m_tfa_start_bl31(const void *tfa_bin, size_t tfa_size
 
 	memcpy(bl31, tfa_bin, tfa_size);
 
+	/* Stack setup and BL31 jump */
 	asm volatile("msr sp_el2, %0" : :
 		     "r" (tfa_dest - 16) :
 		     "cc");
@@ -123,24 +171,6 @@ void imx8mm_load_bl33(void *bl33)
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
 __noreturn void imx8mm_load_and_start_image_via_tfa(void *fdt)
 {
 	__imx8mm_load_and_start_image_via_tfa(fdt, (void *)MX8M_ATF_BL33_BASE_ADDR);
@@ -150,7 +180,8 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MM);
 	imx8mm_init_scratch_space();
@@ -158,25 +189,14 @@ __noreturn void __imx8mm_load_and_start_image_via_tfa(void *fdt, void *bl33)
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
@@ -224,7 +244,8 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MP);
 	imx8mp_init_scratch_space();
@@ -232,25 +253,14 @@ __noreturn void __imx8mp_load_and_start_image_via_tfa(void *fdt, void *bl33)
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
@@ -298,7 +308,8 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MN);
 	imx8mn_init_scratch_space();
@@ -306,25 +317,14 @@ __noreturn void __imx8mn_load_and_start_image_via_tfa(void *fdt, void *bl33)
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
@@ -366,7 +366,8 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
 {
 	const void *bl31;
 	size_t bl31_size;
-	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
+	void *bl32 = NULL;
+	size_t bl32_size = 0;
 
 	imx_set_cpu_type(IMX_CPU_IMX8MQ);
 	imx8mq_init_scratch_space();
@@ -374,25 +375,14 @@ __noreturn void __imx8mq_load_and_start_image_via_tfa(void *fdt, void *bl33)
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



