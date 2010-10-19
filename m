Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
	by canuck.infradead.org with esmtps (Exim 4.72 #1 (Red Hat Linux))
	id 1P8Bj7-0005qo-Gy
	for barebox@lists.infradead.org; Tue, 19 Oct 2010 12:55:47 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Tue, 19 Oct 2010 14:55:22 +0200
Message-Id: <1287492930-15716-35-git-send-email-s.hauer@pengutronix.de>
In-Reply-To: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
References: <1287492930-15716-1-git-send-email-s.hauer@pengutronix.de>
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
Subject: [PATCH 34/42] lib/driver.c: sparse fixes
To: barebox@lists.infradead.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 lib/driver.c |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/lib/driver.c b/lib/driver.c
index 66d8fee..edde1dc 100644
--- a/lib/driver.c
+++ b/lib/driver.c
@@ -54,7 +54,7 @@ struct device_d *get_device_by_name(const char *name)
 	return NULL;
 }
 
-struct device_d *get_device_by_name_id(const char *name, int id)
+static struct device_d *get_device_by_name_id(const char *name, int id)
 {
 	struct device_d *dev;
 
@@ -315,7 +315,7 @@ static int do_devinfo(struct command *cmdtp, int argc, char *argv[])
 		for_each_driver(drv)
 			printf("%10s\n",drv->name);
 	} else {
-		struct device_d *dev = get_device_by_name(argv[1]);
+		dev = get_device_by_name(argv[1]);
 
 		if (!dev) {
 			printf("no such device: %s\n",argv[1]);
-- 
1.7.2.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
