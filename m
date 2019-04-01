Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hB4Zf-0001MH-2E
 for barebox@lists.infradead.org; Mon, 01 Apr 2019 21:34:36 +0000
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  1 Apr 2019 23:34:27 +0200
Message-Id: <20190401213427.6365-1-a.fatoum@pengutronix.de>
In-Reply-To: <20190401093106.4595-1-a.fatoum@pengutronix.de>
References: <20190401093106.4595-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v2 11/10] clk: at91: fix warning about missing const-safety
To: barebox@lists.infradead.org
Cc: Sam Ravnborg <sam@ravnborg.org>

compiling clk-generated.c results in:

warning: passing argument 1 of 'memcpy' discards 'const' qualifier from
pointer target type [-Wdiscarded-qualifiers]
  memcpy(gck->hw.parent_names, parent_names, parents_array_size);
         ~~~~~~~^~~~~~~~~~~~~

Avoid this by replacing the xzalloc+memcpy pair with xmemdup.
Zero-initialization of the buffer isn't necessary, because
memcpy spans the whole buffer.

Suggested-by: Sam Ravnborg <sam@ravnborg.org>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/at91/clk-generated.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/clk/at91/clk-generated.c b/drivers/clk/at91/clk-generated.c
index 60516ca10f36..396c35f3a7b3 100644
--- a/drivers/clk/at91/clk-generated.c
+++ b/drivers/clk/at91/clk-generated.c
@@ -181,8 +181,7 @@ at91_clk_register_generated(struct regmap *regmap,
 	gck->hw.ops = &generated_ops;
 
 	parents_array_size = num_parents * sizeof(gck->hw.parent_names[0]);
-	gck->hw.parent_names = xzalloc(parents_array_size);
-	memcpy(gck->hw.parent_names, parent_names, parents_array_size);
+	gck->hw.parent_names = xmemdup(parent_names, parents_array_size);
 	gck->hw.num_parents = num_parents;
 
 	/* gck->hw.flags = CLK_SET_RATE_GATE | CLK_SET_PARENT_GATE; */
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
