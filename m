Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1ZACBy-0004yF-Jf
 for barebox@lists.infradead.org; Wed, 01 Jul 2015 07:12:23 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  1 Jul 2015 09:11:58 +0200
Message-Id: <1435734718-18367-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435734718-18367-1-git-send-email-s.hauer@pengutronix.de>
References: <1435734718-18367-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] ARM: AM335x: replace specific barebox update handler with
 generic one
To: Barebox List <barebox@lists.infradead.org>

The AM335x SPI NOR barebox update handlers only writes a file to a device,
so use the generic handler for this purpose.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c | 56 ---------------------------------
 arch/arm/mach-omap/include/mach/bbu.h   |  5 ++-
 2 files changed, 2 insertions(+), 59 deletions(-)

diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index 97dc54e..702bb9a 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -97,41 +97,6 @@ out:
 	return ret;
 }
 
-static int spi_nor_handler(struct bbu_handler *handler,
-					struct bbu_data *data)
-{
-	int fd, ret;
-
-	if (file_detect_type(data->image, data->len) != filetype_arm_barebox) {
-		if (!bbu_force(data, "Not an ARM barebox image"))
-			return -EINVAL;
-	}
-
-	fd = open(data->devicefile, O_RDWR | O_CREAT);
-	if (fd < 0)
-		return fd;
-
-	debug("%s: eraseing %s from 0 to 0x%08x\n", __func__,
-			data->devicefile, data->len);
-	ret = erase(fd, data->len, 0);
-	if (ret) {
-		printf("erasing %s failed with %s\n", data->devicefile,
-				strerror(-ret));
-		goto err_close;
-	}
-
-	ret = write(fd, data->image, data->len);
-	if (ret < 0)
-		goto err_close;
-
-	ret = 0;
-
-err_close:
-	close(fd);
-
-	return ret;
-}
-
 /*
  * Register a am33xx MLO update handler for SPI NOR
  */
@@ -152,24 +117,3 @@ int am33xx_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile)
 
 	return ret;
 }
-
-/*
- * Register a am33xx update handler for SPI NOR
- */
-int am33xx_bbu_spi_nor_register_handler(const char *name, char *devicefile)
-{
-	struct bbu_handler *handler;
-	int ret;
-
-	handler = xzalloc(sizeof(*handler));
-	handler->devicefile = devicefile;
-	handler->name = name;
-	handler->handler = spi_nor_handler;
-
-	ret = bbu_register_handler(handler);
-
-	if (ret)
-		free(handler);
-
-	return ret;
-}
diff --git a/arch/arm/mach-omap/include/mach/bbu.h b/arch/arm/mach-omap/include/mach/bbu.h
index 36d87e1..da5c214 100644
--- a/arch/arm/mach-omap/include/mach/bbu.h
+++ b/arch/arm/mach-omap/include/mach/bbu.h
@@ -5,18 +5,17 @@
 
 #ifdef CONFIG_BAREBOX_UPDATE_AM33XX_SPI_NOR_MLO
 int am33xx_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile);
-int am33xx_bbu_spi_nor_register_handler(const char *name, char *devicefile);
 #else
 static inline int am33xx_bbu_spi_nor_mlo_register_handler(const char *name, char *devicefile)
 {
 	return 0;
 }
+#endif
 
 static inline int am33xx_bbu_spi_nor_register_handler(const char *name, char *devicefile)
 {
-	return 0;
+	return bbu_register_std_file_update(name, 0, devicefile, filetype_arm_barebox);
 }
-#endif
 
 #ifdef CONFIG_BAREBOX_UPDATE_AM33XX_NAND
 int am33xx_bbu_nand_xloadslots_register_handler(const char *name,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
