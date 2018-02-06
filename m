Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eixyj-0006LZ-KZ
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 07:47:51 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 08:47:29 +0100
Message-Id: <20180206074730.28084-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] state: refuse to set dirty parameter via setenv
To: Barebox List <barebox@lists.infradead.org>

The dirty parameter is readonly, so refuse to set it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/common/state/state.c b/common/state/state.c
index 6399bd3736..5a1a1af856 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -153,6 +153,11 @@ void state_backend_set_readonly(struct state *state)
 	state_storage_set_readonly(&state->storage);
 }
 
+static int state_set_deny(struct param_d *p, void *priv)
+{
+	return -EROFS;
+}
+
 static struct state *state_new(const char *name)
 {
 	struct state *state;
@@ -172,7 +177,7 @@ static struct state *state_new(const char *name)
 	}
 
 	state->dirty = 1;
-	dev_add_param_bool(&state->dev, "dirty", NULL, NULL, &state->dirty,
+	dev_add_param_bool(&state->dev, "dirty", state_set_deny, NULL, &state->dirty,
 			   NULL);
 	state->save_on_shutdown = 1;
 	dev_add_param_bool(&state->dev, "save_on_shutdown", NULL, NULL,
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
