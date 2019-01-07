Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1ggW87-0005wC-8m
 for barebox@lists.infradead.org; Mon, 07 Jan 2019 14:43:52 +0000
From: Roland Hieber <rhi@pengutronix.de>
Date: Mon,  7 Jan 2019 15:43:33 +0100
Message-Id: <20190107144333.17791-1-rhi@pengutronix.de>
In-Reply-To: <20190104151644.12393-1-rhi@pengutronix.de>
References: <20190104151644.12393-1-rhi@pengutronix.de>
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
Subject: [PATCH] common: state: fix another alignment
To: barebox@lists.infradead.org
Cc: Roland Hieber <rhi@pengutronix.de>

Fixes: 7126dffd0be ("common: state: Add variable_type to state_variable")
Fixes: 6096a0cfa4a ("common: state: fix alignment")
Signed-off-by: Roland Hieber <rhi@pengutronix.de>
---
 common/state/state_variables.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 50cffba700..6a00c82203 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -102,7 +102,7 @@ static int state_uint8_set(struct param_d *p, void *priv)
 static struct state_variable *state_uint8_create(struct state *state,
 						 const char *name,
 						 struct device_node *node,
-					      const struct variable_type *vtype)
+						 const struct variable_type *vtype)
 {
 	struct state_uint32 *su32;
 	struct param_d *param;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
