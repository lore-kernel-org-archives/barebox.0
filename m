Delivery-date: Thu, 15 Oct 2026 11:47:27 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHI3b-00DrpO-2k
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:47:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5447C201D35
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:47:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rGrkcBDt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=abFRazqU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792057647; a=rsa-sha256;
	cv=pass;
	b=CvjK3e6AC/k4WofgmO9y03JY+uo4aojJZXf9nV4SWK6Wad2VQtJnuR+hPreyJdmkC/Ic33
	HTp1jT+s5+lT+azG3nMeYmp9JpdWIhU/jtfDCHWBnbBJ04gsBwlG3aDRMi4mH2OsW127yt
	KsDrdRRq30R5HHnJVK+BUBScsjnmJYQOReMq6K05VbUUVH78Y4n3Wq/MXn1Eh7hkeJ0VyL
	QUoBqjummvGLkvsy1OXGdHwcemUjCYKlK9HI0ZuU2Whb/VEcmPY3dBMj7Wu2ZKOReKtk+F
	AYV3ekyRtB7hyFkfol0L3G2ysFY4IE3nTVUmAVKTOIDDCsSdkGX8CV7fTnRc2g==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=rGrkcBDt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=abFRazqU;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057647;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=oE2aUPBwjN5O8MsSpeH+fMzw1ixAzYwk9ErtnCb9Tbc=;
	b=SmD0DhjLqcF4kHY6Da78KgE4Atw+msapYq8OGxQmO4h5707Qa0w+4fLQrpesF2bfRexY3y
	o1vxHE8Pk0dXdH7wB1+sNbV4DA0wOE8PLC8xtuqdDG12S1hhWyS9XIENye6nkA7QLhpXbs
	eQe14JUHEm95hXVTkO3NvwYodtQRcClA/oulN69ye83IjEEX9mbS2ZJiZJpFRQssQ8Cnbv
	UEBHU99kTho2012MlXpNYMc5mgKkIVxysMXVJFfxoRPZJeSn/zy26Vi1lyDaIMlun18RWJ
	d6GwAjCie18zVJQe1uywWgQdzM/PHn2HyeEWQGSLy4iM/eDxfZD7Gyw2RjxcCg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oE2aUPBwjN5O8MsSpeH+fMzw1ixAzYwk9ErtnCb9Tbc=; b=rGrkcBDt+N1O9HWV2ib3GP8gtQ
	EgAKdu+/iFZTeN6A1dZCrqrkPGpjEZIX9HWco0uHbQicZ57XgHC6G8JiWkxNAgk6X8wdoUPK03pRi
	EAQHqilz3pYGnik9awDMQ2FIv6wy907QO8xXC2jEFNoJhZXodmX9bYtG/vnadfybTfmtqgfBh54I4
	52YFIsQ83nZUXrv6S3LYguF/ylJ77r0k1qNWhj5oaZNLrcRSbE7LBvOo/4ra0yKvnNXV24z+uInlz
	0q8wMuwkF6CzvRkDjMDqczEcEHyH8l7kNYrK7qRtEC2V6K6sxSveHNxm1osaeWmLtKWkHLW0ugj3a
	VVcQyDFA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI2W-0000000HJcL-2gzw;
	Thu, 15 Oct 2026 09:46:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI2S-0000000HJQf-0c2Y
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:46:19 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E061B201D35;
	Thu, 15 Oct 2026 11:46:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oE2aUPBwjN5O8MsSpeH+fMzw1ixAzYwk9ErtnCb9Tbc=;
	b=abFRazqUHnzk7I/3wYRM6WpmgSTuLlBQyOg46vj00NTW9qNOZ4h90ZVjOcDXDG2pJGzvVw
	TpaVXBpUkeXbIXuOQVwjzlQoJv1PVUCrEZQdMRet8Kti56AGBS9nW2ZYkY2QwI52QhvbDq
	21tuJ5EhmXahV+Qw4haxchxfiVkWTsJwRtvy/5I8plYdhZhVVzxOXWENQPfvaXb/ov1G2X
	5tR10g66g7lajG+wE2Ti4STnj68ktid6EVI5p+1aoSR/SHKeQNn5Gmsc4d2uXly8ncn+75
	UfQLhNUSkXVwaf+8YBsbRZyRT50SuhiagWndfsTKJYUYZKOZ6tsb8VtkxkpwFA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792057572; a=rsa-sha256;
	cv=none;
	b=B480ikMU3rU6V4fuRcTwkwwv7wJk9piQloSA2lpu4BarvB0tz/8oDssreEohTTv4ccz/eG
	YT5rNE9n2bCK88PZzcs17kRr+djrig3DPJPmk2jn8OIgrQ68u24PA/eX8H+uJZ3V0gfQ30
	fSke2kyc5QUKm6cvuE225+mRGghDO6oofQu5+MC7ya41tbxUWuHihYZ0H8GOJLO2hGpqxv
	4EPG66EzpNvZwXAHzu/zqCLmJXdBwtoxKpeCec4l1Rb/Tp/hb9M//+zkqagZNTpaGCcB/k
	MTmZZj/U5Cgct/AVauYs1MtHV1JY/XR5NCjDhBeJDAqISoYh2wulX23l9k/ZoQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057572;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=oE2aUPBwjN5O8MsSpeH+fMzw1ixAzYwk9ErtnCb9Tbc=;
	b=Wt0LYmuMa4y9GVPPbUhtW3O4zAa9C5lE/uz186f8e9yJelVAWEeQ4sY1pQlhK8agwFYnTe
	gZxMR6X6k1IAyAbnCy2fO43BgTIADwvEaji6I3xx3xllGVgnns4XSbrO74QUEi/cfEJNID
	K4O/nJ7RoCBPeEcgr4RDoYbN9yiF8r3H+xNJsenEs1SXGf4N8iR9UUpaBPX/V8WfU34TGG
	/cd0qRhlReCjXSaOE0yN6NeASaRNAJGJfN7x05NhVyzPvjhfMrnPiF9emoQO5UDf8lQV3t
	KNKxxVyHe5v50u3NtRHAZCajrR4U2rxmVBW1y20CLG3uC2x8WCmPWRNMW1sKqA==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id C2D851BFD5D; Thu, 15 Oct 2026 11:46:12 +0200 (CEST)
Date: Thu, 15 Oct 2026 11:46:12 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de, 
	Ahmad Fatoum <a.fatoum@barebox.org>
Subject: Re: [PATCH v2 01/10] commands: devlookup: honour
 global.bootm.root_param for -k
Message-ID: <er7tpu7joyb6vtfw2vleyvhzzws6yslwbkrsvqx36zpp5ybv3y@g23qmstyfzbb>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-2-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-2-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_024616_367978_F9105006 
X-CRM114-Status: GOOD (  17.93  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Ahmad, On 26-10-15 11:18, Ahmad Fatoum wrote: > From: Ahmad
    Fatoum <a.fatoum@barebox.org> > > devlookup -k prints the root= option that
    bootm would add for > global.bootm.root_dev, but it always calls it roo [...]
    
 
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
	RCPT_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: 5447C201D35
X-Stat-Signature: 1xdruk46odja3zpno6tnk4p64ficmf6p

Hi Ahmad,

On 26-10-15 11:18, Ahmad Fatoum wrote:
> From: Ahmad Fatoum <a.fatoum@barebox.org>
> 
> devlookup -k prints the root= option that bootm would add for
> global.bootm.root_dev, but it always calls it root=, even though
> global.bootm.root_param now allows bootm to use e.g. verity= instead, so
> only the initramfs and not the kernel picks up the root file system.
> 
> Let's use the same option name as bootm, so scripts can assemble the
> option bootm would append for images it doesn't append it to, like
> unified kernel images.
> 
> Assisted-by: Claude:opus-5.5
> Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
> ---
>  commands/devlookup.c | 5 +++--
>  common/block.c       | 5 +++--
>  include/block.h      | 6 ++++--
>  3 files changed, 10 insertions(+), 6 deletions(-)
> 
> diff --git a/commands/devlookup.c b/commands/devlookup.c
> index 8f3468735267..164c005236de 100644
> --- a/commands/devlookup.c
> +++ b/commands/devlookup.c
> @@ -85,7 +85,8 @@ static int do_devlookup(int argc, char *argv[])
>  	}
>  
>  	if (kernelopt)
> -		val = buf = cdev_get_linux_rootarg(cdev);
> +		val = buf = cdev_get_linux_rootarg(cdev,
> +			getenv_nonempty("global.bootm.root_param") ?: "root");
				^
Wouldn't it make more sense if cdev_get_linux_rootarg() returns the
correct <key>= so it's fixed for all possible cdev_get_linux_rootarg()
users?
In other words put this logic into cdev_get_linux_rootarg() and keep the
API.

Regards,
  Marco

>  	else if (paramname)
>  		val = dev_get_param(cdev->dev, paramname);
>  	else
> @@ -109,7 +110,7 @@ BAREBOX_CMD_HELP_TEXT("parameter with that name is looked up.")
>  BAREBOX_CMD_HELP_TEXT("")
>  BAREBOX_CMD_HELP_TEXT("Options:")
>  BAREBOX_CMD_HELP_OPT ("-v",  "write output to VARIABLE instead of printing it")
> -BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line")
> +BAREBOX_CMD_HELP_OPT ("-k",  "output kernel rootarg line (see global.bootm.root_param)")
>  BAREBOX_CMD_HELP_OPT ("-a",  "output resolution of cdev alias")
>  BAREBOX_CMD_HELP_END
>  
> diff --git a/common/block.c b/common/block.c
> index 5441c7ca1848..16075bb146ec 100644
> --- a/common/block.c
> +++ b/common/block.c
> @@ -665,7 +665,8 @@ int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
>  	return 0;
>  }
>  
> -char *cdev_get_linux_rootarg(const struct cdev *partcdev)
> +char *cdev_get_linux_rootarg(const struct cdev *partcdev,
> +			     const char *root_param)
>  {
>  	int err;
>  	const char *root = NULL;
> @@ -675,5 +676,5 @@ char *cdev_get_linux_rootarg(const struct cdev *partcdev)
>  	if (err)
>  		return NULL;
>  
> -	return format_root_bootarg("root", root, rootopts);
> +	return format_root_bootarg(root_param, root, rootopts);
>  }
> diff --git a/include/block.h b/include/block.h
> index 065ae81358b4..91ab91f9109b 100644
> --- a/include/block.h
> +++ b/include/block.h
> @@ -109,7 +109,8 @@ static inline int block_flush(struct block_device *blk)
>  
>  #ifdef CONFIG_BLOCK
>  unsigned file_list_add_blockdevs(struct file_list *files);
> -char *cdev_get_linux_rootarg(const struct cdev *partcdev);
> +char *cdev_get_linux_rootarg(const struct cdev *partcdev,
> +			     const char *root_param);
>  int cdev_get_linux_root_and_opts(const struct cdev *partcdev, const char **root,
>  				 const char **rootopts);
>  #else
> @@ -117,7 +118,8 @@ static inline unsigned file_list_add_blockdevs(struct file_list *files)
>  {
>  	return 0;
>  }
> -static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev)
> +static inline char *cdev_get_linux_rootarg(const struct cdev *partcdev,
> +					   const char *root_param)
>  {
>  	return NULL;
>  }
> -- 
> 2.47.3
> 
> 


