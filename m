Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lb0-x231.google.com ([2a00:1450:4010:c04::231])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YpFUG-0005Dy-1O
 for barebox@lists.infradead.org; Mon, 04 May 2015 12:28:41 +0000
Received: by lbbzk7 with SMTP id zk7so103551366lbb.0
 for <barebox@lists.infradead.org>; Mon, 04 May 2015 05:28:18 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon,  4 May 2015 15:29:21 +0300
Message-Id: <1430742565-18714-2-git-send-email-antonynpavlov@gmail.com>
In-Reply-To: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
References: <1430742565-18714-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/5] MIPS: tplink-mr3020: enable PBL and compression
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

From: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 .../tplink-mr3020/include/board/board_pbl_start.h  | 32 ++++++++++++++++++++++
 arch/mips/mach-ath79/Kconfig                       |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
new file mode 100644
index 0000000..f85c5ad
--- /dev/null
+++ b/arch/mips/boards/tplink-mr3020/include/board/board_pbl_start.h
@@ -0,0 +1,32 @@
+/*
+ * Copyright (C) 2013, 2015 Antony Pavlov <antonynpavlov@gmail.com>
+ * Copyright (C) 2013 Oleksij Rempel <linux@rempel-privat.de>
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
+	mips_barebox_10h
+
+	mips_disable_interrupts
+
+	copy_to_link_location	pbl_start
+
+	.set	pop
+	.endm
diff --git a/arch/mips/mach-ath79/Kconfig b/arch/mips/mach-ath79/Kconfig
index 96fffd3..3fd9cdd 100644
--- a/arch/mips/mach-ath79/Kconfig
+++ b/arch/mips/mach-ath79/Kconfig
@@ -9,6 +9,8 @@ choice
 
 config BOARD_TPLINK_MR3020
 	bool "TP-LINK MR3020"
+	select HAVE_PBL_IMAGE
+	select HAVE_IMAGE_COMPRESSION
 
 endchoice
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
