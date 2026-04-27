Delivery-date: Mon, 27 Apr 2026 09:21:15 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHGHL-00GrAx-0O
	for lore@lore.pengutronix.de;
	Mon, 27 Apr 2026 09:21:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wHGHK-0000KO-I3
	for lore@pengutronix.de; Mon, 27 Apr 2026 09:21:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Tu+LfuzOM0L9Sr1vUMWlk8qtW76fgc+Z6huLWY/P0vM=; b=WKbGaSzjl0cSk+p8TC1PqGXc3H
	bXf0O6qrDGEi1Lzu8ag2KWW/RVu17XkLS7qemSIQIVYuXfG2MkRAkN/VeepEHHjPK/qZ7xuXvFr4i
	Bb+aB8O9W9gkhNiAV+7xe0Du620vT2ckK+VXczTCXsSq+RTKzeRskzpfCwdHOb0Cvf6G9Hbe9V/p4
	/dbvl4/gNejrE1+YpakJXYvkh4UFP7ua4VKHfXFaLFoq+Jkj0ZiiP6NzQ4jFg0ZhSDyBVLcMLZgJO
	rRi6tWfMyWk0VqPZ0ryjTxqmIeXpo5hE3wBGZa6invtgNu/j/Ar42czTTGCdndh2xeW0h43+l4HlK
	H9/RhJMQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHGGt-0000000GMbk-3qt5;
	Mon, 27 Apr 2026 07:20:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1wHGGr-0000000GMaR-0dZJ
	for barebox@lists.infradead.org;
	Mon, 27 Apr 2026 07:20:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1wHGGo-00009x-5y; Mon, 27 Apr 2026 09:20:42 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1wHGGn-007RsQ-3C;
	Mon, 27 Apr 2026 09:20:42 +0200
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.98.2)
	(envelope-from <sha@pengutronix.de>)
	id 1wHGGn-00000001FOa-3lAI;
	Mon, 27 Apr 2026 09:20:41 +0200
Date: Mon, 27 Apr 2026 09:20:41 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Michael Tretter <m.tretter@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>,
	Steffen Trumtrar <s.trumtrar@pengutronix.de>
Message-ID: <ae8OSdAg1TLIsplr@pengutronix.de>
References: <20260422-socfpga-agilex5-dwmac-v1-1-648a33bd9ec2@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260422-socfpga-agilex5-dwmac-v1-1-648a33bd9ec2@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260427_002045_193397_252B798F 
X-CRM114-Status: GOOD (  24.24  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: socfpga: AXE5-Eagle: fix phy reset
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Michael,

On Wed, Apr 22, 2026 at 05:56:11PM +0200, Michael Tretter wrote:
> The snps,reset-gpio is a property of the Synopsys DesignWare MAC and
> belongs into the gmac node.
> 
> The property is deprecated and shall be replaced by regular gpio reset
> at the phy. However, use the deprecated binding to be sure that the
> dwmac driver handles the reset for now.

So what's missing to handle the regular gpio reset at phy level?

Would be good to have that information in the commit message.

Sascha

> 
> Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> ---
>  arch/arm/dts/socfpga_agilex5_axe5_eagle.dts | 6 +++---
>  1 file changed, 3 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
> index f67b974f2adc..732d6142dcb1 100644
> --- a/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
> +++ b/arch/arm/dts/socfpga_agilex5_axe5_eagle.dts
> @@ -74,16 +74,16 @@ &gmac2 {
>  	status = "okay";
>  	phy-mode = "rgmii-id";
>  	phy-handle = <&emac2_phy0>;
> -
>  	max-frame-size = <9000>;
> +	snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
> +	snps,reset-active-low;
> +	snps,reset-delays-us = <0 10000 10000>;
>  
>  	mdio0 {
>  		#address-cells = <1>;
>  		#size-cells = <0>;
>  		compatible = "snps,dwmac-mdio";
>  		emac2_phy0: ethernet-phy@1 {
> -			snps,reset-gpio = <&portb 10 GPIO_ACTIVE_LOW>;
> -			snps,reset-delays-us = <0 10000 10000>;
>  			reg = <0x1>;
>  			adi,rx-internal-delay-ps = <2000>;
>  			adi,tx-internal-delay-ps = <2000>;
> 
> ---
> base-commit: 7b492daea9347fd55bf29560c2ec494ca1040f95
> change-id: 20260422-socfpga-agilex5-dwmac-9d45a7c123a8
> 
> Best regards,
> -- 
> Michael Tretter <m.tretter@pengutronix.de>
> 
> 

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


