Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf0-x242.google.com ([2607:f8b0:400e:c00::242])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bPAGd-0006qO-0G
 for barebox@lists.infradead.org; Mon, 18 Jul 2016 15:15:35 +0000
Received: by mail-pf0-x242.google.com with SMTP id i6so11666535pfe.0
 for <barebox@lists.infradead.org>; Mon, 18 Jul 2016 08:15:14 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Mon, 18 Jul 2016 08:14:44 -0700
Message-Id: <1468854889-6057-2-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 2/7] mfd: syscon: Don't call request_iomem_region()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On platforms that mix dedicated IP block register space with
miscellaneous registers it is necessary to share register window between
syscon and dedicated IP block driver. Calling request_iomem_region()
implies exclusive ownership of the region, which, in the case above
could not happen.

This change also makes this driver's behaviour to that of its Linux
kernel counterpart.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 9589a03..ac46122 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -76,12 +76,6 @@ static int syscon_probe(struct device_d *dev)
 		return PTR_ERR(res);
 	}
 
-	res = request_iomem_region(dev_name(dev), res->start, res->end);
-	if (IS_ERR(res)) {
-		free(syscon);
-		return PTR_ERR(res);
-	}
-
 	syscon->base = (void __iomem *)res->start;
 	dev->priv = syscon;
 
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
