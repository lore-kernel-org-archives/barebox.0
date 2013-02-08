Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp30.i.mail.ru ([94.100.177.90])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1U3kne-0000dM-6p
 for barebox@lists.infradead.org; Fri, 08 Feb 2013 10:03:18 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Fri,  8 Feb 2013 14:02:21 +0400
Message-Id: <1360317743-25975-9-git-send-email-shc_work@mail.ru>
In-Reply-To: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
References: <1360317743-25975-1-git-send-email-shc_work@mail.ru>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 09/11] ARM: clps711x: Move memory initialization in common
 CLPS711X location
To: barebox@lists.infradead.org

One memory initialization will be used on any CLPS711X-target,
so move it in the common location.

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 arch/arm/boards/clep7212/clep7212.c |   10 ----------
 arch/arm/mach-clps711x/devices.c    |   12 ++++++++++++
 2 files changed, 12 insertions(+), 10 deletions(-)

diff --git a/arch/arm/boards/clep7212/clep7212.c b/arch/arm/boards/clep7212/clep7212.c
index b96e480..ec9a9cb 100644
--- a/arch/arm/boards/clep7212/clep7212.c
+++ b/arch/arm/boards/clep7212/clep7212.c
@@ -20,16 +20,6 @@
 #include <mach/clps711x.h>
 #include <mach/devices.h>
 
-static int clps711x_mem_init(void)
-{
-	ulong memsize = get_ram_size((ulong *)SDRAM0_BASE, SZ_32M);
-
-	arm_add_mem_device("ram0", SDRAM0_BASE, memsize);
-
-	return 0;
-}
-mem_initcall(clps711x_mem_init);
-
 static int clps711x_devices_init(void)
 {
 	u32 serial_h = 0, serial_l = readl(UNIQID);
diff --git a/arch/arm/mach-clps711x/devices.c b/arch/arm/mach-clps711x/devices.c
index de5813a..6c760db 100644
--- a/arch/arm/mach-clps711x/devices.c
+++ b/arch/arm/mach-clps711x/devices.c
@@ -9,11 +9,23 @@
 
 #include <common.h>
 #include <init.h>
+#include <sizes.h>
 
 #include <asm/io.h>
+#include <asm/memory.h>
 
 #include <mach/clps711x.h>
 
+static int clps711x_mem_init(void)
+{
+	ulong memsize = get_ram_size((ulong *)SDRAM0_BASE, SZ_64M);
+
+	arm_add_mem_device("ram0", SDRAM0_BASE, memsize);
+
+	return 0;
+}
+mem_initcall(clps711x_mem_init);
+
 inline static void _clps711x_setup_memcfg(int bank, u32 addr, u32 val)
 {
 	u32 tmp = readl(addr);
-- 
1.7.3.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
