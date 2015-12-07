Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x22a.google.com ([2607:f8b0:400e:c00::22a])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1a5qcZ-0003vn-Gc
 for barebox@lists.infradead.org; Mon, 07 Dec 2015 07:54:10 +0000
Received: by pfbg73 with SMTP id g73so62517447pfb.1
 for <barebox@lists.infradead.org>; Sun, 06 Dec 2015 23:53:44 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun,  6 Dec 2015 23:52:38 -0800
Message-Id: <1449474763-14099-2-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
References: <1449474763-14099-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 2/7] drivers: bus: Match against id_table first
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Matching against driver's name before looking throught its id_table
can lead to a somewhat strange and unintuitive behaviour where a
device whose driver's name matches one of the lines in id_table (which
is not unheard of in Linux kernel) will be probed against said driver
with 'id_table' field set to NULL which in turn will result in
dev_get_drvdata erroring out with -ENODEV.

This patch changes the behaviour such that device_match() only tries
to match against driver's name only if id_table of that driver is not
present.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/base/bus.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/base/bus.c b/drivers/base/bus.c
index 1264e40..b889a48 100644
--- a/drivers/base/bus.c
+++ b/drivers/base/bus.c
@@ -54,9 +54,6 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 	    drv->of_compatible)
 		return of_match(dev, drv);

-	if (!strcmp(dev->name, drv->name))
-		return 0;
-
 	if (drv->id_table) {
 		const struct platform_device_id *id = drv->id_table;

@@ -67,6 +64,8 @@ int device_match(struct device_d *dev, struct driver_d *drv)
 			}
 			id++;
 		}
+	} else if (!strcmp(dev->name, drv->name)) {
+		return 0;
 	}

 	return -1;
--
2.5.0

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
