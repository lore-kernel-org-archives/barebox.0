Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WGU0h-0007Rf-Q3
 for barebox@lists.infradead.org; Thu, 20 Feb 2014 13:49:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu, 20 Feb 2014 14:49:26 +0100
Message-Id: <1392904169-786-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] filetype: Add detection for barebox environment
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/filetype.c  | 4 ++++
 include/filetype.h | 1 +
 2 files changed, 5 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 8cdf827..0b5da30 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -23,6 +23,7 @@
 #include <fs.h>
 #include <malloc.h>
 #include <errno.h>
+#include <envfs.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -51,6 +52,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_ext] = { "ext filesystem", "ext" },
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
+	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -188,6 +190,8 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 
 	if (strncmp(buf8, "#!/bin/sh", 9) == 0)
 		return filetype_sh;
+	if (buf[0] == ENVFS_32(ENVFS_MAGIC))
+		return filetype_barebox_env;
 
 	if (bufsize < 32)
 		return filetype_unknown;
diff --git a/include/filetype.h b/include/filetype.h
index ffefe1c..c20a4f9 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -29,6 +29,7 @@ enum filetype {
 	filetype_gpt,
 	filetype_ubifs,
 	filetype_bpk,
+	filetype_barebox_env,
 	filetype_max,
 };
 
-- 
1.8.5.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
