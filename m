Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 9.mo1.mail-out.ovh.net ([178.32.108.172])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cjmJx-00074z-71
 for barebox@lists.infradead.org; Fri, 03 Mar 2017 12:28:33 +0000
Received: from player691.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo1.mail-out.ovh.net (Postfix) with ESMTP id 015E15BD49
 for <barebox@lists.infradead.org>; Fri,  3 Mar 2017 13:28:06 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri,  3 Mar 2017 13:34:03 +0100
Message-Id: <1488544445-20105-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170303123219.GD4120@mail.ovh.net>
 <1488544445-20105-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/9] efi: move x86 clocksource to device/driver
To: barebox@lists.infradead.org

so we can dynamicly register the device

As we may need to use HW IP for clocksource.

As on EFI we could use Timestamp GUID if present (Not often the case as it's
not even enabled by default on any Target on EDK II not even OVMF)

Or if we choose we could use a Simulated Timestamp driver that work on Event
(Add Later)

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/x86/Kconfig                         |  2 +-
 arch/x86/mach-efi/Makefile               |  1 +
 arch/x86/mach-efi/clocksource.c          | 11 +++++++++++
 drivers/clocksource/Kconfig              |  6 +++---
 drivers/clocksource/Makefile             |  2 +-
 drivers/clocksource/{efi.c => efi_x86.c} | 34 ++++++++++++++++++++++++--------
 6 files changed, 43 insertions(+), 13 deletions(-)
 create mode 100644 arch/x86/mach-efi/clocksource.c
 rename drivers/clocksource/{efi.c => efi_x86.c} (56%)

diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index 9803f3f95..52ccf4894 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -77,7 +77,7 @@ choice
 		select EFI_GUID
 		select EFI_DEVICEPATH
 		select PRINTF_UUID
-		select CLOCKSOURCE_EFI
+		select CLOCKSOURCE_EFI_X86
 
 	config X86_BIOS_BRINGUP
 		bool "16 bit BIOS"
diff --git a/arch/x86/mach-efi/Makefile b/arch/x86/mach-efi/Makefile
index c8a97bae0..f633e7c7e 100644
--- a/arch/x86/mach-efi/Makefile
+++ b/arch/x86/mach-efi/Makefile
@@ -1,4 +1,5 @@
 obj-$(CONFIG_X86_64) += reloc_x86_64.o crt0-efi-x86_64.o
 obj-$(CONFIG_X86_32) += reloc_ia32.o crt0-efi-ia32.o
+obj-y += clocksource.o
 extra-$(CONFIG_X86_32) += elf_ia32_efi.lds
 extra-$(CONFIG_X86_64) += elf_x86_64_efi.lds
diff --git a/arch/x86/mach-efi/clocksource.c b/arch/x86/mach-efi/clocksource.c
new file mode 100644
index 000000000..2023fa19a
--- /dev/null
+++ b/arch/x86/mach-efi/clocksource.c
@@ -0,0 +1,11 @@
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+
+static int efi_x86_pure_init(void)
+{
+	struct device_d *dev = device_alloc("efi-cs-x86", DEVICE_ID_SINGLE);
+
+	return platform_device_register(dev);
+}
+core_initcall(efi_x86_pure_init);
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 54b05bbf3..9b7f0a9d7 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -34,9 +34,9 @@ config CLOCKSOURCE_DUMMY_RATE
 	  The option CONFIG_CLOCKSOURCE_DUMMY_RATE is used to adjust this clocksource.
 	  The bigger rate valuest makes clocksource "faster".
 
-config CLOCKSOURCE_EFI
-	bool
-	depends on EFI_BOOTUP
+config CLOCKSOURCE_EFI_X86
+	bool "EFI X86 HW driver"
+	depends on EFI_BOOTUP && X86
 
 config CLOCKSOURCE_MVEBU
 	bool
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index e83fdeeec..1fd18296e 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -3,7 +3,7 @@ obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM283X) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
-obj-$(CONFIG_CLOCKSOURCE_EFI) += efi.o
+obj-$(CONFIG_CLOCKSOURCE_EFI_X86) += efi_x86.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
 obj-$(CONFIG_CLOCKSOURCE_ORION)   += orion.o
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi_x86.c
similarity index 56%
rename from drivers/clocksource/efi.c
rename to drivers/clocksource/efi_x86.c
index 6d2fee8eb..4d2657ea1 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi_x86.c
@@ -1,5 +1,6 @@
 #include <common.h>
 #include <init.h>
+#include <driver.h>
 #include <efi.h>
 #include <efi/efi.h>
 #include <clock.h>
@@ -38,24 +39,41 @@ static uint64_t ticks_freq(void)
 	return (ticks_end - ticks_start) * 1000;
 }
 
-static uint64_t efi_clocksource_read(void)
+static uint64_t efi_x86_cs_read(void)
 {
 	return 1000 * 1000 * ticks_read() / freq;
 }
 
-static struct clocksource cs = {
-	.read   = efi_clocksource_read,
+static int efi_x86_cs_init(struct clocksource *cs)
+{
+	cs->mult = clocksource_hz2mult(1000 * 1000, cs->shift);
+
+	freq = ticks_freq();
+
+	return 0;
+}
+
+static struct clocksource efi_x86_cs = {
+	.read   = efi_x86_cs_read,
 	.mask   = CLOCKSOURCE_MASK(64),
 	.shift  = 0,
+	.priority = 100,
+	.init   = efi_x86_cs_init,
 };
 
-static int efi_clocksource_init(void)
+static int efi_x86_cs_probe(struct device_d *dev)
 {
-	cs.mult = clocksource_hz2mult(1000 * 1000, cs.shift);
+	return init_clock(&efi_x86_cs);
+}
 
-	freq = ticks_freq();
+static struct driver_d efi_x86_cs_driver = {
+	.name = "efi-cs-x86",
+	.probe = efi_x86_cs_probe,
+};
 
-	return init_clock(&cs);
+static int efi_x86_cs_initcall(void)
+{
+	return platform_driver_register(&efi_x86_cs_driver);
 }
 /* for efi the time must be init at core initcall level */
-core_initcall(efi_clocksource_init);
+core_initcall(efi_x86_cs_initcall);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
