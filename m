Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z3IZr-0006xx-JF
 for barebox@lists.infradead.org; Fri, 12 Jun 2015 06:36:32 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 12 Jun 2015 08:35:39 +0200
Message-Id: <1434090946-6574-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
References: <1434090946-6574-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 03/10] filetype: Add filetype for MXS bootstream
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 3 +++
 include/filetype.h | 1 +
 2 files changed, 4 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 25d9761..28a4b2c 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -60,6 +60,7 @@ static const struct filetype_str filetype_str[] = {
 			"TI OMAP CH boot image (big endian)", "ch-image-be" },
 	[filetype_xz_compressed] = { "XZ compressed", "xz" },
 	[filetype_exe] = { "MS-DOS executable", "exe" },
+	[filetype_mxs_bootstream] = { "Freescale MXS bootstream", "mxsbs" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -292,6 +293,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 
 	if (buf8[0] == 'M' && buf8[1] == 'Z')
 		return filetype_exe;
+	if (le32_to_cpu(buf[5]) == 0x504d5453)
+		return filetype_mxs_bootstream;
 
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
diff --git a/include/filetype.h b/include/filetype.h
index cca4dad..e452b7a 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -34,6 +34,7 @@ enum filetype {
 	filetype_ch_image_be,
 	filetype_exe,
 	filetype_xz_compressed,
+	filetype_mxs_bootstream,
 	filetype_max,
 };
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
