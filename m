Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoSSE-0001CQ-Rp
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 08:39:37 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 20 Oct 2015 10:39:08 +0200
Message-Id: <1445330352-30153-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
References: <1445330352-30153-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 4/8] state: use name of device node as name if alias is not
 available
To: barebox@lists.infradead.org

Wihtout this patch, when using more than one state device an alias is
mandatory, otherwise the there will be two state devices with the name state.

This patch fixes the limitation by using the device node's name if no alias is
defined.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/misc/state.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 4cda55b6efc6..e056b28f96c2 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -36,7 +36,7 @@ static int state_probe(struct device_d *dev)
 
 	alias = of_alias_get(np);
 	if (!alias)
-		alias = "state";
+		alias = np->name;
 
 	state = state_new_from_node(alias, np);
 	if (IS_ERR(state))
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
