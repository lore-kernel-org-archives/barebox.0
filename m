Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.lynxeye.de ([87.118.118.114] helo=lynxeye.de)
 by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ienbw-0000FT-Gu
 for barebox@lists.infradead.org; Tue, 10 Dec 2019 22:04:10 +0000
Received: from astat.fritz.box (a89-183-112-47.net-htp.de [89.183.112.47])
 by lynxeye.de (Postfix) with ESMTPA id A1B84E74222
 for <barebox@lists.infradead.org>; Tue, 10 Dec 2019 23:03:26 +0100 (CET)
From: Lucas Stach <dev@lynxeye.de>
Date: Tue, 10 Dec 2019 23:03:21 +0100
Message-Id: <20191210220322.47425-3-dev@lynxeye.de>
In-Reply-To: <20191210220322.47425-1-dev@lynxeye.de>
References: <20191210220322.47425-1-dev@lynxeye.de>
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
Subject: [PATCH 3/4] filetype: add Zynq image type
To: barebox@lists.infradead.org

Use the 2 invariant words (width detection and image identification)
from the Zynq image header to detect the filetype.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 39fea45edff5..fd6e8e3d1c35 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -80,6 +80,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_ubootvar] = { "U-Boot environmemnt variable data",
 				"ubootvar" },
 	[filetype_stm32_image_v1] = { "STM32 image (v1)", "stm32-image-v1" },
+	[filetype_zynq_image] = { "Zynq image", "zynq-image" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -392,6 +393,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (is_imx_flash_header_v2(_buf))
 		return filetype_imx_image_v2;
 
+	if (buf[8] == 0xAA995566 && buf[9] == 0x584C4E58)
+		return filetype_zynq_image;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 90a03de58105..db95fdaa0a5f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -49,6 +49,7 @@ enum filetype {
 	filetype_layerscape_qspi_image,
 	filetype_ubootvar,
 	filetype_stm32_image_v1,
+	filetype_zynq_image,
 	filetype_max,
 };
 
-- 
2.23.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
