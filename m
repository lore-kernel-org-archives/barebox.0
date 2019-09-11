Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1i846Z-0003SI-0t
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 15:00:24 +0000
Received: from dude02.hi.pengutronix.de ([2001:67c:670:100:1d::28]
 helo=dude02.lab.pengutronix.de)
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i846X-0002Oz-Sz
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:00:21 +0200
Received: from mfe by dude02.lab.pengutronix.de with local (Exim 4.92)
 (envelope-from <mfe@pengutronix.de>) id 1i846X-0001SN-Kq
 for barebox@lists.infradead.org; Wed, 11 Sep 2019 17:00:21 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
Date: Wed, 11 Sep 2019 17:00:18 +0200
Message-Id: <20190911150019.5236-1-m.felsch@pengutronix.de>
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
Subject: [PATCH 1/2] mfd: da9063: add support to populate subdevs
To: barebox@lists.infradead.org

The upstream dt-bindings abstracts the DA9063/2 PMIC MFD by multiple
of-subnodes and the linux-mfd core creates platform-devices for each
node. Due to the lack of a mfd fw we need to add the platform-devices by
our own to reuse the upstream bindings.

Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 drivers/mfd/da9063.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/mfd/da9063.c b/drivers/mfd/da9063.c
index a7fff2c5bf..9c1752a38c 100644
--- a/drivers/mfd/da9063.c
+++ b/drivers/mfd/da9063.c
@@ -265,6 +265,9 @@ static int da9063_probe(struct device_d *dev)
 
 	restart_handler_register(&priv->restart);
 
+	if (IS_ENABLED(CONFIG_OFDEVICE) && dev->device_node)
+		return of_platform_populate(dev->device_node, NULL, dev);
+
 	return 0;
 
 on_error:
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
