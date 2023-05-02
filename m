Delivery-date: Tue, 02 May 2023 18:12:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptscC-002Qv3-D7
	for lore@lore.pengutronix.de; Tue, 02 May 2023 18:12:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptscA-000112-Hu
	for lore@pengutronix.de; Tue, 02 May 2023 18:12:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NaALTlZXji9u1SuNJSVAQZezzk5LIYIuGCKBcTkbay4=; b=vlH5cqBsUWuy0jjb0ghK+pznk1
	1US+WvLGRGuOBS+4vaGUTc8OOuJTqyduwmQQSRSlpZ63/NXhKtZiTbWiMDHZyNHoGLVR/ggxNwQpU
	G5ajhU7r3UbCLp15VmHpNFAmrBaeWSBXGAEMl9DqiHiCidbooOzsA6wFeOPvflUXyV1om0skDUZ93
	tCsDINZ4lhBNpsSZ185QH2mAuZ25v6/X3UBrHioLtQqO3AeBlcJil/AZSYe6nArTTnoXyc6gqBPHa
	F/J2pHj2n917wsdMF1yUE7w+tnoqhBxroXud1rghfgrGsYjwhuadACeSd0Xdsr+MBPf5aFPb+eXg9
	bzQ3CggQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptsaz-00233c-25;
	Tue, 02 May 2023 16:11:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptsaw-00231v-0M
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 16:11:15 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ptsar-0000wO-04; Tue, 02 May 2023 18:11:09 +0200
Received: from mfe by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1ptsaq-0003MM-En; Tue, 02 May 2023 18:11:08 +0200
Date: Tue, 2 May 2023 18:11:08 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Message-ID: <20230502161108.6udnnulf3okgr5ff@pengutronix.de>
References: <20230502123000.2186637-1-s.hauer@pengutronix.de>
 <4be579f6-d907-d817-1e69-d3a9d6e1bcca@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4be579f6-d907-d817-1e69-d3a9d6e1bcca@pengutronix.de>
User-Agent: NeoMutt/20180716
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_091114_149325_5CB9974C 
X-CRM114-Status: GOOD (  17.00  )
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
Cc: Barebox List <barebox@lists.infradead.org>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH] ARM: NXP i.MX8MN EVK: Drop unnecessary IMD_USED_OF
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi Ahmad, Sascha,

On 23-05-02, Ahmad Fatoum wrote:
> On 02.05.23 14:30, Sascha Hauer wrote:
> > IMD tags are now automatically referenced when the DT itself is
> > referenced. IMD_USED_OF is no longer needed.

thanks for the effort you put into this feature :)

> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> 
> Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

Regards,
  Marco

> 
> > ---
> >  arch/arm/boards/nxp-imx8mn-evk/lowlevel.c | 3 ---
> >  1 file changed, 3 deletions(-)
> > 
> > diff --git a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> > index 398dfb33ae..23504ee965 100644
> > --- a/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> > +++ b/arch/arm/boards/nxp-imx8mn-evk/lowlevel.c
> > @@ -155,8 +155,5 @@ ENTRY_FUNCTION(start_nxp_imx8mn_evk, r0, r1, r2)
> >  	relocate_to_current_adr();
> >  	setup_c();
> >  
> > -	IMD_USED_OF(imx8mn_evk);
> > -	IMD_USED_OF(imx8mn_ddr4_evk);
> > -
> >  	nxp_imx8mn_evk_start();
> >  }
> 
> -- 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 
> 
> 


