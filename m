Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VQDsT-0002M7-Vz
 for barebox@lists.infradead.org; Sun, 29 Sep 2013 10:05:27 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Sun, 29 Sep 2013 12:04:54 +0200
Message-Id: <1380449100-6295-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
References: <1380449100-6295-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/9] mount: print backingstore instead of dev_name
To: barebox@lists.infradead.org

When printing the devices on which a path is mounted the backingstore is
the interesting thing, not dev_name.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 commands/mount.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/commands/mount.c b/commands/mount.c
index be26af8..595145a 100644
--- a/commands/mount.c
+++ b/commands/mount.c
@@ -39,7 +39,7 @@ static int do_mount(int argc, char *argv[])
 	if (argc == 1) {
 		for_each_fs_device(fsdev) {
 			printf("%s on %s type %s\n",
-				fsdev->parent_device ? dev_name(fsdev->parent_device) : "none",
+				fsdev->backingstore ? fsdev->backingstore : "none",
 				fsdev->path,
 				fsdev->dev.name);
 		}
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
