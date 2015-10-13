Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZluO3-0006ym-KW
 for barebox@lists.infradead.org; Tue, 13 Oct 2015 07:52:44 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 13 Oct 2015 09:51:52 +0200
Message-Id: <1444722714-30445-3-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 2/4] fs: devfs: Allow mount path in cdev_open
To: Barebox List <barebox@lists.infradead.org>

When opening a cdev also allow a path beginning with /dev/ as some
users of cdev_open already open coded this behaviour.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/devfs-core.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/fs/devfs-core.c b/fs/devfs-core.c
index 62571fb..26f56d9 100644
--- a/fs/devfs-core.c
+++ b/fs/devfs-core.c
@@ -121,9 +121,13 @@ int cdev_do_open(struct cdev *cdev, unsigned long flags)
 
 struct cdev *cdev_open(const char *name, unsigned long flags)
 {
-	struct cdev *cdev = cdev_by_name(name);
+	struct cdev *cdev;
 	int ret;
 
+	if (strncmp(name, "/dev/", 5))
+		name += 5;
+
+	cdev = cdev_by_name(name);
 	if (!cdev)
 		return NULL;
 
-- 
2.6.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
