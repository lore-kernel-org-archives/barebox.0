Delivery-date: Tue, 26 Mar 2024 11:09:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jo-0051no-11
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:09:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jn-0002yr-Jp
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:09:00 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FQqiKRbrqVm7KtSuzF5fHGv1Y60dDe0FZAA6xvgqCww=; b=eEqcVEiFnU3CsNDh1DpUkvPsJf
	BWVGwUGIdXJq2pB6d8Y/T6cdgfc9wZVtswcGOu3FV7Xawa/g5D4EzXIzeHRmDFiD3/8vJ/tpqw8kO
	j5HVyp9icXIqerNHAA4wQusUJ2bAj6TZgbgUJgX5uHM36h88o4XQ9i4KhCRbQ/txCGhgv5br1yMpf
	GAyv6mBska0a04wK2z4xK1EmcwVpj9hzgBYo0HpxF0nFf2FDTpj2wDLxySh3JqVh2+9FeuRhaQ7Z1
	xOjZMQ1YrpJHNoB9BMg9X2TD+LGlgRVVTiwMaBFjei0Ttie/Jx7IYDrY8OS2+/eAL1fkGkLsjbIVo
	oU04+bAg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3is-00000003xaR-2ecY;
	Tue, 26 Mar 2024 10:08:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRr-0rzj
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002GZ-Mr; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0g-AN; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-0f;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:36 +0100
Message-Id: <20240326100746.471532-7-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_364805_B5F59F72 
X-CRM114-Status: GOOD (  13.61  )
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
Subject: [PATCH 06/16] pci: dwc: Drop support for config space in 'ranges'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Following Linux commit 2f5ab5afe018 ("PCI: dwc: Drop support for config
space in 'ranges'") let's do the same for barebox.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c | 16 ++--------------
 drivers/pci/pcie-designware.h      |  1 -
 2 files changed, 2 insertions(+), 15 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index bebdb5cbc7..644971d4a8 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -100,6 +100,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		pp->cfg1_mod_base = pp->cfg0_mod_base + pp->cfg0_size;
 	} else {
 		dev_err(dev, "Missing *config* reg space\n");
+		return -ENODEV;
 	}
 
 	if (of_pci_range_parser_init(&parser, np)) {
@@ -134,23 +135,10 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 			pp->mem_mod_base = of_read_number(parser.range -
 							  parser.np + na, ns);
 		}
-		if (restype == 0) {
-			of_pci_range_to_resource(&range, np, &pp->cfg);
-			pp->cfg0_size = resource_size(&pp->cfg) >> 1;
-			pp->cfg1_size = resource_size(&pp->cfg) >> 1;
-			pp->cfg0_base = pp->cfg.start;
-			pp->cfg1_base = pp->cfg.start + pp->cfg0_size;
-
-			/* Find the untranslated configuration space address */
-			pp->cfg0_mod_base = of_read_number(parser.range -
-							   parser.np + na, ns);
-			pp->cfg1_mod_base = pp->cfg0_mod_base +
-					    pp->cfg0_size;
-		}
 	}
 
 	if (!pci->dbi_base)
-		pci->dbi_base = IOMEM(pp->cfg.start);
+		pci->dbi_base = IOMEM(cfg_res->start);
 
 	if (!pp->va_cfg0_base)
 		pp->va_cfg0_base = IOMEM((unsigned long)pp->cfg0_base);
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 0de7b8a868..9840dde266 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -161,7 +161,6 @@ struct pcie_port {
 	u64			mem_mod_base;
 	phys_addr_t		mem_bus_addr;
 	u32			mem_size;
-	struct resource		cfg;
 	struct resource		io;
 	struct resource		mem;
 	struct resource		busn;
-- 
2.39.2



