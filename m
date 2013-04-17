Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KP-1Z
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:04 +0200
Message-Id: <1366198748-22717-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
References: <1366198748-22717-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/7] Use a common define for RW_BUF_SIZE
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c   | 1 -
 include/common.h | 1 +
 lib/copy_file.c  | 2 --
 3 files changed, 1 insertion(+), 3 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index a4a1658..d48f92e 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -39,7 +39,6 @@
 #define PRINTF(fmt,args...)
 #endif
 
-#define RW_BUF_SIZE	4096
 static char *rw_buf;
 
 static char *DEVMEM = "/dev/mem";
diff --git a/include/common.h b/include/common.h
index 11904ab..59fcd35 100644
--- a/include/common.h
+++ b/include/common.h
@@ -224,6 +224,7 @@ int memory_display(char *addr, loff_t offs, unsigned nbytes, int size, int swab)
 int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab);
 int open_and_lseek(const char *filename, int mode, loff_t pos);
+#define RW_BUF_SIZE	(unsigned)4096
 
 extern const char version_string[];
 #ifdef CONFIG_BANNER
diff --git a/lib/copy_file.c b/lib/copy_file.c
index 484b2ca..ab3d845 100644
--- a/lib/copy_file.c
+++ b/lib/copy_file.c
@@ -6,8 +6,6 @@
 #include <libbb.h>
 #include <progress.h>
 
-#define RW_BUF_SIZE	(ulong)4096
-
 /**
  * @param[in] src FIXME
  * @param[out] dst FIXME
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
