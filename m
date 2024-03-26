Delivery-date: Tue, 26 Mar 2024 11:36:40 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4Aa-0054Vj-0x
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:36:40 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4AW-0002P6-96
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:36:40 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vdD94Nui0Y1TwG77JunFdzYwQDvYYEjVOFr60FFMfns=; b=aMxkiIt2BlJWfrjdxn3g2nLuV+
	pecI2YWQi6HeKcioKIZEekEinsJdY8/aDgntLzzDYRTncpSHUWdP0zAUXpS1WdV//XmlQribuqkIE
	joooaP39icNzz8sNguS5f3W2w+81+BgPTWzTxxJgRzbl901FJ2t3EntzTVMB6SNUIsbw5FSXXQG6q
	ZVDoadfiD2281rSXpSPLN7Vd5HJC5OpYFHrX+05Y8pRfPZCO4tYMK2mdfJJvOgMSluxlTjvwHXu3J
	KxDN1b/KRuqHjEhGUGRboToNqcLhSDGepuIedW5+fL7dEx2Jq127FRixryk5J+KpIU8fWY3M5Eo0e
	lIBUifFQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp49z-000000045JC-0YWr;
	Tue, 26 Mar 2024 10:36:03 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp49v-000000045Hs-3t4Q
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023U-ND; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49r-008b6z-Q1; Tue, 26 Mar 2024 11:35:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-1s;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:43 +0100
Message-Id: <20240326100746.471532-14-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033559_993678_C9D34E59 
X-CRM114-Status: GOOD (  11.64  )
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
Subject: [PATCH 13/16] pci: pcie-designware: drop duplicate resource assigning
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The resources in the pci_controller are already assigned in

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 387fac5c0e..66ae5b59a1 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -30,7 +30,6 @@
 #include <abort.h>
 
 static const struct pci_ops dw_pcie_ops;
-static unsigned long global_io_offset;
 
 static int dw_pcie_rd_own_conf(struct pcie_port *pp, int where, int size,
 			       u32 *val)
@@ -116,11 +115,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		unsigned long restype = range.flags & IORESOURCE_TYPE_BITS;
 
 		if (restype == IORESOURCE_IO) {
-			of_pci_range_to_resource(&range, np, &pp->io);
-			pp->io.name = "I/O";
-			pp->io.start = range.pci_addr + global_io_offset;
-			pp->io.end =  range.pci_addr + range.size + global_io_offset - 1;
-			pp->io_size = resource_size(&pp->io);
+			pp->io_size = range.size;
 			pp->io_bus_addr = range.pci_addr;
 			pp->io_base = range.cpu_addr;
 
@@ -129,9 +124,7 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 							 parser.np + na, ns);
 		}
 		if (restype == IORESOURCE_MEM) {
-			of_pci_range_to_resource(&range, np, &pp->mem);
-			pp->mem.name = "MEM";
-			pp->mem_size = resource_size(&pp->mem);
+			pp->mem_size = range.size;
 			pp->mem_bus_addr = range.pci_addr;
 
 			/* Find the untranslated MEM space address */
@@ -161,8 +154,6 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 
 	pp->pci.pci_ops = &dw_pcie_ops;
 	pp->pci.set_busno = dw_pcie_set_local_bus_nr;
-	pp->pci.mem_resource = &pp->mem;
-	pp->pci.io_resource = &pp->io;
 
 	register_pci_controller(&pp->pci);
 
-- 
2.39.2



