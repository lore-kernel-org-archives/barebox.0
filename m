Delivery-date: Tue, 26 Mar 2024 11:08:58 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jm-0051mR-1T
	for lore@lore.pengutronix.de;
	Tue, 26 Mar 2024 11:08:58 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rp3jk-0002vF-ES
	for lore@pengutronix.de; Tue, 26 Mar 2024 11:08:58 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kO1ZuftMNyjBnyMdLh7ePCaFpLef9YmalZR5zMpzpaA=; b=C5MwAHk6TBx0KiNogWdN9mEW6B
	5BY3NC84UBvXLJOWMeErC18CEtDMHkmue1JmArX/LNcw2ivXfZ4dg+YhKPltFnCJBbvX0h1ghIqp4
	pl6HHT5WtdXZ4tjjq+nt+jpQ9Hy832Z2uw/v68aYnXk8OK2bupRgLDNG8UOe2jq4tB0hCdQeNATYh
	RjnT7U7j/0W28LTIAg31f2tAs+QcHEImQr01iWthidabHDc3Zrczk26NaZPC4MHmcIt3FDg/WjNZK
	K7G5vbWVfGBijBmp5YeWgMXNp9yhLYZt775SKtwU/RL1Kt9kV/CudtmWlbt6yv2zfKLp8OHPYdRLV
	lPQ0JQFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3iv-00000003xbz-0cYA;
	Tue, 26 Mar 2024 10:08:05 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rp3ii-00000003xRq-0ihw
	for barebox@lists.infradead.org;
	Tue, 26 Mar 2024 10:07:55 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-0002GL-L7; Tue, 26 Mar 2024 11:07:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-008b0d-8X; Tue, 26 Mar 2024 11:07:47 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rp3id-00202A-0U;
	Tue, 26 Mar 2024 11:07:47 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 26 Mar 2024 11:07:35 +0100
Message-Id: <20240326100746.471532-6-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240326_030752_447149_2282024C 
X-CRM114-Status: UNSURE (   9.80  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 05/16] pci: pcie-designware: remove unused variable
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

struct pcie_port::mem_base is set but not used. Remove it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/pci/pcie-designware-host.c | 2 --
 drivers/pci/pcie-designware.h      | 1 -
 2 files changed, 3 deletions(-)

diff --git a/drivers/pci/pcie-designware-host.c b/drivers/pci/pcie-designware-host.c
index b34fc482ed..bebdb5cbc7 100644
--- a/drivers/pci/pcie-designware-host.c
+++ b/drivers/pci/pcie-designware-host.c
@@ -152,8 +152,6 @@ int __init dw_pcie_host_init(struct pcie_port *pp)
 	if (!pci->dbi_base)
 		pci->dbi_base = IOMEM(pp->cfg.start);
 
-	pp->mem_base = pp->mem.start;
-
 	if (!pp->va_cfg0_base)
 		pp->va_cfg0_base = IOMEM((unsigned long)pp->cfg0_base);
 
diff --git a/drivers/pci/pcie-designware.h b/drivers/pci/pcie-designware.h
index 4bb0795d06..0de7b8a868 100644
--- a/drivers/pci/pcie-designware.h
+++ b/drivers/pci/pcie-designware.h
@@ -158,7 +158,6 @@ struct pcie_port {
 	u64			io_mod_base;
 	phys_addr_t		io_bus_addr;
 	u32			io_size;
-	u64			mem_base;
 	u64			mem_mod_base;
 	phys_addr_t		mem_bus_addr;
 	u32			mem_size;
-- 
2.39.2



