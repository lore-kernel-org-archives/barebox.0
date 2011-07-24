Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 19.mo3.mail-out.ovh.net ([178.32.98.231]
	helo=mo3.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1Ql0GA-0002v1-Tr
	for barebox@lists.infradead.org; Sun, 24 Jul 2011 15:06:28 +0000
Received: from mail191.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo3.mail-out.ovh.net (Postfix) with SMTP id A970EFFA2F8
	for <barebox@lists.infradead.org>;
	Sun, 24 Jul 2011 17:07:13 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Sun, 24 Jul 2011 16:49:02 +0200
Message-Id: <1311518949-6990-5-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110724144441.GA10295@game.jcrosoft.org>
References: <20110724144441.GA10295@game.jcrosoft.org>
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
Subject: [PATCH 05/12 v2] imx/devices: switch to add_generic_device
To: barebox@lists.infradead.org

Signed-off-by: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
---
 arch/arm/mach-imx/devices.c |   19 +++----------------
 1 files changed, 3 insertions(+), 16 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 6503c30..5b062f5 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -2,23 +2,10 @@
 #include <driver.h>
 #include <mach/devices.h>
 
-static struct device_d *imx_add_device(char *name, int id, void *base, int size, void *pdata)
+static inline struct device_d *imx_add_device(char *name, int id, void *base, int size, void *pdata)
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
+	return add_generic_device(name, id, NULL, (resource_size_t)base, size,
+				  IORESOURCE_MEM, pdata);
 }
 
 struct device_d *imx_add_fec(void *base, struct fec_platform_data *pdata)
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
