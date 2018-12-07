Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeG-00017n-T1
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:15 +0000
Received: by mail-pg1-x542.google.com with SMTP id w6so1339584pgl.6
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:33:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:33:44 -0800
Message-Id: <20181207073345.5638-5-andrew.smirnov@gmail.com>
In-Reply-To: <20181207073345.5638-1-andrew.smirnov@gmail.com>
References: <20181207073345.5638-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] mci: imx-esdhc: Drop explicit devname setup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit devname setup code. Same setup will be done by
mci_of_parse().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/imx-esdhc.c | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/drivers/mci/imx-esdhc.c b/drivers/mci/imx-esdhc.c
index 7f2285635..09df7945c 100644
--- a/drivers/mci/imx-esdhc.c
+++ b/drivers/mci/imx-esdhc.c
@@ -668,10 +668,6 @@ static int fsl_esdhc_probe(struct device_d *dev)
 		mci->host_caps = pdata->caps;
 		if (pdata->devname)
 			mci->devname = pdata->devname;
-	} else if (dev->device_node) {
-		const char *alias = of_alias_get(dev->device_node);
-		if (alias)
-			mci->devname = xstrdup(alias);
 	}
 
 	if (caps & ESDHC_HOSTCAPBLT_HSS)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
