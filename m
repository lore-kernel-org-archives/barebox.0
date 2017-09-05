Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x244.google.com ([2a00:1450:4010:c07::244])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dp8CP-0006ma-CR
 for barebox@lists.infradead.org; Tue, 05 Sep 2017 07:23:09 +0000
Received: by mail-lf0-x244.google.com with SMTP id c8so1296731lfe.2
 for <barebox@lists.infradead.org>; Tue, 05 Sep 2017 00:22:44 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Tue,  5 Sep 2017 10:22:36 +0300
Message-Id: <20170905072237.2268-2-antonynpavlov@gmail.com>
In-Reply-To: <20170905072237.2268-1-antonynpavlov@gmail.com>
References: <20170905072237.2268-1-antonynpavlov@gmail.com>
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
Subject: [PATCH 1/2] gpio: gpio-generic: fix bgpio_map()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpio-generic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index c6202fc651..164aaed97a 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -327,7 +327,7 @@ static void __iomem *bgpio_map(struct device_d *dev, const char *name,
 		return NULL;
 	}
 
-	return ret;
+	return IOMEM(r->start);
 }
 
 static int bgpio_dev_probe(struct device_d *dev)
-- 
2.13.3


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
