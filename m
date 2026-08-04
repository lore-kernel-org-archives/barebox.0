Delivery-date: Tue, 04 Aug 2026 13:02:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wrCub-006C33-1N
	for lore@lore.pengutronix.de;
	Tue, 04 Aug 2026 13:02:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C68A22008C4
	for <lore@pengutronix.de>; Tue, 04 Aug 2026 13:02:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xQ54WDfV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9ZkPmdfln60ptN5GlNcJCD0nWI1/n4Wl3XlpgomAlgI=; b=xQ54WDfVVN0TmLSvTIkbq8IaZ2
	n0xM+wQuhXPXMTRPklYAcLyRAAi5t5N7nNGbM1BzPNMnu3pjdorRzqvhBLSDNo7ENHIuAlX0SaOmF
	6pChIJxG72MdqIwUIYqNpkppCVhFjyOaHNrO7dafghQqRh/6da+dj2I/AKJT/46cs05iq2sHqyVR3
	HlZOCY8T/jyWBPS9jm9elkDn1Na9QEn1/Hy5LdrJbE3yX0YLVmIQmXiCi85aW32/GbzkXd/MESGM3
	uOwMrYl3iaYf1OnwAdnsMHwZ1LWuDyxKVHEUblQ5U6sUKTU/nVIWb4yNBFiD2vOplGJEuu/wwYsx8
	VaWjmqiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrCtV-00000001dBW-2kwr;
	Tue, 04 Aug 2026 11:01:13 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wrCtO-00000001d8l-3D9L
	for barebox@lists.infradead.org;
	Tue, 04 Aug 2026 11:01:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 978AA200F59;
	Tue, 04 Aug 2026 13:00:58 +0200 (CEST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=[127.0.0.1])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1wrCtG-002r1V-1T;
	Tue, 04 Aug 2026 13:00:58 +0200
Message-ID: <341dc25a-de7e-4b51-a4e6-21986085c318@pengutronix.de>
Date: Tue, 4 Aug 2026 13:00:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: barebox,state on the EFI payload: boot-disk binding and state.dtb
 trust
To: Raymond | KelvaneOS <raymond@kelvaneos.eu>, barebox@lists.infradead.org
References: <146164AA-62BF-40AC-A83B-83F9D36CF356@kelvaneos.eu>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <146164AA-62BF-40AC-A83B-83F9D36CF356@kelvaneos.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260804_040106_959851_05F1D801 
X-CRM114-Status: GOOD (  28.79  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hello Raymond, On 7/28/26 2:45 PM, Raymond | KelvaneOS wrote:
    > Hi, > > We are evaluating barebox as the boot selector for an immutable
    Linux > distribution on UEFI x86-64, with A/B generations and barebox,state
    in [...] 
 
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
X-Spamd-Result: default: False [-6.61 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_LOW(-0.20)[2a0a:edc0:0:900:1d::77:received,2a0a:edc0:0:c01:1d::a2:received];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:raymond@kelvaneos.eu,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C68A22008C4
X-Stat-Signature: wctt8tx11ko1qc75ruiwyx3wazp7nh6f

Hello Raymond,

On 7/28/26 2:45 PM, Raymond | KelvaneOS wrote:
> Hi,
> 
> We are evaluating barebox as the boot selector for an immutable Linux
> distribution on UEFI x86-64, with A/B generations and barebox,state in a
> dedicated GPT partition. Two things in the EFI payload I could not settle
> from the source, and I would rather ask than guess.
> 
> 1) Binding state to the boot disk
> 
> We want the state backend to resolve to a partition on the disk barebox
> was loaded from, without baking a machine-specific PARTUUID into the
> device tree.

Most systems running barebox store the state on some "built-in" storage,
so having a dynamic location was not a common use case.

> barebox,bootsource together with storage-by-alias looks like the intended
> composition, and state.c already resolves a whole-disk backend to the
> state partition by GPT type GUID. But bootsource_get_alias_stem() in
> common/bootsource.c has no case for BOOTSOURCE_HD or BOOTSOURCE_USB, so
> bootsource_of_node_get() returns NULL on the paths the EFI payload uses.
> 
> Is there an intended mechanism here that I have missed? If not, would a
> patch adding those bootsource cases be welcome, or were they left out for
> a reason?

Patches are most certainly welcome, but merely adding aliases won't cut
it as this logic relies on both barebox and Linux using device trees
that unambiguously identify the boot devices.

Do you have a scheme in mind on how to detect the boot medium in x86
Linux without depending on a UUID stored to the medium?

> 2) Trusting state.dtb under Secure Boot
> 
> efi/payload/init.c reads the state description from
> /boot/EFI/barebox/state.dtb when CONFIG_STATE is enabled and /boot is
> mounted. That file is not covered by the signature on the barebox EFI
> binary, so with Secure Boot enabled and our own keys enrolled, the layout
> and storage association of the state area remain modifiable while the
> rest of the chain is authenticated.

Are you going to authenticate the state via HMAC?

We are fuzzing the DT parser because it's used for FIT images, but we
indeed didn't so far we treat the state layout definition as untrusted
input.

> Is there an existing way to require a built-in state description instead,
> or to authenticate that file? If not, would a Kconfig option to disable
> the external load path be acceptable?

On device-tree enabled systems, barebox fixed it up into the kernel
device tree. As we only support UEFI boot on x86, we could achieve
something similar via volatile EFI variables with runtime access:

barebox already sets LoaderTimeInitUSec or LoaderFirmwareInfo, so we can
pass the device tree similarly under the barebox GUID.

How about:

- barebox includes an empty device tree by default
- CONFIG_EXTERNAL_DTS_FRAGMENTS can be used to add the state layout
definition from outside the build
- barebox simply passes its internal DT in flattened form via the EFI
variable

> Happy to do the work on either if the direction is agreed.

Sounds great!

Are you going to use UKI profiles? If so, I could collect some thoughts
on how to make this more ergonomic.

Cheers,
Ahmad

> 
> Thanks,
> Raymond Zwarts
> 
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



