Delivery-date: Thu, 15 Oct 2026 13:10:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHJLh-00DtaB-0x
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 13:10:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E9F6A2027CF
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 13:10:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MwSX+RSt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K1sgqJhG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792062612; a=rsa-sha256;
	cv=pass;
	b=Si68eLXnaIxg4CTXkt/3j0uvXy8TZxTJPHLVq9OxS/nILXWCsMA/LgkgOC8o+VLwaUtv7G
	WHciB8D8VJWCMZpvr7QkvrqkuT/1YJX1KBRDMJ10CU4Oer9jDVX+UXPSsNnzMa1AWOScCh
	4GYd1QtxyqmFIUxG6k43C45oFwMAP2+rF1KsW7xuL1NBHB2bE4GVUotzqBlfoFMgGdWsRf
	m6WxWn8SO6U0aK9yaQGjADaR+a/Dwk7U0OldFPTvOHLmCs+ehM6uylytzSbmZO9pGDf1UM
	fCokrSk6miGb7bt2QQb5hxzTJyXIs6JCiKgDa482wKTxOV9MGzSm87CbOz8twA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=MwSX+RSt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K1sgqJhG;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062612;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=8L+rrrYUJ1+MKEsIcDuwM4GjEHLmnV1x2R6j1x1BRfc=;
	b=JmrCYTBzWv5E2ge35dgQCV6utdmTz23yVnkF+8Yayy5wdj3DhxiDD+r3Ix1jeEZ7HMU89/
	tTTypmrYlVeSA+hJVFtC4a5DDA4Q+f8zWRqEs84UXrPCWZ5NX7BqJor8ssfV7DO5vbBlOi
	gu/Y2Ki91znq4xi8UWlXDSFa4u4iLEZXQsSf7OXi8w7AACFwnj0uIAgWGQHOe11aeEMFFz
	UCJz1IUA5JtlkHCLdCsPBodCFqziwBkKqMN7pgujdF1dTjB/HSXiUN0mToEmXlPAPF5WDt
	t0oSVXa/t/14gGrreuGqDs4a1k7TFKP+p/dPHtABiE0GVGSiUZ3HpVhFYbicsw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8L+rrrYUJ1+MKEsIcDuwM4GjEHLmnV1x2R6j1x1BRfc=; b=MwSX+RStB9Yo95l9gbKPJKvX6b
	XID65RnGCARIUcmf/rteEZJo64hx9SDoXMbSe+8I4mpntEsojilSdqbGj9/IXt8P7f7q6wKWfh0og
	V6VjPwg+Qr149qBhi2VTvJEV8P+Zo8G5RAuT9ncBCsQlBcgE6Xd/+jWfGOVoiLYI2GhbM6rBdz/2e
	Tw9DuSfcVe6beEXD7RXdR3nYPIIasw+fHe/A1utIpa7CQE5cjrju0URpf/69Az1HwFJtSOERS7QNB
	tBUKHHklMoprHJmmB3hmudv5Lc5r566mG7Rs0NTSoc54ymfa+zluzg0+wDTPUPYKFtsfyvCSw54u1
	bNaQsg1A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJKP-0000000HX8c-0324;
	Thu, 15 Oct 2026 11:08:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHJKI-0000000HX77-0kev
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 11:08:51 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.4.pengutronix.de [10.9.0.3])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 181DD2000D8;
	Thu, 15 Oct 2026 13:08:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8L+rrrYUJ1+MKEsIcDuwM4GjEHLmnV1x2R6j1x1BRfc=;
	b=K1sgqJhGKfDTj95r0xVpAbZOEwvkvwJOTJwjIp8IVuTWXjqE+G8ojXe4++HDuxkEpYct36
	ISzmPBwQnJ6NIi++9m5bVJJj1TA75Wa106P+OhifDm/e6aTqcHuO5ooLLeBj8cKo2BDHLK
	L9Oi7nZpdMzDAa9+NhjWm1aKADXbHUdg6iZ8Z9JL0crR+yIiv11eX1TU+2OTgkhTUXpZhJ
	iekrQeX4Go4WGERe1Tp1Os9SvnH125IbnO05cxI0Oxxb/VWHLCqnt5lIlY0cQG9HtrvAYC
	0IZUxz68g2bDOn3GwIBvI2Myt5d8GaeJh5u/uHwYaauF6G+ro+Ruk+o4BlVF8w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792062524; a=rsa-sha256;
	cv=none;
	b=VBVK+RiyFHbYs2XyZN6/XdUga1QAXE3SR0t2qf4TmDDzFw/s6YFcaoX8OKzUVlkufGwcPc
	Lvd1TAMqI9MdfkzCiYbriuqwHtcncdB33MgFtkCknxyeYyIwkrLlDDNPheXciUs7KgwUjw
	b1gdr0fReMcRup+9FMK/nFTCnbx7fT0Q6H1MfcoIWK3J+PW6J77FzWA+gVK7u/QH62XahT
	M+L8QLEPXSPQXFRAaGiDB3xGDhuliJUwCxsBCTBnlIvbWjfphOxdc1bJ46GOYSSCM6ed40
	HPWlybVGaLOKNpWi1C4NkgDLZJefg6idH2knejWVBZJxzzpqRMzIahTqt/PTLQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792062524;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=8L+rrrYUJ1+MKEsIcDuwM4GjEHLmnV1x2R6j1x1BRfc=;
	b=Wa5O7PqnP9QDuIBsDgCbQziEMk83Mb5/ku1qCrxRKqjJ0BokOVjEsQrAjnnmAAX3hHAayB
	zz6dTGBJjQQ6nD2V8WjCjCT68bzpYNH/dy72uBv5H8awc/XliAFnw3KanHgRDmladbIQJj
	twRanjd4oHmjpHHm5FxuqE/1OH2e+hcnOLCNqshmt3tFt7UQzoEld6tdaDiMwhlV7g8rkA
	Al9DWtBG4kCdu+N/CgQhGuTKxZ1mFtqBRL7auvLjp7Wq9oxcs62El/hezuSNk4ONESnmmK
	zxhhwlarFslWprv069+4tZiV14B7nqYp9C5rLkIaSxb8EWfUgUf7ttnwEsl0uw==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id EE68F1C0574; Thu, 15 Oct 2026 13:08:43 +0200 (CEST)
Date: Thu, 15 Oct 2026 13:08:43 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 09/10] Documentation: efi: describe load options
 handling
Message-ID: <tqorcgwnas5oc5nfyuswbns7cazd2jghiqcqrk2ra7esagx2ys@4kzonh3562zf>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-10-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-10-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_040848_653027_7F7AEE63 
X-CRM114-Status: GOOD (  34.31  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 11:18, Ahmad Fatoum wrote: > Document that arguments
    following an EFI application's path on the shell > command line become its
    load options, that bootm populates the load options > from g [...] 
 
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
X-Rspamd-Queue-Id: E9F6A2027CF
X-Stat-Signature: 3bcs771jghnewcmef83oj158ctg83yhb

On 26-10-15 11:18, Ahmad Fatoum wrote:
> Document that arguments following an EFI application's path on the shell
> command line become its load options, that bootm populates the load options
> from global.efi.bootargs.* and that the Linux bootargs follow for
> EFI-stubbed kernels, both for barebox as EFI payload and as EFI loader.
> 
> Assisted-by: Claude:fable-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
> ---
>  Documentation/boards/efi.rst         | 64 +++++++++++++++++++++++++++-
>  Documentation/user/booting-linux.rst |  6 ++-
>  2 files changed, 68 insertions(+), 2 deletions(-)
> 
> diff --git a/Documentation/boards/efi.rst b/Documentation/boards/efi.rst
> index 5f7dd60998dc..2dde52bc6665 100644
> --- a/Documentation/boards/efi.rst
> +++ b/Documentation/boards/efi.rst
> @@ -112,8 +112,70 @@ means passing control to the calling instance. Note that currently the :ref:`com
>  command will pass the control to the calling instance rather than resetting
>  the CPU. This may change in the future.
>  
> +Arguments following the path on the command line are passed to the
> +application as its load options, so an EFI shell can for example be
> +started with:
> +
> +.. code-block:: sh
> +
> +  barebox:/ /boot/shell.efi -nostartup
> +
>  Although the Linux Kernel can be directly executed one should use the :ref:`command_bootm`
> -command. Only the bootm command passes the Kernel commandline to the Kernel.
> +command. Only the bootm command passes the Kernel commandline to the Kernel
> +and provides it with an initrd and a device tree.
> +
> +.. _efi_load_options:
> +
> +Load options
> +^^^^^^^^^^^^
> +
> +When booting an EFI application via :ref:`command_bootm`, barebox populates
> +its load options from the :ref:`global device<global_device>` variables
> +beginning with ``global.efi.bootargs.``. Like the Linux bootargs, these are
> +concatenated in lexicographical order of their names. For EFI-stubbed Linux
> +kernels, the ``global.linux.bootargs.``-prefixed
> +:ref:`kernel arguments <booting_linux>` are appended to the load options,
> +so that the EFI stub sees both as the kernel command line:
> +
> +.. code-block:: sh
> +
> +  global efi.bootargs.base="efi=debug"
> +  global linux.bootargs.base="console=ttyS0,115200"
> +
> +  bootm /boot/vmlinuz.efi
> +
> +  ...
> +
> +  Kernel command line: efi=debug console=ttyS0,115200
> +
> +This works both when barebox runs as EFI payload and when it acts as
> +EFI loader for the application. The load options are not used when booting
> +x86 kernels via the legacy handover protocol (``global.linux.efi.handover``),
> +as the EFI stub, which would interpret them, is bypassed in that case.
> +
> +Like :ref:`boot entries <boot_entries>` do for the Linux
> +bootargs, boot entries should add load options to variables with ``.dyn``
> +in their name, e.g. ``global.efi.bootargs.dyn.initrd``. These are cleared
> +after each boot entry, so that load options do not leak into subsequently
> +booted entries.
> +
> +Unified kernel images (UKIs) are not detected as Linux kernels, but as
> +regular EFI applications. Only ``global.efi.bootargs.*`` is passed to them
> +as load options; the Linux bootargs, including the ``root=`` option added
> +by ``global.bootm.appendroot``, are not appended. systemd-stub uses
> +non-empty load options in place of the command line embedded in the UKI,
> +unless Secure Boot is enabled and the UKI has an embedded command line, in
> +which case the load options are ignored.
> +
> +To pass a ``root=`` option to a UKI, have :ref:`command_devlookup`
> +generate it for the root partition, the same way ``global.bootm.appendroot``
> +would, including the option name from ``global.bootm.root_param``:
> +
> +.. code-block:: sh
> +
> +  devlookup -v rootarg -k /dev/disk0.1
> +  global efi.bootargs.root="${rootarg}"
> +  bootm /boot/EFI/Linux/uki.efi

Just a comment on this: devlookup can't be compared to the appendroot
mechansim, due to the partition enumeration mismatch between barebox and
linux, e.g. mmc block device partitions start at 0, whereas linux starts
counting at 1.

On embedded devices booting from an MMC device the root=/dev/mmcblk*
mechanism should be used if the device supports dual boot e.g. from SD
and from eMMC.

Therefore I would have liked to see that the appendroot mechanism would
be supported for UKIs as well which would stop the requirement of having
different UKI profiles just to encode the different boot mediums.

However, as said this is just a comment and doesn't block this patch:

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>

>  Drivers
>  ^^^^^^^
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 8e6f3bbbe9ce..dc7ac6dc8716 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -103,6 +103,9 @@ to the bootargs. Variables without a value are skipped:
>  
>    Kernel command line: ignore_loglevel console=ttyO0,115200 earlyprintk
>  
> +When booting an EFI-stubbed kernel as EFI application, the
> +:ref:`EFI load options <efi_load_options>` precede the Linux bootargs.
> +
>  .. _bootargs_concat_order:
>  
>  Concatenation order
> @@ -170,7 +173,8 @@ This takes the kernel from ``/mnt/mmc1/zImage`` (which could be an
>  boot entries should always add Kernel command line parameters to variables with
>  ``.dyn`` in it. These will be cleared before booting different boot entries.
>  This is done so that following boot entries do not leak command line
> -parameters from the previous boot entries.
> +parameters from the previous boot entries. The same applies to the
> +:ref:`EFI load options <efi_load_options>` in ``global.efi.bootargs.dyn.*``.
>  
>  This entry can be booted with ``boot mmc``. It can also be made the default by
>  setting the :ref:`global.boot.default <magicvar_global_boot_default>` variable
> -- 
> 2.47.3
> 
> 


