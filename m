Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by canuck.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1Hw8-0002Dn-6Q
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 13:13:04 +0000
Received: from milas.spb.ru ([217.119.30.118])
	by quix.smartspb.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.61 (FreeBSD)) (envelope-from <shc@milas.spb.ru>)
	id 1R1C45-000Aeq-JP
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 10:56:53 +0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by milas.spb.ru (Postfix) with ESMTP id B6EF4C7404
	for <barebox@lists.infradead.org>; Wed,  7 Sep 2011 10:56:15 +0400 (MSD)
Received: from milas.spb.ru ([127.0.0.1])
	by localhost (milas.spb.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id t46HliqZdzap for <barebox@lists.infradead.org>;
	Wed,  7 Sep 2011 10:56:14 +0400 (MSD)
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1315378574.14250@milas.spb.ru>
Date: Wed, 07 Sep 2011 10:56:14 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1315378574"
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
Subject: Add "imx_get_i2cclk" for MX51
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1315378574
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

--- barebox-v2011.09.0.orig/arch/arm/mach-imx/speed-imx51.c	2011-08-26 18:23:46.000000000 +0400
+++ barebox-v2011.09.0/arch/arm/mach-imx/speed-imx51.c	2011-09-02 15:06:17.000000000 +0400
@@ -156,6 +156,11 @@
 	return imx_get_ipgclk();
 }

+unsigned long imx_get_i2cclk(void)
+{
+	return imx_get_ipgclk();
+}
+
 unsigned long imx_get_mmcclk(void)
 {
 	u32 reg, prediv, podf, rate;

--bound1315378574
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1315378574--
