Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XhXoU-0005as-89
 for barebox@lists.infradead.org; Fri, 24 Oct 2014 05:53:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 24 Oct 2014 07:53:02 +0200
Message-Id: <1414129983-18986-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] filetype: Add XZ filetype support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index c8f3582..d98a60e 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -57,6 +57,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_ch_image] = { "TI OMAP CH boot image", "ch-image" },
 	[filetype_ch_image_be] = {
 			"TI OMAP CH boot image (big endian)", "ch-image-be" },
+	[filetype_xz_compressed] = { "XZ compressed", "xz" },
 	[filetype_exe] = { "MS-DOS executable", "exe" },
 };
 
@@ -224,6 +225,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (buf8[0] == 'B' && buf8[1] == 'Z' && buf8[2] == 'h' &&
 			buf8[3] > '0' && buf8[3] <= '9')
                 return filetype_bzip2;
+	if (buf8[0] == 0xfd && buf8[1] == 0x37 && buf8[2] == 0x7a &&
+			buf8[3] == 0x58 && buf8[4] == 0x5a && buf8[5] == 0x00)
+		return filetype_xz_compressed;
 	if (buf[0] == be32_to_cpu(0xd00dfeed))
 		return filetype_oftree;
 	if (strncmp(buf8, "ANDROID!", 8) == 0)
diff --git a/include/filetype.h b/include/filetype.h
index eedf4b4..ac71775 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -33,6 +33,7 @@ enum filetype {
 	filetype_ch_image,
 	filetype_ch_image_be,
 	filetype_exe,
+	filetype_xz_compressed,
 	filetype_max,
 };
 
-- 
2.1.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
