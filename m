Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d7iDI-0003vA-7N
 for barebox@lists.infradead.org; Mon, 08 May 2017 12:56:34 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1d7iCu-00064E-5r
 for barebox@lists.infradead.org; Mon, 08 May 2017 14:56:08 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1d7iCt-00004x-Ur
 for barebox@lists.infradead.org; Mon, 08 May 2017 14:56:07 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon,  8 May 2017 14:56:07 +0200
Message-Id: <20170508125607.32511-1-jbe@pengutronix.de>
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
Subject: [PATCH] PPC: request a consistent memory layout
To: barebox@lists.infradead.org

Using the memory test command will crash barebox, because it tests the
area where the stack is located for the PPC architecture.

On PPC the stack is below the barebox binary. Below the stack the malloc
area is located. Until this change some routines used the macros
from memory_layout.h, some other calculated their values by their
own - which resulted into an unrequested and unprotected stack area.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/mach-mpc5xxx/Kconfig       |  1 -
 arch/ppc/mach-mpc5xxx/cpu-mpc5200.c | 18 ++++++++++++++++++
 2 files changed, 18 insertions(+), 1 deletion(-)

diff --git a/arch/ppc/mach-mpc5xxx/Kconfig b/arch/ppc/mach-mpc5xxx/Kconfig
index d0f5d78f4..fef661b0f 100644
--- a/arch/ppc/mach-mpc5xxx/Kconfig
+++ b/arch/ppc/mach-mpc5xxx/Kconfig
@@ -52,7 +52,6 @@ config ARCH_MPC5200
 config MPC5xxx
 	bool
 	depends on MACH_PHYCORE_MPC5200B_TINY || MMC12
-	select HAVE_CONFIGURABLE_MEMORY_LAYOUT
 	default y
 
 menu "Board specific settings"
diff --git a/arch/ppc/mach-mpc5xxx/cpu-mpc5200.c b/arch/ppc/mach-mpc5xxx/cpu-mpc5200.c
index 42ced9ac5..1e33eea75 100644
--- a/arch/ppc/mach-mpc5xxx/cpu-mpc5200.c
+++ b/arch/ppc/mach-mpc5xxx/cpu-mpc5200.c
@@ -33,6 +33,8 @@
 #include <of.h>
 #include <restart.h>
 #include <mach/clock.h>
+#include <asm-generic/memory_layout.h>
+#include <memory.h>
 
 int checkcpu (void)
 {
@@ -241,3 +243,19 @@ void mpc5200_setup_cs(int cs, unsigned long start, unsigned long size, u32 cfg)
 	addecr |= chipselects[cs].addecr | 1;
 	out_be32((void *)MPC5XXX_ADDECR, addecr);
 }
+
+static int mpc5200_reserve_region(void)
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
+coredevice_initcall(mpc5200_reserve_region);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
