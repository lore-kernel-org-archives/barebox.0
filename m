Delivery-date: Sun, 18 Jan 2026 19:17:41 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhXLK-002l02-0t
	for lore@lore.pengutronix.de;
	Sun, 18 Jan 2026 19:17:41 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vhXLJ-00035e-6m
	for lore@pengutronix.de; Sun, 18 Jan 2026 19:17:41 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lef7a7ALLJkeKaRkwV2GpvAJel52kiNe8oWZbU7ejkE=; b=xNobcQnyLXvXoRNsLr9vszIEAk
	DSC+/4ZU8rov9ZIaVPd7KsiL978RT/ETBAJcjayQ4TMHraNet5rLQAmslHaZU4lzazLHFmInGfRdU
	qWosvxDEoXQFWbledXfzuHrh/xLZ6sxQVCWcmJ7clu4EECo7A+/9jI4ToF3Bu1dmgU/Io/W97bHen
	YwJGPq6dRy8ovZmGScHkwvWySxWSF9ohFxxc/nb4/WT0mOBTGC400RILXWDgTy1+UHrMDC1qUcecX
	fTgDJbqepTjT+Mqd56060EXnvhxNChXzpj6HVhjgvp5id4Z88TOEmLl5I761gk+ymOba3jsjz7ey6
	/oTuUyUg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXKl-00000000hjh-08fQ;
	Sun, 18 Jan 2026 18:17:07 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vhXKh-00000000hiP-1Qjl
	for barebox@lists.infradead.org;
	Sun, 18 Jan 2026 18:17:04 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhXKf-00030D-Mz; Sun, 18 Jan 2026 19:17:01 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhXKg-001Hi6-0Z;
	Sun, 18 Jan 2026 19:17:01 +0100
Received: from mfe by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mfe@pengutronix.de>)
	id 1vhXKf-001biH-1G;
	Sun, 18 Jan 2026 19:17:01 +0100
Date: Sun, 18 Jan 2026 19:17:01 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <20260118181701.fmf25sxxklaybbg7@pengutronix.de>
References: <20251110-v2025-09-0-topic-optee-of-handling-v1-0-8f0625ac5471@pengutronix.de>
 <20251110-v2025-09-0-topic-optee-of-handling-v1-8-8f0625ac5471@pengutronix.de>
 <bdbbcad2-30b8-473d-a3dc-2ce216c52b20@pengutronix.de>
 <20260118181148.fpx75kbndjeni4l3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260118181148.fpx75kbndjeni4l3@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260118_101703_403274_7FFBE405 
X-CRM114-Status: GOOD (  24.42  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 08/23] pbl: decomp: add pbl_dtbz_uncompress helper
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On 26-01-18, Marco Felsch wrote:
> Hi,
> 
> On 26-01-14, Ahmad Fatoum wrote:
> > Hi,
> > 
> > On 11/10/25 9:34 PM, Marco Felsch wrote:
> > > Add a pbl uncompress helper since uncompress() can't be used directly
> > > within pbl.
> > > 
> > > Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
> > > ---
> > >  include/pbl.h |  1 +
> > >  pbl/decomp.c  | 12 ++++++++++++
> > >  2 files changed, 13 insertions(+)
> > > 
> > > diff --git a/include/pbl.h b/include/pbl.h
> > > index b330010562c4aba5fccbb4c421bb95291fa0bea1..9db4652e833bf5e82fd42a1cae19e94c4f2f868f 100644
> > > --- a/include/pbl.h
> > > +++ b/include/pbl.h
> > > @@ -15,6 +15,7 @@ extern unsigned long free_mem_ptr;
> > >  extern unsigned long free_mem_end_ptr;
> > >  
> > >  void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len);
> > > +int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len);
> > >  
> > >  void fdt_find_mem(const void *fdt, unsigned long *membase, unsigned long *memsize);
> > >  int fdt_fixup_mem(void *fdt, unsigned long membase[], unsigned long memsize[], size_t num);
> > > diff --git a/pbl/decomp.c b/pbl/decomp.c
> > > index ebdf81ddfbe5af65a382b7221c7102dcc791e5b9..4d50ea15555ba96bdc2fcac4c48708c6e1261d4d 100644
> > > --- a/pbl/decomp.c
> > > +++ b/pbl/decomp.c
> > > @@ -51,6 +51,12 @@ static void noinline errorfn(char *error)
> > >  	while (1);
> > >  }
> > >  
> > > +static noinline void errorfn_nohang(char *error)
> > > +{
> > > +	puts_ll("ERROR: ");
> > > +	puts_ll(error);
> > > +}
> > 
> > This way we won't have error message for CONFIG_PBL_CONSOLE without
> > DEBUG_LL, see:
> > 
> > https://lore.kernel.org/barebox/20260112085617.2952747-3-a.fatoum@barebox.org/T/#u
> 
> Good point, thanks!
> 
> > I am not sure why this is needed though. Failing to decompress a
> > compressed device tree that was linked into barebox means there is
> > runtime memory corruption. We should panic/hang in this case.
> 
> I will add __hang().

That beeing said, I just switched to the already existing errorfn().

Regards,
  Marco

> 
> Regards,
>   Marco
> 
> > 
> > Cheers,
> > Ahmad
> > 
> > 
> > > +
> > >  extern unsigned char sha_sum[];
> > >  extern unsigned char sha_sum_end[];
> > >  
> > > @@ -110,3 +116,9 @@ void pbl_barebox_uncompress(void *dest, void *compressed_start, unsigned int len
> > >  			NULL, NULL,
> > >  			dest, NULL, errorfn);
> > >  }
> > > +
> > > +int pbl_dtbz_uncompress(void *dest, void *compressed_start, unsigned long len)
> > > +{
> > > +	return decompress(compressed_start, len, NULL, NULL, dest, NULL,
> > > +			  errorfn_nohang);
> > > +}
> > > 
> > 
> > -- 
> > Pengutronix e.K.                  |                             |
> > Steuerwalder Str. 21              | http://www.pengutronix.de/  |
> > 31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
> > Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |
> > 
> > 
> 
> -- 
> #gernperDu 
> #CallMeByMyFirstName
> 
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |
> 
> 

-- 
#gernperDu 
#CallMeByMyFirstName

Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | https://www.pengutronix.de/ |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-9    |


