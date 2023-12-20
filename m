Delivery-date: Wed, 20 Dec 2023 16:49:34 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFypC-006TIF-19
	for lore@lore.pengutronix.de;
	Wed, 20 Dec 2023 16:49:34 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rFypB-00036V-Mo
	for lore@pengutronix.de; Wed, 20 Dec 2023 16:49:34 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mwrg3/bR7oD8RtflyAhLLqAQx8eH53LEfkmNsOF5wcg=; b=y4Y7lWfjgMl1kwWaKaAA6HZ30+
	nsf4sFuqMjs9AzLqsF5FodNy7DNy6BOzR14SpYXOLNrVrUXgjBU9aCk0MAcVAk6L4/+pDKsVkrc85
	q8E9CKiXyLEpUIHwxLQjvQzlYJFbGxHyxJrZgtToAhPDGGv6PJtlJIvA/ZffcZTxISOYYKitnJaTc
	SQU5gTB+MDpmvCnnCoMYFrBNEacS2CgEz6p7wv3M0IfwAe6wpCQ33psU34k+NY+4nffXNhmFeWcW3
	P/u48x9DFIypRJePZDCFs+Ugr5ioa5G+nOgyBrn0nX6KTl204JMq6Oa3lvoGHAYhO9X+Aqj1I1NF3
	pDUO6yyQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rFyo8-000IZ3-1s;
	Wed, 20 Dec 2023 15:48:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rFyo5-000IXH-17
	for barebox@lists.infradead.org;
	Wed, 20 Dec 2023 15:48:26 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rFyo4-0002sg-52; Wed, 20 Dec 2023 16:48:24 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <mfe@pengutronix.de>)
	id 1rFyo2-000HuP-LY; Wed, 20 Dec 2023 16:48:23 +0100
Received: from mfe by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1rFyo3-007xma-M8; Wed, 20 Dec 2023 16:48:23 +0100
Date: Wed, 20 Dec 2023 16:48:23 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20231220154823.pj5jsruygu552qis@pengutronix.de>
References: <20231220145418.88750-1-m.felsch@pengutronix.de>
 <c75d78e0-4033-4c18-b9dc-72ebf5e98c1a@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c75d78e0-4033-4c18-b9dc-72ebf5e98c1a@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231220_074825_395163_41C1D7C0 
X-CRM114-Status: GOOD (  16.25  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 1/2] ARM: boards: polyhex-debix: enable HAB support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 23-12-20, Ahmad Fatoum wrote:
> Hello Marco,
> 
> On 20.12.23 15:54, Marco Felsch wrote:
> > From: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> > 
> > Include the gencsf header to enable the secure-boot images.
> > 
> > Signed-off-by: Rouven Czerwinski <r.czerwinski@pengutronix.de>
> 
> Any downside in just doing this for all i.MX8M boards?

Thought about this too. If HABV4 is not enabled this will have no
impact. I didn't added the support for all boards since some custom
boards may don't want this. What about adding it to all EVK boards?

Regards,
  Marco

> Thanks,
> Ahmad
> 
> > ---
> >  arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> > index 663bd102e9a2..d619995496ac 100644
> > --- a/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> > +++ b/arch/arm/boards/polyhex-debix/flash-header-polyhex-debix.imxcfg
> > @@ -5,3 +5,4 @@ soc imx8mp
> >  loadaddr 0x920000
> >  max_load_size 0x3f000
> >  ivtofs 0x0
> > +#include <mach/imx/habv4-imx8-gencsf.h>
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 


