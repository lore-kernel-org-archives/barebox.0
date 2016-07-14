Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x242.google.com ([2607:f8b0:400e:c03::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNZsG-0006dM-9D
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 06:11:54 +0000
Received: by mail-pa0-x242.google.com with SMTP id hh10so4118725pac.1
 for <barebox@lists.infradead.org>; Wed, 13 Jul 2016 23:11:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jul 2016 23:11:04 -0700
Message-Id: <1468476665-26409-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
References: <1468476665-26409-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/7] imx_thermal: Remove leftover debug output
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/aiodev/imx_thermal.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index 08532a7..f8b59c2 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -133,8 +133,6 @@ static int imx_thermal_probe(struct device_d *dev)
 		return -ENODEV;
 	}
 
-	printf("node = %p\n", node);
-
 	ocotp = cdev_by_device_node(node);
 	if (!ocotp) {
 		dev_err(dev, "No OCOTP character device\n");
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
