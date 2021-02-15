Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lBbJp-0005Zd-BK
 for barebox@lists.infradead.org; Mon, 15 Feb 2021 10:41:30 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Feb 2021 11:36:57 +0100
Message-Id: <20210215103704.32537-5-a.fatoum@pengutronix.de>
In-Reply-To: <20210215103704.32537-1-a.fatoum@pengutronix.de>
References: <20210215103704.32537-1-a.fatoum@pengutronix.de>
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
Subject: [PATCH 04/12] ARM: asm: setjmp: implement coroutine dependency
 initjmp()
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>

Implement initjmp() for use with the coroutine implementation.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/Kconfig              | 1 +
 arch/arm/include/asm/setjmp.h | 2 ++
 arch/arm/lib32/setjmp.S       | 8 ++++++++
 arch/arm/lib64/setjmp.S       | 9 +++++++++
 4 files changed, 20 insertions(+)

diff --git a/arch/arm/Kconfig b/arch/arm/Kconfig
index ab0bf030131c..cdb934136e34 100644
--- a/arch/arm/Kconfig
+++ b/arch/arm/Kconfig
@@ -5,6 +5,7 @@ config ARM
 	select HAVE_CONFIGURABLE_TEXT_BASE if !RELOCATABLE
 	select HAVE_IMAGE_COMPRESSION
 	select HAVE_ARCH_KASAN
+	select HAS_ARCH_SJLJ
 	select ARM_OPTIMZED_STRING_FUNCTIONS if KASAN
 	default y
 
diff --git a/arch/arm/include/asm/setjmp.h b/arch/arm/include/asm/setjmp.h
index 538d9cd50651..4877e4312411 100644
--- a/arch/arm/include/asm/setjmp.h
+++ b/arch/arm/include/asm/setjmp.h
@@ -26,4 +26,6 @@ typedef struct jmp_buf_data jmp_buf[1];
 int setjmp(jmp_buf jmp) __attribute__((returns_twice));
 void longjmp(jmp_buf jmp, int ret) __attribute__((noreturn));
 
+int initjmp(jmp_buf jmp, void __noreturn (*func)(void), void *stack_top);
+
 #endif /* _SETJMP_H_ */
diff --git a/arch/arm/lib32/setjmp.S b/arch/arm/lib32/setjmp.S
index f0606a7f6659..626d915da183 100644
--- a/arch/arm/lib32/setjmp.S
+++ b/arch/arm/lib32/setjmp.S
@@ -33,4 +33,12 @@ ENTRY(longjmp)
 1:
 	bx   lr
 ENDPROC(longjmp)
+
+.pushsection .text.initjmp, "ax"
+ENTRY(initjmp)
+	str  a3, [a1, #32] /* stack pointer */
+	str  a2, [a1, #36] /* return address */
+	mov  a1, #0
+	bx   lr
+ENDPROC(initjmp)
 .popsection
diff --git a/arch/arm/lib64/setjmp.S b/arch/arm/lib64/setjmp.S
index 0910e2f5a6c3..80be8cb0f201 100644
--- a/arch/arm/lib64/setjmp.S
+++ b/arch/arm/lib64/setjmp.S
@@ -36,3 +36,12 @@ ENTRY(longjmp)
 	ret
 ENDPROC(longjmp)
 .popsection
+
+.pushsection .text.initjmp, "ax"
+ENTRY(initjmp)
+	str  x2, [x0, #96] /* stack pointer */
+	str  x1, [x0, #88] /* return address */
+	mov  x0, #0
+	ret
+ENDPROC(initjmp)
+.popsection
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
