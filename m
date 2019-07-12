Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hlsjh-0000H3-MA
 for barebox@lists.infradead.org; Fri, 12 Jul 2019 10:25:11 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 12 Jul 2019 12:24:55 +0200
Message-Id: <20190712102457.15339-3-a.fatoum@pengutronix.de>
In-Reply-To: <20190712102457.15339-1-a.fatoum@pengutronix.de>
References: <20190712102457.15339-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/5] filetype: add STM32 image type
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de

Both STM32MP BootROM and TF-A first stage expect subsequent bootloader
stages to feature a specific 256-byte long STM32 file header.
Add detection of the header to file_detect_type().

While there's only one version of the header so far, identify the new
header as v1 anyway, so new versions can be unambiguously added.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 common/filetype.c  | 9 +++++++++
 include/filetype.h | 1 +
 2 files changed, 10 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 329f5144bfed..825bf25ad107 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -79,6 +79,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_layerscape_qspi_image] = { "Layerscape QSPI image", "layerscape-qspi-PBL" },
 	[filetype_ubootvar] = { "U-Boot environmemnt variable data",
 				"ubootvar" },
+	[filetype_stm32_image_v1] = { "STM32 image (v1)", "stm32-image-v1" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -355,6 +356,14 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf8[0] == 'M' && buf8[1] == 'Z')
 		return filetype_exe;
 
+	if (bufsize < 256)
+		return filetype_unknown;
+
+	if (strncmp(buf8, "STM\x32", 4) == 0) {
+		if (buf8[74] == 0x01)
+			return filetype_stm32_image_v1;
+	}
+
 	if (bufsize < 512)
 		return filetype_unknown;
 
diff --git a/include/filetype.h b/include/filetype.h
index f1be04e81632..90a03de58105 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -48,6 +48,7 @@ enum filetype {
 	filetype_layerscape_image,
 	filetype_layerscape_qspi_image,
 	filetype_ubootvar,
+	filetype_stm32_image_v1,
 	filetype_max,
 };
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
