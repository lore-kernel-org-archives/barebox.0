Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-wg0-f49.google.com ([74.125.82.49])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1TMPoc-0005i9-PU
 for barebox@lists.infradead.org; Thu, 11 Oct 2012 20:57:11 +0000
Received: by mail-wg0-f49.google.com with SMTP id gg4so1236749wgb.18
 for <barebox@lists.infradead.org>; Thu, 11 Oct 2012 13:57:08 -0700 (PDT)
From: Franck Jullien <franck.jullien@gmail.com>
Date: Thu, 11 Oct 2012 22:57:05 +0200
Message-Id: <1349989025-13612-1-git-send-email-franck.jullien@gmail.com>
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
Subject: [PATCH] cosmetic: improve drivers list display
To: barebox@lists.infradead.org

When the drivers list is printed with devinfo one can have some
unaligned strings because of the arbitrary %10s alignment in the printf.

This adds a first step finding the longest driver name, then the printf
alignment is matched to this value.

Signed-off-by: Franck Jullien <franck.jullien@gmail.com>
---
 drivers/base/driver.c |    8 +++++++-
 1 files changed, 7 insertions(+), 1 deletions(-)

diff --git a/drivers/base/driver.c b/drivers/base/driver.c
index 5b7286a..9dd479e 100644
--- a/drivers/base/driver.c
+++ b/drivers/base/driver.c
@@ -397,6 +397,7 @@ static int do_devinfo(int argc, char *argv[])
 	struct param_d *param;
 	int i;
 	struct resource *res;
+	int max_length = 0;
 
 	if (argc == 1) {
 		printf("devices:\n");
@@ -408,7 +409,12 @@ static int do_devinfo(int argc, char *argv[])
 
 		printf("\ndrivers:\n");
 		for_each_driver(drv)
-			printf("%10s\n",drv->name);
+			if (strlen(drv->name) > max_length)
+				max_length = strlen(drv->name);
+
+		for_each_driver(drv)
+			printf("%*s\n", max_length, drv->name);
+
 	} else {
 		dev = get_device_by_name(argv[1]);
 
-- 
1.7.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
