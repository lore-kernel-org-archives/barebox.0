Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-pg1-x544.google.com ([2607:f8b0:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1giDdK-0006kV-Dv
 for barebox@lists.infradead.org; Sat, 12 Jan 2019 07:23:11 +0000
Received: by mail-pg1-x544.google.com with SMTP id g189so7276173pgc.5
 for <barebox@lists.infradead.org>; Fri, 11 Jan 2019 23:23:06 -0800 (PST)
From: Andrey Smirnov <andrew.smirnov@gmail.com>
Date: Fri, 11 Jan 2019 23:22:33 -0800
Message-Id: <20190112072234.21878-16-andrew.smirnov@gmail.com>
In-Reply-To: <20190112072234.21878-1-andrew.smirnov@gmail.com>
References: <20190112072234.21878-1-andrew.smirnov@gmail.com>
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
Subject: [PATCH v2 15/16] PCI: Convert ->res_start() to return resource_size_t
To: barebox@lists.infradead.org
Cc: Andrey Smirnov <andrew.smirnov@gmail.com>

On 64-bit machines int doesn't cover full address space, so convert
.res_start to both accept resource_size_t as a parameter and return it
as result.

Signed-off-by: Andrey Smirnov <andrew.smirnov@gmail.com>
---
 arch/mips/mach-malta/pci.c | 3 ++-
 drivers/pci/pci-mvebu.c    | 6 ++++--
 include/linux/pci.h        | 2 +-
 3 files changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/mips/mach-malta/pci.c b/arch/mips/mach-malta/pci.c
index 47c0e228a7..4561123d22 100644
--- a/arch/mips/mach-malta/pci.c
+++ b/arch/mips/mach-malta/pci.c
@@ -131,7 +131,8 @@ static int gt64xxx_pci0_pcibios_write(struct pci_bus *bus, unsigned int devfn,
 }
 
 /* function returns memory address for begin of pci resource */
-static int gt64xxx_res_start(struct pci_bus *bus, resource_size_t res_addr)
+static resource_size_t gt64xxx_res_start(struct pci_bus *bus,
+					 resource_size_t res_addr)
 {
 	return KSEG0ADDR(res_addr);
 }
diff --git a/drivers/pci/pci-mvebu.c b/drivers/pci/pci-mvebu.c
index 1c20f91544..c17ef3898b 100644
--- a/drivers/pci/pci-mvebu.c
+++ b/drivers/pci/pci-mvebu.c
@@ -145,11 +145,13 @@ static int mvebu_pcie_indirect_wr_conf(struct pci_bus *bus,
 	return PCIBIOS_SUCCESSFUL;
 }
 
-static int mvebu_pcie_res_start(struct pci_bus *bus, resource_size_t res_addr)
+static resource_size_t mvebu_pcie_res_start(struct pci_bus *bus,
+					    resource_size_t res_addr)
 {
 	struct mvebu_pcie *pcie = to_pcie(bus->host);
 
-	return (int)pcie->membase + (res_addr & (resource_size(&pcie->mem)-1));
+	return (resource_size_t)pcie->membase +
+		(res_addr & (resource_size(&pcie->mem) - 1));
 }
 
 static struct pci_ops mvebu_pcie_indirect_ops = {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 2c7acbdda9..c00a866a48 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -143,7 +143,7 @@ struct pci_ops {
 	int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
 
 	/* return memory address for pci resource */
-	int (*res_start)(struct pci_bus *bus, resource_size_t res_addr);
+	resource_size_t (*res_start)(struct pci_bus *bus, resource_size_t res_addr);
 };
 
 extern struct pci_ops *pci_ops;
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
