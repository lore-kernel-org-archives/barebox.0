Delivery-date: Tue, 26 Mar 2024 11:08:59 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jn-0051n6-0j
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:08:59 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jm-0002wU-EI
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:08:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=99nndP2Z9QckmFcMYir1Ugp3UfKSXsQ+zIW2+0z8rwg=; b=cRrVVaGzHgbgkniRSiX0bv7BvW
	jFY7FQlsKoM/s/Cc0b1zpOcGz7nE9+LtQPOYWAcGYPauerJi6fw8qhlM35SxIJgEL3ERJi7hrqrur
	/Y/4SE+Kt56Bvsm8L8jW8m/TLS8U6eEj2Z8V1YKwzf0ky/iqh2OGxWZlNO1AZZJnlZuPn7mNtsh0K
	gbKDVqTerdYHgoMu92XFEuPra2wxHSHmL4ccttDXTGQM5wHspumK5Z1p4PtMccmIoRR3Gq3F0/Qhs
	JA5zB9j/ExXr2QcxqbpLbOn+PSsjAXYFrCsN5LMwDdu3Cn+rmQrvOYRouMTR5PaIHMH0wbU9DATmM
	BwqL6xAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3iw-00000003xcd-0tJf;
	Tue, 26 Mar 2024 10:08:06 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRn-0fyo
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002Fv-IF; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0X-4n; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-09;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:33 +0100
Message-Id: <20240326100746.471532-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_414407_14258D47 
X-CRM114-Status: GOOD (  14.82  )
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
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 03/16] pci: rename parent_bus to parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In Linux struct pci_bus has a pointer to its parent bus named 'parent'.
Rename parent_bus to parent to be more conform with Linux.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci-layerscape.c | 2 +-
 drivers/pci/pci.c            | 2 +-
 include/linux/pci.h          | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/pci/pci-layerscape.c b/drivers/pci/pci-layerscape.c
index 12a0ec71a7..732232dec5 100644
--- a/drivers/pci/pci-layerscape.c
+++ b/drivers/pci/pci-layerscape.c
@@ -560,7 +560,7 @@ static void ls_pcie_fixup(struct pci_dev *pcidev)
 	p = pcidev->bus;
 	while (p) {
 		base_bus_num = p->number;
-		p = p->parent_bus;
+		p = p->parent;
 	}
 
 	devid = (pcidev->bus->number - base_bus_num) << 8 | pcidev->devfn;
diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 8b96ac78df..15e8cd46bd 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -662,7 +662,7 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 			child_bus = pci_alloc_bus();
 			/* inherit parent properties */
 			child_bus->host = bus->host;
-			child_bus->parent_bus = bus;
+			child_bus->parent = bus;
 			child_bus->resource[PCI_BUS_RESOURCE_MEM] =
 				bus->resource[PCI_BUS_RESOURCE_MEM];
 			child_bus->resource[PCI_BUS_RESOURCE_MEM_PREF] =
diff --git a/include/linux/pci.h b/include/linux/pci.h
index c4ae53a235..4d4ab818f8 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -143,7 +143,7 @@ enum {
 struct pci_bus {
 	struct pci_controller *host;	/* associated host controller */
 	struct pci_dev *self;
-	struct pci_bus *parent_bus;	/* parent bus */
+	struct pci_bus *parent;		/* Parent bus this bridge is on */
 	struct list_head node;		/* node in list of buses */
 	struct list_head children;	/* list of child buses */
 	struct list_head devices;	/* list of devices on this bus */
-- 
2.39.2



