Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wm0-x241.google.com ([2a00:1450:400c:c09::241])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1fGnNB-0007nO-JR
 for barebox@lists.infradead.org; Thu, 10 May 2018 15:20:51 +0000
Received: by mail-wm0-x241.google.com with SMTP id a8-v6so4489376wmg.5
 for <barebox@lists.infradead.org>; Thu, 10 May 2018 08:20:42 -0700 (PDT)
From: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
Date: Thu, 10 May 2018 18:20:19 +0300
Message-Id: <20180510152019.9607-2-nikita.yoush@cogentembedded.com>
In-Reply-To: <20180510152019.9607-1-nikita.yoush@cogentembedded.com>
References: <20180510152019.9607-1-nikita.yoush@cogentembedded.com>
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
Subject: [PATCH 2/2] clk: support pinmux configuration in clock provider nodes
To: Sascha Hauer <sha@pengutronix.de>
Cc: Nikita Yushchenko <nikita.yoush@cogentembedded.com>, barebox@lists.infradead.org, Chris Healy <cphealy@gmail.com>

Some device trees use pinctrl-* settings inside device tree nodes for
clock providers.

Barebox does not threat clock providers (such as fixed-clock or
gpio-gate-clock) as conventional devices, thus setting default
pinctrl configuration in driver binding code does not happen for
clock providers.

This patch adds setting default pinctrl configuration to of_clk_init(),
just before calling clock provider's probe routine.

Signed-off-by: Nikita Yushchenko <nikita.yoush@cogentembedded.com>
---
 drivers/clk/clk.c | 9 ++++++---
 1 file changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 5bb147eee..24759b45b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -22,6 +22,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/clk/clk-conf.h>
+#include <pinctrl.h>
 
 static LIST_HEAD(clks);
 
@@ -596,10 +597,12 @@ int of_clk_init(struct device_node *root, const struct of_device_id *matches)
 		list_for_each_entry_safe(clk_provider, next,
 					 &clk_provider_list, node) {
 
-			if (force || parent_ready(clk_provider->np)) {
+			struct device_node *np = clk_provider->np;
+			if (force || parent_ready(np)) {
 
-				clk_provider->clk_init_cb(clk_provider->np);
-				of_clk_set_defaults(clk_provider->np, true);
+				of_pinctrl_select_state_default(np);
+				clk_provider->clk_init_cb(np);
+				of_clk_set_defaults(np, true);
 
 				list_del(&clk_provider->node);
 				free(clk_provider);
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
