Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHog3-0000WA-DW
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:37:52 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 14 Sep 2020 15:37:46 +0200
Message-Id: <20200914133748.5988-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200914133748.5988-1-a.fatoum@pengutronix.de>
References: <20200914133748.5988-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/5] sandbox: implement simple, ^C-interruptible,
 restart handler
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Typing reset in sandbox results in hang() while the terminal is not
cooked and ^C is ineffective. Only way to terminate barebox then is
via kill. Reinstate cooked mode on reset, so ^C termination is
possible.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/board/poweroff.c                  | 12 ++++++++++++
 arch/sandbox/mach-sandbox/include/mach/linux.h |  1 +
 arch/sandbox/os/common.c                       |  6 ++++++
 3 files changed, 19 insertions(+)

diff --git a/arch/sandbox/board/poweroff.c b/arch/sandbox/board/poweroff.c
index 6b5a6dff15f9..5072b756e108 100644
--- a/arch/sandbox/board/poweroff.c
+++ b/arch/sandbox/board/poweroff.c
@@ -1,6 +1,7 @@
 #include <common.h>
 #include <init.h>
 #include <poweroff.h>
+#include <restart.h>
 #include <mach/linux.h>
 
 static void sandbox_poweroff(struct poweroff_handler *poweroff)
@@ -8,9 +9,20 @@ static void sandbox_poweroff(struct poweroff_handler *poweroff)
 	linux_exit();
 }
 
+static void sandbox_rst_hang(struct restart_handler *rst)
+{
+	linux_hang();
+}
+
+static struct restart_handler rst_hang = {
+	.name = "hang",
+	.restart = sandbox_rst_hang
+};
+
 static int poweroff_register_feature(void)
 {
 	poweroff_handler_register_fn(sandbox_poweroff);
+	restart_handler_register(&rst_hang);
 
 	return 0;
 }
diff --git a/arch/sandbox/mach-sandbox/include/mach/linux.h b/arch/sandbox/mach-sandbox/include/mach/linux.h
index 9759a376ecb3..f0a3a7b510fc 100644
--- a/arch/sandbox/mach-sandbox/include/mach/linux.h
+++ b/arch/sandbox/mach-sandbox/include/mach/linux.h
@@ -17,6 +17,7 @@ ssize_t linux_write(int fd, const void *buf, size_t count);
 off_t linux_lseek(int fildes, off_t offset);
 int linux_tstc(int fd);
 void __attribute__((noreturn)) linux_exit(void);
+void linux_hang(void);
 
 int linux_execve(const char * filename, char *const argv[], char *const envp[]);
 
diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 437fe3ecdff8..bbab3bd2312d 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -122,6 +122,12 @@ void __attribute__((noreturn)) linux_exit(void)
 	exit(0);
 }
 
+void linux_hang(void)
+{
+	cookmode();
+	/* falls through to generic hang() */
+}
+
 int linux_open(const char *filename, int readwrite)
 {
 	return open(filename, readwrite ? O_RDWR : O_RDONLY);
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
