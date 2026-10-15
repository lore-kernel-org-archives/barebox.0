Delivery-date: Thu, 15 Oct 2026 12:35:39 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIoF-00DsmW-0u
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 12:35:39 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B8957201B6D
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 12:35:38 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WtN1BkM7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ChqShIex;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792060539; a=rsa-sha256;
	cv=pass;
	b=cxLkwXRhzkEKPqbIeADZWAYjYwQIhON/YFQVSptkuYgHTwGyf/gLNDqMXtu9pDNhxjj5vS
	Mx+3vid+e4D9zzApN3lUgYmOUq6F4du5yz9EpKjLFZms9NVZ1uwuoNW/12+oNV+cUsNW3Q
	PsnMC93xY19cAL0umhI/6ckSznsU4Lpt4LKtKo0c0Ek6foKlfzxFVr7WGns2Hspl2x/cDU
	m8xiAocRKkwhuTDss2EU/ubso7+7bKZpmIJLjzuQ0xHdm9PnHUpy1WXD5IcN6ZvAspfqwg
	6MMpNi4af4AGPLRfRDvbBrJzReJNs/pd5+FmRIsyBxuRyPPQhKWJCAWEOoT7uw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=WtN1BkM7;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ChqShIex;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060539;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=GU+Pdqa9E1mtaLtvAcgseW5c+J7M3zFDkoXQVmiZPCQ=;
	b=QqeYvzLdBjYt71r8aGnbJHaO51WamLfmKFoBGqWNRZRxnT83I6ZgrXb+fqLUBgvOurcmJi
	v906azAfbgVRoMF+xK2X+tB2K3QtqujHnzpl+JNk2TGinF/XjNrUgMYxhoFWVC53miwm5Z
	6bYs7mFlNCXaqr4im8wLb9mLoVXvJxprT1GqCMMmkQvNbIyrQkIOHoWUrTUQkCNx/7Jqmg
	VdCuHSH78RHrll3oxbEmdaCxpLW1L5IGgcFOGIhB3E6yVROeeBkdCxbg+ywXO0BQ8TJCyV
	F+ok6v39PeH0oo3L/WGwVEkKQQ4xXUl2NdLfgqm1qnOKxnxty4SFJeoOCfYoAQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=GU+Pdqa9E1mtaLtvAcgseW5c+J7M3zFDkoXQVmiZPCQ=; b=WtN1BkM7kSBLTUoz0YZ0rgeRlT
	2mvgQk0XW5uTXZH2WG+3RiT5mpev8RsK0OTlAW5DHoQ2zHlbMn0GxjDGuCzg1T98yJD+knyqkSlSQ
	9+rMtgf/QoQSj3tBRTywvc+sa7Kz7446Tkpf8/48X4ckEb6pcVq3vApiXXhPFmic9vWyvCCn07/Ct
	aVejkpMVlrYHNZw68C/mJ09JmzZjtl/fFCLvGL7WoyDx9ZQiNg7ZeNdnzlF9/NfjO7XCu5pR0Pd8C
	Wy/qpFEW38aF1iE1ss7bnbxP2/rZo809gWGzyzgm4MhG8jhAI3y75cM+JUO2qfuA4++bc0q46B7QP
	2ILqKhtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHImt-0000000HSKq-1nTu;
	Thu, 15 Oct 2026 10:34:15 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHImq-0000000HSJv-1ZFJ
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 10:34:14 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 761EC2004B4;
	Thu, 15 Oct 2026 12:34:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GU+Pdqa9E1mtaLtvAcgseW5c+J7M3zFDkoXQVmiZPCQ=;
	b=ChqShIexT9hVAqO5q2FaIwD/RmW3OU9fhgNOA072grpIzTJ6RyIkzP16Q0m6hUChGT/0aO
	GD88Xd5xGzdMzEDnaL2YPQKdzeNnulAkx5Vwyg5Fn9xv9OYwzOAa5ZOPQIKfLk35cW8v4B
	2pci1Md89hixFmMvIkzgQoXjO09V3VaieoIvmmrphiDiBwq1GE8P5fI3nS0zKJZj0qdKNQ
	/35LMSEpZXVXqr7yguO2KczwQZmUGCwNylKDMTR6JVVsPUxMp0krBzztnpuoYw+sfzHcA9
	x8KtbqVFGCmFnUjlTzj/dYhn7dWiGzg6Z+AQFgGdkzfG9TB3mtAwYu/Ic3944Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792060450; a=rsa-sha256;
	cv=none;
	b=fOpr7GkzmgMMpFg4mW0V8F69FOrtrE2f67dPGvH2JtDMD2QSe8+k+wyNE5l4SdKJnohG9r
	derxAN/CKaDm3a05PaLVWKLClBIi9jwBS9FINCXW50++k4ylQphKFYw4GSCwtvPk1gekMS
	zgYQrA+bCHLeKN0hmoEizGIlJC1nNqkywQKNIGE4ihRuTw8VpSKAKXKVZT+T6yiNPPVjiS
	dsII4p3+mka90xOsuyqwr/iTsJ1eqkBFy9UOd8WIH32foj4EPNRX3QafXlDlm4uKLKH3F9
	jnm/U3N0UT976eqxK2wPiF9zP+rHvwjC2x6g5BDMYSUhRopAUeKc6MziKVPCRQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792060450;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=GU+Pdqa9E1mtaLtvAcgseW5c+J7M3zFDkoXQVmiZPCQ=;
	b=VoEefTUAl6WqL+I6NwENLL1tO2/StM95wCd0Z/K6Qz+gqHT6gR6ZrcuXU7x+mOoZIxxM0r
	47EdXpWDQmbHGqHmGywZfTpHYD/njJMLL0UNWwxmZirX+H5J4P0GUHV57O/bNoJf7ZuJgF
	TVmQu3qhPvGowWQUscrnHpunwzNQiRZZuL6kdn3kVS2CZog5/FTa+yYzYS15Inem3KteDe
	vLA600jAaPPUVqQHWvVqpAVvRoxmXZnlmQBVdw7+9TTaP4wnCAIu7smMn7nc+FOVQvlUEC
	2blrAXk4o1RFm+S6j7g7PzQMlN3/LTMYa51h81vBncVm2U3WQFQIPHKEiTOaqA==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id 585051BFDD5; Thu, 15 Oct 2026 12:34:10 +0200 (CEST)
Date: Thu, 15 Oct 2026 12:34:10 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 08/10] efi: add global.efi.bootargs for bootm'd EFI
 applications
Message-ID: <wyfs2y2iztw76twfpuc6e3wlymeg43jborpsaceum2djko575e@mfon7rs5mnnd>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-9-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-9-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_033412_747403_2A6624CA 
X-CRM114-Status: GOOD (  38.25  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 11:18, Ahmad Fatoum wrote: > The load options
   of an EFI application booted via bootm can so far only be > influenced for
    EFI-stubbed Linux kernels and only via the Linux bootargs. > There [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-59.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[m.felsch@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B8957201B6D
X-Stat-Signature: ysxes8jmi8j89xhymr6toq373f5p8bzp

On 26-10-15 11:18, Ahmad Fatoum wrote:
> The load options of an EFI application booted via bootm can so far only be
> influenced for EFI-stubbed Linux kernels and only via the Linux bootargs.
> There is no way to pass options to a generic EFI application like a shell
> or a boot loader, and no way to pass EFI-stub-specific options like initrd=
> or efi= to a kernel separately from what goes into the Linux bootargs.
> 
> Add a global.efi.bootargs.* family of variables that works like
> global.linux.bootargs.*: all variables with that prefix are concatenated in
> lexicographical order and become the load options of any EFI application
> booted via bootm. For EFI-stubbed Linux kernels, the Linux bootargs are
> appended, so the kernel command line becomes
> "$global.efi.bootargs $global.linux.bootargs".

Do we need to document this behavior?

> The helper lives outside efi/payload and efi/loader, as the variable is
> meant to be used identically when barebox runs as EFI payload and when it
> runs as EFI loader. Executing an application directly from the shell keeps
> passing only the shell arguments and the legacy x86 handover protocol is
> unaffected, because it bypasses the EFI stub that would interpret the load
> options.
> 
> Assisted-by: Claude:fable-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  common/boot.c          |  1 +
>  efi/Makefile           |  2 +-
>  efi/bootargs.c         | 65 ++++++++++++++++++++++++++++++++++++++++++
>  efi/loader/bootm.c     | 27 ++++++++++++------
>  efi/payload/bootm.c    | 23 ++++++++++-----
>  include/efi/bootargs.h |  9 ++++++
>  test/py/test_shell.py  | 26 +++++++++++++++++
>  7 files changed, 136 insertions(+), 17 deletions(-)
>  create mode 100644 efi/bootargs.c
>  create mode 100644 include/efi/bootargs.h
> 
> diff --git a/common/boot.c b/common/boot.c
> index 39c7c79b2cce..f0c6976b1921 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -210,6 +210,7 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
>  		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
>  
>  	globalvar_set_match("linux.bootargs.dyn.", "");
> +	globalvar_set_match("efi.bootargs.dyn.", "");
>  
>  	return ret;
>  }
> diff --git a/efi/Makefile b/efi/Makefile
> index 7693085c7141..f330c1416dbf 100644
> --- a/efi/Makefile
> +++ b/efi/Makefile
> @@ -6,4 +6,4 @@ obj-$(CONFIG_EFI_RUNTIME)	+= runtime/
>  obj-$(CONFIG_EFI_GUID)		+= guid.o
>  obj-$(CONFIG_EFI_DEVICEPATH)	+= devicepath.o
>  obj-$(CONFIG_EFI)		+= errno.o handle.o efivar.o efivar-filename.o
> -obj-$(CONFIG_EFI)		+= initrd.o
> +obj-$(CONFIG_EFI)		+= initrd.o bootargs.o
> diff --git a/efi/bootargs.c b/efi/bootargs.c
> new file mode 100644
> index 000000000000..4a238388ef3f
> --- /dev/null
> +++ b/efi/bootargs.c
> @@ -0,0 +1,65 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * bootargs.c - load options for EFI applications started via bootm
> + *
> + * Copyright (C) 2026 Ahmad Fatoum <a.fatoum@pengutronix.de>
> + */
> +#include <common.h>
> +#include <init.h>
> +#include <malloc.h>
> +#include <magicvar.h>
> +#include <globalvar.h>
> +#include <bootargs.h>
> +#include <efi/bootargs.h>
> +
> +/**
> + * efi_bootargs_get() - compute load options for an EFI application
> + * @linux_image: whether the image is an EFI-stubbed Linux kernel
> + *
> + * All variables beginning with "global.efi.bootargs." are concatenated in
> + * lexicographical order. For Linux kernels, the Linux bootargs are appended,
> + * so the EFI stub sees them as the kernel command line.
> + *
> + * Return: newly allocated string to be freed by the caller or NULL
> + */
> +char *efi_bootargs_get(bool linux_image)
> +{
> +	const char *linux_args = NULL;
> +	char *efi_args, *options;
> +
> +	efi_args = globalvar_get_match("efi.bootargs.", " ");
> +	if (efi_args && !*efi_args) {
		^
	isempty()?

Nit: Would be even nicer to have globalvar_get_match_or_null();

> +		free(efi_args);
> +		efi_args = NULL;
> +	}
> +
> +	if (linux_image)
> +		linux_args = linux_bootargs_get();
> +	if (linux_args && !*linux_args)
		^
	isempty()?

> +		linux_args = NULL;
> +
> +	if (efi_args && linux_args)
> +		options = xasprintf("%s %s", efi_args, linux_args);
> +	else if (linux_args)
> +		options = xstrdup(linux_args);
> +	else
> +		options = efi_args;
> +
> +	if (options != efi_args)
> +		free(efi_args);

Albeit I'm a fan of clever code, the handling of the 'options' and
'efi_args' here is IMHO overcomplicated and it took me far to long to
review it.

Regards,
  Marco

> +
> +	return options;
> +}
> +
> +static int efi_bootargs_init(void)
> +{
> +	globalvar_add_simple("efi.bootargs.base", NULL);
> +
> +	return 0;
> +}
> +late_initcall(efi_bootargs_init);
> +
> +BAREBOX_MAGICVAR(global.efi.bootargs.*,
> +		 "Load options of EFI applications started via bootm. Linux bootargs are appended for EFI-stubbed kernels");
> +BAREBOX_MAGICVAR(global.efi.bootargs.dyn.*,
> +		 "Load options set by boot entries. Cleared after each boot entry");
> diff --git a/efi/loader/bootm.c b/efi/loader/bootm.c
> index a68db742e173..e3d654774831 100644
> --- a/efi/loader/bootm.c
> +++ b/efi/loader/bootm.c
> @@ -13,7 +13,6 @@
>  #include <init.h>
>  #include <driver.h>
>  #include <io.h>
> -#include <bootargs.h>
>  #include <malloc.h>
>  #include <string.h>
>  #include <linux/err.h>
> @@ -34,6 +33,7 @@
>  #include <efi/services.h>
>  #include <efi/error.h>
>  #include <efi/initrd.h>
> +#include <efi/bootargs.h>
>  #include <efi/devicepath.h>
>  
>  /**
> @@ -199,6 +199,7 @@ static int efi_loader_bootm(struct image_data *data)
>  	resource_size_t start, end;
>  	void *load_option = NULL;
>  	u32 load_option_size = 0;
> +	char *options;
>  	efi_handle_t handle;
>  	struct efi_device_path *file_path = NULL;
>  	struct efi_event *evt;
> @@ -215,19 +216,19 @@ static int efi_loader_bootm(struct image_data *data)
>  	if (IS_ERR(os_res))
>  		return PTR_ERR(os_res);
>  
> -	if (filetype_is_linux_efi_image(data->kernel_type)) {
> -		const char *options;
> -
> -		options = linux_bootargs_get();
> -		if (options) {
> -			load_option = xstrdup_char_to_wchar(options);
> -			load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
> -		}
> +	options = efi_bootargs_get(filetype_is_linux_efi_image(data->kernel_type));
> +	if (options) {
> +		load_option = xstrdup_char_to_wchar(options);
> +		load_option_size = (strlen(options) + 1) * sizeof(wchar_t);
>  	}
>  
>  	file_path = efi_dp_from_file(AT_FDCWD, data->os_file);
>  
>  	pr_info("Loading %pD\n", file_path);
> +	if (data->verbose && options)
> +		pr_info("Load options: %s\n", options);
> +
> +	free(options);
>  
>  	/* Initialize EFI drivers */
>  	efiret = efi_init_obj_list();
> @@ -321,6 +322,14 @@ static int efi_loader_bootm(struct image_data *data)
>  	/* Control is returned to us, disable EFI watchdog */
>  	efi_set_watchdog(0);
>  
> +	/*
> +	 * A still loaded driver would keep referencing the load options.
> +	 * efi_set_load_options() tolerates the already deleted handle of an
> +	 * application.
> +	 */
> +	efi_set_load_options(handle, 0, NULL);
> +	free(load_option);
> +
>  	return -efi_errno(efiret);
>  
>  out:
> diff --git a/efi/payload/bootm.c b/efi/payload/bootm.c
> index fe2d27b7ff10..491bafb66898 100644
> --- a/efi/payload/bootm.c
> +++ b/efi/payload/bootm.c
> @@ -22,7 +22,6 @@
>  #include <string.h>
>  #include <linux/err.h>
>  #include <boot.h>
> -#include <bootargs.h>
>  #include <bootm.h>
>  #include <fs.h>
>  #include <libfile.h>
> @@ -32,6 +31,7 @@
>  #include <efi/payload/driver.h>
>  #include <efi/error.h>
>  #include <efi/initrd.h>
> +#include <efi/bootargs.h>
>  
>  #include "image.h"
>  
> @@ -167,6 +167,7 @@ static int do_bootm_efi_stub(struct image_data *data)
>  	bool image_freed = false;
>  	efi_handle_t handle = NULL; /* silence compiler warning */
>  	enum filetype type;
> +	char *options;
>  	int ret;
>  
>  	ret = efi_load_os(data, &loaded_image, &handle);
> @@ -186,9 +187,11 @@ static int do_bootm_efi_stub(struct image_data *data)
>  	if (data->dryrun)
>  		goto unload_ramdisk;
>  
> -	ret = efi_execute_image(handle, loaded_image, true, type,
> -				filetype_is_linux_efi_image(type) ?
> -				linux_bootargs_get() : NULL);
> +	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
> +
> +	ret = efi_execute_image(handle, loaded_image, true, type, options);
> +
> +	free(options);
>  
>  	/* efi_execute_image takes care to unload the image on error,
>  	 * so we set image_freed and fall through to freeing ramdisk
> @@ -215,6 +218,7 @@ static int efi_app_execute(struct image_data *data)
>  	struct efi_loaded_image *loaded_image;
>  	efi_handle_t handle;
>  	enum filetype type;
> +	char *options;
>  	int ret;
>  
>  	ret = efi_load_image(data->os_file, &loaded_image, &handle);
> @@ -223,14 +227,19 @@ static int efi_app_execute(struct image_data *data)
>  
>  	type = file_detect_type(loaded_image->image_base, PAGE_SIZE);
>  
> +	options = efi_bootargs_get(filetype_is_linux_efi_image(type));
> +
>  	if (data->dryrun) {
>  		BS->unload_image(handle);
> +		free(options);
>  		return 0;
>  	}
>  
> -	return efi_execute_image(handle, loaded_image, true, type,
> -				 filetype_is_linux_efi_image(type) ?
> -				 linux_bootargs_get() : NULL);
> +	ret = efi_execute_image(handle, loaded_image, true, type, options);
> +
> +	free(options);
> +
> +	return ret;
>  }
>  
>  static int linux_efi_handover = true;
> diff --git a/include/efi/bootargs.h b/include/efi/bootargs.h
> new file mode 100644
> index 000000000000..dfd17261ff9d
> --- /dev/null
> +++ b/include/efi/bootargs.h
> @@ -0,0 +1,9 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __EFI_BOOTARGS_H
> +#define __EFI_BOOTARGS_H
> +
> +#include <linux/types.h>
> +
> +char *efi_bootargs_get(bool linux_image);
> +
> +#endif /* __EFI_BOOTARGS_H */
> diff --git a/test/py/test_shell.py b/test/py/test_shell.py
> index be746ca205ba..7a3330b16466 100644
> --- a/test/py/test_shell.py
> +++ b/test/py/test_shell.py
> @@ -153,3 +153,29 @@ def test_barebox_test_var_exists(barebox, barebox_config):
>  
>      # Clean up
>      barebox.run_check('rm /tmp/testvars')
> +
> +
> +def test_boot_bootargs_dyn_cleared(barebox, barebox_config):
> +    skip_disabled(barebox_config, "CONFIG_CMD_BOOT", "CONFIG_CMD_GLOBAL",
> +                  "CONFIG_CMD_ECHO")
> +
> +    barebox.run_check("echo -o /env/boot/dyntest '#!/bin/sh'")
> +    barebox.run_check("echo -a /env/boot/dyntest "
> +                      "'global linux.bootargs.dyn.test=linux-dyn'")
> +    barebox.run_check("echo -a /env/boot/dyntest "
> +                      "'global efi.bootargs.dyn.test=efi-dyn'")
> +    barebox.run_check("echo -a /env/boot/dyntest "
> +                      "'global efi.bootargs.nodyntest=efi-static'")
> +
> +    # Run the script, but don't actually boot anything
> +    barebox.run("boot -d -d dyntest")
> +
> +    # .dyn. variables must not leak into subsequent boot entries
> +    assert barebox.run_check("echo ${global.linux.bootargs.dyn.test}") == [""]
> +    assert barebox.run_check("echo ${global.efi.bootargs.dyn.test}") == [""]
> +    # ... but other variables are left alone
> +    assert barebox.run_check("echo ${global.efi.bootargs.nodyntest}") == \
> +        ["efi-static"]
> +
> +    barebox.run_check("global -r efi.bootargs.nodyntest")
> +    barebox.run_check("rm /env/boot/dyntest")
> -- 
> 2.47.3
> 
> 


