Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jWFF4-0005wQ-8x
 for barebox@lists.infradead.org; Wed, 06 May 2020 08:17:28 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 May 2020 10:17:12 +0200
Message-Id: <20200506081716.20143-9-s.hauer@pengutronix.de>
In-Reply-To: <20200506081716.20143-1-s.hauer@pengutronix.de>
References: <20200506081716.20143-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 09/13] filetype: Add filetype for i.MX23/28 SD card images
To: Barebox List <barebox@lists.infradead.org>

Add a filetype for i.MX23/28 SD card images so that they can be
detected.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index fd6e8e3d1c..813f55ef61 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -81,6 +81,7 @@ static const struct filetype_str filetype_str[] = {
 				"ubootvar" },
 	[filetype_stm32_image_v1] = { "STM32 image (v1)", "stm32-image-v1" },
 	[filetype_zynq_image] = { "Zynq image", "zynq-image" },
+	[filetype_mxs_sd_image] = { "i.MX23/28 SD card image", "mxs-sd-image" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -342,6 +343,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf[0] == 0x01ee0100 && buf[1] == 0xaa55aa55)
 		return filetype_layerscape_qspi_image;
 
+	if (le32_to_cpu(buf[0]) == 0x00112233 && le32_to_cpu(buf[1]) == 0x1)
+		return filetype_mxs_sd_image;
+
 	if (bufsize < 64)
 		return filetype_unknown;
 
diff --git a/include/filetype.h b/include/filetype.h
index c3a5bdfbbe..3019dda6ed 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -51,6 +51,7 @@ enum filetype {
 	filetype_ubootvar,
 	filetype_stm32_image_v1,
 	filetype_zynq_image,
+	filetype_mxs_sd_image,
 	filetype_max,
 };
 
-- 
2.26.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
