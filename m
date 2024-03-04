Delivery-date: Mon, 04 Mar 2024 20:10:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhx-008dm8-02
	for lore@lore.pengutronix.de;
	Mon, 04 Mar 2024 20:10:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rhDhv-0005bK-CO
	for lore@pengutronix.de; Mon, 04 Mar 2024 20:10:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=fnmpzxNDB//bUsYRNd3hZKgKq0eJdmhpGs7wc3ofGdg=; b=IJ22qqR0Zab6a5WoLZqS0y8+0x
	nRmLSIbuptVxOQBWy1Q+cyEl7SB4orEYlg/yNq1gI1ewOyqaiX+bXZXSU3wDi+v+iDvDnV7CyWtKN
	e0mzb5970LvLmcPtNTvVPWKx8963rCB4yQ8zBfOnWwZy9vy4wHfKMkEjyLvSCJTn1PZM8e4J4E1EK
	Et/CYx5gMBvvP9+7f1TCyYvtNUf4eX5vCET/5gwU+rAMy3d8FlfoSkpc5NVVfoo8MWQxVLuZwpnOB
	TmOyPdENOotdiFIHI0RfkSkssa6i+IK43pecr8CaedFvyUdQEDrnocK1Wboa/Bx2+kDPRBZa2yeon
	mI2NX/cA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDhD-0000000ANBI-2WKH;
	Mon, 04 Mar 2024 19:09:55 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDac-0000000AIcj-408i
	for barebox@bombadil.infradead.org;
	Mon, 04 Mar 2024 19:03:07 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=fnmpzxNDB//bUsYRNd3hZKgKq0eJdmhpGs7wc3ofGdg=; b=aBQW23O+OPJEgKhML3bfv1Xkwh
	csm+dhbvGgTjCLuCUTF4hakOqfbKR7sR9Uu20s0aBBYcZqx5WLJILxt5m3XCiNiWMoOFJeTsZhpk1
	52XY6rmWGWDm7elqTjB+5yTmw5MWOyb+86YWukCTRJWcU5y5PQKoXtDDBcvy61JbQA8qmMFsWXtZx
	hHIiBRrYR28vmrGEdlq1MaMo1kJVNhAE4aVt9HwMNp/vU1R3i8YlMwBUdxaw+UuNg+/4jEhZS3OCo
	x6g5+P/CVmiM1orQ/3KjiWiTJsbz7HyDhC58WMjvE1wgUNxwjVNus28ZU8JauSTWl1+bSs/eXvfTy
	YEn2S6Gg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rhDaV-000000051vc-13KL
	for barebox@lists.infradead.org;
	Mon, 04 Mar 2024 19:03:05 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-00069L-Lh; Mon, 04 Mar 2024 20:02:44 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDaG-004PJx-7M; Mon, 04 Mar 2024 20:02:44 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rhDYL-00Ed9V-2j;
	Mon, 04 Mar 2024 20:00:46 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  4 Mar 2024 19:59:47 +0100
Message-Id: <20240304190038.3486881-63-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
References: <20240304190038.3486881-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240304_190259_963702_460C5FE6 
X-CRM114-Status: GOOD (  20.37  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 062/113] efi: payload: suppress EFI payload initcalls when not EFI-loaded
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

For development, it has proven very useful to be able to load the same
barebox binary both as EFI loader and EFI payload and debug the
interaction. For this to work, we need to mark all current EFI payload
initcalls as such to avoid running them when barebox is not running
as EFI payload.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/x86/mach-efi/clocksource.c |  4 +--
 common/startup.c                |  3 +-
 drivers/bus/acpi.c              |  2 +-
 drivers/efi/efi-device.c        |  2 +-
 efi/payload/fdt.c               |  2 +-
 efi/payload/image.c             |  2 +-
 efi/payload/init.c              | 17 ++++++-----
 efi/payload/iomem.c             |  3 +-
 fs/efivarfs.c                   |  2 +-
 include/acpi.h                  |  3 +-
 include/efi/efi-device.h        |  6 +---
 include/efi/efi-init.h          | 51 +++++++++++++++++++++++++++++++++
 12 files changed, 75 insertions(+), 22 deletions(-)
 create mode 100644 include/efi/efi-init.h

diff --git a/arch/x86/mach-efi/clocksource.c b/arch/x86/mach-efi/clocksource.c
index c7e557d7a228..daf3b3965851 100644
--- a/arch/x86/mach-efi/clocksource.c
+++ b/arch/x86/mach-efi/clocksource.c
@@ -1,7 +1,7 @@
 // SPDX-License-Identifier: GPL-2.0-only
 
 #include <common.h>
-#include <init.h>
+#include <efi/efi-init.h>
 #include <driver.h>
 
 static int efi_x86_pure_init(void)
@@ -10,4 +10,4 @@ static int efi_x86_pure_init(void)
 
 	return platform_device_register(dev);
 }
-core_initcall(efi_x86_pure_init);
+core_efi_initcall(efi_x86_pure_init);
diff --git a/common/startup.c b/common/startup.c
index bbba72f89255..522e2de75527 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -38,6 +38,7 @@
 #include <watchdog.h>
 #include <glob.h>
 #include <net.h>
+#include <efi/efi-mode.h>
 #include <bselftest.h>
 
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
@@ -54,7 +55,7 @@ static int mount_root(void)
 	mkdir("/tmp", 0);
 	mount("none", "devfs", "/dev", NULL);
 
-	if (IS_ENABLED(CONFIG_FS_EFIVARFS)) {
+	if (IS_ENABLED(CONFIG_FS_EFIVARFS) && efi_is_payload()) {
 		mkdir("/efivars", 0);
 		mount("none", "efivarfs", "/efivars", NULL);
 	}
diff --git a/drivers/bus/acpi.c b/drivers/bus/acpi.c
index b6d618815810..593617073345 100644
--- a/drivers/bus/acpi.c
+++ b/drivers/bus/acpi.c
@@ -233,4 +233,4 @@ static int efi_acpi_probe(void)
 	acpi_bus.dev->priv = table;
 	return acpi_register_devices(&acpi_bus);
 }
-postcore_initcall(efi_acpi_probe);
+postcore_efi_initcall(efi_acpi_probe);
diff --git a/drivers/efi/efi-device.c b/drivers/efi/efi-device.c
index f93bbc6a4e50..a533bc43eb37 100644
--- a/drivers/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -462,7 +462,7 @@ static int efi_init_devices(void)
 
 	return 0;
 }
-core_initcall(efi_init_devices);
+core_efi_initcall(efi_init_devices);
 
 void efi_pause_devices(void)
 {
diff --git a/efi/payload/fdt.c b/efi/payload/fdt.c
index 8dacaa8b524a..b50c09691976 100644
--- a/efi/payload/fdt.c
+++ b/efi/payload/fdt.c
@@ -41,4 +41,4 @@ static int efi_fdt_probe(void)
 
 	return 0;
 }
-late_initcall(efi_fdt_probe);
+late_efi_initcall(efi_fdt_probe);
diff --git a/efi/payload/image.c b/efi/payload/image.c
index 8e5ad87de22f..b9cdb0e0562a 100644
--- a/efi/payload/image.c
+++ b/efi/payload/image.c
@@ -332,4 +332,4 @@ static int efi_register_image_handler(void)
 
 	return 0;
 }
-late_initcall(efi_register_image_handler);
+late_efi_initcall(efi_register_image_handler);
diff --git a/efi/payload/init.c b/efi/payload/init.c
index dedecbf92cec..9bc0741e044b 100644
--- a/efi/payload/init.c
+++ b/efi/payload/init.c
@@ -205,7 +205,7 @@ static int misc_init(void)
 
 	return 0;
 }
-late_initcall(misc_init);
+late_efi_initcall(misc_init);
 
 static struct NS16550_plat ns16550_plat = {
 	.clock = 115200 * 16,
@@ -223,7 +223,7 @@ static int efi_console_init(void)
 
 	return 0;
 }
-console_initcall(efi_console_init);
+console_efi_initcall(efi_console_init);
 
 static void __noreturn efi_restart_system(struct restart_handler *rst)
 {
@@ -247,7 +247,7 @@ static int restart_register_feature(void)
 
 	return 0;
 }
-coredevice_initcall(restart_register_feature);
+coredevice_efi_initcall(restart_register_feature);
 
 extern char image_base[];
 extern initcall_t __barebox_initcalls_start[], __barebox_early_initcalls_end[],
@@ -265,7 +265,7 @@ static int efi_init(void)
 
 	return 0;
 }
-device_initcall(efi_init);
+device_efi_initcall(efi_init);
 
 /**
  * efi-main - Entry point for EFI images
@@ -325,7 +325,7 @@ static int efi_core_init(void)
 	dev = device_alloc("efi-wdt", DEVICE_ID_SINGLE);
 	return platform_device_register(dev);
 }
-core_initcall(efi_core_init);
+core_efi_initcall(efi_core_init);
 
 /* Features of the loader, i.e. systemd-boot, barebox (imported from systemd) */
 #define EFI_LOADER_FEATURE_CONFIG_TIMEOUT          (1LL << 0)
@@ -385,7 +385,7 @@ static int efi_postcore_init(void)
 
 	return 0;
 }
-postcore_initcall(efi_postcore_init);
+postcore_efi_initcall(efi_postcore_init);
 
 static int efi_late_init(void)
 {
@@ -434,10 +434,13 @@ static int efi_late_init(void)
 
 	return 0;
 }
-late_initcall(efi_late_init);
+late_efi_initcall(efi_late_init);
 
 static int do_efiexit(int argc, char *argv[])
 {
+	if (!BS)
+		return -ENOSYS;
+
 	console_flush();
 
 	if (!streq_ptr(argv[1], "-f"))
diff --git a/efi/payload/iomem.c b/efi/payload/iomem.c
index 316dacd6b3c2..d4390c856769 100644
--- a/efi/payload/iomem.c
+++ b/efi/payload/iomem.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <efi.h>
 #include <efi/efi-payload.h>
+#include <efi/efi-init.h>
 #include <memory.h>
 #include <linux/sizes.h>
 
@@ -175,4 +176,4 @@ static int efi_barebox_populate_mmap(void)
 	free(mmap_buf);
 	return ret;
 }
-mem_initcall(efi_barebox_populate_mmap);
+mem_efi_initcall(efi_barebox_populate_mmap);
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 5d805aefbf10..b19931806140 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -371,4 +371,4 @@ static int efivarfs_init(void)
 	return register_fs_driver(&efivarfs_driver);
 }
 
-coredevice_initcall(efivarfs_init);
+coredevice_efi_initcall(efivarfs_init);
diff --git a/include/acpi.h b/include/acpi.h
index 2761fe60502c..0756f94501cc 100644
--- a/include/acpi.h
+++ b/include/acpi.h
@@ -9,6 +9,7 @@
 #include <linux/string.h>
 #include <linux/types.h>
 #include <driver.h>
+#include <efi/efi-init.h>
 
 /* Names within the namespace are 4 bytes long */
 
@@ -130,7 +131,7 @@ static inline struct acpi_driver *to_acpi_driver(struct driver *drv)
 }
 
 #define device_acpi_driver(drv)	\
-	register_driver_macro(device, acpi, drv)
+	register_efi_driver_macro(device, acpi, drv)
 
 static inline int acpi_driver_register(struct acpi_driver *acpidrv)
 {
diff --git a/include/efi/efi-device.h b/include/efi/efi-device.h
index eaf89beb8ed1..5f7490028b9e 100644
--- a/include/efi/efi-device.h
+++ b/include/efi/efi-device.h
@@ -5,6 +5,7 @@
 #include <efi/types.h>
 #include <efi/efi-util.h>
 #include <driver.h>
+#include <efi/efi-init.h>
 
 struct efi_device {
 	struct device dev;
@@ -37,11 +38,6 @@ static inline struct efi_driver *to_efi_driver(struct driver *drv)
 	return container_of(drv, struct efi_driver, driver);
 }
 
-#define device_efi_driver(drv)	\
-	register_driver_macro(device, efi, drv)
-
-#define fs_efi_driver(drv)	\
-	register_driver_macro(fs, efi, drv)
 static inline int efi_driver_register(struct efi_driver *efidrv)
 {
 	efidrv->driver.bus = &efi_bus;
diff --git a/include/efi/efi-init.h b/include/efi/efi-init.h
new file mode 100644
index 000000000000..f524f3973e0e
--- /dev/null
+++ b/include/efi/efi-init.h
@@ -0,0 +1,51 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef EFI_INIT_H_
+#define EFI_INIT_H_
+
+#include <init.h>
+#include <linux/compiler.h>
+
+struct efi_boot_services;
+extern struct efi_boot_services *BS;
+
+#ifdef CONFIG_EFI_PAYLOAD
+#define efi_payload_initcall(level, fn) level##_initcall(fn)
+#else
+#define efi_payload_initcall(level, fn)
+#endif
+
+/* For use by EFI payload */
+#define __define_efi_initcall(level, fn) \
+	static int __maybe_unused __efi_initcall_##fn(void) \
+	{ \
+		return BS ? fn() : 0; \
+	} \
+	efi_payload_initcall(level, __efi_initcall_##fn);
+
+#define core_efi_initcall(fn)		__define_efi_initcall(core, fn)
+#define postcore_efi_initcall(fn)	__define_efi_initcall(postcore, fn)
+#define console_efi_initcall(fn)	__define_efi_initcall(console, fn)
+#define coredevice_efi_initcall(fn)	__define_efi_initcall(coredevice, fn)
+#define mem_efi_initcall(fn)		__define_efi_initcall(mem, fn)
+#define device_efi_initcall(fn)		__define_efi_initcall(device, fn)
+#define fs_efi_initcall(fn)		__define_efi_initcall(fs, fn)
+#define late_efi_initcall(fn)		__define_efi_initcall(late, fn)
+
+#define register_efi_driver_macro(level,bus,drv)	\
+	static int __init drv##_register(void)		\
+	{						\
+		return bus##_driver_register(&drv);	\
+	}						\
+	level##_efi_initcall(drv##_register)
+
+#define core_efi_driver(drv)	\
+	register_efi_driver_macro(core, efi, drv)
+
+#define device_efi_driver(drv)	\
+	register_efi_driver_macro(device, efi, drv)
+
+#define fs_efi_driver(drv)	\
+	register_efi_driver_macro(fs, efi, drv)
+
+#endif
-- 
2.39.2



