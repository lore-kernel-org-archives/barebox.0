Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 5.mo177.mail-out.ovh.net ([46.105.39.154])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ce5G2-0007HS-2z
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 19:28:58 +0000
Received: from player716.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo177.mail-out.ovh.net (Postfix) with ESMTP id F31702F831
 for <barebox@lists.infradead.org>; Wed, 15 Feb 2017 20:28:32 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Wed, 15 Feb 2017 20:34:11 +0100
Message-Id: <1487187257-29082-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170215192932.GB32649@mail.ovh.net>
 <1487187257-29082-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 03/12] efi: move bus driver to driver/efi
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/Kconfig                                    | 1 +
 arch/efi/efi/Makefile                               | 1 -
 arch/efi/efi/efi-image.c                            | 4 ++--
 arch/efi/efi/efi.c                                  | 4 ++--
 arch/efi/include/mach/debug_ll.h                    | 2 +-
 drivers/Kconfig                                     | 1 +
 drivers/Makefile                                    | 1 +
 drivers/block/efi-block-io.c                        | 4 ++--
 drivers/clocksource/efi.c                           | 2 +-
 drivers/efi/Kconfig                                 | 2 ++
 drivers/efi/Makefile                                | 1 +
 {arch/efi => drivers}/efi/efi-device.c              | 4 ++--
 drivers/net/efi-snp.c                               | 4 ++--
 drivers/serial/efi-stdio.c                          | 2 +-
 fs/efi.c                                            | 4 ++--
 fs/efivarfs.c                                       | 4 ++--
 {arch/efi/include/mach => include/efi}/efi-device.h | 6 +++---
 {arch/efi/include/mach => include/efi}/efi.h        | 0
 18 files changed, 26 insertions(+), 21 deletions(-)
 create mode 100644 drivers/efi/Kconfig
 create mode 100644 drivers/efi/Makefile
 rename {arch/efi => drivers}/efi/efi-device.c (99%)
 rename {arch/efi/include/mach => include/efi}/efi-device.h (91%)
 rename {arch/efi/include/mach => include/efi}/efi.h (100%)

diff --git a/arch/efi/Kconfig b/arch/efi/Kconfig
index 01301c04f..561aac2b2 100644
--- a/arch/efi/Kconfig
+++ b/arch/efi/Kconfig
@@ -4,6 +4,7 @@ config ARCH_EFI
 	select HAS_DEBUG_LL
 	select HAS_KALLSYMS
 	select EFI_GUID
+	select EFI_BOOTUP
 	select EFI_DEVICEPATH
 	select PRINTF_UUID
 	select GENERIC_FIND_NEXT_BIT
diff --git a/arch/efi/efi/Makefile b/arch/efi/efi/Makefile
index 51db60b88..ef19969f9 100644
--- a/arch/efi/efi/Makefile
+++ b/arch/efi/efi/Makefile
@@ -1,4 +1,3 @@
 obj-y += efi.o
-obj-y += efi-device.o
 obj-y += efi-image.o
 bbenv-y += env-efi
diff --git a/arch/efi/efi/efi-image.c b/arch/efi/efi/efi-image.c
index 27f3c1b39..885348da4 100644
--- a/arch/efi/efi/efi-image.c
+++ b/arch/efi/efi/efi-image.c
@@ -36,8 +36,8 @@
 #include <libfile.h>
 #include <binfmt.h>
 #include <wchar.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 
 struct linux_kernel_header {
 	/* first sector of the image */
diff --git a/arch/efi/efi/efi.c b/arch/efi/efi/efi.c
index 36ac016a9..b14e1e823 100644
--- a/arch/efi/efi/efi.c
+++ b/arch/efi/efi/efi.c
@@ -38,8 +38,8 @@
 #include <wchar.h>
 #include <envfs.h>
 #include <efi.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 
 efi_runtime_services_t *RT;
 efi_boot_services_t *BS;
diff --git a/arch/efi/include/mach/debug_ll.h b/arch/efi/include/mach/debug_ll.h
index 0fb2cb8c2..4ca72de31 100644
--- a/arch/efi/include/mach/debug_ll.h
+++ b/arch/efi/include/mach/debug_ll.h
@@ -5,7 +5,7 @@
 #define EFI_DEBUG_CLEAR_MEMORY 0
 
 #include <efi.h>
-#include <mach/efi.h>
+#include <efi/efi.h>
 
 static inline void PUTC_LL(char c)
 {
diff --git a/drivers/Kconfig b/drivers/Kconfig
index cc086ac2d..bf31115fa 100644
--- a/drivers/Kconfig
+++ b/drivers/Kconfig
@@ -1,5 +1,6 @@
 menu "Drivers"
 
+source "drivers/efi/Kconfig"
 source "drivers/of/Kconfig"
 source "drivers/aiodev/Kconfig"
 source "drivers/amba/Kconfig"
diff --git a/drivers/Makefile b/drivers/Makefile
index 9ff261ad2..0fadf4e44 100644
--- a/drivers/Makefile
+++ b/drivers/Makefile
@@ -1,6 +1,7 @@
 obj-y	+= base/
 obj-y	+= block/
 obj-$(CONFIG_ARM_AMBA) += amba/
+obj-$(CONFIG_EFI_BOOTUP) += efi/
 obj-y	+= net/
 obj-y	+= serial/
 obj-y	+= mtd/
diff --git a/drivers/block/efi-block-io.c b/drivers/block/efi-block-io.c
index e02d3b49c..a4d9d3a95 100644
--- a/drivers/block/efi-block-io.c
+++ b/drivers/block/efi-block-io.c
@@ -12,8 +12,8 @@
 #include <efi.h>
 #include <block.h>
 #include <disks.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 
 #define EFI_BLOCK_IO_PROTOCOL_REVISION2 0x00020001
 #define EFI_BLOCK_IO_PROTOCOL_REVISION3 ((2<<16) | (31))
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index c92c35b11..59fd9918a 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -1,6 +1,6 @@
 #include <common.h>
 #include <efi.h>
-#include <mach/efi.h>
+#include <efi/efi.h>
 #include <clock.h>
 
 #ifdef __x86_64__
diff --git a/drivers/efi/Kconfig b/drivers/efi/Kconfig
new file mode 100644
index 000000000..2cd9dd504
--- /dev/null
+++ b/drivers/efi/Kconfig
@@ -0,0 +1,2 @@
+config EFI_BOOTUP
+	bool
diff --git a/drivers/efi/Makefile b/drivers/efi/Makefile
new file mode 100644
index 000000000..de31212f2
--- /dev/null
+++ b/drivers/efi/Makefile
@@ -0,0 +1 @@
+obj-y += efi-device.o
diff --git a/arch/efi/efi/efi-device.c b/drivers/efi/efi-device.c
similarity index 99%
rename from arch/efi/efi/efi-device.c
rename to drivers/efi/efi-device.c
index 678a28399..2864d0cf1 100644
--- a/arch/efi/efi/efi-device.c
+++ b/drivers/efi/efi-device.c
@@ -27,8 +27,8 @@
 #include <wchar.h>
 #include <init.h>
 #include <efi.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 #include <linux/err.h>
 
 int efi_locate_handle(enum efi_locate_search_type search_type,
diff --git a/drivers/net/efi-snp.c b/drivers/net/efi-snp.c
index 963d539db..23edc9f04 100644
--- a/drivers/net/efi-snp.c
+++ b/drivers/net/efi-snp.c
@@ -23,8 +23,8 @@
 #include <net.h>
 #include <init.h>
 #include <efi.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 
 struct efi_network_statistics {
 	uint64_t RxTotalFrames;
diff --git a/drivers/serial/efi-stdio.c b/drivers/serial/efi-stdio.c
index 5ab917386..0703f727e 100644
--- a/drivers/serial/efi-stdio.c
+++ b/drivers/serial/efi-stdio.c
@@ -25,7 +25,7 @@
 #include <efi.h>
 #include <readkey.h>
 #include <linux/ctype.h>
-#include <mach/efi.h>
+#include <efi/efi.h>
 
 #define EFI_SHIFT_STATE_VALID           0x80000000
 #define EFI_RIGHT_CONTROL_PRESSED       0x00000004
diff --git a/fs/efi.c b/fs/efi.c
index 7310d7d27..0c0f52e87 100644
--- a/fs/efi.c
+++ b/fs/efi.c
@@ -31,8 +31,8 @@
 #include <wchar.h>
 #include <efi.h>
 #include <libfile.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 #include <linux/stddef.h>
 
 /* Open modes */
diff --git a/fs/efivarfs.c b/fs/efivarfs.c
index 86cdcf0b5..bf7351e6d 100644
--- a/fs/efivarfs.c
+++ b/fs/efivarfs.c
@@ -31,8 +31,8 @@
 #include <wchar.h>
 #include <linux/err.h>
 #include <linux/ctype.h>
-#include <mach/efi.h>
-#include <mach/efi-device.h>
+#include <efi/efi.h>
+#include <efi/efi-device.h>
 
 struct efivarfs_inode {
 	s16 *name;
diff --git a/arch/efi/include/mach/efi-device.h b/include/efi/efi-device.h
similarity index 91%
rename from arch/efi/include/mach/efi-device.h
rename to include/efi/efi-device.h
index fe074a44b..8f5f1f3f1 100644
--- a/arch/efi/include/mach/efi-device.h
+++ b/include/efi/efi-device.h
@@ -1,5 +1,5 @@
-#ifndef __MACH_EFI_DEVICE_H
-#define __MACH_EFI_DEVICE_H
+#ifndef __EFI_EFI_DEVICE_H
+#define __EFI_EFI_DEVICE_H
 
 struct efi_device {
 	struct device_d dev;
@@ -42,4 +42,4 @@ static inline int efi_driver_register(struct efi_driver *efidrv)
 int efi_connect_all(void);
 void efi_register_devices(void);
 
-#endif /* __MACH_EFI_DEVICE_H */
+#endif /* __EFI_EFI_DEVICE_H */
diff --git a/arch/efi/include/mach/efi.h b/include/efi/efi.h
similarity index 100%
rename from arch/efi/include/mach/efi.h
rename to include/efi/efi.h
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
