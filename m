Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1Q8Co7-0000s1-AA
	for barebox@lists.infradead.org; Fri, 08 Apr 2011 14:37:15 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri,  8 Apr 2011 16:37:02 +0200
Message-Id: <1302273422-6987-17-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 16/16] fs mount: fix error handling
To: barebox@lists.infradead.org

If we register a device we have to unregister it later when
the driver did not accept the device. Also, do not forget to
free the backingstore string.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 fs/fs.c |   19 +++++++++++++------
 1 files changed, 13 insertions(+), 6 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 8f43481..e71d5a2 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -780,8 +780,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 		if (!device) {
 			printf("need a device for driver %s\n", fsname);
 			errno = -ENODEV;
-			free(fsdev);
-			goto out;
+			goto out1;
 		}
 	}
 	safe_strncpy(fsdev->dev.name, fsname, MAX_DRIVER_NAME);
@@ -789,16 +788,14 @@ int mount(const char *device, const char *fsname, const char *_path)
 	fsdev->dev.id = get_free_deviceid(fsdev->dev.name);
 
 	if ((ret = register_device(&fsdev->dev))) {
-		free(fsdev);
 		errno = ret;
-		goto out;
+		goto out1;
 	}
 
 	if (!fsdev->dev.driver) {
 		/* driver didn't accept the device. Bail out */
-		free(fsdev);
 		errno = -EINVAL;
-		goto out;
+		goto out2;
 	}
 
 	if (parent_device)
@@ -822,6 +819,16 @@ int mount(const char *device, const char *fsname, const char *_path)
 		e->next = entry;
 	}
 	errno = 0;
+
+	free(path);
+	return 0;
+
+out2:
+	unregister_device(&fsdev->dev);
+out1:
+	if (fsdev->backingstore)
+		free(fsdev->backingstore);
+	free(fsdev);
 out:
 	free(path);
 	return errno;
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
