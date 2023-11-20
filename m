Delivery-date: Mon, 20 Nov 2023 16:14:01 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55yL-001bmj-0c
	for lore@lore.pengutronix.de;
	Mon, 20 Nov 2023 16:14:01 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r55yL-0007Fj-5N
	for lore@pengutronix.de; Mon, 20 Nov 2023 16:14:01 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=f1IoivnvDGiEOHAvH40+BCFDaDpThMWqzkuiFsbflYA=; b=TYvlSyGpxJjroTKAXSRcUCVQms
	RT4r08wICI9GG2azXm3xKhXzsMAI2Z9F6Pw3exGOjxKJiFXUznlZ2uwm1Dgp2CMGdDKNGySzlVVEO
	VXIvY1ouRbSQo8cdyrOFAAa8L2MDEhgQDu05tjLXoTkZ2lbZLb7Zi5Nx73kBtDrYXLJJsQULjaRLI
	BShNY7tHvHbgeqpm230Zh+UGDv+i2ywwwD0ttChLVGjNz9F4RukPee6cAKL8sy6SOvurpj6Mbrx03
	4buTNFROV5wlhBZF0qGnWaGzdC7VqI1ZYlO4ZuI64M4n7Quhbakxiu2af70g3e0LdVzvggc1/lN7R
	DSZpTTxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r55x4-00CWRE-0s;
	Mon, 20 Nov 2023 15:12:42 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r55x0-00CWPZ-1u
	for barebox@lists.infradead.org;
	Mon, 20 Nov 2023 15:12:40 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r55wz-0006tA-6F; Mon, 20 Nov 2023 16:12:37 +0100
Received: from [2a0a:edc0:2:b01:1d::c0] (helo=ptx.whiteo.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r55wy-00ANky-Pz; Mon, 20 Nov 2023 16:12:36 +0100
Received: from sha by ptx.whiteo.stw.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r55wy-002z5r-Mf; Mon, 20 Nov 2023 16:12:36 +0100
Date: Mon, 20 Nov 2023 16:12:36 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20231120151236.GL3359458@pengutronix.de>
References: <20231120144453.1075740-1-s.hauer@pengutronix.de>
 <20231120144453.1075740-2-s.hauer@pengutronix.de>
 <0a4dea73-0306-1ea8-caf3-94b47e520f60@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0a4dea73-0306-1ea8-caf3-94b47e520f60@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231120_071238_633706_48AC7856 
X-CRM114-Status: GOOD (  30.17  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: Re: [PATCH 2/2] ARM: layerscape: ppa: Fix starting PPA
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, Nov 20, 2023 at 03:54:40PM +0100, Ahmad Fatoum wrote:
> Hello Sascha,
> 
> On 20.11.23 15:44, Sascha Hauer wrote:
> > With dba1c26f70 we replaced request_sdram_region() for the PPA with
> > reserve_sdram_region(). The effect is that the region is marked as
> > reserved and mapped non executable. While this is desired for EL2, it
> > also has the effect that we can't start the PPA anymore from EL3.
> > 
> > Map the region cached/executable to start the PPA, then map it
> > uncached/non executable once we are in EL2.
> > 
> > Fixes: dba1c26f70 ("arm: layerscape: ppa: reserve SDRAM region for PPA")
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-layerscape/ppa.c | 18 +++++++++---------
> >  1 file changed, 9 insertions(+), 9 deletions(-)
> > 
> > diff --git a/arch/arm/mach-layerscape/ppa.c b/arch/arm/mach-layerscape/ppa.c
> > index 521e6b89da..43145a7ece 100644
> > --- a/arch/arm/mach-layerscape/ppa.c
> > +++ b/arch/arm/mach-layerscape/ppa.c
> > @@ -4,6 +4,7 @@
> >  
> >  #include <common.h>
> >  #include <init.h>
> > +#include <mmu.h>
> >  #include <firmware.h>
> >  #include <memory.h>
> >  #include <linux/sizes.h>
> > @@ -54,17 +55,11 @@ static int ppa_init(void *ppa, size_t ppa_size, void *sec_firmware_addr)
> >  	int ret;
> >  	u32 *boot_loc_ptr_l, *boot_loc_ptr_h;
> >  	struct ccsr_scfg __iomem *scfg = (void *)(LSCH2_SCFG_ADDR);
> > -	int el = current_el();
> >  	struct fit_handle *fit;
> >  	void *conf;
> >  	const void *buf;
> >  	unsigned long firmware_size;
> >  
> > -	if (el < 3) {
> > -		printf("EL%d, skip ppa init\n", el);
> > -		return 0;
> > -	}
> > -
> >  	boot_loc_ptr_l = &scfg->scratchrw[1];
> >  	boot_loc_ptr_h = &scfg->scratchrw[0];
> >  
> > @@ -115,6 +110,7 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
> >  	struct resource *res;
> >  	void *ppa_fw;
> >  	size_t ppa_fw_size;
> > +	int el = current_el();
> >  	int ret;
> >  
> >  	res = reserve_sdram_region("ppa", ppa_start, ppa_size);
> > @@ -126,9 +122,13 @@ int ls1046a_ppa_init(resource_size_t ppa_start, resource_size_t ppa_size)
> >  
> >  	get_builtin_firmware(ppa_ls1046a_bin, &ppa_fw, &ppa_fw_size);
> >  
> > -	ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
> > -	if (ret)
> > -		return ret;
> > +	if (el == 3) {
> > +		remap_range((void *)ppa_start, ppa_size, MAP_CACHED);
> > +		ret = ppa_init(ppa_fw, ppa_fw_size, (void *)ppa_start);
> > +		remap_range((void *)ppa_start, ppa_size, MAP_UNCACHED);
> > +		if (ret)
> > +			return ret;
> 
> Isn't this still racy? I think the EL2 mapping should already have the
> PPA area uncached _before_ jumping into PPA.

It likely is, but to fix that we would have to create a second set of
pagetables and use one for EL3 with PPA executable and another one for EL2
with PPA non executable.

As of now this is purely academic anyway as the PPA doesn't protect its
SDRAM range in any way, so speculating into it doesn't do any harm.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


