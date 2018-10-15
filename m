Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gC6By-00021K-K0
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 16:58:07 +0000
Received: by mail-pg1-x544.google.com with SMTP id 23-v6so9442528pgc.8
 for <barebox@lists.infradead.org>; Mon, 15 Oct 2018 09:57:56 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 15 Oct 2018 09:57:43 -0700
Message-Id: <20181015165743.20795-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] rave-sp: backlight: Specify parent device correctly
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/video/rave-sp-backlight.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/video/rave-sp-backlight.c b/drivers/video/rave-sp-backlight.c
index 88ec86e73..3a20def66 100644
--- a/drivers/video/rave-sp-backlight.c
+++ b/drivers/video/rave-sp-backlight.c
@@ -46,6 +46,7 @@ static int rave_sp_backlight_probe(struct device_d *dev)
 
 	bd = xzalloc(sizeof(*bd));
 	bd->dev.priv = dev->parent->priv;
+	bd->dev.parent = dev;
 	bd->brightness_default = 50;
 	bd->brightness_max = 100;
 	bd->brightness_set = rave_sp_backlight_set;
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
