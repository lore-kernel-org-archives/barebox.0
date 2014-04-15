Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-x232.google.com ([2a00:1450:4010:c03::232])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WZy56-0007ki-HN
 for barebox@lists.infradead.org; Tue, 15 Apr 2014 07:47:01 +0000
Received: by mail-la0-f50.google.com with SMTP id pv20so6540148lab.37
 for <barebox@lists.infradead.org>; Tue, 15 Apr 2014 00:46:38 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue, 15 Apr 2014 11:38:31 +0400
Message-Id: <1397547514-19925-8-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
References: <1397547514-19925-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFC 07/10] filetype: add ELF type
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 common/filetype.c  | 5 +++++
 include/filetype.h | 1 +
 2 files changed, 6 insertions(+)

diff --git a/common/filetype.c b/common/filetype.c
index 0b5da30..dacfa38 100644
--- a/common/filetype.c
+++ b/common/filetype.c
@@ -24,6 +24,7 @@
 #include <malloc.h>
 #include <errno.h>
 #include <envfs.h>
+#include <elf.h>
 
 struct filetype_str {
 	const char *name;	/* human readable filetype */
@@ -53,6 +54,7 @@ static const struct filetype_str filetype_str[] = {
 	[filetype_gpt] = { "GUID Partition Table", "gpt" },
 	[filetype_bpk] = { "Binary PacKage", "bpk" },
 	[filetype_barebox_env] = { "barebox environment file", "bbenv" },
+	[filetype_elf] = { "ELF", "elf" },
 };
 
 const char *file_type_to_string(enum filetype f)
@@ -246,6 +248,9 @@ enum filetype file_detect_type(const void *_buf, size_t bufsize)
 	if (bufsize >= 1536 && buf16[512 + 28] == le16_to_cpu(0xef53))
 		return filetype_ext;
 
+	if (strncmp(buf8, ELFMAG, 4) == 0)
+		return filetype_elf;
+
 	return filetype_unknown;
 }
 
diff --git a/include/filetype.h b/include/filetype.h
index c20a4f9..c4f776f 100644
--- a/include/filetype.h
+++ b/include/filetype.h
@@ -30,6 +30,7 @@ enum filetype {
 	filetype_ubifs,
 	filetype_bpk,
 	filetype_barebox_env,
+	filetype_elf,
 	filetype_max,
 };
 
-- 
1.9.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
