Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1gYlJv-0000oD-Mp
 for barebox@lists.infradead.org; Mon, 17 Dec 2018 05:20:06 +0000
Received: by mail-pl1-x642.google.com with SMTP id g9so5544690plo.3
 for <barebox@lists.infradead.org>; Sun, 16 Dec 2018 21:19:49 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Sun, 16 Dec 2018 21:18:27 -0800
Message-Id: <20181217051925.17582-8-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 07/65] PCI: designware: Require config accesses to be
 naturally aligned
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

Port of a Linux commit b6b18f589e1ddbfbc31f72ea7fb8a723a2d10058

  Add sanity checks on "addr" input parameter in dw_pcie_cfg_read() and
  dw_pcie_cfg_write().  These checks make sure that accesses are aligned on
  their size, e.g., a 4-byte config access is aligned on a 4-byte boundary.

  [bhelgaas: changelog, set *val = 0 in failure case]
  Signed-off-by: Gabriele Paoloni <gabriele.paoloni@huawei.com>
  Signed-off-by: Bjorn Helgaas <bhelgaas@google.com>
  Acked-by: Pratyush Anand <pratyush.anand@gmail.com>

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 drivers/pci/pcie-designware.c | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/drivers/pci/pcie-designware.c b/drivers/pci/pcie-designware.c
index f46d33265..f47e5eb1e 100644
--- a/drivers/pci/pcie-designware.c
+++ b/drivers/pci/pcie-designware.c
@@ -76,6 +76,11 @@ static unsigned long global_io_offset;
 
 int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
 {
+	if ((uintptr_t)addr & (size - 1)) {
+		*val = 0;
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+	}
+
 	if (size == 4)
 		*val = readl(addr);
 	else if (size == 2)
@@ -92,6 +97,9 @@ int dw_pcie_cfg_read(void __iomem *addr, int size, u32 *val)
 
 int dw_pcie_cfg_write(void __iomem *addr, int size, u32 val)
 {
+	if ((uintptr_t)addr & (size - 1))
+		return PCIBIOS_BAD_REGISTER_NUMBER;
+
 	if (size == 4)
 		writel(val, addr);
 	else if (size == 2)
-- 
2.19.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
