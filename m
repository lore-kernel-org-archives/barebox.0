Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iahz9-0006ha-UJ
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 15:15:09 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <l.stach@pengutronix.de>) id 1iahz8-0006u0-3R
 for barebox@lists.infradead.org; Fri, 29 Nov 2019 16:15:06 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 29 Nov 2019 16:14:32 +0100
Message-Id: <20191129151505.23946-7-l.stach@pengutronix.de>
In-Reply-To: <20191129151505.23946-1-l.stach@pengutronix.de>
References: <20191129151505.23946-1-l.stach@pengutronix.de>
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
Subject: [PATCH 06/39] common: provide stubs for ctrlc_* functions
To: barebox@lists.infradead.org

Currently the stubs are only provided for CONFIG_CONSOLE_SIMPLE, but
they are also needed for CONSOLE_NONE. Move them to the header.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 common/console_simple.c | 11 -----------
 include/common.h        |  5 +++++
 include/console.h       |  5 +++++
 3 files changed, 10 insertions(+), 11 deletions(-)

diff --git a/common/console_simple.c b/common/console_simple.c
index 6d293b2ba109..42224842c5ea 100644
--- a/common/console_simple.c
+++ b/common/console_simple.c
@@ -64,9 +64,6 @@ void console_flush(void)
 }
 EXPORT_SYMBOL(console_flush);
 
-void ctrlc_handled(void)
-{
-}
 /* test if ctrl-c was pressed */
 int ctrlc (void)
 {
@@ -81,14 +78,6 @@ int ctrlc (void)
 }
 EXPORT_SYMBOL(ctrlc);
 
-void console_ctrlc_allow(void)
-{
-}
-
-void console_ctrlc_forbid(void)
-{
-}
-
 int console_register(struct console_device *newcdev)
 {
 	if (console)
diff --git a/include/common.h b/include/common.h
index 65630684678c..c6eb50420f68 100644
--- a/include/common.h
+++ b/include/common.h
@@ -68,7 +68,12 @@ long	get_ram_size  (volatile long *, long);
 /* common/console.c */
 int ctrlc(void);
 int arch_ctrlc(void);
+
+#ifdef CONFIG_CONSOLE_FULL
 void ctrlc_handled(void);
+#else
+static inline void ctrlc_handled(void) { }
+#endif
 
 #ifdef CONFIG_ARCH_HAS_STACK_DUMP
 void dump_stack(void);
diff --git a/include/console.h b/include/console.h
index 7afe59e93a27..537ac97ab34d 100644
--- a/include/console.h
+++ b/include/console.h
@@ -207,7 +207,12 @@ static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
 
 bool console_allow_color(void);
 
+#ifdef CONFIG_CONSOLE_FULL
 void console_ctrlc_allow(void);
 void console_ctrlc_forbid(void);
+#else
+static inline void console_ctrlc_allow(void) { }
+static inline void console_ctrlc_forbid(void) { }
+#endif
 
 #endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
