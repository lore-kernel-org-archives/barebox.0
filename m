Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from vs81.iboxed.net ([185.82.85.146])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1cs9wR-0000ab-Rg
 for barebox@lists.infradead.org; Sun, 26 Mar 2017 15:18:54 +0000
From: Alexander Kurz <akurz@blala.de>
Date: Sun, 26 Mar 2017 17:17:47 +0200
Message-Id: <1490541467-15401-1-git-send-email-akurz@blala.de>
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
Subject: [PATCH] console: fix usbserial re-connect
To: Bastian Stender <bst@pengutronix.de>
Cc: barebox@lists.infradead.org, Alexander Kurz <akurz@blala.de>

With commit b4f55fcf355a ("console: expose consoles in devfs") consoles
got inserted, but never removed from devfs.
When dealing with USB consoles, barebox should be prepared for devices
spontaneously appering and disappering again (user disconnects and re-
connects the cable). If the devfs entry is not removed upon disconnect,
barebox will raise an error "device creation failed with File exists"
when the cable is connected again.

Remove devfs entries when consoles are de-registered.
Also change the error message, it's the devfs entry.

Signed-off-by: Alexander Kurz <akurz@blala.de>
---
 common/console.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/common/console.c b/common/console.c
index 4127e76..74fb684 100644
--- a/common/console.c
+++ b/common/console.c
@@ -375,7 +375,7 @@ int console_register(struct console_device *newcdev)
 	ret = devfs_create(&newcdev->devfs);
 
 	if (ret) {
-		pr_err("device creation failed with %s\n", strerror(-ret));
+		pr_err("devfs entry creation failed: %s\n", strerror(-ret));
 		return ret;
 	}
 
@@ -388,6 +388,8 @@ int console_unregister(struct console_device *cdev)
 	struct device_d *dev = &cdev->class_dev;
 	int status;
 
+	devfs_remove(&cdev->devfs);
+
 	list_del(&cdev->list);
 	if (list_empty(&console_list))
 		initialized = CONSOLE_UNINITIALIZED;
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
