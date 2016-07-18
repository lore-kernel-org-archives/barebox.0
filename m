Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x243.google.com ([2607:f8b0:400e:c00::243])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPAGf-0006qp-Rk
 for barebox@lists.infradead.org; Mon, 18 Jul 2016 15:15:40 +0000
Received: by mail-pf0-x243.google.com with SMTP id h186so3461306pfg.2
 for <barebox@lists.infradead.org>; Mon, 18 Jul 2016 08:15:17 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jul 2016 08:14:48 -0700
Message-Id: <1468854889-6057-6-git-send-email-andrew.smirnov@gmail.com>
In-Reply-To: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
References: <1468854889-6057-1-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 6/7] imx_thermal: Remove leftover debug output
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
