Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gSibc-0008Gc-US
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 13:13:18 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gSibQ-0003ku-1u
 for barebox@lists.infradead.org; Fri, 30 Nov 2018 14:13:04 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Fri, 30 Nov 2018 14:13:01 +0100
Message-Id: <20181130131303.2934-4-l.stach@pengutronix.de>
In-Reply-To: <20181130131303.2934-1-l.stach@pengutronix.de>
References: <20181130131303.2934-1-l.stach@pengutronix.de>
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
Subject: [PATCH 4/6] ARM: interrupts64: add missing prototypes
To: barebox@lists.infradead.org

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index f6f0c9d095d2..e8475d2e4733 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -25,6 +25,16 @@
 #include <asm/system.h>
 #include <asm/esr.h>
 
+/* Avoid missing prototype warning, called from assembly */
+void do_bad_sync (struct pt_regs *pt_regs);
+void do_bad_irq (struct pt_regs *pt_regs);
+void do_bad_fiq (struct pt_regs *pt_regs);
+void do_bad_error (struct pt_regs *pt_regs);
+void do_fiq (struct pt_regs *pt_regs);
+void do_irq (struct pt_regs *pt_regs);
+void do_error (struct pt_regs *pt_regs);
+void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far);
+
 static const char *esr_class_str[] = {
 	[0 ... ESR_ELx_EC_MAX]		= "UNRECOGNIZED EC",
 	[ESR_ELx_EC_UNKNOWN]		= "Unknown/Uncategorized",
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
