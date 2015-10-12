Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZldZL-0007N9-88
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 13:55:17 +0000
Received: from dude.hi.4.pengutronix.de ([10.1.0.7] helo=dude.pengutronix.de.)
 by metis.ext.pengutronix.de with esmtp (Exim 4.80)
 (envelope-from <l.stach@pengutronix.de>) id 1ZldYy-0007wI-HH
 for barebox@lists.infradead.org; Mon, 12 Oct 2015 15:54:52 +0200
From: Lucas Stach <l.stach@pengutronix.de>
Date: Mon, 12 Oct 2015 15:54:50 +0200
Message-Id: <1444658092-26864-2-git-send-email-l.stach@pengutronix.de>
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
Subject: [PATCH 2/4] ARM: l2x0: move outer cache flush on disable to user
To: barebox@lists.infradead.org

There are systems like the Calxeda Highbank, which need to do SMC
calls in order to access the secure L2C registers, which means they
want to replace the outer cache disable function with their own.

As the cache flush before entering the boot target is still needed
and to avoid exposing L2C internals to the architectures move the
flush before disable into the only current user.

Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
---
 arch/arm/cpu/cache-l2x0.c | 2 --
 arch/arm/cpu/cpu.c        | 4 +++-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/cpu/cache-l2x0.c b/arch/arm/cpu/cache-l2x0.c
index 6bd540ea69b3..0aa2482321e8 100644
--- a/arch/arm/cpu/cache-l2x0.c
+++ b/arch/arm/cpu/cache-l2x0.c
@@ -124,8 +124,6 @@ static void l2x0_flush_all(void)
 
 static void l2x0_disable(void)
 {
-	writel(0xff, l2x0_base + L2X0_CLEAN_INV_WAY);
-	while (readl(l2x0_base + L2X0_CLEAN_INV_WAY));
 	writel(0, l2x0_base + L2X0_CTRL);
 }
 
diff --git a/arch/arm/cpu/cpu.c b/arch/arm/cpu/cpu.c
index ff8f43d175ec..e8191ecde5a8 100644
--- a/arch/arm/cpu/cpu.c
+++ b/arch/arm/cpu/cpu.c
@@ -80,8 +80,10 @@ struct outer_cache_fns outer_cache;
 void mmu_disable(void)
 {
 	__mmu_cache_flush();
-	if (outer_cache.disable)
+	if (outer_cache.disable) {
+		outer_cache.flush_all();
 		outer_cache.disable();
+	}
 	__mmu_cache_off();
 }
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
