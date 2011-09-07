Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from quix.smartspb.net ([217.119.16.133])
	by casper.infradead.org with esmtps (Exim 4.76 #1 (Red Hat Linux))
	id 1R1Fi6-0000N5-Mw
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 10:50:27 +0000
Received: from milas.spb.ru ([217.119.30.118])
	by quix.smartspb.net with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.61 (FreeBSD)) (envelope-from <shc@milas.spb.ru>)
	id 1R1C5k-000BFw-FM
	for barebox@lists.infradead.org; Wed, 07 Sep 2011 10:58:36 +0400
Received: from localhost (localhost.localdomain [127.0.0.1])
	by milas.spb.ru (Postfix) with ESMTP id 7391EC7402
	for <barebox@lists.infradead.org>; Wed,  7 Sep 2011 10:58:05 +0400 (MSD)
Received: from milas.spb.ru ([127.0.0.1])
	by localhost (milas.spb.ru [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id UHbw450OgKsT for <barebox@lists.infradead.org>;
	Wed,  7 Sep 2011 10:57:52 +0400 (MSD)
From: Alexander Shiyan <shc@milas.spb.ru>
Message-Id: <1315378672.14337@milas.spb.ru>
Date: Wed, 07 Sep 2011 10:57:52 +0400 (MSD)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bound1315378672"
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
Subject: Add WEIM registers for MX51
To: barebox@lists.infradead.org

This is a multi-part message in MIME format.

--bound1315378672
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: 7bit

--- barebox-v2011.09.0.orig/arch/arm/mach-imx/include/mach/imx51-regs.h	2011-08-26 18:23:46.000000000 +0400
+++ barebox-v2011.09.0/arch/arm/mach-imx/include/mach/imx51-regs.h	2011-09-06 10:32:08.000000000 +0400
@@ -12,6 +12,16 @@
 #define GPT_TCN		0x24
 #define GPT_TSTAT	0x08

+/* WEIM registers */
+#define WEIM_CSxGCR1(n)	(((n) * 0x18) + 0x00)
+#define WEIM_CSxGCR2(n)	(((n) * 0x18) + 0x04)
+#define WEIM_CSxRCR1(n)	(((n) * 0x18) + 0x08)
+#define WEIM_CSxRCR2(n)	(((n) * 0x18) + 0x0c)
+#define WEIM_CSxWCR1(n)	(((n) * 0x18) + 0x10)
+#define WEIM_WCR	0x90
+#define WEIM_WIAR	0x94
+#define WEIM_EAR	0x98
+
 /* Part 2: Bitfields */
 #define TCTL_SWR	(1<<15)	/* Software reset */
 #define TCTL_FRR	(1<<9)	/* Freerun / restart */
@@ -134,4 +144,3 @@
 #define MX51_CHIP_REV_3_2	0x32

 #endif /* __MACH_IMX51_REGS_H */
-

--bound1315378672
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

--bound1315378672--
