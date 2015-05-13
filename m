Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1YsTes-0000Di-Hd
 for barebox@lists.infradead.org; Wed, 13 May 2015 10:13:02 +0000
From: Marc Kleine-Budde <mkl@pengutronix.de>
Date: Wed, 13 May 2015 12:12:30 +0200
Message-Id: <1431511952-32124-5-git-send-email-mkl@pengutronix.de>
In-Reply-To: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
References: <1431511952-32124-1-git-send-email-mkl@pengutronix.de>
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
Subject: [PATCH 5/7] state: backend: support phandle and of_path references
To: barebox@lists.infradead.org

This patch improves the backend property, it can be either a phandle or a
of_path. During probe() of the state driver the backend property is
dereferenced and the resulting of_path is saved in the state context. In a
later patch it will be used to generate a phandle reference to the backend
during DT fixup.

Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 common/state.c       |  9 ++++---
 drivers/misc/state.c | 70 ++++++++++++++++++++++++++++++++++++++++++----------
 include/state.h      |  7 +++---
 3 files changed, 67 insertions(+), 19 deletions(-)

diff --git a/common/state.c b/common/state.c
index 744a6f8250c4..d6060bb7dff4 100644
--- a/common/state.c
+++ b/common/state.c
@@ -54,6 +54,7 @@ struct state_backend {
 	int (*load)(struct state_backend *backend, struct state *state);
 	int (*save)(struct state_backend *backend, struct state *state);
 	const char *name;
+	const char *of_path;
 	const char *path;
 };
 
@@ -903,7 +904,7 @@ out:
  * @state	The state instance to work on
  * @path	The path where the state will be stored to
  */
-int state_backend_dtb_file(struct state *state, const char *path)
+int state_backend_dtb_file(struct state *state, const char *of_path, const char *path)
 {
 	struct state_backend_dtb *backend_dtb;
 	struct state_backend *backend;
@@ -918,6 +919,7 @@ int state_backend_dtb_file(struct state *state, const char *path)
 
 	backend->load = state_backend_dtb_load;
 	backend->save = state_backend_dtb_save;
+	backend->of_path = xstrdup(of_path);
 	backend->path = xstrdup(path);
 	backend->name = "dtb";
 
@@ -1133,8 +1135,8 @@ out_free:
  * device @size may be 0. The two copies are spread to different
  * eraseblocks if approriate for this device.
  */
-int state_backend_raw_file(struct state *state, const char *path, off_t offset,
-		size_t size)
+int state_backend_raw_file(struct state *state, const char *of_path,
+		const char *path, off_t offset, size_t size)
 {
 	struct state_backend_raw *backend_raw;
 	struct state_backend *backend;
@@ -1159,6 +1161,7 @@ int state_backend_raw_file(struct state *state, const char *path, off_t offset,
 
 	backend->load = state_backend_raw_load;
 	backend->save = state_backend_raw_save;
+	backend->of_path = xstrdup(of_path);
 	backend->path = xstrdup(path);
 	backend->name = "raw";
 
diff --git a/drivers/misc/state.c b/drivers/misc/state.c
index 3b07bb93d725..9e8a40255348 100644
--- a/drivers/misc/state.c
+++ b/drivers/misc/state.c
@@ -24,10 +24,12 @@
 static int state_probe(struct device_d *dev)
 {
 	struct device_node *np = dev->device_node;
+	struct device_node *partition_node;
 	struct state *state;
 	const char *alias;
 	const char *backend_type = NULL;
 	int ret;
+	const char *of_path;
 	char *path;
 
 	if (!np)
@@ -41,28 +43,70 @@ static int state_probe(struct device_d *dev)
 	if (IS_ERR(state))
 		return PTR_ERR(state);
 
-	ret = of_find_path(np, "backend", &path, 0);
-	if (ret)
-		return ret;
+	of_path = of_get_property(np, "backend", NULL);
+	if (!of_path) {
+		ret = -ENODEV;
+		goto out_release;
+	}
+
+	/* guess if of_path is a path, not a phandle */
+	if (of_path[0] == '/') {
+		ret = of_find_path(np, "backend", &path, 0);
+		if (ret)
+			goto out_release;
+	} else {
+		struct device_d *dev;
+		struct cdev *cdev;
+
+		partition_node = of_parse_phandle(np, "backend", 0);
+		if (!partition_node) {
+			ret = -ENODEV;
+			goto out_release;
+		}
+
+		dev = of_find_device_by_node(partition_node);
+		if (!list_is_singular(&dev->cdevs)) {
+			ret = -ENODEV;
+			goto out_release;
+		}
+
+		cdev = list_first_entry(&dev->cdevs, struct cdev, devices_list);
+		if (!cdev) {
+			ret = -ENODEV;
+			goto out_release;
+		}
 
-	dev_info(dev, "outpath: %s\n", path);
+		path = asprintf("/dev/%s", cdev->name);
+		of_path = partition_node->full_name;
+	}
 
 	ret = of_property_read_string(np, "backend-type", &backend_type);
-	if (ret)
-		return ret;
-	else if (!strcmp(backend_type, "raw"))
-		ret = state_backend_raw_file(state, path, 0, 0);
-	else if (!strcmp(backend_type, "dtb"))
-		ret = state_backend_dtb_file(state, path);
-	else
+	if (ret) {
+		goto out_free;
+	} else if (!strcmp(backend_type, "raw")) {
+		ret = state_backend_raw_file(state, of_path, path, 0, 0);
+	} else if (!strcmp(backend_type, "dtb")) {
+		ret = state_backend_dtb_file(state, of_path, path);
+	} else {
 		dev_warn(dev, "invalid backend type: %s\n", backend_type);
+		ret = -ENODEV;
+		goto out_free;
+	}
 
 	if (ret)
-		return ret;
+		goto out_free;
 
-	state_load(state);
+	dev_info(dev, "backend: %s, path: %s, of_path: %s\n", backend_type, path, of_path);
+	free(path);
 
+	state_load(state);
 	return 0;
+
+ out_free:
+	free(path);
+ out_release:
+	state_release(state);
+	return ret;
 }
 
 static __maybe_unused struct of_device_id state_ids[] = {
diff --git a/include/state.h b/include/state.h
index 116ec6301c1c..08c4e8654b9e 100644
--- a/include/state.h
+++ b/include/state.h
@@ -5,9 +5,10 @@
 
 struct state;
 
-int state_backend_dtb_file(struct state *state, const char *path);
-int state_backend_raw_file(struct state *state, const char *path,
-		off_t offset, size_t size);
+int state_backend_dtb_file(struct state *state, const char *of_path,
+		const char *path);
+int state_backend_raw_file(struct state *state, const char *of_path,
+		const char *path, off_t offset, size_t size);
 
 struct state *state_new_from_node(const char *name, struct device_node *node);
 void state_release(struct state *state);
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
