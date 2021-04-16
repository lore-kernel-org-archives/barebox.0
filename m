Delivery-date: Fri, 16 Apr 2021 08:27:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHwy-0000oi-80
	for lore@lore.pengutronix.de; Fri, 16 Apr 2021 08:27:32 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lXHwx-0007fs-44
	for lore@pengutronix.de; Fri, 16 Apr 2021 08:27:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=M+Hb0V8LPWoclfeNipkJWXisUVIGmwKRdvy2TXprVhA=; b=dJOdh5Ln5DfQAtXY7Y0xxgOe3
	t1ywa3OnkfL+KyztOkw2lliXetFyyhGRiK7t2xk8jAOzYIFE6iJ14MjvGzOY5uEYoYIxdCo/UhPJa
	6KDkRlA2rJebqgshIPX8KWe0vQXrUXhs75GpGNOMU9VzlLLNe3Orxk8ksqe4pMIoOBl1U/GqQdwwI
	fITu9DPBA51eOGk1O5COZUFGFL5TZTYfKNBpxi7ZPSdb/JeAOLvEKXLP3QN4NU009HmMXhyizKbwQ
	iG8+LETMMX9VbzyCUPPrJSDO6jnDWSpO8a+s9u8EOaGwXy84MTb5b8ehHtQakbuzJuqmk/7z9LNJU
	8xYwEYG3A==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lXHvd-0012AU-Qf; Fri, 16 Apr 2021 06:26:13 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuP-0011qO-4F
 for barebox@desiato.infradead.org; Fri, 16 Apr 2021 06:24:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=l7Gt83h9bOd7ho8V5d8cWaH5FW9zdMISWPDIeAK+xHA=; b=R5pikVKV5EwsMZUGzlUG8VEd8d
 +GhtI9Z5dyA0111BAo2oCKSjopszvgd5YXvPJtd8SNEf6bPslPOktnC7J10ZChxK6fLPZeYHyf4GI
 +3URESQZntXZQpjbGPNn/L09kWOZAAsabbVqb3Zs0G7XsdEG3KeeLYatCvmB3ayGGJytE0uAyj92s
 zJMP49mGtal7F+g4LIksG1zziaUrBcQ4Etb0OeRNejAXqINdKR01WIQKEzkcl4UIU19D4Vp6AJh3M
 zbEQdWhWF7KlGHPOQnhumVJKMlFjSs1V1OuIzgMmizhS/dfBQnnuCqyg3qqkB2I5wM9NEV3JuavYf
 Uvx7K5iQ==;
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lXHuK-0097Ed-Ar
 for barebox@lists.infradead.org; Fri, 16 Apr 2021 06:24:51 +0000
X-Originating-IP: 83.135.94.168
Received: from geraet.fritz.box (unknown [83.135.94.168])
 (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id EAED21C000A;
 Fri, 16 Apr 2021 06:24:43 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 16 Apr 2021 08:24:34 +0200
Message-Id: <20210416062436.332665-3-ahmad@a3f.at>
X-Mailer: git-send-email 2.31.0
In-Reply-To: <20210416062436.332665-1-ahmad@a3f.at>
References: <20210416062436.332665-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210415_232448_666094_FB71ADA8 
X-CRM114-Status: GOOD (  21.15  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.34
Precedence: list
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] PCI: support PCI BIOS preassigned buses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

When running under UEFI, barebox should no redo PCI enumeration,
because the UEFI implementation will likely already have drivers
that won't cope with e.g. BAR addresses changing.

The user-visible effect of this is that likely the framebuffer will
stop working because the UEFI driver won't be able to access it
any longer.

Support this configuration by changing the PCI code to consult the
new pcibios_assign_all_busses().

When it's true, there is no change to previous behavior.
When it's false, reconfiguration is omitted and instead current
configuration is read back from the bus.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/include/asm/pci.h  |   7 +++
 arch/mips/include/asm/pci.h |   7 +++
 drivers/pci/pci.c           | 106 +++++++++++++++++++++++-------------
 include/linux/pci.h         |   3 +
 4 files changed, 86 insertions(+), 37 deletions(-)
 create mode 100644 arch/arm/include/asm/pci.h
 create mode 100644 arch/mips/include/asm/pci.h

diff --git a/arch/arm/include/asm/pci.h b/arch/arm/include/asm/pci.h
new file mode 100644
index 000000000000..d7419cabe7ef
--- /dev/null
+++ b/arch/arm/include/asm/pci.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_PCI_H
+#define __ASM_PCI_H
+
+#define pcibios_assign_all_busses()	1
+
+#endif
diff --git a/arch/mips/include/asm/pci.h b/arch/mips/include/asm/pci.h
new file mode 100644
index 000000000000..d7419cabe7ef
--- /dev/null
+++ b/arch/mips/include/asm/pci.h
@@ -0,0 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_PCI_H
+#define __ASM_PCI_H
+
+#define pcibios_assign_all_busses()	1
+
+#endif
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 945a983387ed..950c5094476c 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -51,25 +51,27 @@ void register_pci_controller(struct pci_controller *hose)
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
 	bus->resource[PCI_BUS_RESOURCE_MEM_PREF] = hose->mem_pref_resource;
 	bus->resource[PCI_BUS_RESOURCE_IO] = hose->io_resource;
-	bus->number = bus_index++;
 
-	if (hose->set_busno)
-		hose->set_busno(hose, bus->number);
-
-	if (bus->resource[PCI_BUS_RESOURCE_MEM])
-		last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
-	else
-		last_mem = 0;
-
-	if (bus->resource[PCI_BUS_RESOURCE_MEM_PREF])
-		last_mem_pref = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
-	else
-		last_mem_pref = 0;
-
-	if (bus->resource[PCI_BUS_RESOURCE_IO])
-		last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
-	else
-		last_io = 0;
+	if (pcibios_assign_all_busses()) {
+		bus->number = bus_index++;
+		if (hose->set_busno)
+			hose->set_busno(hose, bus->number);
+
+		if (bus->resource[PCI_BUS_RESOURCE_MEM])
+			last_mem = bus->resource[PCI_BUS_RESOURCE_MEM]->start;
+		else
+			last_mem = 0;
+
+		if (bus->resource[PCI_BUS_RESOURCE_MEM_PREF])
+			last_mem_pref = bus->resource[PCI_BUS_RESOURCE_MEM_PREF]->start;
+		else
+			last_mem_pref = 0;
+
+		if (bus->resource[PCI_BUS_RESOURCE_IO])
+			last_io = bus->resource[PCI_BUS_RESOURCE_IO]->start;
+		else
+			last_io = 0;
+	}
 
 	pci_scan_bus(bus);
 	pci_bus_register_devices(bus);
@@ -156,13 +158,16 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 	u8 cmd;
 
 	pci_read_config_byte(dev, PCI_COMMAND, &cmd);
-	pci_write_config_byte(dev, PCI_COMMAND,
-			      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
+
+	if (pcibios_assign_all_busses())
+		pci_write_config_byte(dev, PCI_COMMAND,
+				      cmd & ~(PCI_COMMAND_IO | PCI_COMMAND_MEMORY));
+
 
 	for (bar = 0; bar < max_bar; bar++) {
 		const int pci_base_address_0 = PCI_BASE_ADDRESS_0 + bar * 4;
 		const int pci_base_address_1 = PCI_BASE_ADDRESS_1 + bar * 4;
-		resource_size_t *last_addr;
+		resource_size_t *last_addr, start;
 		u32 orig, mask, size;
 		unsigned long flags;
 		const char *kind;
@@ -207,32 +212,47 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		pr_debug("pbar%d: mask=%08x %s %d bytes\n", bar, mask, kind,
 			 size);
 
-		if (ALIGN(*last_addr, size) + size >
-		    dev->bus->resource[busres]->end) {
-			pr_debug("BAR does not fit within bus %s res\n", kind);
-			return;
+		if (pcibios_assign_all_busses()) {
+			if (ALIGN(*last_addr, size) + size >
+			    dev->bus->resource[busres]->end) {
+				pr_debug("BAR does not fit within bus %s res\n", kind);
+				return;
+			}
+
+			*last_addr = ALIGN(*last_addr, size);
+			pci_write_config_dword(dev, pci_base_address_0, *last_addr);
+			if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64)
+				pci_write_config_dword(dev, pci_base_address_1, 0);
+			start = *last_addr;
+			*last_addr += size;
+		} else {
+			u32 tmp;
+			pci_read_config_dword(dev, pci_base_address_0, &tmp);
+			tmp &= mask & PCI_BASE_ADDRESS_SPACE_IO ? PCI_BASE_ADDRESS_IO_MASK
+				                                : PCI_BASE_ADDRESS_MEM_MASK;
+			start = tmp;
+
+			if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
+				pci_read_config_dword(dev, pci_base_address_1, &tmp);
+				start |= (u64)tmp << 32;
+			}
 		}
 
-		*last_addr = ALIGN(*last_addr, size);
-		pci_write_config_dword(dev, pci_base_address_0, *last_addr);
 		dev->resource[bar].flags = flags;
-		dev->resource[bar].start = *last_addr;
-		dev->resource[bar].end = dev->resource[bar].start + size - 1;
-
-		pr_debug("pbar%d: allocated at %pa\n", bar, last_addr);
-
-		*last_addr += size;
+		dev->resource[bar].start = start;
+		dev->resource[bar].end = start + size - 1;
 
 		if (mask & PCI_BASE_ADDRESS_MEM_TYPE_64) {
 			dev->resource[bar].flags |= IORESOURCE_MEM_64;
-			pci_write_config_dword(dev, pci_base_address_1, 0);
 			bar++;
 		}
 	}
 
 	pci_fixup_device(pci_fixup_header, dev);
 
-	pci_write_config_byte(dev, PCI_COMMAND, cmd);
+	if (pcibios_assign_all_busses())
+		pci_write_config_byte(dev, PCI_COMMAND, cmd);
+
 	list_add_tail(&dev->bus_list, &dev->bus->devices);
 }
 
@@ -240,6 +260,12 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 {
 	u16 cmdstat;
 
+	if (!pcibios_assign_all_busses()) {
+		pci_read_config_byte(dev, PCI_PRIMARY_BUS, &dev->bus->number);
+		pci_read_config_byte(dev, PCI_SECONDARY_BUS, &dev->subordinate->number);
+		return;
+	}
+
 	pci_read_config_word(dev, PCI_COMMAND, &cmdstat);
 
 	/* Configure bus number registers */
@@ -283,6 +309,9 @@ static void prescan_setup_bridge(struct pci_dev *dev)
 
 static void postscan_setup_bridge(struct pci_dev *dev)
 {
+	if (!pcibios_assign_all_busses())
+		return;
+
 	/* limit subordinate to last used bus number */
 	pci_write_config_byte(dev, PCI_SUBORDINATE_BUS, bus_index - 1);
 
@@ -416,8 +445,11 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 				bus->resource[PCI_BUS_RESOURCE_IO];
 
 			child_bus->parent = &dev->dev;
-			child_bus->number = bus_index++;
-			child_bus->primary = bus->number;
+
+			if (pcibios_assign_all_busses()) {
+				child_bus->number = bus_index++;
+				child_bus->primary = bus->number;
+			}
 			list_add_tail(&child_bus->node, &bus->children);
 			dev->subordinate = child_bus;
 
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 0c8fed7c8e0d..486d4251d42a 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -29,6 +29,9 @@
 
 #include <linux/pci_ids.h>
 
+/* Include architecture-dependent settings and functions */
+
+#include <asm/pci.h>
 #define PCI_ANY_ID (~0)
 
 #define PCI_FIND_CAP_TTL	48
-- 
2.31.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

