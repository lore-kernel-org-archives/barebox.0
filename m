Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VLUU8-0005Os-8m
 for barebox@lists.infradead.org; Mon, 16 Sep 2013 08:48:45 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 16 Sep 2013 10:48:11 +0200
Message-Id: <1379321300-8085-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
References: <1379321300-8085-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] clk: of: introduce of_clk_src_simple_get
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c   | 7 +++++++
 include/linux/clk.h | 1 +
 2 files changed, 8 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 7ec3d93..5942e29 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -273,6 +273,13 @@ struct of_clk_provider {
 
 static LIST_HEAD(of_clk_providers);
 
+struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec,
+		void *data)
+{
+	return data;
+}
+EXPORT_SYMBOL_GPL(of_clk_src_simple_get);
+
 struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data)
 {
 	struct clk_onecell_data *clk_data = data;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 6aed1de..4778400 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -290,6 +290,7 @@ struct clk_onecell_data {
 	unsigned int clk_num;
 };
 struct clk *of_clk_src_onecell_get(struct of_phandle_args *clkspec, void *data);
+struct clk *of_clk_src_simple_get(struct of_phandle_args *clkspec, void *data);
 
 struct clk *of_clk_get(struct device_node *np, int index);
 struct clk *of_clk_get_by_name(struct device_node *np, const char *name);
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
