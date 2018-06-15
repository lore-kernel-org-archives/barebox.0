Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg0-x22d.google.com ([2607:f8b0:400e:c05::22d])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fTg5k-0000be-D0
 for barebox@lists.infradead.org; Fri, 15 Jun 2018 04:12:07 +0000
Received: by mail-pg0-x22d.google.com with SMTP id p21-v6so3850841pgd.11
 for <barebox@lists.infradead.org>; Thu, 14 Jun 2018 21:11:54 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu, 14 Jun 2018 21:11:08 -0700
Message-Id: <20180615041136.23492-3-andrew.smirnov@gmail.com>
In-Reply-To: <20180615041136.23492-1-andrew.smirnov@gmail.com>
References: <20180615041136.23492-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 01/27] pbl: console: Introduce putc_func_t
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/arm/cpu/psci.c | 4 ++--
 include/console.h   | 6 ++++--
 pbl/console.c       | 4 ++--
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 0a7e48f8f..ad132c0a3 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -33,10 +33,10 @@
  * warned.
  */
 
-static void (*__putc)(void *ctx, int c);
+static putc_func_t __putc;
 static void *putc_ctx;
 
-void psci_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
+void psci_set_putc(putc_func_t putcf, void *ctx)
 {
         __putc = putcf;
         putc_ctx = ctx;
diff --git a/include/console.h b/include/console.h
index 673921331..c671be859 100644
--- a/include/console.h
+++ b/include/console.h
@@ -199,10 +199,12 @@ static inline int console_drain(struct console_device *cdev,
 	return __console_drain(is_timeout, cdev, fifo, buf, len, timeout);
 }
 
+typedef void (*putc_func_t) (void *ctx, int c);
+
 #ifdef CONFIG_PBL_CONSOLE
-void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx);
+void pbl_set_putc(putc_func_t putcf, void *ctx);
 #else
-static inline void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx) {}
+static inline void pbl_set_putc(putc_func_t putcf, void *ctx) {}
 #endif
 
 bool console_allow_color(void);
diff --git a/pbl/console.c b/pbl/console.c
index 007e4e4b8..75576ec79 100644
--- a/pbl/console.c
+++ b/pbl/console.c
@@ -6,7 +6,7 @@
  * Put these in the data section so that they survive the clearing of the
  * BSS segment.
  */
-static __attribute__ ((section(".data"))) void (*__putc)(void *ctx, int c);
+static __attribute__ ((section(".data"))) putc_func_t __putc;
 static __attribute__ ((section(".data"))) void *putc_ctx;
 
 /**
@@ -17,7 +17,7 @@ static __attribute__ ((section(".data"))) void *putc_ctx;
  * This sets the putc function which is afterwards used to output
  * characters in the PBL.
  */
-void pbl_set_putc(void (*putcf)(void *ctx, int c), void *ctx)
+void pbl_set_putc(putc_func_t putcf, void *ctx)
 {
 	__putc = putcf;
 	putc_ctx = ctx;
-- 
2.17.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
