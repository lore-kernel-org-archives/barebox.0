Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from forward2m.mail.yandex.net ([37.140.138.2])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1YTFeb-0007eX-T3
 for barebox@lists.infradead.org; Wed, 04 Mar 2015 20:12:27 +0000
Received: from smtp3m.mail.yandex.net (smtp3m.mail.yandex.net [77.88.61.130])
 by forward2m.mail.yandex.net (Yandex) with ESMTP id 23AF15CA0679
 for <barebox@lists.infradead.org>; Wed,  4 Mar 2015 23:12:05 +0300 (MSK)
From: Andrey Panov <rockford@yandex.ru>
Date: Wed,  4 Mar 2015 23:11:35 +0300
Message-Id: <1425499906-32125-8-git-send-email-rockford@yandex.ru>
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
Subject: [PATCH v2 07/18] CLK: clk-divider: Respect CLK_DIVIDER_POWER_OF_TWO
 flag
To: barebox@lists.infradead.org

Signed-off-by: Andrey Panov <rockford@yandex.ru>
---
 drivers/clk/clk-divider.c | 9 +++++++++
 include/linux/clk.h       | 1 +
 2 files changed, 10 insertions(+)

diff --git a/drivers/clk/clk-divider.c b/drivers/clk/clk-divider.c
index cedcdda..646e5b0 100644
--- a/drivers/clk/clk-divider.c
+++ b/drivers/clk/clk-divider.c
@@ -19,6 +19,7 @@
 #include <malloc.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/log2.h>
 
 #define div_mask(d)	((1 << ((d)->width)) - 1)
 
@@ -26,6 +27,8 @@ static unsigned int _get_maxdiv(struct clk_divider *divider)
 {
 	if (divider->flags & CLK_DIVIDER_ONE_BASED)
 		return div_mask(divider);
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		return 1 << div_mask(divider);
 	return div_mask(divider) + 1;
 }
 
@@ -44,6 +47,8 @@ static unsigned int _get_div(struct clk_divider *divider, unsigned int val)
 {
 	if (divider->flags & CLK_DIVIDER_ONE_BASED)
 		return val;
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		return 1 << val;
 	if (divider->table)
 		return _get_table_div(divider->table, val);
 	return val + 1;
@@ -64,6 +69,8 @@ static unsigned int _get_val(struct clk_divider *divider, unsigned int div)
 {
 	if (divider->flags & CLK_DIVIDER_ONE_BASED)
 		return div;
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		return __ffs(div);
 	if (divider->table)
 		return  _get_table_val(divider->table, div);
 	return div - 1;
@@ -102,6 +109,8 @@ static bool _is_valid_table_div(const struct clk_div_table *table,
 
 static bool _is_valid_div(struct clk_divider *divider, unsigned int div)
 {
+	if (divider->flags & CLK_DIVIDER_POWER_OF_TWO)
+		return is_power_of_2(div);
 	if (divider->table)
 		return _is_valid_table_div(divider->table, div);
 	return true;
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 65d3e99..56890a0 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -248,6 +248,7 @@ struct clk_divider {
 	int table_size;
 };
 
+#define CLK_DIVIDER_POWER_OF_TWO	(1 << 1)
 #define CLK_DIVIDER_HIWORD_MASK		(1 << 3)
 
 #define CLK_MUX_HIWORD_MASK		(1 << 2)
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
