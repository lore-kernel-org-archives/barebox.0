Delivery-date: Wed, 26 Aug 2026 10:39:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wz9Ab-007N5M-1J
	for lore@lore.pengutronix.de;
	Wed, 26 Aug 2026 10:39:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 019D8200571
	for <lore@pengutronix.de>; Wed, 26 Aug 2026 10:39:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=GtTcfqWE;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:Date:To:From:
	Subject:Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nqBuKspTRrAhN1dJw0DBS4R4WmeqkMOodn0sCEWWBxI=; b=GtTcfqWEAFSW0vSxAGjMwyLg/F
	WvzPXnV71nXpLX3+KDp/iJ/s0A+SjMVTpmvfRDbZEIVa1H11mUSMKaz1NlyQY4lSnVCRCYsB99jY+
	9SzCf1OZF1Bz3QhDUdToepH9KA1TiaoS1U/3HLpbyYXAbkb1TIC/ENBFv/Oc9URMyU1ynqwbmTXJl
	VWNfsaWBaWOIF4pgMbUu7u8oYwNxsUK/O6536okh/mdrkdDNtQaJk8HXzFNl8mnoxYViaBUP/YFKV
	Sz/jlVVeygC6KfvviEroHL7YEpeJNJNq2GV9+eDVZhaNdO3YZ4qAHXybp0+/0weaXlPg+NwxycSXg
	LAKpbpEQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9A8-000000026pH-1ySg;
	Wed, 26 Aug 2026 08:39:12 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wz9A5-000000026ov-0oxw
	for barebox@lists.infradead.org;
	Wed, 26 Aug 2026 08:39:11 +0000
Received: from [IPv6:::1] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: lst@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1FA67200571;
	Wed, 26 Aug 2026 10:39:05 +0200 (CEST)
Message-ID: <72c9bb0aa0568b0beb28b3a66dae897b2d32f0b8.camel@pengutronix.de>
Subject: Re: [PATCH v2 1/3] ARM: cpu: suppress
 arm_early_mmu_cache_invalidate if dcache enabled
From: Lucas Stach <l.stach@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>, barebox@lists.infradead.org
Date: Wed, 26 Aug 2026 10:39:04 +0200
In-Reply-To: <20260825081533.1240832-1-a.fatoum@pengutronix.de>
References: <20260825081533.1240832-1-a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
User-Agent: Evolution 3.60.2 (3.60.2-1.fc44) 
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260826_013909_416404_BA2ECFB4 
X-CRM114-Status: GOOD (  17.74  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Am Dienstag, dem 25.08.2026 um 10:13 +0200 schrieb Ahmad Fatoum:
    > barebox built as EFI payload on ARM invalidates the data caches inside
   > barebox_arm_entry(), which may lead to memory corruption. > [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Spamd-Result: default: False [-57.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER(0.00)[l.stach@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: c3skehyadjww9kxh1wjur9qpwffh9iaw
X-Rspamd-Queue-Id: 019D8200571

Am Dienstag, dem 25.08.2026 um 10:13 +0200 schrieb Ahmad Fatoum:
> barebox built as EFI payload on ARM invalidates the data caches inside
> barebox_arm_entry(), which may lead to memory corruption.
>=20
> Generally, calling arm_early_mmu_cache_invalidate() while the caches are
> enabled is a bad idea, so add a function that protects against that and
> use it in common code.
>=20
> Fixes: 742e78976dd4 ("ARM64: add optional EFI stub")
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Entire series looks good to me.

Reviewed-by: Lucas Stach <l.stach@pengutronix.de>

> ---
> v1 -> v2:
>   - rename dcache_invalidate_stale(to cache_invalidate_stale (Lucas)
> ---
>  arch/arm/cpu/common.c        | 16 ++++++++++++++++
>  arch/arm/cpu/entry_ll_32.S   |  2 +-
>  arch/arm/cpu/entry_ll_64.S   |  2 +-
>  arch/arm/include/asm/cache.h |  3 +++
>  4 files changed, 21 insertions(+), 2 deletions(-)
>=20
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index adb5d6a02bc8..e079f55b8bb7 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -37,6 +37,22 @@ void sync_caches_for_execution(void)
>  	arm_early_mmu_cache_flush();
>  }
> =20
> +/**
> + * cache_invalidate_stale - invalidate caches prior to enabling them
> + *
> + * Some SoCs can come up with invalid entries, but with the valid bit se=
t.
> + * This function discards them, as that would lead to memory corruption
> + * otherwise.
> + */
> +void cache_invalidate_stale(void)
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
> index 0d4c47c1c870..0763581fded4 100644
> --- a/arch/arm/cpu/entry_ll_32.S
> +++ b/arch/arm/cpu/entry_ll_32.S
> @@ -15,7 +15,7 @@ ENTRY(__barebox_arm_entry)
>  	mov	r4, r0
>  	mov	r5, r1
>  	mov	r6, r2
> -	bl	arm_early_mmu_cache_invalidate
> +	bl	cache_invalidate_stale
>  	mov	r0, r4
>  	mov	r1, r5
>  	mov	r2, r6
> diff --git a/arch/arm/cpu/entry_ll_64.S b/arch/arm/cpu/entry_ll_64.S
> index 5eb6efed5baf..c80a23c6506d 100644
> --- a/arch/arm/cpu/entry_ll_64.S
> +++ b/arch/arm/cpu/entry_ll_64.S
> @@ -15,7 +15,7 @@ ENTRY(__barebox_arm_entry)
>  	mov	x19, x0
>  	mov	x20, x1
>  	mov	x21, x2
> -	bl	arm_early_mmu_cache_invalidate
> +	bl	cache_invalidate_stale
>  	mov	x0, x19
>  	mov	x1, x20
>  	mov	x2, x21
> diff --git a/arch/arm/include/asm/cache.h b/arch/arm/include/asm/cache.h
> index ea78ae123aec..9dbf433356b9 100644
> --- a/arch/arm/include/asm/cache.h
> +++ b/arch/arm/include/asm/cache.h
> @@ -26,6 +26,9 @@ static inline void icache_invalidate(void)
>  #endif
>  }
> =20
> +
> +void cache_invalidate_stale(void);
> +
>  void arm_early_mmu_cache_flush(void);
>  void arm_early_mmu_cache_invalidate(void);
> =20


