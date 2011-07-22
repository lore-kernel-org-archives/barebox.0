Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 11.mo3.mail-out.ovh.net ([87.98.184.158]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QkI4s-0006zz-5Q
	for barebox@lists.infradead.org; Fri, 22 Jul 2011 15:55:52 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id E8F0A10140E3
	for <barebox@lists.infradead.org>;
	Fri, 22 Jul 2011 17:56:31 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Fri, 22 Jul 2011 17:38:38 +0200
Message-Id: <1311349119-30197-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
References: <1311349119-30197-1-git-send-email-plagnioj@jcrosoft.com>
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
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 5/6] imx/devices: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/devices.c |   19 +++----------------
 1 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 6503c30..d2cf1e6 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -2,23 +2,10 @@
 #include <driver.h>
 #include <mach/devices.h>
 
-static struct device_d *imx_add_device(char *name, int id, void *base, int size, void *pdata)
+static struct inline device_d *imx_add_device(char *name, int id, void *base, int size, void *pdata)
 {
-	struct device_d *dev;
-
-	dev = xzalloc(sizeof(*dev));
-	strcpy(dev->name,name);
-	dev->id = id;
-	dev->resource = xzalloc(sizeof(struct resource));
-	dev->resource[0].start = (resource_size_t)base;
-	dev->resource[0].size = size;
-	dev->resource[0].flags = IORESOURCE_MEM;
-	dev->num_resources = 1;
-	dev->platform_data = pdata;
-
-	register_device(dev);
-
-	return 0;
+	return add_generic_device(name, id, NULL, (resource_size_t)start, size,
+				  IORESOURCE_MEM, pada);
 }
 
 struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
