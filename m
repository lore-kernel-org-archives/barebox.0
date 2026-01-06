Delivery-date: Tue, 06 Jan 2026 10:17:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3Bv-001qG6-39
	for lore@lore.pengutronix.de;
	Tue, 06 Jan 2026 10:17:27 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vd3Bv-0000II-BG
	for lore@pengutronix.de; Tue, 06 Jan 2026 10:17:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NsR8pTwG/2AJCj22fn77T3JWU+jgZ8sYKESKB09JjEU=; b=Q4dz50rvhd+VFumiS/T3K6WCG1
	TabYGfg+/W7u6nB1OXsEoBeeeVKZKFBObtsAxAn4Sp7x4SBoa05a20VYeoVIlkhC6+Fl05tjpC/mV
	wCLPJdYMmDFB+cQV6LfEdCE1zFg7O6gxb3eJp4wgUlzEylqQUQqystAIf/5njU2L9TGPwxsl5nQy3
	6dE9Mv2huZj/eJTJ86FltTK8R93RZpZtupiwsG6VLh+9JyvCNS65HJ3Jv6HJ/WKmEdO5760fG/r56
	PWtaG/jRV3osOhWcUdGqBVU48fR4kdDRa3R3hTYE/Krzjyx209QwYd/PPjcRItSJWXu2aOBG802s3
	ex28ThUA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3BF-0000000CgUD-3Mav;
	Tue, 06 Jan 2026 09:16:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vd3BC-0000000CgRT-1UPe
	for barebox@lists.infradead.org;
	Tue, 06 Jan 2026 09:16:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1vd3BA-0008Vt-Lj; Tue, 06 Jan 2026 10:16:40 +0100
Received: from pty.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::c5])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd3BA-009K4n-1U;
	Tue, 06 Jan 2026 10:16:40 +0100
Received: from sha by pty.whiteo.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1vd3BA-00EHeF-0z;
	Tue, 06 Jan 2026 10:16:40 +0100
Date: Tue, 6 Jan 2026 10:16:40 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@barebox.org>
Cc: barebox@lists.infradead.org
Message-ID: <aVzS-J58j8FsFpC3@pengutronix.de>
References: <20260106081659.3491945-1-a.fatoum@barebox.org>
 <20260106081659.3491945-2-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260106081659.3491945-2-a.fatoum@barebox.org>
X-Sent-From: Pengutronix Hildesheim
X-URL: http://www.pengutronix.de/
X-Accept-Language: de,en
X-Accept-Content-Type: text/plain
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260106_011642_531497_EA71D25D 
X-CRM114-Status: GOOD (  31.48  )
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
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: Re: [PATCH 2/2] ARM: cpu: common: define generic relocate_image
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

On Tue, Jan 06, 2026 at 09:16:57AM +0100, Ahmad Fatoum wrote:
> For use by the ELF loader in PBL to relocate barebox proper, export a
> new relocate_image capable of relocating barebox and implement
> relocate_to_current_adr() in terms of it.
> 
> When doing ELF loading, the PT_DYNAMIC segment will contain the info
> needed to derive the arguments for relocate_image():
> 
>   - dstart: DT_REL  /DT_RELA
>   - dend:   DT_RELSZ/DT_RELASZ
>   - dynsym: DT_SYMTAB
> 
> dynend is optional and could in theory be generated by looking at
> DT_HASH or DT_GNU_HASH, but it's not required. Best guess is that the
> zeroing is there just to signify that we don't need this data anymore.
> 
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  arch/arm/cpu/common.c        | 34 +++++++++++++++-------------------
>  arch/arm/include/asm/reloc.h |  3 +++
>  2 files changed, 18 insertions(+), 19 deletions(-)
> 
> diff --git a/arch/arm/cpu/common.c b/arch/arm/cpu/common.c
> index 5b65b0745b98..f4f3f8f6325b 100644
> --- a/arch/arm/cpu/common.c
> +++ b/arch/arm/cpu/common.c
> @@ -60,22 +60,10 @@ void pbl_barebox_break(void)
>  /*
>   * relocate binary to the currently running address
>   */
> -void __prereloc relocate_to_current_adr(void)
> +void __prereloc relocate_image(unsigned long offset,
> +			       void *dstart, void *dend,
> +			       long *dynsym, long *dynend)

As relocate_image() now contains two entirely separate implementations
for ARM32 and ARM64, should we move it to arch/arm/lib[32|64]/ ?

>  {
> -	unsigned long offset;
> -	unsigned long __maybe_unused *dynsym, *dynend;
> -	void *dstart, *dend;
> -
> -	/* Get offset between linked address and runtime address */
> -	offset = get_runtime_offset();
> -
> -	/*
> -	 * We have yet to relocate, so using runtime_address
> -	 * to compute the relocated address
> -	 */
> -	dstart = runtime_address(__rel_dyn_start);
> -	dend = runtime_address(__rel_dyn_end);
> -
>  #if defined(CONFIG_CPU_64)
>  	while (dstart < dend) {
>  		struct elf64_rela *rel = dstart;
> @@ -105,8 +93,6 @@ void __prereloc relocate_to_current_adr(void)
>  		dstart += sizeof(*rel);
>  	}
>  #elif defined(CONFIG_CPU_32)
> -	dynsym = runtime_address(__dynsym_start);
> -	dynend = runtime_address(__dynsym_end);
>  
>  	while (dstart < dend) {
>  		struct elf32_rel *rel = dstart;
> @@ -141,10 +127,21 @@ void __prereloc relocate_to_current_adr(void)
>  		dstart += sizeof(*rel);
>  	}
>  
> -	__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);
> +	/* Optional: not required for correctness */
> +	if (dynend)
> +		__memset(dynsym, 0, (unsigned long)dynend - (unsigned long)dynsym);

The purpose of this memset is that we can call relocate_to_current_adr()
multiple times on the same binary. This happens when relocate_to_current_adr()
is called in the board code and then again in uncompress.c. I think in
this particular case we could just early return above when offset == 0,
but I think there are (were?) some cases where the same binary is moved multiple
times.

Sascha

-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


