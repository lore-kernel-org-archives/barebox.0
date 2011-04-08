Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co7-0000rw-5w
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:13 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:36:57 +0200
Message-Id: <1302273422-6987-12-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
References: <1302273422-6987-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 11/16] fs: use safe_strncpy instead of sprintf
To: barebox@lists.infradead.org

This is safe against string overflows.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |    5 +++--
 1 files changed, 3 insertions(+), 2 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 059f67a..8f43481 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -30,6 +30,7 @@
 #include <xfuncs.h>
 #include <init.h>
 #include <module.h>
+#include <libbb.h>
 
 void *read_file(const char *filename, size_t *size)
 {
@@ -783,7 +784,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 			goto out;
 		}
 	}
-	sprintf(fsdev->dev.name, "%s", fsname);
+	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
 	fsdev->dev.type_data = fsdev;
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
 
@@ -807,7 +808,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 
 	/* add mtab entry */
 	entry = &fsdev->mtab; 
-	sprintf(entry->path, "%s", path);
+	safe_strncpy(entry->path, path, PATH_MAX);
 	entry->dev = dev;
 	entry->parent_device = parent_device;
 	entry->next = NULL;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
