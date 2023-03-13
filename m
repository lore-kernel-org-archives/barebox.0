Delivery-date: Mon, 13 Mar 2023 14:48:21 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiXE-0063Ae-3n
	for lore@lore.pengutronix.de; Mon, 13 Mar 2023 14:48:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pbiXD-0006zB-4p
	for lore@pengutronix.de; Mon, 13 Mar 2023 14:48:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=I3raE3oAvauma43JFI6Sqa3v6PEQRqsMVT37DAWhpdM=; b=XV/DR9PkDAAvUkodE6DKnzEDhA
	OHzQqRjSTNroLGjS0V8LMR91MTQAAC+qEf1NoBXupTs8vunGcgJkXYztRBxN2YFwi3gwO0jqKE6Uf
	cdYzDEjU/40lrMFfNgYi1mmBAq+gspI7oqVt/fFijIVaH6q9uNtdpKwB58sutTe3qsgYCSqYwHBh2
	It+JmXOfQxpqmMF5ideTsn2i6+0XYdRf+78jy208hx13sCyLyOH29aTIL2ek2bsnn+h30Y2lAbdrn
	9sYOpe2ecddv2NNz1hcAVYxiILxRpwxYSlY4GFExsvWL3sDj1Qnay07DwJy3avaKRGO+kTvcoKU10
	VVDPjkzg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiVz-005zQH-Jb; Mon, 13 Mar 2023 13:47:03 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pbiVv-005zPd-7J
	for barebox@bombadil.infradead.org; Mon, 13 Mar 2023 13:46:59 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=In-Reply-To:Content-Type:MIME-Version:
	References:Message-ID:Subject:Cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description;
	bh=I3raE3oAvauma43JFI6Sqa3v6PEQRqsMVT37DAWhpdM=; b=qsTXZy/sHmCWnsnHoaW7Q1eq0e
	ptXdLtMuXmTS9KdKC9Z1O11K9xa4BJYG/I1wrWbV6Tyn3Nddz3u1gCMTPV0nTZkpJWvt74zELH+VQ
	brOo4JTIpsyzEnOP0uLzXCZRN7TQiMBYu1/0tQoVm8fFK6MDrmi2HPVfqV5Qo4ks1b+s8XDUKNi6l
	s9liAseNZmwCuc0mWo5wi/UIGCZt2M758bETzenSuM3iV36YisW5g8tjf97HgiEcPDpx8qnojIex+
	5Wz9cLrmaT+ttTR00uE3XoaICuxQ7neoKcTEaZ5KUur7KCbVKMaUMbQ+RKcmHcdTJNVLHAWKOV/UX
	WPpXrxuQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pbiVr-001Nah-1R
	for barebox@lists.infradead.org;
	Mon, 13 Mar 2023 13:46:57 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pbiVp-0006jZ-MQ; Mon, 13 Mar 2023 14:46:53 +0100
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1pbiVp-0006x1-E8; Mon, 13 Mar 2023 14:46:53 +0100
Date: Mon, 13 Mar 2023 14:46:53 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230313134653.vt23ode65j4bih4r@pengutronix.de>
References: <20230312162928.2110697-1-m.felsch@pengutronix.de>
 <0fa19455f9f6473c263eced4e5d0f672e9fe135a.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0fa19455f9f6473c263eced4e5d0f672e9fe135a.camel@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230313_134655_601355_5CDAEEF8 
X-CRM114-Status: GOOD (  21.89  )
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

On 23-03-13, Lucas Stach wrote:
> Am Sonntag, dem 12.03.2023 um 17:29 +0100 schrieb Marco Felsch:
> > since commit f083fffe52 ("ARM: dts: i.MX8MP: add DDRC compatibles") we
> > make use of the esdctl driver. This cause the below error since barebox
> > try to add the memory twice.
> > 
> > > imx-esdctl 3d400000.memory-controller@3d400000.of: probe failed: Device or resource busy
> > > initcall imx_esdctl_driver_init+0x0/0x2c failed: No such device
> > 
> I wonder why I didn't hit this. Probably some probe order thing.

I think this is because of the fact that the boards do add the memory
node not the 8mp.dtsi and the debix don't have such a node.

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
> Why not add this to arch/arm/dts/imx8mp.dtsi?

What does the compiler if ther is no such node? If the compiler just
ignore deleting not exisiting nodes I'm fine with your proposal. Thanks
for the review.

Regards,
  Marco

> 
> Regards,
> Lucas
> 
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
> 


