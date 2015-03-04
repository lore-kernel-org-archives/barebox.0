Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward1m.mail.yandex.net ([2a02:6b8:0:2519::3:10])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFew-0007rl-J4
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:47 +0000
Received: from smtp3m.mail.yandex.net (smtp3m.mail.yandex.net [77.88.61.130])
 by forward1m.mail.yandex.net (Yandex) with ESMTP id 4A07B1221658
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 23:12:04 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:33 +0300
Message-Id: <1425499906-32125-6-git-send-email-rockford@yandex.ru>
In-Reply-To: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
References: <1425499906-32125-1-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 05/18] CLK: clk-divider: Respect CLK_DIVIDER_HIWORD_MASK
 flag
To: barebox@lists.infradead.org

It is required for Rockchip SoCs where clock settings registers have
write-enable mask in high word.

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/clk-divider.c | 4 ++++
 include/linux/clk.h       | 2 ++
 2 files changed, 6 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index 506a966..eb48334 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -197,6 +197,10 @@ static int clk_divider_set_rate(struct clk *clk, unsigned long rate,
 	val = readl(divider->reg);
 	val &= ~(div_mask(divider) << divider->shift);
 	val |= value << divider->shift;
+
+	if (clk->flags & CLK_DIVIDER_HIWORD_MASK)
+		val |= div_mask(divider) << (divider->shift + 16);
+
 	writel(val, divider->reg);
 
 	return 0;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 89cb44e..258bbe3 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -248,6 +248,8 @@ struct clk_divider {
 	int table_size;
 };
 
+#define CLK_DIVIDER_HIWORD_MASK		(1 << 3)
+
 #define CLK_MUX_HIWORD_MASK		(1 << 2)
 
 extern struct clk_ops clk_divider_ops;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
