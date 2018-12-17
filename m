Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x441.google.com ([2607:f8b0:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlL8-0003Gz-Gz
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:42 +0000
Received: by mail-pf1-x441.google.com with SMTP id c72so5760264pfc.6
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:21:04 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:25 -0800
Message-Id: <20181217051925.17582-66-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 65/65] PCI: dwc: Constify dw_pcie_host_ops structures
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 4ab2e7c0df6b8bbc6c8ea1617b737d33c2510012

  The dw_pcie_host_ops structures are never modified.  Constify these
  structures such that these can be write-protected.

  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>
  Acked-by: Kishon Vijay Abraham I <kishon@ti.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pci-imx6.c        | 2 +-
 drivers/pci/pcie-designware.h | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pci-imx6.c b/drivers/pci/pci-imx6.c
index 1807f29c9..38e002a1c 100644
--- a/drivers/pci/pci-imx6.c
+++ b/drivers/pci/pci-imx6.c
@@ -501,7 +501,7 @@ static const struct dw_pcie_ops dw_pcie_ops = {
        .link_up = imx6_pcie_link_up,
 };
 
-static struct dw_pcie_host_ops imx6_pcie_host_ops = {
+static const struct dw_pcie_host_ops imx6_pcie_host_ops = {
 	.host_init = imx6_pcie_host_init,
 };
 
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 0f1659319..058a0acbb 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -129,7 +129,7 @@ struct pcie_port {
 	struct resource		mem;
 	struct resource		busn;
 	int			irq;
-	struct dw_pcie_host_ops	*ops;
+	const struct dw_pcie_host_ops	*ops;
 	struct pci_controller	pci;
 };
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
