Delivery-date: Tue, 20 Feb 2024 12:45:55 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcOZP-00Fycr-2A
	for lore@lore.pengutronix.de;
	Tue, 20 Feb 2024 12:45:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rcOZO-0002oU-Sa
	for lore@pengutronix.de; Tue, 20 Feb 2024 12:45:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tNiGgjyQMrIdb3C1942HzlSs25+ftHhsayaaBYM1Sm8=; b=P5PKQ1JFX8Y+KGNpLa2b4TYz8C
	kJaAZCd0r9OlkmJis9ilsSjO5LY6z6JxBwjMIjRMlTVsnYiPBVBY19fHcTyxctWlnwortUk8t9r9h
	OkwGbxqiLsIoF6Qr8Ns36qq9iT8zJNn+32ptwnaxN9F5lfXyEqVj6tRV+Bs+fcYvKel1ufcstjd/g
	rajNIyycSYJ9hDMoW6D+9S2FgyrWIXdWgk6gGb0Bd+xarXgk4/Ko5czBRMfTbUPU/CT9cXPFkufg/
	Q451LdUr3+Ajwefso6j8Zpw9O8IasbwpjAVpLZ97EE7hfgWdNrdU4j7sBEsM6nP6WoFBKTfXKzLsm
	1av1TJnA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOYl-0000000EVgi-09sA;
	Tue, 20 Feb 2024 11:45:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rcOYh-0000000EVex-1fyT
	for barebox@lists.infradead.org;
	Tue, 20 Feb 2024 11:45:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcOYg-0002eS-5D; Tue, 20 Feb 2024 12:45:10 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcOYf-001pqm-P7; Tue, 20 Feb 2024 12:45:09 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rcOYf-00FSxo-2A;
	Tue, 20 Feb 2024 12:45:09 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 20 Feb 2024 12:45:08 +0100
Message-Id: <20240220114508.3685478-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240220_034511_460596_53273A72 
X-CRM114-Status: GOOD (  14.67  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: i.MX93: add bootsource detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On i.MX93 the ROM API can be used to detect the bootsource. Implement
support for this.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx9.c   |  1 +
 arch/arm/mach-imx/romapi.c | 67 ++++++++++++++++++++++++++++++++++++++
 include/mach/imx/generic.h |  1 +
 3 files changed, 69 insertions(+)

diff --git a/arch/arm/mach-imx/imx9.c b/arch/arm/mach-imx/imx9.c
index bfc248aadf..220951fd19 100644
--- a/arch/arm/mach-imx/imx9.c
+++ b/arch/arm/mach-imx/imx9.c
@@ -172,6 +172,7 @@ int imx93_init(void)
 {
 	imx93_type();
 	imx93_set_arm_clock();
+	imx93_bootsource();
 
 	if (IS_ENABLED(CONFIG_PBL_OPTEE)) {
 		static struct of_optee_fixup_data optee_fixup_data = {
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 797b479c3e..0f1555abad 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -10,11 +10,14 @@
 #include <mach/imx/atf.h>
 #include <mach/imx/imx8m-regs.h>
 #include <mach/imx/xload.h>
+#include <mach/imx/generic.h>
 #include <asm/barebox-arm.h>
 #include <zero_page.h>
 #include <memory.h>
 #include <init.h>
 #include <pbl.h>
+#include <mmu.h>
+#include <bootsource.h>
 
 #define BOOTROM_INFO_VERSION		0x1
 #define BOOTROM_INFO_BOOT_DEVICE	0x2
@@ -99,6 +102,41 @@ int imx8mn_romapi_load_image(void *bl33)
 	return imx8mp_romapi_load_image(bl33);
 }
 
+static int imx_romapi_boot_device(struct rom_api *rom_api)
+{
+	uint32_t boot_device_type, boot_instance, boot_device;
+	enum bootsource bootsource = BOOTSOURCE_UNKNOWN;
+	int ret;
+
+	ret = imx_bootrom_query(rom_api, BOOTROM_INFO_BOOT_DEVICE, &boot_device);
+	if (ret)
+		return ret;
+
+	boot_device_type = FIELD_GET(BOOTROM_BOOT_DEVICE_INTERFACE, boot_device);
+	boot_instance = FIELD_GET(BOOTROM_BOOT_DEVICE_INSTANCE, boot_device);
+
+	switch (boot_device_type) {
+	case BT_DEV_TYPE_MMC:
+	case BT_DEV_TYPE_SD:
+		bootsource = BOOTSOURCE_MMC;
+		break;
+	case BT_DEV_TYPE_NAND:
+		bootsource = BOOTSOURCE_NAND;
+		break;
+	case BT_DEV_TYPE_FLEXSPINOR:
+	case BT_DEV_TYPE_SPI_NOR:
+		bootsource = BOOTSOURCE_SPI_NOR;
+		break;
+	case BT_DEV_TYPE_USB:
+		bootsource = BOOTSOURCE_USB;
+		break;
+	}
+
+	bootsource_set(bootsource, boot_instance);
+
+	return 0;
+}
+
 static int imx_romapi_boot_device_seekable(struct rom_api *rom_api)
 {
 	uint32_t boot_device, boot_device_type, boot_device_state;
@@ -242,3 +280,32 @@ void imx8m_save_bootrom_log(void)
 
 	imx8m_scratch_save_bootrom_log(rom_log);
 }
+
+#define IMX93_BOOT_ROM_BASE 0x1000
+#define IMX93_BOOT_ROM_END (0x40000 - 1)
+
+void imx93_bootsource(void)
+{
+	struct rom_api *rom_api = (void *)0x1980;
+	struct resource rom = {
+		.start = IMX93_BOOT_ROM_BASE,
+		.end = IMX93_BOOT_ROM_END,
+	};
+	struct resource *r;
+	int ret;
+
+	r = request_iomem_region("Boot ROM",  rom.start, rom.end);
+	if (IS_ERR(r)) {
+		ret = PTR_ERR(r);
+		goto out;
+	}
+
+	arch_remap_range((void *)rom.start, rom.start, resource_size(&rom), MAP_CACHED);
+
+	OPTIMIZER_HIDE_VAR(rom_api);
+
+	ret = imx_romapi_boot_device(rom_api);
+out:
+	if (ret)
+		pr_err("Failed to get bootsource: %pe\n", ERR_PTR(ret));
+}
diff --git a/include/mach/imx/generic.h b/include/mach/imx/generic.h
index 1dca335fdd..03f3695e60 100644
--- a/include/mach/imx/generic.h
+++ b/include/mach/imx/generic.h
@@ -22,6 +22,7 @@ void imx8mm_boot_save_loc(void);
 void imx8mn_boot_save_loc(void);
 void imx8mp_boot_save_loc(void);
 void imx8mq_boot_save_loc(void);
+void imx93_bootsource(void);
 
 void imx25_get_boot_source(enum bootsource *src, int *instance);
 void imx27_get_boot_source(enum bootsource *src, int *instance);
-- 
2.39.2



