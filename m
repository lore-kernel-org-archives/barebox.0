Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7N01-0001Z7-3r
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 08:54:47 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 31 Aug 2012 10:54:30 +0200
Message-Id: <1346403272-24446-9-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 08/10] ARM i.MX25: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/imx25.c |    4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/mach-imx/imx25.c b/arch/arm/mach-imx/imx25.c
index 19a2909..7552af3 100644
--- a/arch/arm/mach-imx/imx25.c
+++ b/arch/arm/mach-imx/imx25.c
@@ -59,6 +59,10 @@ static int imx25_init(void)
 	add_generic_device("imx_iim", 0, NULL, IMX_IIM_BASE, SZ_4K,
 			IORESOURCE_MEM, &imx25_iim_pdata);
 
+	add_generic_device("imx-gpio", 0, NULL, 0x53fcc000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x53fd0000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x53fa4000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x53f9c000, 0x1000, IORESOURCE_MEM, NULL);
 	return 0;
 }
 coredevice_initcall(imx25_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
