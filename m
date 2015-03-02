Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward2h.mail.yandex.net ([2a02:6b8:0:f05::2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YSWrT-0005xw-8O
 for barebox@lists.infradead.org; Mon, 02 Mar 2015 20:22:46 +0000
Received: from smtp1h.mail.yandex.net (smtp1h.mail.yandex.net [84.201.187.144])
 by forward2h.mail.yandex.net (Yandex) with ESMTP id 035367014BD
 for <barebox@lists.infradead.org>; Mon,  2 Mar 2015 23:22:14 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Mon,  2 Mar 2015 23:21:48 +0300
Message-Id: <1425327722-28232-5-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
References: <1425327722-28232-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH 04/18] CLK: clk-mux: Respect CLK_MUX_HIWORD_MASK flag.
To: barebox@lists.infradead.org

It is required for Rockchip SoCs where clock settings registers have
write-enable mask in high word.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/clk-mux.c | 3 +++
 include/linux/clk.h   | 2 ++
 2 files changed, 5 insertions(+)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 4ce86f4..22e131f 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -45,6 +45,9 @@ static int clk_mux_set_parent(struct clk *clk, u8 idx)
 	val = readl(m->reg);
 	val &= ~(((1 << m->width) - 1) << m->shift);
 	val |= idx << m->shift;
+
+	if (clk->flags & CLK_MUX_HIWORD_MASK)
+		val |= ((1 << m->width) - 1) << (m->shift + 16);
 	writel(val, m->reg);
 
 	return 0;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index de2d4a5..89cb44e 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -248,6 +248,8 @@ struct clk_divider {
 	int table_size;
 };
 
+#define CLK_MUX_HIWORD_MASK		(1 << 2)
+
 extern struct clk_ops clk_divider_ops;
 
 struct clk *clk_divider(const char *name, const char *parent,
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
