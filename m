Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hJF7A-0008U8-Qk
 for barebox@lists.infradead.org; Wed, 24 Apr 2019 10:26:58 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 24 Apr 2019 12:26:47 +0200
Message-Id: <20190424102650.9257-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] Shell: Handle aborting loops better
To: Barebox List <barebox@lists.infradead.org>

It's easy to get stuck in an infinite loop in the hush shell:

while true; do sleep 1; done

The 'sleep' command will check for ctrl-c with the ctrlc() function. This
will abort the sleep command. Hush then checks for ctrl-c again in the
loop. The ctrl-c in the buffer has already been eaten by the sleep
command, so the loop will continue.

With this patch we remember the presence of a ctrl-c character in a
variable instead of checking for a new character each time. The
variable must be resetted explicitly by calling ctrlc_handled() which
will be called by the shell in the outer loop.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/sandbox/os/common.c |  2 +-
 common/console.c         | 28 +++++++++++++++++++++++-----
 common/hush.c            |  3 ++-
 common/parser.c          |  1 +
 include/common.h         |  4 +++-
 5 files changed, 30 insertions(+), 8 deletions(-)

diff --git a/arch/sandbox/os/common.c b/arch/sandbox/os/common.c
index 665e8194ef..a7ea8f2d3b 100644
--- a/arch/sandbox/os/common.c
+++ b/arch/sandbox/os/common.c
@@ -94,7 +94,7 @@ int linux_tstc(int fd)
 	return 0;
 }
 
-int ctrlc(void)
+int arch_ctrlc(void)
 {
 	char chr;
 
diff --git a/common/console.c b/common/console.c
index 47ccf2e54d..b6685ecf6a 100644
--- a/common/console.c
+++ b/common/console.c
@@ -574,18 +574,36 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-#ifndef ARCH_HAS_CTRLC
+static int ctrlc_abort;
+
+void ctrlc_handled(void)
+{
+	ctrlc_abort = 0;
+}
+
 /* test if ctrl-c was pressed */
-int ctrlc (void)
+int ctrlc(void)
 {
+	int ret = 0;
+
+	if (ctrlc_abort)
+		return 1;
+
 	poller_call();
 
+#ifdef ARCH_HAS_CTRLC
+	ret = arch_ctrlc();
+#else
 	if (tstc() && getchar() == 3)
-		return 1;
-	return 0;
+		ret = 1;
+#endif
+
+	if (ret)
+		ctrlc_abort = 1;
+
+	return ret;
 }
 EXPORT_SYMBOL(ctrlc);
-#endif /* ARCH_HAS_CTRC */
 
 BAREBOX_MAGICVAR_NAMED(global_linux_bootargs_console, global.linux.bootargs.console,
 		"console= argument for Linux from the stdout-path property in /chosen node");
diff --git a/common/hush.c b/common/hush.c
index d2f9cc70f5..dab9b04081 100644
--- a/common/hush.c
+++ b/common/hush.c
@@ -1734,7 +1734,7 @@ static int parse_stream_outer(struct p_context *ctx, struct in_str *inp, int fla
 			return 1;
 		}
 		b_free(&temp);
-	} while (rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
+	} while (!ctrlc() && rcode != -1 && !(flag & FLAG_EXIT_FROM_LOOP));   /* loop on syntax errors, return on EOF */
 
 	return code;
 }
@@ -1932,6 +1932,7 @@ int run_shell(void)
 	login();
 
 	do {
+		ctrlc_handled();
 		setup_file_in_str(&input);
 		rcode = parse_stream_outer(&ctx, &input, FLAG_PARSE_SEMICOLON);
 		if (rcode < -1) {
diff --git a/common/parser.c b/common/parser.c
index 397d268da1..fb9ef42e7f 100644
--- a/common/parser.c
+++ b/common/parser.c
@@ -283,6 +283,7 @@ int run_shell(void)
 				/* invalid command or not repeatable, forget it */
 				lastcommand[0] = 0;
 			}
+			ctrlc_handled();
 		}
 	}
 	return 0;
diff --git a/include/common.h b/include/common.h
index 11d26cb3db..723b9c706c 100644
--- a/include/common.h
+++ b/include/common.h
@@ -68,7 +68,9 @@ int	readline	(const char *prompt, char *buf, int len);
 long	get_ram_size  (volatile long *, long);
 
 /* common/console.c */
-int	ctrlc (void);
+int ctrlc(void);
+int arch_ctrlc(void);
+void ctrlc_handled(void);
 
 #ifdef ARCH_HAS_STACK_DUMP
 void dump_stack(void);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
