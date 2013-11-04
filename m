Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1VdKm1-0004Pp-RI
 for barebox@lists.infradead.org; Mon, 04 Nov 2013 14:05:01 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon,  4 Nov 2013 15:04:23 +0100
Message-Id: <1383573870-11325-5-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 04/11] blspec: Allow to boot partitions
To: barebox@lists.infradead.org

Instead of only allowing complete devices we now also allow single
partitions to look for bootloader spec entries.

Normally the bootloader spec defines a way to find a partition containing /boot
on a device.  On embedded systems it's often useful instead to have only a
single partition image which contains both the kernel and the root filesystems.
This partition image may be written to the device multiple times. With this
patch they can be booted with 'boot emmc0.<partno>'

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/common/blspec.c b/common/blspec.c
index 8ae09a2..bf833da 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -369,9 +369,26 @@ int blspec_scan_device(struct blspec *blspec, struct device_d *dev)
 int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 {
 	struct device_d *dev;
+	struct cdev *cdev;
+	const char *colon;
 
 	pr_debug("%s: %s\n", __func__, devname);
 
+	colon = strchr(devname, '.');
+	if (colon) {
+		char *name = xstrdup(devname);
+		*strchr(name, '.') = 0;
+		device_detect_by_name(name);
+		free(name);
+	}
+
+	cdev = cdev_by_name(devname);
+	if (cdev) {
+		int ret = blspec_scan_cdev(blspec, cdev);
+		if (!ret)
+			return 0;
+	}
+
 	dev = get_device_by_name(devname);
 	if (!dev)
 		return -ENODEV;
-- 
1.8.4.rc3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
