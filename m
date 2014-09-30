Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([92.198.50.35])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XYxFo-0004BM-NU
 for barebox@lists.infradead.org; Tue, 30 Sep 2014 13:14:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Sep 2014 15:10:27 +0200
Message-Id: <1412082632-25290-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
References: <1412082632-25290-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] ARM: am33xx update SPI NOR: Check image size before
 flashing
To: barebox@lists.infradead.org

Test if the image fits into the partition before flashing it. Makes
the update process more safe.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index 665a53b..c979302 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -19,6 +19,7 @@
 #include <bbu.h>
 #include <fs.h>
 #include <fcntl.h>
+#include <linux/stat.h>
 
 /*
  * AM35xx, AM33xx chips use big endian MLO for SPI NOR flash
@@ -34,6 +35,7 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 	void *image = data->image;
 	uint32_t *header;
 	int swap = 0;
+	struct stat s;
 
 	header = data->image;
 
@@ -46,6 +48,17 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 			return -EINVAL;
 	}
 
+	ret = stat(data->devicefile, &s);
+	if (ret) {
+		printf("could not open %s: %s", data->devicefile, errno_str());
+		return ret;
+	}
+
+	if (size > s.st_size) {
+		printf("Image too big, need %d, have %lld\n", size, s.st_size);
+		return -ENOSPC;
+	}
+
 	dstfd = open(data->devicefile, O_WRONLY);
 	if (dstfd < 0) {
 		printf("could not open %s: %s", data->devicefile, errno_str());
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
