Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1aHCuZ-0006AS-VX
 for barebox@lists.infradead.ORg; Thu, 07 Jan 2016 15:55:41 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Thu,  7 Jan 2016 16:55:16 +0100
Message-Id: <1452182116-15521-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH] fs: automount: Make automountpoints persistent
To: Barebox List <barebox@lists.infradead.org>

Do not remove the automountpoints when they are mounted. This way
they can be reused when they have been unmounted.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 4983fc7..ace72f7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -346,6 +346,9 @@ static void automount_mount(const char *path, int instat)
 
 	in_automount++;
 
+	if (fs_dev_root != get_fsdevice_by_path(path))
+		goto out;
+
 	list_for_each_entry(am, &automount_list, list) {
 		int len_path = strlen(path);
 		int len_am_path = strlen(am->path);
@@ -377,12 +380,10 @@ static void automount_mount(const char *path, int instat)
 		if (ret)
 			printf("running automount command '%s' failed\n",
 					am->cmd);
-		else
-			automount_remove(am->path);
 
 		break;
 	}
-
+out:
 	in_automount--;
 }
 
-- 
2.6.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
