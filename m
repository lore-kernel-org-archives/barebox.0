Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bmGSS-0000Zq-Eg
 for barebox@lists.infradead.org; Tue, 20 Sep 2016 08:31:17 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 20 Sep 2016 10:30:41 +0200
Message-Id: <1474360242-3512-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1474360242-3512-1-git-send-email-s.hauer@pengutronix.de>
References: <1474360242-3512-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/3] state: make locally used function static
To: Barebox List <barebox@lists.infradead.org>

state_set_dirty() is only used in one file, make it static.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.h           | 1 -
 common/state/state_variables.c | 2 +-
 2 files changed, 1 insertion(+), 2 deletions(-)

diff --git a/common/state/state.h b/common/state/state.h
index 855ba9d..bc6917d 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -190,7 +190,6 @@ struct state_string {
 	char raw[];
 };
 
-int state_set_dirty(struct param_d *p, void *priv);
 int state_from_node(struct state *state, struct device_node *node, bool create);
 struct device_node *state_to_node(struct state *state,
 				  struct device_node *parent,
diff --git a/common/state/state_variables.c b/common/state/state_variables.c
index 4f82462..6f2b1ae 100644
--- a/common/state/state_variables.c
+++ b/common/state/state_variables.c
@@ -34,7 +34,7 @@
  * @param priv
  * @return
  */
-int state_set_dirty(struct param_d *p, void *priv)
+static int state_set_dirty(struct param_d *p, void *priv)
 {
 	struct state *state = priv;
 
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
