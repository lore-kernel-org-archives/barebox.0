Delivery-date: Thu, 12 Nov 2026 09:01:18 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRPkE-009xZT-0k
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:01:18 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1236F201C9E
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:01:18 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yIObgHnx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=N5Oj3wGz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794470478;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xK+NK1R9Ns+AgnW7K6+YXjTYetxdV8wOGVk8vh31DbI=;
	b=e38pimTnFqYCVNg5lnL7RaU/i/D3POg6qQHuZK10XUM+xJl3cy6tkxZ+Y87NL5YcxAM/Vi
	WtW3wLoPeICRcMMNlWGbf1juClpa+D2OSpjp0aO33G4Xxdqi3m6lvqTuTUed05TFhzf6yG
	wlqQ7QuZtB7jG68bIp15o127ANYUKukYea1itAe7etXO47zZ5vNngxD9kGlR7N3Mse4Esb
	01xfzbOmD/dXdX96f9/JTq834c2Aj0cWxMf8VLQUoKsrWoepvRlAJ6/pFOL+PgyET50zSm
	pOn1iG7QGUSTBOH875NXc+DzLmM+B9zc5C6Tiu4dUHj+3TCC5RE0e8u7mQy0pg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794470478; a=rsa-sha256;
	cv=pass;
	b=GD3YYCPWdfsgNusy2H6bBr3deFbJGs1ZkeiLE9h1L8b19+ZfnBDdA8Dqmv/PGWjldzz3hW
	iq6vTYmAeeoSkki9h9LiSAZnrbiDKmDpUUXLXknxPYrteOwvNZoDnTcOnCNWRE4j3GpD5Q
	mEgncRbIfX4NeZs60SsY16Ez79J+eelhhjXqJdqHh6zTVcfB9S8AL7uvjGb5kR3I8tlVaJ
	xEZhoUGKDZZx1BgExKyPp4o3jNHENEeuAj0D/WmPqvGWovZSCMK2PxrlZi1BKOUZ5gozAY
	J7mTmOa8LkydhOC09/KZQiHmZU5bToV1hWOo6at7scfxkfRrMW8lsFGVJlq7MQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=yIObgHnx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=N5Oj3wGz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=xK+NK1R9Ns+AgnW7K6+YXjTYetxdV8wOGVk8vh31DbI=; b=yIObgHnxpHDOmT
	vLaO34fsf/N6Wnxov3OSCRO6pJBxsytAi6wsXQcWhle1t9yM/wR3teti6mWwooCUHhrQF6xE5dbbs
	MiRvHxMRsxZFUNNsRoUlGPk1ySjfzMKHigFH96YiS9ObqVhPPG49mXPMD8by11utAd5YnZE8gGnb4
	F0JLSDn4PrWq1Po2nYBvkYLe8C5ARTOQ7NKh8no24yZWT5vyL+dI5p8soVJs6yepvBSmxu6spGRux
	ZRjsVhPl4m2fxLxu4JOxBfZOIGnWtnAbKsz1ujeu7MRqTUrh+qYh9w+gC5QE1r3RNIvXQmWVZtRbV
	PGm9w2gyNwOtjIMUDyjw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPiT-000000090AC-18Dl;
	Thu, 12 Nov 2026 07:59:29 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPiP-0000000909P-38EQ
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 07:59:27 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B781E200563;
	Thu, 12 Nov 2026 08:59:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794470363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xK+NK1R9Ns+AgnW7K6+YXjTYetxdV8wOGVk8vh31DbI=;
	b=N5Oj3wGzAHdOltOR2J4XmN6NkCfMz6V5rJ324TWUXA+zll//9jWsDzyuRISdq5GDgXDfhn
	FQsyMQyOASfrQcwgmJfnaLMbSKkGnTZG8o8MN6yEiaoG/7yEaOms80WKUB6+VpiHfNOdLg
	89JnT38Egc/WXO3cHtoe4bKNfyhpOjYf1SqdF22am6Bpp8aZZI3grUSBmspUKQuUMYt7l0
	7mDquAV1t+FARwg6Me5OFkYUwQMqkvodw/dKbszcl5pexdKCbCBidkhlEIYb4gGT9lTpEA
	cWgpN+5NjK5zvRckQUzRSZPy7FekVD6xmZd35kj3ofSYVxZ7ubPstEUscvUr3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794470363;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xK+NK1R9Ns+AgnW7K6+YXjTYetxdV8wOGVk8vh31DbI=;
	b=KutFbLSNquzGGn+6xtKteR6B2wIXKNxojL5RIPDXpvjncZ6z3DxbBOASOr1qyX+DC31kfd
	+T8GFhFBkRQ0HMbf6Z7fSPeGpxkhjU+pXGiJWbeCUDhhFB81FCzbwgcARuGpdkQWD117Tj
	zvNh+gGKvutyWLIDKVr03y2780UT8FWri+HDGqvBqqzT07U30Hw7C116UH7tAI5DNSxaGR
	MiaW5mB6ETG1mdB4apyAjgjkblg49E383iuB+/1GHWQ+Eer+BhH9UjcLLv+umah2RqJMQV
	hhtY97nDT/00BGAsn2QYSB3/mTXnLb9CJ2kHnnRJV/b9TE+vO2LKACwStBWNMQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794470363; a=rsa-sha256;
	cv=none;
	b=ccKs+Wn+4lRIl8gcJGpFh6ixOxV+SwtHGsJmEeLy1Gcz9+sNGVVFmZB0jM7RpwUSIVsqK6
	s00LO9ZyPiBpnC4zXxZkI1CiHTMqpCKYkNgxrOTjv9bHqHWmqIqiN1Sm3jfATuOayk6iE0
	uYueg2db2XBUjlLixdxZi5kfBRkjqsK65UnYofVJbQ0eo2PgeOeMjimq/TarfVSqmQFCF1
	euQpEZCADSEFJyc3bYVcbpQP+givEWSm1iMatoVjQoC7BriR74bGXtelVw3AwlVie/h1DD
	+tzVVP9EmJRU7ux6QmqaQTGDI+ti4X97wdbDMDrqHMsxZXz0hH176JyT0Nu+nQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <e158d2c2-62cf-46f2-a2f7-c935dba05900@pengutronix.de>
Date: Thu, 12 Nov 2026 08:59:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] of: add watchdog bootarg directly instead of via a
 globalvar
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-7-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-7-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261111_235925_965017_8E79EE21 
X-CRM114-Status: GOOD (  33.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > With CONFIG_SYSTEMD_OF_WATCHDOG,
    the device tree bootargs fixup puts > systemd.watchdog_device= into global.linux.bootargs.dyn.watchdog
    only to > read it back [...] 
 
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
X-Rspamd-Queue-Id: 1236F201C9E
X-Stat-Signature: hsj41n3weir88bpshf5bnok8rz8x3fam
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> With CONFIG_SYSTEMD_OF_WATCHDOG, the device tree bootargs fixup puts
> systemd.watchdog_device= into global.linux.bootargs.dyn.watchdog only to
> read it back right away via linux_bootargs_get(). This has side effects
> beyond the fixup:
> 
>  - The variable is created whenever the fixup runs, so also for of_dump
>    -F, oftree -s or of_diff after a boot attempt has enabled the
>    watchdog, and stays around afterwards.
>  - Its mere existence makes linux_bootargs_get() ignore the legacy
>    bootargs environment variable, which is only used when no
>    global.linux.bootargs.* variables exist.

That's outdated. on next, there is no fallback to bootargs any longer
when CONFIG_FLEXIBLE_BOOTARGS is enabled. For details, see
Documentation/migration-guides/migration-master/flexible-bootargs-legacy-fallback.rst

> 
> Return the option from watchdog_build_bootargs() and append it to the
> bootargs in of_write_bootargs() instead. Note this moves the option to
> the end of the command line, while it was previously sorted among the
> global.linux.bootargs.* variables.
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

With commit message adjusted:

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  Documentation/user/booting-linux.rst |  2 ++
>  common/Kconfig                       |  6 +++---
>  common/oftree.c                      | 41 ++++++++++++++++++++----------------
>  3 files changed, 28 insertions(+), 21 deletions(-)
> 
> diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
> index 0fbdc52c68..158aa8b313 100644
> --- a/Documentation/user/booting-linux.rst
> +++ b/Documentation/user/booting-linux.rst
> @@ -124,6 +124,8 @@ interleaved with externally provided command-line arguments:
>    * ``systemd.machine_id=`` controlled by :ref:`global.bootm.provide_machine_id <magicvar_global_bootm_provide_machine_id>`
>    * ``systemd.hostname=`` controlled by :ref:`global.bootm.provide_hostname <magicvar_global_bootm_provide_hostname>`
>    * ``barebox.security.policy=`` controlled by :ref:`global.bootm.provide_policy <magicvar_global_bootm_provide_policy>`
> +  * ``systemd.watchdog_device=`` controlled by ``CONFIG_SYSTEMD_OF_WATCHDOG``,
> +    only when booting with a device tree
>  
>  Creating root= options for the Kernel
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> diff --git a/common/Kconfig b/common/Kconfig
> index 9adecfd2e4..da4cc8a5c9 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -1443,9 +1443,9 @@ config SYSTEMD_OF_WATCHDOG
>  	bool "inform devicetree-enabled kernel of used watchdog"
>  	depends on WATCHDOG && OFTREE && FLEXIBLE_BOOTARGS
>  	help
> -	  Sets the linux.bootargs.dyn.watchdog global variable with a value of
> -	  systemd.watchdog_device=/dev/WDOG if barebox succeeded in enabling
> -	  the watchdog WDOG prior to boot. WDOG is the alias of the watchdog
> +	  Appends systemd.watchdog_device=/dev/WDOG to the Kernel command line
> +	  in the device tree if barebox succeeded in enabling the watchdog
> +	  WDOG prior to boot. WDOG is the alias of the watchdog
>  	  in the kernel device tree. If the kernel is booted without a device
>  	  tree or with one that lacks aliases, nothing is added.
>  
> diff --git a/common/oftree.c b/common/oftree.c
> index 7aaed70e40..5f9b2e50cb 100644
> --- a/common/oftree.c
> +++ b/common/oftree.c
> @@ -160,22 +160,18 @@ static int of_fixup_bootargs_reset_source(struct device_node *root,
>  	return of_property_write_string(chosen, "reset-source-device", np->full_name);
>  }
>  
> -static void watchdog_build_bootargs(struct watchdog *watchdog, struct device_node *root)
> +static char *watchdog_build_bootargs(struct watchdog *watchdog, struct device_node *root)
>  {
>  	int alias_id;
> -	char *buf;
>  
>  	if (!watchdog)
> -		return;
> +		return NULL;
>  
>  	alias_id = watchdog_get_alias_id_from(watchdog, root);
>  	if (alias_id < 0)
> -		return;
> -
> -	buf = xasprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
> +		return NULL;
>  
> -	globalvar_add_simple("linux.bootargs.dyn.watchdog", buf);
> -	free(buf);
> +	return xasprintf("systemd.watchdog_device=/dev/watchdog%d", alias_id);
>  }
>  
>  static int bootargs_append = 0;
> @@ -183,31 +179,40 @@ BAREBOX_MAGICVAR(global.linux.bootargs_append, "append to original oftree bootar
>  
>  static int of_write_bootargs(struct device_node *node)
>  {
> -	const char *str;
> +	const char *str, *oldstr;
> +	char *watchdog = NULL;
>  	char *buf = NULL;
>  	int ret;
>  
>  	if (IS_ENABLED(CONFIG_SYSTEMD_OF_WATCHDOG))
> -		watchdog_build_bootargs(boot_get_enabled_watchdog(), of_get_parent(node));
> +		watchdog = watchdog_build_bootargs(boot_get_enabled_watchdog(),
> +						   of_get_parent(node));
>  
> -	str = linux_bootargs_get();
> -	if (!str)
> -		return 0;
> +	str = skip_spaces(linux_bootargs_get() ?: "");
> +
> +	if (watchdog) {
> +		if (*str)
> +			str = buf = xasprintf("%s %s", str, watchdog);
> +		else
> +			str = watchdog;
> +	}
>  
> -	str = skip_spaces(str);
>  	if (strlen(str) == 0)
>  		return 0;
>  
>  	if (bootargs_append) {
> -		const char *oldstr;
> -
>  		ret = of_property_read_string(node, "bootargs", &oldstr);
> -		if (!ret)
> -			str = buf = xasprintf("%s %s", oldstr, str);
> +		if (!ret) {
> +			char *tmp = xasprintf("%s %s", oldstr, str);
> +
> +			free(buf);
> +			str = buf = tmp;
> +		}
>  	}
>  
>  	ret = of_property_write_string(node, "bootargs", str);
>  	free(buf);
> +	free(watchdog);
>  	return ret;
>  }
>  
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


