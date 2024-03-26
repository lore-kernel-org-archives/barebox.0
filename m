Delivery-date: Tue, 26 Mar 2024 11:36:48 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4Ai-0054X2-01
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:36:48 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp4Ag-0002W4-1X
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:36:47 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wS6Ugi9mNxP7yHKgeotuaxd1CJ2stMzFbGAxCk1DD6w=; b=37D8qw0oRc+vuXT5THITRYS69X
	kawPizQQ9iZ/fVC2LGnMsY5cFpl391yf16IorMzY9UYD2/njMaJ6zZnv/OSxKMAwmlP+PPxLWfUqQ
	giMYBgl7qJ0OdpHGLlo4wXSjj3Or4FJSkr4OKcmftBSmg2ZJhEGsb9RoAxwn6sSQmRx32vfiZcSTS
	sOCXqBVcI/h1NNJkjiEIq1tXOGNxoa8V4ZtIB+Xrl3tiCbALgIXr8E2nNJXC+FKRYVzsPwj/HNUBV
	k3nRXLcdlhYFbTA80rUqwBCB/tjXaI/hD4FtaHf17HuPWJk/1xMbEH7ehsZ20hR+BiQa3uR0FR1ED
	Lp9XM1Ug==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp4A1-000000045KH-2hZp;
	Tue, 26 Mar 2024 10:36:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp49w-000000045Hu-06hf
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:36:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49t-00023T-NE; Tue, 26 Mar 2024 11:35:57 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp49r-008b6w-Np; Tue, 26 Mar 2024 11:35:55 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-2B;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:45 +0100
Message-Id: <20240326100746.471532-16-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_033600_101218_C1C9C31A 
X-CRM114-Status: GOOD (  13.38  )
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
Subject: [PATCH 15/16] pci: pcie-designware: iterate over windows
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The ranges property has already been parsed in pci_controller_init(), so
instead of iterating over the ranges again, use the result stored in
the resource_entry list to initialize the controller base addresses.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c | 27 +++++++++++++--------------
 1 file changed, 13 insertions(+), 14 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index 87842bf4ee..cd1d9433aa 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -72,9 +72,9 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	struct dw_pcie *pci = to_dw_pcie_from_pp(pp);
 	struct device *dev = pci->dev;
 	struct device_node *np = dev->of_node;
-	struct of_pci_range range;
 	struct of_pci_range_parser parser;
 	struct resource *cfg_res;
+	struct resource_entry *window;
 	int ret;
 
 	pp->pci.parent = dev;
@@ -96,19 +96,18 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 		return -EINVAL;
 	}
 
-	/* Get the I/O and memory ranges from DT */
-	for_each_of_pci_range(&parser, &range) {
-		unsigned long restype = range.flags & IORESOURCE_TYPE_BITS;
-
-		if (restype == IORESOURCE_IO) {
-			pp->io_size = range.size;
-			pp->io_bus_addr = range.pci_addr;
-			pp->io_base = range.cpu_addr;
-		}
-		if (restype == IORESOURCE_MEM) {
-			pp->mem_size = range.size;
-			pp->mem_bus_addr = range.pci_addr;
-			pp->mem_base = range.cpu_addr;
+	resource_list_for_each_entry(window, &pp->pci.windows) {
+		switch (resource_type(window->res)) {
+		case IORESOURCE_IO:
+			pp->io_size = resource_size(window->res);
+			pp->io_bus_addr = window->res->start - window->offset;
+			pp->io_base = window->res->start;
+			break;
+		case IORESOURCE_MEM:
+			pp->mem_size = resource_size(window->res);
+			pp->mem_bus_addr = window->res->start - window->offset;
+			pp->mem_base = window->res->start;
+			break;
 		}
 	}
 
-- 
2.39.2



