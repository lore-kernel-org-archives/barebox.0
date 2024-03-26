Delivery-date: Tue, 26 Mar 2024 11:08:57 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jl-0051m2-2y
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:08:57 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jk-0002vI-Nq
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:08:57 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=d4BRMzF0+/5kcSVMrqCpRIkoGkEcz20E60pF4uzKFig=; b=t7azTM46nQj2PlbAPy7YA1zAtm
	t3Io7nXHvvGdsKgU3uZXp9r5++qtVOISqeAWQhkcjg/OOE1/SpZPsHZc89FsK93ctQzRfQb+0U3tG
	xKanYPS5IQh2IKDwrV/qMAW17PZdp4t11k54hfbEgF9mCd3fpnlHsO4ru2vGeC+mxGGVvBwm4mp1T
	cTudweW24OcExy21XQva9RUi8zMheWAKLCDatBEuwueq+36pyq26d6mTJ5IGoqjdqqoCxwr5H6jK+
	WuaK9xVCgNb77llSxKdSnCQRzgZjNVXSzcHsqJqu92ZNQ6rJBEAePuqxM//M7FtkcLb05JRF2Fw+w
	B2ztBCfw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3iq-00000003xY0-0EwJ;
	Tue, 26 Mar 2024 10:08:00 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRj-0cn3
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:54 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002Fu-Fz; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0U-35; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3ic-00202A-3D;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:32 +0100
Message-Id: <20240326100746.471532-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_334056_5EDB54ED 
X-CRM114-Status: GOOD (  17.13  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 02/16] pci: add 'self' member to struct pci_bus
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux struct pci_bus has a 'parent' member which is a pointer to the
parent pci_bus. In barebox we also have a 'parent' member, but it is
of type struct device *. To be closer to Linux remove the parent member
and replace its usage with a struct pci_dev *self member (which also
exists in Linux).

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c   | 10 ++++++----
 include/linux/pci.h |  3 ++-
 2 files changed, 8 insertions(+), 5 deletions(-)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 84678e40a9..8b96ac78df 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -48,7 +48,6 @@ void register_pci_controller(struct pci_controller *hose)
 
 	bus = pci_alloc_bus();
 	hose->bus = bus;
-	bus->parent = hose->parent;
 	bus->host = hose;
 	bus->resource[PCI_BUS_RESOURCE_MEM] = hose->mem_resource;
 	bus->resource[PCI_BUS_RESOURCE_MEM_PREF] = hose->mem_pref_resource;
@@ -599,6 +598,8 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 	max = bus->secondary;
 
 	for (devfn = 0; devfn < 0xff; ++devfn) {
+		struct device *parent;
+
 		if (PCI_FUNC(devfn) && !is_multi) {
 			/* not a multi-function device */
 			continue;
@@ -618,8 +619,9 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 		dev->devfn = devfn;
 		dev->vendor = l & 0xffff;
 		dev->device = (l >> 16) & 0xffff;
-		dev->dev.parent = bus->parent;
-		dev->dev.of_node = pci_of_match_device(bus->parent, devfn);
+		parent = bus->self ? &bus->self->dev : bus->host->parent;
+		dev->dev.parent = parent;
+		dev->dev.of_node = pci_of_match_device(parent, devfn);
 		if (dev->dev.of_node)
 			pr_debug("found DT node %pOF for device %04x:%04x\n",
 				 dev->dev.of_node,
@@ -668,7 +670,7 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 			child_bus->resource[PCI_BUS_RESOURCE_IO] =
 				bus->resource[PCI_BUS_RESOURCE_IO];
 
-			child_bus->parent = &dev->dev;
+			child_bus->self = dev;
 
 			if (pcibios_assign_all_busses()) {
 				child_bus->number = bus_index++;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index aa29ff5d17..c4ae53a235 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -139,9 +139,10 @@ enum {
 	PCI_BUS_RESOURCE_MEM_PREF = 2,
 	PCI_BUS_RESOURCE_BUSN = 3,
 };
+
 struct pci_bus {
 	struct pci_controller *host;	/* associated host controller */
-	struct device *parent;
+	struct pci_dev *self;
 	struct pci_bus *parent_bus;	/* parent bus */
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
-- 
2.39.2



