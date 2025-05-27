Delivery-date: Tue, 27 May 2025 10:16:52 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJpUS-000nIw-2j
	for lore@lore.pengutronix.de;
	Tue, 27 May 2025 10:16:52 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uJpUS-0002IM-50
	for lore@pengutronix.de; Tue, 27 May 2025 10:16:52 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Da2oGpUqVgtwSDYOLMwPnKoJMmFYYSrtOt68JRHlTnM=; b=4XxDI/RnUaFNXNwbevBBd9kDV7
	lcAceKgBZPtYBOYtjQHjNVpSb/dmqhW9viE7/QTPn5OQA/eybglW8QgwaLe8ZuigEZ5UYHo3re7YI
	sQjErjHkI/Dsb7jWdLMor/TlYZ7VmCIoEfsMJB3PjnVwOAsRNY7bulRQs3O0I2DrPz29vDRfJAY7/
	8cMiEKteJbmKJm3yBjyFjAioATZySlgamp8ZWMdHYJVA2jJLMKZdnjwN2BAPBjf7nx/7u4Gj2oxNO
	yeIwpQRq2mUubfnkhvG3+8HCEXe0Oz555IaWyOnXoc7Hdjm9EHViccU4EVfSXDNL9OiG63xKIMn43
	urlCdcxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJpTz-0000000AE6v-2Bp3;
	Tue, 27 May 2025 08:16:23 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uJpTx-0000000AE6W-1ixU
	for barebox@lists.infradead.org;
	Tue, 27 May 2025 08:16:22 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJpTw-0002DB-6M; Tue, 27 May 2025 10:16:20 +0200
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJpTw-000O1C-01;
	Tue, 27 May 2025 10:16:20 +0200
Received: from mtr by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <mtr@pengutronix.de>)
	id 1uJpTv-00CSGq-2x;
	Tue, 27 May 2025 10:16:19 +0200
Date: Tue, 27 May 2025 10:16:19 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Marco Felsch <m.felsch@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
Message-ID: <aDV007QnzwsTnDBG@pengutronix.de>
References: <20250526-rk3588-optee-v1-0-5004995cbd03@pengutronix.de>
 <20250526-rk3588-optee-v1-9-5004995cbd03@pengutronix.de>
 <20250526172501.6fxqalqb7lbfgagk@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20250526172501.6fxqalqb7lbfgagk@pengutronix.de>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250527_011621_449481_BCA35D03 
X-CRM114-Status: GOOD (  31.09  )
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
X-Spam-Status: No, score=-6.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 9/9] ARM: rockchip: fixup memory in device tree for TF-A
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Mon, 26 May 2025 19:25:01 +0200, Marco Felsch wrote:
> On 25-05-26, Michael Tretter wrote:
> > Add the memory nodes for the detected SDRAM configuration to the fdt
> > before passing it to the TF-A.
> > 
> > Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
> > ---
> >  arch/arm/mach-rockchip/atf.c | 22 ++++++++++++++++++++++
> >  1 file changed, 22 insertions(+)
> > 
> > diff --git a/arch/arm/mach-rockchip/atf.c b/arch/arm/mach-rockchip/atf.c
> > index 12cf13717b6972c2eafc5a044ae8d0b4de029c32..342af302aa25089acce3c91df0ea38cbe71e0add 100644
> > --- a/arch/arm/mach-rockchip/atf.c
> > +++ b/arch/arm/mach-rockchip/atf.c
> > @@ -173,6 +173,26 @@ void rk3588_atf_load_bl31(void *fdt)
> >  	rockchip_atf_load_bl31(RK3588, rk3588_bl31_bin, rk3588_bl32_bin, fdt);
> >  }
> >  
> > +#ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> > +static int rk3588_fixup_mem(void *fdt)
> > +{
> > +	/* Use 4 blocks since rk3588 has 3 gaps in the address space */
> > +	unsigned long base[4];
> > +	unsigned long size[ARRAY_SIZE(base)];
> > +	phys_addr_t base_tmp[ARRAY_SIZE(base)];
> > +	resource_size_t size_tmp[ARRAY_SIZE(base_tmp)];
> > +	int i, n;
> > +
> > +	n = rk3588_ram_sizes(base_tmp, size_tmp, ARRAY_SIZE(base_tmp));
> > +	for (i = 0; i < n; i++) {
> > +		base[i] = base_tmp[i];
> > +		size[i] = size_tmp[i];
> > +	}
> > +
> > +	return fdt_fixup_mem(fdt, base, size, i);
> 
> This fixup will run on a RO marked section if I got the code correct.
> Also the fixup logic doesn't work for compressed device-tree's.
> 
> I had an offlist discussion with Ahmad last week exactly targeting such
> use-case (passing the dt from firmware to firmware). The conclusion was
> that each firmware should generate an overlay which will be applied to
> the barebox live-dt and the kernel-dt later on.
> 
> Question: Is this to late for OP-TEE? I don't know the RK3588 nor the
> OP-TEE integration for it, but on i.MX8M the OP-TEE SHM doesn't require
> any device-tree yet.

This is about passing a device tree from barebox to OP-TEE. OP-TEE uses
the device tree and especially the memory nodes to initialize the
dynamic shared memory. This is a platform independent implementation in
OP-TEE.  It's also possible to configure the addresses and sizes via
config parameter, but that doesn't work if a board supports different
SDRAM configurations.

Im not sure if OP-TEE accepts an dt overlay here and if this is
compliant with the Firmware handoff specification. If this is possible,
OP-TEE needs its own device tree for the platform and be able to apply
an overlay. Furthermore, the barebox PBL would have to generate an
overlay fdt with the memory configuration. Not sure if this is actually
better than fixing the device tree before passing it to OP-TEE.

Michael

> 
> Regards,
>   Marco
> 
> > +}
> > +#endif
> > +
> >  void __noreturn rk3588_barebox_entry(void *fdt)
> >  {
> >  	unsigned long membase, endmem;
> > @@ -187,6 +207,8 @@ void __noreturn rk3588_barebox_entry(void *fdt)
> >  		rockchip_store_bootrom_iram(IOMEM(RK3588_IRAM_BASE));
> >  
> >  #ifdef CONFIG_ARCH_ROCKCHIP_ATF_PASS_FDT
> > +		if (rk3588_fixup_mem(fdt) != 0)
> > +			pr_warn("Failed to fixup memory\n");
> >  		rk3588_atf_load_bl31(fdt);
> >  #else
> >  		rk3588_atf_load_bl31(NULL);
> > 
> > -- 
> > 2.39.5
> > 
> > 
> > 
> 


