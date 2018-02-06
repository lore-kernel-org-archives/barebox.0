Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.89 #1 (Red Hat Linux))
 id 1eixyj-0006Lb-KZ
 for barebox@lists.infradead.org; Tue, 06 Feb 2018 07:47:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue,  6 Feb 2018 08:47:30 +0100
Message-Id: <20180206074730.28084-2-s.hauer@pengutronix.de>
In-Reply-To: <20180206074730.28084-1-s.hauer@pengutronix.de>
References: <20180206074730.28084-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/2] state: Add 'init_from_defaults' parameter
To: Barebox List <barebox@lists.infradead.org>

The init_from_defaults parameter allows to detect if a state has been
initialized from default values, i.e. state_load failed.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 7 +++++++
 common/state/state.h | 2 ++
 2 files changed, 9 insertions(+)

diff --git a/common/state/state.c b/common/state/state.c
index 5a1a1af856..cb979328c1 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -99,6 +99,7 @@ static int state_do_load(struct state *state, enum state_flags flags)
 		goto out;
 	}
 
+	state->init_from_defaults = 0;
 	state->dirty = 0;
 
 out:
@@ -179,10 +180,14 @@ static struct state *state_new(const char *name)
 	state->dirty = 1;
 	dev_add_param_bool(&state->dev, "dirty", state_set_deny, NULL, &state->dirty,
 			   NULL);
+
 	state->save_on_shutdown = 1;
 	dev_add_param_bool(&state->dev, "save_on_shutdown", NULL, NULL,
 			   &state->save_on_shutdown, NULL);
 
+	dev_add_param_bool(&state->dev, "init_from_defaults", state_set_deny, NULL,
+			   &state->init_from_defaults, NULL);
+
 	list_add_tail(&state->list, &state_list);
 
 	return state;
@@ -643,6 +648,8 @@ struct state *state_new_from_node(struct device_node *node, char *path,
 		goto out_release_state;
 	}
 
+	state->init_from_defaults = 1;
+
 	ret = of_register_fixup(of_state_fixup, state);
 	if (ret) {
 		goto out_release_state;
diff --git a/common/state/state.h b/common/state/state.h
index fcc6b9f5cd..da1c6acaeb 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -107,7 +107,9 @@ struct state {
 	uint32_t magic;
 
 	struct list_head variables; /* Sorted list of variables */
+
 	unsigned int dirty;
+	unsigned int init_from_defaults;
 	unsigned int save_on_shutdown;
 
 	struct state_backend_format *format;
-- 
2.15.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
