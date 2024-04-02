Delivery-date: Tue, 02 Apr 2024 10:39:42 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZgE-0037BX-1r
	for lore@lore.pengutronix.de;
	Tue, 02 Apr 2024 10:39:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rrZgD-0003uw-UH
	for lore@pengutronix.de; Tue, 02 Apr 2024 10:39:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=N6ugc2blx5kJYSNwVKPobEjSaR7zx8iarcJOWnuhH+o=; b=IDeEhsgf1rfKi61roc+5xWBaKP
	TvXpQgLvqLHcFq/Ejlh/yMIoY9LjiDiCruX224Fw6Ba7yNj4lROvz/7MQWZ9YNc0jqp4dM6Kp8OiG
	4IdkNKYTQwI3GA57PRsrI0xwnoC1saCD6ZyLoUd6z1QZQKgcezjDYfwUPGhKGAxwL+ipT90fi5/22
	eV8iKYBVknorhB5K4fkS1rgCF7Nd7tGwuDzlnXonjr/mGPKSpv/iCPLmyFcHYRIH/4mgI38qRV842
	ERovESgvUaMFeoYWMrVRk8s4jKW8l7UPkLtZ+5O3rUux7ZlX7xGcgiUJU0ZIvQzwBB5/oLbbY0M4W
	qB8CVsWQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZfh-0000000AHZv-3RoJ;
	Tue, 02 Apr 2024 08:39:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rrZfd-0000000AHZN-2j1I
	for barebox@lists.infradead.org;
	Tue, 02 Apr 2024 08:39:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZfc-0003JF-28; Tue, 02 Apr 2024 10:39:04 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZfb-009wk1-Ls; Tue, 02 Apr 2024 10:39:03 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rrZfb-00Dv7H-1y;
	Tue, 02 Apr 2024 10:39:03 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>, 
 Sascha Hauer <s.hauer@pengutronix.de>
In-Reply-To: <20240326100746.471532-1-s.hauer@pengutronix.de>
References: <20240326100746.471532-1-s.hauer@pengutronix.de>
Message-Id: <171204714360.3317772.8116685004509656692.b4-ty@pengutronix.de>
Date: Tue, 02 Apr 2024 10:39:03 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240402_013905_729514_11BAD873 
X-CRM114-Status: GOOD (  10.28  )
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
Subject: Re: [PATCH 00/16] PCI: support non 1:1 mappings
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)


On Tue, 26 Mar 2024 11:07:30 +0100, Sascha Hauer wrote:
> This series evolved from getting PCIe to work on a RK3568 based board.
> The device tree PCIe ranges property uses non 1:1 mappings between CPU
> and PCI bus which this series adds support for. With this series we
> parse the ranges property into struct resource_entry windows like done
> in Linux. With this we get pcibios_resource_to_bus() and
> pcibios_bus_to_resource() to translate between the PCI/CPU address
> spaces. Additionally we have some cleanup for the pcie-designware driver
> and we can remove the quirk we already introduced for the rk3588 Rock5b
> board in which we have overwritten the ranges property.
> 
> [...]

Applied, thanks!

[01/16] net: phy: realtek: add phy for RTL8168 internal phy
        https://git.pengutronix.de/cgit/barebox/commit/?id=f339f40dcc62 (link may not be stable)
[02/16] pci: add 'self' member to struct pci_bus
        https://git.pengutronix.de/cgit/barebox/commit/?id=1d6dae5748f0 (link may not be stable)
[03/16] pci: rename parent_bus to parent
        https://git.pengutronix.de/cgit/barebox/commit/?id=9de886af8ad5 (link may not be stable)
[04/16] add support for resource lists
        https://git.pengutronix.de/cgit/barebox/commit/?id=28aafff4c8c2 (link may not be stable)
[05/16] pci: pcie-designware: remove unused variable
        https://git.pengutronix.de/cgit/barebox/commit/?id=596975bddbed (link may not be stable)
[06/16] pci: dwc: Drop support for config space in 'ranges'
        https://git.pengutronix.de/cgit/barebox/commit/?id=990deb7c1f0a (link may not be stable)
[07/16] pci: add pci_controller_init()
        https://git.pengutronix.de/cgit/barebox/commit/?id=fd3be9d95f34 (link may not be stable)
[08/16] pci: support non 1:1 mappings
        https://git.pengutronix.de/cgit/barebox/commit/?id=8fbda940edd8 (link may not be stable)
[09/16] pci: pcie-designware: Speed up waiting for link
        https://git.pengutronix.de/cgit/barebox/commit/?id=61e0de057dc4 (link may not be stable)
[10/16] pci: pcie-dw-rockchip: wait for link
        https://git.pengutronix.de/cgit/barebox/commit/?id=0d0ae293d07c (link may not be stable)
[11/16] pci: drop resources from struct pci_bus
        https://git.pengutronix.de/cgit/barebox/commit/?id=b920c76bc307 (link may not be stable)
[12/16] pci: add of_pci_bridge_init()
        https://git.pengutronix.de/cgit/barebox/commit/?id=efb6fe50eb9e (link may not be stable)
[13/16] pci: pcie-designware: drop duplicate resource assigning
        https://git.pengutronix.de/cgit/barebox/commit/?id=a6fc50a2192f (link may not be stable)
[14/16] pci: pcie-designware: remove dra7xx quirks
        https://git.pengutronix.de/cgit/barebox/commit/?id=016ec9128b49 (link may not be stable)
[15/16] pci: pcie-designware: iterate over windows
        https://git.pengutronix.de/cgit/barebox/commit/?id=2fa3956c036a (link may not be stable)
[16/16] ARM: dts: rk3588-rock-5b: remove pci ranges quirks
        https://git.pengutronix.de/cgit/barebox/commit/?id=f10bd15859b2 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



