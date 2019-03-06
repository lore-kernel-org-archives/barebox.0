Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1h1T4W-0006qX-Af
 for barebox@lists.infradead.org; Wed, 06 Mar 2019 09:42:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed,  6 Mar 2019 10:42:36 +0100
Message-Id: <20190306094239.29413-3-s.hauer@pengutronix.de>
In-Reply-To: <20190306094239.29413-1-s.hauer@pengutronix.de>
References: <20190306094239.29413-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/5] debug_ll: Move pl011 header file to architecture
 independent place
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-bcm283x/include/mach/debug_ll.h                   | 2 +-
 arch/arm/mach-highbank/include/mach/debug_ll.h                  | 2 +-
 arch/arm/mach-qemu/include/mach/debug_ll.h                      | 2 +-
 arch/arm/mach-versatile/include/mach/debug_ll.h                 | 2 +-
 arch/arm/mach-vexpress/include/mach/debug_ll.h                  | 2 +-
 .../include/asm/debug_ll_pl011.h => include/debug_ll/pl011.h    | 0
 6 files changed, 5 insertions(+), 5 deletions(-)
 rename arch/arm/include/asm/debug_ll_pl011.h => include/debug_ll/pl011.h (100%)

diff --git a/arch/arm/mach-bcm283x/include/mach/debug_ll.h b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
index a625a8bdb7..2e95bf8320 100644
--- a/arch/arm/mach-bcm283x/include/mach/debug_ll.h
+++ b/arch/arm/mach-bcm283x/include/mach/debug_ll.h
@@ -26,6 +26,6 @@
 
 #define DEBUG_LL_UART_ADDR CONFIG_MACH_RPI_DEBUG_UART_BASE
 
-#include <asm/debug_ll_pl011.h>
+#include <debug_ll/pl011.h>
 
 #endif /* __MACH_BCM2835_DEBUG_LL_H__ */
diff --git a/arch/arm/mach-highbank/include/mach/debug_ll.h b/arch/arm/mach-highbank/include/mach/debug_ll.h
index 1820eb1d13..5d0fae80e7 100644
--- a/arch/arm/mach-highbank/include/mach/debug_ll.h
+++ b/arch/arm/mach-highbank/include/mach/debug_ll.h
@@ -9,6 +9,6 @@
 
 #define DEBUG_LL_UART_ADDR 0xfff36000
 
-#include <asm/debug_ll_pl011.h>
+#include <debug_ll/pl011.h>
 
 #endif
diff --git a/arch/arm/mach-qemu/include/mach/debug_ll.h b/arch/arm/mach-qemu/include/mach/debug_ll.h
index 89b06923ad..d59f68ea19 100644
--- a/arch/arm/mach-qemu/include/mach/debug_ll.h
+++ b/arch/arm/mach-qemu/include/mach/debug_ll.h
@@ -19,6 +19,6 @@
 #define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
 #endif
 
-#include <asm/debug_ll_pl011.h>
+#include <debug_ll/pl011.h>
 
 #endif
diff --git a/arch/arm/mach-versatile/include/mach/debug_ll.h b/arch/arm/mach-versatile/include/mach/debug_ll.h
index e6ee877a54..073402c51a 100644
--- a/arch/arm/mach-versatile/include/mach/debug_ll.h
+++ b/arch/arm/mach-versatile/include/mach/debug_ll.h
@@ -18,6 +18,6 @@
 
 #define DEBUG_LL_UART_ADDR 0x101F1000
 
-#include <asm/debug_ll_pl011.h>
+#include <debug_ll/pl011.h>
 
 #endif
diff --git a/arch/arm/mach-vexpress/include/mach/debug_ll.h b/arch/arm/mach-vexpress/include/mach/debug_ll.h
index 89b06923ad..d59f68ea19 100644
--- a/arch/arm/mach-vexpress/include/mach/debug_ll.h
+++ b/arch/arm/mach-vexpress/include/mach/debug_ll.h
@@ -19,6 +19,6 @@
 #define DEBUG_LL_UART_ADDR DEBUG_LL_PHYS_BASE_RS1
 #endif
 
-#include <asm/debug_ll_pl011.h>
+#include <debug_ll/pl011.h>
 
 #endif
diff --git a/arch/arm/include/asm/debug_ll_pl011.h b/include/debug_ll/pl011.h
similarity index 100%
rename from arch/arm/include/asm/debug_ll_pl011.h
rename to include/debug_ll/pl011.h
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
