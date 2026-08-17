Delivery-date: Mon, 17 Aug 2026 19:52:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ww1VH-004DNf-0O
	for lore@lore.pengutronix.de;
	Mon, 17 Aug 2026 19:52:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 6057C2009FB
	for <lore@pengutronix.de>; Mon, 17 Aug 2026 19:52:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=UJt3Glj6;
	dkim=fail ("headers rsa verify failed") header.d=kelvaneos.eu header.s=x header.b=fu++HslM;
	dmarc=none;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:In-Reply-To:To:
	References:Date:Subject:Mime-Version:Content-Transfer-Encoding:Content-Type:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=wORNuDqoZA0y+Qp6Uc4kEoVMx7l4XQ5JYDZVRL2N+m4=; b=UJt3Glj698j4OpUVXhS5C6wdKv
	yblXTCBSAFb6ssVa599w5nIjchCvXE3UEnJ6pR81TsBGJhvaUX+VBrVMDsaPTYt+rhC5n2eLACUOx
	ZfWuLsKmm1aThxlcdFx6owGPXqwAq4FX9dzUEiTxIRnki7M95fsIesgNb6UKO//8lRuRQQPALfz3V
	juL/DRaMKN1tcsvYkfXm7K+K3WJK4lTcvoq/zWl3nukBoqlAn6fWLCaQ3qWDl/ACU+m1pKo0/zqj1
	MIlSJf1gkYn4+L0fBWN5RSGY2t/qbvdtS4cOSTzdxNZ0yl+cmKWlAeck5Be/eaaIJRGBlTW78bYlU
	GM4N0+fQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww1Tp-00000006cwK-2Hu4;
	Mon, 17 Aug 2026 17:50:37 +0000
Received: from mail-108-mta120.mxroute.com ([136.175.108.120])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1ww1Tn-00000006cvr-0fCd
	for barebox@lists.infradead.org;
	Mon, 17 Aug 2026 17:50:36 +0000
Received: from filter006.mxroute.com ([136.175.111.3] filter006.mxroute.com)
 (Authenticated sender: mN4UYu2MZsgR)
 by mail-108-mta120.mxroute.com (ZoneMTA) with ESMTPSA id 1a010d89c6c000c8ef.001
 for <barebox@lists.infradead.org>
 (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
 Mon, 17 Aug 2026 17:50:26 +0000
X-Zone-Loop: 771b7f07b063c4a2a75a0c6e4c0ee6f7eb3d1b2d2277
X-Originating-IP: [136.175.111.3]
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=kelvaneos.eu; s=x; h=Message-Id:In-Reply-To:To:References:Date:Subject:
	Mime-Version:Content-Transfer-Encoding:Content-Type:From:Sender:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:List-Id:List-Help:List-Unsubscribe:
	List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=wORNuDqoZA0y+Qp6Uc4kEoVMx7l4XQ5JYDZVRL2N+m4=; b=fu++HslMB2tdftXcwwBcZmUEfP
	0BhilVO/txNp4+0FflnBZadzcniykFyXVHFmp2vYFAAzEu8OpZQZQq97SMxzJrH2y0fEfb7/R/6E3
	wzGyw1KEjpAyQcCqy0skA4pKqBxKOq38uQtifzTj+jQE0A2BGI9FnsiNGv4WRCzDoqLAspvOdU1Hm
	b91lJGQYf5ZjL6wCgtp3n7f+KdwLQUlH4jUaaO2tBHUkrKo7UAOwT0QZJO7AN1Yw04sdWnTsMau2d
	rlOnpevLzFvjq0YqLzonmq0GRGDxvQPtNSuMt0beFpRjfPJtwdcdT8EkSUNrCbXMwjdJJ/MpHnW+7
	0gEfgcFA==;
From: Raymond | KelvaneOS <raymond@kelvaneos.eu>
Content-Type: text/plain;
	charset=us-ascii
Content-Transfer-Encoding: 7bit
Mime-Version: 1.0 (Mac OS X Mail 16.0 \(3864.700.51.1.1\))
Subject: Re: barebox,state on the EFI payload: boot-disk binding and state.dtb
 trust
Date: Mon, 17 Aug 2026 19:50:09 +0200
References: <146164AA-62BF-40AC-A83B-83F9D36CF356@kelvaneos.eu>
 <341dc25a-de7e-4b51-a4e6-21986085c318@pengutronix.de>
 <F58F461D-507C-4355-B53A-3AB6AC67AEB9@kelvaneos.eu>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>,
 barebox@lists.infradead.org
In-Reply-To: <F58F461D-507C-4355-B53A-3AB6AC67AEB9@kelvaneos.eu>
Message-Id: <8093F26E-B944-4F7F-B24B-4DEBD4873509@kelvaneos.eu>
X-Authenticated-Id: raymond@kelvaneos.eu
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260817_105035_296751_4C77B0D0 
X-CRM114-Status: GOOD (  39.09  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Ahmad, > What's a runtime identity? The disk's UUID?
    Yes, the containing disk's GPT DiskGUID. "Runtime identity" was imprecise;
    I did not mean the partition's PARTUUID. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Stat-Signature: d9s91t3cfmdjxn7tjpm4qecf79tenbc4
X-Spamd-Result: default: False [-6.91 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MV_CASE(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[raymond@kelvaneos.eu,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[kelvaneos.eu];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	SUSPICIOUS_AUTH_ORIGIN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,kelvaneos.eu:-];
	R_DKIM_REJECT(0.00)[kelvaneos.eu:s=x];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	HAS_XOIP(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[raymond@kelvaneos.eu,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[136.175.111.3:received];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_MIXED(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 6057C2009FB

Hello Ahmad,

> What's a runtime identity? The disk's UUID?

Yes, the containing disk's GPT DiskGUID. "Runtime identity" was
imprecise; I did not mean the partition's PARTUUID.

> We would need to either derive some secret that can be exported to
> userspace or to use AF_ALG with a key in the kernel keyring.

Linux 6.12's AF_ALG supports ALG_SET_KEY_BY_KEY_SERIAL for keyed hashes
and accepts trusted keys. That gives us a Linux-side path to evaluate,
but dt-utils does not implement that provider. AF_ALG is now deprecated
upstream, so it should remain an implementation detail rather than the
provider interface.

> It's not a built-in source per se, but the files specified there are
> included after barebox' own built-in DT.
>
> built-in state should always take precedence over the external.
> We can add a Kconfig option to control this later should a need arise.

Understood. That precedence is sufficient for KelvaneOS; we do not need
another Kconfig option now.

> Analogous to global.linux.bootargs.*, I think we should probably add
> global.efi.bootargs.* [...]
>
> That way you can have barebox select a profile (@1/@2 at the start of
> the load options).

That fits. A/B generations will remain separate UKIs; if we use
profiles, the proposed EFI bootargs can carry the profile selector.

Thanks,
Raymond Zwarts

> On 5 Aug 2026, at 21:24, Raymond | KelvaneOS <raymond@kelvaneos.eu> wrote:
> 
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
> 
> A non-block-backed/GPT origin or a match count other than one is an
> error. The resolver would not scan other disks or select the first
> match; KelvaneOS would treat the error as fatal rather than continue
> with default state.
> 
> Linux would consume the fixed-up description and would not need to
> reconstruct the EFI device hierarchy.
> 
>> Are you going to authenticate the state via HMAC?
> 
> Yes. HMAC itself is not an x86 issue. The unresolved part is provisioning
> a protected shared secret to both barebox and the Linux writer.
> 
> The dt-utils provider I found is tied to CAAM/blob_gen. A key file on
> the medium would work functionally but would not meet the offline
> tampering threat model. Is a new secret-provider abstraction in
> dt-utils the preferred direction for x86?
> 
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
> 
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
> 
> For the Secure Boot configuration, the external ESP state.dtb must not
> remain an alternative source when a built-in state description is
> present. Would you prefer the built-in state node to suppress that path
> automatically, or a separate Kconfig guard?
> 
> I would keep the HMAC key-provider work separate from the EFI disk
> binding and DT handoff.
> 
>> Are you going to use UKI profiles? If so, I could collect some thoughts
>> on how to make this more ergonomic.
> 
> We will use signed UKIs. Profiles are under evaluation; the A/B
> generations themselves will remain separate UKIs. Your thoughts would
> be very welcome.
> 
> Thanks,
> Raymond Zwarts



