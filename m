Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKlx-0004P6-0G
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:04:53 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:21 +0100
Message-Id: <1383573870-11325-3-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
References: <1383573870-11325-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/11] blspec: Push device_detect into blspec_scan_device
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index a564602..dd8ec4b 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -317,6 +317,8 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 
 	pr_debug("%s: %s\n", __func__, dev_name(dev));
 
+	device_detect(dev);
+
 	list_for_each_entry(cdev, &dev->cdevs, devices_list) {
 		/*
 		 * If the OS is installed on a disk with MBR disk label, and a
@@ -374,8 +376,6 @@ int blspec_scan_hwdevice(struct blspec *blspec, const char *devname)
 	if (!dev)
 		return -ENODEV;
 
-	device_detect(dev);
-
 	blspec_scan_device(blspec, dev);
 
 	return 0;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
