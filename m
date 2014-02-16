Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005y3-Tu
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:35 +0400
Message-Id: <1392535477-21275-6-git-send-email-shc_work@mail.ru>
In-Reply-To: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
References: <1392535477-21275-1-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 6/8] drivers/clk/clk-divider-table.c: Fix sparse warning
To: barebox@lists.infradead.org

drivers/clk/clk-divider-table.c:81:16: warning: symbol 'clk_divider_table_ops' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-divider-table.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-divider-table.c b/drivers/clk/clk-divider-table.c
index 204e24d..fd2d3fc 100644
--- a/drivers/clk/clk-divider-table.c
+++ b/drivers/clk/clk-divider-table.c
@@ -78,7 +78,7 @@ static unsigned long clk_divider_recalc_rate(struct clk *clk,
 	return parent_rate / div->table[val].div;
 }
 
-struct clk_ops clk_divider_table_ops = {
+static struct clk_ops clk_divider_table_ops = {
 	.set_rate = clk_divider_set_rate,
 	.recalc_rate = clk_divider_recalc_rate,
 };
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
