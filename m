Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:6f8:1178:4:290:27ff:fe1d:cc33])
 by merlin.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
 id 1T7N01-0001Z2-3h
 for barebox@lists.infradead.org; Fri, 31 Aug 2012 08:54:46 +0000
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Fri, 31 Aug 2012 10:54:25 +0200
Message-Id: <1346403272-24446-4-git-send-email-s.trumtrar@pengutronix.de>
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
Subject: [PATCH 03/10] ARM i.MX5: add imx-gpio devices
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-imx/imx51.c |    5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/mach-imx/imx51.c b/arch/arm/mach-imx/imx51.c
index 53205a9..506a7d9 100644
--- a/arch/arm/mach-imx/imx51.c
+++ b/arch/arm/mach-imx/imx51.c
@@ -89,6 +89,11 @@ static int imx51_init(void)
 	add_generic_device("imx_iim", 0, NULL, MX51_IIM_BASE_ADDR, SZ_4K,
 			IORESOURCE_MEM, NULL);
 
+	add_generic_device("imx-gpio", 0, NULL, 0x73f84000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 1, NULL, 0x73f88000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 2, NULL, 0x73f8c000, 0x1000, IORESOURCE_MEM, NULL);
+	add_generic_device("imx-gpio", 3, NULL, 0x73f90000, 0x1000, IORESOURCE_MEM, NULL);
+
 	return 0;
 }
 coredevice_initcall(imx51_init);
-- 
1.7.10.4


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
