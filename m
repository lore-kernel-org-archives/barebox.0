Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7N01-0001Z6-3m
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 08:54:47 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 31 Aug 2012 10:54:29 +0200
Message-Id: <1346403272-24446-8-git-send-email-s.trumtrar@pengutronix.de>
In-Reply-To: <1346403272-24446-1-git-send-email-s.trumtrar@pengutronix.de>
References: <1346403272-24446-1-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 07/10] ARM i.MX27: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/imx27.c |    6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm/mach-imx/imx27.c b/arch/arm/mach-imx/imx27.c
index 1af291d..cf5ec21 100644
--- a/arch/arm/mach-imx/imx27.c
+++ b/arch/arm/mach-imx/imx27.c
@@ -86,6 +86,12 @@ static int imx27_init(void)
 
 	imx27_init_max();
 
+	add_generic_device("imx-gpio", 0, NULL, 0x10015000, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x10015100, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x10015200, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x10015300, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 4, NULL, 0x10015400, 0x100, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 5, NULL, 0x10015500, 0x100, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx27_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
