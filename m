Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1kHoBu-0003LP-La
 for barebox@lists.infradead.org; Mon, 14 Sep 2020 13:06:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 14 Sep 2020 15:06:40 +0200
Message-Id: <20200914130640.21416-4-s.hauer@pengutronix.de>
In-Reply-To: <20200914130640.21416-1-s.hauer@pengutronix.de>
References: <20200914130640.21416-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 4/4] fs: free unused dentries
To: Barebox List <barebox@lists.infradead.org>

So far we only ever freed dentries when the filesystem they are on is
unmounted. With this patch we actually trust reference counting and free
the dentries once the reference count hits zero.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/fs/fs.c b/fs/fs.c
index 5784e9c1f3..824c4e2806 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -1129,6 +1129,9 @@ void dput(struct dentry *dentry)
 		return;
 
 	dentry->d_count--;
+
+	if (!dentry->d_count)
+		dentry_kill(dentry);
 }
 
 struct dentry *dget(struct dentry *dentry)
@@ -2837,7 +2840,6 @@ int mount(const char *device, const char *fsname, const char *pathname,
 		fsdev->vfsmount.mountpoint->d_flags |= DCACHE_MOUNTED;
 	} else {
 		d_root = fsdev->sb.s_root;
-		path.dentry = d_root;
 		mnt_root = &fsdev->vfsmount;
 		fsdev->vfsmount.mountpoint = d_root;
 		fsdev->vfsmount.parent = &fsdev->vfsmount;
-- 
2.28.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
