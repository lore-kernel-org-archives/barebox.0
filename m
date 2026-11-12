Delivery-date: Thu, 12 Nov 2026 14:29:16 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRUrc-00A5OH-0g
	for lore@lore.pengutronix.de;
	Thu, 12 Nov 2026 14:29:16 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0EDAF2016E5
	for <lore@pengutronix.de>; Thu, 12 Nov 2026 14:29:12 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sAm8PfIa;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NJ9a1RJS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794490152;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=QyCUTiR0FmTsBg6QF3uT9N5LH2xZEX3jmllyr3hmBj0=;
	b=gDHw03U1bMkSwl4DaqG3VZOQjK8tQAwVJxV+xWFpmN/NEeTBD1+4sjvIlsroOmq/wGFg2o
	8JgMr3IBncieNVK7529gdt6N++C2tEtAxizKbcjA9MAFooWYdYi1rtx1Yi6Ddv98il5WeX
	yc4mHALDNYWyBmkN9Py1fzRdZiKETm1Z5fqVRlt7omEytmo0wqiJhib03Z5h1MKnHDsaLF
	2sA/cRNpVbkfsfhL+WZMFQDIMxRHzyfdA3ta9buSQj0ERkQRIMK7v5UWlpehINyU9nCyY7
	u9NNi60dZlBA4RL5OUwRxpYkDukuLLoDSyQixBXma2CdHAYE0C2RYVcHgjxyEw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794490152; a=rsa-sha256;
	cv=pass;
	b=MRDBL7f6NpnKj29kMAsGEza57zewfYuPhRNKY8M+s1YUNf45IhuCs62R14LRbuJ6+NvdXe
	Rx5xKpA7alVCCAZZ9qosPmKjzeDVHBFxrY1yJtGAaR9zGWosQqcxwUqFcU6PKdF5eh7q4f
	oVz91tIe1MqoheVfe9NgrCKF0fOl5vijz1WOIbUHONfpSrfA3u/vjAWxORgX2nDyruvqKz
	83tll9ZsSDZ+/Q8vIfQ68RaIfvOxEaB6BFcmw1s8H04FnftwUBgg5JXznTdO3qN6KzYZXy
	EMcuVdOV2XYaEWFqgbjsQG/k1LHkZtlTrFXUl5W4HipHgmkGtWL2XE6yMXMAtQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=sAm8PfIa;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NJ9a1RJS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:In-Reply-To:From:References:Cc:To:Subject:MIME-Version:Date:
	Message-ID:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=QyCUTiR0FmTsBg6QF3uT9N5LH2xZEX3jmllyr3hmBj0=; b=sAm8PfIaDm9QbE
	BzOGje47kGIrhYIErl6TH77BZon2nnnHgKaNF8eNgapWeVXwmxSLKe+XBYW9bl6gACRuPb3Aja0Hk
	7FvPSmfRy17wz0eCWdePR3LoK3ap3djVaNXIJ5UggURYPiXzmJGvFw4hFaByMyqfZuyUR4xBfoaYj
	3xwy4w2pQR5pJu3YyJ9Ql7afs02ozphH1moQbz5wgoxISBnXYprRePpcH+l1+6ULiRDmD/jkawUKy
	0snqv+kkrW50kLcU9GqZdUT7+BeiJh1dlnkNoMqEX6qPy+Q8LKgb6o1CJZudhGTfYpxNEnfEFCnsB
	DAvdOru2mlEJyHxPsR8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUqS-0000000A4QE-2Qee;
	Thu, 12 Nov 2026 13:28:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRUqP-0000000A4Pf-16CH
	for barebox@lists.infradead.org;
	Thu, 12 Nov 2026 13:28:03 +0000
Received: from [0.0.0.0] (ptz.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::77])
	(Authenticated sender: afa@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 58E1220067C;
	Thu, 12 Nov 2026 14:27:55 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794490075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QyCUTiR0FmTsBg6QF3uT9N5LH2xZEX3jmllyr3hmBj0=;
	b=NJ9a1RJS6AoeWHJ+A2dSg0dv+NcUtcBlTGPRyuz6fK1DwVi0/m/MV/3MNn3w9To01J4Azp
	GHb4Bib6XY1YqYZ4Pr0DUwb7FQvGQvzwomv/JhQ8QecOquwd44+9Wf+26Re/Bsgo72nEal
	KvtEJnr0LWBRL2ou5Z8QIJO0Mx3AmMiECULGtirMQHFM6wHjsp14FhdzKz8AG3ugB9C5kD
	FYhZOam0u1B3KtXOWdJ1HyHqh82kjfB9V6f+j9SKXvTMuVwkjLglMIoEHY5tqmd2gx/xPT
	TTFaU8QMbCF6BCIq76+R9T4dQjxYOgOyWJgi5A9CSbqn345S6smEw9ps6BG+8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794490075;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=QyCUTiR0FmTsBg6QF3uT9N5LH2xZEX3jmllyr3hmBj0=;
	b=AKu8tJeQ+tr2aRuxN3sY3qljpif5vWww2ooUNL9hH/0TrElvg1RyKLeapJ/ncLGCKgIz6t
	1HCXvIySRAMfrFSqdk4qKbd+yahsA6cF5kAtrC7TJxx4vL4EGN6McTRqCxbsFGdR4Y1Xvb
	LZH3bGirkNTcm1Rv3uLx3FpmyTG475YLJmwbGbp1aYpdbuo1jY/MHTXFJjLQjCKEirGVvt
	3+/avxannFFZl3gAlKl7cTGxDAY8NtNeGr0N7AD9pMZn9+4Omh18XWvsw87kXlMrWl9SEW
	FHQrJYekV5bLiUG+vK+pR9K3EiZhMlbt8pM9r+13NCa4LrtpB6gsFyZoRZZh5w==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794490075; a=rsa-sha256;
	cv=none;
	b=eVGrN92zWONi4WRsP5pmIGB+SuAh5K8i5fi8hHP7fJ75xpzhGd7d6pbQ9y3ex4Rv9iGgMH
	xv+f59F2vbMf+goNXs+tOSQj0ou0q0/r+h5cLzYGmjCT97DNtrGXal3D4ZWfqSvBcOB+od
	xhiDgm6Ff8xR7EWOmBy2xrVJJy+05rIqLS9N5Vs5vbngK9y2B3YHzCEeXJdmK5yQsCX7je
	h7H6PzyjMr7L3MeZRFpm+D4epBaOxsqT8eBSqr/3oYBq3LCMxrooUY2zkAug+YCCW1GU2d
	bz+5+0CBHnk2XftViQFEwuJhhS5A6ooXNBeGyjMOl848GtREUZrUgDwR5fnOIw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=afa@pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Message-ID: <df88172c-e79e-400f-b485-fe23083a40e3@pengutronix.de>
Date: Thu, 12 Nov 2026 14:27:55 +0100
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/10] globalvar: add scopes to snapshot and restore
 globalvars
To: Sascha Hauer <s.hauer@pengutronix.de>
Cc: BAREBOX <barebox@lists.infradead.org>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
 <20261030-boot-globalvar-stack-v1-1-a03803e1100c@pengutronix.de>
 <02acb118-bc0d-4e7f-b053-2a43fd423d49@pengutronix.de>
 <e330ff29-4aea-40de-b3a8-0a8060c7d520@pengutronix.de>
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Language: en-US, de-DE, de-BE
In-Reply-To: <e330ff29-4aea-40de-b3a8-0a8060c7d520@pengutronix.de>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_052801_462013_B5AB90B8 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 11/12/26 2:25 PM, Sascha Hauer wrote: > On 2026-11-12
   09:41, Ahmad Fatoum wrote: >>> +static bool globalvar_scope_match(const struct
    globalvar_scope *scope, >>> + const char *name) >>> +{ >>> + con [...] 
 
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
X-Rspamd-Queue-Id: 0EDAF2016E5
X-Stat-Signature: 76ttm45gxfptn5ca9twyug8ujx57cugd
X-Rspamd-Action: no action



On 11/12/26 2:25 PM, Sascha Hauer wrote:
> On 2026-11-12 09:41, Ahmad Fatoum wrote:
>>> +static bool globalvar_scope_match(const struct globalvar_scope *scope,
>>> +				  const char *name)
>>> +{
>>> +	const char * const *prefix;
>>> +
>>> +	for (prefix = scope->prefixes; *prefix; prefix++)
>>> +		if (str_has_prefix(name, *prefix))
>>> +			return true;
>> I see that the prefixes have a trailing . to avoid partial matches, but
>> I think that's a bit of a surprising API compared to do boundary matching
>> (or matching to the end of string _or_ dot). Just a nit.
> 
> How about using fnmatch()? prefixes would become "bootm.*", "boot.watchdog_timeout"

That would remove the ambiguity. GLOBALVAR already selects FNMATCH, so
why not.

> 
> Sascha
> 
> --
> Pengutronix e.K.                           |                             |
> Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
> 31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
> Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |
> 

-- 
Pengutronix e.K.                  |                             |
Steuerwalder Str. 21              | http://www.pengutronix.de/  |
31137 Hildesheim, Germany         | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686  | Fax:   +49-5121-206917-5555 |



