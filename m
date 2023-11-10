Delivery-date: Fri, 10 Nov 2023 13:59:39 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6p-005rUQ-15
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 13:59:39 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1R6n-0003FI-B7
	for lore@pengutronix.de; Fri, 10 Nov 2023 13:59:39 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IUnIveWbuKeFYlinaSF/f8EPI2KCmmX1Lg3Zu49vI6E=; b=nDecMfWC+BEm2K95Geta1tRmGp
	H1FWL+m/PJf1Bc+pva+o+oosAZy0C7zIBywpSZ3CC4UoMpv8Srwo1bCG1cu4N+pV3jdXAPYLAOMJd
	9bN4n/sOtWwT13PbuKhqHtOGwkJzY6gXlMDTrSha1mYol7JqbxXeIpgw0fCW+4wM7GLivrrUnn9CG
	7fl52TB45jYFeA0hi7hEP8eMXkxQX8hThO5VFcEbngWkrAhc3BkYWO+mqMiHSIS/xMDilwmt5o5Ga
	4tem2SCqhyLIqZE2CleWu2T2s86JfOX/g7LywVlaoWkRejKD5NfavRGAcaZI8rIgiJct9V0fVaYHz
	b1Q+qUgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5g-008k7N-2o;
	Fri, 10 Nov 2023 12:58:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1R5R-008jtK-0n
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 12:58:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5I-00027L-1V; Fri, 10 Nov 2023 13:58:04 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5H-0081Xi-4k; Fri, 10 Nov 2023 13:58:03 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1R5G-008s1x-3B;
	Fri, 10 Nov 2023 13:58:02 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 13:57:54 +0100
Message-Id: <20231110125800.1901232-20-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110125800.1901232-1-s.hauer@pengutronix.de>
References: <20231110125800.1901232-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_045813_455454_968FDDEA 
X-CRM114-Status: GOOD (  21.32  )
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
Subject: [PATCH 19/25] ARM: i.MX: romapi: Implement i.MX93 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We used to use the ROM API for USB loading only, now with i.MX93 we
fully rely on the ROM API also with SD/eMMC and other boot sources.

The ROM provides us information about the boot source. There are
generally two types of boot sources: seekable for storage devices
like SD/eMMC and streamable for USB. the load_image call must be
handled slightly different for both types of boot sources, so
we fist detect which type we have and call the right load_image
function accordingly.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/romapi.c | 156 ++++++++++++++++++++++++++++++++++++-
 include/mach/imx/romapi.h  |   1 +
 2 files changed, 153 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/romapi.c b/arch/arm/mach-imx/romapi.c
index 29c2d4005c..1b1800f1e0 100644
--- a/arch/arm/mach-imx/romapi.c
+++ b/arch/arm/mach-imx/romapi.c
@@ -3,6 +3,8 @@
 #define pr_fmt(fmt) "romapi: " fmt
 
 #include <common.h>
+#include <linux/bitfield.h>
+#include <soc/imx9/flash_header.h>
 #include <asm/sections.h>
 #include <mach/imx/romapi.h>
 #include <mach/imx/atf.h>
@@ -14,7 +16,39 @@
 #include <init.h>
 #include <pbl.h>
 
-static int imx_romapi_load(struct rom_api *rom_api, void *adr, size_t size)
+#define BOOTROM_INFO_VERSION		0x1
+#define BOOTROM_INFO_BOOT_DEVICE	0x2
+#define BOOTROM_INFO_DEVICE_PAGE_SIZE	0x3
+#define BOOTROM_INFO_OFFSET_IVT		0x4
+#define BOOTROM_INFO_BOOT_STAGE		0x5
+#define BOOTROM_INFO_OFFSET_IMAGE	0x6
+
+#define BOOTROM_BOOT_DEVICE_INTERFACE	GENMASK(23, 16)
+#define BOOTROM_BOOT_DEVICE_SD			0x1
+#define BOOTROM_BOOT_DEVICE_EMMC		0x2
+#define BOOTROM_BOOT_DEVICE_FLEXSPI_NOR		0x4
+#define BOOTROM_BOOT_DEVICE_LPSPI		0x6
+#define BOOTROM_BOOT_DEVICE_FLEXSPI_NAND	0x8
+#define BOOTROM_BOOT_DEVICE_USB			0xe
+#define BOOTROM_BOOT_DEVICE_INSTANCE	GENMASK(15, 8)
+#define BOOTROM_BOOT_DEVICE_STATE	GENMASK(7, 0)
+
+static int imx_bootrom_query(struct rom_api *rom_api, uint32_t type, uint32_t *__info)
+{
+	static uint32_t info;
+	uint32_t xor = type ^ (uintptr_t)&info;
+	int ret;
+
+	ret = rom_api->query_boot_infor(type, &info, xor);
+	if (ret != ROM_API_OKAY)
+		return -EIO;
+
+	*__info = info;
+
+	return 0;
+}
+
+static int imx_romapi_load_stream(struct rom_api *rom_api, void *adr, size_t size)
 {
 	while (size) {
 		size_t chunksize = min(size, (size_t)1024);
@@ -30,6 +64,22 @@ static int imx_romapi_load(struct rom_api *rom_api, void *adr, size_t size)
 		adr += chunksize;
 		size -= chunksize;
 	}
+	return 0;
+}
+
+static int imx_romapi_load_seekable(struct rom_api *rom_api, void *adr, uint32_t offset,
+				       size_t size)
+{
+	int ret;
+
+	size = PAGE_ALIGN(size);
+
+	ret = rom_api->download_image(adr, offset, size,
+				      (uintptr_t)adr ^ offset ^ size);
+	if (ret != ROM_API_OKAY) {
+		pr_err("Failed to load piggy data (ret = %x)\n", ret);
+		return -EIO;
+	}
 
 	return 0;
 }
@@ -37,9 +87,9 @@ static int imx_romapi_load(struct rom_api *rom_api, void *adr, size_t size)
 /* read piggydata via a bootrom callback and place it behind our copy in SDRAM */
 static int imx_romapi_load_image(struct rom_api *rom_api)
 {
-	return imx_romapi_load(rom_api,
-				  (void *)MX8M_ATF_BL33_BASE_ADDR + barebox_pbl_size,
-				  __image_end - __piggydata_start);
+	return imx_romapi_load_stream(rom_api,
+			(void *)MX8M_ATF_BL33_BASE_ADDR,
+			__image_end - __piggydata_start);
 }
 
 int imx8mp_romapi_load_image(void)
@@ -56,6 +106,104 @@ int imx8mn_romapi_load_image(void)
 	return imx8mp_romapi_load_image();
 }
 
+static int imx_romapi_boot_device_seekable(struct rom_api *rom_api)
+{
+	uint32_t boot_device, boot_device_type, boot_device_state;
+	int ret;
+	bool seekable;
+
+	ret = imx_bootrom_query(rom_api, BOOTROM_INFO_BOOT_DEVICE, &boot_device);
+	if (ret)
+		return ret;
+
+	boot_device_type = FIELD_GET(BOOTROM_BOOT_DEVICE_INTERFACE, boot_device);
+
+	switch (boot_device_type) {
+	case BOOTROM_BOOT_DEVICE_SD:
+	case BOOTROM_BOOT_DEVICE_FLEXSPI_NOR:
+	case BOOTROM_BOOT_DEVICE_LPSPI:
+	case BOOTROM_BOOT_DEVICE_FLEXSPI_NAND:
+		seekable = true;
+		break;
+	case BOOTROM_BOOT_DEVICE_USB:
+		seekable = false;
+		break;
+	case BOOTROM_BOOT_DEVICE_EMMC:
+		boot_device_state = FIELD_GET(BOOTROM_BOOT_DEVICE_STATE, boot_device);
+		if (boot_device_state & BIT(0))
+			seekable = false;
+		else
+			seekable = true;
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	return seekable;
+}
+
+int imx93_romapi_load_image(void)
+{
+	struct rom_api *rom_api = (void *)0x1980;
+	int ret;
+	int seekable;
+	uint32_t offset, image_offset;
+	void *bl33 = (void *)MX93_ATF_BL33_BASE_ADDR;
+	struct flash_header_v3 *fh;
+
+	OPTIMIZER_HIDE_VAR(rom_api);
+
+	seekable = imx_romapi_boot_device_seekable(rom_api);
+	if (seekable < 0)
+		return seekable;
+
+	if (!seekable) {
+		int align_size = ALIGN(barebox_pbl_size, 1024) - barebox_pbl_size;
+		void *pbl_size_aligned = bl33 + ALIGN(barebox_pbl_size, 1024);
+
+		/*
+		 * The USB protocol uploads in chunks of 1024 bytes. This means
+		 * the initial piggy data up to the next 1KiB boundary is already
+		 * transferred. Align up the start address to this boundary.
+		 */
+
+		return imx_romapi_load_stream(rom_api,
+				pbl_size_aligned,
+				__image_end - __piggydata_start - align_size);
+	}
+
+	ret = imx_bootrom_query(rom_api, BOOTROM_INFO_OFFSET_IMAGE, &offset);
+	if (ret)
+		return ret;
+
+	pr_debug("%s: IVT offset on boot device: 0x%08x\n", __func__, offset);
+
+	ret = imx_romapi_load_seekable(rom_api, bl33, offset, 4096);
+	if (ret)
+		return ret;
+
+	fh = bl33;
+
+	if (fh->tag != 0x87) {
+		pr_err("Invalid IVT header: 0x%02x, expected 0x87\n", fh->tag);
+		return -EINVAL;
+	}
+
+	image_offset = fh->img[0].offset;
+
+	pr_debug("%s: offset in image: 0x%08x\n", __func__, image_offset);
+
+	/*
+	 * We assume the first image in the first container is the barebox image,
+	 * which is what the imx9image call in images/Makefile.imx generates.
+	 */
+	ret = imx_romapi_load_seekable(rom_api, bl33, offset + image_offset, barebox_image_size);
+	if (ret)
+		return ret;
+
+	return ret;
+}
+
 const u32 *imx8m_get_bootrom_log(void)
 {
 	if (current_el() == 3) {
diff --git a/include/mach/imx/romapi.h b/include/mach/imx/romapi.h
index 8ea7fbfb04..959d165a33 100644
--- a/include/mach/imx/romapi.h
+++ b/include/mach/imx/romapi.h
@@ -37,6 +37,7 @@ enum boot_dev_type_e {
 
 int imx8mp_romapi_load_image(void);
 int imx8mn_romapi_load_image(void);
+int imx93_romapi_load_image(void);
 
 /* only call after DRAM has been configured */
 void imx8m_save_bootrom_log(void *dst);
-- 
2.39.2



