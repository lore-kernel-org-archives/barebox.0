Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjVIP-0005yK-SF
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 20:27:05 +0000
Received: by mail-pf1-x441.google.com with SMTP id y126so1850058pfb.4
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2019 12:26:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Jan 2019 12:26:00 -0800
Message-Id: <20190115202601.24831-17-andrew.smirnov@gmail.com>
In-Reply-To: <20190115202601.24831-1-andrew.smirnov@gmail.com>
References: <20190115202601.24831-1-andrew.smirnov@gmail.com>
MIME-Version: 1.0
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH v3 16/17] PCI: imx6: Drop unnecessary root_bus_nr setting
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 39f712e989c5e591c58b65b62981b85027ba3103

  Function dw_pcie_host_init() already initializes the root_bus_nr field
  of 'struct pcie_port', so the -1 assignment prior to calling
  dw_pcie_host_init() in platform specific driver is not really needed.
  Drop it.

  Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
  Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>
  Cc: Richard Zhu <hongxing.zhu@nxp.com>
  Cc: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 9f3c9b69a5..9aa307aabf 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -581,7 +581,6 @@ static int imx6_add_pcie_port(struct imx6_pcie *imx6_pcie,
 	struct pcie_port *pp = &pci->pp;
 	int ret;
 
-	pp->root_bus_nr = -1;
 	pp->ops = &imx6_pcie_host_ops;
 
 	ret = dw_pcie_host_init(pp);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
