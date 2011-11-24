Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from smtp6-g21.free.fr ([2a01:e0c:1:1599::15])
 by merlin.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
 id 1RTPan-0007jb-1J
 for barebox@lists.infradead.org; Thu, 24 Nov 2011 03:03:18 +0000
From: Robert Jarzmik <robert.jarzmik@free.fr>
Date: Thu, 24 Nov 2011 04:02:40 +0100
Message-Id: <1322103764-6265-6-git-send-email-robert.jarzmik@free.fr>
In-Reply-To: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
References: <1322103764-6265-1-git-send-email-robert.jarzmik@free.fr>
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
Subject: [PATCH 5/9] drivers: pxafb: Fix IOMEM API evolution
To: barebox@lists.infradead.org

As the method to access the IO region changed in barebox
mainline, amend accordingly pxafb.

Signed-off-by: Robert Jarzmik <robert.jarzmik@free.fr>
---
 drivers/video/pxa.c |    2 +-
 1 files changed, 1 insertions(+), 1 deletions(-)

diff --git a/drivers/video/pxa.c b/drivers/video/pxa.c
index bc039a9..ddd7087 100644
--- a/drivers/video/pxa.c
+++ b/drivers/video/pxa.c
@@ -503,7 +503,7 @@ static int pxafb_probe(struct device_d *dev)
 	info = &fbi->info;
 
 	fbi->mode = pdata->mode;
-	fbi->regs = (void __iomem *)dev->map_base;
+	fbi->regs = dev_request_mem_region(dev, 0);
 
 	fbi->dev = dev;
 	fbi->lcd_power = pdata->lcd_power;
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
