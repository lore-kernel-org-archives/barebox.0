Delivery-date: Thu, 31 Aug 2023 16:31:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbihz-00G2xK-LY
	for lore@lore.pengutronix.de; Thu, 31 Aug 2023 16:31:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qbihx-0007mv-Ev
	for lore@pengutronix.de; Thu, 31 Aug 2023 16:31:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=2zzD99hPhCSD0Qid5MKjo4hXqWtTRY3F6HxEQTpcEI0=; b=fKEiVq4vJHUCKnHkzdYzARWBQ9
	pDpCutAYR83mqABMg4r3wEpslEpGfh8cshHAdrOeFkZk/5LWGQ4GhfZuZlN0f0KuQcVjUHpzwrEYf
	fn7ZCHdG+wwGl0WB29egmPEiD09rdnnCvZD6s4rlz0c7gszSiRivfbmSRMZPYEE7QRIxbHegF2RbZ
	7JXz8lRyUeDKE7yyhu/mJTdAP/CExl0lcwdPVBxsJn1cmsUR0XN1y5TtPu6iSzW/Y3xkwkJo5GJQ3
	Yb7lNPqVV38Cx/uEhSKaJauhsqvSo0Abl6vUTHolaGFylc2E3PhHen0QXY20WlGin1wGx1vTaU6yo
	B9xSWRUw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qbigd-00FRLr-1n;
	Thu, 31 Aug 2023 14:30:19 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qbiga-00FRKt-1j
	for barebox@lists.infradead.org;
	Thu, 31 Aug 2023 14:30:18 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qbigU-0007V2-VC; Thu, 31 Aug 2023 16:30:10 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1qbigU-0003M2-Oi; Thu, 31 Aug 2023 16:30:10 +0200
Date: Thu, 31 Aug 2023 16:30:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Lucas Stach <l.stach@pengutronix.de>
Cc: barebox@lists.infradead.org
Message-ID: <20230831143010.xo4v3nvdddqj3z7c@pengutronix.de>
References: <20230831130549.3357673-1-m.felsch@pengutronix.de>
 <20230831130549.3357673-2-m.felsch@pengutronix.de>
 <bb52de0d010e591e9d340a5a69d1994a6f1520a1.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <bb52de0d010e591e9d340a5a69d1994a6f1520a1.camel@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230831_073016_596001_0B3425EF 
X-CRM114-Status: GOOD (  33.02  )
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
Subject: Re: [PATCH 2/2] ARM: i.MX8M: esdctl: split memory banks for devices
 with >4G
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On 23-08-31, Lucas Stach wrote:
> Am Donnerstag, dem 31.08.2023 um 15:05 +0200 schrieb Marco Felsch:
> > At the moment the whole available memory is added to one single memory
> > bank "ram0". This can cause barebox chainload issues on devices with a
> > huge amount of memory like the i.MX8MP-EVK which has 6G of RAM if the
> > barebox pbl binary is to large.
> > 
> > The reason for this issues is that memory_bank_first_find_space()
> > returns the memory area with the largest amount of free space on the
> > first memory bank. So in case of Debix SOM-A 8G and i.MX8MP-EVK 6G this
> > is the area crossing the 4G boundary. This cause the barebox pbl code to
> > trigger a MMU exception once the early MMU gets enabled which is
> > configured for sizes <=4G.
> > 
> > Split the memory space into two memory banks: "ram0" and "ram1" to fix
> > this issue.
> > 
> > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > ---
> >  arch/arm/mach-imx/esdctl.c | 18 ++++++++++++++----
> >  1 file changed, 14 insertions(+), 4 deletions(-)
> > 
> > diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
> > index 54c62c47338e..de23b6433355 100644
> > --- a/arch/arm/mach-imx/esdctl.c
> > +++ b/arch/arm/mach-imx/esdctl.c
> > @@ -510,16 +510,26 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc, unsigned buswid
> >  				   reduced_adress_space, mstr);
> >  }
> >  
> > +static int _imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data,
> > +			       unsigned int buswidth)
> > +{
> > +	resource_size_t size = imx8m_ddrc_sdram_size(mmdcbase, buswidth);
> > +	resource_size_t size0, size1;
> > +
> > +	size0 = min_t(resource_size_t, SZ_4G - MX8M_DDR_CSD1_BASE_ADDR, size);
> > +	size1 = size - size0;
> > +
> > +	return add_mem(data->base0, size0, SZ_4G, size1, true);
> 
> It's quite bogus to call add_mem from the imx8 code here. add_mem
> explicitly deals with different chip selects on the same memory
> controller and it's whole purpose is to do the opposite of what you are
> trying to achieve here: merging multiple regions into a single memory
> bank.
> 
> Please just call arm_add_mem_device two times from this little helper
> function you are adding here.

okay.

> However, given that we ignore memory beyond the 4G mark in other parts
> of barebox as well, wouldn't it make sense to just clamp the memory to
> 32bit addresses in memory_bank_first_find_space?

This is something I discussed with Ahmad as well, but I'm not sure how
this will interfere with platforms having memory space beyond 4G only.

As you said there are issues when it comes to platforms which do use
memory above 4G for other purposes than memory. But I would keep the
current behaviour of memory_bank_first_find_space() to not make it even
harder for them.
Also at least the imx8mp-evk lists two memory banks within the dts, so
splitting it into two banks here is more aligned with the dts.

Regards,
  Marco

> 
> Regards,
> Lucas
> 
> > +}
> > +
> >  static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >  {
> > -	return arm_add_mem_device("ram0", data->base0,
> > -			   imx8m_ddrc_sdram_size(mmdcbase, 32));
> > +	return _imx8m_ddrc_add_mem(mmdcbase, data, 32);
> >  }
> >  
> >  static int imx8mn_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
> >  {
> > -	return arm_add_mem_device("ram0", data->base0,
> > -			   imx8m_ddrc_sdram_size(mmdcbase, 16));
> > +	return _imx8m_ddrc_add_mem(mmdcbase, data, 16);
> >  }
> >  
> >  static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
> 
> 


