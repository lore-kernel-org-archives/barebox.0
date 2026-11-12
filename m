Delivery-date: Thu, 12 Nov 2026 11:13:51 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRRoU-00A0qf-1f
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 11:13:51 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 43D712016E5
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 11:13:50 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hvQNM6rI;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=HNO7DHFQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QthIHEg+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794478430;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=cIAgk5zTh4oJk8JS/CejLkKKj7uT9ZA0n3F/WbJZlco=;
	b=HmaNfB6TkCGCQ729BorRn8b0nm8ual1lNW94kgTfyLYJ8Xc0jI885ifFlyCPadbCd+1Nfd
	O6QlawKUBnh4tZS/TQN0rL3G7d45eA18WLU7VQBOekVP2nEeVPtT58UVvQRKCQsFsI64Jg
	xZHgLHVU1AEzWYEaSMYV/UiBDaGKQf/O5aiZlVOGFY5MVOgorxfWN0MWRI4Eb0r7nIuQqb
	0JwOVc/fdfkH7GhXm+sRIl6r0vGV/Q3Cwf7gwqdEa7XSAoKiqsF9AWH5jAwcB/gIHJKUhG
	PgGLxlayH2ybREMPZcsdYSwSc3wz7dFPsNr3w0Rxtv0JTHBBOfs1ZPfn+uqPzA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794478430; a=rsa-sha256;
	cv=pass;
	b=VdQNNkfNXgco7bGnnRLfiZMvsth9++g3iciCZiJTNmK1lOXiequixSXAaXrkANlT8N/Ed/
	/bgYkypWb/XtN36d8+EbYJ94C6n5y+TcgMlvAjfOmvgX/4I52MDSgPPC/0/P+6p2wJZgvl
	Z6N8w8I58FB8Mxw8VFFk84M/lJSkMp/WEbVksC93wlfaKmWVi3+zTQVS6MG+WhfQVivzql
	z+Wg0wIjAAllN8p99kmRbHh5bWVC0if7MGOAnp+EOjjVwBbs5ilSXyryvNXCgQoOx6OGcE
	GPuabmyjdbADRUk7pMCZct2APnQ2M5AWJHUOQXuFaGuX28MkJzzhZm85VTlplw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hvQNM6rI;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=HNO7DHFQ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QthIHEg+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From
	:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=cIAgk5zTh4oJk8JS/CejLkKKj7uT9ZA0n3F/WbJZlco=; b=hvQNM6rIEPbaMu
	y2gbRFyuUPwMNWNm5JbyNaQQ4bWpjBxSXnLcLmie1OMVFgwCxVx8RffaK4Gu+/P09ieRb4vCdO19g
	pb6V5qFtcUPRuwu3TnMoXV+dH7+YHlr6PSTWBAFn+bzzESOMefiUp9NO+LFaqviMGRZreZ+PrlHrP
	Ic1pBtWwzJnnl1S9vuB45675QKeWzeZ4HroIhyLc6ecedVMlIdISNmMtSli4EipNstWipN7VjsRjS
	SqGHcM6YkJUe/Bw6jBNb0OFpjPwmescllh6Z63JD7oKNkolfuulCWCyzaEMKexNChuD9BHxZ+dJwA
	ODIMSGiv+1MWTAZgEmRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQP8-00000009D0q-0Pm8;
	Thu, 12 Nov 2026 08:43:37 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQMy-00000009CAD-3Klf
	for barebox@bombadil.infradead.org;
	Thu, 12 Nov 2026 08:41:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:In-Reply-To:From:References:To:Subject:MIME-Version:Date:Message-ID:Sender:
	Reply-To:Cc:Content-ID:Content-Description;
	bh=cIAgk5zTh4oJk8JS/CejLkKKj7uT9ZA0n3F/WbJZlco=; b=HNO7DHFQlVOacp0y2WBYd5JGJJ
	r3qMnQDPCJGPIuuRB4nCdbnJGIw2GCLwpt3+m8gjMulUJ9hzDx6XOGIYIyglmzNUeGWbYXd2PtneP
	3IiYt8Mkb8OOyxEL8JxAqDEUY8ec4kbMa3ATgpfXiHEaoM0iyPPBFRGaXFg/kY0cUwT+QeGxZOohp
	VZR0mqq89o7KsDCBEolR0HBOuuInBdjG0Jk18iCJxsqms/Dyr/ImCCQ5DF0hFbwz9hliGUoDzh4NO
	7yAZ+JWYv6PPnZRVYlxXPZh+RVbro6efzWfPiLIZBKW9BjOG2wTrnMOUcQQXc0/o2BnBb1ReNiv5K
	0QgXN0tQ==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRQMv-0000000A4gX-2t14
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 08:41:19 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 1924E200735;
	Thu, 12 Nov 2026 09:41:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794472875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cIAgk5zTh4oJk8JS/CejLkKKj7uT9ZA0n3F/WbJZlco=;
	b=QthIHEg+GiA7MuqUd8hLVapXRpBDnIqGmo5UEzPUKezcq0UtG1s64y1CGN2fachfm8X8Qt
	ZafD6VSOCog/6JHKPVsfi+vqqI1D4UEAPa0c9fVUEFYNqz3Tbj2hllXGjTvwRdgsmUMVLK
	qexxf06PAdqz7ptYN9bGwzNi0bWJnSz83WUq0n4v7uzv080hIX2VA3lsUL5mhETsigpNKH
	yM57OhNsZ1An4IKvb41X2sJIxLFPBu+EkGLZ5P+HOERG/dmbaKCHYNLV2A/wxFEnm0nYVj
	12Swwof61JkaIv9f2Toaj6MJpSfyWfbGGlWVVYIz6QHx+eQk2rMJBGAvmjrnsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794472875;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=cIAgk5zTh4oJk8JS/CejLkKKj7uT9ZA0n3F/WbJZlco=;
	b=EyK0aBd6yBVYt28S+NsH2rGTGVa24EF3aBHubFcFXrgAzzVJN+NdAukl1iLdyt/Yz1YteZ
	CM0ZQwDbOBAg1Koij5fGP6+xDilrQ0jN8b4nKsUWzgVpsdY3w600m4qN/a1qvsHRn1g1u2
	6PIWEY+FXEcjtXTuqdIaNzRL0nqggamIwyaO+aRs21a6PPkhFNmYVnklBxBwAJJAN5oI6s
	iUMExmg5GcwU6saDebfn1YmGddwTmZssDI4AQtlLR03fEsVqL/nzGz2Ow2dxlq7azaAfHv
	Nh+Hg9FOGlpM3njeH3d7z+pLdxpTIOTAlcXud0iYtGviX0sb+pm6sA8LxgdI+A==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794472875; a=rsa-sha256;
	cv=none;
	b=VksxuoKVhcAHzHAug/urd9425fX1w8vHysytTce/fyXotjszOcexy2OyYJn6Ona8LAxQxp
	Qm3C/PylC8NRK7ewttlx+tv3IvQdA4EeWjREh0X2vHj3T+KQuwI/JOXjXveMd4ZQgi6vGL
	wfzLiVf8VV4Stgy/wiCaGugR8JsI2QrxRohfDIRTbMckXvIE0wPwU5ZMSJKwslID4vDvNL
	HaWsmLaT+Jy/w153+lUeJchmDSSbC12ta4Mls29FqKCUKv/q+kMq1UPwuMPMt94BNJ4sRc
	/FLPou5k4uakTYXa90NibhIo1tmqynvG4+eaFjCB0WDBoun1+1ljQD0QL3jD6A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <02acb118-bc0d-4e7f-b053-2a43fd423d49@pengutronix.de>
Date: Thu, 12 Nov 2026 09:41:14 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] globalvar: add scopes to snapshot and restore
 globalvars
To: Sascha Hauer <s.hauer@pengutronix.de>,
 BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-1-a03803e1100c@pengutronix.de>
Content-Language: en-US
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-1-a03803e1100c@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_084117_642235_4AC00D10 
X-CRM114-Status: GOOD (  19.84  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 10/30/26 11:53, Sascha Hauer wrote: > Code that runs foreign
    code, like boot scripts, often wants to revert > whatever that code changed
    in the global namespace afterwards. So far > this is done by [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:900:1d::77:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_FORWARDING(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 43D712016E5
X-Stat-Signature: utgdszzwodwi8td4fbge9cejauwfwjhp
X-Rspamd-Action: no action

On 10/30/26 11:53, Sascha Hauer wrote:
> Code that runs foreign code, like boot scripts, often wants to revert
> whatever that code changed in the global namespace afterwards. So far
> this is done by hand for each use case: either by saving and restoring a
> fixed list of variables, or by putting variables into a dedicated
> namespace which is cleared afterwards.
> 
> Add globalvar_scope_push() and globalvar_scope_pop() to do this
> generically. A scope records the current values of all globalvars whose
> name begins with one of the given prefixes. Popping it restores changed
> values, removes variables created in the meantime and creates removed
> variables again. Variables are only removed or recreated if they were
> created with globalvar_add_simple(), which is what the shell's global
> command and most dynamically created variables use. For all other
> globalvars, which are backed by a C variable, only the value is
> restored, through the regular setter so the C variable follows.
> 
> Scopes can be nested as long as they are popped in reverse order.

As mentioned before, I have misgivings about _global_ variables being scoped,
but we have effectively that already for some variables...

Some bike shedding: I think I like the term of "banked" global variables
more, but that's just a suggestion.

> 
> Assisted-by: Claude:claude-opus-5-5
> Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>

Reviewed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

> +static bool globalvar_scope_match(const struct globalvar_scope *scope,
> +				  const char *name)
> +{
> +	const char * const *prefix;
> +
> +	for (prefix = scope->prefixes; *prefix; prefix++)
> +		if (str_has_prefix(name, *prefix))
> +			return true;
I see that the prefixes have a trailing . to avoid partial matches, but
I think that's a bit of a surprising API compared to do boundary matching
(or matching to the end of string _or_ dot). Just a nit.


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |


