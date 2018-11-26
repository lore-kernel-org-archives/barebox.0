Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gRD27-0000f6-3W
 for barebox@lists.infradead.org; Mon, 26 Nov 2018 09:18:25 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 26 Nov 2018 10:18:02 +0100
Message-Id: <20181126091807.19398-6-o.rempel@pengutronix.de>
In-Reply-To: <20181126091807.19398-1-o.rempel@pengutronix.de>
References: <20181126091807.19398-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v1 05/10] MIPS: multiimage: add ENTRY_FUNCTION macros
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/mips/include/asm/asm.h | 29 +++++++++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 12e17581b8..b9ccccc0cc 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -79,6 +79,35 @@ symbol:		.frame	sp, framesize, rpc
 		.globl	symbol;                         \
 symbol:
 
+/*
+ * ENTRY_FUNCTION - mark start of entry function
+ */
+#define ENTRY_FUNCTION(symbol)				\
+	.set noreorder;					\
+	.section .text_head_entry.BOARD_PBL_START;	\
+	.align 4;					\
+							\
+EXPORT(symbol)
+
+/*
+ * ENTRY_FUNCTION_END - mark end of entry function
+ */
+#define ENTRY_FUNCTION_END(symbol,dtb_start,dtb_end)	\
+	mips_nmon;					\
+	copy_to_link_location	symbol;			\
+	stack_setup;					\
+							\
+	la	a0, dtb_start;				\
+	la	a1, dtb_end;				\
+	la	v0, pbl_main_entry;			\
+	jal	v0;					\
+	 nop;						\
+							\
+	/* No return */					\
+__error:						\
+	b	__error;				\
+	 nop;
+
 /*
  * FEXPORT - export definition of a function symbol
  */
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
