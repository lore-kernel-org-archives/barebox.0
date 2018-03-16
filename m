Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosI-0001qE-Fi
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:26 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 27/78] ARM: move linker variable declarations to sections.h
Date: Fri, 16 Mar 2018 13:53:03 +0100
Message-Id: <20180316125354.23462-28-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
To: Barebox List <barebox@lists.infradead.org>

We collected most linker variable declarations in asm/sections.h, so
move __exceptions_start/__exceptions_stop there aswell.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/mmu.c                 | 1 +
 arch/arm/cpu/no-mmu.c              | 2 +-
 arch/arm/include/asm/barebox-arm.h | 2 --
 arch/arm/include/asm/sections.h    | 2 ++
 4 files changed, 4 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 27d994d452..de0b631981 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -30,6 +30,7 @@
 #include <asm/pgtable.h>
 #include <memory.h>
 #include <asm/system_info.h>
+#include <asm/sections.h>
 
 #include "mmu.h"
 
diff --git a/arch/arm/cpu/no-mmu.c b/arch/arm/cpu/no-mmu.c
index e227b457a1..7268fa9b9d 100644
--- a/arch/arm/cpu/no-mmu.c
+++ b/arch/arm/cpu/no-mmu.c
@@ -28,7 +28,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <debug_ll.h>
-
+#include <asm/sections.h>
 
 #define __exceptions_size (__exceptions_stop - __exceptions_start)
 
diff --git a/arch/arm/include/asm/barebox-arm.h b/arch/arm/include/asm/barebox-arm.h
index 6c7507a9c7..fa673a63a7 100644
--- a/arch/arm/include/asm/barebox-arm.h
+++ b/arch/arm/include/asm/barebox-arm.h
@@ -32,8 +32,6 @@
 #include <linux/compiler.h>
 #include <asm/barebox-arm-head.h>
 
-extern char __exceptions_start[], __exceptions_stop[];
-
 unsigned long get_runtime_offset(void);
 
 /* global_variable_offset() - Access global variables when not running at link address
diff --git a/arch/arm/include/asm/sections.h b/arch/arm/include/asm/sections.h
index b3ada62ee8..6933c7032d 100644
--- a/arch/arm/include/asm/sections.h
+++ b/arch/arm/include/asm/sections.h
@@ -8,6 +8,8 @@ extern char __rel_dyn_start[];
 extern char __rel_dyn_end[];
 extern char __dynsym_start[];
 extern char __dynsym_end[];
+extern char __exceptions_start[];
+extern char __exceptions_stop[];
 
 #endif
 
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
