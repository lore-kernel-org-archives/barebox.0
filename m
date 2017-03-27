Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.87 #1 (Red Hat Linux))
 id 1csWPG-0005u7-JT
 for barebox@lists.infradead.org; Mon, 27 Mar 2017 15:18:09 +0000
From: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Mon, 27 Mar 2017 17:17:37 +0200
Message-Id: <20170327151741.9971-1-o.rempel@pengutronix.de>
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
Subject: [PATCH v4 0/4] upstream nvmem patches
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>

changes v1:
 - rebase against 2017.03.0

changes v2:
 - rename nvstore to snvs_lpgpr, the actual hw name.
 - patch DTs to provide snvs_lpgpr device

changes v3:
 - for local review

changes v4:
 - rebase against patch: "regmap: Implement syscon_node_to_regmap()"
 - port to regmap
 - make struct nvmem_config dynamically allocatable

Oleksij Rempel (2):
  dts: arm: imx6sl: provide snvs-lpgpr device
  dts: arm: imx6qdl: provide snvs-lpgpr device

Steffen Trumtrar (2):
  drivers: add nvmem framework from kernel
  nvmem: add snvs_lpgpr for freescale imx6

 drivers/Kconfig                |   1 +
 drivers/Makefile               |   1 +
 drivers/nvmem/Kconfig          |  18 +
 drivers/nvmem/Makefile         |  10 +
 drivers/nvmem/core.c           | 764 +++++++++++++++++++++++++++++++++++++++++
 drivers/nvmem/snvs_lpgpr.c     | 115 +++++++
 dts/src/arm/imx6qdl.dtsi       |   6 +
 dts/src/arm/imx6sl.dtsi        |   6 +
 include/linux/nvmem-consumer.h |  94 +++++
 include/linux/nvmem-provider.h |  49 +++
 10 files changed, 1064 insertions(+)
 create mode 100644 drivers/nvmem/Kconfig
 create mode 100644 drivers/nvmem/Makefile
 create mode 100644 drivers/nvmem/core.c
 create mode 100644 drivers/nvmem/snvs_lpgpr.c
 create mode 100644 include/linux/nvmem-consumer.h
 create mode 100644 include/linux/nvmem-provider.h

-- 
2.11.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
