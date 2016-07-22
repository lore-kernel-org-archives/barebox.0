Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bQXx4-0001fs-E6
 for barebox@lists.infradead.org; Fri, 22 Jul 2016 10:45:06 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 22 Jul 2016 12:44:43 +0200
Message-Id: <1469184283-2966-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] state: Save on shutdown
To: Barebox List <barebox@lists.infradead.org>

The state framework is meant for storing persistent variables. To
make the state more persistent automatically save it on shutdown.
This is now the default behaviour, but can be disabled using a
'save_on_shutdown' variable attached to the state.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/state/state.c | 15 +++++++++++++++
 common/state/state.h |  1 +
 2 files changed, 16 insertions(+)

diff --git a/common/state/state.c b/common/state/state.c
index 3997f81..9b1d4ed 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -20,6 +20,7 @@
 #include <errno.h>
 #include <fs.h>
 #include <crc.h>
+#include <init.h>
 #include <linux/err.h>
 #include <linux/list.h>
 
@@ -54,6 +55,9 @@ static struct state *state_new(const char *name)
 	state->dirty = 1;
 	dev_add_param_bool(&state->dev, "dirty", NULL, NULL, &state->dirty,
 			   NULL);
+	state->save_on_shutdown = 1;
+	dev_add_param_bool(&state->dev, "save_on_shutdown", NULL, NULL,
+			   &state->save_on_shutdown, NULL);
 
 	list_add_tail(&state->list, &state_list);
 
@@ -571,3 +575,14 @@ void state_info(void)
 			printf("(no backend)\n");
 	}
 }
+
+static void state_shutdown(void)
+{
+	struct state *state;
+
+	list_for_each_entry(state, &state_list, list) {
+		if (state->save_on_shutdown)
+			state_save(state);
+	}
+}
+predevshutdown_exitcall(state_shutdown);
diff --git a/common/state/state.h b/common/state/state.h
index 7f9651a..32146ca 100644
--- a/common/state/state.h
+++ b/common/state/state.h
@@ -100,6 +100,7 @@ struct state {
 
 	struct list_head variables; /* Sorted list of variables */
 	unsigned int dirty;
+	unsigned int save_on_shutdown;
 
 	struct state_backend backend;
 };
-- 
2.8.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
