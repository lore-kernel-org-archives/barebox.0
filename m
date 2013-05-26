Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-la0-f46.google.com ([209.85.215.46])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1UgZ7j-0003x3-6G
 for barebox@lists.infradead.org; Sun, 26 May 2013 11:28:27 +0000
Received: by mail-la0-f46.google.com with SMTP id er20so5622806lab.5
 for <barebox@lists.infradead.org>; Sun, 26 May 2013 04:28:02 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Sun, 26 May 2013 15:26:59 +0400
Message-Id: <1369567621-12415-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
References: <1369567621-12415-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/3] MIPS: rzx50: add trivial board_pbl_start
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../boards/rzx50/include/board/board_pbl_start.h   |   34 ++++++++++++++++++++
 1 file changed, 34 insertions(+)
 create mode 100644 arch/mips/boards/rzx50/include/board/board_pbl_start.h

diff --git a/arch/mips/boards/rzx50/include/board/board_pbl_start.h b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
new file mode 100644
index 0000000..cba3e7f
--- /dev/null
+++ b/arch/mips/boards/rzx50/include/board/board_pbl_start.h
@@ -0,0 +1,34 @@
+/*
+ * Startup Code for Ritmix RZX-50 board
+ *
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
+	/* CPU/SoC specific setup ... */
+	/* ... absent */
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
