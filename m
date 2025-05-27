Delivery-date: Tue, 27 May 2025 12:22:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJrS2-000ozp-0z
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 12:22:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJrS1-0003yz-Fi
	for lore@pengutronix.de; Tue, 27 May 2025 12:22:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FuFjN5xbP+5JVGOPqViB5fjT3IQK4Z+VDG0so2fSNKw=; b=k9NOigYCP/zfet/Qfu9tJCk9OL
	p7l1fd/CqMwfyeN+AC52+syb0u3HgWc19oPY4QS0/BGAKq97ldam+QpyGyVwZyHUuKGW2L8LPMy/U
	2oLJGu9F+X9ptV0f5mq6l3kLv8jS4CUk+i59at6BoKmYMmyHgYjcIVl17QauyCMd8sPlMMUfTglYm
	d6c5ZHo/Ew+ErdUpB+ZqeBbIva+iFt254q7FEncXzdHcEGnYW3DFIWVX0z79Ya7tA/BA/NuzXyqde
	WqAJ4IOXtHF4RnlLrYYiw8YHpU7Aj07vPBC9C/98RrVu1W7rmxTvgBvW5IRA/FGTB5Gsj+wu3LoNE
	1dvOAnLA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrRF-0000000ASKj-2wpy;
	Tue, 27 May 2025 10:21:41 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJrPE-0000000AS46-1JSp
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 10:19:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJrPD-0003Te-2Y; Tue, 27 May 2025 12:19:35 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJrPC-000P1V-2s;
	Tue, 27 May 2025 12:19:34 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJrPC-00CUgt-2a;
	Tue, 27 May 2025 12:19:34 +0200
Date: Tue, 27 May 2025 12:19:34 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDWRth4DxF-TRHfH@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-9-5004995cbd03@pengutronix.de>
 <20250526172501.6fxqalqb7lbfgagk@pengutronix.de>
 <aDV007QnzwsTnDBG@pengutronix.de>
 <20250527094056.rfqigwxxms5kgis3@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250527094056.rfqigwxxms5kgis3@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_031936_372700_75D07461 
X-CRM114-Status: GOOD (  41.59  )
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
X-Spam-Status: No, score=-6.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: rockchip: fixup memory in device tree for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, 27 May 2025 11:40:56 +0200, Marco Felsch wrote:
> On 25-05-27, Michael Tretter wrote:
> > On Mon, 26 May 2025 19:25:01 +0200, Marco Felsch wrote:
> > > On 25-05-26, Michael Tretter wrote:
> > > > Add the memory nodes for the detected SDRAM configuration to the fdt
> > > > before passing it to the TF-A.
> > > > 
> > > > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > > > ---
> > > >  arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
> > > >  1 file changed, 22 insertions(+)
> > > > 
> > > > diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> > > > index 12cf13717b6972c2eafc5a044ae8d0b4de029c32..342af302aa25089acce3c91df0ea38cbe71e0add 100644
> > > > --- a/arch/arm/mach-rockchip/atf.c
> > > > +++ b/arch/arm/mach-rockchip/atf.c
> > > > @@ -173,6 +173,26 @@ void rk3588_atf_load_bl31(void *fdt)
> > > >  	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_bl32_bin, fdt);
> > > >  }
> > > >  
> > > > +#ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> > > > +static int rk3588_fixup_mem(void *fdt)
> > > > +{
> > > > +	/* Use 4 blocks since rk3588 has 3 gaps in the address space */
> > > > +	unsigned long base[4];
> > > > +	unsigned long size[ARRAY_SIZE(base)];
> > > > +	phys_addr_t base_tmp[ARRAY_SIZE(base)];
> > > > +	resource_size_t size_tmp[ARRAY_SIZE(base_tmp)];
> > > > +	int i, n;
> > > > +
> > > > +	n = rk3588_ram_sizes(base_tmp, size_tmp, ARRAY_SIZE(base_tmp));
> > > > +	for (i = 0; i < n; i++) {
> > > > +		base[i] = base_tmp[i];
> > > > +		size[i] = size_tmp[i];
> > > > +	}
> > > > +
> > > > +	return fdt_fixup_mem(fdt, base, size, i);
> > > 
> > > This fixup will run on a RO marked section if I got the code correct.
> > > Also the fixup logic doesn't work for compressed device-tree's.
> > > 
> > > I had an offlist discussion with Ahmad last week exactly targeting such
> > > use-case (passing the dt from firmware to firmware). The conclusion was
> > > that each firmware should generate an overlay which will be applied to
> > > the barebox live-dt and the kernel-dt later on.
> > > 
> > > Question: Is this to late for OP-TEE? I don't know the RK3588 nor the
> > > OP-TEE integration for it, but on i.MX8M the OP-TEE SHM doesn't require
> > > any device-tree yet.
> > 
> > This is about passing a device tree from barebox to OP-TEE. OP-TEE uses
> > the device tree and especially the memory nodes to initialize the
> > dynamic shared memory. This is a platform independent implementation in
> > OP-TEE.  It's also possible to configure the addresses and sizes via
> > config parameter, but that doesn't work if a board supports different
> > SDRAM configurations.
> 
> Because OP-TEE is loaded at the SDRAM end per default?

No, it's not about loading OP-TEE to the SDRAM, but about OP-TEE
initializing its internal mapping of dynamic memory. This mapping is
used to resolve addresses passed to OP-TEE via SMC from barebox or
Linux. Without this, OP-TEE may be unable to access data that is passed
by Linux via shared memory.

> 
> If this is the reason, we already do support putting OP-TEE at the SDRAM
> start followed by barebox on i.MX8M* SoCs:
> 
>    OP-TEE membase parsing:
>  - https://elixir.bootlin.com/barebox/v2025.05.0/source/arch/arm/mach-imx/atf.c#L168
> 
>    OP-TEE set membase:
>  - https://elixir.bootlin.com/barebox/v2025.05.0/source/common/optee.c#L52
>    https://elixir.bootlin.com/barebox/v2025.05.0/source/arch/arm/mach-imx/esdctl.c#L1016
>    https://elixir.bootlin.com/barebox/v2025.05.0/source/drivers/soc/imx/soc-imx8m.c#L217
> 
>    Barebox bin loadaddr:
>  - https://elixir.bootlin.com/barebox/v2025.05.0/source/arch/arm/mach-imx/atf.c#L218
> 
> > Im not sure if OP-TEE accepts an dt overlay here and if this is
> > compliant with the Firmware handoff specification. If this is possible,
> > OP-TEE needs its own device tree for the platform and be able to apply
> > an overlay. Furthermore, the barebox PBL would have to generate an
> > overlay fdt with the memory configuration. Not sure if this is actually
> > better than fixing the device tree before passing it to OP-TEE.
> 
> The idea was more like this:
> 
>    OP-TEE:
>  - https://elixir.bootlin.com/op-tee/4.6.0/source/mk/config.mk#L553
> 
>    Barebox:
>  - https://elixir.bootlin.com/barebox/v2025.05.0/source/arch/arm/boards/webasto-ccbv2/board.c#L33

This passes an overlay that is generated by OP-TEE back to barebox.

rk3588 needs the other direction of passing a device tree / overlay from
barebox to OP-TEE.

OP-TEE uses the external dt to discover the non-secure memory:

https://elixir.bootlin.com/op-tee/4.6.0/source/core/kernel/boot.c#L136

> 
> If I get the OP-TEE code correct, we can pass the location for the
> overlay via boot-argument arg2. So barebox can do all the RAM detection
> and pass the correct location for the DT overlay. This can be handed
> over to barebox proper via the barebox handoff-data mechanism:
> 
>  - https://elixir.bootlin.com/barebox/v2025.05.0/source/include/pbl/handoff-data.h

Correct, but arg2 is also used to pass an external dt to OP-TEE. Thus,
OP-TEE may update the passed external dt or generate an overlay at that
location. That's a problem if the reserved size is too small, but
unrelated to issue that barebox needs to pass a device tree to OP-TEE.

Michael


