Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1QyJuy-00073C-NB
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 08:43:37 +0000
Received: from milas.spb.ru ([217.119.30.118])
	by quix.smartspb.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.61 (FreeBSD)) (envelope-from <shc@milas.spb.ru>)
	id 1QyJux-000O8k-K3
	for barebox@lists.infradead.org; Tue, 30 Aug 2011 12:43:35 +0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by milas.spb.ru (Postfix) with ESMTP id B38B9C7402
	for <barebox@lists.infradead.org>; Tue, 30 Aug 2011 12:43:28 +0400 (MSD)
Received: from milas.spb.ru ([127.0.0.1])
	by localhost (milas.spb.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bb0dg4kjfig2 for <barebox@lists.infradead.org>;
	Tue, 30 Aug 2011 12:43:27 +0400 (MSD)
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1314693807.22308@milas.spb.ru>
Date: Tue, 30 Aug 2011 12:43:27 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1314693807"
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: ID fix for mx51 SDHC2
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1314693807
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

Hello.

Please review this patch.

diff -urN barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/devices-imx51.h barebox-v2011.09.0/arch/arm/mach-imx/include/mach/devices-imx51.h
--- barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/devices-imx51.h	2011-08-26 18:23:46.000000000 +0400
+++ barebox-v2011.09.0/arch/arm/mach-imx/include/mach/devices-imx51.h	2011-08-30 12:35:08.000000000 +0400
@@ -48,7 +48,7 @@

 static inline struct device_d *imx51_add_mmc1(void *pdata)
 {
-	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 0, pdata);
+	return imx_add_esdhc((void *)MX51_MMC_SDHC2_BASE_ADDR, 1, pdata);
 }

 static inline struct device_d *imx51_add_nand(struct imx_nand_platform_data *pdata)

--bound1314693807
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1314693807--
