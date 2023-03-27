Delivery-date: Mon, 27 Mar 2023 10:33:53 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgiIa-00GIl1-DO
	for lore@lore.pengutronix.de; Mon, 27 Mar 2023 10:33:53 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pgiIa-00032E-0r
	for lore@pengutronix.de; Mon, 27 Mar 2023 10:33:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:Message-ID:
	Subject:Cc:To:From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=kbBqfx/dvCxWDFBjEoLDtsi8Wk5AJ5YIc9d9b6YsDkM=; b=C9v+/1D0SN6fkDayiu4SAB1w2v
	Orxq/3KwjXN8digZS+sF6OVRzpM3XGggPRKTiQk4QP0xdUiAwa1P72mgY5kW3P1wlJUKXEle7HzC2
	6XnoiBODBfs9fTozXIWKpWF+8+Q/G7nc4QQUpbPXleRfN648h06vKGIHmS3nVq9+HJB4sxTThhNQs
	LVYQJB1jGNCVH/VRHIoQngijBeBUR+NDCWwSbJ5dfmdlcvLvtuTDgswj1Q2ntztsPkUxlzhS+CbeK
	B3VHwdP/UNTi4rhYssUx/BcmbtMjfREOkSV3cRDFZ44WGxJFRJiE7A/DZY9w71DsrPKwBOZuXP51n
	owARiHEg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pgiGs-00AGNM-1p;
	Mon, 27 Mar 2023 08:32:06 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pgiGn-00AGME-0e
	for barebox@lists.infradead.org;
	Mon, 27 Mar 2023 08:32:05 +0000
Received: from ptx.hi.pengutronix.de ([2001:67c:670:100:1d::c0])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pgiGl-0002ln-Go; Mon, 27 Mar 2023 10:31:59 +0200
Received: from sha by ptx.hi.pengutronix.de with local (Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pgiGl-0005zh-9g; Mon, 27 Mar 2023 10:31:59 +0200
Date: Mon, 27 Mar 2023 10:31:59 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Rouven Czerwinski <r.czerwinski@pengutronix.de>
Cc: Barebox List <barebox@lists.infradead.org>
Message-ID: <20230327083159.GF19113@pengutronix.de>
References: <20230324140327.2154039-1-s.hauer@pengutronix.de>
 <20230324140327.2154039-4-s.hauer@pengutronix.de>
 <d4d11e6d1eaff10c305a8219b2a42882f11d86f7.camel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-15
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d4d11e6d1eaff10c305a8219b2a42882f11d86f7.camel@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230327_013201_245481_278F50A4 
X-CRM114-Status: GOOD (  31.84  )
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
Subject: Re: [PATCH 3/5] ARM: Rockchip: Add rk3568 specific barebox entry
 function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

On Sun, Mar 26, 2023 at 10:36:19AM +0200, Rouven Czerwinski wrote:
> Hi,
> 
> On Fri, 2023-03-24 at 15:03 +0100, Sascha Hauer wrote:
> > Add a rk3568 specific barebox entry function to simplify board
> > code.
> > 
> > Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> > ---
> >  arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
> >  include/mach/rockchip/atf.h  |  2 ++
> >  2 files changed, 24 insertions(+)
> > 
> > diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-
> > rockchip/atf.c
> > index 93025faf68..a7d626226e 100644
> > --- a/arch/arm/mach-rockchip/atf.c
> > +++ b/arch/arm/mach-rockchip/atf.c
> > @@ -5,6 +5,9 @@
> >  #include <mach/rockchip/atf.h>
> >  #include <elf.h>
> >  #include <asm/atf_common.h>
> > +#include <asm/barebox-arm.h>
> > +#include <mach/rockchip/dmc.h>
> > +#include <mach/rockchip/rockchip.h>
> >  
> >  static unsigned long load_elf64_image_phdr(const void *elf)
> >  {
> > @@ -69,3 +72,22 @@ void rk3568_atf_load_bl31(void *fdt)
> >  {
> >         rockchip_atf_load_bl31(RK3568, rk3568_bl31_bin,
> > rk3568_op_tee_bin, fdt);
> >  }
> > +
> > +void __noreturn rk3568_barebox_entry(void *fdt)
> > +{
> > +       unsigned long membase, memsize;
> > +
> > +       membase = RK3568_DRAM_BOTTOM;
> > +       memsize = rk3568_ram0_size() - RK3568_DRAM_BOTTOM;
> > +
> > +       if (current_el() == 3) {
> > +               relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
> > +               setup_c();
> > +
> > +               rk3568_lowlevel_init();
> > +               rk3568_atf_load_bl31(fdt);
> 
> At least on my board I have to replace the fdt with a NULL pointer to
> get the downstream TF-A to work. What is the intention for barebox
> here? Do we want to support both upstream and downstream? Or do we need
> an fdt size check in the PBL to decide whether we want to pass the
> pointer?

There are two problems here. First one is that the downstream TF-A
cannot handle device trees that exceed a certain size. That is triggered
with enabling CONFIG_OF_OVERLAY_LIVE.

The second one comes with this patch. Without the common barebox entry
we had:

	relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
	fdt = __dtb_rk3566_quartz64_a_start;

That means the device tree is taken from the place we have just
relocated to. With the common barebox entry the above is done the other
way round which means the device tree is used from the binary we just
relocated away from. It is overwritten by the TF-A.

There are some possible solutions to this, I haven't sorted out yet what
might be best.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


