Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from ns.km20343-01.keymachine.de ([84.19.182.79]
 helo=km20343-01.keymachine.de)
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UPr7X-0008Ko-2L
 for barebox@lists.infradead.org; Wed, 10 Apr 2013 09:15:17 +0000
From: Lucas Stach <dev@lynxeye.de>
Date: Wed, 10 Apr 2013 11:14:54 +0200
Message-Id: <1365585295-2420-12-git-send-email-dev@lynxeye.de>
In-Reply-To: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
References: <1365585295-2420-1-git-send-email-dev@lynxeye.de>
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
Subject: [PATCH v4 12/13] tegra: add generic meminit
To: barebox@lists.infradead.org

ODMdata tells us how much RAM is installed, so no need to define this at
the board level.

Signed-off-by: Lucas Stach <dev@lynxeye.de>
---
 arch/arm/boards/toshiba-ac100/board.c | 8 --------
 arch/arm/mach-tegra/tegra20.c         | 9 +++++++++
 2 files changed, 9 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boards/toshiba-ac100/board.c b/arch/arm/boards/toshiba-ac100/board.c
index 0eb85c5..51232ef 100644
--- a/arch/arm/boards/toshiba-ac100/board.c
+++ b/arch/arm/boards/toshiba-ac100/board.c
@@ -23,14 +23,6 @@
 #include <usb/ehci.h>
 #include <mach/iomap.h>
 
-static int ac100_mem_init(void)
-{
-	arm_add_mem_device("ram0", 0x0, SZ_512M);
-
-	return 0;
-}
-mem_initcall(ac100_mem_init);
-
 static struct ehci_platform_data ehci_pdata = {
 	.flags = EHCI_HAS_TT,
 };
diff --git a/arch/arm/mach-tegra/tegra20.c b/arch/arm/mach-tegra/tegra20.c
index 1a09e55..b06ae98 100644
--- a/arch/arm/mach-tegra/tegra20.c
+++ b/arch/arm/mach-tegra/tegra20.c
@@ -17,6 +17,7 @@
 #include <common.h>
 #include <init.h>
 #include <ns16550.h>
+#include <asm/memory.h>
 #include <mach/iomap.h>
 #include <mach/lowlevel.h>
 
@@ -55,3 +56,11 @@ static int tegra20_add_debug_console(void)
 	return 0;
 }
 console_initcall(tegra20_add_debug_console);
+
+static int tegra20_mem_init(void)
+{
+	arm_add_mem_device("ram0", 0x0, tegra20_get_ramsize());
+
+	return 0;
+}
+mem_initcall(tegra20_mem_init);
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
