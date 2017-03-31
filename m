Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1ctqbb-0005fd-It
 for barebox@lists.infradead.org; Fri, 31 Mar 2017 07:04:20 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 31 Mar 2017 09:03:44 +0200
Message-Id: <20170331070346.26878-41-s.hauer@pengutronix.de>
In-Reply-To: <20170331070346.26878-1-s.hauer@pengutronix.de>
References: <20170331070346.26878-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 40/42] state: Do not load state during state_new_from_node
To: Barebox List <barebox@lists.infradead.org>

The caller of state_new_from_node() may have it's own ideas what to
do when loading the state fails, so do not load it in the initialization
function, but instead let the caller do it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 5 -----
 drivers/misc/state.c | 6 ++++++
 2 files changed, 6 insertions(+), 5 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index 1232ff3207..bdeda2e5a1 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -632,11 +632,6 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		goto out_release_state;
 	}
 
-	ret = state_load(state);
-	if (ret) {
-		dev_warn(&state->dev, "Failed to load persistent state, continuing with defaults, %d\n", ret);
-	}
-
 	dev_info(&state->dev, "New state registered '%s'\n", alias);
 
 	return state;
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index b43aee60fe..98ed42e757 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -26,6 +26,7 @@ static int state_probe(struct device_d *dev)
 	struct device_node *np = dev->device_node;
 	struct state *state;
 	bool readonly = false;
+	int ret;
 
 	state = state_new_from_node(np, NULL, 0, 0, readonly);
 	if (IS_ERR(state)) {
@@ -35,6 +36,11 @@ static int state_probe(struct device_d *dev)
 		return ret;
 	}
 
+	ret = state_load(state);
+	if (ret)
+		dev_warn(dev, "Failed to load persistent state, continuing with defaults, %d\n",
+			 ret);
+
 	return 0;
 }
 
-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
