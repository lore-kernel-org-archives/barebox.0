Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1XTQut-0000kn-Dp
 for barebox@lists.infradead.org; Mon, 15 Sep 2014 07:41:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 15 Sep 2014 09:41:11 +0200
Message-Id: <1410766873-4393-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
References: <1410766873-4393-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/5] ARM: mvebu: Check for correct SoC in of_fixup callback
To: barebox@lists.infradead.org

Only run the fixup when we are actually on the corresponding
SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-mvebu/armada-370-xp.c | 3 +++
 arch/arm/mach-mvebu/dove.c          | 3 +++
 arch/arm/mach-mvebu/kirkwood.c      | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 5c8499b..86a0993 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -57,6 +57,9 @@ static int armada_370_xp_init_soc(struct device_node *root, void *context)
 	unsigned long phys_base, phys_size;
 	u32 reg;
 
+	if (!of_machine_is_compatible("marvell,armada-370-xp"))
+		return 0;
+
 	mvebu_set_reset(armada_370_xp_reset_cpu);
 
 	barebox_set_model("Marvell Armada 370/XP");
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 58d5439..8ec0e7c 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -81,6 +81,9 @@ static int dove_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 
+	if (!of_machine_is_compatible("marvell,dove"))
+		return 0;
+
 	mvebu_set_reset(dove_reset_cpu);
 
 	barebox_set_model("Marvell Dove");
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index a4b0853..3251120 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -55,6 +55,9 @@ static int kirkwood_init_soc(struct device_node *root, void *context)
 {
 	unsigned long phys_base, phys_size;
 
+	if (!of_machine_is_compatible("marvell,kirkwood"))
+		return 0;
+
 	mvebu_set_reset(kirkwood_reset_cpu);
 
 	barebox_set_model("Marvell Kirkwood");
-- 
2.1.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
