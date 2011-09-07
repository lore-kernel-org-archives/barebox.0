Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1Gas-0008IU-G9
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 11:47:03 +0000
Received: from milas.spb.ru ([217.119.30.118])
	by quix.smartspb.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.61 (FreeBSD)) (envelope-from <shc@milas.spb.ru>)
	id 1R1C7w-000Byp-OV
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 11:00:52 +0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by milas.spb.ru (Postfix) with ESMTP id E2351C7402
	for <barebox@lists.infradead.org>; Wed,  7 Sep 2011 11:00:21 +0400 (MSD)
Received: from milas.spb.ru ([127.0.0.1])
	by localhost (milas.spb.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KX-CLXQZRrzY for <barebox@lists.infradead.org>;
	Wed,  7 Sep 2011 11:00:20 +0400 (MSD)
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1315378820.14418@milas.spb.ru>
Date: Wed, 07 Sep 2011 11:00:20 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1315378820"
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
Subject: Add 600Mhz freq defines for MX51
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1315378820
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

--- barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/clock-imx51_53.h	2011-08-26 18:23:46.000000000 +0400
+++ barebox-v2011.09.0/arch/arm/mach-imx/include/mach/clock-imx51_53.h	2011-09-06 14:54:28.000000000 +0400
@@ -606,6 +606,10 @@
 #define MX5_PLL_DP_MFD_665	(96 - 1)
 #define MX5_PLL_DP_MFN_665	89

+#define MX5_PLL_DP_OP_600	((6 << 4) + ((1 - 1)  << 0))
+#define MX5_PLL_DP_MFD_600	(4 - 1)
+#define MX5_PLL_DP_MFN_600	1
+
 #define MX5_PLL_DP_OP_532	((5 << 4) + ((1 - 1)  << 0))
 #define MX5_PLL_DP_MFD_532	(24 - 1)
 #define MX5_PLL_DP_MFN_532	13

--bound1315378820
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1315378820--
