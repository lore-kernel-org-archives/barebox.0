Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1egRZQ-00076d-I4
 for barebox@lists.infradead.org; Tue, 30 Jan 2018 08:47:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 30 Jan 2018 09:46:52 +0100
Message-Id: <20180130084657.31943-2-s.hauer@pengutronix.de>
In-Reply-To: <20180130084657.31943-1-s.hauer@pengutronix.de>
References: <20180130084657.31943-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/6] bbu: imx-bbu-internal: Do not modify image
To: Barebox List <barebox@lists.infradead.org>

Instead of copying the existing partition table into the image
to be flashed, modify the temporary buffer and write from this
one. This makes it unnecessary to modify the input image which
can be made const then in a later step.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/imx-bbu-internal.c | 19 +++++++++++++++----
 1 file changed, 15 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/imx-bbu-internal.c b/arch/arm/mach-imx/imx-bbu-internal.c
index 5783da6102..d40bde5339 100644
--- a/arch/arm/mach-imx/imx-bbu-internal.c
+++ b/arch/arm/mach-imx/imx-bbu-internal.c
@@ -54,6 +54,7 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 		void *buf, int image_len)
 {
 	int fd, ret;
+	int written = 0;
 
 	fd = open(devicefile, O_RDWR | O_CREAT);
 	if (fd < 0)
@@ -90,15 +91,25 @@ static int imx_bbu_write_device(struct imx_internal_bbu_handler *imx_handler,
 			goto err_close;
 		}
 
-		memcpy(buf + 0x1b8, mbr + 0x1b8, 0x48);
-		free(mbr);
+		memcpy(mbr, buf, 0x1b8);
 
 		ret = lseek(fd, 0, SEEK_SET);
-		if (ret)
+		if (ret) {
+			free(mbr);
+			goto err_close;
+		}
+
+		ret = write(fd, mbr, 512);
+
+		free(mbr);
+
+		if (ret < 0)
 			goto err_close;
+
+		written = 512;
 	}
 
-	ret = write(fd, buf, image_len);
+	ret = write(fd, buf + written, image_len - written);
 	if (ret < 0)
 		goto err_close;
 
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
