Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1Rxa8g-0004YK-NB
 for barebox@lists.infradead.org; Wed, 15 Feb 2012 08:23:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 15 Feb 2012 09:22:44 +0100
Message-Id: <1329294165-12089-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
References: <1329294165-12089-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/12] fs: allow to mount on subdirectories
To: barebox@lists.infradead.org

Since get_mtab_entry_by_path() is a bit more flexible now
we no longer have to force the user to mount on the root
directory only. Instead, we can allow to mount on subdirectories
aswell. Nested mounts are still not possible though.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   13 +++++++------
 1 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 637a01f..3923ec6 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -778,13 +778,14 @@ int mount(const char *device, const char *fsname, const char *_path)
 
 	debug("mount: %s on %s type %s\n", device, path, fsname);
 
-	if (strchr(path + 1, '/')) {
-		printf("mounting allowed on first directory level only\n");
-		errno = -EBUSY;
-		goto err_free_path;
-	}
-
 	if (mtab_root) {
+		struct mtab_entry *entry;
+		entry = get_mtab_entry_by_path(path);
+		if (entry != mtab_root) {
+			printf("sorry, no nested mounts\n");
+			errno = -EBUSY;
+			goto err_free_path;
+		}
 		if (path_check_prereq(path, S_IFDIR))
 			goto err_free_path;
 	} else {
-- 
1.7.9


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
