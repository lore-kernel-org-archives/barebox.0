Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1RSlje-00051v-AD
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 08:29:49 +0000
Received: from dude.hi.pengutronix.de ([2001:6f8:1178:2:21e:67ff:fe11:9c5c])
 by metis.ext.pengutronix.de with esmtp (Exim 4.72)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0007U5-4b
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
Received: from jbe by dude.hi.pengutronix.de with local (Exim 4.77)
 (envelope-from <jbe@pengutronix.de>) id 1RSljQ-0003Se-2l
 for barebox@lists.infradead.org; Tue, 22 Nov 2011 09:29:32 +0100
From: Juergen Beisert <jbe@pengutronix.de>
Date: Tue, 22 Nov 2011 09:29:16 +0100
Message-Id: <1321950567-13261-3-git-send-email-jbe@pengutronix.de>
In-Reply-To: <1321950567-13261-1-git-send-email-jbe@pengutronix.de>
References: <1321950567-13261-1-git-send-email-jbe@pengutronix.de>
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
Subject: [PATCH 02/13] Create a unique cdev number for on demand devices
To: barebox@lists.infradead.org

For disk like devices attached to MCI, ATA or USB it depends on the order they
will be recognized. So an unique number for all disk like devices is required.

Signed-off-by: Juergen Beisert <jbe@pengutronix.de>
---
 fs/devfs-core.c  |   14 ++++++++++++++
 include/driver.h |    1 +
 2 files changed, 15 insertions(+), 0 deletions(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 519e18e..89704b1 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -40,6 +40,20 @@ struct cdev *cdev_by_name(const char *filename)
 	return NULL;
 }
 
+int cdev_find_free_number(const char *basename)
+{
+	int i;
+	char fname[100];
+
+	for (i = 0; i < 1000; i++) {
+		snprintf(fname, sizeof(fname), "%s%d", basename, i);
+		if (cdev_by_name(fname) == NULL)
+			return i;
+	}
+
+	return -1;
+}
+
 struct cdev *cdev_open(const char *name, unsigned long flags)
 {
 	struct cdev *cdev = cdev_by_name(name);
diff --git a/include/driver.h b/include/driver.h
index 80de0c8..99b33d0 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -394,6 +394,7 @@ struct cdev {
 
 int devfs_create(struct cdev *);
 int devfs_remove(struct cdev *);
+int cdev_find_free_number(const char *);
 struct cdev *cdev_by_name(const char *filename);
 struct cdev *cdev_open(const char *name, unsigned long flags);
 void cdev_close(struct cdev *cdev);
-- 
1.7.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
