Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x444.google.com ([2607:f8b0:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAs-0006EX-GO
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:00 +0000
Received: by mail-pf1-x444.google.com with SMTP id g62so625696pfd.12
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:43 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:27 -0800
Message-Id: <20181213071144.31691-42-andrew.smirnov@gmail.com>
In-Reply-To: <20181213071144.31691-1-andrew.smirnov@gmail.com>
References: <20181213071144.31691-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH 41/58] PCI: imx6: Remove redundant "Link never came up" message
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit caf3f562e1161a86bd48a4c4c33af89d3693c658

  When a PCI card is not connected, the following messages are seen on mx6:

    imx6q-pcie 1ffc000.pcie: phy link never came up
    imx6q-pcie 1ffc000.pcie: Link never came up

  The first one comes from the pcie-designware.c core file, so remove
  the redundant one from the imx6 driver.

  Signed-off-by: Fabio Estevam <fabio.estevam@nxp.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index d72abe3a3..a9a4be927 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -460,10 +460,8 @@ static int imx6_pcie_establish_link(struct imx6_pcie *imx6_pcie)
 	writel(gpr12, imx6_pcie->iomuxc_gpr + IOMUXC_GPR12);
 
 	ret = imx6_pcie_wait_for_link(imx6_pcie);
-	if (ret) {
-		dev_info(dev, "Link never came up\n");
+	if (ret)
 		goto err_reset_phy;
-	}
 
 
 	if (imx6_pcie->link_gen == 2) {
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
