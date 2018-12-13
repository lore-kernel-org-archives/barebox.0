Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gXLAH-0005YF-0c
 for barebox@lists.infradead.org; Thu, 13 Dec 2018 07:12:14 +0000
Received: by mail-pf1-x442.google.com with SMTP id i12so636671pfo.7
 for <barebox@lists.infradead.org>; Wed, 12 Dec 2018 23:11:58 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Wed, 12 Dec 2018 23:10:51 -0800
Message-Id: <20181213071144.31691-6-andrew.smirnov@gmail.com>
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
Subject: [PATCH 05/58] PCI: designware: Use exact access size in
 dw_pcie_cfg_read()
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit c003ca99632e1783466f459033874a0e1e31457b

  dw_pcie_cfg_write() uses the exact 8-, 16-, or 32-bit access size
  requested, but dw_pcie_cfg_read() previously performed a 32-bit read and
  masked out the bits requested.

  Use the exact access size in dw_pcie_cfg_read().  For example, if we want
  an 8-bit read, use readb() instead of using readl() and masking out the 8
  bits we need.  This makes it symmetric with dw_pcie_cfg_write().

  [bhelgaas: split into separate patch, set *val = 0 in failure case]
  Signed-off-by: Gabriele Paoloni <gabriele.paoloni@huawei.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>

NOTE: Original Linux commit incorrectly handles the case of single
byte read by doing

       else if (size == 1)
               *val = readb(addr + (where & 1));

instead of

       else if (size == 1)
               *val = readb(addr + (where & 3));

which would be symmetric with what's done in dw_pcie_cfg_write(). This
was most likely overlooked since commit that follow change the
signature of the function, remove 'where' as argument completely,
inadvertenly fixing the problem.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 14 ++++++++------
 1 file changed, 8 insertions(+), 6 deletions(-)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index 547d402a7..bda85c30e 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -76,14 +76,16 @@ static unsigned long global_io_offset;
 
 int dw_pcie_cfg_read(void __iomem *addr, int where, int size, u32 *val)
 {
-	*val = readl(addr);
-
-	if (size == 1)
-		*val = (*val >> (8 * (where & 3))) & 0xff;
+	if (size == 4)
+		*val = readl(addr);
 	else if (size == 2)
-		*val = (*val >> (8 * (where & 3))) & 0xffff;
-	else if (size != 4)
+		*val = readw(addr + (where & 2));
+	else if (size == 1)
+		*val = readb(addr + (where & 3));
+	else {
+		*val = 0;
 		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
 
 	return PCIBIOS_SUCCESSFUL;
 }
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
