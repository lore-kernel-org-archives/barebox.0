Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1huZE0-00047w-CM
 for barebox@lists.infradead.org; Mon, 05 Aug 2019 09:24:17 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  5 Aug 2019 11:23:44 +0200
Message-Id: <b577986cd7183d7e23659e8b20dc9572dadfb651.1564997015.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
References: <cover.b9d503ab98014278972f6bd84931035a5ef27967.1564997015.git-series.r.czerwinski@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 05/16] esdhc-pbl: extract header parsing from image start
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Extract the header parsing code from esdc_start_image. The header
parsing function will be used by the piggy loading code added in the
next commit.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 drivers/mci/imx-esdhc-pbl.c | 44 +++++++++++++++++++++++++-------------
 1 file changed, 30 insertions(+), 14 deletions(-)

diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 367daa8..49514fc 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -243,27 +243,22 @@ static int esdhc_read_blocks(struct esdhc *esdhc, void *dst, size_t len)
 }
 
 #ifdef CONFIG_ARCH_IMX
-static int
-esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 offset)
+static int esdhc_search_header(struct esdhc *esdhc,
+			       struct imx_flash_header_v2 **header_pointer,
+			       void *buffer, u32 *offset)
 {
-
-	void *buf = (void *)address;
-	struct imx_flash_header_v2 *hdr;
-	int ret, len;
-	void __noreturn (*bb)(void);
-	unsigned int ofs;
+	int ret;
 	int i, header_count = 1;
-
-	len = imx_image_size();
-	len = ALIGN(len, SECTOR_SIZE);
+	void *buf = buffer;
+	struct imx_flash_header_v2 *hdr;
 
 	for (i = 0; i < header_count; i++) {
 		ret = esdhc_read_blocks(esdhc, buf,
-					offset + SZ_1K + SECTOR_SIZE);
+					*offset + SZ_1K + SECTOR_SIZE);
 		if (ret)
 			return ret;
 
-		hdr = buf + offset + SZ_1K;
+		hdr = buf + *offset + SZ_1K;
 
 		if (!is_imx_flash_header_v2(hdr)) {
 			pr_debug("IVT header not found on SD card. "
@@ -286,10 +281,31 @@ esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry, u32 o
 			 * this time skipping anything HDMI firmware
 			 * related.
 			 */
-			offset += hdr->boot_data.size + hdr->header.length;
+			*offset += hdr->boot_data.size + hdr->header.length;
 			header_count++;
 		}
 	}
+	*header_pointer = hdr;
+	return 0;
+}
+
+static int
+esdhc_start_image(struct esdhc *esdhc, ptrdiff_t address, ptrdiff_t entry,
+		  u32 offset)
+{
+
+	void *buf = (void *)address;
+	struct imx_flash_header_v2 *hdr = NULL;
+	int ret, len;
+	void __noreturn (*bb)(void);
+	unsigned int ofs;
+
+	len = imx_image_size();
+	len = ALIGN(len, SECTOR_SIZE);
+
+	ret = esdhc_search_header(esdhc, &hdr, buf, &offset);
+	if (ret)
+		return ret;
 
 	pr_debug("Check ok, loading image\n");
 
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
