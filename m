Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtpbg509.qq.com ([203.205.250.90] helo=smtpbg.qq.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKQL9-0000ev-9f
 for barebox@lists.infradead.org; Tue, 15 Oct 2019 17:10:35 +0000
From: iu87m888m@qq.com
Date: Wed, 16 Oct 2019 01:10:05 +0800
Message-Id: <1571159405-18672-1-git-send-email-iu87m888m@qq.com>
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
Subject: [PATCH] console_simple: fix linking error when ARCH_HAS_CTRLC enabled
To: barebox@lists.infradead.org
Cc: DU HUANPENG <u74147@gmail.com>

From: DU HUANPENG <u74147@gmail.com>

this error happens in sandbox with simple console, sandbox
has ARCH_HAS_CTRLC enabled by default

$ make sandbox_defconfig
$ make menuconfig
(select CONFIG_SHELL_SIMPLE)
$ make

LD      barebox
common/built-in.o: In function `__pr_memory_display':
/home/du/source/barebox/common/memory_display.c:117: undefined reference to `ctrlc'
common/built-in.o: In function `run_init':
/home/du/source/barebox/common/startup.c:317: undefined reference to `console_ctrlc_allow'
common/built-in.o: In function `parse_stream_outer':
/home/du/source/barebox/common/hush.c:1742: undefined reference to `ctrlc'
common/built-in.o: In function `run_list_real':
/home/du/source/barebox/common/hush.c:895: undefined reference to `ctrlc'
common/built-in.o: In function `run_shell':
/home/du/source/barebox/common/hush.c:1940: undefined reference to `ctrlc_handled'

Signed-off-by: DU HUANPENG <u74147@gmail.com>
---
 common/console_simple.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 010e0b3..6d293b2 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -64,16 +64,20 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-#ifndef ARCH_HAS_CTRLC
 void ctrlc_handled(void)
 {
 }
 /* test if ctrl-c was pressed */
 int ctrlc (void)
 {
+	int ret = 0;
+#ifdef ARCH_HAS_CTRLC
+	ret = arch_ctrlc();
+#else
 	if (tstc() && getchar() == 3)
-		return 1;
-	return 0;
+		ret = 1;
+#endif
+	return ret;
 }
 EXPORT_SYMBOL(ctrlc);
 
@@ -85,8 +89,6 @@ void console_ctrlc_forbid(void)
 {
 }
 
-#endif /* ARCH_HAS_CTRC */
-
 int console_register(struct console_device *newcdev)
 {
 	if (console)
-- 
2.7.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
