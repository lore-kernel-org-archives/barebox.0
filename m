Delivery-date: Fri, 10 Nov 2023 10:48:04 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1O7P-005e0i-2n
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 10:48:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1O7P-0007Lp-FF
	for lore@pengutronix.de; Fri, 10 Nov 2023 10:48:04 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=k70RIievCUGo2Cr/SbJqFVf6veZvrjMKK5CVEj/1YCc=; b=QEfrYLW6JwyVXe59w+vp5PV+2d
	NsyuBVxb+xegiBMdvquwkdxKfiQwwWckJbofHzrv6EHBdaHtQ+cSVLRTdHmEM/ZBlCacWfoCeuNPj
	M5NRoFjQdTHqEel59fYI3pfX+8LTEzXsVZFX9MqgLILOKwsdMq8W5bZOMdKBnFAtyL08TwUqpIjlb
	c2AhwznRR0gFo36bpgIlOX5IcAwX+SOxGWCFxjRsZdu2jNsPbaVebkUVUuvy4uiMV4AnbQVd/qGYe
	g74qJ4nCTdI0piOsmz1VJTp/5ysCOW/eWBZzK2aOn4QjDFbmVnh++BdeS1KoUzH5zz6CzMDsmdgMd
	V+D3sQjQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1O64-008EAN-0P;
	Fri, 10 Nov 2023 09:46:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1O60-008E91-22
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 09:46:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1O5w-00076q-Pd; Fri, 10 Nov 2023 10:46:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1O5w-007zJP-D5; Fri, 10 Nov 2023 10:46:32 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1O5w-003gL7-16;
	Fri, 10 Nov 2023 10:46:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 10:46:22 +0100
Message-Id: <20231110094622.877614-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110094622.877614-1-s.hauer@pengutronix.de>
References: <20231110094622.877614-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_014636_846654_5807D829 
X-CRM114-Status: GOOD (  13.54  )
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
Subject: [PATCH 2/2] ARM: i.MX8M: detangle lowlevel code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The i.MX8M lowlevel code uses some macros which take SoC prefix names as
arguments which then expand to SoC specific function names. The result
is hard to follow. Detangle this by open coding the macros. At the
expense of a bit of code duplication we gain readability.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/atf.c  | 116 +++++++++++++++++++++++++++------------
 include/mach/imx/atf.h   |  17 ------
 include/mach/imx/xload.h |  15 -----
 3 files changed, 80 insertions(+), 68 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 6f9b69ff9a..d6d1aa3d68 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -57,26 +57,6 @@ static __noreturn void imx8m_atf_start_bl31(const void *fw, size_t fw_size, void
 	__builtin_unreachable();
 }
 
-__noreturn void imx8mm_atf_load_bl31(const void *fw, size_t fw_size)
-{
-	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
-}
-
-__noreturn void imx8mn_atf_load_bl31(const void *fw, size_t fw_size)
-{
-	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
-}
-
-__noreturn void imx8mp_atf_load_bl31(const void *fw, size_t fw_size)
-{
-	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
-}
-
-__noreturn void imx8mq_atf_load_bl31(const void *fw, size_t fw_size)
-{
-	imx8m_atf_start_bl31(fw, fw_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
-}
-
 void imx8mm_load_bl33(void *bl33)
 {
 	enum bootsource src;
@@ -138,16 +118,32 @@ void imx8mm_load_bl33(void *bl33)
 
 __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 {
+	const void *bl31;
+	size_t bl31_size;
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
 	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
 	imx8mm_load_bl33(bl33);
 
-	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mm, (void *)arm_mem_optee(endmem), bl33);
-	else
-		imx8mm_load_and_start_tfa(imx8mm_bl31_bin);
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
+		void *bl32 = (void *)arm_mem_optee(endmem);
+		size_t bl32_size;
+		void *bl32_image;
+
+		imx8mm_tzc380_init();
+		get_builtin_firmware_ext(imx8mm_bl32_bin,
+				bl33, &bl32_image,
+				&bl32_size);
+
+		memcpy(bl32, bl32_image, bl32_size);
+
+		get_builtin_firmware(imx8mm_bl31_bin_optee, &bl31, &bl31_size);
+	} else {
+		get_builtin_firmware(imx8mm_bl31_bin, &bl31, &bl31_size);
+	}
+
+	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MM_ATF_BL31_BASE_ADDR);
 }
 
 void imx8mp_load_bl33(void *bl33)
@@ -185,16 +181,32 @@ void imx8mp_load_bl33(void *bl33)
 
 __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 {
+	const void *bl31;
+	size_t bl31_size;
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
 	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
 	imx8mp_load_bl33(bl33);
 
-	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mp, (void *)arm_mem_optee(endmem), bl33);
-	else
-		imx8mp_load_and_start_tfa(imx8mp_bl31_bin);
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
+		void *bl32 = (void *)arm_mem_optee(endmem);
+		size_t bl32_size;
+		void *bl32_image;
+
+		imx8mp_tzc380_init();
+		get_builtin_firmware_ext(imx8mp_bl32_bin,
+				bl33, &bl32_image,
+				&bl32_size);
+
+		memcpy(bl32, bl32_image, bl32_size);
+
+		get_builtin_firmware(imx8mp_bl31_bin_optee, &bl31, &bl31_size);
+	} else {
+		get_builtin_firmware(imx8mp_bl31_bin, &bl31, &bl31_size);
+	}
+
+	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MP_ATF_BL31_BASE_ADDR);
 }
 
 
@@ -233,16 +245,32 @@ void imx8mn_load_bl33(void *bl33)
 
 __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 {
+	const void *bl31;
+	size_t bl31_size;
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
 
 	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
 	imx8mn_load_bl33(bl33);
 
-	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mn, (void *)arm_mem_optee(endmem), bl33);
-	else
-		imx8mn_load_and_start_tfa(imx8mn_bl31_bin);
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
+		void *bl32 = (void *)arm_mem_optee(endmem);
+		size_t bl32_size;
+		void *bl32_image;
+
+		imx8mn_tzc380_init();
+		get_builtin_firmware_ext(imx8mn_bl32_bin,
+				bl33, &bl32_image,
+				&bl32_size);
+
+		memcpy(bl32, bl32_image, bl32_size);
+
+		get_builtin_firmware(imx8mn_bl31_bin_optee, &bl31, &bl31_size);
+	} else {
+		get_builtin_firmware(imx8mn_bl31_bin, &bl31, &bl31_size);
+	}
+
+	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MN_ATF_BL31_BASE_ADDR);
 }
 
 void imx8mq_load_bl33(void *bl33)
@@ -274,14 +302,30 @@ void imx8mq_load_bl33(void *bl33)
 
 __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 {
+	const void *bl31;
+	size_t bl31_size;
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
 
 	imx8m_save_bootrom_log((void *)arm_mem_scratch(endmem));
 	imx8mq_load_bl33(bl33);
 
-	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE))
-		imx8m_load_and_start_optee_via_tfa(imx8mq, (void *)arm_mem_optee(endmem), bl33);
-	else
-		imx8mq_load_and_start_tfa(imx8mq_bl31_bin);
+	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
+		void *bl32 = (void *)arm_mem_optee(endmem);
+		size_t bl32_size;
+		void *bl32_image;
+
+		imx8mq_tzc380_init();
+		get_builtin_firmware_ext(imx8mq_bl32_bin,
+				bl33, &bl32_image,
+				&bl32_size);
+
+		memcpy(bl32, bl32_image, bl32_size);
+
+		get_builtin_firmware(imx8mq_bl31_bin_optee, &bl31, &bl31_size);
+	} else {
+		get_builtin_firmware(imx8mq_bl31_bin, &bl31, &bl31_size);
+	}
+
+	imx8m_atf_start_bl31(bl31, bl31_size, (void *)MX8MQ_ATF_BL31_BASE_ADDR);
 }
diff --git a/include/mach/imx/atf.h b/include/mach/imx/atf.h
index a823562bc7..587e778635 100644
--- a/include/mach/imx/atf.h
+++ b/include/mach/imx/atf.h
@@ -18,21 +18,4 @@
 #define MX8MM_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 #define MX8MQ_ATF_BL33_BASE_ADDR	MX8M_ATF_BL33_BASE_ADDR
 
-void __noreturn imx8mm_atf_load_bl31(const void *fw, size_t fw_size);
-void __noreturn imx8mn_atf_load_bl31(const void *fw, size_t fw_size);
-void __noreturn imx8mp_atf_load_bl31(const void *fw, size_t fw_size);
-void __noreturn imx8mq_atf_load_bl31(const void *fw, size_t fw_size);
-
-#define imx8m_load_and_start_tfa(soc,fw_name) do { \
-	size_t __bl31_size; \
-	const u8 *__bl31; \
-	get_builtin_firmware(fw_name, &__bl31, &__bl31_size); \
-	soc##_atf_load_bl31(__bl31, __bl31_size); \
-} while (0)
-
-#define imx8mm_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mm, fw_name)
-#define imx8mn_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mn, fw_name)
-#define imx8mp_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mp, fw_name)
-#define imx8mq_load_and_start_tfa(fw_name) imx8m_load_and_start_tfa(imx8mq, fw_name)
-
 #endif
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 27d2c33855..11c2738c2d 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -53,19 +53,4 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth);
 #define imx8mn_scratch_space() __imx8m_scratch_space(16)
 #define imx8mp_scratch_space() __imx8m_scratch_space(32)
 
-#define imx8m_load_and_start_optee_via_tfa(soc, bl32, bl33)			\
-do {										\
-	size_t bl32_size;							\
-	void *bl32_image;							\
-										\
-	soc##_tzc380_init();							\
-	get_builtin_firmware_ext(soc##_bl32_bin,				\
-				bl33, &bl32_image,				\
-				&bl32_size);					\
-										\
-	memcpy(bl32, bl32_image, bl32_size);					\
-										\
-	soc##_load_and_start_tfa(soc##_bl31_bin_optee);				\
-} while (0)
-
 #endif /* __MACH_IMX_XLOAD_H */
-- 
2.39.2



