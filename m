Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TfTFf-0005S9-MN
 for barebox@lists.infradead.org; Mon, 03 Dec 2012 10:27:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  3 Dec 2012 11:27:47 +0100
Message-Id: <1354530468-25823-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
References: <1354530468-25823-1-git-send-email-s.hauer@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 3/4] add ext fs detection support
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  |    8 ++++++++
 include/filetype.h |    1 +
 2 files changed, 9 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index c1bd11d..748e364 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -47,6 +47,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_mbr] = { "MBR sector", "mbr" },
 	[filetype_bmp] = { "BMP image", "bmp" },
 	[filetype_png] = { "PNG image", "png" },
+	[filetype_ext] = { "ext filesystem", "ext" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -110,6 +111,7 @@ enum filetype file_detect_type(void *_buf, size_t bufsize)
 	u32 *buf = _buf;
 	u64 *buf64 = _buf;
 	u8 *buf8 = _buf;
+	u16 *buf16 = _buf;
 	enum filetype type;
 
 	if (bufsize < 9)
@@ -161,6 +163,12 @@ enum filetype file_detect_type(void *_buf, size_t bufsize)
 	if (type != filetype_unknown)
 		return type;
 
+	if (bufsize < 1536)
+		return filetype_unknown;
+
+	if (buf16[512 + 28] == le16_to_cpu(0xef53))
+		return filetype_ext;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index 5fac531..91139db 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -22,6 +22,7 @@ enum filetype {
 	filetype_mbr,
 	filetype_bmp,
 	filetype_png,
+	filetype_ext,
 	filetype_max,
 };
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
