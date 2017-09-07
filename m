Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-lf0-x242.google.com ([2a00:1450:4010:c07::242])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dptDJ-0004xD-C9
 for barebox@lists.infradead.org; Thu, 07 Sep 2017 09:35:11 +0000
Received: by mail-lf0-x242.google.com with SMTP id c8so4172786lfe.2
 for <barebox@lists.infradead.org>; Thu, 07 Sep 2017 02:34:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
Date: Thu,  7 Sep 2017 12:34:37 +0300
Message-Id: <20170907093438.30895-2-antonynpavlov@gmail.com>
In-Reply-To: <20170907093438.30895-1-antonynpavlov@gmail.com>
References: <20170907093438.30895-1-antonynpavlov@gmail.com>
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
Subject: [PATCH v2 1/2] gpio: gpio-generic: fix bgpio_map()
To: barebox@lists.infradead.org

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/gpio/gpio-generic.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpio/gpio-generic.c b/drivers/gpio/gpio-generic.c
index c6202fc651..01a66d6645 100644
--- a/drivers/gpio/gpio-generic.c
+++ b/drivers/gpio/gpio-generic.c
@@ -308,7 +308,7 @@ static void __iomem *bgpio_map(struct device_d *dev, const char *name,
 			       resource_size_t sane_sz, int *err)
 {
 	struct resource *r;
-	void __iomem *ret;
+	struct resource *ret;
 
 	*err = 0;
 
@@ -327,7 +327,7 @@ static void __iomem *bgpio_map(struct device_d *dev, const char *name,
 		return NULL;
 	}
 
-	return ret;
+	return IOMEM(ret->start);
 }
 
 static int bgpio_dev_probe(struct device_d *dev)
-- 
2.14.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
