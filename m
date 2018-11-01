Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gI980-0006Rx-Ar
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 09:19:02 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gI97m-0003fn-Hw
 for barebox@lists.infradead.org; Thu, 01 Nov 2018 10:18:46 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Thu,  1 Nov 2018 10:18:39 +0100
Message-Id: <20181101091846.10882-4-l.stach@pengutronix.de>
In-Reply-To: <20181101091846.10882-1-l.stach@pengutronix.de>
References: <20181101091846.10882-1-l.stach@pengutronix.de>
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
Subject: [PATCH v4 04/11] ARM: allow secure monitor code to be built without
 PSCI
To: barebox@lists.infradead.org

The hyp mode handling added in the secure monitor code is also useful
when Barebox doesn't have PSCI control. Allow to build without PSCI.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
Tested-by: Roland Hieber <r.hieber@pengutronix.de>
---
 arch/arm/cpu/sm_as.S | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/cpu/sm_as.S b/arch/arm/cpu/sm_as.S
index 09580e75de5f..0d01e1bf2435 100644
--- a/arch/arm/cpu/sm_as.S
+++ b/arch/arm/cpu/sm_as.S
@@ -129,7 +129,9 @@ secure_monitor:
 	sub	sp, sp, #4*4			@ allocate result structure on stack
 	mov	r12, sp
 	push	{r4-r6, r12}
+#ifdef CONFIG_ARM_PSCI
 	bl	psci_entry
+#endif
 	pop	{r4-r6, r12}
 	ldm	r12, {r0-r3}
 	add	sp, sp, #4*4
@@ -163,6 +165,8 @@ ENTRY(psci_cpu_entry)
 	mcr	p15, 0, r0, c1, c0, 1	@ ACTLR
 
 	bl	secure_monitor_stack_setup
+#ifdef CONFIG_ARM_PSCI
 	bl	psci_cpu_entry_c
+#endif
 
 ENDPROC(psci_cpu_entry)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
