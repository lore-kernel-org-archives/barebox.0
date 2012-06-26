Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Sjbqt-0006N8-Ow
 for barebox@lists.infradead.org; Tue, 26 Jun 2012 19:55:11 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 26 Jun 2012 21:54:59 +0200
Message-Id: <1340740503-7003-7-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
References: <1340740503-7003-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/10] make memory display 64bit capable
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mem.c   |    4 ++--
 include/common.h |    2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/commands/mem.c b/commands/mem.c
index 0719700..2b85f82 100644
--- a/commands/mem.c
+++ b/commands/mem.c
@@ -55,7 +55,7 @@ static char *DEVMEM = "/dev/mem";
  */
 #define DISP_LINE_LEN	16
 
-int memory_display(char *addr, ulong offs, ulong nbytes, int size)
+int memory_display(char *addr, loff_t offs, ulong nbytes, int size)
 {
 	ulong linebytes, i;
 	u_char	*cp;
@@ -72,7 +72,7 @@ int memory_display(char *addr, ulong offs, ulong nbytes, int size)
 		u_char	*ucp = (u_char *)linebuf;
 		uint	count = 52;
 
-		printf("%08lx:", offs);
+		printf("%08llx:", offs);
 		linebytes = (nbytes > DISP_LINE_LEN) ? DISP_LINE_LEN : nbytes;
 
 		for (i = 0; i < linebytes; i += size) {
diff --git a/include/common.h b/include/common.h
index 08ff0f3..799941d 100644
--- a/include/common.h
+++ b/include/common.h
@@ -211,7 +211,7 @@ int run_shell(void);
 #define PAGE_SIZE	4096
 #define PAGE_SHIFT	12
 
-int memory_display(char *addr, ulong offs, ulong nbytes, int size);
+int memory_display(char *addr, loff_t offs, ulong nbytes, int size);
 
 extern const char version_string[];
 #ifdef CONFIG_BANNER
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
