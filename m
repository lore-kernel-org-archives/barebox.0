Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1USQhk-0002KO-1X
 for barebox@lists.infradead.org; Wed, 17 Apr 2013 11:39:18 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Apr 2013 13:39:02 +0200
Message-Id: <1366198748-22717-2-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/7] memory commands: export common functions
To: barebox@lists.infradead.org

The memory commands all use open_and_lseek and mem_parse_options. Export
them to be able to split the memory commands into separate files.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c   | 8 ++++++--
 include/common.h | 4 ++++
 2 files changed, 10 insertions(+), 2 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 51aa04d..f25c6b6 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -112,7 +112,7 @@ int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab)
 	return 0;
 }
 
-static int open_and_lseek(const char *filename, int mode, loff_t pos)
+int open_and_lseek(const char *filename, int mode, loff_t pos)
 {
 	int fd, ret;
 
@@ -135,7 +135,11 @@ static int open_and_lseek(const char *filename, int mode, loff_t pos)
 	return fd;
 }
 
-static int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
+/*
+ * Common function for parsing options for the 'md', 'mw', 'memcpy', 'memcmp'
+ * commands.
+ */
+int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
 		char **sourcefile, char **destfile, int *swab)
 {
 	int opt;
diff --git a/include/common.h b/include/common.h
index e559b94..2263c00 100644
--- a/include/common.h
+++ b/include/common.h
@@ -221,6 +221,10 @@ int run_shell(void);
 
 int memory_display(char *addr, loff_t offs, ulong nbytes, int size, int swab);
 
+int mem_parse_options(int argc, char *argv[], char *optstr, int *mode,
+		char **sourcefile, char **destfile, int *swab);
+int open_and_lseek(const char *filename, int mode, loff_t pos);
+
 extern const char version_string[];
 #ifdef CONFIG_BANNER
 void barebox_banner(void);
-- 
1.8.2.rc2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
