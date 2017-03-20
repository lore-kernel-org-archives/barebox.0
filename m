Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x241.google.com ([2a00:1450:4010:c07::241])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cprIi-0008EN-LY
 for barebox@lists.infradead.org; Mon, 20 Mar 2017 07:00:22 +0000
Received: by mail-lf0-x241.google.com with SMTP id y193so9280291lfd.1
 for <barebox@lists.infradead.org>; Mon, 20 Mar 2017 00:00:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Mon, 20 Mar 2017 09:59:53 +0300
Message-Id: <20170320065954.8330-3-antonynpavlov@gmail.com>
In-Reply-To: <20170320065954.8330-1-antonynpavlov@gmail.com>
References: <20170320065954.8330-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 2/3] clk: clk-gate-shared: fix "no previous prototype" warning
To: barebox@lists.infradead.org

The patch fixes these compiler's warnings:

  drivers/clk/clk-gate-shared.c:72:13: warning: no previous prototype for 'clk_gate_shared_alloc' [-Wmissing-prototypes]
   struct clk *clk_gate_shared_alloc(const char *name, const char *parent, const char *companion,
               ^
  drivers/clk/clk-gate-shared.c:89:6: warning: no previous prototype for 'clk_gate_shared_free' [-Wmissing-prototypes]
   void clk_gate_shared_free(struct clk *clk)
        ^

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clk/clk-gate-shared.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/clk-gate-shared.c b/drivers/clk/clk-gate-shared.c
index a95f940dd..c3b678a31 100644
--- a/drivers/clk/clk-gate-shared.c
+++ b/drivers/clk/clk-gate-shared.c
@@ -69,8 +69,8 @@ static struct clk_ops clk_gate_shared_ops = {
 	.is_enabled = clk_gate_shared_is_enabled,
 };
 
-struct clk *clk_gate_shared_alloc(const char *name, const char *parent, const char *companion,
-			   unsigned flags)
+static struct clk *clk_gate_shared_alloc(const char *name, const char *parent,
+				const char *companion, unsigned flags)
 {
 	struct clk_gate_shared *g = xzalloc(sizeof(*g));
 
@@ -86,7 +86,7 @@ struct clk *clk_gate_shared_alloc(const char *name, const char *parent, const ch
 	return &g->clk;
 }
 
-void clk_gate_shared_free(struct clk *clk)
+static void clk_gate_shared_free(struct clk *clk)
 {
 	struct clk_gate_shared *g = to_clk_gate_shared(clk);
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
