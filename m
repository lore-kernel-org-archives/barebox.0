Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1WktAe-0008Kw-9y
 for barebox@lists.infradead.org; Thu, 15 May 2014 10:45:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 15 May 2014 12:45:27 +0200
Message-Id: <1400150728-28314-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] ARM: AM33xx: swap MLO SPI image automatically
To: barebox@lists.infradead.org

The MLO image for SPI differs in the normal MLO in that the
SPI version is big endian. As both types of images are floating
around detect whether or not the image is swapped automatically.
This also adds a check whether we have a valid MLO image.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-omap/am33xx_bbu_spi_mlo.c | 15 ++++++++++++++-
 1 file changed, 14 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
index ff9f8a6..1aa3d7b 100644
--- a/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
+++ b/arch/arm/mach-omap/am33xx_bbu_spi_mlo.c
@@ -32,6 +32,18 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 	uint32_t readbuf;
 	int size = data->len;
 	void *image = data->image;
+	uint32_t *header;
+	int swap = 0;
+
+	header = data->image;
+	if (header[5] == 0x43485345) {
+		swap = 0;
+	} else if (header[5] == 0x45534843) {
+		swap = 1;
+	} else {
+		if (!bbu_force(data, "Not a MLO image"))
+			return -EINVAL;
+	}
 
 	dstfd = open(data->devicefile, O_WRONLY);
 	if (dstfd < 0) {
@@ -49,7 +61,8 @@ static int spi_nor_mlo_handler(struct bbu_handler *handler,
 	for (; size >= 0; size -= 4) {
 		memcpy((char *)&readbuf, image, 4);
 
-		readbuf = cpu_to_be32(readbuf);
+		if (swap)
+			readbuf = cpu_to_be32(readbuf);
 		ret = write(dstfd, &readbuf, 4);
 		if (ret < 0) {
 			perror("write");
-- 
2.0.0.rc0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
