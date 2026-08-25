Delivery-date: Tue, 25 Aug 2026 19:08:08 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyud5-0078pP-1T
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 19:08:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A4930205816
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 19:08:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=I1NKX8jM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=nKs/hlzkAYTQ0sZM/xLQiYvXeZKQSFWIqzvOR8EUw2A=; b=I1NKX8jM6FcDze3YgA2qNTFRbk
	U/hO+kIowJDPuq2OIPJo+qfeyFGbrQdl2Ji4vVXg8/yUCYZXabpHEaAhwec2bRnvt+Lc+813SaYNW
	QHCO9SmSUfJ+EM/NNdHtcH+dgRTh2Z47tnsKnhJrrFZGBk32wHUV5BanmnzSQrkhyvwcNWxOe7MC9
	9Kh6YTkzlKsbEEeS/eWQ4LZa4jI4W7Tnj7vLduD36CWigHppm4M/JD62CFfSxBmqWpe9O2VAo6fyj
	/dFqt8XmieSC45uEBjvXc9hgCOEJ8RLF8jk6FcCumL1KtPx/zfVPcPyeYloWMnuJfEDqs/1qjmvhh
	fIZnU09Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyubj-00000001Aex-1RpQ;
	Tue, 25 Aug 2026 17:06:43 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyubf-00000001AeT-24vo
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 17:06:42 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9D022202494;
	Tue, 25 Aug 2026 19:06:33 +0200 (CEST)
Message-ID: <26e4b950-5347-4dc7-aa80-109ceebafb49@pengutronix.de>
Date: Tue, 25 Aug 2026 19:06:33 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 4/4] efi: payload: make CONFIG_STATE_OVERLAY (and
 BareboxState export) work on x86
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260825030548.473672-1-chalianis1@gmail.com>
 <20260825030548.473672-5-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260825030548.473672-5-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_100639_698230_78E57DC0 
X-CRM114-Status: GOOD (  29.75  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 8/25/26 5:05 AM, chalianis1@gmail.com wrote: > From: Chali
    Anis <chalianis1@gmail.com> > > barebox_register_of() - the only thing that
    ever registers a live > devicetree root pre-boot on x86 EFI - [...] 
 
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
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_NA(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: A4930205816
X-Rspamd-Server: mx1
X-Stat-Signature: ftmmakk3j59ycfe83mzbch5aun7ck5dw



On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> barebox_register_of() - the only thing that ever registers a live
> devicetree root pre-boot on x86 EFI - lived in boarddata.c, which was
> compiled solely for CONFIG_EFI_STUB (the chain-loaded/ARM handoff-data
> entry point). x86 uses CONFIG_EFI_PAYLOAD (entry-single.c's standalone
> efi_main()), so no code ever called it there: of_get_root_node() stayed
> NULL for the entire pre-boot sequence. That's what state_overlay_apply()
> (CONFIG_STATE_OVERLAY's postcore_initcall) and state_to_efivars_export()
> (the BareboxState UEFI variable export) both rely on, so neither ever
> had anything to work with on x86. Compile boarddata.o for
> CONFIG_EFI_PAYLOAD too - efi_register_of() only needs BS, which
> entry-single.c's efi_main() already sets before any initcall runs, and
> handle_efi_boarddata() already no-ops cleanly when there is no PBL
> handoff data, the normal case for this entry point.
> 
> On x86, actually binding a struct state to the node CONFIG_STATE_OVERLAY
> adds still needs a fresh of_probe() pass: barebox_register_of() already
> ran one, before the overlay added anything, and the next one needs to
> happen later still than state_overlay_apply()'s own postcore_initcall,
> too - PCI/SATA enumeration (and thus the disk cdevs a partuuid-based
> state backend resolves against) only completes well after that point.
> Add efi_devices_probe() at device_efi_initcall to cover it.
> 
> Finally, now that a state node reachable via CONFIG_STATE_OVERLAY is
> something x86 can actually end up with pre-boot, add efi_late_init()'s
> "skip loading the standalone state.dtb whenever a 'state' alias is
> already present" check - it's only meaningful once that can happen.
> 
> Tested on QEMU as the EFI payload with a partuuid-referenced backend.
> 
> Assisted-by: Claude Sonnet 5
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  efi/payload/Makefile |  1 +
>  efi/payload/init.c   | 18 +++++++++++++++++-
>  2 files changed, 18 insertions(+), 1 deletion(-)
> 
> diff --git a/efi/payload/Makefile b/efi/payload/Makefile
> index 6306540ab595..f8b19428a99c 100644
> --- a/efi/payload/Makefile
> +++ b/efi/payload/Makefile
> @@ -11,3 +11,4 @@ obj-pbl-$(CONFIG_EFI_PAYLOAD) += early-mem.o
>  obj-$(CONFIG_EFI_PAYLOAD) += entry-single.o
>  pbl-$(CONFIG_EFI_STUB) += entry-multi.o
>  obj-$(CONFIG_EFI_STUB) += boarddata.o
> +obj-$(CONFIG_EFI_PAYLOAD) += boarddata.o
> diff --git a/efi/payload/init.c b/efi/payload/init.c
> index cdb73afffa2c..e644ec60bb87 100644
> --- a/efi/payload/init.c
> +++ b/efi/payload/init.c
> @@ -355,7 +355,7 @@ static int efi_late_init(void)
>  	void *fdt;
>  	int ret;
>  
> -	if (!IS_ENABLED(CONFIG_STATE))
> +	if (!IS_ENABLED(CONFIG_STATE) || of_find_node_by_alias(NULL, "state"))
>  		return 0;
>  
>  	if (!get_mounted_path("/boot")) {
> @@ -453,6 +453,22 @@ static int state_to_efivars_export(void)
>  	return ret;
>  }
>  late_efi_initcall(state_to_efivars_export);
> +
> +/*
> + * On x86, PCI/SATA enumeration (and thus the disk cdevs a partuuid-based
> + * state backend resolves against) only completes well after the one
> + * of_probe() pass barebox_register_of() already did, before the state
> + * overlay even added its node. Re-probe once devices have actually shown
> + * up, so such a backend can still bind.
> + */

This comment makes no sense. Block devices we boot from under EFI are
usually EFI block devices. We don't have PCI/SATA drivers even in barebox.


> +static int __maybe_unused efi_devices_probe(void)
> +{
> +	return of_probe();
> +}
> +#if IS_ENABLED(CONFIG_X86)
> +device_efi_initcall(efi_devices_probe);
> +#endif
> +
>  static int do_efiexit(int argc, char *argv[])
>  {
>  	if (!BS)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



