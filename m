Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 63.mail-out.ovh.net ([91.121.185.56])
	by canuck.infradead.org with smtp (Exim 4.72 #1 (Red Hat Linux))
	id 1Pkftp-0000Z0-EB
	for barebox@lists.infradead.org; Wed, 02 Feb 2011 16:49:46 +0000
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed,  2 Feb 2011 17:47:25 +0100
Message-Id: <1296665245-27385-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH] sandbox: remove non used functions linux_getc/putc
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/sandbox/mach-sandbox/include/mach/linux.h |    2 --
 arch/sandbox/os/common.c                       |   20 --------------------
 2 files changed, 0 insertions(+), 22 deletions(-)

diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index b9053d8..7c2386d 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -8,8 +8,6 @@ int linux_read(int fd, void *buf, size_t count);
 int linux_read_nonblock(int fd, void *buf, size_t count);
 ssize_t linux_write(int fd, const void *buf, size_t count);
 off_t linux_lseek(int fildes, off_t offset);
-int linux_getc (void);
-void linux_putc (const char c);
 int linux_tstc(int fd);
 
 int barebox_register_console(char *name_template, int stdinfd, int stdoutfd);
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 287be0d..dcaf0c8 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -73,17 +73,6 @@ static void cookmode(void)
 	tcsetattr(0, TCSANOW, &term_orig);
 }
 
-void linux_putc(const char c)
-{
-	fputc(c, stdout);
-
-	/* If \n, also do \r */
-	if (c == '\n')
-		linux_putc ('\r');
-
-	fflush(stdout);
-}
-
 int linux_tstc(int fd)
 {
 	struct timeval tv = {
@@ -117,15 +106,6 @@ int ctrlc(void)
 	return 0;
 }
 
-int linux_getc(void)
-{
-	char ret;
-
-	read(0, &ret, 1);
-
-	return ret;
-}
-
 uint64_t linux_get_time(void)
 {
 	struct timespec ts;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
