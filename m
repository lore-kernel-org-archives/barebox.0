Delivery-date: Mon, 13 Mar 2023 14:50:44 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiZX-00642i-Lm
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:50:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiZX-0007Ia-0Q
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:50:43 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6wvY3JhpHC7psqAgMWEmuin3ekhhkYZRDLdRvNA6LU8=; b=uLljNNiPNXDNQY3gpXYYWSGp8k
	phXl/ccw6gsjqnbz0Ls/oImysoGQG8avBT1/h/1XB9AceiZCyXadEdpo1oo9B6/3g+VUsHilmy5tI
	eR+rEjjyXzl1LdrSRFRFhTEln9FuEFn7OhjEE/vPxoMTyUP9BhduABCUtlFB05l9vwwjkTZyiyz/L
	DLr7gP4jVd5bZtM1/szZ37yf6GrkDoeaLEe/AgEJkk5lUFoxnEOrbgPuJjsJcp2B/AhqOjO8tTd+c
	1KLfs7GnfgQkM++1wWqB5DoDg6gqJYDYZkZf4NZeTLuZO4ZlgPTUxZV0fAqa23CtijpnBeomYTqVK
	deZvLwfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiYM-005zsR-J5; Mon, 13 Mar 2023 13:49:30 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiYI-005zsH-NP
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=6wvY3JhpHC7psqAgMWEmuin3ekhhkYZRDLdRvNA6LU8=; b=EsRNQ7zDJ/wD1sWY5UVAM5KZ7A
	zfZjenm+Eltm/vl3hpF1DHuU2Dt0qnKw9ji8B/0NRgvlqfXExBV4fOuDmwWx056uMqq0uiMs1+wDL
	sgJgO2xtmt34ve1LDJYiaZUe5kBOD2drSppnJo/DiOvbMQ9SWW7PpeudJKzgFetWjJyB/pu/yvRzx
	PqyM70GuoDeJ1i3xfT0QSKVqcFkuJWG6rmLSl4i5sRR5p7u/Shmbe3iYj11Nq0FsE8tPgubRVnwTV
	PVaG2Ip9BT4lKzHt+VPBaGdo4ym5aDHDj5HwAmD7JTkGl7fMdbFUTNNZhOp1cdQ5flgkUsZFShatE
	RrQd/BMw==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiYF-001Nd7-0o
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:49:25 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pbiYE-00072q-I1; Mon, 13 Mar 2023 14:49:22 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pbiYE-0006yw-Aj; Mon, 13 Mar 2023 14:49:22 +0100
Date: Mon, 13 Mar 2023 14:49:22 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230313134922.d4xvhcibk76mkgb6@pengutronix.de>
References: <20230312162928.2110697-1-m.felsch@pengutronix.de>
 <4069572b-56f9-c63d-bb04-90e583fe9ea4@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4069572b-56f9-c63d-bb04-90e583fe9ea4@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134923_420166_8B15C7FB 
X-CRM114-Status: GOOD (  23.99  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH] ARM: dts: i.MX8MP: remove memory node
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-03-13, Ahmad Fatoum wrote:
> On 12.03.23 17:29, Marco Felsch wrote:
> > since commit f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") we
> > make use of the esdctl driver. This cause the below error since barebox
> > try to add the memory twice.
> > 
> > | imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
> > | initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
> 
> Starting with commit 0a78ac84e9fe ("memory: fuse overlapping memory banks"),
> this should not be leading to errors. Can you increase debugging in
> common/resource.c and see why you run into this error?

I did this and saw that memory bank ram0 is added added twice:
 - first by generic of
 - 2nd by esdctl

Regards,
   Marco


> 
> 
> > 
> > Remove the memory node to fix this.
> > 
> > This behaviour was seen on a i.mx8mp-evk but the
> > imx8mp-tqma8mpql-mba8mpxl also has a memory node and includes the
> > barebox.dtsi.
> > 
> > Fixes: f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles")
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/dts/imx8mp-evk.dts                | 2 ++
> >  arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts | 2 ++
> >  2 files changed, 4 insertions(+)
> > 
> > diff --git a/arch/arm/dts/imx8mp-evk.dts b/arch/arm/dts/imx8mp-evk.dts
> > index 0acc3731d5..c7e1f35d2d 100644
> > --- a/arch/arm/dts/imx8mp-evk.dts
> > +++ b/arch/arm/dts/imx8mp-evk.dts
> > @@ -30,6 +30,8 @@
> >  	};
> >  };
> >  
> > +/delete-node/ &{/memory@40000000};
> > +
> >  &ethphy1 {
> >  	reset-assert-us = <15000>;
> >  	reset-deassert-us = <100000>;
> > diff --git a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> > index 6e81f58e27..bf23e40489 100644
> > --- a/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> > +++ b/arch/arm/dts/imx8mp-tqma8mpql-mba8mpxl.dts
> > @@ -24,6 +24,8 @@
> >  	};
> >  };
> >  
> > +/delete-node/ &{/memory@40000000};
> > +
> >  &usdhc2 {
> >  	#address-cells = <1>;
> >  	#size-cells = <1>;
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


