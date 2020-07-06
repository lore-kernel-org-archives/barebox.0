Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jsKbv-0001SA-9B
 for barebox@lists.infradead.org; Mon, 06 Jul 2020 06:28:17 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  6 Jul 2020 08:28:05 +0200
Message-Id: <20200706062805.26278-3-a.fatoum@pengutronix.de>
In-Reply-To: <20200706062805.26278-1-a.fatoum@pengutronix.de>
References: <20200706062805.26278-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 3/4] sandbox: add libc memory allocator
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

While we typically want to reuse as much barebox functionality as
possible in sandbox, using system malloc(3) instead can be very
useful when using external memory integrity tools. This is even
useful for AddressSanitizer, because the reports resulting from
the memory poisoning API are less detailed than the built-in
support for the libc malloc(3).

Note that a barebox "heap" is still allocated upfront. It's only
used for request_sdram_region now though. Whatever is allocated by
means of malloc and memalign will be ina disjunct heap.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/sandbox/Makefile         |  1 +
 arch/sandbox/os/Makefile      |  1 +
 arch/sandbox/os/libc_malloc.c | 36 +++++++++++++++++++++++++++++++++++
 common/Kconfig                |  7 +++++++
 4 files changed, 45 insertions(+)
 create mode 100644 arch/sandbox/os/libc_malloc.c

diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index c08ea0cf83e0..26b2465999b8 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -12,6 +12,7 @@ lds-y   := $(BOARD)/barebox.lds
 
 TEXT_BASE = $(CONFIG_TEXT_BASE)
 KBUILD_CFLAGS += -Dmalloc=barebox_malloc -Dcalloc=barebox_calloc \
+	  	-Dmalloc_stats=barebox_malloc_stats -Dmemalign=barebox_memalign \
 		-Dfree=barebox_free -Drealloc=barebox_realloc \
 		-Dread=barebox_read -Dwrite=barebox_write \
 		-Dopen=barebox_open -Dclose=barebox_close \
diff --git a/arch/sandbox/os/Makefile b/arch/sandbox/os/Makefile
index b2f95087dcc4..1d32a197ead4 100644
--- a/arch/sandbox/os/Makefile
+++ b/arch/sandbox/os/Makefile
@@ -14,6 +14,7 @@ KBUILD_CFLAGS += -m32
 endif
 
 obj-y = common.o tap.o
+obj-$(CONFIG_MALLOC_LIBC) += libc_malloc.o
 
 CFLAGS_sdl.o = $(shell pkg-config sdl --cflags)
 obj-$(CONFIG_DRIVER_VIDEO_SDL) += sdl.o
diff --git a/arch/sandbox/os/libc_malloc.c b/arch/sandbox/os/libc_malloc.c
new file mode 100644
index 000000000000..74e3e2680585
--- /dev/null
+++ b/arch/sandbox/os/libc_malloc.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (C) 2020 Ahmad Fatoum <a.fatoum@pengutronix.de>
+ */
+
+#include <stdlib.h>
+#include <malloc.h>
+
+void barebox_malloc_stats(void)
+{
+}
+
+void *barebox_memalign(size_t alignment, size_t bytes)
+{
+	return memalign(alignment, bytes);
+}
+
+void *barebox_malloc(size_t size)
+{
+	return malloc(size);
+}
+
+void barebox_free(void *ptr)
+{
+	free(ptr);
+}
+
+void *barebox_realloc(void *ptr, size_t size)
+{
+	return realloc(ptr, size);
+}
+
+void *barebox_calloc(size_t n, size_t elem_size)
+{
+	return calloc(n, elem_size);
+}
diff --git a/common/Kconfig b/common/Kconfig
index 4bf8007c4247..658437f01c5e 100644
--- a/common/Kconfig
+++ b/common/Kconfig
@@ -312,6 +312,13 @@ config MALLOC_DUMMY
 	  memory is never freed. This is suitable for well tested noninteractive
 	  environments only.
 
+config MALLOC_LIBC
+	bool "libc malloc"
+	depends on SANDBOX
+	help
+	  select this option to use the libc malloc implementation in the sandbox.
+	  This is benefecial for testing with external memory integrity tools.
+
 endchoice
 
 config MODULES
-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
