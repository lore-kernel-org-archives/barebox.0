Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZoSSE-0001CT-Rr
 for barebox@lists.infradead.org; Tue, 20 Oct 2015 08:39:37 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Tue, 20 Oct 2015 10:39:09 +0200
Message-Id: <1445330352-30153-6-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH v2 5/8] state: disable load command
To: barebox@lists.infradead.org
Cc: Enrico Jorns <ejo@pengutronix.de>

From: Enrico Jorns <ejo@pengutronix.de>

Explicitly loading environment is not required as it will be loaded if
available during device probing

Signed-off-by: Enrico Jorns <ejo@pengutronix.de>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 commands/state.c     | 19 +++++--------------
 common/state.c       | 45 ++++++++++++++++++---------------------------
 drivers/misc/state.c |  1 -
 include/state.h      |  1 -
 4 files changed, 23 insertions(+), 43 deletions(-)

diff --git a/commands/state.c b/commands/state.c
index 59d1eb850215..4b51759e3ecd 100644
--- a/commands/state.c
+++ b/commands/state.c
@@ -21,26 +21,20 @@ static int do_state(int argc, char *argv[])
 {
 	int opt, ret = 0;
 	struct state *state = NULL;
-	int do_save = 0, do_load = 0;
+	int do_save = 0;
 	const char *statename = "state";
 
-	while ((opt = getopt(argc, argv, "sl")) > 0) {
+	while ((opt = getopt(argc, argv, "s")) > 0) {
 		switch (opt) {
 		case 's':
 			do_save = 1;
 			break;
-		case 'l':
-			do_load = 1;
-			break;
 		default:
 			return COMMAND_ERROR_USAGE;
 		}
 	}
 
-	if (do_save && do_load)
-		return COMMAND_ERROR_USAGE;
-
-	if (!do_save && !do_load) {
+	if (!do_save) {
 		state_info();
 		return 0;
 	}
@@ -56,8 +50,6 @@ static int do_state(int argc, char *argv[])
 
 	if (do_save)
 		ret = state_save(state);
-	else if (do_load)
-		ret = state_load(state);
 
 	return ret;
 }
@@ -67,13 +59,12 @@ BAREBOX_CMD_HELP_TEXT("Usage: state [OPTIONS] [STATENAME]")
 BAREBOX_CMD_HELP_TEXT("")
 BAREBOX_CMD_HELP_TEXT("options:")
 BAREBOX_CMD_HELP_OPT ("-s", "save state")
-BAREBOX_CMD_HELP_OPT ("-l", "load state")
 BAREBOX_CMD_HELP_END
 
 BAREBOX_CMD_START(state)
 	.cmd		= do_state,
-	BAREBOX_CMD_DESC("load and save state information")
-	BAREBOX_CMD_OPTS("[-sl] [STATENAME]")
+	BAREBOX_CMD_DESC("save state information")
+	BAREBOX_CMD_OPTS("[-s] [STATENAME]")
 	BAREBOX_CMD_GROUP(CMD_GRP_MISC)
 	BAREBOX_CMD_HELP(cmd_state_help)
 BAREBOX_CMD_END
diff --git a/common/state.c b/common/state.c
index 117a6867597d..fdb5564af3bd 100644
--- a/common/state.c
+++ b/common/state.c
@@ -51,7 +51,6 @@ struct state {
 };
 
 struct state_backend {
-	int (*load)(struct state_backend *backend, struct state *state);
 	int (*save)(struct state_backend *backend, struct state *state);
 	const char *name;
 	const char *of_path;
@@ -1049,30 +1048,6 @@ int state_get_name(const struct state *state, char const **name)
 }
 
 /*
- * state_load - load a state from the backing store
- *
- * @state	The state instance to load
- */
-int state_load(struct state *state)
-{
-	int ret;
-
-	if (!state->backend)
-		return -ENOSYS;
-
-	ret = state->backend->load(state->backend, state);
-	if (ret) {
-		dev_warn(&state->dev, "load failed\n");
-		state->dirty = 1;
-	} else {
-		dev_info(&state->dev, "load successful\n");
-		state->dirty = 0;
-	}
-
-	return ret;
-}
-
-/*
  * state_save - save a state to the backing store
  *
  * @state	The state instance to save
@@ -1226,7 +1201,6 @@ int state_backend_dtb_file(struct state *state, const char *of_path, const char
 	backend_dtb = xzalloc(sizeof(*backend_dtb));
 	backend = &backend_dtb->backend;
 
-	backend->load = state_backend_dtb_load;
 	backend->save = state_backend_dtb_save;
 	backend->of_path = xstrdup(of_path);
 	backend->path = xstrdup(path);
@@ -1238,6 +1212,15 @@ int state_backend_dtb_file(struct state *state, const char *of_path, const char
 	if (!ret && !(meminfo.flags & MTD_NO_ERASE))
 		backend_dtb->need_erase = true;
 
+	ret = state_backend_dtb_load(backend, state);
+	if (ret) {
+		dev_warn(&state->dev, "load failed - using defaults\n");
+	} else {
+		dev_info(&state->dev, "load successful\n");
+		state->dirty = 0;
+	}
+
+	/* ignore return value of load() */
 	return 0;
 }
 
@@ -1548,7 +1531,6 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 	backend_raw = xzalloc(sizeof(*backend_raw));
 	backend = &backend_raw->backend;
 
-	backend->load = state_backend_raw_load;
 	backend->save = state_backend_raw_save;
 	backend->of_path = xstrdup(of_path);
 	backend->path = xstrdup(path);
@@ -1583,6 +1565,15 @@ int state_backend_raw_file(struct state *state, const char *of_path,
 		goto err;
 	}
 
+	ret = state_backend_raw_load(backend, state);
+	if (ret) {
+		dev_warn(&state->dev, "load failed - using defaults\n");
+	} else {
+		dev_info(&state->dev, "load successful\n");
+		state->dirty = 0;
+	}
+
+	/* ignore return value of load() */
 	return 0;
 err:
 	free(backend_raw);
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index e056b28f96c2..d519cb7fffdd 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -78,7 +78,6 @@ static int state_probe(struct device_d *dev)
 	dev_info(dev, "backend: %s, path: %s, of_path: %s\n", backend_type, path, of_path);
 	free(path);
 
-	state_load(state);
 	return 0;
 
  out_free:
diff --git a/include/state.h b/include/state.h
index 08c4e8654b9e..b3966fd99e79 100644
--- a/include/state.h
+++ b/include/state.h
@@ -17,7 +17,6 @@ struct state *state_by_name(const char *name);
 struct state *state_by_node(const struct device_node *node);
 int state_get_name(const struct state *state, char const **name);
 
-int state_load(struct state *state);
 int state_save(struct state *state);
 void state_info(void);
 
-- 
2.6.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
