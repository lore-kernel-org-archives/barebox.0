Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlKw-00033i-DU
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:21:30 +0000
Received: by mail-pf1-x443.google.com with SMTP id q1so5762635pfi.5
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:20:52 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:19:15 -0800
Message-Id: <20181217051925.17582-56-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 55/65] PCI: dwc: designware: Test PCIE_ATU_ENABLE bit
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
index 5c476e815..d2d4fe34a 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -183,7 +183,7 @@ void dw_pcie_prog_outbound_atu(struct dw_pcie *pci, int index,
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
