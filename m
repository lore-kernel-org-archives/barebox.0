Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from magratgarlick.emantor.de ([2a01:4f8:c17:c88::2])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kZWAT-0000T6-Cv
 for barebox@lists.infradead.org; Mon, 02 Nov 2020 09:30:27 +0000
From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Date: Mon,  2 Nov 2020 10:30:00 +0100
Message-Id: <20201102093002.15851-2-r.czerwinski@pengutronix.de>
In-Reply-To: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
References: <20201102093002.15851-1-r.czerwinski@pengutronix.de>
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
Subject: [PATCH 2/4] arm: mmu: traverse reserved mem map as uncached
To: barebox@lists.infradead.org
Cc: Rouven Czerwinski <r.czerwinski@pengutronix.de>

Traverse the reserved memory map and map areas which are marked with
uncached as uncached (and thus noexec).

Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
---
 arch/arm/cpu/mmu.c | 14 ++++++++++++++
 include/of.h       |  5 +++++
 2 files changed, 19 insertions(+)

diff --git a/arch/arm/cpu/mmu.c b/arch/arm/cpu/mmu.c
index 6af228505d..5974e1e38a 100644
--- a/arch/arm/cpu/mmu.c
+++ b/arch/arm/cpu/mmu.c
@@ -17,6 +17,7 @@
 #include <memory.h>
 #include <asm/system_info.h>
 #include <asm/sections.h>
+#include <of.h>
 
 #include "mmu.h"
 
@@ -393,6 +394,8 @@ static void vectors_init(void)
 void __mmu_init(bool mmu_on)
 {
 	struct memory_bank *bank;
+	struct of_reserve_map *res_map;
+	int i;
 
 	arm_set_cache_functions();
 
@@ -453,6 +456,17 @@ void __mmu_init(bool mmu_on)
 		__mmu_cache_flush();
 	}
 
+	res_map = of_get_reserve_map();
+	if (res_map) {
+		for (i = 0; i < res_map->num_entries; i++) {
+			if (res_map->uncached & BIT(i)) {
+				create_sections(ttb, res_map->start[i],
+						res_map->end[i],
+						PMD_SECT_DEF_UNCACHED);
+			}
+		}
+	}
+
 	__mmu_cache_on();
 }
 
diff --git a/include/of.h b/include/of.h
index 5d7f54fb36..3d8c26f319 100644
--- a/include/of.h
+++ b/include/of.h
@@ -1042,6 +1042,11 @@ static inline int of_firmware_load_overlay(struct device_node *overlay, const ch
 {
 	return -ENOSYS;
 }
+
+static inline struct of_reserve_map *of_get_reserve_map(void)
+{
+	return NULL;
+}
 #endif
 
 #endif /* __OF_H */
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
