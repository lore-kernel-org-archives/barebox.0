Delivery-date: Mon, 11 Sep 2023 14:42:24 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgFF-00BV05-Ej
	for lore@lore.pengutronix.de; Mon, 11 Sep 2023 14:42:24 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qfgFD-00057z-AY
	for lore@pengutronix.de; Mon, 11 Sep 2023 14:42:23 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vptDT7vq3k+2r3PNw8FurX5rloscEF4MZlutzXkYkg4=; b=1yc2j/DlkjIIcVEOkDhUaKDYHb
	zF0Mxvw1WOIIkGGENYAV6V/m1Z+IcdAjIUbQozXfXsQTumD/Et9TODEBVlRUmmK9SELuHJHugRDgl
	oEzBf7Vnfz7OqIcrEs5fnJ+MG/DXKGt/ZMg5ATYlea7wqgOUaGMERmObwRM+UBR9DJjaMfekJKc6/
	uWzTVFFjVjAZh5x0c6Lv11wyuV6FM//+YJBtBJjqXv7R2fbB2SsZwafjwRyIdyyD6gm67NepHkgEg
	slTewpHALbtDY1jLHgvKFgZbBPqQ10NjisJ5QsdvtwObIJHaCeRRWV1nPTVl19mQ02D0vpKSKN1H/
	HzaijXFw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgE5-000VL5-0M;
	Mon, 11 Sep 2023 12:41:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qfgE0-000VKc-2V
	for barebox@lists.infradead.org;
	Mon, 11 Sep 2023 12:41:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfgDz-0004zV-6N; Mon, 11 Sep 2023 14:41:07 +0200
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfgDy-005YR2-Pw; Mon, 11 Sep 2023 14:41:06 +0200
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qfgDy-0053Ma-FB; Mon, 11 Sep 2023 14:41:06 +0200
Date: Mon, 11 Sep 2023 14:41:06 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, jzi@pengutronix.de
Message-ID: <20230911124106.yfspyxsw4quuhzr4@pengutronix.de>
References: <20230911122356.2709296-1-a.fatoum@pengutronix.de>
 <20230911122913.5ohz4nvm6lrq7ms5@pengutronix.de>
 <14c4b608-2680-7296-b2fa-09b40f20dc08@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14c4b608-2680-7296-b2fa-09b40f20dc08@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230911_054108_833569_725AF43C 
X-CRM114-Status: GOOD (  24.68  )
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
> On 11.09.23 14:29, Marco Felsch wrote:
> > On 23-09-11, Ahmad Fatoum wrote:
> >> While we'll continue to support barebox,provide-mac-address, new boards
> >> should prefer using the upstream NVMEM binding for describing the MAC address.
> >>
> >> Add an example to the documentation.
> >>
> >> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> >> ---
> >>  .../bindings/misc/fsl,imx-ocotp.rst           | 25 ++++++++++++++++---
> >>  1 file changed, 22 insertions(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> >> index 202bb3aa07ef..1c45267b1b58 100644
> >> --- a/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> >> +++ b/Documentation/devicetree/bindings/misc/fsl,imx-ocotp.rst
> >> @@ -6,13 +6,14 @@ Required properties:
> >>  * ``compatible``: ``fsl,imx6q-ocotp``
> >>  * ``reg``: physical register base and size
> >>  
> >> -Optional properties:
> >> +Deprecated properties:
> >>  
> >>  * ``barebox,provide-mac-address``: Provide MAC addresses for Ethernet devices. This
> >>    can be multiple entries in the form <&phandle regofs> to assign a MAC
> >> -  address to an Ethernet device.
> >> +  address to an Ethernet device. This has been deprecated in favor or the upstream
> >> +  nvmem cell binding.
> >>  
> >> -Example:
> >> +Legacy example:
> > 
> > Do we still need to list it as example? Seems a bit odd for deprecated
> > bindings.
> 
> It's useful to illustrate the difference to the NVMEM binding. Also deprecation
> might be a bit harsh. We will likely never remove support, but we'll try
> to curtail proliferation.

IMHO listing deprecated examples isn't a good way to curtail
proliferation. Anyway the change is correct and therefore feel free to
add my:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

> Cheers,
> Ahmad
> 
> > 
> > Regards,
> >   Marco
> > 
> >>  .. code-block:: none
> >>  
> >> @@ -21,3 +22,21 @@ Example:
> >>    	reg = <0x021bc000 0x4000>;
> >>    	barebox,provide-mac-address = <&fec 0x620>;
> >>    };
> >> +
> >> +Upstream alternative:
> >> +
> >> +.. code-block:: none
> >> +
> >> +  &ocotp1 {
> >> +  	#address-cells = <1>;
> >> +  	#size-cells = <1>;
> >> +
> >> +  	fec_mac_addr: mac-addr@88 {
> >> +  		reg = <0x88 6>;
> >> +  	};
> >> +  };
> >> +
> >> +  &fec {
> >> +  	nvmem-cells = <&fec_mac_addr>;
> >> +  	nvmem-cell-names = "mac-address";
> >> +  };
> >> -- 
> >> 2.39.2
> >>
> >>
> >>
> > 
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


