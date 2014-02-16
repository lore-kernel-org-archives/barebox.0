Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005y2-U1
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:34 +0400
Message-Id: <1392535477-21275-5-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 5/8] drivers/clk/clk-gate.c: Fix sparse warning
To: barebox@lists.infradead.org

drivers/clk/clk-gate.c:79:16: warning: symbol 'clk_gate_ops' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-gate.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-gate.c b/drivers/clk/clk-gate.c
index f33effd..baec855 100644
--- a/drivers/clk/clk-gate.c
+++ b/drivers/clk/clk-gate.c
@@ -76,7 +76,7 @@ static int clk_gate_is_enabled(struct clk *clk)
 		return g->flags & CLK_GATE_INVERTED ? 1 : 0;
 }
 
-struct clk_ops clk_gate_ops = {
+static struct clk_ops clk_gate_ops = {
 	.enable = clk_gate_enable,
 	.disable = clk_gate_disable,
 	.is_enabled = clk_gate_is_enabled,
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
