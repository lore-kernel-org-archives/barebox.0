Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z2Y5r-0002DM-TM
 for barebox@lists.infradead.org; Wed, 10 Jun 2015 04:58:30 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 10 Jun 2015 06:58:02 +0200
Message-Id: <1433912282-10774-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] clk: of: fix clk_of_table generation
To: Barebox List <barebox@lists.infradead.org>

We used to collect all sections beginning with __clk_of_table_ in a single
section in the linker using KEEP(*(.__clk_of_table_*)). That the sentinel
entry ended up as the last entry was pure luck, but not always the case.

Instead of putting all entries in different sections we now put all entries
in the same section. Only the sentinel entry gets its own section and is
collected by the linker separately.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
Reported-by: Andreas Willig <andreas.willig@rafi.de>
---
 include/asm-generic/barebox.lds.h | 3 ++-
 include/linux/clk.h               | 2 +-
 2 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/include/asm-generic/barebox.lds.h b/include/asm-generic/barebox.lds.h
index 254397e..00d6eca 100644
--- a/include/asm-generic/barebox.lds.h
+++ b/include/asm-generic/barebox.lds.h
@@ -47,7 +47,8 @@
 #define BAREBOX_CLK_TABLE()			\
 	. = ALIGN(8);				\
 	__clk_of_table_start = .;		\
-	KEEP(*(.__clk_of_table_*));		\
+	KEEP(*(.__clk_of_table));		\
+	KEEP(*(.__clk_of_table_end));		\
 	__clk_of_table_end = .;
 
 #define BAREBOX_DTB()				\
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 4aeec63..7a0ee11 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -321,7 +321,7 @@ struct of_phandle_args;
 
 #define CLK_OF_DECLARE(name, compat, fn)				\
 const struct of_device_id __clk_of_table_##name				\
-__attribute__ ((unused,section (".__clk_of_table_" __stringify(name)))) \
+__attribute__ ((unused,section (".__clk_of_table"))) \
 	= { .compatible = compat, .data = fn }
 
 #if defined(CONFIG_OFTREE) && defined(CONFIG_COMMON_CLK_OF_PROVIDER)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
