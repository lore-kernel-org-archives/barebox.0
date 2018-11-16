Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mout.gmx.net ([212.227.17.22])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gNb5V-0007AU-Hx
 for barebox@lists.infradead.org; Fri, 16 Nov 2018 10:10:58 +0000
From: Oleksij Rempel <linux@rempel-privat.de>
Date: Fri, 16 Nov 2018 11:10:31 +0100
Message-Id: <20181116101032.3358-4-linux@rempel-privat.de>
In-Reply-To: <20181116101032.3358-1-linux@rempel-privat.de>
References: <20181116101032.3358-1-linux@rempel-privat.de>
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
Subject: [PATCH v2 3/4] clk: imx: cpu: avoid use after free on error
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <linux@rempel-privat.de>

Signed-off-by: Oleksij Rempel <linux@rempel-privat.de>
---
 drivers/clk/imx/clk-cpu.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/clk/imx/clk-cpu.c b/drivers/clk/imx/clk-cpu.c
index 5ac0ed178..473500131 100644
--- a/drivers/clk/imx/clk-cpu.c
+++ b/drivers/clk/imx/clk-cpu.c
@@ -111,8 +111,10 @@ struct clk *imx_clk_cpu(const char *name, const char *parent_name,
 	cpu->clk.num_parents = 1;
 
 	ret = clk_register(&cpu->clk);
-	if (ret)
+	if (ret) {
 		free(cpu);
+		return NULL;
+	}
 
 	return &cpu->clk;
 }
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
