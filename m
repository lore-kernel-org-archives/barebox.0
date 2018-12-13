Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by casper.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLBA-0008Hj-9s
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:13:06 +0000
Received: by mail-pl1-x643.google.com with SMTP id b5so618740plr.4
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:12:54 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:11:35 -0800
Message-Id: <20181213071144.31691-50-andrew.smirnov@gmail.com>
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
Subject: [PATCH 49/58] PCI: dwc: designware: Test PCIE_ATU_ENABLE bit
 specifically
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit e9be4d78618af2e0d5592d9556cf0bba210cfd1a

  The ATU CTRL2 register is 32 bits, and bits other than the enable bit may
  be set.  To check whether the ATU is enabled or not, we should test the
  enable bit specifically.

  Signed-off-by: Jisheng Zhang <jszhang@marvell.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Joao Pinto <jpinto@synopsys.com>
  Acked-by: Jingoo Han <jingoohan1@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 2baf6c3b1..b365b1617 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -126,7 +126,7 @@ void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
 	 */
 	for (retries = 0; retries < LINK_WAIT_MAX_IATU_RETRIES; retries++) {
 		val = dw_pcie_readl_dbi(pci, PCIE_ATU_CR2);
-		if (val == PCIE_ATU_ENABLE)
+		if (val & PCIE_ATU_ENABLE)
 			return;
 
 		udelay(LINK_WAIT_IATU_MAX);
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
