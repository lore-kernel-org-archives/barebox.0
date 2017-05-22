Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dCj2I-0007Je-DH
 for barebox@lists.infradead.org; Mon, 22 May 2017 08:49:56 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.84_2)
 (envelope-from <jbe@pengutronix.de>) id 1dCj1u-00088T-F5
 for barebox@lists.infradead.org; Mon, 22 May 2017 10:49:30 +0200
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.89)
 (envelope-from <jbe@pengutronix.de>) id 1dCj1u-0001ae-7k
 for barebox@lists.infradead.org; Mon, 22 May 2017 10:49:30 +0200
From: Juergen Borleis <jbe@pengutronix.de>
Date: Mon, 22 May 2017 10:49:30 +0200
Message-Id: <20170522084930.6072-1-jbe@pengutronix.de>
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
Subject: [PATCH] PPC: request a consistent memory layout (part II)
To: barebox@lists.infradead.org

Using the memory test command will crash barebox, because it may tests the
area where the vector table is located for the PPC architecture.

On the e300 PPC core the vectors are programmable in their location.
This change checks the used location at run-time and requests the area
to prevent the memory test from overwriting it.

Signed-off-by: Juergen Borleis <jbe@pengutronix.de>
---
 arch/ppc/include/asm/common.h |  1 +
 arch/ppc/mach-mpc5xxx/cpu.c   | 17 +++++++++++++++++
 arch/ppc/mach-mpc5xxx/start.S |  5 +++++
 3 files changed, 23 insertions(+)

diff --git a/arch/ppc/include/asm/common.h b/arch/ppc/include/asm/common.h
index 045817bed..7ea5dacdb 100644
--- a/arch/ppc/include/asm/common.h
+++ b/arch/ppc/include/asm/common.h
@@ -11,6 +11,7 @@ int	cpu_init      (void);
 
 uint	get_pvr	      (void);
 uint	get_svr	      (void);
+uint	get_msr	      (void);
 
 void	trap_init     (ulong);
 
diff --git a/arch/ppc/mach-mpc5xxx/cpu.c b/arch/ppc/mach-mpc5xxx/cpu.c
index ab58967aa..75bb7b9e8 100644
--- a/arch/ppc/mach-mpc5xxx/cpu.c
+++ b/arch/ppc/mach-mpc5xxx/cpu.c
@@ -61,10 +61,27 @@ int checkcpu (void)
 }
 
 /* ------------------------------------------------------------------------- */
+static unsigned mpc5125_get_CPU_exception_vector_begin(void)
+{
+	unsigned msr = get_msr();
+
+	if (msr & MSR_IP)
+		return 0xfff00000;
+	return 0x00000000;
+}
 
 static int mpc5xxx_reserve_region(void)
 {
 	struct resource *r;
+	unsigned exception_vector;
+
+	exception_vector = mpc5125_get_CPU_exception_vector_begin();
+	r = request_sdram_region("vector_table", exception_vector, exception_vector + 0x2fff);
+	if (r == NULL) {
+		pr_err("Failed to request vector_table region at: 0x%08x/0x%08x\n",
+			exception_vector, exception_vector + 0x2fff);
+		return -EBUSY;
+	}
 
 	/* keep this in sync with the assembler routines setting up the stack */
 	r = request_sdram_region("stack", _text_base - STACK_SIZE, STACK_SIZE);
diff --git a/arch/ppc/mach-mpc5xxx/start.S b/arch/ppc/mach-mpc5xxx/start.S
index 291f6250a..67207ae81 100644
--- a/arch/ppc/mach-mpc5xxx/start.S
+++ b/arch/ppc/mach-mpc5xxx/start.S
@@ -737,3 +737,8 @@ _bss_start:
 .globl _bss_end
 _bss_end:
 	.long _end
+
+.globl get_msr
+get_msr:
+	mfmsr	r3
+	blr
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
