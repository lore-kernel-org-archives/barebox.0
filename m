Delivery-date: Tue, 19 Dec 2023 13:58:03 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZff-004YIm-0A
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 13:58:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfe-0007xN-De
	for lore@pengutronix.de; Tue, 19 Dec 2023 13:58:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=knasDyHpKpJtwPjzH27b6BImmo/qjbfK6BZ7KUPhWRY=; b=eNNfaLjRgYM9RmPwDYVPbay56t
	T/XzaXv8YLRWbcGQB/pJr+H/4Dsu8lFx1cyoYc2siT1mPs3d0tx2yUsKbwFnwvd6NAUMxyJnk/Ogw
	UYF8wBP54NJlLtBiqzUGuILkz3ML8Xon3bstHiqnvpgkPitzmbogblEEgJtOLPFKbyoAWPH7Orpap
	0rOobG02KkzjywjeJAXQSg18Z9agj+mz5uD2KpxeGqFNk5BWnVtZsTSsHCJY1rSMbQtBrDDIpUClr
	Zp95c2en/cgvyDrMzibLLQbolqnmbO5um0BZ2Sl8BXlT7oqVZQD67xL6T+8xhhG8D1saxn++3GIug
	1eIo4vCg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeQ-00E6am-0V;
	Tue, 19 Dec 2023 12:56:46 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeG-00E6PC-1B
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 12:56:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeC-00077I-3E; Tue, 19 Dec 2023 13:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeA-0001KK-GC; Tue, 19 Dec 2023 13:56:31 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-0000yS-1g;
	Tue, 19 Dec 2023 13:56:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 13:56:30 +0100
Message-Id: <20231219125630.3684-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219125630.3684-1-s.hauer@pengutronix.de>
References: <20231219125630.3684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045636_488604_16DCCACD 
X-CRM114-Status: GOOD (  12.41  )
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
Subject: [PATCH 6/6] pci: implement function level reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This will be needed for upcoming LS1028a support. The code is taken from
U-Boot which suffices for our usecase. The kernel code is much more
elaborated here.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c   | 32 ++++++++++++++++++++++++++++++++
 include/linux/pci.h |  2 ++
 2 files changed, 34 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index a3e7e70871..84678e40a9 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -553,6 +553,38 @@ pci_of_match_device(struct device *parent, unsigned int devfn)
 	return NULL;
 }
 
+/**
+ * pcie_flr - initiate a PCIe function level reset
+ * @dev:	device to reset
+ *
+ * Initiate a function level reset on @dev.
+ */
+int pci_flr(struct pci_dev *pdev)
+{
+	u16 val;
+	int pcie_off;
+	u32 cap;
+
+	/* look for PCI Express Capability */
+	pcie_off = pci_find_capability(pdev, PCI_CAP_ID_EXP);
+	if (!pcie_off)
+		return -ENOENT;
+
+	/* check FLR capability */
+	pci_read_config_dword(pdev, pcie_off + PCI_EXP_DEVCAP, &cap);
+	if (!(cap & PCI_EXP_DEVCAP_FLR))
+		return -ENOENT;
+
+	pci_read_config_word(pdev, pcie_off + PCI_EXP_DEVCTL, &val);
+	val |= PCI_EXP_DEVCTL_BCR_FLR;
+	pci_write_config_word(pdev, pcie_off + PCI_EXP_DEVCTL, val);
+
+	/* wait 100ms, per PCI spec */
+	mdelay(100);
+
+	return 0;
+}
+
 static unsigned int pci_scan_bus(struct pci_bus *bus)
 {
 	struct pci_dev *dev;
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 0e907209a7..fe5285116a 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -329,6 +329,8 @@ u8 pci_find_capability(struct pci_dev *dev, int cap);
 
 extern void __iomem *pci_iomap(struct pci_dev *dev, int bar);
 
+int pci_flr(struct pci_dev *pdev);
+
 /*
  * The world is not perfect and supplies us with broken PCI devices.
  * For at least a part of these bugs we need a work-around, so both
-- 
2.39.2



