Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x22b.google.com ([2a00:1450:400c:c05::22b])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XULky-000435-QB
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 20:23:18 +0000
Received: by mail-wi0-f171.google.com with SMTP id bs8so1928387wib.4
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 13:22:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 17 Sep 2014 22:22:42 +0200
Message-Id: <1410985364-7105-5-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1410985364-7105-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 4/6] ARM: mvebu: Check for correct SoC in of_fixup callback
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Only run the fixup when we are actually on the corresponding
SoC.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Acked-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c | 3 +++
 arch/arm/mach-mvebu/dove.c          | 3 +++
 arch/arm/mach-mvebu/kirkwood.c      | 3 +++
 3 files changed, 9 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 1dedcfc55467..57f6a5fe0ddc 100644
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
index 31d2bb57f832..c2852f8986ae 100644
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
index 8ab2849ba2e4..d7903f732eac 100644
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
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
