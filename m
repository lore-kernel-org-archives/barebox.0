Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVQJQ-0008PB-Gc
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 19:59:34 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YVQJ3-0004Gt-0Y
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 20:59:09 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Mar 2015 20:59:08 +0100
Message-Id: <1426017548-30324-5-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
References: <1426017548-30324-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 5/5] ARM: highbank: fix Thumb build
To: barebox@lists.infradead.org

Note: this only fixes the build failure, I haven't actually tested
if it works.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-highbank/smc.S | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-highbank/smc.S b/arch/arm/mach-highbank/smc.S
index b2118b4a84bf..cc932a393166 100644
--- a/arch/arm/mach-highbank/smc.S
+++ b/arch/arm/mach-highbank/smc.S
@@ -18,6 +18,7 @@
  */
 
 ENTRY(highbank_smc1)
+	.arch_extension sec
 	stmfd	sp!, {r4-r11, lr}
 	mov	r12, r0
 	mov	r0, r1
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
