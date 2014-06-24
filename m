Return-path: <barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org>
Received: from mail-we0-x229.google.com ([2a00:1450:400c:c03::229])
 by bombadil.infradead.org with esmtps (Exim 4.80.1 #2 (Red Hat Linux))
 id 1WzPB4-00083m-55
 for barebox@lists.infradead.org; Tue, 24 Jun 2014 11:46:20 +0000
Received: by mail-we0-f169.google.com with SMTP id t60so201858wes.28
 for <barebox@lists.infradead.org>; Tue, 24 Jun 2014 04:45:55 -0700 (PDT)
From: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Date: Tue, 24 Jun 2014 13:45:34 +0200
Message-Id: <1403610336-5949-2-git-send-email-sebastian.hesselbarth@gmail.com>
In-Reply-To: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
References: <1403610336-5949-1-git-send-email-sebastian.hesselbarth@gmail.com>
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
Errors-To: barebox-bounces+u.kleine-koenig=pengutronix.de@lists.infradead.org
Subject: [PATCH 1/3] drivers: of: import PCI bus specific translator
To: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
Cc: barebox@lists.infradead.org

DT PCI address translation needs a special handling. This imports
the corresponding translator into of/address.c but makes it selectable
through Kconfig. Compared to the Linux version, we don't check for
struct device_node's type which does not exist on Barebox but directly
for device_type property set to "pci".

Signed-off-by: Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>
---
Cc: barebox@lists.infradead.org
---
 drivers/of/Kconfig   |  3 ++
 drivers/of/address.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 2 files changed, 86 insertions(+)

diff --git a/drivers/of/Kconfig b/drivers/of/Kconfig
index c4525cbffcc4..45f77a759fd4 100644
--- a/drivers/of/Kconfig
+++ b/drivers/of/Kconfig
@@ -15,6 +15,9 @@ config OFDEVICE
 	select DTC
 	bool "Enable probing of devices from the devicetree"
 
+config OF_ADDRESS_PCI
+	bool
+
 config OF_NET
 	depends on NET
 	def_bool y
diff --git a/drivers/of/address.c b/drivers/of/address.c
index 4cacdb1cf78e..b3cbb154539a 100644
--- a/drivers/of/address.c
+++ b/drivers/of/address.c
@@ -108,11 +108,94 @@ static unsigned int of_bus_default_get_flags(const __be32 *addr)
 	return IORESOURCE_MEM;
 }
 
+#ifdef CONFIG_OF_ADDRESS_PCI
+/*
+ * PCI bus specific translator
+ */
+
+static int of_bus_pci_match(struct device_node *np)
+{
+	return !of_property_match_string(np, "device_type", "pci");
+}
+
+static void of_bus_pci_count_cells(struct device_node *np,
+				   int *addrc, int *sizec)
+{
+	if (addrc)
+		*addrc = 3;
+	if (sizec)
+		*sizec = 2;
+}
+
+static unsigned int of_bus_pci_get_flags(const __be32 *addr)
+{
+	unsigned int flags = 0;
+	u32 w = be32_to_cpup(addr);
+
+	switch ((w >> 24) & 0x03) {
+	case 0x01:
+		flags |= IORESOURCE_IO;
+		break;
+	case 0x02: /* 32 bits */
+	case 0x03: /* 64 bits */
+		flags |= IORESOURCE_MEM;
+		break;
+	}
+	if (w & 0x40000000)
+		flags |= IORESOURCE_PREFETCH;
+	return flags;
+}
+
+static u64 of_bus_pci_map(__be32 *addr, const __be32 *range, int na, int ns,
+		int pna)
+{
+	u64 cp, s, da;
+	unsigned int af, rf;
+
+	af = of_bus_pci_get_flags(addr);
+	rf = of_bus_pci_get_flags(range);
+
+	/* Check address type match */
+	if ((af ^ rf) & (IORESOURCE_MEM | IORESOURCE_IO))
+		return OF_BAD_ADDR;
+
+	/* Read address values, skipping high cell */
+	cp = of_read_number(range + 1, na - 1);
+	s  = of_read_number(range + na + pna, ns);
+	da = of_read_number(addr + 1, na - 1);
+
+	pr_debug("OF: PCI map, cp=%llx, s=%llx, da=%llx\n",
+		 (unsigned long long)cp, (unsigned long long)s,
+		 (unsigned long long)da);
+
+	if (da < cp || da >= (cp + s))
+		return OF_BAD_ADDR;
+	return da - cp;
+}
+
+static int of_bus_pci_translate(__be32 *addr, u64 offset, int na)
+{
+	return of_bus_default_translate(addr + 1, offset, na - 1);
+}
+#endif /* CONFIG_OF_ADDRESS_PCI */
+
 /*
  * Array of bus specific translators
  */
 
 static struct of_bus of_busses[] = {
+#ifdef CONFIG_OF_ADDRESS_PCI
+	/* PCI */
+	{
+		.name = "pci",
+		.addresses = "assigned-addresses",
+		.match = of_bus_pci_match,
+		.count_cells = of_bus_pci_count_cells,
+		.map = of_bus_pci_map,
+		.translate = of_bus_pci_translate,
+		.get_flags = of_bus_pci_get_flags,
+	},
+#endif
 	/* Default */
 	{
 		.name = "default",
-- 
2.0.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox
