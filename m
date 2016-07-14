Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pa0-x241.google.com ([2607:f8b0:400e:c03::241])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1bNZsF-0006dL-6E
 for barebox@lists.infradead.org; Thu, 14 Jul 2016 06:11:52 +0000
Received: by mail-pa0-x241.google.com with SMTP id q2so4119914pap.0
 for <barebox@lists.infradead.org>; Wed, 13 Jul 2016 23:11:31 -0700 (PDT)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 13 Jul 2016 23:11:03 -0700
Message-Id: <1468476665-26409-5-git-send-email-andrew.smirnov@gmail.com>
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
Subject: [PATCH 5/7] mfd: syscon: Use IOMEM instead of explicit cast
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 9b873fe..fb9a2c6 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -123,7 +123,7 @@ static int syscon_probe(struct device_d *dev)
 		return PTR_ERR(res);
 	}
 
-	syscon->base = (void __iomem *)res->start;
+	syscon->base = IOMEM(res->start);
 	dev->priv = syscon;
 
 	dev_dbg(dev, "map 0x%x-0x%x registered\n", res->start, res->end);
-- 
2.5.5


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
