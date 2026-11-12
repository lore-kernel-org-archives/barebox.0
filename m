Delivery-date: Thu, 12 Nov 2026 09:51:38 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRQWw-009ycQ-0i
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 09:51:38 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 231D2200735
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 09:51:38 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mpxp73oI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eB8RHGmV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473498;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=y7qhRFdBsrDRHANBdDAj2Nr1VAmSlyjcglHnAy5FXsM=;
	b=ePh3BFZiPSqL4he0zAe+FazVyWqBwXl9QN+rsm7dP+jhYXWl7zra/0K5IbV462ROopeY1E
	EIe4pRYCh3LIxSf8FjlxWUwvIpedjK8ypmwRFtW97Ixv/BTtNygRoyKJMg5Z5BKBxNCY6e
	jtJ+7+33+zrZHi5pQrigMksiePUdzPtg6O+eQ4W+OkDGg33ToavPYsOIEyrUIjHiTrIbWJ
	YJzdRdoGAizOt6EdVyGaQAWiLqvNCAbmd725f8LbNCHTuGpcbifiT+k5DQzKvwvWpXp+PZ
	7cBxYcBtCRU/aXBlMU1cEonua0uURA3mOpR39t1ldd5qTTCyr42qoENxe5hb3A==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794473498; a=rsa-sha256;
	cv=pass;
	b=UWEIEzxCq8+6GitfuuaBFGXYNdSJQWMVL9KVOBeYyi5HFI45oC4l2gWPwHWxqekKZv5d4A
	AU7YRpe9Pyfud7uVDsHbiKmMAaVY0JSEDiKJeYgqfpDpmCRTPTXjtX3eWzG17/HPviR4j6
	F8Wyj45pG8uHq5gN1JLntnWPGoYnVU5AwTOMv2ILkP9L7mIRlJDEjmzdSvcFp8Gcc19lll
	8D36+iilygGBcMdAZuJLQoPk1JLoodx2yktO9arY8sLFW8Ygb6pqlHOlPkumnw/jj0UX3f
	+10RAdUBvkfHzle4SKBGuUjmGoPNavH7NdpPKpQT8n+D5xSPiz7sWOJtlR3Iwg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=mpxp73oI;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=eB8RHGmV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=y7qhRFdBsrDRHANBdDAj2Nr1VAmSlyjcglHnAy5FXsM=; b=mpxp73oIeTYIQc
	JnC9fFe4IeALJW8qaOAkSabj0RPDuZA2Zyyd3G3Vk+l3B+i2MMYtNW5Df1KPc+KOZWr9h+lta63cC
	31NIdO85+H4b6sgYCuuj79g9ipQpaP6T0BydJi9r0PJ3UYurjmQciT4dwOh7l1+DH9tbjMEt51u9N
	4mu6zDGa8w0Ln7P+7eusKPvUis2I6uroZxg/MARuokkz8vNtOukdrBdxMG6ZmPpigNnmxKML5YUC0
	ntvYqNo5JYKXxUC/aqqHNfZqyGiEFAJxVy+jwV6haMNsPSsAUo7oqYxEgKplmdpZTfm5/FfpNQtNM
	H0hB4DRvIb5etFg+kO5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQW0-00000009Emk-1L85;
	Thu, 12 Nov 2026 08:50:40 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQVb-00000009EjF-1HhJ
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:50:31 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 7255E2004B4;
	Thu, 12 Nov 2026 09:50:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y7qhRFdBsrDRHANBdDAj2Nr1VAmSlyjcglHnAy5FXsM=;
	b=eB8RHGmVOdXJ2xkyKErJ6XW2rd+iIsBxvyqK+EywVxbunPWMQVIFcl2ws39+pya33Xql0/
	+joIMH7TqCp2R+43c9zz0Xi2hpmNzXn++6QB6AcY+69zLjwVb/3oQzaWpR1erv8/5Ar4tc
	kpTZhH1MjBNeubk+IInnZYCk0vIra2XeqUi7WmNelJPCR4AwNXMem1FGGRD7ep1PAFbIi1
	mDHAdJpuCf4l/LcqN/Lddkgx7qli7RHyB1mChO0uiXcFs4fEz4gzE6DC6hmih2SngVAZCz
	O/hFm7o68KoaIpPkYvhBAtvQZYCO3KCDb/JIBJe/S7uc9DZb8eOc+6frVmZbyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794473413;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=y7qhRFdBsrDRHANBdDAj2Nr1VAmSlyjcglHnAy5FXsM=;
	b=Nk2ykSJMEYvHFpKI2AHrUH/e4uIoCjAn0+zdWVl555Jxvild1wlmtQYy1dAl7FPD0CNTl5
	LcASgQAy+fj4csLwBFGySBYpwS3oew8s7B7i7ri083LPWdQHWDzms5fM4K1/gVb1urVFLd
	cHO5UmhP6MIN0c+3+O4aTzhziyukylA0sziIW1f+/cw1P2Wik3YETuR1xB+2v2y9owgqW0
	TDrB8r0XS/O7/SdBSRD6nfnzFt12FZQmH8z1mH38TYyRSKXrN03JqAbUEZXSiJqxy9y1Ia
	O2BMNXhRLptFyv6Q2YDt+li1SB6+OT4PFQRzNxy55J2zg+Oi+3BUtFds05Wjag==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794473413; a=rsa-sha256;
	cv=none;
	b=Xmbjz8VYTq8iNHwfpEewle4P6pFKP1KMChdidB4HHHJrXC7uEFZtMYe4IssOquDA6xnEl7
	AsWVZT6ktU4Ipx5r3veNDgkdKBXAemsp2n3kdzPFoqgMhlXj2BY/p2WYJ8lU7X45d2axd6
	B1O+i2YaEyH73FG4x6sUbwH5dUGspJmM+Gs2Su6T0XbEnVBcgT3EMjaG8HXCliDaWQqCN7
	wHVK4yBIM1Gqq0WfgcHRD3sZrC1AFi9g//mcIN/ciMxpbOMSUJM1pzDdyxQEfI8CkM/kdR
	NExEkT+vnYIazDDAazm1HZ/QWE+TlimzR5mMBVyv/JbrQW+963S0c1QDeAnRyw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <9f650ecc-b0d6-4e79-98f7-5bdcfe96899c@pengutronix.de>
Date: Thu, 12 Nov 2026 09:50:13 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] boot: report the exit status of failing boot scripts
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-devboot-v1-0-ab9dd3a92c66@pengutronix.de>
 <20261030-devboot-v1-1-ab9dd3a92c66@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-devboot-v1-1-ab9dd3a92c66@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_005020_984834_453B8F27 
X-CRM114-Status: GOOD (  24.61  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 15:13, Sascha Hauer wrote: > When a boot script
    exits with a non-zero status, execute_binfmt() > returns that status as a
    positive value. bootscript_boot() passes it to > strerror(-ret) an [...] 
 
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
X-Rspamd-Queue-Id: 231D2200735
X-Stat-Signature: 3et741amq9ew4as36pmz8co7f951ac3u
X-Rspamd-Action: no action

On 10/30/26 15:13, Sascha Hauer wrote:
> When a boot script exits with a non-zero status, execute_binfmt()
> returns that status as a positive value. bootscript_boot() passes it to
> strerror(-ret) and boot_entry() to %pe, both of which expect a negative
> errno, resulting in messages like:
> 
>   ERROR: Running script '/env/boot/mmc' failed: error -1
>   ERROR: Booting entry 'mmc' failed: 0000000000000001
> 
> Allow boot entries to return a boot script's exit status and have
> boot_entry() report it as such. bootscript_boot() now only reports
> errors of its own, so a failing script results in a single
> 
>   ERROR: Booting entry 'mmc' failed: exit status 1
> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  common/boot.c               | 11 +++++++----
>  include/boot.h              |  1 +
>  test/py/test_boot_script.py | 13 +++++++++++++
>  3 files changed, 21 insertions(+), 4 deletions(-)
> 
> diff --git a/common/boot.c b/common/boot.c
> index 023eaf5145..b993cabf65 100644
> --- a/common/boot.c
> +++ b/common/boot.c
> @@ -115,10 +115,11 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
>  	 * without the shell expanding or splitting it first.
>  	 */
>  	ret = execute_binfmt(bs->args ? 2 : 1, argv);
> -	if (ret) {
> -		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
> +	if (ret < 0)
> +		pr_err("Running script '%s' failed: %pe\n", bs->entry.path, ERR_PTR(ret));
> +	/* positive values are the exit status, reported by boot_entry() */
> +	if (ret)
>  		return ret;
> -	}
>  
>  	/* No point in repeating bootm if script already called it */
>  	if (bootm_nattempts != bootm_command_attempts())
> @@ -206,7 +207,9 @@ int boot_entry(struct bootentry *be, int verbose, int dryrun)
>  	scope = boot_globalvar_scope_push();
>  
>  	ret = be->boot(be, verbose, dryrun);
> -	if (ret && ret != -ENOMEDIUM)
> +	if (ret > 0)
> +		pr_err("Booting entry '%s' failed: exit status %d\n", be->title, ret);
> +	else if (ret && ret != -ENOMEDIUM)
>  		pr_err("Booting entry '%s' failed: %pe\n", be->title, ERR_PTR(ret));
>  
>  	globalvar_scope_pop(scope);
> diff --git a/include/boot.h b/include/boot.h
> index b30cdd314a..bb99dacc85 100644
> --- a/include/boot.h
> +++ b/include/boot.h
> @@ -20,6 +20,7 @@ struct bootentry {
>  	const char *title;
>  	char *description;
>  	const char *path;
> +	/* 0 on success, else negative errno or a boot script's exit status */
>  	int (*boot)(struct bootentry *entry, int verbose, int dryrun);
>  	void (*release)(struct bootentry *entry);
>  	struct bootm_overrides overrides;
> diff --git a/test/py/test_boot_script.py b/test/py/test_boot_script.py
> new file mode 100644
> index 0000000000..be08e964d9
> --- /dev/null
> +++ b/test/py/test_boot_script.py
> @@ -0,0 +1,13 @@
> +# SPDX-License-Identifier: GPL-2.0-or-later
> +
> +
> +def test_boot_script_exit_status(barebox):
> +    barebox.run_check("echo -o /env/boot/exit3 '#!/bin/sh'")
> +    barebox.run_check("echo -a /env/boot/exit3 'exit 3'")
> +
> +    stdout, _, ret = barebox.run("boot exit3")
> +    assert ret != 0
> +    assert "ERROR: Booting entry 'exit3' failed: exit status 3" in stdout
> +    assert not any("Running script" in line for line in stdout)
> +
> +    barebox.run_check("rm /env/boot/exit3")
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


