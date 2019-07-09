Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkkT2-0003T4-Co
 for barebox@lists.infradead.org; Tue, 09 Jul 2019 07:23:14 +0000
Received: by mail-pl1-x644.google.com with SMTP id m9so5934803pls.8
 for <barebox@lists.infradead.org>; Tue, 09 Jul 2019 00:23:11 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  9 Jul 2019 00:22:53 -0700
Message-Id: <20190709072253.22062-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] lib: Add missing arguments to memcpy_parse_options()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>, Peter Mamonov <pmamonov@gmail.com>

Memcpy use-case differs from that of memcmp in default access type and
destination file mode. This was missed in original commit that
introduced memcpy_parse_options(). Add said parameters to
memcpy_parse_options(), so the can be correctly specified depending on
the use-case.

Fixes: ddf4cca339 ("commands: Introduce memcpy_parse_options()")
Reported-by: Peter Mamonov <pmamonov@gmail.com>
Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 commands/memcmp.c | 3 ++-
 commands/memcpy.c | 3 ++-
 include/common.h  | 3 ++-
 lib/misc.c        | 7 ++++---
 4 files changed, 10 insertions(+), 6 deletions(-)

diff --git a/commands/memcmp.c b/commands/memcmp.c
index d1c4f5205..76fbe078f 100644
--- a/commands/memcmp.c
+++ b/commands/memcmp.c
@@ -42,7 +42,8 @@ static int do_memcmp(int argc, char *argv[])
 	int     ret = 1;
 	int     offset = 0;
 
-	if (memcpy_parse_options(argc, argv, &sourcefd, &destfd, &count) < 0)
+	if (memcpy_parse_options(argc, argv, &sourcefd, &destfd, &count,
+				 O_RWSIZE_1, O_RDONLY) < 0)
 		return 1;
 
 	buf = xmalloc(RW_BUF_SIZE + RW_BUF_SIZE);
diff --git a/commands/memcpy.c b/commands/memcpy.c
index 5f0047f87..b2cea8c09 100644
--- a/commands/memcpy.c
+++ b/commands/memcpy.c
@@ -41,7 +41,8 @@ static int do_memcpy(int argc, char *argv[])
 	int ret = 0;
 	char *buf;
 
-	if (memcpy_parse_options(argc, argv, &sourcefd, &destfd, &count) < 0)
+	if (memcpy_parse_options(argc, argv, &sourcefd, &destfd, &count,
+				 0, O_WRONLY | O_CREAT) < 0)
 		return 1;
 
 	buf = xmalloc(RW_BUF_SIZE);
diff --git a/include/common.h b/include/common.h
index b1294978d..a947406e1 100644
--- a/include/common.h
+++ b/include/common.h
@@ -117,7 +117,8 @@ void shutdown_barebox(void);
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
-			 int *destfd, loff_t *count);
+			 int *destfd, loff_t *count,
+			 int rwsize, int destmode);
 #define RW_BUF_SIZE	(unsigned)4096
 
 extern const char version_string[];
diff --git a/lib/misc.c b/lib/misc.c
index 18153bb4d..7add1fe3b 100644
--- a/lib/misc.c
+++ b/lib/misc.c
@@ -173,10 +173,11 @@ int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 }
 
 int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
-			 int *destfd, loff_t *count)
+			 int *destfd, loff_t *count,
+			 int rwsize, int destmode)
 {
 	loff_t dest, src;
-	int mode = 0;
+	int mode = rwsize;
 	char *sourcefile = NULL;
 	char *destfile = NULL;
 	struct  stat statbuf;
@@ -212,7 +213,7 @@ int memcpy_parse_options(int argc, char *argv[], int *sourcefd,
 	if (*sourcefd < 0)
 		return -1;
 
-	*destfd = open_and_lseek(destfile, O_WRONLY | O_CREAT | mode, dest);
+	*destfd = open_and_lseek(destfile, mode | destmode, dest);
 	if (*destfd < 0) {
 		close(*sourcefd);
 		return -1;
-- 
2.21.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
