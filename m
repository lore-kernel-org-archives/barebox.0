Delivery-date: Thu, 11 Jan 2024 12:50:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta4-00Cw61-1v
	for lore@lore.pengutronix.de;
	Thu, 11 Jan 2024 12:50:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNta2-0002Qk-22
	for lore@pengutronix.de; Thu, 11 Jan 2024 12:50:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dgKv2msjP21jUMGI83JUzZ42mp38L24mmJ7Gi+zAbOQ=; b=bMNukIjA5IjbPFn4VQB6CxVPB2
	8M6wOcU6Cbjd2MHIal5MtJkHPRbMqNy98DKz5ln5nDOODZt/czmwNky3s1br79H0rdyKsCClJK3SI
	xV92kxoi+RUTVFlc2XA5mwcXQdGVOnXjUCaoPFwvdFCKhYAfEeDARs5mcjyj3SYKDiPL7bRB2qJWG
	4ExiW1GpB0kMVUtW0e1zvGDA8Y+eK5z4x4edV+VoPwMmQhjP7kkl4S42u8zQbrTZArklrcHU24nWt
	KFIsDohIS80Ps5+xsOA3ENvtZ/MWu8ekNFZYGujn7MAot0GYt4Df6V6ZVSUCjHcHEChb74zbTgBmt
	68e5xpUQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYj-00HSuE-0V;
	Thu, 11 Jan 2024 11:49:17 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNtYP-00HSai-15
	for barebox@lists.infradead.org;
	Thu, 11 Jan 2024 11:49:04 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rNtYK-000137-Jf
	for barebox@lists.infradead.org; Thu, 11 Jan 2024 12:48:52 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 11 Jan 2024 12:48:27 +0100
Message-Id: <20240111114841.2676939-5-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240111114841.2676939-1-m.felsch@pengutronix.de>
References: <20240111114841.2676939-1-m.felsch@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240111_034857_644066_CE7A921E 
X-CRM114-Status: GOOD (  13.30  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 04/18] ARM: i.MX8M: romapi: refactor saving the bootrom log
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Saving the bootrom log to the scratch area was the last open coded part.
Move the code to the scratch module to make the scratch handling
completely opaque.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/atf.c     | 12 ++++++++----
 arch/arm/mach-imx/romapi.c  |  6 ++----
 arch/arm/mach-imx/scratch.c | 33 ++++++++++++++++++++++++++++++---
 include/mach/imx/romapi.h   |  7 +------
 include/mach/imx/scratch.h  | 11 ++++++-----
 5 files changed, 47 insertions(+), 22 deletions(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index c6da5de13a1a..327e160777df 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -123,7 +123,8 @@ __noreturn void imx8mm_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
-	imx8mm_save_bootrom_log();
+	imx8mm_init_scratch_space();
+	imx8m_save_bootrom_log();
 	imx8mm_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MM_OPTEE)) {
@@ -186,7 +187,8 @@ __noreturn void imx8mp_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
-	imx8mp_save_bootrom_log();
+	imx8mp_init_scratch_space();
+	imx8m_save_bootrom_log();
 	imx8mp_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MP_OPTEE)) {
@@ -250,7 +252,8 @@ __noreturn void imx8mn_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(16);
 
-	imx8mn_save_bootrom_log();
+	imx8mn_init_scratch_space();
+	imx8m_save_bootrom_log();
 	imx8mn_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MN_OPTEE)) {
@@ -307,7 +310,8 @@ __noreturn void imx8mq_load_and_start_image_via_tfa(void)
 	void *bl33 = (void *)MX8M_ATF_BL33_BASE_ADDR;
 	unsigned long endmem = MX8M_DDR_CSD1_BASE_ADDR + imx8m_barebox_earlymem_size(32);
 
-	imx8mq_save_bootrom_log();
+	imx8mq_init_scratch_space();
+	imx8m_save_bootrom_log();
 	imx8mq_load_bl33(bl33);
 
 	if (IS_ENABLED(CONFIG_FIRMWARE_IMX8MQ_OPTEE)) {
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 51e35c9d2aa2..a245357fdf5d 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -226,7 +226,7 @@ const u32 *imx8m_get_bootrom_log(void)
 	return NULL;
 }
 
-void imx8m_save_bootrom_log(void *dest)
+void imx8m_save_bootrom_log(void)
 {
 	const u32 *rom_log;
 
@@ -241,7 +241,5 @@ void imx8m_save_bootrom_log(void *dest)
 		return;
 	}
 
-	pr_debug("Saving bootrom log to 0x%p\n", dest);
-
-	memcpy(dest, rom_log, 128 * sizeof(u32));
+	imx8m_scratch_save_bootrom_log(rom_log);
 }
diff --git a/arch/arm/mach-imx/scratch.c b/arch/arm/mach-imx/scratch.c
index fba00955c095..f4faff835c8c 100644
--- a/arch/arm/mach-imx/scratch.c
+++ b/arch/arm/mach-imx/scratch.c
@@ -3,26 +3,53 @@
 #include <asm/barebox-arm.h>
 #include <init.h>
 #include <linux/err.h>
+#include <linux/printk.h>
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/scratch.h>
 #include <memory.h>
+#include <pbl.h>
 
 struct imx_scratch_space {
 	u32 bootrom_log[128];
 };
 
-void *__imx8m_scratch_space(int ddr_buswidth)
+static struct imx_scratch_space *scratch;
+
+void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init)
 {
 	ulong endmem = MX8M_DDR_CSD1_BASE_ADDR +
 		imx8m_barebox_earlymem_size(ddr_buswidth);
 
-	return (void *)arm_mem_scratch(endmem);
+	scratch = (void *)arm_mem_scratch(endmem);
+
+	if (zero_init)
+		memset(scratch, 0, sizeof(*scratch));
+}
+
+void imx8m_scratch_save_bootrom_log(const u32 *rom_log)
+{
+	size_t sz = sizeof(scratch->bootrom_log);
+
+	if (!scratch) {
+		pr_err("No scratch area initialized, skip saving bootrom log");
+		return;
+	}
+
+	pr_debug("Saving bootrom log to scratch area 0x%p\n", &scratch->bootrom_log);
+
+	memcpy(scratch->bootrom_log, rom_log, sz);
 }
 
 const u32 *imx8m_scratch_get_bootrom_log(void)
 {
-	const struct imx_scratch_space *scratch = arm_mem_scratch_get();
+	if (!scratch) {
+		if (IN_PBL)
+			return ERR_PTR(-EINVAL);
+		else
+			scratch = (void *)arm_mem_scratch_get();
+	}
+
 	return scratch->bootrom_log;
 }
 
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index 977095a5a2f5..b1a990085088 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -40,12 +40,7 @@ int imx8mn_romapi_load_image(void);
 int imx93_romapi_load_image(void);
 
 /* only call after DRAM has been configured */
-void imx8m_save_bootrom_log(void *dst);
+void imx8m_save_bootrom_log(void);
 const u32 *imx8m_get_bootrom_log(void);
 
-#define imx8mq_save_bootrom_log() imx8m_save_bootrom_log(imx8mq_scratch_space())
-#define imx8mm_save_bootrom_log() imx8m_save_bootrom_log(imx8mm_scratch_space())
-#define imx8mn_save_bootrom_log() imx8m_save_bootrom_log(imx8mn_scratch_space())
-#define imx8mp_save_bootrom_log() imx8m_save_bootrom_log(imx8mp_scratch_space())
-
 #endif /* __MACH_IMX_ROMAPI_H */
diff --git a/include/mach/imx/scratch.h b/include/mach/imx/scratch.h
index 9b01cf315622..487171fbee97 100644
--- a/include/mach/imx/scratch.h
+++ b/include/mach/imx/scratch.h
@@ -3,13 +3,14 @@
 #ifndef __MACH_IMX_SCRATCH_H
 #define __MACH_IMX_SCRATCH_H
 
-void *__imx8m_scratch_space(int ddr_buswidth);
+void imx8m_init_scratch_space(int ddr_buswidth, bool zero_init);
 
 const u32 *imx8m_scratch_get_bootrom_log(void);
+void imx8m_scratch_save_bootrom_log(const u32 *rom_log);
 
-#define imx8mq_scratch_space() __imx8m_scratch_space(32)
-#define imx8mm_scratch_space() __imx8m_scratch_space(32)
-#define imx8mn_scratch_space() __imx8m_scratch_space(16)
-#define imx8mp_scratch_space() __imx8m_scratch_space(32)
+#define imx8mq_init_scratch_space() imx8m_init_scratch_space(32, true)
+#define imx8mm_init_scratch_space() imx8m_init_scratch_space(32, true)
+#define imx8mn_init_scratch_space() imx8m_init_scratch_space(16, true)
+#define imx8mp_init_scratch_space() imx8m_init_scratch_space(32, true)
 
 #endif /* __MACH_IMX_SCRATCH_H */
-- 
2.39.2



