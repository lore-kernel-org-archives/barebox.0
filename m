Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-fx0-f49.google.com ([209.85.161.49])
	by canuck.infradead.org with esmtp (Exim 4.72 #1 (Red Hat Linux))
	id 1PJ4WF-0005au-NL
	for barebox@lists.infradead.org; Thu, 18 Nov 2010 13:27:20 +0000
Received: by fxm1 with SMTP id 1so1559340fxm.36
	for <barebox@lists.infradead.org>; Thu, 18 Nov 2010 05:27:18 -0800 (PST)
From: Marek Belisko <marek.belisko@open-nandra.com>
Date: Thu, 18 Nov 2010 14:29:28 +0100
Message-Id: <1290086971-5467-3-git-send-email-marek.belisko@open-nandra.com>
In-Reply-To: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
References: <1290086971-5467-1-git-send-email-marek.belisko@open-nandra.com>
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
Subject: [PATCH 2/5] fs: Fix sparse warning.
To: barebox@lists.infradead.org
Cc: Marek Belisko <marek.belisko@open-nandra.com>

Patch fix following sparse warning:
fs/fs.c:757:28: warning: dubious: !x & y

Signed-off-by: Marek Belisko <marek.belisko@open-nandra.com>
---
 fs/fs.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/fs/fs.c b/fs/fs.c
index 3b5f284..7d8dea7 100644
--- a/fs/fs.c
+++ b/fs/fs.c
@@ -754,7 +754,7 @@ int mount(const char *device, const char *fsname, const char *_path)
 	}
 
 	fsdev = xzalloc(sizeof(struct fs_device_d));
-	if (!fs_drv->flags & FS_DRIVER_NO_DEV) {
+	if (!(fs_drv->flags & FS_DRIVER_NO_DEV)) {
 		fsdev->backingstore = strdup(device);
 		if (!device) {
 			printf("need a device for driver %s\n", fsname);
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
