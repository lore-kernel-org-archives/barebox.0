Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iZvNO-0005pO-Sw
 for barebox@lists.infradead.org; Wed, 27 Nov 2019 11:20:56 +0000
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Wed, 27 Nov 2019 12:20:41 +0100
Message-Id: <20191127112051.9427-3-s.hauer@pengutronix.de>
In-Reply-To: <20191127112051.9427-1-s.hauer@pengutronix.de>
References: <20191127112051.9427-1-s.hauer@pengutronix.de>
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
Subject: [PATCH 02/12] PCI: dwc: Make use of IS_ALIGNED()
To: Barebox List <barebox@lists.infradead.org>

Port of Linux commit 4f8bbd2f8e7c4f3112506bf7362aed3a5495d51b

    Make the intent a bit more clear as well as get rid of explicit
    arithmetic by using IS_ALIGNED() to determine if "addr" is aligned to
    "size". No functional change intended.

    Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
    Signed-off-by: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Acked-by: Gustavo Pimentel <gustavo.pimentel@synopsys.com>
    Cc: Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>
    Cc: Bjorn Helgaas <bhelgaas@google.com>
    Cc: Fabio Estevam <fabio.estevam@nxp.com>
    Cc: Chris Healy <cphealy@gmail.com>
    Cc: Lucas Stach <l.stach@pengutronix.de>
    Cc: Leonard Crestez <leonard.crestez@nxp.com>
    Cc: "A.s. Dong" <aisheng.dong@nxp.com>
    Cc: Richard Zhu <hongxing.zhu@nxp.com>
    Cc: linux-imx@nxp.com
    Cc: linux-arm-kernel@lists.infradead.org
    Cc: linux-kernel@vger.kernel.org
    Cc: linux-pci@vger.kernel.org

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 4fe99b1ffb..5747704cd5 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -29,7 +29,7 @@
 
 int dw_pcie_read(void __iomem *addr, int size, u32 *val)
 {
-	if ((uintptr_t)addr & (size - 1)) {
+	if (!IS_ALIGNED((uintptr_t)addr, size)) {
 		*val = 0;
 		return PCIBIOS_BAD_REGISTER_NUMBER;
 	}
@@ -50,7 +50,7 @@ int dw_pcie_read(void __iomem *addr, int size, u32 *val)
 
 int dw_pcie_write(void __iomem *addr, int size, u32 val)
 {
-	if ((uintptr_t)addr & (size - 1))
+	if (!IS_ALIGNED((uintptr_t)addr, size))
 		return PCIBIOS_BAD_REGISTER_NUMBER;
 
 	if (size == 4)
-- 
2.24.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
