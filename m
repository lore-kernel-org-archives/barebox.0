Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 2.mo3.mail-out.ovh.net ([46.105.75.36])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cc8VF-0001bf-2k
 for barebox@lists.infradead.org; Fri, 10 Feb 2017 10:32:39 +0000
Received: from player734.ha.ovh.net (b7.ovh.net [213.186.33.57])
 by mo3.mail-out.ovh.net (Postfix) with ESMTP id E2415A30D1
 for <barebox@lists.infradead.org>; Fri, 10 Feb 2017 11:32:09 +0100 (CET)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 10 Feb 2017 11:37:44 +0100
Message-Id: <1486723070-32548-3-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1486723070-32548-1-git-send-email-plagnioj@jcrosoft.com>
References: <20170210095655.GA25859@mail.ovh.net>
 <1486723070-32548-1-git-send-email-plagnioj@jcrosoft.com>
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
Subject: [PATCH 3/9] efi: move bus driver to driver/efi
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/efi/efi/Makefile                               | 1 -
 arch/efi/efi/efi-image.c                            | 4 ++--
 arch/efi/efi/efi.c                                  | 4 ++--
 arch/efi/include/mach/debug_ll.h                    | 2 +-
 drivers/Makefile                                    | 1 +
 drivers/block/efi-block-io.c                        | 4 ++--
 drivers/clocksource/efi.c                           | 2 +-
 drivers/efi/Makefile                                | 1 +
 {arch/efi => drivers}/efi/efi-device.c              | 4 ++--
 drivers/net/efi-snp.c                               | 4 ++--
 drivers/serial/efi-stdio.c                          | 2 +-
 fs/efi.c                                            | 4 ++--
 fs/efivarfs.c                                       | 4 ++--
 {arch/efi/include/mach => include/efi}/efi-device.h | 0
 {arch/efi/include/mach => include/efi}/efi.h        | 0
 15 files changed, 19 insertions(+), 18 deletions(-)
 create mode 100644 drivers/efi/Makefile
 rename {arch/efi => drivers}/efi/efi-device.c (99%)
 rename {arch/efi/include/mach => include/efi}/efi-device.h (100%)
 rename {arch/efi/include/mach => include/efi}/efi.h (100%)

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
index 32e060886..a37717ef8 100644
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
index bf14c5e24..f14e719b2 100644
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
similarity index 100%
rename from arch/efi/include/mach/efi-device.h
rename to include/efi/efi-device.h
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
