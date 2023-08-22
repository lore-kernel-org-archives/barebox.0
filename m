Delivery-date: Tue, 22 Aug 2023 09:49:45 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM94-004TuP-TD
	for lore@lore.pengutronix.de; Tue, 22 Aug 2023 09:49:45 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qYM92-0002RG-QG
	for lore@pengutronix.de; Tue, 22 Aug 2023 09:49:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=WODqGdQEb7cKOmGxYINUAezwapQEaGK0H1VbL3h/wqg=; b=a10/cDHQnGZZVecgjZKhy88xXP
	jFzgY5QrediTzCFbo/2SrvqDRMEolrkxqgqB7EPl8CnudwjagUYO2ScG6DNI5Wg3MDkMNN8i9BeXP
	eic60/V3wx4MKsxjzsXmCGJwuxGKotskJigmNCEwP9yYNdqft2p3PMt2JkADIWWPHxAMVRG08Wu7n
	cyGd3RPRfctLgm9vVLA4j7/Rg8kaWVBr3axcIjEOnd0l+vq1yFPV0OgzmTjZgufgcsR+oE3srp7az
	+Dji4L2llW+LtocyXIzS0c32rGgkTXO2WpiS0wYNk4zs1LIXyjPrVvUZvWMUKUKxIeRJb/OvXxCVm
	X9SCahTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM80-00FOIb-0s;
	Tue, 22 Aug 2023 07:48:40 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qYM7w-00FOHe-3B
	for barebox@lists.infradead.org;
	Tue, 22 Aug 2023 07:48:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM7v-00024J-ON; Tue, 22 Aug 2023 09:48:35 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM7v-000lPc-3g; Tue, 22 Aug 2023 09:48:35 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qYM7u-00GO0f-2w;
	Tue, 22 Aug 2023 09:48:34 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 22 Aug 2023 09:48:31 +0200
Message-Id: <20230822074832.3905525-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230822_004837_028823_CD38067A 
X-CRM114-Status: UNSURE (   8.35  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] PCI: populate struct pci_device subsystem_device, subsystem_vendor
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

pci_device::subsystem_device and pci_device::subsystem_vendor have been
there since the beginning, but they were never populated. This went
unnoticed so far, because they are compared against PCI_ANY_ID
everywhere, except for some NS16550-over-PCI quirks.

We should either drop the members or populate them unconditionally.
Let's do as Linux does and populate them for devices[1].

[1]: https://elixir.bootlin.com/linux/v6.5-rc7/source/drivers/pci/probe.c#L1915

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/pci/pci.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/pci/pci.c b/drivers/pci/pci.c
index d1b7549d7100..638af9722efc 100644
--- a/drivers/pci/pci.c
+++ b/drivers/pci/pci.c
@@ -434,6 +434,9 @@ static unsigned int pci_scan_bus(struct pci_bus *bus)
 				goto bad;
 
 			setup_device(dev, 6);
+
+			pci_read_config_word(dev, PCI_SUBSYSTEM_ID, &dev->subsystem_device);
+			pci_read_config_word(dev, PCI_SUBSYSTEM_VENDOR_ID, &dev->subsystem_vendor);
 			break;
 		case PCI_HEADER_TYPE_BRIDGE:
 			child_bus = pci_alloc_bus();
-- 
2.39.2



