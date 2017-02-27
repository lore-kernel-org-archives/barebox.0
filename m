Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 1.mo68.mail-out.ovh.net ([46.105.41.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ciIJa-0006BH-CG
 for barebox@lists.infradead.org; Mon, 27 Feb 2017 10:14:06 +0000
Received: from player763.ha.ovh.net (b9.ovh.net [213.186.33.59])
 by mo68.mail-out.ovh.net (Postfix) with ESMTP id E24FD3F869
 for <barebox@lists.infradead.org>; Mon, 27 Feb 2017 11:13:35 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Mon, 27 Feb 2017 11:19:29 +0100
Message-Id: <1488190770-4034-7-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170227101416.GB12475@mail.ovh.net>
 <1488190770-4034-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 7/8] efi: clocksoure: use event for timer
To: barebox@lists.infradead.org

with this we can be hw generic

If the EFI implement timestamp protocol we could use instead of event
but even EDK2 Never Ever compile it for any target.

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 common/efi/efi.c             |   8 ++++
 drivers/clocksource/Kconfig  |   4 ++
 drivers/clocksource/Makefile |   1 +
 drivers/clocksource/efi.c    | 110 +++++++++++++++++++++++++++++++++++++++++++
 4 files changed, 123 insertions(+)
 create mode 100644 drivers/clocksource/efi.c

diff --git a/common/efi/efi.c b/common/efi/efi.c
index 4b589b600..05c58250f 100644
--- a/common/efi/efi.c
+++ b/common/efi/efi.c
@@ -353,6 +353,14 @@ efi_status_t efi_main(efi_handle_t image, efi_system_table_t *sys_table)
 	return EFI_SUCCESS;
 }
 
+static int efi_core_init(void)
+{
+	struct device_d *dev = device_alloc("efi-cs", DEVICE_ID_SINGLE);
+
+	return platform_device_register(dev);
+}
+core_initcall(efi_core_init);
+
 static int efi_postcore_init(void)
 {
 	char *uuid;
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 9b7f0a9d7..b12a85403 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -34,6 +34,10 @@ config CLOCKSOURCE_DUMMY_RATE
 	  The option CONFIG_CLOCKSOURCE_DUMMY_RATE is used to adjust this clocksource.
 	  The bigger rate valuest makes clocksource "faster".
 
+config CLOCKSOURCE_EFI
+	bool "Generic EFI Driver"
+	depends on EFI_BOOTUP
+
 config CLOCKSOURCE_EFI_X86
 	bool "EFI X86 HW driver"
 	depends on EFI_BOOTUP && X86
diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index 1fd18296e..f69b33d0b 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -3,6 +3,7 @@ obj-$(CONFIG_ARM_SMP_TWD) += arm_smp_twd.o
 obj-$(CONFIG_CLOCKSOURCE_BCM283X) += bcm2835.o
 obj-$(CONFIG_CLOCKSOURCE_CLPS711X) += clps711x.o
 obj-$(CONFIG_CLOCKSOURCE_DIGIC)   += digic.o
+obj-$(CONFIG_CLOCKSOURCE_EFI) += efi.o
 obj-$(CONFIG_CLOCKSOURCE_EFI_X86) += efi_x86.o
 obj-$(CONFIG_CLOCKSOURCE_MVEBU)   += mvebu.o
 obj-$(CONFIG_CLOCKSOURCE_NOMADIK) += nomadik.o
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
new file mode 100644
index 000000000..df65dd86c
--- /dev/null
+++ b/drivers/clocksource/efi.c
@@ -0,0 +1,110 @@
+/*
+ * Copyright (C) 2012 Jean-Christophe PLAGNIOL-VILLARD <plagnio@jcrosoft.com>
+ *
+ * Under GPL v2
+ */
+#include <common.h>
+#include <init.h>
+#include <driver.h>
+#include <clock.h>
+#include <efi.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
+#include <linux/err.h>
+
+static uint64_t ticks = 1;
+static void *efi_cs_evt;
+
+static uint64_t efi_cs_read(void)
+{
+	return ticks;
+}
+
+static void efi_cs_inc(void *event, void *ctx)
+{
+	ticks++;
+}
+
+/* count ticks during a 1dms */
+static uint64_t ticks_freq(void)
+{
+	uint64_t ticks_start, ticks_end;
+
+	ticks_start = ticks;
+	BS->stall(1000);
+	ticks_end = ticks;
+
+	return (ticks_end - ticks_start) * 1000;
+}
+
+/* count ticks during a 20ms delay as on qemu x86_64 the max is 100Hz */
+static uint64_t ticks_freq_x86(void)
+{
+	uint64_t ticks_start, ticks_end;
+
+	ticks_start = ticks;
+	BS->stall(20 * 1000);
+	ticks_end = ticks;
+
+	return (ticks_end - ticks_start) * 50;
+}
+
+static int efi_cs_init(struct clocksource *cs)
+{
+	efi_status_t efiret;
+	uint64_t freq;
+
+	efiret = BS->create_event(EFI_EVT_TIMER | EFI_EVT_NOTIFY_SIGNAL,
+			EFI_TPL_CALLBACK, efi_cs_inc, NULL, &efi_cs_evt);
+
+	if (EFI_ERROR(efiret))
+		return -efi_errno(efiret);
+
+	efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, 10);
+	if (EFI_ERROR(efiret)) {
+		BS->close_event(efi_cs_evt);
+		return -efi_errno(efiret);
+	}
+
+	freq = 1000 * 1000;
+	if (ticks_freq() < 800 * 1000) {
+		uint64_t nb_100ns;
+
+		freq = ticks_freq_x86();
+		nb_100ns = 10 * 1000 * 1000 / freq;
+		pr_warn("EFI Event timer too slow freq = %llu Hz\n", freq);
+		efiret = BS->set_timer(efi_cs_evt, EFI_TIMER_PERIODIC, nb_100ns);
+		if (EFI_ERROR(efiret)) {
+			BS->close_event(efi_cs_evt);
+			return -efi_errno(efiret);
+		}
+	}
+
+	cs->mult = clocksource_hz2mult(freq, cs->shift);
+
+	return 0;
+}
+
+static struct clocksource efi_cs = {
+	.read   = efi_cs_read,
+	.mask   = CLOCKSOURCE_MASK(64),
+	.shift  = 0,
+	.init   = efi_cs_init,
+};
+
+static int efi_cs_probe(struct device_d *dev)
+{
+	return init_clock(&efi_cs);
+}
+
+static struct driver_d efi_cs_driver = {
+	.name = "efi-cs",
+	.probe = efi_cs_probe,
+};
+
+static int efi_cs_initcall(void)
+{
+	return platform_driver_register(&efi_cs_driver);
+}
+/* for efi the time must be init at core initcall level */
+late_initcall(efi_cs_initcall);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
