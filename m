Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ce2Uj-0005mF-0p
 for barebox@lists.infradead.org; Wed, 15 Feb 2017 16:31:54 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Date: Wed, 15 Feb 2017 17:31:24 +0100
Message-Id: <20170215163124.21944-1-u.kleine-koenig@pengutronix.de>
In-Reply-To: <20170214105358.6666-3-u.kleine-koenig@pengutronix.de>
References: <20170214105358.6666-3-u.kleine-koenig@pengutronix.de>
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
Subject: [PATCH 3/3] fixup! mvebu: rework how memory is detected
To: barebox@lists.infradead.org

---
 arch/arm/mach-mvebu/dove.c     | 2 --
 arch/arm/mach-mvebu/kirkwood.c | 2 --
 2 files changed, 4 deletions(-)

diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index d6407f394229..9a3b05d004d5 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -54,8 +54,6 @@ static void __noreturn dove_restart_soc(struct restart_handler *rst)
 
 static int dove_init_soc(struct device_node *root, void *context)
 {
-	unsigned long phys_base, phys_size;
-
 	if (!of_machine_is_compatible("marvell,dove"))
 		return 0;
 
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 51eb69fc4e7f..d5ddf05e3447 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -31,8 +31,6 @@ static void __noreturn kirkwood_restart_soc(struct restart_handler *rst)
 
 static int kirkwood_init_soc(struct device_node *root, void *context)
 {
-	unsigned long phys_base, phys_size;
-
 	if (!of_machine_is_compatible("marvell,kirkwood"))
 		return 0;
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
