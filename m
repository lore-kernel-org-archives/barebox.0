Delivery-date: Tue, 07 Jul 2026 17:23:58 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wh7eQ-001Fm6-1r
	for lore@lore.pengutronix.de;
	Tue, 07 Jul 2026 17:23:58 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5B8D72026EE
	for <lore@pengutronix.de>; Tue, 07 Jul 2026 17:23:58 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hDTueEGi;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Ey8avnW3UZN2Svj84vcgw3/x0qv1JVjTTXpluNSMTMA=; b=hDTueEGi+HAOMm/JP/4BZGWoE4
	wxnhVSBZtIcHLhZWPVBezZ3cq0Mo6ufT0orM2vVJY7FnvEeqLOzoeDnPBie5HVyt8U/iLk363kBdB
	IX5KBQiG9f0m7Exm0X/ju5MxpgTB3kxT2mES3Gn5bJkJVtzI8ZCadUOJ7CnJBp7LPK1xjUvVU0whj
	twM3gJTGBXdGO3XtOFSQGUKNCFKGx2skz/ZiBf5lojUDlS5AQtfc6kcb/lJyqye69HNuqlUnL1Xyy
	EZA06dfoE49sICD+ymhUGN4FC4gR/bMD8bs8LtCYr/MUpsrjuNJ77z2MXO3kxcCrsJkZYUtoBGnLK
	PDgX4Xfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7d7-0000000FHEh-0rsx;
	Tue, 07 Jul 2026 15:22:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wh7d3-0000000FHDU-3Plt
	for barebox@lists.infradead.org;
	Tue, 07 Jul 2026 15:22:35 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[IPv6:::1])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <l.stach@pengutronix.de>)
	id 1wh7cy-0005iJ-T3; Tue, 07 Jul 2026 17:22:28 +0200
Message-ID: <491622cd3262aaf95d5ed3f45044c29cdffed696.camel@pengutronix.de>
Subject: Re: [PATCH 1/3] ARM: cpu: suppress arm_early_mmu_cache_invalidate
 if dcache enabled
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Tue, 07 Jul 2026 17:22:28 +0200
In-Reply-To: <20260707080707.997606-1-a.fatoum@pengutronix.de>
References: <20260707080707.997606-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.1 (3.60.1-1.fc44) 
MIME-Version: 1.0
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: l.stach@pengutronix.de
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260707_082233_850406_BDEE7BFB 
X-CRM114-Status: GOOD (  23.10  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Am Dienstag, dem 07.07.2026 um 10:05 +0200 schrieb Ahmad Fatoum:
    > barebox built as EFI payload on ARM invalidates the data caches inside
   > barebox_arm_entry(), which may lead to memory corruption. > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.0 DMARC_MISSING          Missing DMARC policy
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
X-Spamd-Result: default: False [-6.51 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FUZZY_RATELIMITED(0.00)[rspamd.com];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_TLS_LAST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a0a:edc0:2:b01:1d::104:received];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 5B8D72026EE
X-Stat-Signature: b1jgf76ik1erw1odqwxhn46dknp5zo8y

Am Dienstag, dem 07.07.2026 um 10:05 +0200 schrieb Ahmad Fatoum:
> barebox built as EFI payload on ARM invalidates the data caches inside
> barebox_arm_entry(), which may lead to memory corruption.
>=20
> Generally, calling arm_early_mmu_cache_invalidate() while the caches are
> enabled is a bad idea, so add a function that protects against that and
> use it in common code.
>=20
> Fixes: 742e78976dd4 ("ARM64: add optional EFI stub")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  arch/arm/cpu/common.c        | 16 ++++++++++++++++
>  arch/arm/cpu/entry_ll_32.S   |  2 +-
>  arch/arm/cpu/entry_ll_64.S   |  2 +-
>  arch/arm/include/asm/cache.h |  3 +++
>  4 files changed, 21 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index adb5d6a02bc8..d41da73d7e83 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -37,6 +37,22 @@ void sync_caches_for_execution(void)
>  	arm_early_mmu_cache_flush();
>  }
> =20
> +/**
> + * dcache_invalidate_stale - invalidate data cache prior to enabling it
> + *
> + * Some SoCs can come up with invalid entries, but with the valid bit se=
t.
> + * This function discards them, as that would lead to memory corruption
> + * otherwise.
> + */
> +void dcache_invalidate_stale(void)

I don't like the naming of this function, as
arm_early_mmu_cache_invalidate() invalidates both the D and I cache, as
well as a unified cache after the PoU if it's part of the architected
hierarchy. This is the desired behavior, as both the I and D side can
come up with invalid entries.

It's okay to only check for CR_C, as invalidating the I side when there
are already cached entries only has a minor impact on performance, but
won't affect correctness.

Also, by moving the call to a later point in the init flow later in the
series, are you sure that the invalidate happens before the I cache
gets enabled in arm_cpu_lowlevel_init()?

Regards,
Lucas

> +{
> +	/* if caches are already enabled, don't cause data loss */
> +	if (get_cr() & CR_C)
> +		return;
> +
> +	arm_early_mmu_cache_invalidate();
> +}
> +
>  void pbl_barebox_break(void)
>  {
>  	__asm__ __volatile__ (
> diff --git a/arch/arm/cpu/entry_ll_32.S b/arch/arm/cpu/entry_ll_32.S
> index 0d4c47c1c870..eb1793b54e66 100644
> --- a/arch/arm/cpu/entry_ll_32.S
> +++ b/arch/arm/cpu/entry_ll_32.S
> @@ -15,7 +15,7 @@ ENTRY(__barebox_arm_entry)
>  	mov	r4, r0
>  	mov	r5, r1
>  	mov	r6, r2
> -	bl	arm_early_mmu_cache_invalidate
> +	bl	dcache_invalidate_stale
>  	mov	r0, r4
>  	mov	r1, r5
>  	mov	r2, r6
> diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
> index 5eb6efed5baf..3404f6d05802 100644
> --- a/arch/arm/cpu/entry_ll_64.S
> +++ b/arch/arm/cpu/entry_ll_64.S
> @@ -15,7 +15,7 @@ ENTRY(__barebox_arm_entry)
>  	mov	x19, x0
>  	mov	x20, x1
>  	mov	x21, x2
> -	bl	arm_early_mmu_cache_invalidate
> +	bl	dcache_invalidate_stale
>  	mov	x0, x19
>  	mov	x1, x20
>  	mov	x2, x21
> diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
> index ea78ae123aec..64f369f865db 100644
> --- a/arch/arm/include/asm/cache.h
> +++ b/arch/arm/include/asm/cache.h
> @@ -26,6 +26,9 @@ static inline void icache_invalidate(void)
>  #endif
>  }
> =20
> +
> +void dcache_invalidate_stale(void);
> +
>  void arm_early_mmu_cache_flush(void);
>  void arm_early_mmu_cache_invalidate(void);
> =20


