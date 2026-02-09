Delivery-date: Mon, 09 Feb 2026 15:44:42 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpSVH-00AaQL-0x
	for lore@lore.pengutronix.de;
	Mon, 09 Feb 2026 15:44:42 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpSVG-0003uX-9f
	for lore@pengutronix.de; Mon, 09 Feb 2026 15:44:42 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=h2nJe06K8ZQMvzDmAmRrGw9Nxhpc59cOWFqUHbwdw6U=; b=ebY5ERhnyGWWlQ07PgUHkRxeph
	eX+Xsh9vgKfHwKVIcIjfoh3u0yxxy5nt7OyGiqj1qVGzJK3VdmpXx1Tltj819+3IfX3Qn6CK8WkZk
	Xs03tHSy5Hryg5DCBd2M0zihH1dByE1wLIURmr6Ytnz/H+akl9S6UQPm9uPzamo3OuQeuh2YweVxQ
	Fn3dGZAdmGvopY2+WGWiLTofJto1Qsd6vs/369qAmyO854+LHY7s6oGfNAOdGjDPEm6pfXMjFsBHt
	iX5zbuu8w1FeZyVdk0Px+1TTucmXXPD1okHWHTVGovfYGnwXWzRl69u4PxaUYpey+tQBSlG1z/ZG2
	Hgpwq+6Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpSUj-0000000FXS2-3m67;
	Mon, 09 Feb 2026 14:44:09 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpSUc-0000000FXQK-2Yv9
	for barebox@lists.infradead.org;
	Mon, 09 Feb 2026 14:44:09 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vpSUa-0003ph-R1; Mon, 09 Feb 2026 15:44:00 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vpSUa-004uEo-2K;
	Mon, 09 Feb 2026 15:44:00 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vpSUZ-0081JH-2z;
	Mon, 09 Feb 2026 15:43:59 +0100
Date: Mon, 9 Feb 2026 15:43:59 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Renaud Barbier <renaud.barbier@ametek.com>
Cc: barebox@lists.infradead.org
Message-ID: <aYnyr03HdE8B-b5o@pengutronix.de>
References: <20260204114621.2130261-1-renaud.barbier@ametek.com>
 <20260204114621.2130261-5-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260204114621.2130261-5-renaud.barbier@ametek.com>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260209_064402_652316_59978FCA 
X-CRM114-Status: GOOD (  20.01  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH v2 4/4] ARM: ls1021a: initial Ethernet and mdio
 configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Hi Renaud,

On Wed, Feb 04, 2026 at 11:46:21AM +0000, Renaud Barbier wrote:
> diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-iot.dts
> index d7e8bcc7ed..33282c8f52 100644
> --- a/arch/arm/dts/fsl-ls1021a-iot.dts
> +++ b/arch/arm/dts/fsl-ls1021a-iot.dts
> @@ -69,6 +69,34 @@ &i2c2 {
>  	status = "disabled";
>  };
>  
> +&enet0 {
> +	status = "disabled";
> +};
> +
> +&enet1 {
> +	tbi-handle = <&tbi1>;
> +	phy-handle = <&phy3>;
> +	phy-mode = "sgmii";
> +	/* Disable property as transmit fails without a DMA sync */
> +	/delete-property/ dma-coherent;
> +};
> +
> +&enet2 {
> +	status = "disabled";
> +};
> +
> +&mdio0 {
> +	/* Rename the compatible name property as the mdio register offset
> +	 * in the gianfar driver depends on this name. Once the driver
> +	 * is in sync with Linux, it may be gone.
> +	 */
> +	compatible = "fsl,etsec2-mdio";

What am I missing here? The "fsl,etsec2-mdio" compatible is introduced
in your patch series and the original "gianfar" compatible is unused in
barebox, so why not use the original "gianfar" compatible?

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


