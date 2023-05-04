Delivery-date: Thu, 04 May 2023 10:19:14 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBH-004LKf-Jl
	for lore@lore.pengutronix.de; Thu, 04 May 2023 10:19:14 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1puUBF-0001u3-AF
	for lore@pengutronix.de; Thu, 04 May 2023 10:19:13 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=CGmO1DNZ4NyiSdGrpZLcUzgeMRzm4sD3xNsbKr6oPKA=; b=MxniCgl5wLB9Y4LSMXdPDNQ56v
	sEb+6wEgpJuyClv+UyPGCxdqErsfbG7R3kGfoUuBtKzhDOSL88f5jeVf6XD8sJRe2Qc+/5am+zEJR
	Mz1AQlXgpNNCIjVc4gHnV/hlSyrx3kjAX6XotcAwoD2x0NzJPOCKFL/f6gN/H7yNb1bPLodqka59i
	2mjm/wwrMvls2p0QNE9zdk3qnrwCOS8wv5OWPOkffQokcxgq47JSy1rwHZ1lQOBzuOTqN1iug1EpM
	0ZupahI5ZbXHA9wqh+E8GFu6LpTUBHhzZftXk7IOm7XfnADFKgpsuUeqvIvHWAPmDVXwm7pvXmSCu
	plxrYT0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1puUA1-0074X7-0s;
	Thu, 04 May 2023 08:17:57 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1puU9w-0074Sq-1v
	for barebox@lists.infradead.org;
	Thu, 04 May 2023 08:17:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9t-0001Fq-AV; Thu, 04 May 2023 10:17:49 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9s-0011El-Ic; Thu, 04 May 2023 10:17:48 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1puU9q-001Hb4-Li; Thu, 04 May 2023 10:17:46 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  4 May 2023 10:17:30 +0200
Message-Id: <20230504081745.305841-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230504081745.305841-1-s.hauer@pengutronix.de>
References: <20230504081745.305841-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230504_011752_638323_149AFC12 
X-CRM114-Status: GOOD (  12.91  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/18] pci: add pci_select_bars() helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pci_select_bars() will be needed later in the updated RTL8169 driver.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pci.c   | 16 ++++++++++++++++
 include/linux/pci.h |  1 +
 2 files changed, 17 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index 53e8faeb3e..57a7a75f84 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -539,6 +539,22 @@ int pci_enable_device(struct pci_dev *dev)
 }
 EXPORT_SYMBOL(pci_enable_device);
 
+/**
+ * pci_select_bars - Make BAR mask from the type of resource
+ * @dev: the PCI device for which BAR mask is made
+ * @flags: resource type mask to be selected
+ *
+ * This helper routine makes bar mask from the type of resource.
+ */
+int pci_select_bars(struct pci_dev *dev, unsigned long flags)
+{
+	int i, bars = 0;
+	for (i = 0; i < PCI_NUM_RESOURCES; i++)
+		if (pci_resource_flags(dev, i) & flags)
+			bars |= (1 << i);
+	return bars;
+}
+
 static u8 __pci_find_next_cap_ttl(struct pci_bus *bus, unsigned int devfn,
 				  u8 pos, int cap, int *ttl)
 {
diff --git a/include/linux/pci.h b/include/linux/pci.h
index 31488bf8ac..98d056624f 100644
--- a/include/linux/pci.h
+++ b/include/linux/pci.h
@@ -326,6 +326,7 @@ static inline int pci_write_config_dword(const struct pci_dev *dev, int where,
 void pci_set_master(struct pci_dev *dev);
 void pci_clear_master(struct pci_dev *dev);
 int pci_enable_device(struct pci_dev *dev);
+int pci_select_bars(struct pci_dev *dev, unsigned long flags);
 
 u8 pci_find_next_capability(struct pci_dev *dev, u8 pos, int cap);
 u8 pci_find_capability(struct pci_dev *dev, int cap);
-- 
2.39.2



