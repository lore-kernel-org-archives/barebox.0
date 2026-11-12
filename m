Delivery-date: Thu, 12 Nov 2026 09:20:57 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRQ3E-009y6B-1m
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:20:56 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 67C9F2016F4
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:20:56 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OFy5nfEd;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BPzE8U+W;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794471656;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PSVu3KUtS5tlfI1BIG4WHkRD3cHhjNHyozZDJQFoS2M=;
	b=CG6uusaNBSfe85hWRXNWO/bRn2oA6j7PgKlaODc9Xzu+BW3TVirPPdwlmkMdZ2xLd7iY2F
	aVUps5ZctXxpCqAHx0p/TkMfU5JUeiT79BatvueU0frJja1M3kSeNpI3LEPv/s1MgKRXc4
	geMEbq5fGKGG3MHaoRyUpt2NkugeLnXCadUp78haP8ZK8y3l3FEte/7nWIPRxFidZfVXgc
	LYK0WfwzwCh11bCLPEh9oLk3KQ4J9zIWnIAGczP1YwFiFM7FF8oVNoBbeEkldN+JdKVj/g
	ReNvh0RGlKCXscdFdaLBWE77enpgze550JRLDmoHc1dodDk1EVgA9tWgHamJXg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794471656; a=rsa-sha256;
	cv=pass;
	b=DibL7I7OS5BIPSoXr1HQep0PWkMAz59bZZeE9ehpl2RLINdm9J+nnGd6T0ENC7M3dZfxrg
	BUD4KCo8WMy6v8ZS8l+OlZNQHRzrZjVMSfLuk5gxru05QCqbmmcqpW/qLp6lxr/dX7AaF+
	a81HI6LafefJ2k5CX8WJHP9UPwJZODrep5j4U0mdph4ofY/c9TJrvyzc6pjlXrKyr4Iqn0
	Z7xOVHuvxmuQr98grdxAjdgk9MsHLuPZWsX/d/Y1vG1TV0+OkfZ9D//AmVLVcf1y4ikW4P
	Re0wyumEVuXRQxt1G746b3hhZkHimE3xxkcpcJxKbfVTt1Kt8oH4h1KOGt09QA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=OFy5nfEd;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BPzE8U+W;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=PSVu3KUtS5tlfI1BIG4WHkRD3cHhjNHyozZDJQFoS2M=; b=OFy5nfEdxwYncb
	d6XV2zfuuQRs37nYAVn+1dh8VQZTcKLG97QIRGXI/kgeTqAN9twDUoPmuKViN46fQlqtHt95+rxcU
	rdGbf5wWuw0VqdNHXJ3GZeTS2FRZHC402gx+B77oAeZFJI+uywUUWngYxrQ+kgUq9RB8ZD5eMLn/n
	bY3HemNEA/3ISSiLQXQDPJFuT+SwxylpkVQvda2cNKheTxCiKoKA5IpokU0gtre2RJiOd4kVMcfYt
	ToKUQIwoFB9eipk9W65WsOEoOOYfwwD1M3Y4JvuO3GeHN7ZlAQeCTI2bmP4fmBH6hZf6j64ynrY5z
	fsM1DgImjDM418knijxQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ2A-000000093zS-1mKB;
	Thu, 12 Nov 2026 08:19:50 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQ25-000000093yq-3hwu
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:19:48 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A1F01200563;
	Thu, 12 Nov 2026 09:19:43 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794471584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PSVu3KUtS5tlfI1BIG4WHkRD3cHhjNHyozZDJQFoS2M=;
	b=BPzE8U+WJMzxxwnVehy972pFcZW8UZlLg85zCdKmzdD3sEFCO2syCtOeiREJ1lrEPdRUpE
	jzpdbBNFhjbMTLzDxMUzeURmNWOISC8oYD8DIhsLwjD6o3a7paUiNdU9v19jM9ViY86blL
	AUj9g1vSIyBNCGSfRYGOJGXz4n+bSx4KdFgC4kWtzHaajpUtGj+Mr2uin4itFlpATBAI/s
	t3r0U/UwnSNzDqItdASkkcZz1uIOPQXSLtn/CVnk6OVs1e/W9ah3mak0jENn0vlVE6Ez4p
	3CsjVRWgmsCHUv9BZWR0XbZkx2qZjsKCJ2hC5KHl6ObI9A+lM45d7bmqL/gXGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794471584;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PSVu3KUtS5tlfI1BIG4WHkRD3cHhjNHyozZDJQFoS2M=;
	b=MzqxGQeQsIuIdi+Su1JF2sT7YJasPFBG3oLdheHXFlna5yoP6/C/adxfkmWACKSmY3K/6U
	buaD5N6puThj8k0V3kybeQ3eYarNhRcos/bYli29ndoJPn0Nr8F/T2OUzSaQwZDHdrMvJT
	NevHqfQYntHjLOL2e1xlZmf6bi2Rwb575zPkhcxsNESR5xWZOQnzgTq2fpBFa+4tYrx/pY
	KUeiQbyONsX6Z3uc/4RrakVscd9j1uuLrxEUu6wUI3nDhrKGft3urQIPW31aEko6ihU7rG
	cBKGkGdVS1C89ZvhTn6cZ5mFhqBzGQM5zWiInBQDWB2d2qKQGdVfoNaqNUXRtg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794471584; a=rsa-sha256;
	cv=none;
	b=VKuiGmpuObxKrB46s5HV2Q6XknleRnZgK4lSXGkvOP/GVcYJekzbxXD1yWgEjcB91LVcKM
	Jjytq22C+z47I2usM0CeTjGGx+hLychwC51ZboW9UqvX3lp02HYZRFrKMGZyWrg+jB+thT
	rc+WpfA5JinH5zKsQax/KQ98Q/MYK1rzbs3ASbEnthjCaD7BOSd36LNHUvG48Y98uWNrh0
	fg9gCcgHVIsXfl2p0rqDwhOOgm/NdO50djFXACHA6929ovbzgvVp9xym4nnG9pbn6Yk19u
	wYKkLFfvXHvsPdeDawo5+CtQTjhfq1Rn2IXsgk5kGvitf7v0Pe1GKU9scWB4hw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <55e296a7-8d50-46db-ab5c-a719ee79166b@pengutronix.de>
Date: Thu, 12 Nov 2026 09:19:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/10] defaultenv: don't use global.linux.bootargs.dyn.*
 in boot entries
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-9-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-9-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_001946_082326_6E9AE558 
X-CRM114-Status: GOOD (  20.48  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > Boot entries no longer
    need to put their Kernel command line options > into global.linux.bootargs.dyn.*,
    as boot_entry() reverts all changes to > global.linux. [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 67C9F2016F4
X-Stat-Signature: tchuq4r38zwizcph5abj5zi69fqa66im
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> Boot entries no longer need to put their Kernel command line options
> into global.linux.bootargs.dyn.*, as boot_entry() reverts all changes to
> global.linux.bootargs.* when the boot entry returns. Use plain names in
> the net and dfu boot entries, the boot entry template and the matching
> example in the documentation.
> 
> Unlike the dyn.ip and dyn.root variables, which bootscript_boot()
> creates for compatibility with existing boot scripts, the new variables
> don't exist beforehand, so create them with the global command.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/booting-linux.rst            | 5 +++--
>  defaultenv/defaultenv-2-base/boot/net           | 5 +++--
>  defaultenv/defaultenv-2-base/data/boot-template | 2 +-
>  defaultenv/defaultenv-2-dfu/boot/dfu            | 4 ++--
>  4 files changed, 9 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 158aa8b313..85f7694fe8 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -442,9 +442,10 @@ If the preconfigured paths or names are not suitable, they can be adjusted in
>    fi
>  
>    nfsroot="/home/${global.user}/nfsroot/${global.hostname}"
> -  ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
> +  global linux.bootargs.ip
> +  ip_route_get -b ${global.net.server} global.linux.bootargs.ip
>  
> -  global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
> +  global linux.bootargs.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
>  
>  ``boot net`` will then retrieve the kernel (and also the device tree and
>  initramfs, if used) over TFTP and boot it.
> diff --git a/defaultenv/defaultenv-2-base/boot/net b/defaultenv/defaultenv-2-base/boot/net
> index 8408ceaf39..f025bb4098 100644
> --- a/defaultenv/defaultenv-2-base/boot/net
> +++ b/defaultenv/defaultenv-2-base/boot/net
> @@ -23,6 +23,7 @@ if [ -f "${initramfs}" ]; then
>  	global.bootm.initrd="$initramfs"
>  else
>  	nfsroot="${nfsserver}:/home/${global.user}/nfsroot/${global.hostname}"
> -	ip_route_get -b ${global.net.server} global.linux.bootargs.dyn.ip
> -	global.linux.bootargs.dyn.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
> +	global linux.bootargs.ip
> +	ip_route_get -b ${global.net.server} global.linux.bootargs.ip
> +	global linux.bootargs.root="root=/dev/nfs nfsroot=$nfsroot,v3,tcp"
>  fi
> diff --git a/defaultenv/defaultenv-2-base/data/boot-template b/defaultenv/defaultenv-2-base/data/boot-template
> index 689d98e1e9..b63eb86d1a 100644
> --- a/defaultenv/defaultenv-2-base/data/boot-template
> +++ b/defaultenv/defaultenv-2-base/data/boot-template
> @@ -6,4 +6,4 @@ global.bootm.image=<path to image>
>  
>  #bootargs-ip
>  
> -global.linux.bootargs.dyn.root="root=<rootfs here>"
> +global linux.bootargs.root="root=<rootfs here>"
> diff --git a/defaultenv/defaultenv-2-dfu/boot/dfu b/defaultenv/defaultenv-2-dfu/boot/dfu
> index 682091141e..56a88ae0a3 100644
> --- a/defaultenv/defaultenv-2-dfu/boot/dfu
> +++ b/defaultenv/defaultenv-2-dfu/boot/dfu
> @@ -23,8 +23,8 @@ if [ ! -f "$kernel" ]; then
>  fi
>  
>  if [ -f "$cmdline" ]; then
> -	global linux.bootargs.dyn.dfu
> -	readf $cmdline global.linux.bootargs.dyn.dfu
> +	global linux.bootargs.dfu
> +	readf $cmdline global.linux.bootargs.dfu
>  fi
>  
>  if [ -f "$dtb" ]; then
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


