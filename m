Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-f177.google.com ([209.85.217.177])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TirvT-0000nk-55
 for barebox@lists.infradead.org; Wed, 12 Dec 2012 19:25:04 +0000
Received: by mail-lb0-f177.google.com with SMTP id n10so999171lbo.36
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2012 11:25:00 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Wed, 12 Dec 2012 23:24:47 +0400
Message-Id: <1355340288-10724-3-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1355340288-10724-1-git-send-email-antonynpavlov@gmail.com>
References: <1355340288-10724-1-git-send-email-antonynpavlov@gmail.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/3] MIPS: qemu-malta: add trivial pbl support
To: barebox@lists.infradead.org

Trivial pbl support has no cpu specific setup.
We will add cache setup routines in the future.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../qemu-malta/include/board/board_pbl_start.h     |   34 ++++++++++++++++++++
 arch/mips/mach-malta/Kconfig                       |    2 ++
 2 files changed, 36 insertions(+)
 create mode 100644 arch/mips/boards/qemu-malta/include/board/board_pbl_start.h

diff --git a/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
new file mode 100644
index 0000000..5b06770
--- /dev/null
+++ b/arch/mips/boards/qemu-malta/include/board/board_pbl_start.h
@@ -0,0 +1,34 @@
+/*
+ * Startup Code for MIPS CPU
+ *
+ * Copyright (C) 2012 Antony Pavlov <antonynpavlov@gmail.com>
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
+ * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
+ * GNU General Public License for more details.
+ *
+ */
+
+#include <asm/pbl_macros.h>
+
+	.macro	board_pbl_start
+	.set	push
+	.set	noreorder
+
+	mips_disable_interrupts
+
+	/* cpu specific setup ... */
+	/* ... absent */
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/mach-malta/Kconfig b/arch/mips/mach-malta/Kconfig
index 8e0666c..1d291dc 100644
--- a/arch/mips/mach-malta/Kconfig
+++ b/arch/mips/mach-malta/Kconfig
@@ -9,6 +9,8 @@ choice
 
 config BOARD_QEMU_MALTA
 	bool "qemu malta"
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 
 endchoice
 
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
