Delivery-date: Tue, 25 Aug 2026 19:06:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyub9-0078bu-1D
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 19:06:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 807A4204AFA
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 19:06:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aRLvu89h;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QJxzKxN1SvpOKaJTmRIWx8D3lYIuzx0KQeiH4vwEWTg=; b=aRLvu89hihAiD0W9r4FKpyFWaW
	gvp50ZPoIdBHPLFOCtUFdsr5UV3lSZg4QJZhEY0+YJ6eH0FTSMC82VcoEcA3jPIC13FEui96HaFNl
	hx/Xyg4APwvwUs07YBzTryG14yaQPOZJv37TkCz/fFBdJSPb4ZEycs+IePYONkbaOtxqmGlZf3pil
	LOqdUuE2ntLHHFyBOj1noR8YwlBN+JhO2mNbbaq+0LG8VLlB48X6qwaNPd+KeybXBUBM4bQdJsva9
	7ab6+bsIvQBQy1VZF3BFhu5Hx77D8C4ZR0tO9mM8NeE/AeB4CkfMCnIByRPZQFriOlPvdUw857AiI
	Y9lFpSGQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyuZk-00000001AZ7-0cmc;
	Tue, 25 Aug 2026 17:04:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyuZg-00000001AYf-3yCV
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 17:04:39 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CE613203301;
	Tue, 25 Aug 2026 19:04:30 +0200 (CEST)
Message-ID: <d7543375-fbad-495c-a1a5-3556a4f6090e@pengutronix.de>
Date: Tue, 25 Aug 2026 19:04:30 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 3/4] efi: payload: export resolved state as a
 BareboxState UEFI variable
To: chalianis1@gmail.com, s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org
References: <20260825030548.473672-1-chalianis1@gmail.com>
 <20260825030548.473672-4-chalianis1@gmail.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260825030548.473672-4-chalianis1@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260825_100437_147709_8533B2EE 
X-CRM114-Status: GOOD (  31.72  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 8/25/26 5:05 AM, chalianis1@gmail.com wrote: > From:
    Chali Anis <chalianis1@gmail.com> > > When a "barebox,state" node is already
    reachable via barebox's live > devicetree (statically compiled in, [...] 
 
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
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:900:1d::77:received];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[gmail.com,pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_NONE(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 807A4204AFA
X-Rspamd-Server: mx1
X-Stat-Signature: d37ppbcxkm1f8hgbuywaeut876han5qe

Hi,

On 8/25/26 5:05 AM, chalianis1@gmail.com wrote:
> From: Chali Anis <chalianis1@gmail.com>
> 
> When a "barebox,state" node is already reachable via barebox's live
> devicetree (statically compiled in, or injected by
> CONFIG_STATE_OVERLAY), render its fully resolved description - backend
> phandle included - with of_state_fixup() and publish it as a
> "BareboxState" UEFI variable, so an OS-side consumer can locate the
> state layout without needing a separate state.dtb file on the ESP.

Why not pass along the whole barebox DT? For EFI payloads, that's
effectively the state and the backend already and in case we gain more
content in future, it will just be passed along as well.

> 
> state_to_efivars_export() and efi_late_init() are both late_efi_initcall,
> and within one initcall level, execution follows definition order in the
> object file, so state_to_efivars_export() must be defined after
> efi_late_init(): on boards with no state node in their own static
> devicetree, efi_late_init() is what loads and registers
> /boot/EFI/barebox/state.dtb, and only once that has had a chance to run
> does state_by_alias() have anything to find. Defined the other way
> around, state_to_efivars_export() would always run first and never see
> a state.dtb efi_late_init() had not loaded yet - it would only have
> happened to work when CONFIG_STATE_OVERLAY had already registered the
> node much earlier, at postcore_initcall, a narrower case than the
> state.dtb fallback efi_late_init() exists to support.
> 
> Look the state instance up via the state_by_alias() helper
> (common/state/state.c) rather than open-coding the equivalent
> of_find_node_by_alias() + state_by_node(). This also means state not
> being set up yet is just a clean no-op, rather than the -ENODEV that
> open-coded version returned, which would've been logged as an initcall
> failure for what is an entirely ordinary condition.
> 
> Assisted-by: Claude Sonnet 5
> Signed-off-by: Chali Anis <chalianis1@gmail.com>
> ---
>  efi/payload/init.c | 51 +++++++++++++++++++++++++++++++++++++++++++++-
>  1 file changed, 50 insertions(+), 1 deletion(-)
> 
> diff --git a/efi/payload/init.c b/efi/payload/init.c
> index f0ce2a82cefc..cdb73afffa2c 100644
> --- a/efi/payload/init.c
> +++ b/efi/payload/init.c
> @@ -287,7 +287,6 @@ core_efi_initcall(efi_register_firmware_nodes_fixup);
>  #define EFI_LOADER_FEATURE_SECUREBOOT_ENROLL       (1LL << 11)
>  #define EFI_LOADER_FEATURE_RETAIN_SHIM             (1LL << 12)
>  
> -
>  static int efi_postcore_init(void)
>  {
>  	const struct efi_device_path *parent_image_dp, *loaded_image_dp;
> @@ -404,6 +403,56 @@ static int efi_late_init(void)
>  }
>  late_efi_initcall(efi_late_init);
>  
> +/*
> + * Must run after efi_late_init(): on boards with no state node compiled
> + * into their own devicetree, efi_late_init() is what loads and registers
> + * /boot/EFI/barebox/state.dtb (or, on CONFIG_STATE_OVERLAY targets, that
> + * already happened much earlier). Only once that has had a chance to run
> + * does state_by_alias() have anything to find here.
> + */
> +static int state_to_efivars_export(void)
> +{
> +	struct device_node *np;
> +	struct state *state;
> +	void *fdt;
> +	size_t size;
> +	int ret;
> +
> +	if (!IS_ENABLED(CONFIG_STATE))
> +		return 0;
> +
> +	state = state_by_alias("state");
> +	if (!state)
> +		return 0;
> +
> +	np = of_new_node(NULL, NULL);
> +	if (!np)
> +		return -ENOMEM;
> +
> +	ret = of_state_fixup(np, state);
> +	if (ret)
> +		goto out;
> +
> +	fdt = of_flatten_dtb(np);
> +	if (!fdt) {
> +		ret = -ENOMEM;
> +		goto out;
> +	}
> +
> +	size = fdt_totalsize(fdt);
> +
> +	efi_set_variable("BareboxState", &efi_barebox_vendor_guid,
> +			  EFI_VARIABLE_BOOTSERVICE_ACCESS |
> +			  EFI_VARIABLE_RUNTIME_ACCESS,
> +			  fdt, size);
> +
> +	free(fdt);
> +	ret = 0;
> +out:
> +	of_delete_node(np);
> +	return ret;
> +}
> +late_efi_initcall(state_to_efivars_export);
>  static int do_efiexit(int argc, char *argv[])
>  {
>  	if (!BS)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



