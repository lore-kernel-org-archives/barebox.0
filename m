Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pw0-f49.google.com ([209.85.160.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PeH3H-0000Cg-6m
	for barebox@lists.infradead.org; Sun, 16 Jan 2011 01:05:05 +0000
Received: by pwj8 with SMTP id 8so718141pwj.36
	for <barebox@lists.infradead.org>; Sat, 15 Jan 2011 17:05:01 -0800 (PST)
From: Marc Reilly <marc@cpdesign.com.au>
Date: Sun, 16 Jan 2011 12:04:18 +1100
Message-Id: <1295139858-9193-2-git-send-email-marc@cpdesign.com.au>
In-Reply-To: <20110114093937.GF24373@pengutronix.de>
References: <20110114093937.GF24373@pengutronix.de>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] devfs: new func make_cdev_name: allocate unique cdev name
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org

Signed-off-by: Marc Reilly <marc@cpdesign.com.au>
---
 fs/devfs.c       |   41 +++++++++++++++++++++++++++++++++++++++++
 include/driver.h |    1 +
 2 files changed, 42 insertions(+), 0 deletions(-)

diff --git a/fs/devfs.c b/fs/devfs.c
index 7019c8d..c1196d1 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -38,6 +38,47 @@
 
 static LIST_HEAD(cdev_list);
 
+/**
+ * Allocates a unique name for a cdev based on existing cdevs.
+ *
+ * @param template Starting point for the name of the device.
+ * The name can optionally contain a "%d" marker to designate where the
+ * device number should be inserted into the device string. If no marker
+ * is specified then one is appended.
+ *
+ * @param prefid Preferred device id. Any id less than zero will default
+ * to start from 0.
+ */
+char *make_cdev_name(const char *template, int prefid)
+{
+	char *name = 0;
+	char *temp;
+	int id;
+	struct cdev *cdev;
+
+	/* if there is no template for number, append one */
+	if (!strstr(template, "%d"))
+		temp = asprintf("%s%%d", template);
+	else
+		temp = strdup(template);
+
+	id = (prefid < 0) ? 0 : prefid;
+
+	do {
+		free(name);
+		name = asprintf(temp, id);
+
+		cdev = cdev_by_name(name);
+		if (cdev && (id == prefid))
+			printf("WARN: preferred device name %s already used\n",
+					name);
+		++id;
+	} while (cdev);
+
+	free(temp);
+	return name;
+}
+
 struct cdev *cdev_by_name(const char *filename)
 {
 	struct cdev *cdev;
diff --git a/include/driver.h b/include/driver.h
index b9edca0..1712637 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -313,6 +313,7 @@ struct cdev {
 
 int devfs_create(struct cdev *);
 int devfs_remove(struct cdev *);
+char *make_cdev_name(const char *template, int prefid);
 struct cdev *cdev_by_name(const char *filename);
 ssize_t cdev_read(struct cdev *cdev, void *buf, size_t count, ulong offset, ulong flags);
 ssize_t cdev_write(struct cdev *cdev, const void *buf, size_t count, ulong offset, ulong flags);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
