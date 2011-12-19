Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RcdpY-0006Tz-DH
 for barebox@lists.infradead.org; Mon, 19 Dec 2011 14:04:41 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Mon, 19 Dec 2011 15:04:06 +0100
Message-Id: <1324303449-30045-6-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
References: <1324303449-30045-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH V3 5/8] drivers/mtd: fix core multiple MTD registrations
To: barebox@lists.infradead.org

If multiple MTD devices were registered, an exception
occured, as they all wanted id 0. Let the driver code choose
the device number dynamically.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/mtd/core.c |    1 +
 1 files changed, 1 insertions(+), 0 deletions(-)

diff --git a/drivers/mtd/core.c b/drivers/mtd/core.c
index f767e84..8611d02 100644
--- a/drivers/mtd/core.c
+++ b/drivers/mtd/core.c
@@ -254,6 +254,7 @@ int add_mtd_device(struct mtd_info *mtd, char *devname)
 	if (!devname)
 		devname = "mtd";
 	strcpy(mtd->class_dev.name, devname);
+	mtd->class_dev.id = -1;
 	register_device(&mtd->class_dev);
 
 	mtd->cdev.ops = &mtd_ops;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
