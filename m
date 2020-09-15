Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kIA29-0007rE-Sl
 for barebox@lists.infradead.org; Tue, 15 Sep 2020 12:26:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 15 Sep 2020 14:25:36 +0200
Message-Id: <20200915122539.18744-8-s.hauer@pengutronix.de>
In-Reply-To: <20200915122539.18744-1-s.hauer@pengutronix.de>
References: <20200915122539.18744-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 07/10] openrisc: Add missing includes
To: Barebox List <barebox@lists.infradead.org>

Add missing includes to avoid -Wmissing-prototypes warnings.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/openrisc/cpu/cache.c      | 1 +
 arch/openrisc/cpu/exceptions.c | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/openrisc/cpu/cache.c b/arch/openrisc/cpu/cache.c
index 1da2380c03..db6403634a 100644
--- a/arch/openrisc/cpu/cache.c
+++ b/arch/openrisc/cpu/cache.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <asm/system.h>
+#include <asm/cache.h>
 
 void flush_dcache_range(unsigned long addr, unsigned long stop)
 {
diff --git a/arch/openrisc/cpu/exceptions.c b/arch/openrisc/cpu/exceptions.c
index 4c52feb51c..c69ceafe80 100644
--- a/arch/openrisc/cpu/exceptions.c
+++ b/arch/openrisc/cpu/exceptions.c
@@ -16,6 +16,7 @@
 
 #include <common.h>
 #include <asm/system.h>
+#include <asm/openrisc_exc.h>
 
 static const char * const excp_table[] = {
 	"Unknown exception",
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
