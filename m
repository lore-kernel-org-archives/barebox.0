Delivery-date: Mon, 11 Sep 2023 14:30:31 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfg3k-00BUOn-P6
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:30:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfg3i-0003kQ-LY
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:30:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4VkRIXhi4ScGN206rtwepxbc2+xHKWmfnKCWuW/LKRw=; b=2I88vA4Nu/69mUgSBtja6KrFEG
	4/+VIp6A9EPV8Y8+ThDJrg6A1y4F7WOnn2+eW39WDosZXa2Vqzi3ttbIyiDd5x8k4wVisChz/bQTk
	FHyqRBO1LkaNlS8jBehmPK6/5pqbpTxx7lMOVVv7JZpnkPzR3cwvChT7SWRbOUjYndnDpyy7UrL53
	CypLCFFethPaO0J6cxd/Fw1OsxVYQAxxX0LJ/c2pwvf4sDajBqA0gsdxzyuE4/0p2P+Cg/QJ3zfvZ
	YPjbcn9TwcnvHuTIaYByZKWpUoJQ4NS9AXgneLT7lh+K3YCk29W/2DL9QkphwRMGM8x/frqhdr/i0
	eQp7AeQA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfg2a-000UIu-1E;
	Mon, 11 Sep 2023 12:29:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfg2X-000UHl-1d
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:29:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfg2U-0003YY-Mu; Mon, 11 Sep 2023 14:29:14 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfg2U-005XwZ-Al; Mon, 11 Sep 2023 14:29:14 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfg2T-0053IV-TS; Mon, 11 Sep 2023 14:29:13 +0200
Date: Mon, 11 Sep 2023 14:29:13 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jzi@pengutronix.de
Message-ID: <20230911122913.5ohz4nvm6lrq7ms5@pengutronix.de>
References: <20230911122356.2709296-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230911122356.2709296-1-a.fatoum@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_052917_547504_A73D5C14 
X-CRM114-Status: GOOD (  17.54  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] Documentation: dt-bindings: ocotp: deprecate
 barebox,provide-mac-address
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-09-11, Ahmad Fatoum wrote:
> While we'll continue to support barebox,provide-mac-address, new boards
> should prefer using the upstream NVMEM binding for describing the MAC address.
> 
> Add an example to the documentation.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  .../bindings/misc/fsl,imx-ocotp.rst           | 25 ++++++++++++++++---
>  1 file changed, 22 insertions(+), 3 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> index 202bb3aa07ef..1c45267b1b58 100644
> --- a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> +++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> @@ -6,13 +6,14 @@ Required properties:
>  * ``compatible``: ``fsl,imx6q-ocotp``
>  * ``reg``: physical register base and size
>  
> -Optional properties:
> +Deprecated properties:
>  
>  * ``barebox,provide-mac-address``: Provide MAC addresses for Ethernet devices. This
>    can be multiple entries in the form <&phandle regofs> to assign a MAC
> -  address to an Ethernet device.
> +  address to an Ethernet device. This has been deprecated in favor or the upstream
> +  nvmem cell binding.
>  
> -Example:
> +Legacy example:

Do we still need to list it as example? Seems a bit odd for deprecated
bindings.

Regards,
  Marco

>  .. code-block:: none
>  
> @@ -21,3 +22,21 @@ Example:
>    	reg = <0x021bc000 0x4000>;
>    	barebox,provide-mac-address = <&fec 0x620>;
>    };
> +
> +Upstream alternative:
> +
> +.. code-block:: none
> +
> +  &ocotp1 {
> +  	#address-cells = <1>;
> +  	#size-cells = <1>;
> +
> +  	fec_mac_addr: mac-addr@88 {
> +  		reg = <0x88 6>;
> +  	};
> +  };
> +
> +  &fec {
> +  	nvmem-cells = <&fec_mac_addr>;
> +  	nvmem-cell-names = "mac-address";
> +  };
> -- 
> 2.39.2
> 
> 
> 


