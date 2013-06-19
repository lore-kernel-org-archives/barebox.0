Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.21])
 by merlin.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UpEQt-0005Ek-8H
 for barebox@lists.infradead.org; Wed, 19 Jun 2013 09:12:08 +0000
Received: from mailout-de.gmx.net ([10.1.76.30]) by mrigmx.server.lan
 (mrigmx001) with ESMTP (Nemesis) id 0M7WX3-1U4G0w2kPX-00xO9L for
 <barebox@lists.infradead.org>; Wed, 19 Jun 2013 11:11:41 +0200
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Wed, 19 Jun 2013 11:11:32 +0200
Message-Id: <1371633093-23179-8-git-send-email-linux@rempel-privat.de>
In-Reply-To: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
References: <1371633093-23179-1-git-send-email-linux@rempel-privat.de>
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
Subject: [PATCH 7/8] MIPS: mach-ar231x: enable DEBUG_LL
To: barebox@lists.infradead.org

From: Antony Pavlov <antonynpavlov@gmail.com>

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/Kconfig                             |  1 +
 arch/mips/mach-ar231x/include/mach/debug_ll.h | 27 +++++++++++++++++++++++++++
 2 files changed, 28 insertions(+)
 create mode 100644 arch/mips/mach-ar231x/include/mach/debug_ll.h

diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
index 2e44619..6179fd8 100644
--- a/arch/mips/Kconfig
+++ b/arch/mips/Kconfig
@@ -52,6 +52,7 @@ config MACH_MIPS_AR231X
 	select SYS_SUPPORTS_BIG_ENDIAN
 	select CSRC_R4K_LIB
 	select DRIVER_SERIAL_NS16550
+	select HAS_DEBUG_LL
 
 config MACH_MIPS_BCM47XX
 	bool "Broadcom BCM47xx-based boards"
diff --git a/arch/mips/mach-ar231x/include/mach/debug_ll.h b/arch/mips/mach-ar231x/include/mach/debug_ll.h
new file mode 100644
index 0000000..5ab7f9a
--- /dev/null
+++ b/arch/mips/mach-ar231x/include/mach/debug_ll.h
@@ -0,0 +1,27 @@
+/*
+ * Copyright (C) 2013 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ * See file CREDITS for list of people who contributed to this project.
+ *
+ * This program is free software; you can redistribute it and/or modify
+ * it under the terms of the GNU General Public License version 2
+ * as published by the Free Software Foundation.
+ *
+ * This program is distributed in the hope that it will be useful,
+ * but WITHOUT ANY WARRANTY; without even the implied warranty of
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#ifndef __MACH_AR231X_DEBUG_LL__
+#define __MACH_AR231X_DEBUG_LL__
+
+/** @file
+ *  This File contains declaration for early output support
+ */
+#include <board/debug_ll.h>
+#include <asm/debug_ll_ns16550.h>
+
+#endif /* __MACH_AR231X_DEBUG_LL__ */
-- 
1.8.1.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
