Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-x22e.google.com ([2a00:1450:400c:c00::22e])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XULky-00042w-Oa
 for barebox@lists.infradead.org; Wed, 17 Sep 2014 20:23:18 +0000
Received: by mail-wg0-f46.google.com with SMTP id n12so1961071wgh.29
 for <barebox@lists.infradead.org>; Wed, 17 Sep 2014 13:22:53 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 17 Sep 2014 22:22:40 +0200
Message-Id: <1410985364-7105-3-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v2 2/6] ARM: mvebu: Add machine compatible to mbus ranges
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

Multi-SoC support for MVEBU will add mbus ranges for all compiled
SoCs. To protect the mbus node of the SoC barebox is executed on
from others ranges, pass machine's compatible to mvebu_mbus_add_range
and check before applying the fixup.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: Sascha Hauer <s.hauer@pengutronix.de>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
Cc: barebox@lists.infradead.org
---
 arch/arm/mach-mvebu/armada-370-xp.c | 3 ++-
 arch/arm/mach-mvebu/dove.c          | 6 ++++--
 arch/arm/mach-mvebu/kirkwood.c      | 3 ++-
 drivers/bus/mvebu-mbus.c            | 6 +++++-
 include/linux/mbus.h                | 3 ++-
 5 files changed, 15 insertions(+), 6 deletions(-)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index 6251100e886d..92096fcccabe 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -70,7 +70,8 @@ static int armada_370_xp_init_soc(void)
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
-	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
+	mvebu_mbus_add_range("marvell,armada-370-xp", 0xf0, 0x01,
+			     MVEBU_REMAP_INT_REG_BASE);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mvebu/dove.c b/arch/arm/mach-mvebu/dove.c
index 17cee0b9017c..85fdbe41b55c 100644
--- a/arch/arm/mach-mvebu/dove.c
+++ b/arch/arm/mach-mvebu/dove.c
@@ -90,8 +90,10 @@ static int dove_init_soc(void)
 	dove_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
-	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
-	mvebu_mbus_add_range(0xf0, 0x02, DOVE_REMAP_MC_REGS);
+	mvebu_mbus_add_range("marvell,dove", 0xf0, 0x01,
+			     MVEBU_REMAP_INT_REG_BASE);
+	mvebu_mbus_add_range("marvell,dove", 0xf0, 0x02,
+			     DOVE_REMAP_MC_REGS);
 
 	return 0;
 }
diff --git a/arch/arm/mach-mvebu/kirkwood.c b/arch/arm/mach-mvebu/kirkwood.c
index 7c0526b885a0..b6cbd02592a4 100644
--- a/arch/arm/mach-mvebu/kirkwood.c
+++ b/arch/arm/mach-mvebu/kirkwood.c
@@ -63,7 +63,8 @@ static int kirkwood_init_soc(void)
 	kirkwood_memory_find(&phys_base, &phys_size);
 
 	mvebu_set_memory(phys_base, phys_size);
-	mvebu_mbus_add_range(0xf0, 0x01, MVEBU_REMAP_INT_REG_BASE);
+	mvebu_mbus_add_range("marvell,kirkwood", 0xf0, 0x01,
+			     MVEBU_REMAP_INT_REG_BASE);
 
 	return 0;
 }
diff --git a/drivers/bus/mvebu-mbus.c b/drivers/bus/mvebu-mbus.c
index b7f78367d4a7..9dc43011b964 100644
--- a/drivers/bus/mvebu-mbus.c
+++ b/drivers/bus/mvebu-mbus.c
@@ -744,6 +744,7 @@ static int mvebu_mbus_init(void)
 postcore_initcall(mvebu_mbus_init);
 
 struct mbus_range {
+	const char *compatible;
 	u32 mbusid;
 	u32 remap;
 	struct list_head list;
@@ -752,10 +753,11 @@ struct mbus_range {
 #define MBUS_ID(t,a)	(((t) << 24) | ((attr) << 16))
 static LIST_HEAD(mbus_ranges);
 
-void mvebu_mbus_add_range(u8 target, u8 attr, u32 remap)
+void mvebu_mbus_add_range(const char *compatible, u8 target, u8 attr, u32 remap)
 {
 	struct mbus_range *r = xzalloc(sizeof(*r));
 
+	r->compatible = strdup(compatible);
 	r->mbusid = MBUS_ID(target, attr);
 	r->remap = remap;
 	list_add_tail(&r->list, &mbus_ranges);
@@ -811,6 +813,8 @@ static int mvebu_mbus_of_fixup(struct device_node *root, void *context)
 				continue;
 
 			list_for_each_entry(r, &mbus_ranges, list) {
+				if (!of_machine_is_compatible(r->compatible))
+					continue;
 				if (r->mbusid == mbusid)
 					ranges[n + na + pa - 1] = r->remap;
 			}
diff --git a/include/linux/mbus.h b/include/linux/mbus.h
index ac149828757b..b90fabbfb7e5 100644
--- a/include/linux/mbus.h
+++ b/include/linux/mbus.h
@@ -58,6 +58,7 @@ int mvebu_mbus_add_window_by_id(unsigned int target, unsigned int attribute,
 				phys_addr_t base, size_t size);
 int mvebu_mbus_del_window(phys_addr_t base, size_t size);
 
-void mvebu_mbus_add_range(u8 target, u8 attr, u32 remap);
+void mvebu_mbus_add_range(const char *compatible,
+			  u8 target, u8 attr, u32 remap);
 
 #endif /* __LINUX_MBUS_H */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
