Delivery-date: Thu, 26 Mar 2026 07:54:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5ebk-005FiK-0L
	for lore@lore.pengutronix.de;
	Thu, 26 Mar 2026 07:54:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5ebj-0001tp-EZ
	for lore@pengutronix.de; Thu, 26 Mar 2026 07:54:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=K8EFzA0i6T44PA8kQCHIz+JxJuqbkU2rywIGLNxeJF8=; b=P7+xQP5n4bKczNt/XTwVCrRtWh
	5G/3zNevcBhxq6GwX49/Basz17bGkkKbVkr8CaBlaqzRaj6UHYY3NhPKdI67FgO7NEyIltrpKmlkm
	gOC5V/19FeuvbS/c4qXDhFXK/9wTrRvUtCc2BFR5hAswF4oq4jTQEgqqEold4OjUceNZ231ZiTaN+
	r8BPQ4TEyH9oP9Kt7IcYvTBLFrWbh6behUtv8PELzwSMoVH0hh7OEaJioXHDM4dR3we5WedVH5dE4
	8b1nW91z3C/bwc8frjUgZnmYpra7ffcpQuHtWe61NaqGSFSyOqJqYhWYNiR76Cg6e5ooEGrqj33o6
	O6bWpjrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5eb3-00000004sWC-1Emq;
	Thu, 26 Mar 2026 06:53:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5eb0-00000004sVo-086Z
	for barebox@lists.infradead.org;
	Thu, 26 Mar 2026 06:53:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <ore@pengutronix.de>)
	id 1w5eaw-0001lz-6D; Thu, 26 Mar 2026 07:53:30 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <ore@pengutronix.de>)
	id 1w5eav-002BPU-2h;
	Thu, 26 Mar 2026 07:53:29 +0100
Received: from ore by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <ore@pengutronix.de>)
	id 1w5eav-00000006eJU-3747;
	Thu, 26 Mar 2026 07:53:29 +0100
Date: Thu, 26 Mar 2026 07:53:29 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: David Picard <david.picard@clermont.in2p3.fr>
Cc: ML_Barebox <barebox@lists.infradead.org>
Message-ID: <acTX6Wgh1meZgedk@pengutronix.de>
References: <fdced1c1-5efd-481c-8b3b-a8cb43d0c220@clermont.in2p3.fr>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <fdced1c1-5efd-481c-8b3b-a8cb43d0c220@clermont.in2p3.fr>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_235334_091885_5ED1C9C9 
X-CRM114-Status: GOOD (  23.37  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: Enclustra SA2: enable dual fast Ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi David,

Ethernet is usually my playground, so I'll answer here as far as I can
:)

On Wed, Mar 25, 2026 at 05:13:52PM +0100, David Picard wrote:
> Hello,
> 
> I am still using the same Mercury_SA2_ST1_Reference_Design [1][2] released
> by the manufacturer:
> https://github.com/enclustra/Mercury_SA2_ST1_Reference_Design.git
> 
> But I compiled a variant of the project to enable dual fast Ethernet,
> because I need a 2nd Ethernet interface.

> SA2 module Ethernet layout:
> - 1 Ethernet MAC ("gmac1" in the DTS) of the HPS [3] is used for gigabit
> Ethernet, and connects with RGMII to PHY at address 3 >> working!
> - 2 Ethernet MACs are implemented as FPGA IP cores and connect with RMII to
> PHYs at addresses 1 and 2 >> to be configured...
> 
> All 3 PHYs share the same MDIO bus.

In this case barebox will need to resolve all pre-dependencies in the
correct order, which make things tricky:
- FPGA MACs should be probed after MDIO bus was scanned and PHYs
  detected. If PHY resets are asserted, we need to deasserted them in
  software, before MDIO bus scan.
- if MDIO bus is a part of the gmac1 block and driver, then this one
  should be probed as the first one in the chain.
- except of resets and MDIO bus, we need also clocks for the PHYs and
  and MACs.

As soon as all related topology is reconstructed in the correct order,
it will magically work :D

> I generated a DTS file with Intel's tool:
> $ sopc2dts --force-altr -t dts -i
> ./Quartus/ME-SA2-D6-7I-D11-DFE/sdmmc/Mercury_SA2_pd.sopcinfo -o
> Mercury_SA2_pd.dts
> 
> The file is here [4]:
> https://filesender.renater.fr/?s=download&token=b2eeab16-063c-41ef-8abe-ea5b44f8f25a&lang=en

Hm, i see some MACs, but no PHY configurations in attached devicetree.
PHYs should be properly described with resets and MAC <> PHY linkage.

> Now, I am trying to merge the fast Ethernet section with the
> socfpga_cyclone5_mercury_sa2.dtsi, but I really need a hint, here...
> https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
> https://git.pengutronix.de/cgit/barebox/tree/dts/src/arm/intel/socfpga/socfpga.dtsi
> 
> However, I do know for a fact that the 2 PHYs at addresses 1 and 2 share the
> same reset pin and can be released from reset by:
> reset-gpios = <&portb 6 GPIO_ACTIVE_LOW>;

Shared reset for PHYs is not very nice design :)  Some times PHYs need
to be reset for each link up/down cycle. A shared reset makes it
impossible.

Best Regards,
Oleksij
-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


