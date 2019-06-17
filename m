Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hctEg-0000SC-ML
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 15:07:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEf-0000jA-91
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:53 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <afa@pengutronix.de>) id 1hctEe-0002Gb-JR
 for barebox@lists.infradead.org; Mon, 17 Jun 2019 17:07:52 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 17 Jun 2019 17:07:51 +0200
Message-Id: <20190617150751.3421-13-a.fatoum@pengutronix.de>
In-Reply-To: <20190617150751.3421-1-a.fatoum@pengutronix.de>
References: <20190617150751.3421-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH v1 12/12] ARM: stm32mp157c-dk2: boot kernel in nonsecure mode
To: barebox@lists.infradead.org

The mainline kernel expects the firmware to have installed a secure boot
monitor for PSCI. The only means to do this is via the environment,
thus do the necessary changes.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp157c-dk2/Makefile             |  1 +
 arch/arm/boards/stm32mp157c-dk2/board.c              | 12 ++++++++++++
 .../defaultenv-dk2/nv/bootm.secure_state             |  1 +
 arch/arm/mach-stm32mp/Kconfig                        |  1 +
 4 files changed, 15 insertions(+)
 create mode 100644 arch/arm/boards/stm32mp157c-dk2/defaultenv-dk2/nv/bootm.secure_state

diff --git a/arch/arm/boards/stm32mp157c-dk2/Makefile b/arch/arm/boards/stm32mp157c-dk2/Makefile
index 092c31d6b28d..03f46111206c 100644
--- a/arch/arm/boards/stm32mp157c-dk2/Makefile
+++ b/arch/arm/boards/stm32mp157c-dk2/Makefile
@@ -1,2 +1,3 @@
 lwl-y += lowlevel.o
 obj-y += board.o
+bbenv-y += defaultenv-dk2
diff --git a/arch/arm/boards/stm32mp157c-dk2/board.c b/arch/arm/boards/stm32mp157c-dk2/board.c
index 5572231d525c..6c4f874d6bd8 100644
--- a/arch/arm/boards/stm32mp157c-dk2/board.c
+++ b/arch/arm/boards/stm32mp157c-dk2/board.c
@@ -5,6 +5,7 @@
 #include <asm/memory.h>
 #include <mach/stm32.h>
 #include <mfd/syscon.h>
+#include <envfs.h>
 
 #define SYSCFG_BOOTR		0x00
 #define SYSCFG_PMCSETR		0x04
@@ -65,6 +66,17 @@ static int dk2_postcore_init(void)
 }
 mem_initcall(dk2_postcore_init);
 
+static int dk2_devices_init(void)
+{
+	if (!of_machine_is_compatible("st,stm32mp157c-dk2"))
+		return 0;
+
+	defaultenv_append_directory(defaultenv_dk2);
+
+	return 0;
+}
+device_initcall(dk2_devices_init);
+
 static int dk2_sysconf_init(void)
 {
 	struct regmap *syscfg;
diff --git a/arch/arm/boards/stm32mp157c-dk2/defaultenv-dk2/nv/bootm.secure_state b/arch/arm/boards/stm32mp157c-dk2/defaultenv-dk2/nv/bootm.secure_state
new file mode 100644
index 000000000000..83bc509e8d95
--- /dev/null
+++ b/arch/arm/boards/stm32mp157c-dk2/defaultenv-dk2/nv/bootm.secure_state
@@ -0,0 +1 @@
+nonsecure
diff --git a/arch/arm/mach-stm32mp/Kconfig b/arch/arm/mach-stm32mp/Kconfig
index 94205aaf5508..c0a1c202f7ce 100644
--- a/arch/arm/mach-stm32mp/Kconfig
+++ b/arch/arm/mach-stm32mp/Kconfig
@@ -7,6 +7,7 @@ config ARCH_STM32MP1157
 config MACH_STM32MP157C_DK2
 	select ARCH_STM32MP1157
 	select ARM_USE_COMPRESSED_DTB
+	select ENVIRONMENT_VARIABLES
 	bool "STM32MP157C-DK2 board"
 
 endif
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
