Delivery-date: Mon, 13 Mar 2023 14:44:01 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiT2-0061WP-2G
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:44:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiSy-0005My-8W
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:43:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=gSyCIq+ZBZW+hp4P2YHEvho8V3UKD9PMh79o/xYTU7A=; b=WJ5H2ML3nWuKWE+ttZ3sSvMSHA
	pQ/Rx9U6R6iDbjmAqqUuqXZESm4E7KWSwKXtVsclDRhVJHZ9ulZDhGL4XUZn3qVLdCB8Wit290v9C
	wiYLDqcWOfe6nA6btVF/zx10Rxe8GfnU4zLNDuZQklceuiXM9q/71mmMR6QqUSLBnnYFQG26zen6H
	66gPhaw2f8efWBkdmefsUOrjvf45kWn7DRIq8Qo6LL8u51KxYBStgBK/wGjhO61odnGiSE9Vpyw1r
	Dwg83x2AyIKowo3YUE8NUlEYInGjjiRVLt80C93Sj0/KSEUsha/+BGsoKFAfOYrtV6Xf13cnJOjpT
	E73bZ3Uw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiRU-005w9T-Rm; Mon, 13 Mar 2023 13:42:24 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiQr-005vkj-00
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 13:41:50 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.ext.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1pbiQp-0004N9-Qc
	for barebox@lists.infradead.org; Mon, 13 Mar 2023 14:41:43 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Mon, 13 Mar 2023 14:41:46 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230228-v2023-02-0-topic-flexspi-v2-7-3d33126d2434@pengutronix.de>
References: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
In-Reply-To: <20230228-v2023-02-0-topic-flexspi-v2-0-3d33126d2434@pengutronix.de>
To: barebox@lists.infradead.org
Cc: 
X-Mailer: b4 0.12.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_064145_266192_51B5C10F 
X-CRM114-Status: GOOD (  22.08  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 07/23] mci: imx-esdhc-pbl: move imx_load_image into
 common xload code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Make the function public available so we can reuse it for other boot
mediums like QSPI. No functional changes

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/xload-common.c | 120 +++++++++++++++++++++++++++++++++++++++
 drivers/mci/imx-esdhc-pbl.c      | 118 --------------------------------------
 include/mach/imx/xload.h         |   5 ++
 3 files changed, 125 insertions(+), 118 deletions(-)

diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index 5a437b185d..0d3e6be1b1 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -1,11 +1,13 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
+#include <asm/cache.h>
 #include <asm/sections.h>
 #include <linux/sizes.h>
 #include <mach/imx/xload.h>
 #include <mach/imx/esdctl.h>
 #include <mach/imx/imx8m-regs.h>
+#include <mach/imx/imx-header.h>
 #include <asm/barebox-arm.h>
 
 int imx_image_size(void)
@@ -26,3 +28,121 @@ struct imx_scratch_space *__imx8m_scratch_space(int ddr_buswidth)
 
 	return (void *)__arm_mem_scratch(endmem);
 }
+
+#define HDR_SIZE	512
+
+static int
+imx_search_header(struct imx_flash_header_v2 **header_pointer,
+		  void *buffer, u32 *offset, u32 ivt_offset,
+		  int (*read)(void *dest, size_t len, void *priv),
+		  void *priv)
+{
+	int ret;
+	int i, header_count = 1;
+	void *buf = buffer;
+	struct imx_flash_header_v2 *hdr;
+
+	for (i = 0; i < header_count; i++) {
+		ret = read(buf, *offset + ivt_offset + HDR_SIZE, priv);
+		if (ret)
+			return ret;
+
+		hdr = buf + *offset + ivt_offset;
+
+		if (!is_imx_flash_header_v2(hdr)) {
+			pr_debug("No IVT header! "
+				 "Found tag: 0x%02x length: 0x%04x "
+				 "version: %02x\n",
+				 hdr->header.tag, hdr->header.length,
+				 hdr->header.version);
+			return -EINVAL;
+		}
+
+		if (IS_ENABLED(CONFIG_ARCH_IMX8MQ) &&
+		    hdr->boot_data.plugin & PLUGIN_HDMI_IMAGE) {
+			/*
+			 * In images that include signed HDMI
+			 * firmware, first v2 header would be
+			 * dedicated to that and would not contain any
+			 * useful for us information. In order for us
+			 * to pull the rest of the bootloader image
+			 * in, we need to re-read header from SD/MMC,
+			 * this time skipping anything HDMI firmware
+			 * related.
+			 */
+			*offset += hdr->boot_data.size + hdr->header.length;
+			header_count++;
+		}
+	}
+	*header_pointer = hdr;
+	return 0;
+}
+
+int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
+		   u32 ivt_offset, bool start, unsigned int alignment,
+		   int (*read)(void *dest, size_t len, void *priv),
+		   void *priv)
+{
+
+	void *buf = (void *)address;
+	struct imx_flash_header_v2 *hdr = NULL;
+	int ret, len;
+	void __noreturn (*bb)(void);
+	unsigned int ofs;
+
+	len = imx_image_size();
+	if (alignment)
+		len = ALIGN(len, alignment);
+
+	ret = imx_search_header(&hdr, buf, &offset, ivt_offset, read, priv);
+	if (ret)
+		return ret;
+
+	pr_debug("Check ok, loading image\n");
+
+	ofs = offset + hdr->entry - hdr->boot_data.start;
+
+	if (entry != address) {
+		/*
+		 * Passing entry different from address is interpreted
+		 * as a request to place the image such that its entry
+		 * point would be exactly at 'entry', that is:
+		 *
+		 *     buf + ofs = entry
+		 *
+		 * solving the above for 'buf' gives us the
+		 * adjustment that needs to be made:
+		 *
+		 *     buf = entry - ofs
+		 *
+		 */
+		if (WARN_ON(entry - ofs < address)) {
+			/*
+			 * We want to make sure we won't try to place
+			 * the start of the image before the beginning
+			 * of the memory buffer we were given in
+			 * address.
+			 */
+			return -EINVAL;
+		}
+
+		buf = (void *)(entry - ofs);
+	}
+
+	ret = read(buf, ofs + len, priv);
+	if (ret) {
+		pr_err("Loading image failed with %d\n", ret);
+		return ret;
+	}
+
+	pr_debug("Image loaded successfully\n");
+
+	if (!start)
+		return 0;
+
+	bb = buf + ofs;
+
+	sync_caches_for_execution();
+
+	bb();
+}
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 4884a68837..7c5febb7a8 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -104,124 +104,6 @@ static int esdhc_read_blocks(struct fsl_esdhc_host *host, void *dst, size_t len)
 }
 
 #ifdef CONFIG_ARCH_IMX
-#define HDR_SIZE	512
-
-static int
-imx_search_header(struct imx_flash_header_v2 **header_pointer,
-		  void *buffer, u32 *offset, u32 ivt_offset,
-		  int (*read)(void *dest, size_t len, void *priv),
-		  void *priv)
-{
-	int ret;
-	int i, header_count = 1;
-	void *buf = buffer;
-	struct imx_flash_header_v2 *hdr;
-
-	for (i = 0; i < header_count; i++) {
-		ret = read(buf, *offset + ivt_offset + HDR_SIZE, priv);
-		if (ret)
-			return ret;
-
-		hdr = buf + *offset + ivt_offset;
-
-		if (!is_imx_flash_header_v2(hdr)) {
-			pr_debug("No IVT header! "
-				 "Found tag: 0x%02x length: 0x%04x "
-				 "version: %02x\n",
-				 hdr->header.tag, hdr->header.length,
-				 hdr->header.version);
-			return -EINVAL;
-		}
-
-		if (IS_ENABLED(CONFIG_ARCH_IMX8MQ) &&
-		    hdr->boot_data.plugin & PLUGIN_HDMI_IMAGE) {
-			/*
-			 * In images that include signed HDMI
-			 * firmware, first v2 header would be
-			 * dedicated to that and would not contain any
-			 * useful for us information. In order for us
-			 * to pull the rest of the bootloader image
-			 * in, we need to re-read header from SD/MMC,
-			 * this time skipping anything HDMI firmware
-			 * related.
-			 */
-			*offset += hdr->boot_data.size + hdr->header.length;
-			header_count++;
-		}
-	}
-	*header_pointer = hdr;
-	return 0;
-}
-
-int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
-		   u32 ivt_offset, bool start, unsigned int alignment,
-		   int (*read)(void *dest, size_t len, void *priv),
-		   void *priv)
-{
-
-	void *buf = (void *)address;
-	struct imx_flash_header_v2 *hdr = NULL;
-	int ret, len;
-	void __noreturn (*bb)(void);
-	unsigned int ofs;
-
-	len = imx_image_size();
-	if (alignment)
-		len = ALIGN(len, alignment);
-
-	ret = imx_search_header(&hdr, buf, &offset, ivt_offset, read, priv);
-	if (ret)
-		return ret;
-
-	pr_debug("Check ok, loading image\n");
-
-	ofs = offset + hdr->entry - hdr->boot_data.start;
-
-	if (entry != address) {
-		/*
-		 * Passing entry different from address is interpreted
-		 * as a request to place the image such that its entry
-		 * point would be exactly at 'entry', that is:
-		 *
-		 *     buf + ofs = entry
-		 *
-		 * solving the above for 'buf' gives us the
-		 * adjustment that needs to be made:
-		 *
-		 *     buf = entry - ofs
-		 *
-		 */
-		if (WARN_ON(entry - ofs < address)) {
-			/*
-			 * We want to make sure we won't try to place
-			 * the start of the image before the beginning
-			 * of the memory buffer we were given in
-			 * address.
-			 */
-			return -EINVAL;
-		}
-
-		buf = (void *)(entry - ofs);
-	}
-
-	ret = read(buf, ofs + len, priv);
-	if (ret) {
-		pr_err("Loading image failed with %d\n", ret);
-		return ret;
-	}
-
-	pr_debug("Image loaded successfully\n");
-
-	if (!start)
-		return 0;
-
-	bb = buf + ofs;
-
-	sync_caches_for_execution();
-
-	bb();
-}
-
 static int imx_read_blocks(void *dest, size_t len, void *priv)
 {
 	return esdhc_read_blocks(priv, dest, len);
diff --git a/include/mach/imx/xload.h b/include/mach/imx/xload.h
index 86270b03dc..e9d41adc97 100644
--- a/include/mach/imx/xload.h
+++ b/include/mach/imx/xload.h
@@ -25,6 +25,11 @@ void __noreturn imx8mm_load_and_start_image_via_tfa(void);
 void __noreturn imx8mn_load_and_start_image_via_tfa(void);
 void __noreturn imx8mp_load_and_start_image_via_tfa(void);
 
+int imx_load_image(ptrdiff_t address, ptrdiff_t entry, u32 offset,
+		   u32 ivt_offset, bool start, unsigned int alignment,
+		   int (*read)(void *dest, size_t len, void *priv),
+		   void *priv);
+
 int imx_image_size(void);
 int piggydata_size(void);
 

-- 
2.30.2



