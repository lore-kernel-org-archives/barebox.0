Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x42e.google.com ([2607:f8b0:4864:20::42e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fvF5O-0000N1-9V
 for barebox@lists.infradead.org; Thu, 30 Aug 2018 05:01:39 +0000
Received: by mail-pf1-x42e.google.com with SMTP id h69-v6so3335417pfd.4
 for <barebox@lists.infradead.org>; Wed, 29 Aug 2018 22:01:27 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 29 Aug 2018 22:01:17 -0700
Message-Id: <20180830050117.12620-2-andrew.smirnov@gmail.com>
In-Reply-To: <20180830050117.12620-1-andrew.smirnov@gmail.com>
References: <20180830050117.12620-1-andrew.smirnov@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 2/2] ARM: i.MX: xload: Add support for signed HDMI firmware
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

When booting images that have HDMI firmware embedded we need to skip
the first v2 header we encounter and get all of the necessary data
from the next one. Add code implementing that.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---

Changes since [v1]:

     - Offset of a second header is calculated based on data from
       first instead of relying on a fixed offset


[v1] http://lists.infradead.org/pipermail/barebox/2018-August/034406.html

 arch/arm/mach-imx/xload-esdhc.c | 43 +++++++++++++++++++++++++--------
 1 file changed, 33 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/xload-esdhc.c b/arch/arm/mach-imx/xload-esdhc.c
index 55d6c6929..6455cabf9 100644
--- a/arch/arm/mach-imx/xload-esdhc.c
+++ b/arch/arm/mach-imx/xload-esdhc.c
@@ -224,24 +224,47 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 o
 {
 
 	void *buf = (void *)address;
-	struct imx_flash_header_v2 *hdr = buf + offset + SZ_1K;
+	struct imx_flash_header_v2 *hdr;
 	int ret, len;
 	void __noreturn (*bb)(void);
 	unsigned int ofs;
+	int i, header_count = 1;
 
 	len = imx_image_size();
 	len = ALIGN(len, SECTOR_SIZE);
 
-	ret = esdhc_read_blocks(esdhc, buf, offset + SZ_1K + SECTOR_SIZE);
-	if (ret)
-		return ret;
+	for (i = 0; i < header_count; i++) {
+		ret = esdhc_read_blocks(esdhc, buf,
+					offset + SZ_1K + SECTOR_SIZE);
+		if (ret)
+			return ret;
 
-	if (!is_imx_flash_header_v2(hdr)) {
-		pr_debug("IVT header not found on SD card. "
-			 "Found tag: 0x%02x length: 0x%04x version: %02x\n",
-			 hdr->header.tag, hdr->header.length,
-			 hdr->header.version);
-		return -EINVAL;
+		hdr = buf + offset + SZ_1K;
+
+		if (!is_imx_flash_header_v2(hdr)) {
+			pr_debug("IVT header not found on SD card. "
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
+			offset += hdr->boot_data.size + hdr->header.length;
+			header_count++;
+		}
 	}
 
 	pr_debug("Check ok, loading image\n");
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
