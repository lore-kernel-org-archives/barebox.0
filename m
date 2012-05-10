Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lpp01m010-f49.google.com ([209.85.215.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1SSPmI-0001T2-At
 for barebox@lists.infradead.org; Thu, 10 May 2012 09:37:03 +0000
Received: by mail-lpp01m010-f49.google.com with SMTP id p9so1127271laa.36
 for <barebox@lists.infradead.org>; Thu, 10 May 2012 02:35:17 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu, 10 May 2012 13:35:11 +0400
Message-Id: <1336642512-23885-1-git-send-email-antonynpavlov@gmail.com>
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
Subject: [RFCv2 1/2] MIPS: start.S: add "barebox" label at _start + 0x10
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/mips/boot/start.S |   12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/arch/mips/boot/start.S b/arch/mips/boot/start.S
index b756d40..e8868e1 100644
--- a/arch/mips/boot/start.S
+++ b/arch/mips/boot/start.S
@@ -25,6 +25,8 @@
 #include <asm/mipsregs.h>
 #include <asm/asm.h>
 #include <asm-generic/memory_layout.h>
+#include <generated/compile.h>
+#include <generated/utsrelease.h>
 
 	/*
 	 * ADR macro instruction (inspired by ARM)
@@ -52,6 +54,16 @@ _pc:	addiu	\rd, ra, \label - _pc		# label is assumed to be
 	.align 4
 
 EXPORT(_start)
+
+	b	__start
+	 nop
+
+	.org	0x10
+	.ascii	"barebox " UTS_RELEASE " " UTS_VERSION
+	.byte	0
+
+	.align 4
+__start:
 	/* disable watchpoints */
 	mtc0	zero, CP0_WATCHLO
 	mtc0	zero, CP0_WATCHHI
-- 
1.7.10


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
