Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gjVIO-0005wk-Nm
 for barebox@lists.infradead.org; Tue, 15 Jan 2019 20:27:04 +0000
Received: by mail-pf1-x442.google.com with SMTP id i12so1842480pfo.7
 for <barebox@lists.infradead.org>; Tue, 15 Jan 2019 12:26:48 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Tue, 15 Jan 2019 12:25:59 -0800
Message-Id: <20190115202601.24831-16-andrew.smirnov@gmail.com>
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
Subject: [PATCH v3 15/17] PCI: imx6: Fix spelling mistake: "contol" ->
 "control"
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 7221547e55b7929e4d46983f6f3ca15f36ee4dac

  Trivial fix to spelling mistake in dev_err message

  Signed-off-by: Colin Ian King <colin.king@canonical.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Richard Zhu <hongxing.Zhu@nxp.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 6bdc9465db..9f3c9b69a5 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -655,13 +655,13 @@ static int imx6_pcie_probe(struct device_d *dev)
 
 		imx6_pcie->pciephy_reset = reset_control_get(dev, "pciephy");
 		if (IS_ERR(imx6_pcie->pciephy_reset)) {
-			dev_err(dev, "Failed to get PCIEPHY reset contol\n");
+			dev_err(dev, "Failed to get PCIEPHY reset control\n");
 			return PTR_ERR(imx6_pcie->pciephy_reset);
 		}
 
 		imx6_pcie->apps_reset = reset_control_get(dev, "apps");
 		if (IS_ERR(imx6_pcie->apps_reset)) {
-			dev_err(dev, "Failed to get PCIE APPS reset contol\n");
+			dev_err(dev, "Failed to get PCIE APPS reset control\n");
 			return PTR_ERR(imx6_pcie->apps_reset);
 		}
 		break;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
