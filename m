Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail1.bemta14.messagelabs.com ([193.109.254.111])
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZC0yC-0002on-Tf
 for barebox@lists.infradead.org; Mon, 06 Jul 2015 07:37:42 +0000
From: Herve Codina <Herve.CODINA@celad.com>
Date: Mon, 6 Jul 2015 09:36:44 +0200
Message-ID: <1436168207-6433-3-git-send-email-Herve.CODINA@celad.com>
In-Reply-To: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
References: <1436168207-6433-1-git-send-email-Herve.CODINA@celad.com>
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
Subject: [PATCH 2/4] exitcall: move device_shutdown to exitcall infrastructure
To: barebox@lists.infradead.org
Cc: Herve Codina <Herve.CODINA@celad.com>

Signed-off-by: Herve Codina <Herve.CODINA@celad.com>
---
 common/startup.c      |    1 -
 drivers/base/driver.c |    3 ++-
 include/driver.h      |    5 -----
 3 files changed, 2 insertions(+), 7 deletions(-)

diff --git a/common/startup.c b/common/startup.c
index 676e435..e9ab248 100644
--- a/common/startup.c
+++ b/common/startup.c
@@ -151,7 +151,6 @@ void shutdown_barebox(void)
 		(*exitcall)();
 	}
 	
-	devices_shutdown();
 #ifdef ARCH_SHUTDOWN
 	arch_shutdown();
 #endif
diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 338bea1..943deb4 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -459,7 +459,7 @@ const char *dev_id(const struct device_d *dev)
 	return buf;
 }
 
-void devices_shutdown(void)
+static void devices_shutdown(void)
 {
 	struct device_d *dev;
 
@@ -468,6 +468,7 @@ void devices_shutdown(void)
 			dev->bus->remove(dev);
 	}
 }
+devshutdown_exitcall(devices_shutdown);
 
 int dev_get_drvdata(struct device_d *dev, const void **data)
 {
diff --git a/include/driver.h b/include/driver.h
index d0cdcc9..d862ed0 100644
--- a/include/driver.h
+++ b/include/driver.h
@@ -339,11 +339,6 @@ int mem_memmap(struct cdev *cdev, void **map, int flags);
 /* Use this if you have nothing to do in your drivers probe function */
 int dummy_probe(struct device_d *);
 
-/* Iterate over all activated devices (i.e. the ones with drivers and shut
- * them down.
- */
-void devices_shutdown(void);
-
 int generic_memmap_ro(struct cdev *dev, void **map, int flags);
 int generic_memmap_rw(struct cdev *dev, void **map, int flags);
 
-- 
1.7.9.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
