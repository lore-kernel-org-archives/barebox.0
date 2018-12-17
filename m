Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKl-0005HE-O5
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:52 +0000
Received: by mail-pl1-x642.google.com with SMTP id u6so5539998plm.8
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:41 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:06 -0800
Message-Id: <20181217051925.17582-47-andrew.smirnov@gmail.com>
In-Reply-To: <20181217051925.17582-1-andrew.smirnov@gmail.com>
References: <20181217051925.17582-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 46/65] PCI: imx6: Remove redundant "Link never came up"
 message
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
