Delivery-date: Tue, 19 Dec 2023 13:58:07 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfj-004YJI-35
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 13:58:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfi-0007zf-QD
	for lore@pengutronix.de; Tue, 19 Dec 2023 13:58:07 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uI62fOMgCXJ1Wo/+6G8RFBzAPXxxvIdYr6aIgwgsv7I=; b=Yuju8L171J77drcTq0Xl9chbKI
	HOsLZRgfBrXkxJwXHPa4bja4v1gXCEHAqDfzWYUPrD9MGjty9Fqdt4nJ0TgqUlihx4bXXsrbFwCxI
	31dmACek2QQFkBM0sYVly/uSolZqMjCAwzIa2mDBQQD1k5G8L9MxHPylMdapoS0gqOwYBOpnmNbG5
	mUUNSruCNWyqmlqjPzl+SyCleCt0rorqFKbddaAm+F9buXqlhlcPO8IPakM5KsMkygYW882mAujww
	9z3l+T18xOk2T350sQWJ+dvXqDtAhYOszt6sCLzT3ieCnTWl7VozPhMXVIB4dyQoxZ59Vl07YdvDs
	uBW0ujOg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeR-00E6bM-0i;
	Tue, 19 Dec 2023 12:56:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeG-00E6PE-1E
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 12:56:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeC-00077H-3Z; Tue, 19 Dec 2023 13:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeA-0001KH-FV; Tue, 19 Dec 2023 13:56:31 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-0000yO-1c;
	Tue, 19 Dec 2023 13:56:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 13:56:29 +0100
Message-Id: <20231219125630.3684-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219125630.3684-1-s.hauer@pengutronix.de>
References: <20231219125630.3684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045636_641329_256DDCE5 
X-CRM114-Status: GOOD (  25.78  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 5/6] pci: implement Enhanced Allocation support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some PCI devices have their base addresses not defined in the BARs,
but instead have them defined in Enhanced Allocation structures.

Add support for these Enhanced Allocation structures, taken directly
from the Linux Kernel.

Motivation for adding this is the LS1028a SoC which uses Enhanced
Allocation for the Ethernet Subsystem which comes as an integrated
Endpoint Root Complex.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c        | 186 +++++++++++++++++++++++++++++++++++++++
 include/linux/pci_regs.h |  49 ++++++++++-
 2 files changed, 234 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 0211fc0081..a3e7e70871 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -4,6 +4,7 @@
 #include <common.h>
 #include <linux/sizes.h>
 #include <linux/pci.h>
+#include <linux/bitfield.h>
 
 static unsigned int pci_scan_bus(struct pci_bus *bus);
 
@@ -152,6 +153,189 @@ static u32 pci_size(u32 base, u32 maxbase, u32 mask)
 	return size + 1;
 }
 
+static unsigned long pci_ea_flags(struct pci_dev *dev, u8 prop)
+{
+	unsigned long flags = IORESOURCE_PCI_FIXED;
+
+	switch (prop) {
+	case PCI_EA_P_MEM:
+	case PCI_EA_P_VF_MEM:
+		flags |= IORESOURCE_MEM;
+		break;
+	case PCI_EA_P_MEM_PREFETCH:
+	case PCI_EA_P_VF_MEM_PREFETCH:
+		flags |= IORESOURCE_MEM | IORESOURCE_PREFETCH;
+		break;
+	case PCI_EA_P_IO:
+		flags |= IORESOURCE_IO;
+		break;
+	default:
+		return 0;
+	}
+
+	return flags;
+}
+
+static struct resource *pci_ea_get_resource(struct pci_dev *dev, u8 bei,
+					    u8 prop)
+{
+	if (bei <= PCI_EA_BEI_BAR5 && prop <= PCI_EA_P_IO)
+		return &dev->resource[bei];
+	else if (bei == PCI_EA_BEI_ROM)
+		return &dev->resource[PCI_ROM_RESOURCE];
+	else
+		return NULL;
+}
+
+/* Read an Enhanced Allocation (EA) entry */
+static int pci_ea_read(struct pci_dev *dev, int offset)
+{
+	struct resource *res;
+	int ent_size, ent_offset = offset;
+	resource_size_t start, end;
+	unsigned long flags;
+	u32 dw0, bei, base, max_offset;
+	u8 prop;
+	bool support_64 = (sizeof(resource_size_t) >= 8);
+
+	pci_read_config_dword(dev, ent_offset, &dw0);
+	ent_offset += 4;
+
+	/* Entry size field indicates DWORDs after 1st */
+	ent_size = (FIELD_GET(PCI_EA_ES, dw0) + 1) << 2;
+
+	if (!(dw0 & PCI_EA_ENABLE)) /* Entry not enabled */
+		goto out;
+
+	bei = FIELD_GET(PCI_EA_BEI, dw0);
+	prop = FIELD_GET(PCI_EA_PP, dw0);
+
+	/*
+	 * If the Property is in the reserved range, try the Secondary
+	 * Property instead.
+	 */
+	if (prop > PCI_EA_P_BRIDGE_IO && prop < PCI_EA_P_MEM_RESERVED)
+		prop = FIELD_GET(PCI_EA_SP, dw0);
+	if (prop > PCI_EA_P_BRIDGE_IO)
+		goto out;
+
+	res = pci_ea_get_resource(dev, bei, prop);
+	if (!res) {
+		dev_dbg(&dev->dev, "Unsupported EA entry BEI: %u\n", bei);
+		goto out;
+	}
+
+	flags = pci_ea_flags(dev, prop);
+	if (!flags) {
+		dev_err(&dev->dev, "Unsupported EA properties: %#x\n", prop);
+		goto out;
+	}
+
+	/* Read Base */
+	pci_read_config_dword(dev, ent_offset, &base);
+	start = (base & PCI_EA_FIELD_MASK);
+	ent_offset += 4;
+
+	/* Read MaxOffset */
+	pci_read_config_dword(dev, ent_offset, &max_offset);
+	ent_offset += 4;
+
+	/* Read Base MSBs (if 64-bit entry) */
+	if (base & PCI_EA_IS_64) {
+		u32 base_upper;
+
+		pci_read_config_dword(dev, ent_offset, &base_upper);
+		ent_offset += 4;
+
+		flags |= IORESOURCE_MEM_64;
+
+		/* entry starts above 32-bit boundary, can't use */
+		if (!support_64 && base_upper)
+			goto out;
+
+		if (support_64)
+			start |= ((u64)base_upper << 32);
+	}
+
+	end = start + (max_offset | 0x03);
+
+	/* Read MaxOffset MSBs (if 64-bit entry) */
+	if (max_offset & PCI_EA_IS_64) {
+		u32 max_offset_upper;
+
+		pci_read_config_dword(dev, ent_offset, &max_offset_upper);
+		ent_offset += 4;
+
+		flags |= IORESOURCE_MEM_64;
+
+		/* entry too big, can't use */
+		if (!support_64 && max_offset_upper)
+			goto out;
+
+		if (support_64)
+			end += ((u64)max_offset_upper << 32);
+	}
+
+	if (end < start) {
+		dev_err(&dev->dev, "EA Entry crosses address boundary\n");
+		goto out;
+	}
+
+	if (ent_size != ent_offset - offset) {
+		dev_err(&dev->dev, "EA Entry Size (%d) does not match length read (%d)\n",
+			ent_size, ent_offset - offset);
+		goto out;
+	}
+
+	res->start = start;
+	res->end = end;
+	res->flags = flags;
+
+	if (bei <= PCI_EA_BEI_BAR5)
+		dev_dbg(&dev->dev, "BAR %d: %pR (from Enhanced Allocation, properties %#02x)\n",
+			   bei, res, prop);
+	else if (bei == PCI_EA_BEI_ROM)
+		dev_dbg(&dev->dev, "ROM: %pR (from Enhanced Allocation, properties %#02x)\n",
+			   res, prop);
+	else if (bei >= PCI_EA_BEI_VF_BAR0 && bei <= PCI_EA_BEI_VF_BAR5)
+		dev_dbg(&dev->dev, "VF BAR %d: %pR (from Enhanced Allocation, properties %#02x)\n",
+			   bei - PCI_EA_BEI_VF_BAR0, res, prop);
+	else
+		dev_dbg(&dev->dev, "BEI %d res: %pR (from Enhanced Allocation, properties %#02x)\n",
+			   bei, res, prop);
+
+out:
+	return offset + ent_size;
+}
+
+/* Enhanced Allocation Initialization */
+static void pci_ea_init(struct pci_dev *dev)
+{
+	int ea;
+	u8 num_ent;
+	int offset;
+	int i;
+
+	/* find PCI EA capability in list */
+	ea = pci_find_capability(dev, PCI_CAP_ID_EA);
+	if (!ea)
+		return;
+
+	/* determine the number of entries */
+	pci_bus_read_config_byte(dev->bus, dev->devfn, ea + PCI_EA_NUM_ENT,
+					&num_ent);
+	num_ent &= PCI_EA_NUM_ENT_MASK;
+
+	offset = ea + PCI_EA_FIRST_ENT;
+
+	/* Skip DWORD 2 for type 1 functions */
+	if (dev->hdr_type == PCI_HEADER_TYPE_BRIDGE)
+		offset += 4;
+
+	/* parse each EA entry */
+	for (i = 0; i < num_ent; ++i)
+		offset = pci_ea_read(dev, offset);
+}
 
 static void setup_device(struct pci_dev *dev, int max_bar)
 {
@@ -251,6 +435,8 @@ static void setup_device(struct pci_dev *dev, int max_bar)
 		}
 	}
 
+	pci_ea_init(dev);
+
 	pci_fixup_device(pci_fixup_header, dev);
 
 	if (pcibios_assign_all_busses())
diff --git a/include/linux/pci_regs.h b/include/linux/pci_regs.h
index 631f218229..8d71914f75 100644
--- a/include/linux/pci_regs.h
+++ b/include/linux/pci_regs.h
@@ -219,7 +219,8 @@
 #define  PCI_CAP_ID_MSIX	0x11	/* MSI-X */
 #define  PCI_CAP_ID_SATA	0x12	/* SATA Data/Index Conf. */
 #define  PCI_CAP_ID_AF		0x13	/* PCI Advanced Features */
-#define  PCI_CAP_ID_MAX		PCI_CAP_ID_AF
+#define  PCI_CAP_ID_EA		0x14	/* PCI Enhanced Allocation */
+#define  PCI_CAP_ID_MAX		PCI_CAP_ID_EA
 #define PCI_CAP_LIST_NEXT	1	/* Next capability in the list */
 #define PCI_CAP_FLAGS		2	/* Capability defined flags (16 bits) */
 #define PCI_CAP_SIZEOF		4
@@ -355,6 +356,52 @@
 #define  PCI_AF_STATUS_TP	0x01
 #define PCI_CAP_AF_SIZEOF	6	/* size of AF registers */
 
+/* PCI Enhanced Allocation registers */
+
+#define PCI_EA_NUM_ENT		2	/* Number of Capability Entries */
+#define  PCI_EA_NUM_ENT_MASK	0x3f	/* Num Entries Mask */
+#define PCI_EA_FIRST_ENT	4	/* First EA Entry in List */
+#define PCI_EA_FIRST_ENT_BRIDGE	8	/* First EA Entry for Bridges */
+#define  PCI_EA_ES		0x00000007 /* Entry Size */
+#define  PCI_EA_BEI		0x000000f0 /* BAR Equivalent Indicator */
+
+/* EA fixed Secondary and Subordinate bus numbers for Bridge */
+#define PCI_EA_SEC_BUS_MASK	0xff
+#define PCI_EA_SUB_BUS_MASK	0xff00
+#define PCI_EA_SUB_BUS_SHIFT	8
+
+/* 0-5 map to BARs 0-5 respectively */
+#define   PCI_EA_BEI_BAR0		0
+#define   PCI_EA_BEI_BAR5		5
+#define   PCI_EA_BEI_BRIDGE		6	/* Resource behind bridge */
+#define   PCI_EA_BEI_ENI		7	/* Equivalent Not Indicated */
+#define   PCI_EA_BEI_ROM		8	/* Expansion ROM */
+/* 9-14 map to VF BARs 0-5 respectively */
+#define   PCI_EA_BEI_VF_BAR0		9
+#define   PCI_EA_BEI_VF_BAR5		14
+#define   PCI_EA_BEI_RESERVED		15	/* Reserved - Treat like ENI */
+#define  PCI_EA_PP		0x0000ff00	/* Primary Properties */
+#define  PCI_EA_SP		0x00ff0000	/* Secondary Properties */
+#define   PCI_EA_P_MEM			0x00	/* Non-Prefetch Memory */
+#define   PCI_EA_P_MEM_PREFETCH		0x01	/* Prefetchable Memory */
+#define   PCI_EA_P_IO			0x02	/* I/O Space */
+#define   PCI_EA_P_VF_MEM_PREFETCH	0x03	/* VF Prefetchable Memory */
+#define   PCI_EA_P_VF_MEM		0x04	/* VF Non-Prefetch Memory */
+#define   PCI_EA_P_BRIDGE_MEM		0x05	/* Bridge Non-Prefetch Memory */
+#define   PCI_EA_P_BRIDGE_MEM_PREFETCH	0x06	/* Bridge Prefetchable Memory */
+#define   PCI_EA_P_BRIDGE_IO		0x07	/* Bridge I/O Space */
+/* 0x08-0xfc reserved */
+#define   PCI_EA_P_MEM_RESERVED		0xfd	/* Reserved Memory */
+#define   PCI_EA_P_IO_RESERVED		0xfe	/* Reserved I/O Space */
+#define   PCI_EA_P_UNAVAILABLE		0xff	/* Entry Unavailable */
+#define  PCI_EA_WRITABLE	0x40000000	/* Writable: 1 = RW, 0 = HwInit */
+#define  PCI_EA_ENABLE		0x80000000	/* Enable for this entry */
+#define PCI_EA_BASE		4		/* Base Address Offset */
+#define PCI_EA_MAX_OFFSET	8		/* MaxOffset (resource length) */
+/* bit 0 is reserved */
+#define  PCI_EA_IS_64		0x00000002	/* 64-bit field flag */
+#define  PCI_EA_FIELD_MASK	0xfffffffc	/* For Base & Max Offset */
+
 /* PCI-X registers (Type 0 (non-bridge) devices) */
 
 #define PCI_X_CMD		2	/* Modes & Features */
-- 
2.39.2



