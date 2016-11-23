Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.85_2 #1 (Red Hat Linux))
 id 1c9U27-0008Kg-Rz
 for barebox@lists.infradead.org; Wed, 23 Nov 2016 09:40:07 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 23 Nov 2016 10:39:35 +0100
Message-Id: <20161123093937.15711-8-s.hauer@pengutronix.de>
In-Reply-To: <20161123093937.15711-1-s.hauer@pengutronix.de>
References: <20161123093937.15711-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 08/10] of: Use %pa to print resource_size_t type
To: Barebox List <barebox@lists.infradead.org>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/of/platform.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/of/platform.c b/drivers/of/platform.c
index 3f848a4..c9157cd 100644
--- a/drivers/of/platform.c
+++ b/drivers/of/platform.c
@@ -271,7 +271,7 @@ static struct device_d *of_amba_device_create(struct device_node *np)
 	/* Allow the HW Peripheral ID to be overridden */
 	of_property_read_u32(np, "arm,primecell-periphid", &dev->periphid);
 
-	debug("register device 0x%08x\n", dev->dev.resource[0].start);
+	debug("register device %pa\n", &dev->dev.resource[0].start);
 
 	ret = amba_device_add(dev);
 	if (ret)
-- 
2.10.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
