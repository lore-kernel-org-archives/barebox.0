Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z8O6l-0005gB-De
 for barebox@lists.infradead.org; Fri, 26 Jun 2015 07:31:34 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 26 Jun 2015 09:31:02 +0200
Message-Id: <1435303867-12889-4-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
References: <1435303867-12889-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 3/8] blspec: Use device_detect_by_name
To: Barebox List <barebox@lists.infradead.org>

device_detect_by_name will automatically separate by colons now,
we no longer have to do this in the blspec code.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/blspec.c | 9 +--------
 1 file changed, 1 insertion(+), 8 deletions(-)

diff --git a/common/blspec.c b/common/blspec.c
index 3506388..2429560 100644
--- a/common/blspec.c
+++ b/common/blspec.c
@@ -575,17 +575,10 @@ int blspec_scan_devicename(struct blspec *blspec, const char *devname)
 {
 	struct device_d *dev;
 	struct cdev *cdev;
-	const char *colon;
 
 	pr_debug("%s: %s\n", __func__, devname);
 
-	colon = strchr(devname, '.');
-	if (colon) {
-		char *name = xstrdup(devname);
-		*strchr(name, '.') = 0;
-		device_detect_by_name(name);
-		free(name);
-	}
+	device_detect_by_name(devname);
 
 	cdev = cdev_by_name(devname);
 	if (cdev) {
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
