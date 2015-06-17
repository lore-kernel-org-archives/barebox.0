Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat
 Linux)) id 1Z59pq-00063X-7Q
 for barebox@lists.infradead.org; Wed, 17 Jun 2015 09:40:43 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 17 Jun 2015 11:40:11 +0200
Message-Id: <1434534012-30441-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 1/2] blspec: Add missing prototype for blspec_scan_device
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 include/blspec.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/blspec.h b/include/blspec.h
index afac5ed..e22e9be 100644
--- a/include/blspec.h
+++ b/include/blspec.h
@@ -35,6 +35,7 @@ int blspec_boot_devicename(const char *devname, int verbose, int dryrun);
 
 int blspec_scan_devices(struct blspec *blspec);
 
+int blspec_scan_device(struct blspec *blspec, struct device_d *dev);
 int blspec_scan_devicename(struct blspec *blspec, const char *devname);
 int blspec_scan_directory(struct blspec *blspec, const char *root);
 
-- 
2.1.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
