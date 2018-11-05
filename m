Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gJgxb-0002rT-HR
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 15:38:41 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7]
 helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.89)
 (envelope-from <l.stach@pengutronix.de>) id 1gJgxN-0004tM-89
 for barebox@lists.infradead.org; Mon, 05 Nov 2018 16:38:25 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon,  5 Nov 2018 16:38:25 +0100
Message-Id: <20181105153825.26450-2-l.stach@pengutronix.de>
In-Reply-To: <20181105153825.26450-1-l.stach@pengutronix.de>
References: <20181105153825.26450-1-l.stach@pengutronix.de>
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
Subject: [PATCH 2/2] fixup! ARM: install HYP vectors at PBL and Barebox entry
To: barebox@lists.infradead.org

---
 arch/arm/cpu/lowlevel.S | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/cpu/lowlevel.S b/arch/arm/cpu/lowlevel.S
index 13dfe496ad17..3b52644e43e1 100644
--- a/arch/arm/cpu/lowlevel.S
+++ b/arch/arm/cpu/lowlevel.S
@@ -8,8 +8,10 @@ ENTRY(arm_cpu_lowlevel_init)
 	/* save lr, since it may be banked away with a processor mode change */
 	mov	r2, lr
 
+#ifdef CONFIG_CPU_32v7
 	/* careful: the hyp install corrupts r0 and r1 */
 	bl	__hyp_install
+#endif
 
 	/* set the cpu to SVC32 mode, mask irq and fiq */
 	mrs	r12, cpsr
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
