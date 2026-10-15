Delivery-date: Thu, 15 Oct 2026 14:50:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHKuZ-00DvOu-2a
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 14:50:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 31CBC201BBB
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 14:50:15 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AWmu3x91;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Xu4tuYDZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ggOfvfIn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792068615; a=rsa-sha256;
	cv=pass;
	b=gSgJad530DVEhHk9fpO7lXUTsT29ISvHBHg8NtcYImNahT/qFfOc5lHhKUhwTmbuJmz/mi
	n1gU0orLlQ63Ggzfru6WWC6aLRX+6ZQjovFouw7O3OFHdvzt6ISgEuRHMjAEzKVrN2fPlr
	RzOagFL3lniYALG0uRG6e4WjDPs00Jf7iuR2XFRK+bXW4n+sn4wcQBWsTlN2oCCbtSy78Z
	nDEQfimtV285SKLN6a02jgSjRv4czu7kMN3ejwBkN1Zeyy9MIJNlE1/k3KU3dJxqJBspso
	0v8tI62yy2NALnXI8+aRnbIOteE/pmlcKH1OcatRAZPnrwV673kmpVnIORm5YQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AWmu3x91;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Xu4tuYDZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ggOfvfIn;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068615;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=66h38nV93hKZgIHTQgoBzUsM5WFRiJmzoXYMoAAWro8=;
	b=RfJdFZLXhmWNVHFDPLVpPy+9+tdqr8r1Be0GW7CsOt+W96BOP1M95JQTNHS8mORBCHclmF
	6lTmm6pzxSy97VvtNKuZ1oQuWDU2GHoQbTGweT7yUgY/GGIBHhDAjGNqLK6Z0kJZ9YZVAt
	Rj5yDlatqtPREWkSiCpZTkDIN01hyEdqIY2eCRNqcnyp8DNi03Vc6OMLTgg4pemW7guLT0
	d2RyKsp3kde7ecP5n9G+yHFq3RRnkMLUUJ03oICd30f+5LEEFygom7WPlW9mXKp/hHpFgo
	TGEYDvrUJQUX7LXdJuLLazLrQkZNad8wyVRlXiwT2jiIO33ir3fm6xMf77OaFA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=66h38nV93hKZgIHTQgoBzUsM5WFRiJmzoXYMoAAWro8=; b=AWmu3x91XvdMZ/K3bUAtNhIyFI
	2Z1cQlQb0IqQOTw7PvQybaWYftfSw1rCRE41iguorB1mxy1IHPKxkTsHWPtPaRt9y4PKqm5wdG+pt
	T2xnURJvrVCXig1TqNjPjgTR70SKkVfP+bfMfYTrAS6+r/d4706L82ZNo5WcR70iLDoU0xLjv3+k3
	IS6NrP9uhLjo+te7hOrwH1HVPtvyeycXSrgWGweKu+Nx53miakZyfZ8Pg+iy0I69Pby4mkDeLTG7h
	cWV4YvNZWPSjZzN1Yn3+4zs800B9goJWkn1QAbSzYYwX1kUKCyaoktl0l4OGNtmgHFI8FrMTpJvI7
	DX/1VNfA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKtk-000000009tT-2bWf;
	Thu, 15 Oct 2026 12:49:28 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHKti-000000009t3-3OWu
	for barebox@bombadil.infradead.org;
	Thu, 15 Oct 2026 12:49:26 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:Content-Type
	:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:Cc:To:From:
	Sender:Reply-To:Content-ID:Content-Description;
	bh=66h38nV93hKZgIHTQgoBzUsM5WFRiJmzoXYMoAAWro8=; b=Xu4tuYDZSWV69RbLLE7UdU0BXn
	ijIqiVhbnfMuprN6AHSC/vfajZTQ05iShIF9t1Weo0HfNqab7z3gdiF6Ercv3sebdplaly3fxpz3K
	5ivaK1T7Z4uckAODZOWyUUgUMFiqz2gS6ULnymNLqPWs7IFhHlIoBObKy2zJ0I0md/KsctMfqQgf4
	cmn++OB8/6Kc5iB9d96QbkgT9D+Ef5UGwEf5P91JkKsQb2rX2SPd1KWH3SEPh3w65j3hj82OufOYb
	2npzqRiyjS3sZeTyiy/trHTjJFAPRw/FaIDSHHTCNec8UGJrtPGH1RoPfl8rArF0Y/TvpDg8OQRF9
	X+ukvEWw==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xHKtf-00000000NGW-09pA
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 12:49:25 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A247A201BBB;
	Thu, 15 Oct 2026 14:49:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=66h38nV93hKZgIHTQgoBzUsM5WFRiJmzoXYMoAAWro8=;
	b=ggOfvfInPz6ioklvsSCEEWfLmx8ZGjIf5P/5PZ9FjRrEXCpyTQY5vsWc30pro5/oNcj9zH
	6P2GLQLatMZcYg5VTkoHQuUGRbMV8CqSzil3iLYUrfl2KUQWt/MRwdL2u3Mijlq4q9zgaV
	6qAV6cUykEPoc7Q9c29QWLgqDyU7Lborc4RaiFNScdJ6e3FabIuNqYjcJwjPbTi174jpdr
	4YJt1QLzxCI+7vOns2rPbEK+gigHNkLMcrHYk9ltrNYGq9hlDEP++j5NZqUz2Vcc/mkas0
	4qcwH62hmh9X3xFnZXZLi/BDOB9IzTexUPLUES42YBRdVUSKqHJ1r3m00jQHYw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792068556; a=rsa-sha256;
	cv=none;
	b=C9h83rcDKBRiYGk3pXVD31d0II/zUPJ40QfIj5U7UCk8O+jezSn+piUc+AQGpB5ISb9QRe
	ePKWFBEiW3VHOc3f6i3fr1gdeZYmnC9pWguZIEgykqRAbex3yBIUJ+c1HX0hp5ccXT3MLN
	OxamT2XcgqeIbYGQhY8o8uumRB+RwbQCTPMYsXyqR1AsSozDCtHkmDZ4v0IZWKQ66suCj3
	yUsZiXMITuJQRrLLPLJZsLy/ZCq9XxW8zTJXFQ8JC5q3p0vpL67w9aT2hV+MTzmN+gm0XG
	AhEX2nXg6LiEHn2yUfVVG3acedioWGdbx5b+fyIJ2Ogk2EBjKYkPEYx81MvK7Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792068556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=66h38nV93hKZgIHTQgoBzUsM5WFRiJmzoXYMoAAWro8=;
	b=CgwC+uRzZOU3vPHz2y4hPWEJ49Dtjop5OMTrf1tLI5b6q3oBxoRylxnDekcds8mHVjXNVI
	fB0QBk31OMGXZvnLCfDCBJmE1XoqlFa4LG1/2rCv8obHsZjOGYiUPJZ75cTIyDKPiWrVuQ
	0G/PB9+Jf3DN7zVn6hPGuFVGViiCiLbBWdkK2AQE4IEiZQFWP+FMUJI2FtQL2jSc7FAkrE
	chTfrIy4oJF4ekiQ8x2+14Frv6hwIT24Q55SsZMwo/McQ10wZcv2ZLp5KgOBJzUBDr75g+
	NexPPd3D4OmHyG0QcOIeKaswygJRFLIGPdTnOqHXwHb05MF8C62jVvvcdIOifQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 94A76FFA00;
	Thu, 15 Oct 2026 14:49:16 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261015112949.2983458-1-a.fatoum@pengutronix.de>
References: <20261015112949.2983458-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/2] Documentation: devicetree: document overlays in a
 FIT image
Message-Id: <179206855660.1645184.1577380271748086145.b4-ty@pengutronix.de>
Date: Thu, 15 Oct 2026 14:49:16 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_134923_409005_CD1AA4A4 
X-CRM114-Status: UNSURE (   7.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 13:29:40 +0200, Ahmad Fatoum wrote: >
    global.of.overlay.path may point at a FIT image instead of a directory, >
    but the documentation doesn't say which of its configurations are a [...]
    
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-60.80 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.96%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 31CBC201BBB
X-Stat-Signature: m5atwn3mpg7hshwopwpohw8kcsgw1dj4


On Thu, 15 Oct 2026 13:29:40 +0200, Ahmad Fatoum wrote:
> global.of.overlay.path may point at a FIT image instead of a directory,
> but the documentation doesn't say which of its configurations are applied
> or how they are verified.
> 
> Let's add a short section on that. Unlike overlay files in a directory,
> the FIT is verified according to global.bootm.verify.
> 
> [...]

Applied, thanks!

[1/2] Documentation: devicetree: document overlays in a FIT image
      https://git.pengutronix.de/cgit/barebox/commit/?id=e8629bd46f02 (link may not be stable)
[2/2] test: py: add test for FIT images in global.of.overlay.path
      https://git.pengutronix.de/cgit/barebox/commit/?id=4dea76685d22 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



