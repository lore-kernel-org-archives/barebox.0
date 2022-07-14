Delivery-date: Thu, 14 Jul 2022 09:29:18 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHi-007JZV-V4
	for lore@lore.pengutronix.de; Thu, 14 Jul 2022 09:29:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oBtHe-0002K2-V4
	for lore@pengutronix.de; Thu, 14 Jul 2022 09:29:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4QLpNec3D2Lwyh1H9Ng14Qu4VAV5XyNgftEHcrmxV38=; b=wRlv9cSi/gJSoS43ZTcY6ZWrzF
	la7GtrQbi/6Z4Tnna7nq5si6XbU7sjaB1q4J4OxHDcRuRISPDkGr8AAbXgNF/3Eiyu4o4GgTSlmps
	40y56TdUAFeIHUDpzRw9n+Upn8Y8SDleAm9KmiYtLAqIs1DV7kgnzzivT9Sf9zxOWJ9VJsffsxpmI
	fbukhDjqiN+/pLPUubfLmNIXEvwJfanexNK5DRPJKa4DLjHASS56cqNRqom8Bo9AAI209fn87nXkC
	gZITaRQ+yJx0mTYqzjZqvJpfWuXcErVLRhphdZHi0D/RYqmw4zvtvs46IiGU0gNewefvtcSQg8+iP
	Xd9Un4xQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtGJ-00BokO-Qx; Thu, 14 Jul 2022 07:27:52 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oBtFx-00BoV7-Vz
	for barebox@lists.infradead.org; Thu, 14 Jul 2022 07:27:32 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFt-0001g0-Fp; Thu, 14 Jul 2022 09:27:25 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFs-000rqN-N3; Thu, 14 Jul 2022 09:27:24 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1oBtFr-00C1Vg-9w; Thu, 14 Jul 2022 09:27:23 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu, 14 Jul 2022 09:27:12 +0200
Message-Id: <20220714072722.2863571-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220714072722.2863571-1-s.hauer@pengutronix.de>
References: <20220714072722.2863571-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220714_002730_106334_975FE01D 
X-CRM114-Status: GOOD (  19.08  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/12] ARM: i.MX8M: Add romapi support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The i.MX8MP and i.MX8MN have a C API to the bootrom to chainload images
for example via USB. This patch adds support for the API based on the
corresponding U-Boot code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/Makefile              |  2 +-
 arch/arm/mach-imx/include/mach/romapi.h | 37 +++++++++++++++++++++
 arch/arm/mach-imx/romapi.c              | 44 +++++++++++++++++++++++++
 include/asm-generic/sections.h          |  1 +
 4 files changed, 83 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/mach-imx/include/mach/romapi.h
 create mode 100644 arch/arm/mach-imx/romapi.c

diff --git a/arch/arm/mach-imx/Makefile b/arch/arm/mach-imx/Makefile
index 2cafcd77e0..fa5133a229 100644
--- a/arch/arm/mach-imx/Makefile
+++ b/arch/arm/mach-imx/Makefile
@@ -18,7 +18,7 @@ lwl-$(CONFIG_ARCH_IMX6) += imx6-mmdc.o
 obj-$(CONFIG_ARCH_IMX7) += imx7.o
 obj-$(CONFIG_ARCH_VF610) += vf610.o
 obj-pbl-$(CONFIG_ARCH_IMX8M) += imx8m.o
-lwl-$(CONFIG_ARCH_IMX8M) += atf.o
+lwl-$(CONFIG_ARCH_IMX8M) += atf.o romapi.o
 obj-$(CONFIG_IMX_IIM)	+= iim.o
 obj-$(CONFIG_NAND_IMX) += nand.o
 lwl-$(CONFIG_ARCH_IMX_EXTERNAL_BOOT_NAND) += external-nand-boot.o
diff --git a/arch/arm/mach-imx/include/mach/romapi.h b/arch/arm/mach-imx/include/mach/romapi.h
new file mode 100644
index 0000000000..8022fc411e
--- /dev/null
+++ b/arch/arm/mach-imx/include/mach/romapi.h
@@ -0,0 +1,37 @@
+#ifndef __MACH_IMX_ROMAPI_H
+#define __MACH_IMX_ROMAPI_H
+
+struct rom_api {
+	u16 ver;
+	u16 tag;
+	u32 reserved1;
+	u32 (*download_image)(u8 *dest, u32 offset, u32 size,  u32 xor);
+	u32 (*query_boot_infor)(u32 info_type, u32 *info, u32 xor);
+};
+
+enum boot_dev_type_e {
+	BT_DEV_TYPE_SD = 1,
+	BT_DEV_TYPE_MMC = 2,
+	BT_DEV_TYPE_NAND = 3,
+	BT_DEV_TYPE_FLEXSPINOR = 4,
+	BT_DEV_TYPE_SPI_NOR = 6,
+
+	BT_DEV_TYPE_USB = 0xE,
+	BT_DEV_TYPE_MEM_DEV = 0xF,
+
+	BT_DEV_TYPE_INVALID = 0xFF
+};
+
+#define QUERY_ROM_VER		1
+#define QUERY_BT_DEV		2
+#define QUERY_PAGE_SZ		3
+#define QUERY_IVT_OFF		4
+#define QUERY_BT_STAGE		5
+#define QUERY_IMG_OFF		6
+
+#define ROM_API_OKAY		0xF0
+
+int imx8mp_bootrom_load_image(void);
+int imx8mn_bootrom_load_image(void);
+
+#endif /* __MACH_IMX_ROMAPI_H */
diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
new file mode 100644
index 0000000000..f7d421d737
--- /dev/null
+++ b/arch/arm/mach-imx/romapi.c
@@ -0,0 +1,44 @@
+#include <common.h>
+#include <asm/sections.h>
+#include <mach/romapi.h>
+#include <mach/atf.h>
+
+static int imx8m_bootrom_load(struct rom_api *rom_api, void *adr, size_t size)
+{
+	while (size) {
+		size_t chunksize = min(size, (size_t)1024);
+		int ret;
+
+		ret = rom_api->download_image(adr, 0, chunksize,
+					      (uintptr_t)adr ^ chunksize);
+		if (ret != ROM_API_OKAY) {
+			pr_err("Failed to load piggy data (ret = %x)\n", ret);
+			return -EIO;
+		}
+
+		adr += chunksize;
+		size -= chunksize;
+	}
+
+	return 0;
+}
+
+/* read piggydata via a bootrom callback and place it behind our copy in SDRAM */
+static int imx8m_bootrom_load_image(struct rom_api *rom_api)
+{
+	return imx8m_bootrom_load(rom_api,
+				  (void *)MX8M_ATF_BL33_BASE_ADDR + barebox_pbl_size,
+				  __piggydata_end - __piggydata_start);
+}
+
+int imx8mp_bootrom_load_image(void)
+{
+	struct rom_api *rom_api = (void *)0x980;
+
+	return imx8m_bootrom_load_image(rom_api);
+}
+
+int imx8mn_bootrom_load_image(void)
+{
+	return imx8mp_bootrom_load_image();
+}
diff --git a/include/asm-generic/sections.h b/include/asm-generic/sections.h
index 0b2ed5615b..e54123de0e 100644
--- a/include/asm-generic/sections.h
+++ b/include/asm-generic/sections.h
@@ -11,6 +11,7 @@ extern char _end[];
 extern char __image_start[];
 extern char __image_end[];
 extern char __piggydata_start[];
+extern char __piggydata_end[];
 extern void *_barebox_image_size;
 extern void *_barebox_bare_init_size;
 extern void *_barebox_pbl_size;
-- 
2.30.2



