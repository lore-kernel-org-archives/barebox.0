Delivery-date: Thu, 12 Nov 2026 10:27:08 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRR5H-009zyp-1l
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 10:27:07 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 18B06200735
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 10:27:07 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BnRqCbKT;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Qhts08Bt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794475627;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=RAd83Le2dVsnPqcw8VB8cQ1Kgb2LVj3X/lar03cVplY=;
	b=XNqmcfvgLY5izgB6a5OyBzfC4+bKnHszH+IcyMlnosLqFlT2/7YDxMTiv3c7RPNgKWWgTd
	LKIIXkln0Z7nNLNdVqbGEkwpND/oAjT/yvFgvlsEt7TgC+Nr5vuV4gt9CknFr0uUtKo8GQ
	TUD1EYSkPisg1jKcot1wS0pNIv8cF2JYDTP4xZdVfqucbzWkQEvbNFNIYhIPg1pI48RD2E
	nA5SSo1hhMJ0zgENEcEY2NvoaTZlXiXzUG+n5T3n8a33UnsE5W1SReJx6kJa/f3JKSosFD
	yiJAenRINsdLMzdH7N5FiTZY0VQ1VoPFKTpbdMYmoEPMDHiQHkBiCimc+RMYdQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794475627; a=rsa-sha256;
	cv=pass;
	b=cu8SNFExkxwGNF2cpnYBBHR0xqhMRnIaV7rglm6ejSj/OmFGHq8MD3o+E0K37Ffnfd5bk5
	hHs3DtUvcOTmrQQ6fuT/WqYxe1xW1/scAXLSqXpNO1WzajoxHptYc6ZGKYvfhm7gZjeFr4
	xePIiThWyZ4xcAdMaSpmTvD6FQjFDHLqgvWnLHjx58tKEteeAKM6ahymwrvryUrXaFWtZd
	g38Fy1W0/WBkHfBANIh2oy0siFDpziFxvpq6vA/25rPAKUioIv2LypI7UovdCB+sNpOs+r
	cw9/ocXDmC6VCcF1PJmottf9RuGEjDsfYGujpQ+bSaiZ+w/fvK7G/YMnNMdDGw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BnRqCbKT;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Qhts08Bt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=RAd83Le2dVsnPqcw8VB8cQ1Kgb2LVj3X/lar03cVplY=; b=BnRqCbKTs+sHh+
	zWnoJdvUEd0PmQza8ugRgJxC8z9jZsg/zn14Ya7STfvfWMeiLqItWFveov7qM4A+YQAYeEcYC+L+p
	Y9O070e1u+3qdECSm2eakopYX4UMy6resAjOUg1brNotalw7O+hYhOtgfs1jx79J1aRFHSQPyr8L2
	yPKqolRLhEfM/i7AoE1+lmjcxlYKa91yIVo8u25pdYAjswBzHOZ1Z/O/FSVOg2ZHe+g0tafQYytoi
	ta0elS6dSVdgXpfAs07g9myB5+EkCrPUphUMo4B+9dSJw7+E0O9ZlXrf/iriMnmmnGb94VaFGB4yv
	4qBOQwQYd/9Nm2PK/QZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPmW-0000000914N-0XV7;
	Thu, 12 Nov 2026 08:03:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRPla-000000090sV-2BaA
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:03:04 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D0F472016F4;
	Thu, 12 Nov 2026 09:02:40 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794470560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RAd83Le2dVsnPqcw8VB8cQ1Kgb2LVj3X/lar03cVplY=;
	b=Qhts08BtlVXbJkmvZlFjFRuPF1o9jCg9q6zVQ9cu59GnrvX5xIBrjErctbkpe4oAgUB3jf
	ptWSu4PbjM62sSjlhwoo3ql1c9imnypmvKLZK9ams/z2fcynDt6MjDYhPPXZMGF3MZ1jO4
	L0v5bv7+FN3BgQ1YAk3jUKCEAGS0ZkHuZjvD163eHf0TlYuvAewtsna8dyNf5Rlb5/oelK
	KHoVl3586pjunczYgmQCTIwely1lSoZFjLFAcdZAq5l8fh+jlses9jAJA6h904vGQuZi3w
	ShYZArYOC4/wsN1PJNPZEW71dFBsnYJf+FXn2UN6Uha0jySuInTuD8IBgvnU+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794470560;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=RAd83Le2dVsnPqcw8VB8cQ1Kgb2LVj3X/lar03cVplY=;
	b=gw4UicptZ1kDJUjWo4i7ArhbcMaxD+rKadDZ9z0dFH+iVCxgD3pe9iu2wPtvR7yxjRtXgi
	dhApu5YWP3FlX5BMyuKG+Jd6nXwUMWTjZMhpb9m8ulC0VW+P6u7l2y9Z01WRkb0Ybcfp8T
	/HHYtDknopuVNZiIJuBvUP4czdi167dXQVoWU0a5E8nk+G14FplTX0H8ovG35pSMIP/qyE
	rrAAFq0jgMlShLMyGqfe85M0F713ckeBP1hxKWb7NL+Z9uzNfpalVH513mE6QRojN8SB5b
	rrAxjZuWQ4ozhFxRdWrlxYzcVt+l4oHSqHS06B8L9mWnLBZRjoqnmkWc/oxf+A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794470560; a=rsa-sha256;
	cv=none;
	b=HIjwzaGxLykLnnwA2lgGCU5wWnWWNftu8GJG6//NVVRk1D9kjddIFV87TXs/awRGw9AkyU
	YfvUjXOMA4KNn7w4wnMgV8/XVeov8H4UAY26URyBOKo0QTShr2K91ojJUmeTKuLLct1Di0
	nn3GmNBkPB3LgNl4c+mpC6uCZrWiV5anak0V6iA/DbYoLlGPayxgI+wfqH+EuN7//vDg2w
	25YQ0+CnFPz0UaJjPr+nUBewtKzqgwftyRPI4Wt4cGXr+3N+/ZAXLUFQhourXJKUPxUCNM
	OV/KOPjpCTZmB8KGThqNq2AJLRiD5rCWp3F7TLC8SBLHSrXyf1tF+3vgStRBcg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <732b6ad0-6446-46a4-9135-bb70d9657152@pengutronix.de>
Date: Thu, 12 Nov 2026 09:02:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] boot: drop the dyn infix from the bootentries
 bootargs variable
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-8-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-8-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_000254_113858_BE349454 
X-CRM114-Status: GOOD (  21.87  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:54, Sascha Hauer wrote: > blspec and extlinux
    pass the options of a boot entry to the Kernel in > global.linux.bootargs.dyn.bootentries.
    The dyn infix used to be > necessary for boot_en [...] 
 
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
X-Rspamd-Queue-Id: 18B06200735
X-Stat-Signature: 4skqj9p1s3udcngy4yymrim3sy17gqia
X-Rspamd-Action: no action

On 10/30/26 11:54, Sascha Hauer wrote:
> blspec and extlinux pass the options of a boot entry to the Kernel in
> global.linux.bootargs.dyn.bootentries. The dyn infix used to be
> necessary for boot_entry() to clear the variable again after a boot
> entry returned. Now that boot_entry() reverts all changes to
> global.linux.bootargs.* anyway, it no longer carries any meaning, so
> name the variable global.linux.bootargs.bootentries.
> 
> As the variables are concatenated in lexicographical order, the boot
> entry options may end up at a different position in the command line.

I feel uneasy about this. I would rather leave the old name, even if the
dyn. serves no purpose any longer just to avoid introducing subtle
breakage where scripts are overriding something an argument from
the blspec.

Is that ok for you?

> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
> ---
>  common/blspec.c   | 2 +-
>  common/extlinux.c | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/common/blspec.c b/common/blspec.c
> index 0552e93b79..e2fa4956e9 100644
> --- a/common/blspec.c
> +++ b/common/blspec.c
> @@ -128,7 +128,7 @@ static int blspec_boot(struct bootentry *be, int verbose, int dryrun)
>  	if (initrd)
>  		data.initrd_file = basprintf("%s/%s", abspath, initrd);
>  
> -	globalvar_add_simple("linux.bootargs.dyn.bootentries", options);
> +	globalvar_add_simple("linux.bootargs.bootentries", options);
>  
>  	appendroot = blspec_entry_var_get(entry, "linux-appendroot");
>  	if (appendroot) {
> diff --git a/common/extlinux.c b/common/extlinux.c
> index 1976fe09aa..f502bffc7d 100644
> --- a/common/extlinux.c
> +++ b/common/extlinux.c
> @@ -68,7 +68,7 @@ static int extlinux_boot(struct bootentry *entry, int verbose, int dryrun)
>  	}
>  
>  	if (e->append)
> -		globalvar_add_simple("linux.bootargs.dyn.bootentries",
> +		globalvar_add_simple("linux.bootargs.bootentries",
>  				     e->append);
>  
>  	pr_info("Booting extlinux label '%s'\n", e->label);
> 


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


