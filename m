Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x543.google.com ([2607:f8b0:4864:20::543])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gh5BE-0003It-FE
 for barebox@lists.infradead.org; Wed, 09 Jan 2019 04:09:26 +0000
Received: by mail-pg1-x543.google.com with SMTP id z11so2723793pgu.0
 for <barebox@lists.infradead.org>; Tue, 08 Jan 2019 20:09:24 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue,  8 Jan 2019 20:09:17 -0800
Message-Id: <20190109040917.19246-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH] mfd: syscon: Switch to using %pa to print memory addresses
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Switch to using %pa to print memory addresses in order to be able to
support both 64 and 32 bit builds.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/mfd/syscon.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 957d9a726..30ed65f73 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -176,7 +176,7 @@ static int syscon_probe(struct device_d *dev)
 	syscon->base = IOMEM(res->start);
 	dev->priv = syscon;
 
-	dev_dbg(dev, "map 0x%x-0x%x registered\n", res->start, res->end);
+	dev_dbg(dev, "map %pa-%pa registered\n", &res->start, &res->end);
 
 	return 0;
 }
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
