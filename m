Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QqJbr-0001Ez-NA
	for barebox@lists.infradead.org; Mon, 08 Aug 2011 06:46:52 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  8 Aug 2011 08:46:42 +0200
Message-Id: <1312786003-14734-8-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
References: <1312786003-14734-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 7/8] ARM: fix comments in interrupts.c
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/cpu/interrupts.c |   12 ++++++------
 1 files changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm/cpu/interrupts.c b/arch/arm/cpu/interrupts.c
index 71744ac..0c21bc1 100644
--- a/arch/arm/cpu/interrupts.c
+++ b/arch/arm/cpu/interrupts.c
@@ -97,8 +97,8 @@ void do_undefined_instruction (struct pt_regs *pt_regs)
  * The CPU catches a software interrupt
  * @param[in] pt_regs Register set content when the interrupt happens
  *
- * There is not functione behind this feature. So what to do else than
- * a reset? 
+ * There is no function behind this feature. So what to do else than
+ * a reset?
  */
 void do_software_interrupt (struct pt_regs *pt_regs)
 {
@@ -111,7 +111,7 @@ void do_software_interrupt (struct pt_regs *pt_regs)
  * The CPU catches a prefetch abort. That really should not happen!
  * @param[in] pt_regs Register set content when the accident happens
  *
- * FIXME: What does it mean, why is reset the only solution?
+ * instruction fetch from an unmapped area
  */
 void do_prefetch_abort (struct pt_regs *pt_regs)
 {
@@ -124,7 +124,7 @@ void do_prefetch_abort (struct pt_regs *pt_regs)
  * The CPU catches a data abort. That really should not happen!
  * @param[in] pt_regs Register set content when the accident happens
  *
- * FIXME: What does it mean, why is reset the only solution?
+ * data fetch from an unmapped area
  */
 void do_data_abort (struct pt_regs *pt_regs)
 {
@@ -137,7 +137,7 @@ void do_data_abort (struct pt_regs *pt_regs)
  * The CPU catches a fast interrupt request.
  * @param[in] pt_regs Register set content when the interrupt happens
  *
- * FIXME: What does it mean, why is reset the only solution?
+ * We never enable FIQs, so this should not happen
  */
 void do_fiq (struct pt_regs *pt_regs)
 {
@@ -150,7 +150,7 @@ void do_fiq (struct pt_regs *pt_regs)
  * The CPU catches a regular interrupt.
  * @param[in] pt_regs Register set content when the interrupt happens
  *
- * FIXME: What does it mean, why is reset the only solution?
+ * We never enable interrupts, so this should not happen
  */
 void do_irq (struct pt_regs *pt_regs)
 {
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
