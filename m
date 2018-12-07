Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gVAeH-00017o-KP
 for barebox@lists.infradead.org; Fri, 07 Dec 2018 07:34:15 +0000
Received: by mail-pl1-x644.google.com with SMTP id z23so1447542plo.0
 for <barebox@lists.infradead.org>; Thu, 06 Dec 2018 23:33:59 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Thu,  6 Dec 2018 23:33:45 -0800
Message-Id: <20181207073345.5638-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 6/6] mci: mxs: Drop explicit devname setup code
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Drop explicit devname setup code. Same setup will be done by
mci_of_parse().

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mci/mxs.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/mci/mxs.c b/drivers/mci/mxs.c
index 446da8ad5..afd6a5639 100644
--- a/drivers/mci/mxs.c
+++ b/drivers/mci/mxs.c
@@ -574,12 +574,6 @@ static int mxs_mci_probe(struct device_d *hw_dev)
 		/* fixed to 3.3 V */
 		host->voltages = MMC_VDD_32_33 | MMC_VDD_33_34;
 
-		if (hw_dev->device_node) {
-			const char *alias = of_alias_get(hw_dev->device_node);
-			if (alias)
-				host->devname = xstrdup(alias);
-		}
-
 		mci_of_parse(host);
 	}
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
