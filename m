Delivery-date: Wed, 25 Mar 2026 17:14:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5QsU-004yyr-2g
	for lore@lore.pengutronix.de;
	Wed, 25 Mar 2026 17:14:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w5QsU-0004Dk-72
	for lore@pengutronix.de; Wed, 25 Mar 2026 17:14:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:Subject:To:From:MIME-Version:Date:Message-ID:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=k0Epscn6rqBuidcbyu8KSGt1vAEk+UQIG15axBK35TI=; b=K8yNF3+dKJsSCle9Jd6h1btmen
	EBTH0qsXCWorFp1Ou0lLLfMHHaxcVbALBkIfsI8YE1xaus0UUUcagneleLD4RwOhZxBvxfoz593wF
	Vqxy/C3vqtX+P82b8RJe11D8Hf66WNDhd6kBkfs3CdUYkgOBGsTFafg8kTrCwW60bTb5PLoTL+k7r
	JezHu36hvVedrNLSLmFXPwoirii1DHY6YvCPn9TKxo5S8MIZS9pWWzfeNHbcYb32qhmR9WKfCojP6
	CqrWukkLzfH/4vEbJknd84TUgK1w8qTbrFa1qRAYkbmEEa6KpjEIwqLiP7EryFvh9LhRkS9OzKzNf
	acrCxs5A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Qrp-00000003rJ0-0SdP;
	Wed, 25 Mar 2026 16:14:01 +0000
Received: from cczrelay01.in2p3.fr ([134.158.66.151] helo=cczrelay03.in2p3.fr)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w5Qrl-00000003rI1-3Lhu
	for barebox@lists.infradead.org;
	Wed, 25 Mar 2026 16:14:00 +0000
Received: from [134.158.124.135] (clrelecpo09w.in2p3.fr [134.158.124.135])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by cczrelay03.in2p3.fr (Postfix) with ESMTPSA id 5C6FF1800786
	for <barebox@lists.infradead.org>; Wed, 25 Mar 2026 17:13:52 +0100 (CET)
Message-ID: <fdced1c1-5efd-481c-8b3b-a8cb43d0c220@clermont.in2p3.fr>
Date: Wed, 25 Mar 2026 17:13:52 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: David Picard <david.picard@clermont.in2p3.fr>
Content-Language: fr, en-US
To: ML_Barebox <barebox@lists.infradead.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260325_091358_003090_9E9514C1 
X-CRM114-Status: UNSURE (   7.95  )
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
X-Spam-Status: No, score=-3.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Enclustra SA2: enable dual fast Ethernet
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hello,

I am still using the same Mercury_SA2_ST1_Reference_Design [1][2] 
released by the manufacturer:
https://github.com/enclustra/Mercury_SA2_ST1_Reference_Design.git

But I compiled a variant of the project to enable dual fast Ethernet, 
because I need a 2nd Ethernet interface.

SA2 module Ethernet layout:
- 1 Ethernet MAC ("gmac1" in the DTS) of the HPS [3] is used for gigabit 
Ethernet, and connects with RGMII to PHY at address 3 >> working!
- 2 Ethernet MACs are implemented as FPGA IP cores and connect with RMII 
to PHYs at addresses 1 and 2 >> to be configured...

All 3 PHYs share the same MDIO bus.

I generated a DTS file with Intel's tool:
$ sopc2dts --force-altr -t dts -i 
./Quartus/ME-SA2-D6-7I-D11-DFE/sdmmc/Mercury_SA2_pd.sopcinfo -o 
Mercury_SA2_pd.dts

The file is here [4]:
https://filesender.renater.fr/?s=download&token=b2eeab16-063c-41ef-8abe-ea5b44f8f25a&lang=en

Now, I am trying to merge the fast Ethernet section with the 
socfpga_cyclone5_mercury_sa2.dtsi, but I really need a hint, here...
https://git.pengutronix.de/cgit/barebox/tree/arch/arm/dts/socfpga_cyclone5_mercury_sa2.dtsi
https://git.pengutronix.de/cgit/barebox/tree/dts/src/arm/intel/socfpga/socfpga.dtsi

However, I do know for a fact that the 2 PHYs at addresses 1 and 2 share 
the same reset pin and can be released from reset by:
reset-gpios = <&portb 6 GPIO_ACTIVE_LOW>;

Currently, I program the FPGA from Linux with the .rbf file.

David (alias dpcrd)

=====
[1] An Intel Quartus project that generates the FPGA .rbf file, HPS (ARM 
core) configuration, etc.
[2] SA2 is the plug-in module with the SoC FPGA; ST1 is the development 
baseboard with connectors.
[3] HPS (Hardware Processor System) = ARM core inside the SoC FPGA chip.
[4] Generated DTS file + a screenshot of Platform Designer, the tool to 
configure the SoC FPGA system. "hps_0" is the ARM core, 
"fast_ethernet_0" (collapsed for clarity) and "fast_ethernet_1" are 2 
instances of the IP core. The left panel shows logical connections 
between blocks. Filled dots: horizontal and vertical lines are 
connected. Hollow dots: no connection.



