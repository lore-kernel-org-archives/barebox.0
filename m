Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YVQJQ-0008P5-GZ
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 19:59:33 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <l.stach@pengutronix.de>) id 1YVQJ2-0004Gt-SZ
 for barebox@lists.infradead.org; Tue, 10 Mar 2015 20:59:08 +0100
From: Lucas Stach <l.stach@pengutronix.de>
Date: Tue, 10 Mar 2015 20:59:05 +0100
Message-Id: <1426017548-30324-2-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/5] ARM: versatile: provide clk_set_rate stub
To: barebox@lists.infradead.org

Some drivers depend on this symbol and this fixes a failure
to link them.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/mach-versatile/core.c | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 253e408db9ad..c671aa6173fa 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -57,6 +57,12 @@ unsigned long clk_get_rate(struct clk *clk)
 EXPORT_SYMBOL(clk_get_rate);
 
 /* enable and disable do nothing */
+int clk_set_rate(struct clk *clk, unsigned long rate)
+{
+	return 0;
+}
+EXPORT_SYMBOL(clk_set_rate);
+
 int clk_enable(struct clk *clk)
 {
 	return 0;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
