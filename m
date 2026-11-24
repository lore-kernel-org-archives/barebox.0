Delivery-date: Tue, 24 Nov 2026 08:03:13 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkYb-002iI1-0Y
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:03:13 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B7053201A7B
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:03:13 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IW37MGzg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GnSXtCtT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503793;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=xCGtwtnnzY1kgkpqBR6f4N71EtlYzNoEflcRRLAx7ME=;
	b=J7QA77y0JxxEte9XM4nMUp02KTURQG3dRh0C7oYSvFombvin0tKu6eRXQazQSEJEbdza5v
	O4uesk1VhrIaPHJmNYU3pRgRtByYdjpLZVgpkf78gNRV+aw1wo0klEBVpehXHDk4Yvg/rz
	eQQVhwNh7wpWvzuha/8LyXkeRfd1pmT5IAdfUhX1sxvBpPcfTI3JY2WdsqN/VcfQuWi7pQ
	4nKZtDmXj25eVZZRoZwd8oUkTi4Zhzfow1EfkGxsphlVrAVtsqvn/UPcmvBiWLqTmKLqGF
	jz6QjAJ2QzgCzL1wpWhUHNgtmUKaSONU1L5szsnKSQasIqDzZwm/ImaNTJ1+tA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=IW37MGzg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=GnSXtCtT;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503793; a=rsa-sha256;
	cv=pass;
	b=KsvbH9I9+2M8r78ltJpd1kyVyHRb2HemO9rQDQGlCpj1LhSmV3mSCWIS6DLNsidUo036n8
	4adT5kwdgaV1KDl/RSMlpy4wiSbxq3z4Bd5KcQ7bE9eFD+P5xPlLa09BaDojs3XwNyNqxw
	gTKMirJCshvW7hJ0Ut/SQNg2t0WVtQ4yhWBVMha0/cDogcWJ3j1Wmn5zsI2jMevALAumiw
	+q7lnDqJPetnVC1dHZdJNORmDYX4BKSVHIiOM+tylOZQ20qxfArGJTpJN6Re4kQBnytOJG
	QTvK3L+sZn8iWULYZ+xmyCSLtIWRNcPKNGfxykc9S2114XzcrNodBsfvHgsNHA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=xCGtwtnnzY1kgkpqBR6f4N71EtlYzNoEflcRRLAx7ME=; b=IW37MGzgdx2R1n
	DLtZ+sQ80vDlrvYPNJWDOF1SNDpFhm2LQb5+vmfqlOH6zMLDEVwCLahKLdNL2F6Iw6RGCH1onlIpx
	ubeNP4o9lQDUB+iKpAOFbMR4UxcKfCY9vu8mWD3CILJQB9y8A/x5lS1g6cK7fHxrvVHBAx7eQeKrz
	F+nCP5qk/tX9BgHKpAn3zrmi5/7Sgc5ksAyMTtlN6ziPBpe+j+Wq8YLk9cisq0PQvFrmlc4gC44K+
	0Q3ErwFL6Cci1360sKs/Y5d6UivtndR+gzuzI57Wc9nVMCJMUeyggr/93fkU0i9xEnFaaLyOblNdn
	X8HANX+adMxXcFpZeaoA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkXC-00000005hjA-2s6v;
	Tue, 24 Nov 2026 07:01:46 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkXA-00000005hiM-2ToK
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:01:46 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 90D16201A7B;
	Tue, 24 Nov 2026 08:01:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xCGtwtnnzY1kgkpqBR6f4N71EtlYzNoEflcRRLAx7ME=;
	b=GnSXtCtT7lpDdvn2c3a1oZ9sYJuLXQEC9ZO1pGPeRikaUPfsORfAi/oc38CV6IKhFdqpNn
	2R3fMVGfLhG6rd1iGWdYzoVDE7BLRyiY/ZlEIddiNYmhoPAkFFbMwqSj1Y63I//sa45d63
	yMwvLAt5rAI+ZR1RxK12QeliFRY5/fQ9wTPbcS54D+h5pEG6Y+vCxfzmkSHixynTHQ2IMa
	EfjE/lwMwxX5cPdl1pxC3u5OXgb5881VB2fwAagQib/sbzqMxwP0Rg9afMip3tkPDsxBzz
	tM9ha0/TvuebfDpQMCUUze2tpVmK13UL8syVBb0ANWtqx1Qb5M5zP25inF5lxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503701;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=xCGtwtnnzY1kgkpqBR6f4N71EtlYzNoEflcRRLAx7ME=;
	b=NPGi9fGQDX/NgbGPe4n/Awbx3fpSTZnLx9Nyab+UGkzT/7y3v/1YY2cZxQFNs5OUdTM400
	DhF6NTJbzBEX+vB6gB6OSGjKMr3GbdAXHodQ+mEnyPFrYVk2sRXxftzY+KHmNe2y5EilYZ
	tSbikGn/8mv6gNYD6a6Omx3VKvXBNBdqoE4pA0pO2Md0ukfxVC38N3DTkq/An3s80mF0SD
	pjA4BYKSopZDUFZ6KM0lNM0Ub3HGGuO9pbOxNi/7lVT8Qp+dZbbOc5fUinV7qs9SGcLUp/
	UJALBM+oX0VdU3Kqxf9BKkOVD7ZaBXsp5sdtiX6s3P8PPkRSzmGhv9JtenUZZQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503701; a=rsa-sha256;
	cv=none;
	b=PfKAjH+eGgz2y3I91joOgQfwSMh9jsQ+suGqop3P91sMLMZ39ZhQZRU6cVK3QKUX+XyQHD
	K7lg91/RvU8RPJnr873EZtMhor7Zi1j+/wPKXnU75lYZKEAtWC6f8X7DwnyY0zIG8zyACl
	fjakTG1BMyZFjWUwm9j9Gppxx3sVHEVbCgFouiFMuqt2Op5xPKwf8+FCgnBa+2ADfuB4ri
	jk+3LQM3kYIGDgJecRf1Hba3oxR++vLtRPHcajEwvzOPbzQTM/JOLbHgiJaXK7sU2E3wRq
	U5oRQ4Vfe47z7i2W2k5k+KBCvZ/i3WFfW5TG9nnGFrNC45o7Fm0zBSgD6M+G/w==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 80EB4FF9E6;
	Tue, 24 Nov 2026 08:01:41 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261120095410.258131-1-a.fatoum@barebox.org>
References: <20261120095410.258131-1-a.fatoum@barebox.org>
Subject: Re: [PATCH master] net: dhcp: mark interface up before resolving
 TFTP server name
Message-Id: <179550370152.372690.6047882038131343240.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 08:01:41 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_230144_823240_C6281597 
X-CRM114-Status: UNSURE (   7.66  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 20 Nov 2026 10:54:08 +0100, Ahmad Fatoum wrote: >
    When the DHCP server sends option 66 (TFTP server name) with a hostname >
    instead of an IP address, dhcp_set_result() calls resolv() to look [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Stat-Signature: yeixccm7f9naksh64yto7pnjsxajm8fj
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: B7053201A7B


On Fri, 20 Nov 2026 10:54:08 +0100, Ahmad Fatoum wrote:
> When the DHCP server sends option 66 (TFTP server name) with a hostname
> instead of an IP address, dhcp_set_result() calls resolv() to look it
> up. Since commit f0624a7015 ("net: Do not route traffic to interfaces
> that are not up"), net_route() skips interfaces whose ifup flag is not
> set, but dhcp() only sets that flag after dhcp_set_result() returns.
> 
> Fix this by mark the interface up in dhcp_set_result() once address,
> netmask, gateway and nameserver are configured, right before resolving.
> 
> [...]

Applied, thanks!

[1/1] net: dhcp: mark interface up before resolving TFTP server name
      https://git.pengutronix.de/cgit/barebox/commit/?id=c0446cfcd924 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



