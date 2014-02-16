Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp14.mail.ru ([94.100.176.91])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WEw6G-0005y1-Ts
 for barebox@lists.infradead.org; Sun, 16 Feb 2014 07:25:21 +0000
From: Alexander Shiyan <shc_work@mail.ru>
Date: Sun, 16 Feb 2014 11:24:33 +0400
Message-Id: <1392535477-21275-4-git-send-email-shc_work@mail.ru>
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
Subject: [PATCH 4/8] drivers/clk/clk-mux.c: Fix sparse warning
To: barebox@lists.infradead.org

drivers/clk/clk-mux.c:53:16: warning: symbol 'clk_mux_ops' was not declared. Should it be static?

Signed-off-by: Alexander Shiyan <shc_work@mail.ru>
---
 drivers/clk/clk-mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/clk-mux.c b/drivers/clk/clk-mux.c
index 47efe12..b22bdd1 100644
--- a/drivers/clk/clk-mux.c
+++ b/drivers/clk/clk-mux.c
@@ -50,7 +50,7 @@ static int clk_mux_set_parent(struct clk *clk, u8 idx)
 	return 0;
 }
 
-struct clk_ops clk_mux_ops = {
+static struct clk_ops clk_mux_ops = {
 	.get_parent = clk_mux_get_parent,
 	.set_parent = clk_mux_set_parent,
 };
-- 
1.8.3.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
