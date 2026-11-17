Delivery-date: Tue, 17 Nov 2026 11:25:19 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xTGNK-000O8o-2b
	for lore@lore.pengutronix.de;
	Tue, 17 Nov 2026 11:25:19 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0B1F5205A36
	for <lore@pengutronix.de>; Tue, 17 Nov 2026 11:25:19 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aQejkRwD;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=X2mlbytv;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794911119;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=ov9OVf2DkJf1XGBrbRqqVNyhtFbCovDX5yIta44qQRc=;
	b=XgiVtOrwHVQtwPA4Jtq50iedNM+OjrNFZFxP99okJpxQ+iTOETJi0MHJcYoSCZaDiC2n0A
	4i50CCOp1CWdfctMQAPNb81hQ4991ybgFxuQPLuFXcJhLIrcqrZ0RFUgpEaoaIYO9LxnT4
	pOwg9/VcFwoTuls8Ssrw+OD7L/pHsypdZ3WrzPLtoO7lmVNo1I6lb2Q8xQtijHqp0+5poh
	RlvH6NUJFcSX0T7hPHOQ0o4tewOVoLQXCi3FQJklNLHhqKOfm3o9esxiRVULO1RVbC8pR6
	JNJyFm2A7Lz4Tol+2oQ5INcKZEjwk3ULsn9SLRQu5BuS6S9ZwtXG0vllgLgjug==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794911119; a=rsa-sha256;
	cv=fail;
	b=KbumESJ65QTSAvl292WedT1rvZ5NNn+cgkJ3cXgm+9s9FGsGSw1fwEaJz3EliEthXoLXyY
	EcJr05oSIRwEOpVQy3R90qaiB3y3Q3AGdhYtSLZBhw8ur8G5uTX65d4SWIA1/9UYE9g25x
	LTBw08iZMXiRd1dZgd9exy3uyf02jXM5rGQz3FMPgPpy+06hISF13oKZRuXDPzJnzFT3Ir
	fIegh89BuF1ZbwFloOGV3fPDKaxl2Kk/nyw0YliDCVsuD09BsnDqW7N7KmMtDz0cs2fNDP
	NH5WfRt/ZRVqPxltFiVVnioBlvFCXUd42B/z2C+ZcTJOPq8+FtgYoGk2FbXpyQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=aQejkRwD;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=X2mlbytv;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Date:
	Content-Transfer-Encoding:Content-Type:References:In-Reply-To:To:Subject:From
	:Message-ID:Reply-To:MIME-Version:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Unsubscribe-Post:List-Owner;
	bh=ov9OVf2DkJf1XGBrbRqqVNyhtFbCovDX5yIta44qQRc=; b=aQejkRwDl4pc2AOP8RpneTnD3Z
	7QEAjKpEECUf3XcenjKpY0qYAyQzOzI6x5wfDpB2B9gGA2AW3ZfKDHOX6sAeZQC81J14tvw8KLLOG
	UwHm/M0TMvqZAI2zwoiD8N/xfgwMB7jKEjsbPhluADrgK8xjm7d0X5HfCBmdHlhz9mKNQvwCn8fU3
	KM6BADmYIkrD+pl4bKVp8ODQq8P8Prg45NLZQkB5E1C1orP7kqdkaFZRhK/EVWUyLn5YkZhrsPsZ1
	6keGf9EDuw1WG2YAptXPyIhxcu0vpk/qc68TAcoyCHHr3F/SFf0S0USyw7/+schcwQ5i2qnm2uSCN
	QaMZu1MA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTEns-00000004vc0-1jpI;
	Tue, 17 Nov 2026 08:44:36 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xTEno-00000004vau-1sb7
	for barebox@lists.infradead.org;
	Tue, 17 Nov 2026 08:44:34 +0000
Received: from [127.0.0.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A6B94201D0E;
	Tue, 17 Nov 2026 09:44:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794905070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ov9OVf2DkJf1XGBrbRqqVNyhtFbCovDX5yIta44qQRc=;
	b=X2mlbytvDc8maxrI33Lm8+FGIr87GrF9+BmR1LNGFAILnIWBI4OUYUPEzGWG9OH7k+2xVR
	VvMLWT0fy7Bdjv3X1fTkuqb9hJ0i+rQ1JnK5ojQ6At/+4Jb0CXqTYq4Fq333Of4HWfnzOt
	X4cWiCDBlD1ZNNksF2ToQrCTxC5mqcTFgnjuVnu4at3GbTyd0HUDcuoaSUhASdWPmb6afk
	So6ddnjrXxDQaEAQ8yDLlmZQHGkDDYhkLCUAOwe/X++pDG83vN4N0UyJsiQDtaXJ/c+Qf7
	4wTj9RLSwn3zunz+9RfksrXjKIbdYaiQ4tWTv8UgH7QeSg0T60Ja/AGa5JZ33Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794905070;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=ov9OVf2DkJf1XGBrbRqqVNyhtFbCovDX5yIta44qQRc=;
	b=dAmqPrgvcGCBD+0K2DcHa9mIlMP8k9okUQm/Cct/7nAhZfOmnR4YEZPa94h/3pm68SD3+6
	MEgXsMP5cKev4F6meP1jtTUtQD8eTi5WSX6WiYpq8Zd4UgKpoCdQ+yYttt81yMufqDotNQ
	HANG0+wT5WM4OAdHH+BhN0OemkNRug9If+gZrM5gk/2OblDz66Naa48djpB7eKj97jYSX9
	7GdLLPUlfVSJMKQYqgrUDJzkEieHoTSxgSQ/aiVzvPF1LGFQrlIuhH6oc8ZCkZvPpgYsY1
	l4jSRGqmodj988JB3InE76tbb7J8j5lsR4/laktiBhSWVak3Rt4BHtcdY1ghlg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794905070; a=rsa-sha256;
	cv=none;
	b=H6RHdvSBcGqOdUMmPV9CvBezr6bv22DIEr8iFibUha/bJG2j4orXN1dvZgfcbLvoS4npxY
	HKlgUA8HB8U+FSlTuvEIqYUEPsLuK4cwIsmeRYA7muH5zkww2+TyrBC2cFtuX1hSm/9H/C
	9q5kxecGB5y7mXmY2+bWaWMGKGjPLeXFwQh0Xe5OTNBCm2Rae6/JphtzPN0mK3Q+fwmchB
	unwJZ86rCaMgsvrOlf6Dte+KobG8tQjQNXsNAisDt/DKyD74erNE9JuW7m78odpX9K7liA
	AEYckY4Hla+Q8t/q2QcEfnsIJbA3XbzAPZKs23FBzALgXyB0c4P2X+eVRugf9g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Message-ID: <a852661e-264f-4a3e-8f9a-c69868b4ae0d@pengutronix.de>
From: "Sascha Hauer" <s.hauer@pengutronix.de>
Subject: Re: [PATCH 0/1] of_property: resolve phandles against the booted
 device tree
To: "Primoz Fiser" <primoz.fiser@norik.com>
In-Reply-To: <20261113115548.2224914-1-primoz.fiser@norik.com>
References: <20261113115548.2224914-1-primoz.fiser@norik.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Date: Tue, 17 Nov 2026 08:44:30 +0000
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261117_004432_648547_74B19ABB 
X-CRM114-Status: GOOD (  13.36  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Hi Primoz, On 2026-11-13 12:55, Primoz Fiser wrote: > Hi,
   > > I ran into this on a phyBOARD-Mira (i.MX6) secure boot setup. Two board
    > expansions configure a UART pin group via a fixup along these lines: >
   > of [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
                             [URI: soc.com]
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
Cc: barebox@lists.infradead.org
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-Spamd-Result: default: False [-54.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	MISSING_MIME_VERSION(2.00)[];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS(0.00)[m:primoz.fiser@norik.com,m:barebox@lists.infradead.org,s:lore@pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROM(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_HAS_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Queue-Id: 0B1F5205A36
X-Rspamd-Server: mx1
X-Stat-Signature: 8kpc7dgfd35b7f1jpeqn9j76b8hofke1

Hi Primoz,

On 2026-11-13 12:55, Primoz Fiser wrote:
> Hi,
> 
> I ran into this on a phyBOARD-Mira (i.MX6) secure boot setup. Two board
> expansions configure a UART pin group via a fixup along these lines:
> 
>   of_property -s -f -e $global.bootm.oftree /soc/.../serial@21ec000 \
>       pinctrl-0 </soc/.../pinctrl@20e0000/uart3grp>

So you are using -e to pass the same device tree that you are booting
with later to make the phandles fit together. Took me a while to figure
that out ;)

I think -f and -e should be mutually exclusive as a combination of both
doesn't make sense, but now as you are apparently using exactly this
combination to work around a bug I think it's fine to just ignore -e
when -f is given.

BTW while looking at the patch I stumbled upon:

	/*
	 * standard console buffer size. The result won't be bigger than the
	 * string input.
	 */
	data = malloc(1024);

This is actually wrong. A property given as <1 2 3 4> will expand to
4*32bit which is already longer than the input string, so putting more
than 256 numbers like this into a property will overflow the buffer.

Sascha


-- 
Pengutronix e.K.                           |                             |
Steuerwalder Str. 21                       | http://www.pengutronix.de/  |
31137 Hildesheim, Germany                  | Phone: +49-5121-206917-0    |
Amtsgericht Hildesheim, HRA 2686           | Fax:   +49-5121-206917-5555 |



