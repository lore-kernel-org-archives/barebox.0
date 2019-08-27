Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i2d68-0008Am-SH
 for barebox@lists.infradead.org; Tue, 27 Aug 2019 15:09:33 +0000
Received: from geraet.pengutronix.de (hazel.nat.pengutronix.de [85.220.165.66])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 21EDF20001B
 for <barebox@lists.infradead.org>; Tue, 27 Aug 2019 15:09:26 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
Date: Tue, 27 Aug 2019 17:09:16 +0200
Message-Id: <20190827150918.16247-9-ahmad@a3f.at>
In-Reply-To: <20190827150918.16247-1-ahmad@a3f.at>
References: <20190827150918.16247-1-ahmad@a3f.at>
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
Subject: [PATCH v2 08/10] sandbox: use sanitizer unwind for dump_stack if
 available
To: barebox@lists.infradead.org

The sanitize unwind looks pretty and is just a function call away if we
are compiling with KASAN or UBSAN. Use it if available.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/sandbox/Kconfig      |  6 ++++++
 arch/sandbox/Makefile     |  2 +-
 arch/sandbox/lib/Makefile |  1 +
 arch/sandbox/lib/unwind.c | 11 +++++++++++
 4 files changed, 19 insertions(+), 1 deletion(-)
 create mode 100644 arch/sandbox/lib/Makefile
 create mode 100644 arch/sandbox/lib/unwind.c

diff --git a/arch/sandbox/Kconfig b/arch/sandbox/Kconfig
index d153846efa0f..1171e4b8f8e3 100644
--- a/arch/sandbox/Kconfig
+++ b/arch/sandbox/Kconfig
@@ -12,3 +12,9 @@ config LINUX
 	bool
 	default y
 	select GENERIC_FIND_NEXT_BIT
+
+config SANDBOX_UNWIND
+	bool
+	default y
+	select ARCH_HAS_STACK_DUMP
+	depends on UBSAN || KASAN
diff --git a/arch/sandbox/Makefile b/arch/sandbox/Makefile
index 780783a1e08c..62f6be745a76 100644
--- a/arch/sandbox/Makefile
+++ b/arch/sandbox/Makefile
@@ -51,7 +51,7 @@ cmd_barebox__ = $(CC) -o $@ -Wl,-T,$(barebox-lds) \
 	-Wl,--start-group $(barebox-common) -Wl,--end-group \
 	-lrt -lpthread $(SDL_LIBS) $(FTDI1_LIBS)
 
-common-y += $(BOARD) arch/sandbox/os/
+common-y += $(BOARD) arch/sandbox/os/ arch/sandbox/lib/
 
 common-$(CONFIG_OFTREE) += arch/sandbox/dts/
 
diff --git a/arch/sandbox/lib/Makefile b/arch/sandbox/lib/Makefile
new file mode 100644
index 000000000000..b32ca6aaf804
--- /dev/null
+++ b/arch/sandbox/lib/Makefile
@@ -0,0 +1 @@
+obj-$(CONFIG_ARCH_HAS_STACK_DUMP) += unwind.o
diff --git a/arch/sandbox/lib/unwind.c b/arch/sandbox/lib/unwind.c
new file mode 100644
index 000000000000..15a2798cc404
--- /dev/null
+++ b/arch/sandbox/lib/unwind.c
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: GPL-2.0-only
+// Copyright 2019 Ahmad Fatoum
+
+#include <common.h>
+
+void __sanitizer_print_stack_trace(void);
+
+void dump_stack(void)
+{
+		__sanitizer_print_stack_trace();
+}
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
