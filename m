Delivery-date: Tue, 19 Dec 2023 13:58:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfd-004YIG-1z
	for lore@lore.pengutronix.de;
	Tue, 19 Dec 2023 13:58:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFZfd-0007vm-2U
	for lore@pengutronix.de; Tue, 19 Dec 2023 13:58:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=7AbD4D1bsqgxHVn00/F1WdemC/IskWpkvDa14glg9R0=; b=Xz/vL2o1lwUAArKX9mf0W5NN82
	EpiipW+J1MnNo/fceKkSK2bQCrSXox9MPxppwtimbo4Fl6/DhhEDfBui6l9gyb06JvI1mULrlh8yE
	qAPVFNpppEZn4Zs2WmC/Ymh0CAYo5nUk+t9R4lCMoIb+i7JKh3QOOmNVJElY8fpdcV8eXY742YReC
	C+t4Ae8YjFLhTR8Ls8EIV9UwOao0CIZM3zgfrfVew17pJ6nW/rpnzAt/k+rxMF92P9Ji77Q9v3eOi
	4dkpfmBUTxSQGt4qJs8FUBTxwDGcUVuvmAp8d20Yyy+6ObBrOOUagkeHKnRGugOmpSUd9YAhFSSLb
	IsAAwMow==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeb-00E6jD-04;
	Tue, 19 Dec 2023 12:56:57 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFZeT-00E6d1-14
	for barebox@lists.infradead.org;
	Tue, 19 Dec 2023 12:56:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeC-00077E-0B; Tue, 19 Dec 2023 13:56:32 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeA-0001KC-D9; Tue, 19 Dec 2023 13:56:31 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1rFZeB-0000yC-1Q;
	Tue, 19 Dec 2023 13:56:31 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 19 Dec 2023 13:56:26 +0100
Message-Id: <20231219125630.3684-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231219125630.3684-1-s.hauer@pengutronix.de>
References: <20231219125630.3684-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231219_045649_426340_A89F65FE 
X-CRM114-Status: GOOD (  10.32  )
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
Subject: [PATCH 2/6] pci: Do not register device tree disabled devices
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some PCI devices have device nodes associated with them. Do not register
these devices when they are disabled in the device tree.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/bus.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/bus.c b/drivers/pci/bus.c
index fdd012733a..b6eab56d87 100644
--- a/drivers/pci/bus.c
+++ b/drivers/pci/bus.c
@@ -114,6 +114,9 @@ int pci_register_device(struct pci_dev *pdev)
 	struct device *dev = &pdev->dev;
 	int ret;
 
+	if (!of_device_is_available(pdev->dev.of_node))
+		return 0;
+
 	dev_set_name(dev, "pci-%04x:%04x.", pdev->vendor, pdev->device);
 	dev->bus = &pci_bus;
 	dev->id = DEVICE_ID_DYNAMIC;
-- 
2.39.2



