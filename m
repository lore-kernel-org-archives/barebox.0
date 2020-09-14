Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoBv-0003LY-8U
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:06:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Sep 2020 15:06:37 +0200
Message-Id: <20200914130640.21416-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/4] fs: don't free device in remove callback
To: Barebox List <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <ahmad@a3f.at>

From: Ahmad Fatoum <ahmad@a3f.at>

The probe doesn't allocate the device, so remove shouldn't free it
either. This fixes a use-after-free on barebox shutdown:
Iterating over the list of devices requires that remove callbacks
don't remove the devices. This happened to work so far, because
apparently not much new allocations are going on during barebox
shutdown, but let's do it right.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 fs/fs.c | 11 +++++++++--
 1 file changed, 9 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index e04cadfe5d..30b835e265 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -679,7 +679,6 @@ static void fs_remove(struct device_d *dev)
 	mntput(fsdev->vfsmount.parent);
 
 	free(fsdev->backingstore);
-	free(fsdev);
 }
 
 struct bus_type fs_bus = {
@@ -759,10 +758,18 @@ static void init_super(struct super_block *sb)
 
 static int fsdev_umount(struct fs_device_d *fsdev)
 {
+	int ret;
+
 	if (fsdev->vfsmount.ref)
 		return -EBUSY;
 
-	return unregister_device(&fsdev->dev);
+	ret = unregister_device(&fsdev->dev);
+	if (ret)
+		return ret;
+
+	free(fsdev);
+
+	return 0;
 }
 
 /**
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
