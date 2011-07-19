Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from 14.mo4.mail-out.ovh.net ([46.105.40.29]
	helo=mo4.mail-out.ovh.net)
	by canuck.infradead.org with esmtp (Exim 4.76 #1 (Red Hat Linux))
	id 1QjD7X-0003ur-5u
	for barebox@lists.infradead.org; Tue, 19 Jul 2011 16:26:14 +0000
Received: from mail187.ha.ovh.net (b9.ovh.net [213.186.33.59])
	by mo4.mail-out.ovh.net (Postfix) with SMTP id 02842FFA659
	for <barebox@lists.infradead.org>;
	Tue, 19 Jul 2011 18:26:37 +0200 (CEST)
From: Jean-Christophe PLAGNIOL-VILLARD <plagnioj@jcrosoft.com>
Date: Tue, 19 Jul 2011 18:09:11 +0200
Message-Id: <1311091752-9114-15-git-send-email-plagnioj@jcrosoft.com>
In-Reply-To: <20110719160758.GK5727@game.jcrosoft.org>
References: <20110719160758.GK5727@game.jcrosoft.org>
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
Subject: [PATCH 15/16] i.MX devices: convert to struct resource
To: barebox@lists.infradead.org

From: Sascha Hauer <s.hauer@pengutronix.de>

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-imx/devices.c |    7 +++++--
 1 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/devices.c b/arch/arm/mach-imx/devices.c
index 0395b0e..6503c30 100644
--- a/arch/arm/mach-imx/devices.c
+++ b/arch/arm/mach-imx/devices.c
@@ -9,8 +9,11 @@ static struct device_d *imx_add_device(char *name, int id, void *base, int size,
 	dev = xzalloc(sizeof(*dev));
 	strcpy(dev->name,name);
 	dev->id = id;
-	dev->map_base = (unsigned long)base;
-	dev->size = size;
+	dev->resource = xzalloc(sizeof(struct resource));
+	dev->resource[0].start = (resource_size_t)base;
+	dev->resource[0].size = size;
+	dev->resource[0].flags = IORESOURCE_MEM;
+	dev->num_resources = 1;
 	dev->platform_data = pdata;
 
 	register_device(dev);
-- 
1.7.5.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
