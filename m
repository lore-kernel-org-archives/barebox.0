Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.x-arc.de ([217.6.246.34] helo=root.phytec.de)
 by casper.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1S4vLd-0000mx-VN
 for barebox@lists.infradead.org; Tue, 06 Mar 2012 14:26:45 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id EDFCDBF0E6
 for <barebox@lists.infradead.org>; Mon,  5 Mar 2012 16:18:37 +0100 (CET)
From: Jan Weitzel <j.weitzel@phytec.de>
Date: Tue, 6 Mar 2012 15:26:29 +0100
Message-Id: <1331043989-19554-2-git-send-email-j.weitzel@phytec.de>
In-Reply-To: <20120305171214.GX3852@pengutronix.de>
References: <20120305171214.GX3852@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 2/2 v2] omap: move do_set_mux to omap4_generic
To: barebox@lists.infradead.org

do_set_mux is used by two boards.

Signed-off-by: Jan Weitzel <j.weitzel@phytec.de>
---
v2: add omap4_ prefix

 arch/arm/boards/panda/mux.c                 |   13 ++-----------
 arch/arm/boards/pcm049/mux.c                |   13 ++-----------
 arch/arm/mach-omap/include/mach/omap4-mux.h |    2 ++
 arch/arm/mach-omap/omap4_generic.c          |   10 ++++++++++
 4 files changed, 16 insertions(+), 22 deletions(-)

diff --git a/arch/arm/boards/panda/mux.c b/arch/arm/boards/panda/mux.c
index 7586e86..310e433 100644
--- a/arch/arm/boards/panda/mux.c
+++ b/arch/arm/boards/panda/mux.c
@@ -238,20 +238,11 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	{ PAD0_FREF_CLK4_OUT, M3 /* gpio_wk8 */ },
 };
 
-static void do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
-{
-	int i;
-	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
-
-	for (i = 0; i < size; i++, pad++)
-		writew(pad->val, base + pad->offset);
-}
-
 void set_muxconf_regs(void)
 {
-	do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
+	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
 			ARRAY_SIZE(core_padconf_array));
 
-	do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
+	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
 			ARRAY_SIZE(wkup_padconf_array));
 }
diff --git a/arch/arm/boards/pcm049/mux.c b/arch/arm/boards/pcm049/mux.c
index 9911b62..0e7adea 100644
--- a/arch/arm/boards/pcm049/mux.c
+++ b/arch/arm/boards/pcm049/mux.c
@@ -235,20 +235,11 @@ static const struct pad_conf_entry wkup_padconf_array[] = {
 	{PAD1_SYS_BOOT7, (IEN | M3)},					/* gpio_wk10 */
 };
 
-static void do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
-{
-	int i;
-	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
-
-	for (i = 0; i < size; i++, pad++)
-		writew(pad->val, base + pad->offset);
-}
-
 void set_muxconf_regs(void)
 {
-	do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
+	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_CORE, core_padconf_array,
 			ARRAY_SIZE(core_padconf_array));
 
-	do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
+	omap4_do_set_mux(OMAP44XX_CONTROL_PADCONF_WKUP, wkup_padconf_array,
 			ARRAY_SIZE(wkup_padconf_array));
 }
diff --git a/arch/arm/mach-omap/include/mach/omap4-mux.h b/arch/arm/mach-omap/include/mach/omap4-mux.h
index 019574b..d06beaa 100644
--- a/arch/arm/mach-omap/include/mach/omap4-mux.h
+++ b/arch/arm/mach-omap/include/mach/omap4-mux.h
@@ -341,4 +341,6 @@ struct pad_conf_entry {
 #define CONTROL_SPARE_R		0x0618
 #define CONTROL_SPARE_R_C0		0x061C
 
+void omap4_do_set_mux(u32 base, struct pad_conf_entry const *array, int size);
+
 #endif /* _MUX_OMAP4_H_ */
diff --git a/arch/arm/mach-omap/omap4_generic.c b/arch/arm/mach-omap/omap4_generic.c
index 8352470..baa138d 100644
--- a/arch/arm/mach-omap/omap4_generic.c
+++ b/arch/arm/mach-omap/omap4_generic.c
@@ -3,6 +3,7 @@
 #include <mach/silicon.h>
 #include <io.h>
 #include <mach/omap4-silicon.h>
+#include <mach/omap4-mux.h>
 #include <mach/omap4-clock.h>
 #include <mach/syslib.h>
 #include <mach/xload.h>
@@ -450,3 +451,12 @@ noinline int omap4_scale_vcores(void)
 
 	return 0;
 }
+
+void omap4_do_set_mux(u32 base, struct pad_conf_entry const *array, int size)
+{
+	int i;
+	struct pad_conf_entry *pad = (struct pad_conf_entry *) array;
+
+	for (i = 0; i < size; i++, pad++)
+		writew(pad->val, base + pad->offset);
+}
-- 
1.7.0.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
