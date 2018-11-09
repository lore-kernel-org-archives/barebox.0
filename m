Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TI-0002hR-Bv
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:03 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:32 +0100
Message-Id: <20181109095246.15068-7-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 06/20] ARM: start: Add missing include
To: Barebox List <barebox@lists.infradead.org>

entry.h provides prototypes for some functions, so include it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/start.c      | 2 ++
 arch/arm/cpu/uncompress.c | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm/cpu/start.c b/arch/arm/cpu/start.c
index a79d64eaa6..540480d04e 100644
--- a/arch/arm/cpu/start.c
+++ b/arch/arm/cpu/start.c
@@ -34,6 +34,8 @@
 
 #include <debug_ll.h>
 
+#include "entry.h"
+
 unsigned long arm_stack_top;
 static unsigned long arm_barebox_size;
 static void *barebox_boarddata;
diff --git a/arch/arm/cpu/uncompress.c b/arch/arm/cpu/uncompress.c
index 048bca0c95..21d72c58b2 100644
--- a/arch/arm/cpu/uncompress.c
+++ b/arch/arm/cpu/uncompress.c
@@ -34,6 +34,8 @@
 
 #include <debug_ll.h>
 
+#include "entry.h"
+
 unsigned long free_mem_ptr;
 unsigned long free_mem_end_ptr;
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
