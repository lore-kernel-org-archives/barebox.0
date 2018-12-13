Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by merlin.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLBI-0001NJ-4e
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:12 +0000
Received: by mail-pg1-x544.google.com with SMTP id y4so596054pgc.12
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:13:01 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:41 -0800
Message-Id: <20181213071144.31691-56-andrew.smirnov@gmail.com>
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
Subject: [PATCH 55/58] PCI: dwc: Enable write permission for Class Code,
 Interrupt Pin updates
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit d91dfe5054d4f2c424bd70ca34fc3328ee179f20

  dw_pcie_setup_rc() contains fixes to update the Class Code and Interrupt
  Pin registers, but the fixes don't actually work because these registers
  are read-only.

  Enable write permission before updating the Class Code and Interrupt
  Pin.

  Signed-off-by: Hou Zhiqiang <Zhiqiang.Hou@nxp.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>
  Acked-by: Roy Zang <tie-fei.zang@freescale.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware-host.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 9a9d4f9ae..27d574da6 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -388,8 +388,12 @@ void dw_pcie_setup_rc(struct pcie_port *pp)
 
 	dw_pcie_wr_own_conf(pp, PCI_BASE_ADDRESS_0, 4, 0);
 
-	/* Program correct class for RC */
+	/* Enable write permission for the DBI read-only register */
+	dw_pcie_dbi_ro_wr_en(pci);
+        /* Program correct class for RC */
 	dw_pcie_wr_own_conf(pp, PCI_CLASS_DEVICE, 2, PCI_CLASS_BRIDGE_PCI);
+	/* Better disable write permission right after the update */
+	dw_pcie_dbi_ro_wr_dis(pci);
 
 	dw_pcie_rd_own_conf(pp, PCIE_LINK_WIDTH_SPEED_CONTROL, 4, &val);
 	val |= PORT_LOGIC_SPEED_CHANGE;
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
