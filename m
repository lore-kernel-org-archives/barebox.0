Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlJw-0000oE-Mn
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:11 +0000
Received: by mail-pg1-x542.google.com with SMTP id z11so5541966pgu.0
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:19:50 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:28 -0800
Message-Id: <20181217051925.17582-9-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 08/65] PCI: designware: Make "num-lanes" an optional DT
 property
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit 907fce0902539ecde609e485eb2ecd7119a7a623

  Currently "num-lanes" is read in dw_pcie_host_init(), but it is only used
  if we call dw_pcie_setup_rc() while bringing up the link.  If the link has
  already been brought up by firmware, we need not call dw_pcie_setup_rc(),
  and "num-lanes" is unnecessary.

  Only complain about "num-lanes" if we actually need it and we didn't find a
  valid value.

  [bhelgaas: changelog]
  Signed-off-by: Gabriele Paoloni <gabriele.paoloni@huawei.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 12 +++++++-----
 1 file changed, 7 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index f47e5eb1e..977548f01 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -203,7 +203,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	struct resource *cfg_res;
 	u32 val, na, ns;
 	const __be32 *addrp;
-	int index;
+	int index, ret;
 
 	/* Find the address cell size and the number of cells in order to get
 	 * the untranslated address.
@@ -285,10 +285,9 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (!pp->va_cfg1_base)
 		pp->va_cfg1_base = (void __force *)(u32)pp->cfg1_base;
 
-	if (of_property_read_u32(np, "num-lanes", &pp->lanes)) {
-		dev_err(pp->dev, "Failed to parse the number of lanes\n");
-		return -EINVAL;
-	}
+	ret = of_property_read_u32(np, "num-lanes", &pp->lanes);
+	if (ret)
+		pp->lanes = 0;
 
 	if (pp->ops->host_init)
 		pp->ops->host_init(pp);
@@ -496,6 +495,9 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 	case 4:
 		val |= PORT_LINK_MODE_4_LANES;
 		break;
+       default:
+               dev_err(pp->dev, "num-lanes %u: invalid value\n", pp->lanes);
+               return;
 	}
 	dw_pcie_writel_rc(pp, val, PCIE_PORT_LINK_CONTROL);
 
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
