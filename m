Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wi0-x235.google.com ([2a00:1450:400c:c05::235])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1XCPYb-0007Ab-0Z
 for barebox@lists.infradead.org; Wed, 30 Jul 2014 08:48:21 +0000
Received: by mail-wi0-f181.google.com with SMTP id bs8so1891762wib.8
 for <barebox@lists.infradead.org>; Wed, 30 Jul 2014 01:47:58 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Wed, 30 Jul 2014 10:39:34 +0200
Message-Id: <1406709580-5585-3-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1406709580-5585-1-git-send-email-sebastian.hesselbarth@gmail.com>
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
Subject: [PATCH v3 2/8] ARM: mvebu: armada-370-xp: disable MBUS error
 propagation
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>, barebox@lists.infradead.org

Accessing MBUS windows not backed-up by e.g. PCIe devices will
hang the SoC. Disable MBUS error propagation back to CPU allows
to read 0xffffffff instead of hanging the SoC.

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Changelog:
v2->v3:
- new patch

Cc: barebox@lists.infradead.org
Cc: Antony Pavlov <antonynpavlov@gmail.com>
Cc: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Cc: Lucas Stach <l.stach@pengutronix.de>
Cc: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
Cc: Ezequiel Garcia <ezequiel.garcia@free-electrons.com>
---
 arch/arm/mach-mvebu/armada-370-xp.c                   | 6 ++++++
 arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h | 2 ++
 2 files changed, 8 insertions(+)

diff --git a/arch/arm/mach-mvebu/armada-370-xp.c b/arch/arm/mach-mvebu/armada-370-xp.c
index e416a3876539..4eda6d539aab 100644
--- a/arch/arm/mach-mvebu/armada-370-xp.c
+++ b/arch/arm/mach-mvebu/armada-370-xp.c
@@ -46,10 +46,16 @@ static inline void armada_370_xp_memory_find(unsigned long *phys_base,
 static int armada_370_xp_init_soc(void)
 {
 	unsigned long phys_base, phys_size;
+	u32 reg;
 
 	barebox_set_model("Marvell Armada 370/XP");
 	barebox_set_hostname("armada");
 
+	/* Disable MBUS error propagation */
+	reg = readl(ARMADA_370_XP_FABRIC_BASE);
+	reg &= ~BIT(8);
+	writel(reg, ARMADA_370_XP_FABRIC_BASE);
+
 	armada_370_xp_memory_find(&phys_base, &phys_size);
 	arm_add_mem_device("ram0", phys_base, phys_size);
 
diff --git a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
index 5fd16e5733bb..ccc687c03b6e 100644
--- a/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
+++ b/arch/arm/mach-mvebu/include/mach/armada-370-xp-regs.h
@@ -42,6 +42,8 @@
 #define  DDR_SIZE_CS_SHIFT		2
 #define  DDR_SIZE_MASK			0xff000000
 
+#define ARMADA_370_XP_FABRIC_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20200)
+
 #define ARMADA_370_XP_TIMER_BASE	(ARMADA_370_XP_INT_REGS_BASE + 0x20300)
 
 #endif /* __MACH_MVEBU_DOVE_REGS_H */
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
