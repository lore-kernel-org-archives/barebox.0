Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bX6IE-00078m-QZ
 for barebox@lists.infradead.org; Tue, 09 Aug 2016 12:38:07 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Tue,  9 Aug 2016 14:37:26 +0200
Message-Id: <1470746252-3146-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 1/7] filetype: add new filetype for SoCFPGA xload image
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index a8666a1439df..4728f877c975 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -61,6 +61,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_xz_compressed] = { "XZ compressed", "xz" },
 	[filetype_exe] = { "MS-DOS executable", "exe" },
 	[filetype_mxs_bootstream] = { "Freescale MXS bootstream", "mxsbs" },
+	[filetype_socfpga_xload] = { "SoCFPGA prebootloader image", "socfpga-xload" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -294,6 +295,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (le32_to_cpu(buf[5]) == 0x504d5453)
 		return filetype_mxs_bootstream;
 
+	if (buf[16] == 0x31305341)
+		return filetype_socfpga_xload;
+
 	if (is_barebox_arm_head(_buf))
 		return filetype_arm_barebox;
 	if (buf[9] == 0x016f2818 || buf[9] == 0x18286f01)
diff --git a/include/filetype.h b/include/filetype.h
index e87ca174a89d..cde73c1170c6 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -36,6 +36,7 @@ enum filetype {
 	filetype_exe,
 	filetype_xz_compressed,
 	filetype_mxs_bootstream,
+	filetype_socfpga_xload,
 	filetype_max,
 };
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
