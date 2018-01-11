Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eZXda-0004SI-6Q
 for barebox@lists.infradead.org; Thu, 11 Jan 2018 07:51:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 11 Jan 2018 08:50:09 +0100
Message-Id: <20180111075012.9050-5-s.hauer@pengutronix.de>
In-Reply-To: <20180111075012.9050-1-s.hauer@pengutronix.de>
References: <20180111075012.9050-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/7] filetype: Add fastboot sparse format detection
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 5 +++++
 include/filetype.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 323da026af..f9c034ff2a 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -25,6 +25,7 @@
 #include <errno.h>
 #include <envfs.h>
 #include <disks.h>
+#include <image-sparse.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -64,6 +65,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_mxs_bootstream] = { "Freescale MXS bootstream", "mxsbs" },
 	[filetype_socfpga_xload] = { "SoCFPGA prebootloader image", "socfpga-xload" },
 	[filetype_kwbimage_v1] = { "MVEBU kwbimage (v1)", "kwb" },
+	[filetype_android_sparse] = { "Android sparse image", "sparse" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -301,6 +303,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	    (buf8[0x1e] == 0 || buf8[0x1e] == 1))
 		return filetype_kwbimage_v1;
 
+	if (is_sparse_image(_buf))
+		return filetype_android_sparse;
+
 	if (bufsize < 64)
 		return filetype_unknown;
 
diff --git a/include/filetype.h b/include/filetype.h
index c84905d782..b98dcb5014 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -39,6 +39,7 @@ enum filetype {
 	filetype_mxs_bootstream,
 	filetype_socfpga_xload,
 	filetype_kwbimage_v1,
+	filetype_android_sparse,
 	filetype_max,
 };
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
