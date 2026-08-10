Delivery-date: Mon, 10 Aug 2026 10:09:15 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wtL4L-001YZK-2g
	for lore@lore.pengutronix.de;
	Mon, 10 Aug 2026 10:09:15 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D00992006E0
	for <lore@pengutronix.de>; Mon, 10 Aug 2026 10:09:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=HUION2lc;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ltzq2wboRyhVs1I7ng28iIAAAvMXtPE3kaXwpRjxVTk=; b=HUION2lcA9/cy8Dpc35NOPr1Dj
	l5Vk199AV84ge/+IzpWMlyF7KwYV+MqDkGANeSWNlCWpvr3VWKd4lM/uD37TT5IbJVA0a+EdCtQkI
	opOzvebvbXqvP99PYXybXe9jM3FgrgdzjVM7yfGBNb98NlBvCqLVMYdZq2CuPzOMt3MEvMtwvcFlG
	O7trOBttPwfo5FHFpw3bb6ZNIEnPOUoROlCDW2kJd52l3kSb5iUKxcCsvb4I2VNNv7QXtR8XazeB5
	XtZd5gXfIiwwhyUqp+tp4nvSP2SJOtxe+3GXJ4RRB6fnIMpiMiSpOWNedqiXAgnCbyt477WVceLoE
	WzLbObew==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKDA-0000000BBIf-27or;
	Mon, 10 Aug 2026 07:14:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wtKD7-0000000BBI7-1xu3
	for barebox@lists.infradead.org;
	Mon, 10 Aug 2026 07:14:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 07F3620075B;
	Mon, 10 Aug 2026 09:14:09 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wtKD2-000kA8-2r;
	Mon, 10 Aug 2026 09:14:08 +0200
Message-ID: <80fab190-5a36-4e63-99d7-3e4a373a0dd3@pengutronix.de>
Date: Mon, 10 Aug 2026 09:14:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: barebox,state on the EFI payload: boot-disk binding and state.dtb
 trust
To: Raymond | KelvaneOS <raymond@kelvaneos.eu>, barebox@lists.infradead.org
References: <146164AA-62BF-40AC-A83B-83F9D36CF356@kelvaneos.eu>
 <341dc25a-de7e-4b51-a4e6-21986085c318@pengutronix.de>
 <F58F461D-507C-4355-B53A-3AB6AC67AEB9@kelvaneos.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <F58F461D-507C-4355-B53A-3AB6AC67AEB9@kelvaneos.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260810_001413_829575_3EA82E6A 
X-CRM114-Status: GOOD (  42.69  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Raymond, On 8/5/26 9:24 PM, Raymond | KelvaneOS wrote:
   > Hello Ahmad, > >> Patches are most certainly welcome, but merely adding
   aliases won't cut >> it as this logic relies on both barebox and Linux using
    dev [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: 3u1hedbgb86wzn3uhhc78kjrxgzkpaek
X-Spamd-Result: default: False [-7.71 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:0:c01:1d::a2:received];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:raymond@kelvaneos.eu,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_NA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: D00992006E0

Hi Raymond,

On 8/5/26 9:24 PM, Raymond | KelvaneOS wrote:
> Hello Ahmad,
> 
>> Patches are most certainly welcome, but merely adding aliases won't cut
>> it as this logic relies on both barebox and Linux using device trees
>> that unambiguously identify the boot devices.
>>
>> Do you have a scheme in mind on how to detect the boot medium in x86
>> Linux without depending on a UUID stored to the medium?
> 
> You are right; adding alias stems alone does not establish a shared
> device identity. Sorry, that suggestion was incomplete.
> 
> I was also imprecise about UUIDs: the requirement is to avoid a
> per-installation PARTUUID in the build input, not to avoid runtime GPT
> identifiers.
> 
> The patch I have in mind would resolve
> efi_loaded_image->device_handle to the corresponding whole-disk cdev,
> enumerate state-type partitions on that disk, require exactly one, and
> fix the selected partition's runtime identity into the internal DT
> exported through the EFI variable you propose below.

What's a runtime identity? The disk's UUID?

> A non-block-backed/GPT origin or a match count other than one is an
> error. The resolver would not scan other disks or select the first
> match; KelvaneOS would treat the error as fatal rather than continue
> with default state.

Fair enough.

> Linux would consume the fixed-up description and would not need to
> reconstruct the EFI device hierarchy.
> 
>> Are you going to authenticate the state via HMAC?
> 
> Yes. HMAC itself is not an x86 issue. The unresolved part is provisioning
> a protected shared secret to both barebox and the Linux writer.

Yes.

> The dt-utils provider I found is tied to CAAM/blob_gen. A key file on
> the medium would work functionally but would not meet the offline
> tampering threat model. Is a new secret-provider abstraction in
> dt-utils the preferred direction for x86?

The functionality of the out-of-tree blob_gen driver is now available
upstream in Linux as a trusted key source/backend.

It would be really nice if we had a generic method of pointing at the
blob as a DT partition and a generic dt-utils secret provider would take
that, load it as trusted key and use it for HMAC.

Use it for HMAC might be a bit tricky. We would need to either derive
some secret that can be exported to userspace or to use AF_ALG with a
key in the kernel keyring. Not sure if either is possible, but I think
something along these lines would be cool.

That said, if the kernel doesn't expose the necessary glue yet, I would
take patches that add a new secret provider.

> This is separate from trusting state.dtb: that description selects the
> backend, layout and algo, so it can redirect the state or remove HMAC
> before the state is authenticated.
>
>> We are fuzzing the DT parser because it's used for FIT images, but we
>> indeed didn't so far we treat the state layout definition as untrusted
>> input.
> 
> My concern is the valid-input case: a well-formed replacement can still
> change those semantics.

Ack

>> On device-tree enabled systems, barebox fixed it up into the kernel
>> device tree. As we only support UEFI boot on x86, we could achieve
>> something similar via volatile EFI variables with runtime access:
>>
>> barebox already sets LoaderTimeInitUSec or LoaderFirmwareInfo, so we can
>> pass the device tree similarly under the barebox GUID.
>>
>> How about:
>>
>> - barebox includes an empty device tree by default
>> - CONFIG_EXTERNAL_DTS_FRAGMENTS can be used to add the state layout
>> definition from outside the build
>> - barebox simply passes its internal DT in flattened form via the EFI
>> variable
> 
> Yes, that addresses the layout issue cleanly. I had missed
> CONFIG_EXTERNAL_DTS_FRAGMENTS as the built-in source; thanks.

It's not a built-in source per se, but the files specified there are
included after barebox' own built-in DT.

> For the Secure Boot configuration, the external ESP state.dtb must not
> remain an alternative source when a built-in state description is
> present. Would you prefer the built-in state node to suppress that path
> automatically, or a separate Kconfig guard?

built-in state should always take precedence over the external.
We can add a Kconfig option to control this later should a need arise.

> I would keep the HMAC key-provider work separate from the EFI disk
> binding and DT handoff.

Sure.

>> Are you going to use UKI profiles? If so, I could collect some thoughts
>> on how to make this more ergonomic.
> 
> We will use signed UKIs. Profiles are under evaluation; the A/B
> generations themselves will remain separate UKIs. Your thoughts would
> be very welcome.

A UKI is detected as an EFI application, so global.linux.bootargs.*
isn't serialized into load options for it.

Analogous to global.linux.bootargs.*, I think we should probably add
global.efi.bootargs.* that are concatenated (lexicographically as with
linux.bootargs) as load options.

EFI binaries that filetype_is_linux_efi_image() returns true for will
have as load options the EFI options followed by the Linux options, but
non-kernel images will just have the EFI options.

That way you can have barebox select a profile (@1/@2 at the start of
the load options).

Cheers,
Ahmad

> 
> Thanks,
> Raymond Zwarts
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



