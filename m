Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVWPg-0004Ql-8H
 for barebox@lists.infradead.org; Fri, 15 Nov 2019 07:53:06 +0000
Received: from geraet.fritz.box (48-248-142-46.pool.kielnet.net
 [46.142.248.48]) (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id 1D1141C0007
 for <barebox@lists.infradead.org>; Fri, 15 Nov 2019 07:53:01 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 15 Nov 2019 08:52:53 +0100
Message-Id: <20191115075257.24079-1-ahmad@a3f.at>
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
Subject: [PATCH 1/5] ARM: psci: factor out smc command into commands/
To: barebox@lists.infradead.org

So far, the smc command was only usable when barebox also provides the
secure monitor. It's useful to have it when barebox is a PSCI consumer
as well to test whether the secure monitor works.
Factor out the code into commands/ in preparation to do so.
No functional change.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/cpu/psci.c | 105 -------------------------------------------
 commands/Kconfig    |  15 +++++++
 commands/Makefile   |   1 +
 commands/smc.c      | 107 ++++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 123 insertions(+), 105 deletions(-)
 create mode 100644 commands/smc.c

diff --git a/arch/arm/cpu/psci.c b/arch/arm/cpu/psci.c
index 22ce1dfd0e84..713ab2396c01 100644
--- a/arch/arm/cpu/psci.c
+++ b/arch/arm/cpu/psci.c
@@ -227,108 +227,3 @@ static int armv7_psci_init(void)
 	return of_register_fixup(of_psci_do_fixup, NULL);
 }
 device_initcall(armv7_psci_init);
-
-#ifdef CONFIG_ARM_PSCI_DEBUG
-
-#include <command.h>
-#include <getopt.h>
-#include "mmu.h"
-
-void second_entry(void)
-{
-	struct arm_smccc_res res;
-
-	psci_printf("2nd CPU online, now turn off again\n");
-
-	arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_OFF,
-		      0, 0, 0, 0, 0, 0, 0, &res);
-
-	psci_printf("2nd CPU still alive?\n");
-
-	while (1);
-}
-
-static const char *psci_xlate_str(long err)
-{
-       static char errno_string[sizeof "error 0x123456789ABCDEF0"];
-
-       switch(err)
-       {
-       case ARM_PSCI_RET_SUCCESS:
-	       return "Success";
-       case ARM_PSCI_RET_NOT_SUPPORTED:
-	       return "Operation not supported";
-       case ARM_PSCI_RET_INVAL:
-	       return "Invalid argument";
-       case ARM_PSCI_RET_DENIED:
-	       return "Operation not permitted";
-       case ARM_PSCI_RET_ALREADY_ON:
-	       return "CPU already on";
-       case ARM_PSCI_RET_ON_PENDING:
-	       return "CPU_ON in progress";
-       case ARM_PSCI_RET_INTERNAL_FAILURE:
-	       return "Internal failure";
-       case ARM_PSCI_RET_NOT_PRESENT:
-	       return "Trusted OS not present on core";
-       case ARM_PSCI_RET_DISABLED:
-	       return "CPU is disabled";
-       case ARM_PSCI_RET_INVALID_ADDRESS:
-	       return "Bad address";
-       }
-
-       sprintf(errno_string, "error 0x%lx", err);
-       return errno_string;
-}
-
-static int do_smc(int argc, char *argv[])
-{
-	long ret;
-	int opt;
-	struct arm_smccc_res res = {
-		.a0 = 0xdeadbee0,
-		.a1 = 0xdeadbee1,
-		.a2 = 0xdeadbee2,
-		.a3 = 0xdeadbee3,
-	};
-
-	if (argc < 2)
-		return COMMAND_ERROR_USAGE;
-
-	while ((opt = getopt(argc, argv, "nic")) > 0) {
-		switch (opt) {
-		case 'n':
-			armv7_secure_monitor_install();
-			break;
-		case 'i':
-			arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION,
-				      0, 0, 0, 0, 0, 0, 0, &res);
-			printf("found psci version %ld.%ld\n", res.a0 >> 16, res.a0 & 0xffff);
-			break;
-		case 'c':
-			arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_ON,
-				      1, (unsigned long)second_entry, 0, 0, 0, 0, 0, &res);
-			ret = (long)res.a0;
-			printf("CPU_ON returns with: %s\n", psci_xlate_str(ret));
-			if (ret)
-				return COMMAND_ERROR;
-		}
-	}
-
-
-	return 0;
-}
-BAREBOX_CMD_HELP_START(smc)
-BAREBOX_CMD_HELP_TEXT("Secure monitor code test command")
-BAREBOX_CMD_HELP_TEXT("")
-BAREBOX_CMD_HELP_TEXT("Options:")
-BAREBOX_CMD_HELP_OPT ("-n",  "Install secure monitor and switch to nonsecure mode")
-BAREBOX_CMD_HELP_OPT ("-i",  "Show information about installed PSCI version")
-BAREBOX_CMD_HELP_OPT ("-c",  "Start secondary CPU core")
-BAREBOX_CMD_HELP_END
-
-BAREBOX_CMD_START(smc)
-	.cmd = do_smc,
-	BAREBOX_CMD_DESC("secure monitor test command")
-	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
-BAREBOX_CMD_END
-#endif
diff --git a/commands/Kconfig b/commands/Kconfig
index a6db52ae54b7..08b3af8b20f2 100644
--- a/commands/Kconfig
+++ b/commands/Kconfig
@@ -1867,6 +1867,21 @@ config CMD_POWEROFF
 	help
 	  Turn the power off.
 
+config CMD_SMC
+	bool
+	depends on ARM_PSCI
+	prompt "PSCI test command"
+	default CONFIG_ARM_PSCI_DEBUG
+	help
+	  Secure monitor code test command
+
+	  Usage: smc [-nic]
+
+	  Options:
+	        -n	Install secure monitor and switch to nonsecure mode
+	        -i	Show information about installed PSCI version
+	        -c	Start secondary CPU core
+
 config CMD_SPI
 	bool
 	depends on SPI
diff --git a/commands/Makefile b/commands/Makefile
index 2f0980185c2b..01082de44c9b 100644
--- a/commands/Makefile
+++ b/commands/Makefile
@@ -17,6 +17,7 @@ obj-$(CONFIG_CMD_MEMSET)	+= memset.o
 obj-$(CONFIG_CMD_EDIT)		+= edit.o
 obj-$(CONFIG_CMD_EXEC)		+= exec.o
 obj-$(CONFIG_CMD_SLEEP)		+= sleep.o
+obj-$(CONFIG_CMD_SMC)		+= smc.o
 obj-$(CONFIG_CMD_MSLEEP)	+= msleep.o
 obj-$(CONFIG_CMD_RESET)		+= reset.o
 obj-$(CONFIG_CMD_POWEROFF)	+= poweroff.o
diff --git a/commands/smc.c b/commands/smc.c
new file mode 100644
index 000000000000..2a00e1586790
--- /dev/null
+++ b/commands/smc.c
@@ -0,0 +1,107 @@
+// SPDX-License-Identifier: GPL-2.0
+
+#include <common.h>
+#include <command.h>
+#include <getopt.h>
+
+#include <asm/psci.h>
+#include <asm/secure.h>
+#include <linux/arm-smccc.h>
+
+void second_entry(void)
+{
+	struct arm_smccc_res res;
+
+	psci_printf("2nd CPU online, now turn off again\n");
+
+	arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_OFF,
+		      0, 0, 0, 0, 0, 0, 0, &res);
+
+	psci_printf("2nd CPU still alive?\n");
+
+	while (1);
+}
+
+static const char *psci_xlate_str(long err)
+{
+       static char errno_string[sizeof "error 0x123456789ABCDEF0"];
+
+       switch(err)
+       {
+       case ARM_PSCI_RET_SUCCESS:
+	       return "Success";
+       case ARM_PSCI_RET_NOT_SUPPORTED:
+	       return "Operation not supported";
+       case ARM_PSCI_RET_INVAL:
+	       return "Invalid argument";
+       case ARM_PSCI_RET_DENIED:
+	       return "Operation not permitted";
+       case ARM_PSCI_RET_ALREADY_ON:
+	       return "CPU already on";
+       case ARM_PSCI_RET_ON_PENDING:
+	       return "CPU_ON in progress";
+       case ARM_PSCI_RET_INTERNAL_FAILURE:
+	       return "Internal failure";
+       case ARM_PSCI_RET_NOT_PRESENT:
+	       return "Trusted OS not present on core";
+       case ARM_PSCI_RET_DISABLED:
+	       return "CPU is disabled";
+       case ARM_PSCI_RET_INVALID_ADDRESS:
+	       return "Bad address";
+       }
+
+       sprintf(errno_string, "error 0x%lx", err);
+       return errno_string;
+}
+
+static int do_smc(int argc, char *argv[])
+{
+	long ret;
+	int opt;
+	struct arm_smccc_res res = {
+		.a0 = 0xdeadbee0,
+		.a1 = 0xdeadbee1,
+		.a2 = 0xdeadbee2,
+		.a3 = 0xdeadbee3,
+	};
+
+	if (argc < 2)
+		return COMMAND_ERROR_USAGE;
+
+	while ((opt = getopt(argc, argv, "nic")) > 0) {
+		switch (opt) {
+		case 'n':
+			armv7_secure_monitor_install();
+			break;
+		case 'i':
+			arm_smccc_smc(ARM_PSCI_0_2_FN_PSCI_VERSION,
+				      0, 0, 0, 0, 0, 0, 0, &res);
+			printf("found psci version %ld.%ld\n", res.a0 >> 16, res.a0 & 0xffff);
+			break;
+		case 'c':
+			arm_smccc_smc(ARM_PSCI_0_2_FN_CPU_ON,
+				      1, (unsigned long)second_entry, 0, 0, 0, 0, 0, &res);
+			ret = (long)res.a0;
+			printf("CPU_ON returns with: %s\n", psci_xlate_str(ret));
+			if (ret)
+				return COMMAND_ERROR;
+		}
+	}
+
+
+	return 0;
+}
+BAREBOX_CMD_HELP_START(smc)
+BAREBOX_CMD_HELP_TEXT("Secure monitor code test command")
+BAREBOX_CMD_HELP_TEXT("")
+BAREBOX_CMD_HELP_TEXT("Options:")
+BAREBOX_CMD_HELP_OPT ("-n",  "Install secure monitor and switch to nonsecure mode")
+BAREBOX_CMD_HELP_OPT ("-i",  "Show information about installed PSCI version")
+BAREBOX_CMD_HELP_OPT ("-c",  "Start secondary CPU core")
+BAREBOX_CMD_HELP_END
+
+BAREBOX_CMD_START(smc)
+	.cmd = do_smc,
+	BAREBOX_CMD_DESC("secure monitor test command")
+	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
+BAREBOX_CMD_END
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
