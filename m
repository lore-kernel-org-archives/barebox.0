Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7zvl-0005Yo-Bd
 for barebox@lists.infradead.org; Tue, 09 May 2017 07:51:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1d7zvP-0001Wv-NI
 for barebox@lists.infradead.org; Tue, 09 May 2017 09:51:15 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1d7zvP-00046a-GM
 for barebox@lists.infradead.org; Tue, 09 May 2017 09:51:15 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Tue,  9 May 2017 09:51:15 +0200
Message-Id: <20170509075115.15702-1-jbe@pengutronix.de>
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
Subject: [PATCH v2] PPC: request a consistent memory layout
To: barebox@lists.infradead.org

Using the memory test command will crash barebox, because it tests the
area where the stack is located for the PPC architecture.

On PPC the stack is below the barebox binary. Below the stack the malloc
area is located. Until this change some routines used the macros
from 'memory_layout.h', some other calculated their values by their
own - which resulted into an unrequested and unprotected stack area.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/Kconfig |  1 -
 arch/ppc/mach-mpc5xxx/cpu.c   | 18 ++++++++++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index 1ecce3a56..180aa32ad 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -32,7 +32,6 @@ config ARCH_MPC5200
 config MPC5xxx
 	bool
 	depends on MACH_PHYCORE_MPC5200B_TINY
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	default y
 
 menu "Board specific settings"
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index 42ced9ac5..ab58967aa 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -33,6 +33,8 @@
 #include <of.h>
 #include <restart.h>
 #include <mach/clock.h>
+#include <asm-generic/memory_layout.h>
+#include <memory.h>
 
 int checkcpu (void)
 {
@@ -60,6 +62,22 @@ int checkcpu (void)
 
 /* ------------------------------------------------------------------------- */
 
+static int mpc5xxx_reserve_region(void)
+{
+	struct resource *r;
+
+	/* keep this in sync with the assembler routines setting up the stack */
+	r = request_sdram_region("stack", _text_base - STACK_SIZE, STACK_SIZE);
+	if (r == NULL) {
+		pr_err("Failed to request stack region at: 0x%08lx/0x%08lx\n",
+			_text_base - STACK_SIZE, _text_base - 1);
+		return -EBUSY;
+	}
+
+	return 0;
+}
+coredevice_initcall(mpc5xxx_reserve_region);
+
 static void __noreturn mpc5xxx_restart_soc(struct restart_handler *rst)
 {
 	ulong msr;
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
