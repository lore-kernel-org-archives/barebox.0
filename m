Delivery-date: Fri, 13 Nov 2026 13:49:16 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRqiS-00AQFR-1X
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 13:49:16 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3E4EC20039C
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 13:49:16 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Rq4a5XXH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=evMOnRvs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794574156;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=VAlOEVHC06hAD523AhLEI1Md+9rMLXc9hWyut6JwTVo=;
	b=gFKJ1TNxU4uV8zNiLM4LhFAFSG4ZAXf+obbrffUlH7RfDfQ8DNCO6md3wZ7BOryX0Q3gk0
	F/21ECjPG4chX9WVkffMvQoolih22mp+NImUtSdG7PuC15ZKxM+GbN8dRmhLNZeGKSJsO7
	wPGMTbjoboCJzEXDcFQmZo9B57q7IXiLTEnsnTYN80lq5lAs4JteQH8uKaFteHPtE4i2vX
	0pmeySHvGanPl1lOew6zHHb4qEeKh8h2Ae4LOe2UtoFuK+UkhgQ1g2HLLuTIqkS1qh0cbN
	o4BVvZERBtH7qHEY6TDejxy2Opi/eqUH197LxqFN2rVK7vlVecB5pVNDCTdZTA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794574156; a=rsa-sha256;
	cv=pass;
	b=gSTvW/4vcusHF13xm8thrFpEF9DCFeIwtnuzrQ+54PAnVrQa6sed7NQSeT50rNaBn/OpEV
	oRe3Om5fTXEGLD283DEEfj4K+SVvNWP5k7KfB7LgHwEwLw10qvizqpNEBb5twkp1yBNTib
	vqcbKorYGgNuNAy7UdFirQteTKuRUoftG58XO7WWXhkN+tC1/U0MkLIMIgcNRlxd28Z60N
	6zWpYyw/h1DOQMjEmvut579vMFSqf8A9rneqP0kbOI5wiy1t6ETAGw4kCmdLJf2hRVIJkw
	z1C4B/q20l4sSFizkf4iknIRaAmT+1cI3LxbUvuH90AIcJ1dpTcpO8wQOvIr8w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Rq4a5XXH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=evMOnRvs;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:References:To:Subject:From:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=VAlOEVHC06hAD523AhLEI1Md+9rMLXc9hWyut6JwTVo=; b=Rq4a5XXHj9V6n6
	njWBg+yIOeqZ57eK6QOSUCNc7XPD+W5jUAuK+VX9kc9PhmFzqOtGtsPU0PDM13FjhWn0Yopkt3H+7
	zM8rQw9lWR9yMcQeQ3LzLyKSSxD+GJBLJShh/eNWGYEcelf/3TZE2hgye4uMq4bO1YWoZr4Q7IRf0
	Cony0QV4mELmfqw8M5R4GnKsDIlD4KL65N6zzeD57GD3kuYLskGHFE6P72Qsc0k2gIQnNNiVKeun+
	yE0qV9JLj/l9chliSJAF1u2Hqd4uBqsCVJinTyRTNEk581v4t2um/VRti8y762I7cO2mcctzmwHIy
	sFm9y8iRSfVOIljVjoRw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRm4f-0000000BwvS-3pCq;
	Fri, 13 Nov 2026 07:51:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRm4c-0000000BwuQ-1c3C
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:51:53 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 821312020ED;
	Fri, 13 Nov 2026 08:51:46 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794556306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VAlOEVHC06hAD523AhLEI1Md+9rMLXc9hWyut6JwTVo=;
	b=evMOnRvsWAvTOhSYwy5szpqovzNxCPk8Jd642Rtc0qKhZgbXuZZ3D1wV0ZtEDbAgz5KiSe
	odOmFurOcbL0b/Bj6i9k/osbBcGuc9nthtIGSqnqXWfq2wCkFshS9706EffqsrzibR/bXz
	buKP92NRG0wQr0nlV65zwER+sD5GDybw/I0ZvVnTHxfbg5MDVZYgxBryHdtNXKfv6S4VTO
	iHb0BMEWYtPNDIgMwe7wFFmEa4OZ7Zi/U2ofLAJ/hJGUPqcMwA3fjGJrr+9QAd3Wz1AMfs
	hlkfA9zfyRoQCfceRZLYpT8YSqhEB9/knHfc3MD4kWhsf6P/SJtg2BoUNKf8NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794556306;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VAlOEVHC06hAD523AhLEI1Md+9rMLXc9hWyut6JwTVo=;
	b=NJghp3f5GS68jPd+qA82i/Ji04Nde/3jrL7I8t9L7spsKD7WCi6F9JVihDXYg3VlINTg57
	39dmn8L/9t7q+S7KJ91HKAEJq1tjgPgUbQg8tR5aZIBB2dFK2YT5Y2gH1b6g5L0OF9Vdem
	fJlRtwVoa4XP8wMZJ1ibatVfCWgXhs3GFwzAY8sMrWkov8tW4HwosxnIq7sCmx3boQ5iR7
	CRMx+VkfAXcpJQ/gL4pM+w7h6vrD/jAzu8FwyRq1S2Ifftb+oc78O1dIMLKaeOx3dvdu+h
	edzr4aOn+TKAuqbRsmiq/m9m8QJnS/neQ1+XebBXTQBuHM4Nwt7Pc60Xa/ARow==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794556306; a=rsa-sha256;
	cv=none;
	b=VcwfW++y2KhxASTLSYQhotkIECJ7q4ZnMzYUo92jgpD0AnPJQ5aqX/XK+KndwT1qy9ZYsG
	EpgRq146Rf+DSO2T08JnlR4dLTZTGPm3oC4/09krAXz96FVdBKyYKeqq2Sp8TPxGuNjZZx
	w3bYO4AHI1nTkN69zsav6g1fhrOEpAO55tdvKEONtREgEuYePbQQyOcC16oTXvH0OqQ/fr
	RDJ4kRU1L92Btp4cEsTZkREoKQNazZntW142ckGuPrN58DKQ8sSAX8rTNwit1Wk4jSW46f
	zOLsQgzd+SCfs1nOm7teNKPsEuRUL63ojFKsbQwz1UnW0TfsrVMTaBBIWUsXGw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <0296ef44-3043-49f2-b5c4-959cbd4d72f0@pengutronix.de>
Date: Fri, 13 Nov 2026 08:51:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: Re: [PATCH 4/5] boot: implement devboot in C
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
 <20261030-devboot-v1-4-ab9dd3a92c66@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20261030-devboot-v1-4-ab9dd3a92c66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_235150_757921_E4460318 
X-CRM114-Status: GOOD (  54.42  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi, On 10/30/26 3:13 PM, Sascha Hauer wrote: > devboot is
   a shell script that brings up the network, sources a per-user, > per-board
    script from global.net.fetchdir and translates the variables it > sets [...]
    
 
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
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
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
X-Rspamd-Queue-Id: 3E4EC20039C
X-Stat-Signature: zipzjw56tkh75p1s91zy4bsjob8px7og
X-Rspamd-Action: no action

Hi,

On 10/30/26 3:13 PM, Sascha Hauer wrote:
> devboot is a shell script that brings up the network, sources a per-user,
> per-board script from global.net.fetchdir and translates the variables it
> sets into boot -o options. Being a script on top of the boot command, it
> has a hard time integrating with it: The kernel command line fragments
> the devboot script sets have to be put into the linux.bootargs.devboot.
> namespace to be removed afterwards,

That's resolved by your scoped/stashed/banked globalvar series now,
isn't it?

> and the devboot boot target needed
> to boot with devboot by default takes only a single boot target and boot
> options.

So instead of:

boot -D mmc1 mmc2

one had to do

boot devboot@mmc1 devboot@mmc2

I don't consider that so bad.

> All devboot really is, is an option to the boot command. Implement it
> in C as such: boot -D, or global.boot.devboot=1 to enable it by default,
> does what the devboot script did before booting the boot targets. The
> script's changes to global.linux.bootargs.* and global.bootm.* are
> reverted after the boot command returns, as is the working directory.
> A boot command started while devboot is active doesn't source the script
> again, it inherits the overrides from the boot entry it is started from.
> Overrides given with -o still take precedence.
> 
> The devboot command remains as a shorthand for boot -D. The devboot boot
> target is removed, nv boot.devboot=1 replaces nv boot.default=devboot@...

If it simplies the code, I am fine with this.


> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  Documentation/user/devboot.rst            |  72 ++++++-----
>  commands/boot.c                           |  28 ++++-
>  common/Kconfig                            |  12 +-
>  common/Makefile                           |   1 +
>  common/boot.c                             |   8 +-
>  common/devboot.c                          | 197 ++++++++++++++++++++++++++++++
>  defaultenv/defaultenv-2-base/bin/devboot  |  52 +-------
>  defaultenv/defaultenv-2-base/boot/devboot |   8 --
>  include/devboot.h                         |  31 +++++
>  test/py/test_devboot.py                   | 131 ++++++++++++++++++++
>  10 files changed, 444 insertions(+), 96 deletions(-)
> 
> diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
> index e05541f05b..f513d1ecd6 100644
> --- a/Documentation/user/devboot.rst
> +++ b/Documentation/user/devboot.rst
> @@ -5,9 +5,9 @@ Devboot
>  
>  Devboot is a development convenience that builds on top of the
>  :ref:`boot override <boot_overrides>` mechanism. It sources a per-user,
> -per-board script from the network and translates it into ``boot -o``
> -arguments, making it easy to redirect any combination of kernel, device tree
> -and initrd to network-hosted files without touching the boot medium.
> +per-board script from the network and takes boot overrides from it,
> +making it easy to redirect any combination of kernel, device tree and
> +initrd to network-hosted files without touching the boot medium.
>  
>  .. _boot_overrides:
>  
> @@ -114,21 +114,28 @@ Override rules
>     When secure boot is enforced (``bootm_signed_images_are_forced()``),
>     overrides are silently ignored.
>  
> -The devboot script
> -------------------
> +Booting with devboot
> +--------------------
>  
> -The ``devboot`` command (``/env/bin/devboot``) automates the override
> -workflow for network-based development:
> +With ``CONFIG_BOOT_DEVBOOT`` enabled, devboot is enabled for a boot by
> +passing ``-D`` to the ``boot`` command or by setting
> +:ref:`global.boot.devboot <magicvar_global_boot_devboot>`. Before booting
> +the boot targets, the ``boot`` command then:
>  
> -1. Brings up the network (``ifup -a1``).
> +1. Brings up the network, like ``ifup -a1``.
>  2. Changes into the fetch directory
>     (:ref:`global.net.fetchdir <magicvar_global_net_fetchdir>`, default
>     ``/mnt/tftp``).
>  3. Sources a configuration script named
>     ``${global.user}-devboot-${global.hostname}``. If that file does not
>     exist, it falls back to ``${global.user}-devboot-${global.arch}``.
> -4. Translates the variables set by the script into ``boot -o`` arguments.
> -5. Passes any extra arguments through to the ``boot`` command.
> +   If neither exists or the script fails, the boot is aborted.
> +4. Takes the variables set by the script as boot overrides. Overrides
> +   given with ``-o`` take precedence.
> +
> +Once the boot command returns, it changes back to the previous
> +directory and reverts the changes the script made to
> +``global.linux.bootargs.*`` and ``global.bootm.*`` variables.
>  
>  .. note::
>  
> @@ -142,10 +149,14 @@ Usage
>  .. code-block:: sh
>  
>    # Boot from MMC with devboot overrides
> -  devboot mmc
> +  boot -D mmc
>  
>    # Boot from the default boot entry
> -  devboot
> +  boot -D
> +
> +``devboot`` is a shorthand for ``boot -D``, so ``devboot mmc`` does the
> +same as ``boot -D mmc``. Like ``-o``, devboot doesn't apply to the
> +boot menu (``-m``) and listing (``-l``).
>  
>  Configuration script
>  ^^^^^^^^^^^^^^^^^^^^
> @@ -181,26 +192,31 @@ kernel command line fragments:
>  
>  With this script in place and :ref:`global.user=afa <magicvar_global_user>`,
>  :ref:`global.hostname=rock3a <magicvar_global_hostname>`,
> -running ``devboot mmc`` on the board expands to::
> +running ``boot -D mmc`` on the board is equivalent to running::
>  
>    boot -o bootm.image="afa-fit-rock3a" \
>         -o bootm.oftree="" \
>         -o bootm.initrd=":afa-modules-arm64" \
>         mmc
>  
> +from within the fetch directory, with ``rsinit.bind_modules`` added to the
> +kernel command line.
> +
>  This fetches the FIT image ``afa-fit-rock3a`` from the fetch directory,
>  discards the FIT's device tree (falling back to the barebox-internal one
>  when ``CONFIG_BOOTM_OFTREE_FALLBACK`` is enabled), and appends the
>  ``afa-modules-arm64`` CPIO archive to whatever initrd the FIT already
>  contains.
>  
> -Kernel command line fragments set by the script should use the
> -``global.linux.bootargs.devboot.`` namespace. Unlike variables set
> -by the boot entries themselves, which are reverted whenever a boot entry
> -returns, it survives falling through to the next boot target, e.g. for
> -``devboot system0 system1``. The ``devboot`` command removes the
> -namespace after the boot command returns, so a subsequent plain
> -``boot`` is unaffected by it.
> +The script runs only once per ``boot`` command, even if multiple boot
> +targets are given, e.g. for ``boot -D system0 system1``. Kernel
> +command line fragments it sets apply to all of them. They are reverted
> +once the ``boot`` command returns, so a subsequent ``boot`` without
> +devboot is unaffected by them.
> +
> +A boot command started while devboot is active, e.g. by a boot script
> +that boots other boot targets, doesn't source the script again, but
> +applies the same overrides.
>  
>  Snippets under /env/devboot/
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> @@ -258,22 +274,16 @@ script is loaded. Make them persistent with:
>  :ref:`global.hostname <magicvar_global_hostname>` is typically derived from
>  the device tree, but can be overridden.
>  
> -devboot boot target
> -^^^^^^^^^^^^^^^^^^^
> +Booting with devboot by default
> +^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
>  
> -``devboot`` is available as boot entry as well, so it can be used
> -wherever a boot target is expected. The boot target to hand the
> -overrides to is appended after an ``@``:
> +To boot with devboot by default, including the boot on startup, set:
>  
>  .. code-block:: sh
>  
> -   boot devboot@system0
> -
> -This is most useful to boot with the overrides by default:
> -
> -.. code-block:: sh
> +   nv boot.devboot=1
>  
> -   nv boot.default=devboot@system0
> +``boot`` then always boots with devboot, whatever the boot targets.
>  
>  Forwarding a remote build directory over the internet
>  ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
> diff --git a/commands/boot.c b/commands/boot.c
> index 81f392075d..e1c21c43ba 100644
> --- a/commands/boot.c
> +++ b/commands/boot.c
> @@ -7,6 +7,7 @@
>  #include <malloc.h>
>  #include <boot.h>
>  #include <bootm.h>
> +#include <devboot.h>
>  #include <fnmatch.h>
>  #include <complete.h>
>  
> @@ -111,11 +112,13 @@ static int do_boot(int argc, char *argv[])
>  	struct bootentries *entries;
>  	struct bootentry *entry;
>  	struct bootm_overrides overrides = {};
> +	struct devboot *devboot = NULL;
> +	bool do_devboot = devboot_enabled();
>  	void *handle;
>  	const char *name;
>  	char *(*next)(void *);
>  
> -	while ((opt = getopt(argc, argv, "vldmM:t:w:o:")) > 0) {
> +	while ((opt = getopt(argc, argv, "vldmM:t:w:o:D")) > 0) {
>  		switch (opt) {
>  		case 'v':
>  			verbose++;
> @@ -138,6 +141,13 @@ static int do_boot(int argc, char *argv[])
>  		case 'w':
>  			boot_set_watchdog_timeout(simple_strtoul(optarg, NULL, 0));
>  			break;
> +		case 'D':
> +			if (!IS_ENABLED(CONFIG_BOOT_DEVBOOT)) {
> +				ret = -ENOSYS;
> +				goto out_overrides;
> +			}
> +			do_devboot = true;
> +			break;
>  		case 'o':
>  			ret = boot_add_override(&overrides, optarg);
>  			if (ret)
> @@ -163,6 +173,16 @@ static int do_boot(int argc, char *argv[])
>  		next = next_word;
>  	}
>  
> +	/* like -o, devboot doesn't apply to entries booted from the menu */
> +	if (do_devboot && !do_list && !do_menu) {
> +		devboot = devboot_start(&overrides);
> +		if (IS_ERR(devboot)) {
> +			ret = PTR_ERR(devboot);
> +			free(freep);
> +			goto out_overrides;
> +		}
> +	}

That sounds like a bug with the devboot implementation. If you don't
want to fix it, I think this should have the command fail instead of
silently ignoring -D.

> diff --git a/common/Kconfig b/common/Kconfig
> index da4cc8a5c9..fc762f724b 100644
> --- a/common/Kconfig
> +++ b/common/Kconfig
> @@ -677,6 +677,16 @@ config BOOT_OVERRIDE
>  	  Allow overriding of bootm image, oftree and initrd by passing
>  	  -o as an argument to the boot command.
>  
> +config BOOT_DEVBOOT
> +	bool "Support devboot"
> +	depends on BOOT_OVERRIDE && SHELL_HUSH

&& BOOTM_OPTIONAL_SIGNED_IMAGES

> +	default y
> +	help
> +	  Add a -D option to the boot command and a global.boot.devboot
> +	  variable, which take boot overrides and kernel command line
> +	  fragments from a per-user, per-board script in the network
> +	  fetch directory. See Documentation/user/devboot.rst.
> +
>  config BOOTM_SHOW_TYPE
>  	bool
>  	depends on BOOTM && UIMAGE
> @@ -1243,7 +1253,7 @@ config DEFAULT_ENVIRONMENT_GENERIC_NEW_SECURITY_POLICY
>  config DEFAULT_ENVIRONMENT_GENERIC_NEW_DEVBOOT
>  	bool "Reusable devboot snippets under /env/devboot/"
>  	depends on DEFAULT_ENVIRONMENT_GENERIC_NEW
> -	depends on BOOT_OVERRIDE
> +	depends on BOOT_DEVBOOT
>  	help
>  	  Extend the defaultenv template with snippets under /env/devboot/
>  	  that a devboot script can source: defaults for the image, oftree
> diff --git a/common/Makefile b/common/Makefile
> index b1045c3acb..054a30a04b 100644
> --- a/common/Makefile
> +++ b/common/Makefile
> @@ -31,6 +31,7 @@ obj-$(CONFIG_BLSPEC)		+= blspec.o
>  obj-$(CONFIG_BOOTM)		+= bootm.o booti.o
>  obj-$(CONFIG_BOOTM_AIMAGE)	+= bootm-android-image.o
>  obj-$(CONFIG_BOOT_OVERRIDE)	+= bootm-overrides.o
> +obj-$(CONFIG_BOOT_DEVBOOT)	+= devboot.o
>  obj-$(CONFIG_CMD_LOADS)		+= s_record.o
>  obj-$(CONFIG_MEMTEST)		+= memtest.o
>  obj-$(CONFIG_COMMAND_SUPPORT)	+= command.o
> diff --git a/common/boot.c b/common/boot.c
> index 271cfd3a29..9919a9a8bc 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -353,7 +353,7 @@ static int bootscript_scan_path(struct bootentries *bootentries, const char *pat
>  /*
>   * Only the first character of a boot script argument is restricted, so
>   * that other forms can be added later without changing the meaning of
> - * existing targets, e.g. devboot@@mmc0@mmc1 or devboot@[some-condition].
> + * existing targets, e.g. SCRIPT@@ARG1@ARG2 or SCRIPT@[some-condition].
>   * Paths and URLs are fine as arguments.
>   */
>  static bool is_valid_bootarg(const char *s)
> @@ -366,8 +366,8 @@ static bool is_valid_bootarg(const char *s)
>   *
>   * name is either an absolute path or a name relative to /env/boot. A name
>   * of the form SCRIPT@ARGUMENT refers to the boot script SCRIPT and has
> - * ARGUMENT passed to it as first argument, e.g. devboot@system0 runs
> - * /env/boot/devboot with argument system0. A name that exists as-is takes
> + * ARGUMENT passed to it as first argument, e.g. mmc@1 runs /env/boot/mmc
> + * with argument 1. A name that exists as-is takes
>   * precedence, so scripts and directories with an @ in their name keep
>   * working. An empty SCRIPT is rejected, so that @ARGUMENT doesn't expand
>   * to every script in /env/boot.
> @@ -552,7 +552,7 @@ static char *parse_nfs_url(const char *url)
>   * name can be:
>   * - a name of a boot script under /env/boot
>   * - a name of a boot script under /env/boot followed by an @ and an
> - *   argument to pass to the script, e.g. devboot@system0
> + *   argument to pass to the script, e.g. mmc@1
>   * - a full path of a boot script
>   * - a full path of a bootloader spec entry
>   * - a device name
> diff --git a/common/devboot.c b/common/devboot.c
> new file mode 100644
> index 0000000000..4880e2fb0f
> --- /dev/null
> +++ b/common/devboot.c
> @@ -0,0 +1,197 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * devboot - boot with overrides configured by a script on the network
> + *
> + * See Documentation/user/devboot.rst
> + */
> +
> +#define pr_fmt(fmt) "devboot: " fmt
> +
> +#include <boot.h>
> +#include <bootm-overrides.h>
> +#include <devboot.h>
> +#include <environment.h>
> +#include <globalvar.h>
> +#include <init.h>
> +#include <libfile.h>
> +#include <magicvar.h>
> +#include <net.h>
> +#include <shell.h>
> +#include <stdio.h>
> +#include <unistd.h>
> +#include <linux/err.h>
> +#include <linux/stat.h>
> +
> +struct devboot {
> +	struct globalvar_scope *scope;
> +	char *oldpwd;
> +};
> +
> +static int devboot_default;
> +static struct devboot *devboot_active;
> +
> +bool devboot_enabled(void)
> +{
> +	return devboot_default;
> +}
> +
> +/*
> + * Find the devboot script in the current directory, preferring a
> + * board-specific over an architecture-specific one.
> + */
> +static char *devboot_find_script(const char *fetchdir)
> +{
> +	const char *user = globalvar_get("user") ?: "";
> +	char *board, *arch;
> +
> +	board = xasprintf("%s-devboot-%s", user, globalvar_get("hostname") ?: "");
> +	if (file_exists_type(board, S_IFREG))
> +		return board;
> +
> +	arch = xasprintf("%s-devboot-%s", user, globalvar_get("arch") ?: "");
> +	if (file_exists_type(arch, S_IFREG)) {
> +		free(board);
> +		return arch;
> +	}
> +
> +	pr_err("Neither %s/%s nor %s/%s found\n", fetchdir, board, fetchdir, arch);
> +	pr_err("Create one of them and set as needed:\n");
> +	pr_err("  devboot_image, devboot_initrd, devboot_oftree\n");
> +
> +	free(board);
> +	free(arch);
> +
> +	return NULL;
> +}
> +
> +/*
> + * Take over a variable set by the devboot script as override, unless it's
> + * already given on the command line. Unset variables are ignored, while
> + * empty ones are taken over, so that e.g. an empty devboot_oftree discards
> + * the boot entry's device tree.
> + */
> +static void devboot_take_override(const char **override, const char *var)
> +{
> +	const char *val;
> +
> +	val = getenv(var);
> +	if (val && !*override)
> +		*override = xstrdup(val);
> +}
> +
> +static int devboot_source(const char *fetchdir, struct bootm_overrides *overrides)
> +{
> +	char *script, *path;
> +	char *argv[2] = {};
> +	int ret;
> +
> +	script = devboot_find_script(fetchdir);
> +	if (!script)
> +		return -ENOENT;
> +
> +	path = xasprintf("%s/%s", fetchdir, script);
> +	pr_info("Sourcing %s\n", path);
> +
> +	/* Local variables of the script vanish with the context */
> +	env_push_context();
> +
> +	argv[0] = path;
> +	ret = source_script(path, 1, argv);
> +	if (ret) {
> +		pr_err("%s failed with %d\n", path, ret);
> +		ret = -EINVAL;
> +	} else {
> +		devboot_take_override(&overrides->os_file, "devboot_image");
> +		devboot_take_override(&overrides->oftree_file, "devboot_oftree");
> +		devboot_take_override(&overrides->initrd_file, "devboot_initrd");
> +	}
> +
> +	env_pop_context();
> +	free(path);
> +	free(script);
> +
> +	return ret;
> +}
> +
> +/**
> + * devboot_start - prepare a boot with devboot
> + * @overrides: overrides given on the command line, completed by the ones
> + *             the devboot script sets
> + *
> + * Brings up the network, changes into global.net.fetchdir and sources the
> + * devboot script found there. Changes the script makes to globalvars and
> + * the working directory persist until devboot_finish(), so relative paths
> + * in the overrides are resolved against the fetch directory.
> + *
> + * A boot started while devboot is active, e.g. by a boot script, doesn't
> + * source the script again. It inherits the overrides from the boot entry
> + * it is started from.
> + *
> + * Return: a handle for devboot_finish(), NULL if devboot was not started,
> + * or an error pointer
> + */
> +struct devboot *devboot_start(struct bootm_overrides *overrides)
> +{
> +	struct devboot *db;
> +	const char *fetchdir;
> +	int ret;
> +
> +	if (devboot_active)
> +		return NULL;
> +> +	fetchdir = getenv_nonempty("global.net.fetchdir");

Nit: We have globalvar_get() which avoids having to do a device lookup
on top of the parameter lookup.

> +	if (!fetchdir) {
> +		pr_err("global.net.fetchdir is not set\n");
> +		return ERR_PTR(-EINVAL);
> +	}
> +
> +	db = xzalloc(sizeof(*db));
> +	db->scope = boot_globalvar_scope_push();
> +	db->oldpwd = xstrdup(getcwd());

Nit: We have pushd() / popd() for this pattern.

> +	devboot_active = db;
> +
> +	/* global.net.server and global.hostname may be set by DHCP */
> +	if (IS_ENABLED(CONFIG_NET_IFUP))
> +		ifup_all(IFUP_FLAG_PARALLEL | IFUP_FLAG_UNTIL_NET_SERVER);
> +
> +	ret = chdir(fetchdir);
> +	if (ret) {
> +		pr_err("Cannot change to %s: %pe\n", fetchdir, ERR_PTR(ret));
> +		goto err;
> +	}
> +
> +	ret = devboot_source(fetchdir, overrides);
> +	if (ret)
> +		goto err;
> +
> +	return db;
> +err:
> +	devboot_finish(db);
> +	return ERR_PTR(ret);
> +}
> +
> +/**
> + * devboot_finish - revert the changes of devboot_start()
> + * @db: handle returned by devboot_start(), may be NULL or an error pointer
> + */
> +void devboot_finish(struct devboot *db)
> +{
> +	if (IS_ERR_OR_NULL(db))
> +		return;
> +
> +	chdir(db->oldpwd);
> +	globalvar_scope_pop(db->scope);
> +	free(db->oldpwd);
> +	free(db);
> +
> +	devboot_active = NULL;
> +}
> +
> +static int devboot_init(void)
> +{
> +	return globalvar_add_simple_bool("boot.devboot", &devboot_default);
> +}
> +device_initcall(devboot_init);
> +
> +BAREBOX_MAGICVAR(global.boot.devboot,
> +		 "Boot with devboot overrides by default, see boot -D");
> diff --git a/defaultenv/defaultenv-2-base/bin/devboot b/defaultenv/defaultenv-2-base/bin/devboot
> index 1a43246337..fee733247e 100644
> --- a/defaultenv/defaultenv-2-base/bin/devboot
> +++ b/defaultenv/defaultenv-2-base/bin/devboot
> @@ -1,52 +1,4 @@
>  #!/bin/sh
>  
> -devboot_path="${global.net.fetchdir}"
> -
> -# global.net.server and global.hostname may be set by DHCP, so trigger it first
> -ifup -a1
> -
> -cd "${devboot_path}" || exit 1
> -saved_pwd="$OLDPWD"
> -
> -devboot_script="${global.user}-devboot-${global.hostname}"
> -if [ ! -f "${devboot_script}" ]; then
> -	devboot_script2="${global.user}-devboot-${global.arch}"
> -	if [ ! -f "${devboot_script2}" ]; then
> -		echo "Error: Neither ${devboot_script} nor ${devboot_script2} found"
> -		echo "Create one of them and set as needed:"
> -		echo "  devboot_image, devboot_initrd, devboot_oftree"
> -		cd "${saved_pwd}"
> -		exit 1
> -	fi
> -	devboot_script="${devboot_script2}"
> -fi
> -
> -echo Sourcing "${devboot_path}/${devboot_script}"
> -source "${devboot_path}/${devboot_script}"
> -if [ $? -ne 0 ]; then
> -	cd "${saved_pwd}"
> -	exit 1
> -fi
> -
> -override_args=""
> -
> -if [[ -v devboot_image ]]; then
> -	override_args="${override_args} -o bootm.image=\"${devboot_image}\""
> -fi
> -
> -if [[ -v devboot_oftree ]]; then
> -	override_args="${override_args} -o bootm.oftree=\"${devboot_oftree}\""
> -fi
> -
> -if [[ -v devboot_initrd ]]; then
> -	override_args="${override_args} -o bootm.initrd=\"${devboot_initrd}\""
> -fi
> -
> -echo boot ${override_args} $*
> -boot ${override_args} $*
> -ret=$?
> -
> -global -r "linux.bootargs.devboot.*"
> -cd "${saved_pwd}"
> -
> -exit $ret
> +# hush only splits $* into separate words when the line contains ${}
> +boot -D ${} $*
> diff --git a/defaultenv/defaultenv-2-base/boot/devboot b/defaultenv/defaultenv-2-base/boot/devboot
> deleted file mode 100644
> index 4dd0626774..0000000000
> --- a/defaultenv/defaultenv-2-base/boot/devboot
> +++ /dev/null
> @@ -1,8 +0,0 @@
> -#!/bin/sh
> -
> -if [ $# = 0 ]; then
> -	echo "usage: boot devboot@<target>, e.g. boot devboot@mmc"
> -	exit 1
> -fi
> -
> -devboot $*
> diff --git a/include/devboot.h b/include/devboot.h
> new file mode 100644
> index 0000000000..c33638d83b
> --- /dev/null
> +++ b/include/devboot.h
> @@ -0,0 +1,31 @@
> +/* SPDX-License-Identifier: GPL-2.0-only */
> +#ifndef __DEVBOOT_H
> +#define __DEVBOOT_H
> +
> +#include <linux/stddef.h>
> +#include <linux/types.h>
> +
> +struct bootm_overrides;
> +struct devboot;
> +
> +#ifdef CONFIG_BOOT_DEVBOOT
> +bool devboot_enabled(void);
> +struct devboot *devboot_start(struct bootm_overrides *overrides);
> +void devboot_finish(struct devboot *db);
> +#else
> +static inline bool devboot_enabled(void)
> +{
> +	return false;
> +}
> +
> +static inline struct devboot *devboot_start(struct bootm_overrides *overrides)
> +{
> +	return NULL;
> +}
> +
> +static inline void devboot_finish(struct devboot *db)
> +{
> +}
> +#endif
> +
> +#endif
> diff --git a/test/py/test_devboot.py b/test/py/test_devboot.py
> new file mode 100644
> index 0000000000..f533d7585b
> --- /dev/null
> +++ b/test/py/test_devboot.py
> @@ -0,0 +1,131 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +import pytest
> +from .helper import skip_disabled
> +from .test_boot_globalvar_scope import write_bootscript, globals_now
> +from .test_boot_overrides import make_image, booted
> +
> +FETCHDIR = "/tmp/devboot"
> +
> +
> +@pytest.fixture(scope="function")
> +def devboot_env(barebox, barebox_config):
> +    skip_disabled(barebox_config, "CONFIG_BOOT_DEVBOOT")
> +
> +    saved = {var: barebox.run_check(f"echo ${{global.{var}}}")[0]
> +             for var in ("user", "hostname", "net.fetchdir", "boot.devboot",
> +                         "bootm.appendroot")}
> +    pwd = barebox.run_check("pwd")[0]
> +
> +    barebox.run(f"mkdir {FETCHDIR}")
> +    barebox.run_check(f"global.net.fetchdir={FETCHDIR}")
> +    barebox.run_check("global.user=scope")
> +    barebox.run_check("global.hostname=test")
> +    barebox.run_check("global.bootm.appendroot=0")
> +    barebox.run_check(f"echo -o {FETCHDIR}/scope-devboot-test "
> +                      "'global linux.bootargs.extra=extra=1'")
> +    barebox.run_check(f"echo -a {FETCHDIR}/scope-devboot-test "
> +                      "'global.bootm.appendroot=1'")
> +    barebox.run_check(f"echo -a {FETCHDIR}/scope-devboot-test "
> +                      "'devboot_local=leak'")
> +    write_bootscript(barebox, "devboot-target", [
> +        "global.bootm.image=/does/not/exist",
> +        "echo target-sees ${global.linux.bootargs.extra} "
> +        "${global.bootm.appendroot}",
> +    ])
> +    write_bootscript(barebox, "devboot-nested", [
> +        "boot devboot-target",
> +    ])
> +
> +    yield pwd
> +
> +    for var, val in saved.items():
> +        barebox.run_check(f"global.{var}=\"{val}\"")
> +    barebox.run(f"rm -r {FETCHDIR}")
> +    barebox.run("rm /env/boot/devboot-target /env/boot/devboot-nested")
> +
> +
> +def assert_reverted(barebox, pwd):
> +    after = globals_now(barebox)
> +    assert "linux.bootargs.extra" not in after
> +    assert after["bootm.appendroot"] == "0"
> +    assert barebox.run_check("pwd") == [pwd]
> +    assert barebox.run_check("echo [$devboot_local]") == ["[]"]
> +
> +
> +def sourced(stdout):
> +    return sum("devboot: Sourcing " in line for line in stdout)
> +
> +
> +def test_devboot_option(barebox, devboot_env):
> +    stdout, _, ret = barebox.run("boot -D devboot-target devboot-target")
> +    assert ret != 0
> +    assert sourced(stdout) == 1
> +    # the devboot script's variables are visible in, and survive, each
> +    # boot target...
> +    assert stdout.count("target-sees extra=1 1") == 2
> +    # ...and are reverted afterwards
> +    assert_reverted(barebox, devboot_env)
> +
> +
> +def test_devboot_globalvar(barebox, devboot_env):
> +    barebox.run_check("global.boot.devboot=1")
> +
> +    stdout, _, _ = barebox.run("boot devboot-target")
> +    assert sourced(stdout) == 1
> +    assert "target-sees extra=1 1" in stdout
> +    assert_reverted(barebox, devboot_env)
> +
> +
> +def test_devboot_command(barebox, devboot_env):
> +    stdout, _, _ = barebox.run("devboot devboot-target devboot-target")
> +    assert sourced(stdout) == 1
> +    assert stdout.count("target-sees extra=1 1") == 2
> +    assert_reverted(barebox, devboot_env)
> +
> +
> +def test_devboot_nested(barebox, devboot_env):
> +    # a boot script booting other entries doesn't source the script again
> +    stdout, _, _ = barebox.run("boot -D devboot-nested")
> +    assert sourced(stdout) == 1
> +    assert "target-sees extra=1 1" in stdout
> +    assert_reverted(barebox, devboot_env)
> +
> +
> +def test_devboot_nested_override(barebox, barebox_config, devboot_env):
> +    skip_disabled(barebox_config, "CONFIG_CMD_CAT", "CONFIG_CMD_MW")
> +
> +    base = "/tmp/devboot-base"
> +    make_image(barebox, base)
> +    make_image(barebox, f"{FETCHDIR}/devboot-override")
> +    barebox.run_check(f"echo -a {FETCHDIR}/scope-devboot-test "
> +                      "devboot_image=devboot-override")
> +    write_bootscript(barebox, "devboot-target", [
> +        f"global.bootm.image={base}",
> +    ])
> +
> +    stdout, _, _ = barebox.run("boot -D devboot-nested")
> +    barebox.run_check(f"rm {base}")
> +
> +    assert sourced(stdout) == 1
> +    # relative to global.net.fetchdir, which is the working directory
> +    assert any("'devboot-override'" in line for line in booted(stdout))
> +    assert_reverted(barebox, devboot_env)
> +
> +
> +def test_devboot_dryrun(barebox, devboot_env):
> +    stdout, _, ret = barebox.run("boot -D -d devboot-target")
> +    assert ret == 0
> +    assert sourced(stdout) == 1
> +    assert "Would run /env/boot/devboot-target" in stdout
> +    assert_reverted(barebox, devboot_env)
> +
> +
> +def test_devboot_missing_script(barebox, devboot_env):
> +    barebox.run_check("global.hostname=nohost")
> +
> +    stdout, _, ret = barebox.run("boot -D devboot-target")
> +    assert ret != 0
> +    assert any("Neither" in line for line in stdout)
> +    assert not any("Booting entry" in line for line in stdout)
> +    assert_reverted(barebox, devboot_env)
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



