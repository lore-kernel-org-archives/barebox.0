Delivery-date: Tue, 03 Jun 2025 12:48:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPC1-003HRW-36
	for lore@lore.pengutronix.de;
	Tue, 03 Jun 2025 12:48:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uMPC1-00087y-8R
	for lore@pengutronix.de; Tue, 03 Jun 2025 12:48:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:Cc:To:From
	:Subject:Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dJROgSiRTOMitJhtFjesQ8QQmHIAo3uYfKRsI3PR/Bg=; b=PHNGDJqdTTt04Q0QFY4S8dJACA
	OV/NVtSB3p9oiVFXMakz9rm0615Sg2Tt4T1qCUWDNq/d37RWHYb/S3pn2CdYsYQpWfIgjvhrD8Odq
	+ePR1IgiS0g9S4dp+5exSsKN38n4zuvwnHJrNoAoDWckWd+kL8eJj56HSRhcXyVtPlGuKcsKWIDKk
	uLHKBTNy6Y0jJHuMeiuvk85dYB8ZICfFav6MOrjHMmeKamjnnYWyK36lC6FomTZqxCtMUeFAQPhlY
	0QMjyg2vDYeX9yYcHXO4y+cM8DQLouqP+rLEglqsdCzcT8tAk1vwx2issbXMXF30SgxlZQvzd5WHT
	wSEe7Xpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMPBI-0000000AhGy-1aqv;
	Tue, 03 Jun 2025 10:47:44 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uMOOb-0000000AdFE-3cLV
	for barebox@lists.infradead.org;
	Tue, 03 Jun 2025 09:57:26 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1uMOOX-0008LW-SC; Tue, 03 Jun 2025 11:57:21 +0200
Message-ID: <569963942cf35755dfdf34b240c350986fda4727.camel@pengutronix.de>
From: Lucas Stach <l.stach@pengutronix.de>
To: Fabian Pflug <f.pflug@pengutronix.de>, barebox@lists.infradead.org
Cc: rouven.czerwinski@linaro.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Tue, 03 Jun 2025 11:57:21 +0200
In-Reply-To: <20250603092044.1464440-2-f.pflug@pengutronix.de>
References: <20250603092044.1464440-1-f.pflug@pengutronix.de>
	 <20250603092044.1464440-2-f.pflug@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.52.4 (3.52.4-2.fc40) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250603_025725_900209_5C1B7FD2 
X-CRM114-Status: GOOD (  29.86  )
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

Hi Fabian,

Am Dienstag, dem 03.06.2025 um 11:20 +0200 schrieb Fabian Pflug:
> The optee-early code was initially added for i.MX6UL. Trying to naively
> enable it on an i.MX6Q boards was observed to cause spurious hangs on
> return from OP-TEE to barebox.
>=20
> The root cause seems to be inadequate cache handling by OP-TEE: OP-TEE
> enables the MMU and caches with it, but didn't take care to invalidate
> all cache lines before enabling the MMU, which triggered the
> aforementioned hangs.
>=20
> To paper over this issue, let's just invalidate the cache lines on the
> barebox side instead before jumping to OP-TEE. This issue did likely not
> affect the original i.MX6UL, because its Cortex-A7 has an architected L2
> cache that's guaranteed zeroed (no dirty cache lines) on power-on reset,
> unlike the i.MX6Q's Cortex-A9, where the external L2 cache powers on
> with unpredictable content including the dirty bits.
>=20
The explanation here doesn't make too much sense to me. I don't think
the outer L2 cache is even enabled at this point, but even if it were
arm_early_mmu_cache_invalidate() only handles architected caches, so it
wouldn't affect the PL310 on the i.MX6Q/DL.

The real issue with the Cortex A9 caches is that the tags aren't
cleared on power-up, so some sets/ways may end up in "valid" state if
not explicitly invalidated. Thus any write to memory may get stuck in
the cache, even if caching is disabled, as this knob only turns off=20
allocation in the cache, but doesn't prevent updates of such bogus
valid lines. If you then proceed to invalidate the cache, you may
discard data that has not yet reached DRAM. So IMO this fix here seems
risky, as it assumes that there have been no writes to memory that are
worth keeping before calling start_optee_early(). While this might be
the case in the current implementation, this assumption is quite non-
obvious to someone just looking at the individual functions.

The stuck writes are also why OP-TEE is unable to handle this itself:
any cache invalidation there would risk discarding writes from software
running before OP-TEE. So the only way to handle this properly is to
invalidate the caches before issuing any writes.

I guess it would be much better to simply have the
arm_early_mmu_cache_invalidate() as part of the Cortex A9 lowlevel CPU
initialization at the very start of the PBL entry.

Regards,
Lucas

> This means on e.g. the i.MX6UL, we will now do one extra cache invalidati=
on
> that's not needed. This should be negligible and we are already had an
> unconditional invalidation in __barebox_arm_entry.
>=20
> Note that this is a different implementation than what we do on ARM64,
> there we load TF-A before it jumps to OP-TEE and assuming
> non-architected caches or caches with uninitialized content on power-on
> to be a dying breed, our ARM64 implementation is likely not affected.
>=20
> Co-authored-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> Signed-off-by: Fabian Pflug <f.pflug@pengutronix.de>
> ---
>  arch/arm/lib32/optee-early.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
>=20
> diff --git a/arch/arm/lib32/optee-early.c b/arch/arm/lib32/optee-early.c
> index 0cda0ab163..b1dba67d42 100644
> --- a/arch/arm/lib32/optee-early.c
> +++ b/arch/arm/lib32/optee-early.c
> @@ -35,6 +35,19 @@ int start_optee_early(void *fdt, void *tee)
>  	/* We use setjmp/longjmp here because OP-TEE clobbers most registers */
>  	ret =3D setjmp(tee_buf);
>  	if (ret =3D=3D 0) {
> +		/*
> +		 * At least OP-TEE v4.1.0 seems to not invalidate all dirty cache
> +		 * lines before enabling the MMU. This can lead to spurious hangs
> +		 * on return to barebox on systems where there might be left-over
> +		 * dirty cache lines, whether from BootROM or because L2 cache
> +		 * is non-architected and powers on with unpredictable content
> +		 * like is the case with PL310 on i.MX6Q.
> +		 *
> +		 * Let's invalidate the caches here, so board entry points need
> +		 * not bother.
> +		 */
> +		arm_early_mmu_cache_invalidate();
> +
>  		tee_start(0, 0, fdt);
>  		longjmp(tee_buf, 1);
>  	}



