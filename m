Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gBsWD-0006tX-6q
 for barebox@lists.infradead.org; Mon, 15 Oct 2018 02:22:20 +0000
Received: by mail-pf1-x443.google.com with SMTP id f78-v6so3107222pfe.1
 for <barebox@lists.infradead.org>; Sun, 14 Oct 2018 19:21:55 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 14 Oct 2018 19:21:11 -0700
Message-Id: <20181015022125.24020-9-andrew.smirnov@gmail.com>
In-Reply-To: <20181015022125.24020-1-andrew.smirnov@gmail.com>
References: <20181015022125.24020-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 08/22] aiodev: imx_thermal: Give aiodev a more descriptive
 name
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/aiodev/imx_thermal.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/aiodev/imx_thermal.c b/drivers/aiodev/imx_thermal.c
index c020a1091..9e5070835 100644
--- a/drivers/aiodev/imx_thermal.c
+++ b/drivers/aiodev/imx_thermal.c
@@ -177,6 +177,7 @@ static int imx_thermal_probe(struct device_d *dev)
 
 	imx_thermal->aiodev.num_channels = 1;
 	imx_thermal->aiodev.hwdev = dev;
+	imx_thermal->aiodev.name = "thermal-sensor";
 	imx_thermal->aiodev.channels =
 		xmalloc(imx_thermal->aiodev.num_channels *
 			sizeof(imx_thermal->aiodev.channels[0]));
-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
