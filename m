Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSibc-0008Gd-UT
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:13:20 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gSibQ-0003ku-5Q
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 14:13:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Nov 2018 14:13:03 +0100
Message-Id: <20181130131303.2934-6-l.stach@pengutronix.de>
In-Reply-To: <20181130131303.2934-1-l.stach@pengutronix.de>
References: <20181130131303.2934-1-l.stach@pengutronix.de>
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
Subject: [PATCH 6/6] ARM64: backtrace: fix missing prototypes
To: barebox@lists.infradead.org

Include header for unwind_backtrace prototype and mark dump_backtrace_entry
as static.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/lib64/stacktrace.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/lib64/stacktrace.c b/arch/arm/lib64/stacktrace.c
index b8352c1454da..43911884466d 100644
--- a/arch/arm/lib64/stacktrace.c
+++ b/arch/arm/lib64/stacktrace.c
@@ -11,6 +11,7 @@
 
 #include <common.h>
 #include <asm/stacktrace.h>
+#include <asm/unwind.h>
 
 #define THREAD_SIZE 16384
 
@@ -45,7 +46,7 @@ int unwind_frame(struct stackframe *frame)
 	return 0;
 }
 
-void dump_backtrace_entry(unsigned long where, unsigned long from)
+static void dump_backtrace_entry(unsigned long where, unsigned long from)
 {
 #ifdef CONFIG_KALLSYMS
 	printf("[<%08lx>] (%pS) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
