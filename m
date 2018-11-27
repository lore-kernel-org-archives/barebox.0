Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRZX5-0000iZ-Pa
 for barebox@lists.infradead.org; Tue, 27 Nov 2018 09:19:54 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 27 Nov 2018 10:19:27 +0100
Message-Id: <20181127091935.2992-3-o.rempel@pengutronix.de>
In-Reply-To: <20181127091935.2992-1-o.rempel@pengutronix.de>
References: <20181127091935.2992-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v3 02/10] MIPS: add arch/mips/lib/pbl.lds.S
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

we need it for multiimage support.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/lib/pbl.lds.S | 53 +++++++++++++++++++++++++++++++++++++++++
 1 file changed, 53 insertions(+)
 create mode 100644 arch/mips/lib/pbl.lds.S

diff --git a/arch/mips/lib/pbl.lds.S b/arch/mips/lib/pbl.lds.S
new file mode 100644
index 0000000000..7ca9ae151f
--- /dev/null
+++ b/arch/mips/lib/pbl.lds.S
@@ -0,0 +1,53 @@
+// SPDX-License-Identifier: GPL-2.0+
+/*
+ * (C) Copyright 2018 Oleksij Rempel <o.rempel@pengutronix.de>, Pengutronix
+ * (C) Copyright 2012 Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
+ */
+
+#include <asm-generic/barebox.lds.h>
+#include <asm-generic/memory_layout.h>
+
+OUTPUT_ARCH("mips")
+SECTIONS
+{
+	. = HEAD_TEXT_BASE;
+
+	PRE_IMAGE
+
+	. = ALIGN(4);
+	.text      :
+	{
+		_stext = .;
+		_text = .;
+		*(.text_head_entry*)
+		__bare_init_start = .;
+		*(.text_bare_init*)
+		__bare_init_end = .;
+		*(.text*)
+	}
+
+	BAREBOX_BARE_INIT_SIZE
+
+	. = ALIGN(4);
+	.rodata : { *(.rodata*) }
+
+	.barebox_imd : { BAREBOX_IMD }
+
+	_etext = .;			/* End of text and rodata section */
+
+	. = ALIGN(4);
+	.data : { *(.data*) }
+
+	. = ALIGN(4);
+	__piggydata_start = .;
+	.piggydata : {
+		*(.piggydata)
+	}
+	__piggydata_end = .;
+
+	. = ALIGN(4);
+	__bss_start = .;
+	.bss : { *(.bss*) }
+	__bss_stop = .;
+	_end = .;
+}
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
