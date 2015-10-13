Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluNo-0006w7-LN
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 07:52:29 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Oct 2015 09:51:51 +0200
Message-Id: <1444722714-30445-2-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
References: <1444722714-30445-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/4] fs: devfs: Allow mounting only on /dev/
To: Barebox List <barebox@lists.infradead.org>

We have places in the code where we assume that devfs is mounted on
/dev/, so enforce this path to avoid surprises.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/fs/devfs.c b/fs/devfs.c
index c6db25c..5c96682 100644
--- a/fs/devfs.c
+++ b/fs/devfs.c
@@ -228,6 +228,13 @@ static int devfs_stat(struct device_d *_dev, const char *filename, struct stat *
 
 static int devfs_probe(struct device_d *dev)
 {
+	struct fs_device_d *fsdev = dev_to_fs_device(dev);
+
+	if (strcmp(fsdev->path, "/dev")) {
+		dev_err(dev, "devfs can only be mounted on /dev/\n");
+		return -EINVAL;
+	}
+
 	return 0;
 }
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
