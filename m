Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZldZM-0003eG-CF
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 13:55:17 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZldYy-0007wI-IX
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 15:54:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 12 Oct 2015 15:54:52 +0200
Message-Id: <1444658092-26864-4-git-send-email-l.stach@pengutronix.de>
In-Reply-To: <1444658092-26864-1-git-send-email-l.stach@pengutronix.de>
References: <1444658092-26864-1-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 4/4] ARM: imx6: set shared attribute override bit in PL310
To: barebox@lists.infradead.org

In order to make the system compliant to the ARMv7 ARM RevC clarifications
regarding conflicting memory aliases the shared override bit needs to be
set. This needs to be done in the bootloader, as the kernel will not apply
any modifications to the AUX_CTRL register by default, as it is a secure only
register.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-imx/imx6.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/mach-imx/imx6.c b/arch/arm/mach-imx/imx6.c
index 509ac8460216..c49de49209f3 100644
--- a/arch/arm/mach-imx/imx6.c
+++ b/arch/arm/mach-imx/imx6.c
@@ -222,6 +222,17 @@ static int imx6_mmu_init(void)
 
 	writel(val, l2x0_base + L2X0_PREFETCH_CTRL);
 
+	/*
+	 * Set shared attribute override bit in AUX_CTRL register, this is done
+	 * here as it must be done regardless of the usage of the L2 cache in
+	 * barebox itself. The kernel will not touch this bit, but it must be
+	 * set to make the system compliant to the ARMv7 ARM RevC clarifications
+	 * regarding conflicting memory aliases.
+	 */
+	val = readl(l2x0_base + L2X0_AUX_CTRL);
+	val |= (1 << 22);
+	writel(val, l2x0_base + L2X0_AUX_CTRL);
+
 	l2x0_init(l2x0_base, 0x0, ~0UL);
 
 	return 0;
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
