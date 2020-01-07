Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iom34-0008Jm-6j
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 10:25:19 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iom31-0003LK-BN
 for barebox@lists.infradead.org; Tue, 07 Jan 2020 11:25:15 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue,  7 Jan 2020 11:25:15 +0100
Message-Id: <20200107102515.29198-3-l.stach@pengutronix.de>
In-Reply-To: <20200107102515.29198-1-l.stach@pengutronix.de>
References: <20200107102515.29198-1-l.stach@pengutronix.de>
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
Subject: [PATCH 3/3] esdhc-pbl: remove now unused imx8_esdhc_load_piggy
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/include/mach/xload.h |  1 -
 drivers/mci/imx-esdhc-pbl.c            | 42 --------------------------
 2 files changed, 43 deletions(-)

diff --git a/arch/arm/mach-imx/include/mach/xload.h b/arch/arm/mach-imx/include/mach/xload.h
index a9b9d93f246f..9709b13dfb6a 100644
--- a/arch/arm/mach-imx/include/mach/xload.h
+++ b/arch/arm/mach-imx/include/mach/xload.h
@@ -6,7 +6,6 @@ int imx6_spi_load_image(int instance, unsigned int flash_offset, void *buf, int
 int imx6_spi_start_image(int instance);
 int imx6_esdhc_start_image(int instance);
 int imx8_esdhc_load_image(int instance, bool start);
-int imx8_esdhc_load_piggy(int instance);
 
 int imx_image_size(void);
 int piggydata_size(void);
diff --git a/drivers/mci/imx-esdhc-pbl.c b/drivers/mci/imx-esdhc-pbl.c
index db4116fa9315..7bc7c64caf33 100644
--- a/drivers/mci/imx-esdhc-pbl.c
+++ b/drivers/mci/imx-esdhc-pbl.c
@@ -286,48 +286,6 @@ int imx8_esdhc_load_image(int instance, bool start)
 	return esdhc_load_image(&host, MX8MQ_DDR_CSD1_BASE_ADDR,
 				MX8MQ_ATF_BL33_BASE_ADDR, SZ_32K, start);
 }
-
-int imx8_esdhc_load_piggy(int instance)
-{
-	void *buf, *piggy;
-	struct imx_flash_header_v2 *hdr = NULL;
-	struct esdhc_soc_data data;
-	struct fsl_esdhc_host host;
-	int ret, len;
-	int offset = SZ_32K;
-
-	ret = imx8_esdhc_init(&host, &data, instance);
-	if (ret)
-		return ret;
-
-	/*
-	 * We expect to be running at MX8MQ_ATF_BL33_BASE_ADDR where the atf
-	 * has jumped to. Use a temporary buffer where we won't overwrite
-	 * ourselves.
-	 */
-	buf = (void *)MX8MQ_ATF_BL33_BASE_ADDR + SZ_32M;
-
-	ret = esdhc_search_header(&host, &hdr, buf, &offset);
-	if (ret)
-		return ret;
-
-	len = offset + hdr->boot_data.size + piggydata_size();
-	len = ALIGN(len, SECTOR_SIZE);
-
-	ret = esdhc_read_blocks(&host, buf, len);
-
-	/*
-	 * Calculate location of the piggydata at the offset loaded into RAM
-	 */
-	piggy = buf + offset + hdr->boot_data.size;
-
-	/*
-	 * Copy the piggydata where the uncompressing code expects it
-	 */
-	memcpy(input_data, piggy, piggydata_size());
-
-	return ret;
-}
 #endif
 
 #ifdef CONFIG_ARCH_LS1046
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
