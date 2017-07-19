Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from asavdk3.altibox.net ([109.247.116.14])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dXwPu-0001Ot-2V
 for barebox@lists.infradead.org; Wed, 19 Jul 2017 21:22:03 +0000
From: Sam Ravnborg <sam@ravnborg.org>
Date: Wed, 19 Jul 2017 23:21:04 +0200
Message-Id: <20170719212104.2613-6-sam@ravnborg.org>
In-Reply-To: <20170719212013.GA1675@ravnborg.org>
References: <20170719212013.GA1675@ravnborg.org>
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
Subject: [PATCH 6/6] atmel_lcdfb: fix so the correct guard_time is used
To: Barebox List <barebox@lists.infradead.org>
Cc: Sam Ravnborg <sam@ravnborg.org>

guard_time is set in platform data but was never copied
to atmel_lcdfb_info thus a guard_time of 0 have always been used.

This issue was found during code inspection and no know
bugs is fixed by this.

Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
---
 drivers/video/atmel_lcdfb.c      | 2 +-
 drivers/video/atmel_lcdfb_core.c | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/video/atmel_lcdfb.c b/drivers/video/atmel_lcdfb.c
index 20204c1dd..a0e41d10c 100644
--- a/drivers/video/atmel_lcdfb.c
+++ b/drivers/video/atmel_lcdfb.c
@@ -85,7 +85,7 @@ static void atmel_lcdfb_start(struct atmel_lcdfb_info *sinfo)
 
 	lcdc_writel(sinfo, ATMEL_LCDC_DMACON, pdata->default_dmacon);
 	lcdc_writel(sinfo, ATMEL_LCDC_PWRCON,
-		(pdata->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
+		(sinfo->guard_time << ATMEL_LCDC_GUARDT_OFFSET)
 		| ATMEL_LCDC_PWR);
 }
 
diff --git a/drivers/video/atmel_lcdfb_core.c b/drivers/video/atmel_lcdfb_core.c
index 555799ea4..f6c5d7c05 100644
--- a/drivers/video/atmel_lcdfb_core.c
+++ b/drivers/video/atmel_lcdfb_core.c
@@ -258,6 +258,7 @@ int atmel_lcdc_register(struct device_d *dev, struct atmel_lcdfb_devdata *data)
 
 	sinfo = xzalloc(sizeof(*sinfo));
 	sinfo->pdata = pdata;
+	sinfo->guard_time = pdata->guard_time;
 	iores = dev_request_mem_resource(dev, 0);
 	if (IS_ERR(iores))
 		return PTR_ERR(iores);
-- 
2.12.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
