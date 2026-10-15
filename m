Delivery-date: Thu, 15 Oct 2026 11:54:13 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHIA9-00DrwI-1o
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 11:54:13 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 5EBEF200467
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 11:54:13 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TP4fYZE8;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="J/zzgwKk";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792058053; a=rsa-sha256;
	cv=pass;
	b=ck6C8rFde9ZmQZaegvE6EHEvYEKqOwLm5jq/2k7W6Tvmi7V9tw0GDpQk3449pp1pEXJ96k
	IDB29blqcS8NcIeiu+jZLck9spTRfSxeO7yjb37/ewMutfex4tHFL/4wIvqZygNJTr3ffn
	kPqlrH63Aob1EIChRRkhk8IRPTc4jJ6cSCLn7tvtvglRIl15oJk5IgCTQl7KDz4/Ra6RMl
	1t8AoY4GMZiiCibJfOy06JiXjcr+NRYHsnTpVUkgK7A3n67nMN1VOUHTD+9qGq/+YFayBG
	+0zCwzkKBjs4s2DElWxkBwSFNGwv5TeJ0Vuw1BCiy7scCDc6XtDTQRWWMnmGoA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=TP4fYZE8;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="J/zzgwKk";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792058053;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:in-reply-to:in-reply-to:
	 references:references:list-id:list-help:list-unsubscribe:
	 list-subscribe:list-post:dkim-signature;
	bh=0lUQw8u93Y7IAFttiJ4MZ4FXm4mYoVheVoz3JrWuBDI=;
	b=dW1kgIbvQ2d4wYMt/KLRRRdM2lcSSCvSNDK/iXxE8JyoNbEmkCctrBemLuLf+k5jy5K20R
	MLJ158fPCb5ClAqg1R/NhOIiaiIpIZG2DIKTk8r2BodVzYYFgeFXT7aXS+xdQOc/Kj8BNe
	iaNIYhRzPyPL1ln9g07TFKUYixg+J2VQCUpF9G2i8ERBAdq3sIBbkMBDtHw3T73k3wqrpu
	i+zIJzaTc1S2PVOm1XFC5CQSnObzMyD++6euqvRfz5VTiN4a9z8hDUOu/8X/uQ8oTXDY31
	gw7qNFC0LuRlldi3RqQoDbGs7mSmi6xNBM4das2E2j2nhQ8E+2wof0jd484FQw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:Content-Type:
	MIME-Version:References:Message-ID:Subject:Cc:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=0lUQw8u93Y7IAFttiJ4MZ4FXm4mYoVheVoz3JrWuBDI=; b=TP4fYZE8wHtVoIqpm1EZ3JmLAB
	Veho00KzVbYVOKwB7d3h89D23ir4tbQHR2vrjdzp7QnK78kCWMerMX9291rm4fH3h9+uULHG3bIog
	D5KL+Sv0XKojedkzvd4pffUweiE7Ub2P7fdkmAKPb0Z58lwOdRIPKZJFcQ5RSmxZ2LCdwupiHjEc9
	wrlCHSWHTDqR1R7XTYT4L9ad9D1L3t2fdgfF6IwIcPXD36j+MtY1WPeZrD6ycX+yw3jtRw9k1UPg6
	z6T/5Q7q49pcN2CboeqEAbNC8OkieGhr0l4UmuqdJ3Ak+1Jm3qJ5yl0zCJU6JUJj5Ghu9a4PBXaFk
	exgK/akg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI92-0000000HLed-0PG5;
	Thu, 15 Oct 2026 09:53:04 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHI8z-0000000HLdS-1hg0
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 09:53:02 +0000
Received: from ptx.office.stw.pengutronix.de (ptx.office.stw.pengutronix.de [IPv6:2a0a:edc0:0:900:1d::109])
	(Authenticated sender: relay-from-ptx.office.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C925C201D35;
	Thu, 15 Oct 2026 11:52:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0lUQw8u93Y7IAFttiJ4MZ4FXm4mYoVheVoz3JrWuBDI=;
	b=J/zzgwKk9k8NXL29QEvY4QBnkC2wh9PzDwKYnktg0GNMwGiLx01GNyLQsKJeWMV9RDs/jG
	clg8cAEHufKnHzDc7boNrh7K95x+oVOVMfaRSZJmQ69W53hAYytN1+E4vQmt2JHp1XWgIN
	K2KsUrdsnz7oBGCHNzbLUqna1+Qq4ge7gJoYhYHUy1pMhjoUmxYBlhj86FGkUPJtbfhpBe
	QMNlGqb4aFkqnKHD90uSSDXWDWKnPEjO8nirhnMewJVebysWxMUfJ54tmnKVhCpdrlLKEv
	YivP0k2P9uev9ofxyctY79H6avZ7dzkusPlICCS78JgxQiGPNTvCaEBPK/1ulQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792057979; a=rsa-sha256;
	cv=none;
	b=f28r22vz0qYhJofMvit5/hthw1w1zrEzvfwv+u721zLzL8YC0d/gHEOkOiP0I3FZkUVazt
	gjoPqCcK8bj+Vedi5WJtc+YSV+YCtRxyuQNJ1zKVvFoYoKuv5yPzCtx1dBmhy8ISm0m7id
	5pj6fqIEh+i8RH3JWmJnJIo8EJvSmhc6WjOKphbJtTjixvY4QRSzxfVnsHo5U9w0vrg9EH
	v1iTOsRlUR0Yk1EcGDw9np4gDRqIq2OsRQhcvfbB8Kui60grqRcQ+gskLnA3LgnWq7813X
	FeyoUaEqRpj3aFR1hTHITkUMFGJRGRCO9dDkvjjhwBRDbdv9q4BqGNqB6I/oJA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-ptx.office.stw.pengutronix.de smtp.mailfrom=mfe@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792057979;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 in-reply-to:in-reply-to:references:references;
	bh=0lUQw8u93Y7IAFttiJ4MZ4FXm4mYoVheVoz3JrWuBDI=;
	b=Vnkbh27ouUn4fdXbjVylhI0mxcpDdKwwuGRSznuHivZj7pmG4cT2AaT1lolr0JNNsMpaHS
	pG4As0Z4+mrjkFAvSO4E0yD0ZKVT/LiZcJXOPZhluRn18UgQJlOPNAozWX4oZiQShJ7WXr
	blZESDfD1ClpZuhmEk6/JkaN7v0ZjFBOYx8kRG28fFF209aFIic/sI7OEng0U5FkPZMPvY
	BtvExokPy9watzkYOE2+Gjq3OXVUp4ZnSAaIakMG4yngPvJknR4dgBYQj9nRVD2o+G3Eus
	wg5HYiiInvNGeZh8Wg7FVnebif/DDvFrH1oXJT6tVBIarx7KxNwGZQg7+GULUg==
Received: by ptx.office.stw.pengutronix.de (Postfix, from userid 1064)
	id AFBCE1BFD5D; Thu, 15 Oct 2026 11:52:59 +0200 (CEST)
Date: Thu, 15 Oct 2026 11:52:59 +0200
From: Marco Felsch <m.felsch@pengutronix.de>
To: Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: barebox@lists.infradead.org, fpg@pengutronix.de
Subject: Re: [PATCH v2 03/10] common: bootargs: drop legacy bootargs fallback
 with FLEXIBLE_BOOTARGS
Message-ID: <xdorqae5iljhsle5zms5fxqfefu7b7lyzkxe3tkekmo67d7kge@vm2wm3o44snj>
References: <20261015092308.146516-1-a.fatoum@pengutronix.de>
 <20261015092308.146516-4-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20261015092308.146516-4-a.fatoum@pengutronix.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_025301_596615_3B69E343 
X-CRM114-Status: UNSURE (   8.20  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On 26-10-15 11:18, Ahmad Fatoum wrote: > linux_bootargs_get()
    falls back to the legacy bootargs environment variable > whenever the concatenation
    of all global.linux.bootargs.* variables comes > out e [...] 
 
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
	BAYES_HAM(-3.00)[99.99%];
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
	RCPT_COUNT_THREE(0.00)[3];
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
X-Rspamd-Queue-Id: 5EBEF200467
X-Stat-Signature: gjbn6emenmrr9noxckz6tqseiradmfzm

On 26-10-15 11:18, Ahmad Fatoum wrote:
> linux_bootargs_get() falls back to the legacy bootargs environment variable
> whenever the concatenation of all global.linux.bootargs.* variables comes
> out empty. That contradicts the documentation, which describes bootargs as
> the CONFIG_FLEXIBLE_BOOTARGS=n way of passing a command line, and it only
> worked until the first boot entry had run: bootscript_boot() registers
> global.linux.bootargs.dyn.ip and .dyn.root, and the separator between the
> two empty variables made the result non-empty, so the kernel got a command
> line consisting of spaces instead.
> 
> Drop the fallback and return NULL when there is nothing to pass. All
> callers already handle a NULL command line, as the fallback could return
> NULL as well.
> 
> Assisted-by: Claude:opus-5
> Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>

Reviewed-by: Marco Felsch <m.felsch@pengutronix.de>


