Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phycard.co.uk ([217.6.246.34] helo=root.phytec.de)
 by bombadil.infradead.org with esmtp (Exim 4.80.1 #2 (Red Hat Linux))
 id 1ZgVzu-0001QO-NF
 for barebox@lists.infradead.org; Mon, 28 Sep 2015 10:49:31 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
 by root.phytec.de (Postfix) with ESMTP id 5C2CFA003ED
 for <barebox@lists.infradead.org>; Mon, 28 Sep 2015 12:49:14 +0200 (CEST)
From: Wadim Egorov <w.egorov@phytec.de>
Date: Mon, 28 Sep 2015 12:48:00 +0200
Message-Id: <1443437281-33316-2-git-send-email-w.egorov@phytec.de>
In-Reply-To: <1443437281-33316-1-git-send-email-w.egorov@phytec.de>
References: <1443437281-33316-1-git-send-email-w.egorov@phytec.de>
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
Subject: [PATCH 2/3] ARM: am33xx: Enable ethernet node on NET boot
To: barebox@lists.infradead.org

Signed-off-by: Wadim Egorov <w.egorov@phytec.de>
---
 arch/arm/mach-omap/am33xx_generic.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index ae0ee58..5eead5c 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -505,6 +505,9 @@ int am33xx_of_register_bootdevice(void)
 	case BOOTSOURCE_SPI:
 		dev = of_device_enable_and_register_by_name("spi@48030000");
 		break;
+	case BOOTSOURCE_NET:
+		dev = of_device_enable_and_register_by_name("ethernet@4a100000");
+		break;
 	default:
 		/* Use nand fallback */
 		dev = of_device_enable_and_register_by_name("gpmc@50000000");
-- 
1.9.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
