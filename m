Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWPg-0004Qp-Uf
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:53:07 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 5F2BF1C000F
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:53:03 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:52:56 +0100
Message-Id: <20191115075257.24079-4-ahmad@a3f.at>
In-Reply-To: <20191115075257.24079-1-ahmad@a3f.at>
References: <20191115075257.24079-1-ahmad@a3f.at>
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
Subject: [PATCH 4/5] commands: smc: verify PSCI_POWER_ON with interprocessor
 handshake
To: barebox@lists.infradead.org

The use of psci_printf here, at least for the phytec-phycore-imx7,
is racy, because access to the UART is not synchronized. This may
lead to characters being swallowed and most certainly to garbled
text. One way around this would be using separate UART ports for
each core or even more generically, just dropping psci_printf and
resorting to inter-core communication over shared-memory to check
whether code execution succeeded.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/Makefile |  2 +-
 commands/smc.c        | 61 ++++++++++++++++++++++++++++++++++++++-----
 2 files changed, 56 insertions(+), 7 deletions(-)

diff --git a/arch/arm/cpu/Makefile b/arch/arm/cpu/Makefile
index 09b3bc2eeab9..75cd42a5e271 100644
--- a/arch/arm/cpu/Makefile
+++ b/arch/arm/cpu/Makefile
@@ -2,7 +2,7 @@ obj-y += cpu.o
 
 obj-$(CONFIG_ARM_EXCEPTIONS) += exceptions$(S64).o interrupts$(S64).o
 obj-$(CONFIG_MMU) += mmu$(S64).o mmu-common.o
-lwl-y += lowlevel$(S64).o
+obj-pbl-y += lowlevel$(S64).o
 obj-pbl-$(CONFIG_MMU) += mmu-early$(S64).o
 obj-pbl-$(CONFIG_CPU_32v7) += hyp.o
 AFLAGS_hyp.o :=-Wa,-march=armv7-a -Wa,-mcpu=all
diff --git a/commands/smc.c b/commands/smc.c
index eb96e581dc02..997103676eba 100644
--- a/commands/smc.c
+++ b/commands/smc.c
@@ -3,23 +3,47 @@
 #include <common.h>
 #include <command.h>
 #include <getopt.h>
+#include <dma.h>
+#include <linux/iopoll.h>
+#include <asm/barebox-arm-head.h>
 
 #include <asm/psci.h>
 #include <asm/secure.h>
 #include <linux/arm-smccc.h>
 
-static void second_entry(void)
+#define STACK_SIZE 100
+#define HANDSHAKE_MAGIC	0xBA12EB0C
+#define ERROR_MAGIC	0xDEADBEEF
+
+struct cpu_context {
+	unsigned long stack[STACK_SIZE];
+	long handshake;
+};
+
+static void noinline cpu_handshake(long *handshake)
 {
 	struct arm_smccc_res res;
 
-	psci_printf("2nd CPU online, now turn off again\n");
+	writel(HANDSHAKE_MAGIC, handshake);
 
 	arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_OFF,
 		      0, 0, 0, 0, 0, 0, 0, &res);
 
-	psci_printf("2nd CPU still alive?\n");
+	writel(ERROR_MAGIC, handshake);
+
+	while (1)
+		;
+}
+
+static void __naked second_entry(unsigned long arg0)
+{
+	struct cpu_context *context = (void*)arg0;
+
+	arm_cpu_lowlevel_init();
+	arm_setup_stack((unsigned long)&context->stack[STACK_SIZE]);
+	barrier();
 
-	while (1);
+	cpu_handshake(&context->handshake);
 }
 
 static const char *psci_xlate_str(long err)
@@ -54,6 +78,8 @@ static const char *psci_xlate_str(long err)
        return errno_string;
 }
 
+static struct cpu_context *context;
+
 static int do_smc(int argc, char *argv[])
 {
 	long ret;
@@ -79,12 +105,35 @@ static int do_smc(int argc, char *argv[])
 			printf("found psci version %ld.%ld\n", res.a0 >> 16, res.a0 & 0xffff);
 			break;
 		case 'c':
+			if (!context)
+				context = dma_alloc_coherent(sizeof(*context),
+							     DMA_ADDRESS_BROKEN);
+
+			if (!context) {
+				printf("Out of memory\n");
+				return COMMAND_ERROR;
+			}
+
 			arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_ON,
-				      1, (unsigned long)second_entry, 0, 0, 0, 0, 0, &res);
+				      1, (unsigned long)second_entry, (unsigned long)context,
+				      0, 0, 0, 0, &res);
 			ret = (long)res.a0;
 			printf("CPU_ON returns with: %s\n", psci_xlate_str(ret));
-			if (ret)
+			if (ret) {
+				unsigned long magic = readl(&context->handshake);
+				if (magic == ERROR_MAGIC)
+					printf("Turning off CPU had failed\n");
 				return COMMAND_ERROR;
+			}
+
+			readl_poll_timeout(&context->handshake, ret,
+					   ret != HANDSHAKE_MAGIC, USEC_PER_SEC);
+			if (ret == 0) {
+				printf("Second CPU handshake timed out.\n");
+				return COMMAND_ERROR;
+			}
+
+			printf("Second CPU handshake successful.\n");
 		}
 	}
 
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
