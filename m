Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail.phytec.co.uk ([217.6.246.34] helo=root.phytec.de)
	by bombadil.infradead.org with esmtp (Exim 4.69 #1 (Red Hat Linux))
	id 1O1xb1-0003mF-3I
	for barebox@lists.infradead.org; Wed, 14 Apr 2010 08:05:17 +0000
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id BE8B9BF0CF
	for <barebox@lists.infradead.org>;
	Wed, 14 Apr 2010 10:04:40 +0200 (CEST)
From: Jan Weitzel <J.Weitzel@phytec.de>
Date: Wed, 14 Apr 2010 10:05:07 +0200
Message-ID: <1271232307.10496.14.camel@lws-weitzel>
Mime-Version: 1.0
Reply-To: J.Weitzel@phytec.de
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
	<mailto:barebox-request@lists.infradead.org?subject=subscribe>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: barebox-bounces@lists.infradead.org
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH] fix miiphy alloc
To: barebox@lists.infradead.org

if fec was allocated using malloc. if fec->miiphy->dev->driver != 0
miiphy_probe is not called

Signed-off-by: Jan Weitzel <J.Weitzel@phytec.de>
---
Index: barebox-2010.04.0/drivers/net/fec_imx.c
===================================================================
--- barebox-2010.04.0.orig/drivers/net/fec_imx.c	2010-04-14 09:57:21.019441257 +0200
+++ barebox-2010.04.0/drivers/net/fec_imx.c	2010-04-14 09:59:38.489396111 +0200
@@ -542,10 +542,10 @@
 #ifdef CONFIG_ARCH_IMX27
 	PCCR0 |= PCCR0_FEC_EN;
 #endif
-        edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
-        dev->type_data = edev;
-	fec = (struct fec_priv *)malloc(sizeof(*fec));
-        edev->priv = fec;
+	edev = (struct eth_device *)xzalloc(sizeof(struct eth_device));
+	dev->type_data = edev;
+	fec = (struct fec_priv *)xzalloc(sizeof(*fec));
+	edev->priv = fec;
 	edev->open = fec_open,
 	edev->init = fec_init,
 	edev->send = fec_send,


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
