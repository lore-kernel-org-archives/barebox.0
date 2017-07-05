Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1dSmNy-00031a-LS
 for barebox@lists.infradead.org; Wed, 05 Jul 2017 15:38:40 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed,  5 Jul 2017 17:38:07 +0200
Message-Id: <20170705153809.20050-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v2 0/2] update snvs_lpgpr driver
To: barebox@lists.infradead.org, l.stach@pengutronix.de
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

v2:
- move snvs-lpgpr to arch/arm/dts/imx6qdl.dtsi
- remove ".. *dcfg"  from the probe function

Oleksij Rempel (2):
  nvmem: snvs_lpgpr: sync with latest version for kernel
  dts: arm: imx6qdl: provide snvs-lpgpr device

 arch/arm/dts/imx6qdl.dtsi  |  5 +++
 drivers/nvmem/snvs_lpgpr.c | 96 ++++++++++++++++++++++++++++++----------------
 2 files changed, 67 insertions(+), 34 deletions(-)

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
