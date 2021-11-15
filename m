Delivery-date: Mon, 15 Nov 2021 10:28:38 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYI2-00086j-V5
	for lore@lore.pengutronix.de; Mon, 15 Nov 2021 10:28:38 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mmYI1-0006oU-RD
	for lore@pengutronix.de; Mon, 15 Nov 2021 10:28:38 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=zXVFTpqtxRupaO/88KwjbnTK8lCPm/Nbd7OfmZqs3o8=; b=MIEeieLDmWdbG4
	DmW41IGdw9+Ce6AWW7btw2G8TTpJ+JKsJ8H+rWI8zLJdUS8gkdccFzNBaj07NjuxiSPq8ngBy8m/C
	7vPeWdnIvaqZ5pz2No/Kp+YgbBhQujJaq6cxZKbJN3EKrj3yUdU70qFaP0X60xN/pBOgrUsDbcHCr
	9w9Z2YFwaFegHwkY13iO/Ux8Cb7dJOS3nrBXzchRzz5c/CXzTHSwCEZQxE6Q7XgUTity8AJ59P4Rs
	SVzwSn16I9ukix+nzeglFXfvRkFUgHW7L/tPs3fiMWgnkk+S8c8GUKy/A0kkW5BwLcNPDjl4S6gO/
	iS51to78lRcW6ZBvwu/w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mmYGM-00Ev0G-L0; Mon, 15 Nov 2021 09:26:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mmXqn-00EoCm-66
 for barebox@lists.infradead.org; Mon, 15 Nov 2021 09:00:30 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mmXqj-0002si-61; Mon, 15 Nov 2021 10:00:25 +0100
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mmXqi-00HaqQ-Mf; Mon, 15 Nov 2021 10:00:24 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Nov 2021 10:00:21 +0100
Message-Id: <20211115090023.4192546-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211115_010029_285263_B7DBB156 
X-CRM114-Status: GOOD (  11.81  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master 1/3] pci: efi: skip driver model fixup for non-EFI PCI
 busses
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The EFI driver registers a PCI fixup to associate PCI devices probed via
EFI with their parent. Restrict the fixup to EFI PCI busses only, so
other PCI drivers can be used in the same build.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pci/pci-efi.c | 9 ++++++++-
 1 file changed, 8 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/pci-efi.c b/drivers/pci/pci-efi.c
index e1fe11d07016..846449c4b0e0 100644
--- a/drivers/pci/pci-efi.c
+++ b/drivers/pci/pci-efi.c
@@ -209,15 +209,22 @@ static u8 *acpi_parse_resource(u8 *next, struct resource *out)
 	return next;
 }
 
+static struct efi_driver efi_pci_driver;
+
 /* EFI already enumerated the bus for us, match our new pci devices with the efi
  * handles
  */
 static void efi_pci_fixup_dev_parent(struct pci_dev *dev)
 {
-	struct efi_pci_priv *priv = host_to_efi_pci(dev->bus->host);
+	struct efi_pci_priv *priv;
 	struct pci_child *child;
 	struct pci_child_id id;
 
+	if (dev->dev.driver != &efi_pci_driver.driver)
+		return;
+
+	priv = host_to_efi_pci(dev->bus->host);
+
 	id.segmentno = priv->protocol->segmentno;
 	id.busno = dev->bus->number;
 	id.devno = PCI_SLOT(dev->devfn);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

