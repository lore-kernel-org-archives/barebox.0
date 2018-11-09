Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gL3TQ-0002hd-0y
 for barebox@lists.infradead.org; Fri, 09 Nov 2018 09:53:09 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  9 Nov 2018 10:52:27 +0100
Message-Id: <20181109095246.15068-2-s.hauer@pengutronix.de>
In-Reply-To: <20181109095246.15068-1-s.hauer@pengutronix.de>
References: <20181109095246.15068-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 01/20] ARM: interrupts: Avoid missing prototypes warning
To: Barebox List <barebox@lists.infradead.org>

Add prototypes for various functions. Since these are called from
assembly add the prototype in the C file itself.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 73f023bd71..b9b91f3153 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -28,6 +28,14 @@
 #include <asm/unwind.h>
 #include <init.h>
 
+/* Avoid missing prototype warning, called from assembly */
+void do_undefined_instruction (struct pt_regs *pt_regs);
+void do_software_interrupt (struct pt_regs *pt_regs);
+void do_prefetch_abort (struct pt_regs *pt_regs);
+void do_data_abort (struct pt_regs *pt_regs);
+void do_fiq (struct pt_regs *pt_regs);
+void do_irq (struct pt_regs *pt_regs);
+
 /**
  * Display current register set content
  * @param[in] regs Guess what
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
