Delivery-date: Fri, 16 Oct 2026 12:46:14 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHfS2-00EK9V-1i
	for lore@lore.pengutronix.de;
	Fri, 16 Oct 2026 12:46:14 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C49532027FA
	for <lore@pengutronix.de>; Fri, 16 Oct 2026 12:46:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=p6q8K+6j;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=dGrZXzwY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=emVDg8rm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792147574; a=rsa-sha256;
	cv=pass;
	b=MJniwmWYygXqf9Qe5FQicH/1Dh8fEaqUfSQ8pz2CW8ZMafHaIPpzMOWg65cwmRwN4nfdF1
	xPW9BxMNKnfQgLK4W2RjdpH6/VBQMfbmcc4tBvMSiNHWUwX/aIQvYw9tQt4Ls9x8YmgpXf
	NGEvPHtNYHTYKHTGRUDJa1Oon5+eylqHDwqSxUDqG59eW2g+58eE7/OsjFAb7VE+0aVEpJ
	lalG1j7Md7pULDefxBMj+RZwfj5wRKyL5QthmzdUG5I9Hve46pHMqQtKgQQsuTN/aBu/05
	Y2xJaigA7y9XZpANG7AGXk+W9ER36NU7zA1e+gi49HWJ8LiCn3tlvQ/HN9hN8w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=p6q8K+6j;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=dGrZXzwY;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=emVDg8rm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792147574;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=U3jmYK9NriGvlBtgqGqci4Vmgz1ZsanKJmy1KmTX8dM=;
	b=CVIjMMEFOcTTVBLkx0ALOmnSBMVGEtHCiS3XsVvNApyavb83eRhBbd0k0IqEc6MN5EAz8Y
	eSGETZco3sFZ1J6+8PybzVNbaPZIIFPMQpfVlWD3HtLnmJU8LBsgM9xfMGK+K+ZKk73jDi
	XRrymtTYToA1s6ZZzmMrlErGjP60kv2DZJGZsfnAR9jY7luvCemWAcOs/Efet5bxc7Zgk4
	XsVTv3rmjrRxZB3Jw280ZU1g4yAJ7eMqLHLENLCbaG+nyINlsTI93LhatIegE6Bdaftycl
	McigonnU4dStev54fJ5f1tXHSmZqXvXiYTgdUFkw+k19GldxIgpAcKZZX2T1ug==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=U3jmYK9NriGvlBtgqGqci4Vmgz1ZsanKJmy1KmTX8dM=; b=p6q8K+6jx1XEDt6U8/P2xgXgS8
	2fD8QWYtVAu01sDRPQ6gVKsyWMTFLR/SMpLRWxvOTI00cf7gTWRnAi4TsZzR8E309GmvsZJsH3vc1
	Bq+cO+ZE+FxVUPOR5AhAlEO0J/KSyNv5ZsLWZSDoMqsF/kh4wCdkpW2EqYkhzjBb87aEMe02VBddY
	cpwN6/GPHEt6pjRPwhoDweaN0ehpok7bXfRQ4FguozlpVpAOaBph8sqxsjNpWG4JnId5S1Ww5YPH+
	yAaUq8MGQ3coB657NDy1wJi+x3ci5k9FUyJ7vqszJGoF0ijX1aIbY67C2vRQADZUbb/wCLNPhSXiK
	KYJ/B6Kg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfQv-00000002hRr-1kDi;
	Fri, 16 Oct 2026 10:45:05 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHfQt-00000002hRN-3C1B
	for barebox@bombadil.infradead.org;
	Fri, 16 Oct 2026 10:45:03 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:Message-ID:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=U3jmYK9NriGvlBtgqGqci4Vmgz1ZsanKJmy1KmTX8dM=; b=dGrZXzwYER1WXjQbUfZfqHjSks
	en0rA4uDMt5pcBRTLkVD9s7Ey0Sabx/5SzWvkjtQsDVFDby0ltNzwXbNOkOeD2s0ipteb6lRgdSic
	jz0MuBoA8T1QjjIrWFO7cIngowRWI1Mv6shosDKMFDVJVufcSNqot8Y0pawLdBwj+UwUwMAHvYYjo
	99htzA1HIVigHBuF+Up5Pn8b/K8Heg+Zwkuj+Non7U4Yh2Y/HPcodboKb+9Nlrj3QZHPwZXlI2RY8
	9eDIms9n9ekhs+KSDv7evLVV9Zd+fWZxSo+6fRwgazYQ3vLNWUaujA+omEJMtRnccPRZb48njlka9
	+M2xvDvQ==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHfQp-00000001P9U-2tYk
	for barebox@lists.infradead.org;
	Fri, 16 Oct 2026 10:45:02 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B1CEA2027F7;
	Fri, 16 Oct 2026 12:44:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792147494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U3jmYK9NriGvlBtgqGqci4Vmgz1ZsanKJmy1KmTX8dM=;
	b=emVDg8rm3jllhGtMsTvsExvkQwFJwt9HIa8Y0IHL8CLNXyFAij6aaPplJsKRZmpfrZMKzi
	a5HSdPVphlSRcE6GRigF3UBRV/NcnaiMRSE2CZaIvLt8ITK0TDlhWEGj2zc4VvHB4Sfri9
	xEvav1nwWgEsDonu0BMA3qbj2ii4AcP0Pgmj3OrPwb6efWeNin4Qqw2INnFmMVFNZx+Qbc
	zxeJN15iyXhFrXK/7MdEiSomhczSYqN1/lwzhSTeSGkmFaj1uWbW14Xo8ZmUe+zaSoBl4H
	TsFrmt9CcCtZUh2XZCtcutaVaXnma+FzKVA/19Re0OAoIWiRjrZoINZZ0L4Wvg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792147494; a=rsa-sha256;
	cv=none;
	b=AvTS1xdyn9BiKXXHWqntejY+z6/3QLYelyJdY7WAE1v9L46j8r1abWBx2rduq1w+1j6Rus
	twWWzCsHew4ebJVtGg6d+MLCbWe1Pu3G8kTyB0f+/SyHa396pZ1g2HR3c3Ch2RExhYpi9S
	/+E0mggcufQDtfazxr3eoLkqWyB+JJHUXmSbN8/g6SRgae4DndvUjJ5nRPgvjX/u6yusgc
	b9oqeetEcqatrchjj4x28XRaItNxcbIK9PM4P97gHDjYm1EkzZ/vRzNsgjc+XcUzVpFMoD
	yGk1SXAAjIKFRZMZuPrLrjWmSh3nAt7Rn9ianc0AZtinkzQIVxLOuSWDw7dQoQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792147494;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=U3jmYK9NriGvlBtgqGqci4Vmgz1ZsanKJmy1KmTX8dM=;
	b=W5TiPeguQzMtxq3vF3pOEMc8RltdW+sVEiz+64yKQtV3kdQPvBBgyL/U+jr/taEQWS+eHt
	jUE4JxbiN287/1zpq+zeaeC8u7CXzOQu5mrEf6yMOAtw+Dl7+Gr+qKxRrIrz+ILu/WU621
	/TJs70kj41Zphs0eIZr8ZcPwkl3E0RCsetCxkOfDb2yG2Va1qF7bsKClHzLhLpZ+4xkwkm
	1zS/gx7y6DD0WVbfAN8BZopW/Ngb/JHNRXAItbFfcmdUSq3GeJjwyXSyAyxGlBPtfNfngQ
	ZixN/SVA+eRD1iYI1w8pL8EXMgU5+n8hNd3sXA277/fAlhs97UUVAJcfaTKGbw==
Message-ID: <a71e50ea-8cc3-40bf-bbd6-88b49805092d@pengutronix.de>
Date: Fri, 16 Oct 2026 12:44:54 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] defaultenv: apply external environment after board
 overlays again
To: Florijan Plohl <florijan.plohl@norik.com>, barebox@lists.infradead.org,
 s.hauer@pengutronix.de
Cc: upstream@lists.phytec.de
References: <20261016061711.130600-1-florijan.plohl@norik.com>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20261016061711.130600-1-florijan.plohl@norik.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261016_114500_330627_750D2FD3 
X-CRM114-Status: GOOD (  44.00  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/16/26 8:17 AM, Florijan Plohl wrote: > Since commit
    7f1cc5dd869d ("defaultenv: add base and external defaultenv > in pure_initcall"),
    the environment given with > CONFIG_DEFAULT_ENVIRONMENT_PATH [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:900:1d::77:received,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C49532027FA
X-Stat-Signature: j64hrpb1qhqc5ngxirhj4z7u9bc4grci



On 10/16/26 8:17 AM, Florijan Plohl wrote:
> Since commit 7f1cc5dd869d ("defaultenv: add base and external defaultenv
> in pure_initcall"), the environment given with
> CONFIG_DEFAULT_ENVIRONMENT_PATH is added before boards add their own
> overlays with defaultenv_append_directory(). As overlays are applied in
> the order they were added, board overlays now overwrite the external
> environment, contrary to Documentation/user/defaultenv-2.rst, and BSPs
> can no longer replace a board's default environment files, e.g. its boot
> scripts.
> 
> Restore the documented order by giving each overlay a priority and
> keeping the list sorted by it: the base and board specific overlays are
> applied first, followed by CONFIG_DEFAULT_ENVIRONMENT_PATH. Overlays
> added at runtime with defaultenv_append_runtime_directory(), like the
> QEMU fw_cfg environment, are still applied last, so they keep
> overwriting the external environment.
> 
> No in-tree board adds its own overlay and sets
> CONFIG_DEFAULT_ENVIRONMENT_PATH at the same time, so only out-of-tree
> configurations are affected. Add a migration guide entry for them.
> 
> Fixes: 7f1cc5dd869d ("defaultenv: add base and external defaultenv in pure_initcall")
> Reported-by: Primoz Fiser <primoz.fiser@norik.com>
> Signed-off-by: Florijan Plohl <florijan.plohl@norik.com>

Tested-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> Tested in sandbox (external overrides board, /env unchanged without
> it, runtime overlay still wins) and on a phyCORE-i.MX6 with the Yocto
> BSP environment, not with a real QEMU fw_cfg.

Works as expected with QEMU fw_cfg:

$ make multi_v8_defconfig
$ make
$ ./scripts/qemu_interactive.py --env 'nv/user=test' \
	--env 'init/greet=echo hi $global.user'

Observation: "hi test" output during startup that masks
an external environment if added.


> 
>  .../migration-guides/migration-master.rst     | 15 ++++
>  Documentation/user/defaultenv-2.rst           |  5 ++
>  defaultenv/defaultenv.c                       | 82 ++++++++++++++++---
>  3 files changed, 89 insertions(+), 13 deletions(-)
> 
> diff --git a/Documentation/migration-guides/migration-master.rst b/Documentation/migration-guides/migration-master.rst
> index 715edd5934..59b9514997 100644
> --- a/Documentation/migration-guides/migration-master.rst
> +++ b/Documentation/migration-guides/migration-master.rst
> @@ -20,3 +20,18 @@ points at a FIT.
>  Existing users, if any, will fail-secure: The command will now exit with a failure::
>  
>    bootm: invalid option -- s
> +
> +Default environment overlay order
> +---------------------------------
> +
> +Releases since v2026.01.0 applied board specific default environment overlays
> +added with ``defaultenv_append_directory()`` after the environment given
> +with ``CONFIG_DEFAULT_ENVIRONMENT_PATH`` and thus overwrote its files.
> +
> +The documented order has been restored: ``CONFIG_DEFAULT_ENVIRONMENT_PATH``
> +is applied after the board specific overlays again and can overwrite their
> +files. Overlays only available at runtime, like an environment passed via
> +QEMU fw_cfg, are still applied last.
> +
> +BSPs that started to rely on the board specific overlay taking precedence
> +need to remove the conflicting files from their external environment.
> diff --git a/Documentation/user/defaultenv-2.rst b/Documentation/user/defaultenv-2.rst
> index 719abe2782..78adb69293 100644
> --- a/Documentation/user/defaultenv-2.rst
> +++ b/Documentation/user/defaultenv-2.rst
> @@ -34,6 +34,11 @@ board specific overlay, or overlays, could be at any path, but usually follows
>  the form given.  They must be added to a Makefile in ``bbenv-y`` and
>  ``defaultenv_append_directory()`` used to add them in board init code.
>  
> +Overlays that are only available at runtime, like an environment passed
> +via QEMU fw_cfg as ``opt/org.barebox.env``, are applied after all of the
> +above and can thus also overwrite files from
> +``$(CONFIG_DEFAULT_ENVIRONMENT_PATH)``.
> +
>  Note that not all of the above directories will necessarily be
>  included in your default environment, it depends on your barebox
>  configuration settings. You can see the configuration variables
> diff --git a/defaultenv/defaultenv.c b/defaultenv/defaultenv.c
> index 573b1f862f..9a7600a7f9 100644
> --- a/defaultenv/defaultenv.c
> +++ b/defaultenv/defaultenv.c
> @@ -24,14 +24,63 @@
>  
>  static LIST_HEAD(defaultenv_list);
>  
> +/*
> + * defaultenv_list is kept sorted by ascending priority, overlays of the same
> + * priority stay in the order they were added. defaultenv_load() applies them
> + * in list order, so a file from a later overlay replaces the same file of an
> + * earlier one, unless ENV_FLAG_NO_OVERWRITE is passed.
> + */
> +enum defaultenv_prio {
> +	/* base and board specific overlays, added with defaultenv_append() */
> +	DEFAULTENV_PRIO_BOARD,
> +	/* the environment given with CONFIG_DEFAULT_ENVIRONMENT_PATH */
> +	DEFAULTENV_PRIO_EXTERNAL,
> +	/* overlays added with defaultenv_append_runtime_directory() */
> +	DEFAULTENV_PRIO_RUNTIME,
> +};
> +
>  struct defaultenv {
>  	struct list_head list;
> +	enum defaultenv_prio prio;
>  	const char *srcdir;
>  	const char *name;
>  	void *buf;
>  	size_t size;
>  };
>  
> +static void defaultenv_add(struct defaultenv *df)
> +{
> +	struct defaultenv *pos;
> +
> +	/*
> +	 * Insert behind all entries of the same priority. list_add_sort()
> +	 * would insert in front of them and thus reverse the order in which
> +	 * overlays of the same priority were added.
> +	 */
> +	list_for_each_entry(pos, &defaultenv_list, list) {
> +		if (pos->prio > df->prio) {
> +			list_add_tail(&df->list, &pos->list);
> +			return;
> +		}
> +	}
> +
> +	list_add_tail(&df->list, &defaultenv_list);
> +}
> +
> +static void __defaultenv_append(void *buf, unsigned int size, const char *name,
> +				enum defaultenv_prio prio)
> +{
> +	struct defaultenv *df;
> +
> +	df = xzalloc(sizeof(*df));
> +	df->buf = buf;
> +	df->size = size;
> +	df->name = name;
> +	df->prio = prio;
> +
> +	defaultenv_add(df);
> +}
> +
>  /*
>   * defaultenv_append - append a envfs buffer to the default environment
>   * @buf:	The buffer containing the binary environment. If it is
> @@ -39,20 +88,24 @@ struct defaultenv {
>   * @size:	The length of the buffer
>   *
>   * This adds an overlay to the default environment. New files will be created,
> - * existing files will be overwritten with the overlay.
> + * existing files will be overwritten with the overlay. The environment given
> + * with CONFIG_DEFAULT_ENVIRONMENT_PATH is applied after all overlays added
> + * with this function and can thus overwrite their files.
>   */
>  void defaultenv_append(void *buf, unsigned int size, const char *name)
>  {
> -	struct defaultenv *df;
> -
> -	df = xzalloc(sizeof(*df));
> -	df->buf = buf;
> -	df->size = size;
> -	df->name = name;
> -
> -	list_add_tail(&df->list, &defaultenv_list);
> +	__defaultenv_append(buf, size, name, DEFAULTENV_PRIO_BOARD);
>  }
>  
> +/*
> + * defaultenv_append_runtime_directory - append a directory to the default
> + *                                       environment
> + * @srcdir:	The directory whose contents should be added
> + *
> + * This adds an overlay that is copied from @srcdir when the default environment
> + * is loaded. It is applied after the environment given with
> + * CONFIG_DEFAULT_ENVIRONMENT_PATH and can thus overwrite its files.
> + */
>  void defaultenv_append_runtime_directory(const char *srcdir)
>  {
>  	struct defaultenv *df;
> @@ -60,8 +113,9 @@ void defaultenv_append_runtime_directory(const char *srcdir)
>  	df = xzalloc(sizeof(*df));
>  	df->srcdir = srcdir;
>  	df->name = srcdir;
> +	df->prio = DEFAULTENV_PRIO_RUNTIME;
>  
> -	list_add_tail(&df->list, &defaultenv_list);
> +	defaultenv_add(df);
>  }
>  
>  static int defaultenv_load_one(struct defaultenv *df, const char *dir,
> @@ -158,10 +212,12 @@ static int defaultenv_init(void)
>  
>  	/*
>  	 * The traditional or external environment given with
> -	 * CONFIG_DEFAULT_ENVIRONMENT_PATH.
> +	 * CONFIG_DEFAULT_ENVIRONMENT_PATH. It is added here already, but
> +	 * still applied after the board specific overlays added later on.
>  	 */
> -	defaultenv_append((void *)default_environment,
> -			default_environment_size, "defaultenv");
> +	__defaultenv_append((void *)default_environment,
> +			    default_environment_size, "defaultenv",
> +			    DEFAULTENV_PRIO_EXTERNAL);
>  
>  	return 0;
>  }

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



