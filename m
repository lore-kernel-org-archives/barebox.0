Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1d6fUU-0007C9-Qu
 for barebox@lists.infradead.org; Fri, 05 May 2017 15:50:02 +0000
Received: from birne.hi.pengutronix.de ([2001:67c:670:100:feaa:14ff:fe28:e6f5]
 helo=birne) by metis.ext.pengutronix.de with esmtps
 (TLS1.2:ECDHE_RSA_AES_128_GCM_SHA256:128) (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1d6fU6-0000bQ-Oo
 for barebox@lists.infradead.org; Fri, 05 May 2017 17:49:34 +0200
Received: from mgr by birne with local (Exim 4.84_2)
 (envelope-from <mgr@pengutronix.de>) id 1d6fU6-0007Eo-EZ
 for barebox@lists.infradead.org; Fri, 05 May 2017 17:49:34 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
Date: Fri,  5 May 2017 17:49:17 +0200
Message-Id: <20170505154920.27685-1-m.grzeschik@pengutronix.de>
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
Subject: [PATCH 0/3] i.MX: fec: enable optional clocks in fec driver
To: barebox@lists.infradead.org

All clocks necessary for the fec are described in the device trees. This
series enables them if found. After that change, all board files
explicitly enabling them can rely on the fec driver.

Michael Grzeschik (3):
  i.MX: fec: also enable optional clocks
  ARM: phytec-som-imx6: the ethernet clocks get enabled by fec_imx
  ARM: mx6sx-sabresdb: the ethernet clocks get enabled by fec_imx

 arch/arm/boards/freescale-mx6sx-sabresdb/board.c | 27 +---------------------
 arch/arm/boards/phytec-som-imx6/board.c          | 27 +---------------------
 drivers/net/fec_imx.c                            | 29 ++++++++++++++++++++++++
 drivers/net/fec_imx.h                            |  8 +++++++
 4 files changed, 39 insertions(+), 52 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
