Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hY778-0005Vy-Lb
 for barebox@lists.infradead.org; Tue, 04 Jun 2019 10:56:23 +0000
Received: by mail-wr1-x441.google.com with SMTP id d18so15310931wrs.5
 for <barebox@lists.infradead.org>; Tue, 04 Jun 2019 03:56:21 -0700 (PDT)
From: Peter Mamonov <pmamonov@gmail.com>
Date: Tue,  4 Jun 2019 13:55:52 +0300
Message-Id: <20190604105552.20619-1-pmamonov@gmail.com>
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
Subject: [PATCH] MIPS: use anonymous labels in ENTRY_FUNCTION_END and
 STOP_WITH_DEBUG_EVENT macros
To: o.rempel@pengutronix.de
Cc: barebox@lists.infradead.org, Peter Mamonov <pmamonov@gmail.com>

Use of global labels of the same name inside ENTRY_FUNCTION_END and
STOP_WITH_DEBUG_EVENT prevents simultaneous use of both macros. It also
prevents multiple use of one of them.

Signed-off-by: Peter Mamonov <pmamonov@gmail.com>
---
 arch/mips/include/asm/asm.h | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/mips/include/asm/asm.h b/arch/mips/include/asm/asm.h
index 019be4843b..be3a1bcdbc 100644
--- a/arch/mips/include/asm/asm.h
+++ b/arch/mips/include/asm/asm.h
@@ -100,8 +100,8 @@ EXPORT(symbol)
 	 nop;						\
 							\
 	/* No return */					\
-__error:						\
-	b	__error;				\
+1:							\
+	b	1b;					\
 	 nop;
 
 /*
@@ -114,8 +114,8 @@ __error:						\
 	/* trigger a soft breakpoint for OpenOCD */	\
 	SDBBP;						\
 	/* position independent variant of dead loop */	\
-	__error:					\
-	b	__error;				\
+1:							\
+	b	1b;					\
 	 nop;						\
 	/* Call some code from .text section.		\
 	 * It is needed to keep same linker script for	\
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
