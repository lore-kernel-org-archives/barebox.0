Delivery-date: Mon, 02 Nov 2026 10:48:03 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xNoe3-006KK0-0x
	for lore@lore.pengutronix.de;
	Mon, 02 Nov 2026 10:48:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 86C5E200BA3
	for <lore@pengutronix.de>; Mon, 02 Nov 2026 10:48:03 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A67MhcWm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IDHxfHMg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612883;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=emimfOWvfDzp8vUmtHc2iEOuST4lwe33eGsCQrS5sIk=;
	b=aHT9kRIf3Wd1AJFcGnJtHIZ9CMdhA8pE7dRoomQV5LnBuwDh1PaELlOBneuHt9tBY5aMO1
	u4ZwHCHcyaGPBksX7olucjZv8g8fyYQjqJ/UY2Pl9ib+FvPJw63cSPTrnwiZNjunwJ5i43
	27lBKHQOuixNuUrgVK2kA5+fJjkNJTm/7yu4ISMH58u25jYF3YJzhf8Ys/JTzTPQq2oDR+
	DLKkvp5uOYK6plLMpkfdTqYMqMWxB2D3eZDfcqfeYUUIDw4cepFA0hoEOcg38N3sl8MdGU
	rthJUSnicmpn1OH43HvozxFhVkhP7ohUGwnofXjJYZjfi0piOLTB1rR4lBUq+A==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=A67MhcWm;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=IDHxfHMg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793612883; a=rsa-sha256;
	cv=pass;
	b=MIQrrHsouunlDYasHInm7HT7p50TrfhNu1hcy2WY6EwzwyObe6PmMg+uOHHW2Eg9vCmNmD
	Sdd3mkvYh09tQ/1kiYtrpwhEsioSDrPu7M8/8QWi9deFeQwD+V0OLH2asOmNNjas+W/ion
	F7/MfTj7XkaPbj9kllC37UZM199AnIHbyvkVxIsREezjSLgEv9uxzIc3h9rVOTm2ZQrUkg
	Twmqq3sDPPlcvXaLlOaSUu6jMT4+VDLj6Iw6weU2TVIsNq+UTECpbDztUH8gmMLxRXZmJR
	TZCEH3q6g75OC6AntXgDOOaTY2MzE+PXuy3Wd/LE7iMLrvh5mLw0q650TK0oaQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=emimfOWvfDzp8vUmtHc2iEOuST4lwe33eGsCQrS5sIk=; b=A67MhcWmOpiXh2
	hciNjPrD92P+CNIlD5ejPRWy/yaG3HKXXBZPLdMPOn+2b1j9u9vM4oerBdsEflrLLQkjkZEwMtxb7
	ZvSVNhZNk5evG3RdStkYg+w/SxjqMAemM33I9zHTbnhWUydas4umQI07Mxna6brAFpbVHsblpCGKa
	ajR6n4GxfOISU7UOxrhwxJdxiimU4Z3gdH26CGCfibyqygo1DgazdkoDUNkTWvKfgSr7+cVn2u6o4
	MKjE/AO63j5Gtr1WAG6iayFX2/FG2POqszR4vZezcAJXQxdKXNWza/YU+JLkOhHAGTmakdAmo8mfg
	TJXooRkHUV4Fhzk0vrtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNod4-0000000G3kU-1ee9;
	Mon, 02 Nov 2026 09:47:02 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xNod1-0000000G3j2-1aG3
	for barebox@lists.infradead.org;
	Mon, 02 Nov 2026 09:47:01 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8527E2008BB;
	Mon, 02 Nov 2026 10:46:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=emimfOWvfDzp8vUmtHc2iEOuST4lwe33eGsCQrS5sIk=;
	b=IDHxfHMgPjA2ZsFi94UGQ0ME7K3R0de9kVbrbDTtmYC1ATzX370KtPUZM1TMDTqG/RB87N
	MZ7yv5JRzasp7oSBYaJ62Ryjs2LUZQUrGK33fGvCcMbtO6Rtq/KKhU/aPGqep2ULzeFmbU
	XfjW/RP8zOyPQPkRg+oKX2g6aULIevs4X2wY12ID6zkgRkQveBNOjRjM/X8cy7PZT2g+8J
	idMeLvFH6MNQVYt4WlZz0oH3uglSoji0j7Ycqro9yQag9VCDswr8tqzYXR7CLXfJ23R8i8
	f19bUYg9K0MrPTbeAeFx+QrAK8E/07SyOqEw62HmWZoCzQ/jwdTgjuhMmPbFew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793612817;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=emimfOWvfDzp8vUmtHc2iEOuST4lwe33eGsCQrS5sIk=;
	b=GaoNr1zw+GZMTqHAfm+S21U2VUXvJboDYfD7fFfrQYn3GaX6xmzNS1zoiF1GfKClIBhQSW
	gDkSf6ZLAed2E7CPaSchRKpgj2E09vgIccRl86ev0wxL4ZfDLoCGkwbZVtu8SKeLeTD76d
	oXQ9eaUCMgZYCBngS8oBZRsE/4MRYkt9RbuGIuoq+Wetg83NYqWtHa1ABnCnYLuL3IwAaO
	DpyJgChfHRgutmq2Z/CpWdBnvMICDAAd2rxJDCudjnY2AbMHRYfrscdmI8KR8Odn15cLr2
	GyJK0yFp7UuB+oi98NBAFQwc4KtB8El0JGITARfZAcjO+CEr/Qj8cQMDGmvlOg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793612817; a=rsa-sha256;
	cv=none;
	b=VUCM5gVQM0j6ntURd2WBex7HPakk+z9lUw+IsjsqBbbTJbtR022AY4Z1yFg0nbGWDNAOu5
	/i8jD501GP9nEL+bysfXj27y/oLS7GVrtB9owMWZSQzDLOSt27jYZgJH+GN0kkCtD8FgBm
	iQUjvWVRVKhgucYuBci57I6XUz/mza2OoEV7sPLuIWip0jDwNeoL/IkV8b7F53Hu7GRngM
	Qxn3snTuYanlIWOZv8rFxSAR6LLj+bn4TOU+Dt5It2r+ZaBO05N2J+xKDA9OGdez9rtMSd
	GXfuFdXqZQjjFXpheoA5v5SlyLagiM/DHKp5wymCMzT/Q9AhyLaFQQ0Z1wSGcg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 6E7BBFF89D;
	Mon, 02 Nov 2026 10:46:57 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>
In-Reply-To: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
References: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
Subject: Re: [PATCH 0/2] watchdog: gpio-wdt: add support for more
 dt-bindings
Message-Id: <179361281743.2642783.11510047305898243249.b4-ty@pengutronix.de>
Date: Mon, 02 Nov 2026 10:46:57 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261102_014659_575653_EA208663 
X-CRM114-Status: UNSURE (   6.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Fri, 30 Oct 2026 17:03:15 +0100, Steffen Trumtrar wrote:
    > Update the gpio-wdt with support for more upstream devicetree bindings:
    > > - always-running > - reset-from-wdt-gpios > > always-running [...] 
 
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
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: ieq1gmp8sjstmgwq67m7jg8e38phfqba
X-Rspamd-Queue-Id: 86C5E200BA3


On Fri, 30 Oct 2026 17:03:15 +0100, Steffen Trumtrar wrote:
> Update the gpio-wdt with support for more upstream devicetree bindings:
> 
>     - always-running
>     - reset-from-wdt-gpios
> 
> always-running is already upstream, reset-from-gpios will be in v7.4.
> 
> [...]

Applied, thanks!

[1/2] watchdog: gpio: support always-running
      https://git.pengutronix.de/cgit/barebox/commit/?id=7cbb14f09f1d (link may not be stable)
[2/2] watchdog: gpio: support reset-from-wdt gpio
      https://git.pengutronix.de/cgit/barebox/commit/?id=4df79d7b4bd0 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



