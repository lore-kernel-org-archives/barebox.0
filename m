Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1anigv-0006gk-Fb
 for barebox@lists.infradead.org; Wed, 06 Apr 2016 08:19:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Apr 2016 10:19:33 +0200
Message-Id: <1459930773-26963-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] scripts: imx: imx-image: Fix image size for HABv3 images
To: Barebox List <barebox@lists.infradead.org>

When the image contains CSF data we must add CSF_LEN to the image
size pointer.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 scripts/imx/imx-image.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/scripts/imx/imx-image.c b/scripts/imx/imx-image.c
index 20815bf..16f086a 100644
--- a/scripts/imx/imx-image.c
+++ b/scripts/imx/imx-image.c
@@ -210,10 +210,8 @@ static int add_header_v1(struct config_data *data, void *buf)
 	uint32_t loadaddr = data->image_load_addr;
 	uint32_t imagesize = data->load_size;
 
-	if (add_barebox_header) {
+	if (add_barebox_header)
 		memcpy(buf, bb_header, sizeof(bb_header));
-		*psize = imagesize;
-	}
 
 	buf += offset;
 	hdr = buf;
@@ -246,6 +244,9 @@ static int add_header_v1(struct config_data *data, void *buf)
 		imagesize += CSF_LEN;
 	}
 
+	if (add_barebox_header)
+		*psize = imagesize;
+
 	*(uint32_t *)buf = imagesize;
 
 	return 0;
-- 
2.7.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
