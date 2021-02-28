Delivery-date: Sun, 28 Feb 2021 20:10:22 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSQ-0003W8-98
	for lore@lore.pengutronix.de; Sun, 28 Feb 2021 20:10:22 +0100
Received: from merlin.infradead.org ([2001:8b0:10b:1231::1])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lGRSN-0001Bx-CQ
	for lore@pengutronix.de; Sun, 28 Feb 2021 20:10:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=merlin.20170209; h=Sender:Content-Transfer-Encoding:
	Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=comywj+uYeGPva2MQ61H6sSyaXY/Ysd0vHVXfqNDB/I=; b=nfBPxNC6C1Q/Aul+SDkpfD260
	JSoDF6NNNqdDPm34ussrWwiUGjTCVfsitJU+N8p2alv8bU89ju6CQjlD7yCqSxUukfAJlaQzvBvw4
	9cshEjIQCQO+fkW2Dd9MjsYFp73jS/maUF9xx2dynp2n4SZw0AcF/LaR/unFaUAyh0GGrAhm2ARa3
	+put9wNKW952UxLrNQsiQhwI6PIqxZ5pbSD6mxOoSCF3zL8eQPSamN3T4lpEmq63TcRzrluDZIWKk
	KFZiUebqJp43x1iKtGjNQXe3SkOkbaMDbJduKnjeNMB4fXOQWfjpoFmnJ8zq67ifN3qLXGN4TyAFM
	/jEkSvCPA==;
Received: from localhost ([::1] helo=merlin.infradead.org)
	by merlin.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1lGRRA-0006Ct-2n; Sun, 28 Feb 2021 19:09:04 +0000
Received: from relay3-d.mail.gandi.net ([217.70.183.195])
 by merlin.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1lGRQs-000661-6Z
 for barebox@lists.infradead.org; Sun, 28 Feb 2021 19:08:48 +0000
X-Originating-IP: 87.123.101.180
Received: from geraet.fritz.box (unknown [87.123.101.180])
 (Authenticated sender: ahmad@a3f.at)
 by relay3-d.mail.gandi.net (Postfix) with ESMTPSA id D458E6000F;
 Sun, 28 Feb 2021 19:08:44 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Date: Sun, 28 Feb 2021 20:08:34 +0100
Message-Id: <20210228190836.1451663-7-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210228190836.1451663-1-ahmad@a3f.at>
References: <20210228190836.1451663-1-ahmad@a3f.at>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210228_140846_436802_09B498E2 
X-CRM114-Status: GOOD (  14.30  )
X-BeenThere: barebox@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <barebox.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/barebox/>
List-Post: <mailto:barebox@lists.infradead.org>
List-Help: <mailto:barebox-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/barebox>,
 <mailto:barebox-request@lists.infradead.org?subject=subscribe>
Cc: Ahmad Fatoum <ahmad@a3f.at>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2001:8b0:10b:1231::1
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 7/9] PCI: port Linux pci_find_capability
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Incomding Linux virtio_pci code uses these functions, so port them over.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 drivers/pci/pci.c   | 90 +++++++++++++++++++++++++++++++++++++++++++++
 include/linux/pci.h |  5 +++
 2 files changed, 95 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 7d1024d8d1d2..945a983387ed 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -506,6 +506,96 @@ int pci_enable_device(struct pci_dev *dev)
 }
 EXPORT_SYMBOL(pci_enable_device);
 
+static u8 __pci_find_next_cap_ttl(struct pci_bus *bus, unsigned int devfn,
+				  u8 pos, int cap, int *ttl)
+{
+	u8 id;
+	u16 ent;
+
+	pci_bus_read_config_byte(bus, devfn, pos, &pos);
+
+	while ((*ttl)--) {
+		if (pos < 0x40)
+			break;
+		pos &= ~3;
+		pci_bus_read_config_word(bus, devfn, pos, &ent);
+
+		id = ent & 0xff;
+		if (id == 0xff)
+			break;
+		if (id == cap)
+			return pos;
+		pos = (ent >> 8);
+	}
+	return 0;
+}
+
+static u8 __pci_find_next_cap(struct pci_bus *bus, unsigned int devfn,
+			      u8 pos, int cap)
+{
+	int ttl = PCI_FIND_CAP_TTL;
+
+	return __pci_find_next_cap_ttl(bus, devfn, pos, cap, &ttl);
+}
+
+u8 pci_find_next_capability(struct pci_dev *dev, u8 pos, int cap)
+{
+	return __pci_find_next_cap(dev->bus, dev->devfn,
+				   pos + PCI_CAP_LIST_NEXT, cap);
+}
+EXPORT_SYMBOL_GPL(pci_find_next_capability);
+
+static u8 __pci_bus_find_cap_start(struct pci_bus *bus,
+				    unsigned int devfn, u8 hdr_type)
+{
+	u16 status;
+
+	pci_bus_read_config_word(bus, devfn, PCI_STATUS, &status);
+	if (!(status & PCI_STATUS_CAP_LIST))
+		return 0;
+
+	switch (hdr_type) {
+	case PCI_HEADER_TYPE_NORMAL:
+	case PCI_HEADER_TYPE_BRIDGE:
+		return PCI_CAPABILITY_LIST;
+	case PCI_HEADER_TYPE_CARDBUS:
+		return PCI_CB_CAPABILITY_LIST;
+	}
+
+	return 0;
+}
+
+/**
+ * pci_find_capability - query for devices' capabilities
+ * @dev: PCI device to query
+ * @cap: capability code
+ *
+ * Tell if a device supports a given PCI capability.
+ * Returns the address of the requested capability structure within the
+ * device's PCI configuration space or 0 in case the device does not
+ * support it.  Possible values for @cap include:
+ *
+ *  %PCI_CAP_ID_PM           Power Management
+ *  %PCI_CAP_ID_AGP          Accelerated Graphics Port
+ *  %PCI_CAP_ID_VPD          Vital Product Data
+ *  %PCI_CAP_ID_SLOTID       Slot Identification
+ *  %PCI_CAP_ID_MSI          Message Signalled Interrupts
+ *  %PCI_CAP_ID_CHSWP        CompactPCI HotSwap
+ *  %PCI_CAP_ID_PCIX         PCI-X
+ *  %PCI_CAP_ID_EXP          PCI Express
+ */
+u8 pci_find_capability(struct pci_dev *dev, int cap)
+{
+	u8 pos;
+
+	pos = __pci_bus_find_cap_start(dev->bus, dev->devfn, dev->hdr_type);
+	if (pos)
+		pos = __pci_find_next_cap(dev->bus, dev->devfn, pos, cap);
+
+	return pos;
+}
+EXPORT_SYMBOL(pci_find_capability);
+
 static void pci_do_fixups(struct pci_dev *dev, struct pci_fixup *f,
 			  struct pci_fixup *end)
 {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index c742570e3684..0c8fed7c8e0d 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -31,6 +31,8 @@
 
 #define PCI_ANY_ID (~0)
 
+#define PCI_FIND_CAP_TTL	48
+
 /*
  * The PCI interface treats multi-function devices as independent
  * devices.  The slot/function address of each device is encoded
@@ -320,6 +322,9 @@ void pci_set_master(struct pci_dev *dev);
 void pci_clear_master(struct pci_dev *dev);
 int pci_enable_device(struct pci_dev *dev);
 
+u8 pci_find_next_capability(struct pci_dev *dev, u8 pos, int cap);
+u8 pci_find_capability(struct pci_dev *dev, int cap);
+
 extern void __iomem *pci_iomap(struct pci_dev *dev, int bar);
 
 /*
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

