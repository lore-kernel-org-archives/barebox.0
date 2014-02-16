Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005xz-Tr
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:19 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:32 +0400
Message-Id: <1392535477-21275-3-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 3/8] drivers/clk/clk-fixed-factor.c: Fix sparse warning
To: barebox@lists.infradead.org

drivers/clk/clk-fixed-factor.c:38:16: warning: symbol 'clk_fixed_factor_ops' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-fixed-factor.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-fixed-factor.c b/drivers/clk/clk-fixed-factor.c
index 52e7c16..f0ecbd3 100644
--- a/drivers/clk/clk-fixed-factor.c
+++ b/drivers/clk/clk-fixed-factor.c
@@ -35,7 +35,7 @@ static unsigned long clk_fixed_factor_recalc_rate(struct clk *clk,
 	return (parent_rate / f->div) * f->mult;
 }
 
-struct clk_ops clk_fixed_factor_ops = {
+static struct clk_ops clk_fixed_factor_ops = {
 	.recalc_rate = clk_fixed_factor_recalc_rate,
 };
 
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
