Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gwMKS-00037g-HZ
 for barebox@lists.infradead.org; Wed, 20 Feb 2019 07:30:11 +0000
Received: by mail-pf1-x443.google.com with SMTP id n74so11479350pfi.9
 for <barebox@lists.infradead.org>; Tue, 19 Feb 2019 23:30:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 19 Feb 2019 23:29:22 -0800
Message-Id: <20190220072930.14300-18-andrew.smirnov@gmail.com>
In-Reply-To: <20190220072930.14300-1-andrew.smirnov@gmail.com>
References: <20190220072930.14300-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 17/25] phy: core: Assume EPROBE_DEFER in
 of_phy_provider_lookup()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

In order to support PHY driver probe deferral change the code to
assume EPROBE_DEFER instead of ENODEV when requested PHY is missing
from phy_provider_list.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/phy/phy-core.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/phy/phy-core.c b/drivers/phy/phy-core.c
index 9d6288fc0..066a887a2 100644
--- a/drivers/phy/phy-core.c
+++ b/drivers/phy/phy-core.c
@@ -227,7 +227,7 @@ static struct phy_provider *of_phy_provider_lookup(struct device_node *node)
 				return phy_provider;
 	}
 
-	return ERR_PTR(-ENODEV);
+	return ERR_PTR(-EPROBE_DEFER);
 }
 
 /**
@@ -254,7 +254,7 @@ static struct phy *_of_phy_get(struct device_node *np, int index)
 
 	phy_provider = of_phy_provider_lookup(args.np);
 	if (IS_ERR(phy_provider)) {
-		return ERR_PTR(-ENODEV);
+		return ERR_CAST(phy_provider);
 	}
 
 	return phy_provider->of_xlate(phy_provider->dev, &args);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
