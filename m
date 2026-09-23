Delivery-date: Wed, 23 Sep 2026 10:30:35 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9IN9-005Mot-2f
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 10:30:35 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1B1A3201FFC
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 10:30:35 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IgdWfniO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XO9VxcqJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790152235;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=NtQsRdDVkZZRteRkjtcGmh8G2OTtuWdOADNCOq5/rVg=;
	b=GX+f4KZkRx3XeWjaNhikcQR5ox8Yh/eVERyEAzjC3avlG9JoJ+/MfgAU2YUFAyc/4DDmC2
	tsZ/E7zJeHRqasD2QGt6ymusoOKiOOASPWUbYDjSZC1SPiHK5mM8EpFzr2ALMfkWGBy4Z7
	0OdIfoQ19Xzj9g6tyrkFg6W0z3Llsdh6uxyyeymcHOAvDOysq+LbYU+zjcaadp2aoLHMt7
	sDTWWRC42eWygj6TvmUVqbpuoNdECDGCc0rGLN9YTNzq1wP6jAFucqgpupdpMWWzDC6HY3
	/74h6BZWpiIM1cxwmN6hKHfY9FFMgIMASkKnTnnsg2uUXGJ8DaqFeJsR/Tx2qg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790152235; a=rsa-sha256;
	cv=pass;
	b=CGs7/lLO+Jq/OvX5dTmQ+2JEI/eFAGNraoM5L8FoOiJrO9K04VEK7emsuhzEHERZA3pBDr
	w36Vv8R/bvarM9MTrgOaAyniMurWp8Z1GtvrrDpC3IVuQgPzdcelgWR/gTXRVMexBm4W6A
	UTUXpBkx3BqVPEOwMg6rwG5D//b2T6kfBjmS594awQ6Pg3vzvGfvjizpt12VBMOafXA+hp
	cPDM79Z+EXxJ/eg9Gz17ZEky5dqznCSZRUn3Ju4unZqz2SOmerR45/NqNup/ID2qv2ODx+
	puVGrVRvE6ypeuE7yMkbrbrvgooZKrbiut4r9ohMT2OJPUBaGNgJO9LR+VMxgA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IgdWfniO;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=XO9VxcqJ;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=NtQsRdDVkZZRteRkjtcGmh8G2OTtuWdOADNCOq5/rVg=; b=IgdWfniOejr9Q/r4AcTMkDYWvB
	rOz0gyUTbUJSUmds3ljbe/N25NTRaITqmgT0aDkzXrpKTsBbFzTLb6BsKNF47nf1BzEnpbt/RqRa7
	s01RZmuEsJ7VsGgCv4pzeBxX/XoBIseAbuvaaiCF2RekqxAXTaM5L/QMGUZIn0VqdY4xFGlLh9ltR
	RQFWN4z7kpoVMOc5R1q54A2a2Y46mhRCHULar812WPM6t7BjG+0ZgIeFJskNUFsHbFzMLS02xPFNM
	TVqsxJ4+p0P++3yWisWf1Q2QJgztLEWpUi3Z15ev4byRsxiwItsyerq/i/Yvgh8ZABTKs815kfsdA
	NSg8AJ6A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9IAa-00000007V4Y-3gb2;
	Wed, 23 Sep 2026 08:17:36 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9IAX-00000007V4D-2zDQ
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 08:17:35 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B600F20075E;
	Wed, 23 Sep 2026 10:17:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790151451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NtQsRdDVkZZRteRkjtcGmh8G2OTtuWdOADNCOq5/rVg=;
	b=XO9VxcqJs/FaF6aGSG6W2L4Bnw2lLAWJ8Cr1lBn7ov9muxfXOjylH4vVrzGMEznACl42tm
	sGPaEX1kM2RQ3iDRU0zmVPxE1l3O+4bHx+wLZ5ePE1UKC5WKltTp7iE0/rqWdmroxj55g1
	EgwDMWRZgJErCy7sczeIcv53WDyVDmjfRmmGJufnMp0VKZ6h8n3q7kn0aSqluzvDSrrvjo
	CYxZNz3CGiq/sJc4PC99HjcbYccjvVTpig8K/xD+7tx8oHcrG0Hc0+qi1K8tuzQlkgFlbi
	uJUlHFlFAKa5gEHZs7UWVAHwGmLX1vD2KZlxLmECd6TI4I2k1f12p8jZHo28XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790151451;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=NtQsRdDVkZZRteRkjtcGmh8G2OTtuWdOADNCOq5/rVg=;
	b=eLaoSGsiNtqRHjjY/PsVlhY2cBWIq4tMwxJ8HHIu3F4yOPnpiq86rvzEpHT7bUFgk9pDwJ
	/eqmL/XnF7gEE+Rlk0VOYfyNsVCiNQoSKlItYHV95UjafJPTVh965MgcKZk8d3oW2Saz0y
	yFZLf3Zt07gSKasP7ijH1EUsx5gRYeb6+qKvCck6+9xD0vIjrKTc5Fp+DUIPQ2Jo66uk3m
	8OSNK2Gy1KFhSXj0LCcwMV9oa2MuNOmXRIlzAckOibcYL5D6/n8KS77Br3kg9qmbwxjS0H
	8rC3IW2HloAsQPxYfJtQUiKaUyiGs7N61kbuMTfuPR6YgF7ARRgdLXsp1EwlKw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790151451; a=rsa-sha256;
	cv=none;
	b=CevtEmC+lHSrdVDi4MjuXBTtbUdXJBK6Tb147IxZvk3wEmwrPs2ddg4SAPpCmlaT5dkKH7
	Uvf0GeshWjTr0O7TpnMBz0pA9WTU4tH8grMlybnxEKYXyxtWuTwsdS+qF5jpfzIkhhXjGM
	rsPLib+iv3R9OMKBr74KEglQnVZ4/TvUto3rCotzAQXSi3dRsGbTDgTgSFUIQ01rvUieox
	GmcjJ6Tpw7qw2lsh0sVKyuF4SsqvEgPV6xMwTWVgJ5E2gmF36cOIwNXWgHS5EjbNZ//Q4x
	f8hJ7EHSjXqyiOKVeHY7IZKXtCxQqThaEzZL2rpbjvu9UDYfj1dMdoY9bpo9OQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <2a8db0f2-888e-4cd0-86d9-ca3fe99c64b6@pengutronix.de>
Date: Wed, 23 Sep 2026 10:17:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] test: check-security-policies: mark the source tree safe
 for git
To: Sascha Hauer <s.hauer@pengutronix.de>,
 Barebox List <barebox@lists.infradead.org>
References: <20260923073000.4124447-1-s.hauer@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <20260923073000.4124447-1-s.hauer@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260923_011733_908829_8ABF9179 
X-CRM114-Status: GOOD (  20.56  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 9/23/26 9:30 AM, Sascha Hauer wrote: > The labgrid-pytest
    job runs the container as root, while the checkout > belongs to the user
   of the GitHub runner. git refuses a repository owned > by someone [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 1B1A3201FFC
X-Stat-Signature: 1spgqgfuz6mcaaf3acmywccg8qi9rafp



On 9/23/26 9:30 AM, Sascha Hauer wrote:
> The labgrid-pytest job runs the container as root, while the checkout
> belongs to the user of the GitHub runner. git refuses a repository owned
> by someone else, and the final
> 
> 	git diff --exit-code -- '*.sconfig'
> 
> then never compares anything. Instead of failing with the ownership
> error, git diff treats the tree as no repository at all, falls back to
> --no-index and exits 129 with its usage message, which fails the job:
> 
> 	Check security policy configurator
> 	Process completed with exit code 129.
> 
> Pass safe.directory on the command line, where it still counts as
> protected configuration, and check up front that we are in a work tree
> at all, so a future breakage of the repository lookup is reported
> instead of being mistaken for modified policies.
> 
> Assisted-by: Claude:claude-opus-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Acked-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> ---
>  test/check-security-policies.sh | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 
> diff --git a/test/check-security-policies.sh b/test/check-security-policies.sh
> index 09b5301590..946a1ccdde 100755
> --- a/test/check-security-policies.sh
> +++ b/test/check-security-policies.sh
> @@ -71,5 +71,18 @@ for O in "" "$builddir"; do
>  	make O="$O" mrproper
>  done
>  
> +# The CI container runs as root, while the checkout belongs to the user
> +# the runner uses, so git refuses the repository over its ownership. git
> +# diff doesn't fail loudly in that case: it falls back to --no-index and
> +# exits 129 with a usage message instead of comparing anything.
> +srctree_git() {
> +	git -c safe.directory="$PWD" "$@"
> +}
> +
> +if ! srctree_git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
> +	echo >&2 "$0: not a git work tree, cannot look for modified policies"
> +	exit 1
> +fi
> +
>  # Catches security_oldconfig rewriting a committed policy.
> -git diff --exit-code -- '*.sconfig'
> +srctree_git diff --exit-code -- '*.sconfig'

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



