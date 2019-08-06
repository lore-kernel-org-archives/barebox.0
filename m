Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([78.46.208.201])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hurkp-0007VG-24
 for barebox@lists.infradead.org; Tue, 06 Aug 2019 05:11:24 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Tue,  6 Aug 2019 07:10:56 +0200
Message-Id: <cfddf4e6c171f647295784cd7908d969e1191ef8.1565068235.git-series.r.czerwinski@pengutronix.de>
In-Reply-To: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
References: <cover.20f706d0d5a7ead5c114378becb025aefb9c7b8a.1565068235.git-series.r.czerwinski@pengutronix.de>
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
Subject: [PATCH v3 06/16] esdhc-pbl: add piggy load function
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Add a function to load and copy the piggy data to the correct offset
expected by barebox in the RAM. This way the PBL can later verify the
piggydata before uncompressing and loading the main barebox.

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/xload.h |  5 +++-
 arch/arm/mach-imx/xload-common.c       |  6 ++++-
 drivers/mci/imx-esdhc-pbl.c            | 46 +++++++++++++++++++++++++++-
 3 files changed, 57 insertions(+)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index 8f141bc..a605e76 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -6,7 +6,12 @@ int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int 
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
 int imx8_esdhc_start_image(int instance);
+int imx8_esdhc_load_piggy(int instance);
 
 int imx_image_size(void);
+int piggydata_size(void);
+
+extern unsigned char input_data[];
+extern unsigned char input_data_end[];
 
 #endif /* __MACH_XLOAD_H */
diff --git a/arch/arm/mach-imx/xload-common.c b/arch/arm/mach-imx/xload-common.c
index c5727eb..bd64052 100644
--- a/arch/arm/mach-imx/xload-common.c
+++ b/arch/arm/mach-imx/xload-common.c
@@ -8,3 +8,9 @@ int imx_image_size(void)
 	/* i.MX header is 4k */
 	return barebox_image_size + SZ_4K;
 }
+
+int piggydata_size(void)
+{
+	return input_data_end - input_data;
+}
+
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index 49514fc..fb27c84 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -425,6 +425,52 @@ int imx8_esdhc_start_image(int instance)
 	return esdhc_start_image(&esdhc, MX8MQ_DDR_CSD1_BASE_ADDR,
 				 MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K);
 }
+
+int imx8_esdhc_load_piggy(int instance)
+{
+	void *buf = (void *)MX8MQ_ATF_BL33_BASE_ADDR;
+	struct imx_flash_header_v2 *hdr = NULL;
+	void *bb = 0;
+	struct esdhc esdhc;
+	int ret, len;
+	int offset = SZ_32K;
+
+
+	switch (instance) {
+	case 0:
+		esdhc.regs = IOMEM(MX8MQ_USDHC1_BASE_ADDR);
+		break;
+	case 1:
+		esdhc.regs = IOMEM(MX8MQ_USDHC2_BASE_ADDR);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	esdhc.is_be = 0;
+	esdhc.is_mx6 = 1;
+
+	ret = esdhc_search_header(&esdhc, &hdr, buf, &offset);
+	if (ret)
+		return ret;
+
+	len = offset + hdr->boot_data.size + piggydata_size();
+	len = ALIGN(len, SECTOR_SIZE);
+
+	ret = esdhc_read_blocks(&esdhc, buf, len);
+
+	/*
+	 * Calculate location of the piggydata at the offset loaded into RAM
+	 */
+	buf = buf + offset + hdr->boot_data.size;
+	/*
+	 * Barebox expects the piggydata right behind the PBL in the beginning
+	 * of RAM.
+	 */
+	bb = (void *) MX8MQ_DDR_CSD1_BASE_ADDR + barebox_pbl_size;
+	memcpy(bb, buf, piggydata_size());
+	return ret;
+}
 #endif
 
 #ifdef CONFIG_ARCH_LS1046
-- 
git-series 0.9.1

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
