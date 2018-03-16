Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ewosA-00067o-DT
 for barebox@lists.infradead.org; Fri, 16 Mar 2018 12:54:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 16 Mar 2018 13:53:41 +0100
Message-Id: <20180316125354.23462-66-s.hauer@pengutronix.de>
In-Reply-To: <20180316125354.23462-1-s.hauer@pengutronix.de>
References: <20180316125354.23462-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 65/78] ARM: aarch64: implement ignoring data aborts
To: Barebox List <barebox@lists.infradead.org>

Data aborts can be masked using the data_abort_mask() function.
Add the missing pieces for functionality on aarch64 so that the
'md' command is safe to call even with faulting addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts_64.c | 13 ++++++++++---
 1 file changed, 10 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/interrupts_64.c b/arch/arm/cpu/interrupts_64.c
index ee3dc3380b..32c8dfcb2d 100644
--- a/arch/arm/cpu/interrupts_64.c
+++ b/arch/arm/cpu/interrupts_64.c
@@ -143,8 +143,18 @@ void do_bad_error(struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 
+extern volatile int arm_ignore_data_abort;
+extern volatile int arm_data_abort_occurred;
+
 void do_sync(struct pt_regs *pt_regs, unsigned int esr, unsigned long far)
 {
+	if ((esr >> ESR_ELx_EC_SHIFT) == ESR_ELx_EC_DABT_CUR &&
+			arm_ignore_data_abort) {
+		arm_data_abort_occurred = 1;
+		pt_regs->elr += 4;
+		return;
+	}
+
 	printf("%s exception at 0x%016lx\n", esr_get_class_string(esr), far);
 	do_exception(pt_regs);
 }
@@ -156,9 +166,6 @@ void do_error(struct pt_regs *pt_regs)
 	do_exception(pt_regs);
 }
 
-extern volatile int arm_ignore_data_abort;
-extern volatile int arm_data_abort_occurred;
-
 void data_abort_mask(void)
 {
 	arm_data_abort_occurred = 0;
-- 
2.16.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
