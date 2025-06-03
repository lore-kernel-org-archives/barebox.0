Delivery-date: Tue, 03 Jun 2025 16:48:27 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMSwF-003L0Z-32
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 16:48:27 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMSwE-0001e3-VZ
	for lore@pengutronix.de; Tue, 03 Jun 2025 16:48:27 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4ah36eeSDxI+SC1lEdE16ijLbkMOsz57qoKcRB36PXY=; b=3SJP9mbrBVA6dKWlWbLQhEIXpz
	nWEmj69YYB5KUesudWqehaOp6U2lYn47tIiVqThmv7djZ9dOwm3uGZM71c89HwlSiQGIWGtqz4GJe
	zNJwH77qOxHDgf02O59xzO9/F5XOS/fM1SG1yeP4/cu67AKD0K/BhoZQ41Avq4kyn+nRszwOxV769
	rpTfg4ApW3cykF4cwkD63Z49baeayznOdMmXncRG2Fpw4QydKLLccIAZPa444CcWdOzteiR7LgjwR
	0bCzGJ3EC4gudlfnmzybkewKVZiYPfgoRdzk9C1dDZC5GxDnQ8AKYN+SUQfYyuCbt7hqgy+GG7Spu
	m1ou8G4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMSvT-0000000BCGi-2GuP;
	Tue, 03 Jun 2025 14:47:39 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMSvP-0000000BCFP-3RZ9
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 14:47:37 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uMSvN-0000jv-Lp; Tue, 03 Jun 2025 16:47:33 +0200
Message-ID: <47261d55d72a6f34618ca9d4b86214f306a91f5a.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, Fabian Pflug
	 <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: rouven.czerwinski@linaro.org
Date: Tue, 03 Jun 2025 16:47:33 +0200
In-Reply-To: <6ce5c98c-4f8e-46f6-8dd3-7c911578feb8@pengutronix.de>
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
	 <20250603092044.1464440-2-f.pflug@pengutronix.de>
	 <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
	 <6ce5c98c-4f8e-46f6-8dd3-7c911578feb8@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_074736_019352_28FBA7DE 
X-CRM114-Status: GOOD (  54.64  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: optee-early: invalidate caches before jump to
 OP-TEE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Am Dienstag, dem 03.06.2025 um 12:18 +0200 schrieb Ahmad Fatoum:
> Hello Lucas,
>=20
> On 6/3/25 11:57, Lucas Stach wrote:
> > Hi Fabian,
> >=20
> > Am Dienstag, dem 03.06.2025 um 11:20 +0200 schrieb Fabian Pflug:
> > > The optee-early code was initially added for i.MX6UL. Trying to naive=
ly
> > > enable it on an i.MX6Q boards was observed to cause spurious hangs on
> > > return from OP-TEE to barebox.
> > >=20
> > > The root cause seems to be inadequate cache handling by OP-TEE: OP-TE=
E
> > > enables the MMU and caches with it, but didn't take care to invalidat=
e
> > > all cache lines before enabling the MMU, which triggered the
> > > aforementioned hangs.
> > >=20
> > > To paper over this issue, let's just invalidate the cache lines on th=
e
> > > barebox side instead before jumping to OP-TEE. This issue did likely =
not
> > > affect the original i.MX6UL, because its Cortex-A7 has an architected=
 L2
> > > cache that's guaranteed zeroed (no dirty cache lines) on power-on res=
et,
> > > unlike the i.MX6Q's Cortex-A9, where the external L2 cache powers on
> > > with unpredictable content including the dirty bits.
> > >=20
> > The explanation here doesn't make too much sense to me. I don't think
> > the outer L2 cache is even enabled at this point, but even if it were
> > arm_early_mmu_cache_invalidate() only handles architected caches, so it
> > wouldn't affect the PL310 on the i.MX6Q/DL.
>=20
> You're right. I recalled issues that bit us in the past on the
> Cortex-A9, but not on the A7 and took a wrong turn trying to rationalize
> this change with a spotty recollection.
>=20
> > The real issue with the Cortex A9 caches is that the tags aren't
> > cleared on power-up, so some sets/ways may end up in "valid" state if
> > not explicitly invalidated.
>=20
> I see, thanks for the clarification. So the issue is with our handling
> of the L1 cache instead.
>=20
> > Thus any write to memory may get stuck in
> > the cache, even if caching is disabled, as this knob only turns off=20
> > allocation in the cache, but doesn't prevent updates of such bogus
> > valid lines.
>=20
> Ok, so if CR_C is unset, the cache is still used when reading/writing,
> provided that the cache line is valid.
>=20
Exactly. Clearing CR_C disables cache allocation, but lookups in the
cache still proceed as normal.

> > If you then proceed to invalidate the cache, you may
> > discard data that has not yet reached DRAM. So IMO this fix here seems
> > risky, as it assumes that there have been no writes to memory that are
> > worth keeping before calling start_optee_early(). While this might be
> > the case in the current implementation, this assumption is quite non-
> > obvious to someone just looking at the individual functions.
>=20
> Agreed. If the issue is with the valid and not the dirty bit,
> invalidation at this location is incorrect.
>=20
> > The stuck writes are also why OP-TEE is unable to handle this itself:
> > any cache invalidation there would risk discarding writes from software
> > running before OP-TEE. So the only way to handle this properly is to
> > invalidate the caches before issuing any writes.
>=20
> This makes me wonder though about the regular case without any OP-TEE as
> we are already doing arm_early_mmu_cache_invalidate() inside
> __barebox_arm_entry:
>=20
>  - low level init code writes something to handoff object or to scratch
>    area
>=20
>  - The freshly written data ends up in (L1) cache as tag was valid
>=20
>  - arm_early_mmu_cache_invalidate() discards these writes
>=20
>  - The uncompressor or barebox proper ends up with corrupted data.
>=20
> We don't have many objects that are accessed both before and after
> arm_early_mmu_cache_invalidate, so maybe that's why we didn't run into
> more problems?
>=20
Yea, I would guess that the probability of hitting this issue with the
handoff data, which isn't that big, is quite low. At least from the
description above I think we can hit the same issues with the handoff
data.

> > I guess it would be much better to simply have the
> > arm_early_mmu_cache_invalidate() as part of the Cortex A9 lowlevel CPU
> > initialization at the very start of the PBL entry.
>=20
> We don't have a dedicated Cortex-A9 lowlevel entry function
> unfortunately, just some for specific processors, e.g. the
> imx6_cpu_lowlevel_init.
>=20
> We could add CONFIG_CPU_CORTEX_A9, select it from the relevant SoC
> options and depending on it, add the invalidation to
> arm_cpu_lowlevel_init()? What do you think?
>=20
This would then trigger the invalidation even on systems that don't
need it in case of a multiarch Barebox. There aren't that many Cortex
A9 based SoCs supported in Barebox and all of them should have a SoC
specific init function to apply the necessary workarounds, so I think
it would be fine to call the cache invalidate from the SoC specific
lowlevel init of those few SoCs?

Regards,
Lucas

> Thanks,
> Ahmad
>=20
>=20
> >=20
> > Regards,
> > Lucas
> >=20
> > > This means on e.g. the i.MX6UL, we will now do one extra cache invali=
dation
> > > that's not needed. This should be negligible and we are already had a=
n
> > > unconditional invalidation in __barebox_arm_entry.
> > >=20
> > > Note that this is a different implementation than what we do on ARM64=
,
> > > there we load TF-A before it jumps to OP-TEE and assuming
> > > non-architected caches or caches with uninitialized content on power-=
on
> > > to be a dying breed, our ARM64 implementation is likely not affected.
> > >=20
> > > Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> > > Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> > > ---
> > >  arch/arm/lib32/optee-early.c | 13 +++++++++++++
> > >  1 file changed, 13 insertions(+)
> > >=20
> > > diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-earl=
y.c
> > > index 0cda0ab163..b1dba67d42 100644
> > > --- a/arch/arm/lib32/optee-early.c
> > > +++ b/arch/arm/lib32/optee-early.c
> > > @@ -35,6 +35,19 @@ int start_optee_early(void *fdt, void *tee)
> > >  	/* We use setjmp/longjmp here because OP-TEE clobbers most register=
s */
> > >  	ret =3D setjmp(tee_buf);
> > >  	if (ret =3D=3D 0) {
> > > +		/*
> > > +		 * At least OP-TEE v4.1.0 seems to not invalidate all dirty cache
> > > +		 * lines before enabling the MMU. This can lead to spurious hangs
> > > +		 * on return to barebox on systems where there might be left-over
> > > +		 * dirty cache lines, whether from BootROM or because L2 cache
> > > +		 * is non-architected and powers on with unpredictable content
> > > +		 * like is the case with PL310 on i.MX6Q.
> > > +		 *
> > > +		 * Let's invalidate the caches here, so board entry points need
> > > +		 * not bother.
> > > +		 */
> > > +		arm_early_mmu_cache_invalidate();
> > > +
> > >  		tee_start(0, 0, fdt);
> > >  		longjmp(tee_buf, 1);
> > >  	}
> >=20
> >=20
>=20



