Delivery-date: Fri, 06 Nov 2026 11:01:41 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPGlR-007xzf-0Q
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 11:01:41 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4BEFF202A97
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 11:01:41 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iADLFj+u;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Ix0PpYej;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959301;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=j4osMNDmLwkWKhQT7EaD1xTcYWiAySbLQzPUU5FLHKk=;
	b=M3XEzvhH0cISFP5/YBiFhZAoudlPHgTTh5Hnr9SpImJVXpmgqhrogIqbCvaH8vcmJEEsdk
	/ZWto2c0S7tDka985PRa6kWkAKmpN3UdwmQX2tevWVM1maShsSAWiv9UOL+EnaBIEdpaF/
	I2C86XZe0XPT6pPMIwWAYKMlrjFEXsUvEj8i6FslWUZf9oEP9FWrUcpfHyrtJ1QAMKiGM5
	w8RAMbJUy8ThWvJCz6Jqdr6fEdZ39TY1e5+i37HYGSNrQrRN0uf6DLyRuo7gDdyNSgAii3
	wDdoDsF7Y5j4fBgu0gPyA3dIdwAERe8jnPL/0OGfjn2FKFbwJfDlzPjFkbVBLA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=iADLFj+u;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Ix0PpYej;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793959301; a=rsa-sha256;
	cv=pass;
	b=aRlhnL/bMmikflstDZRJ2i8SZH8q/2sVeXNO2ObDumvL7ps41iL24WIgkaE0sknIYN6UkC
	axuVyqh8KN5Bsl3GLbZwE+pBE2FwrkS33cqwv2k8x8PA2f7I5CztJ1RGNm3tNXrjCqP7Fg
	7r+vIxAzTxvTX7KK/86H/66Nm6u8kGLftPXoDJV853pbiV+WtQMko/pIdCyluZ+8FRkvTZ
	cH3bHnZ/Yavj/kUh9yqncYQp8AAKcsojSCH3tTnN5gOQHaoEQQ0WzIQmjTFfVh839x+L13
	W8Gd2uoHMiAEz36eHX0+bUEzRFI07nFg57il9CR5UrNGnWlHJ6n+6pIpz4wDEw==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=j4osMNDmLwkWKhQT7EaD1xTcYWiAySbLQzPUU5FLHKk=; b=iADLFj+uOSY7VN
	ulDDVoAz/Jx9H7LzXTPz5guxIai1frcZRlUBvtZEbUnPV7tb8ho/rWWbMPhP2K4e/OBKqNF5mDdVw
	JhiY9sKQiAw3f1oil3vRI1GRBF4vToF0BgWaIMf8F29IJaaAcY5nwnU6bMW9Up1UUpBx8WQW1ZbCv
	ZJEjldOCox1Asw/4ZXpy67fzegUw+KuNPBY16hSJCe65rVkq1ln9+R24QYW+t6aeyBB/enwYYKIRd
	Kjd9kSrCNqavvvqZOegehO6l/+HsII60U0q+j09obrnxJoznnZXvI2Y8h1hd+Rds97ZRi3I9dfPP6
	eXHTT7Z6Bmo6rExsrBbQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGkJ-0000000Bpqy-3L0c;
	Fri, 06 Nov 2026 10:00:31 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPGkF-0000000BpqA-39zX
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 10:00:29 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 934DA20041D;
	Fri, 06 Nov 2026 11:00:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j4osMNDmLwkWKhQT7EaD1xTcYWiAySbLQzPUU5FLHKk=;
	b=Ix0PpYejy4e3ABcC62upPVKAqGKMsRUra4zDNIcOmzZIalWtY/wVpMUYtNpWzIJ8AO53r+
	ZQ2foieTZI71u23u+aWznRxb8Q8Z+Jqk1ZPj5zQMWkZ49nXloxMv3DUz2nPXbHsE9s0JJk
	aIQ630SmDlLFft9d2rCs2Yp7n0yCtsBWgz6b0wgmefCk3nb1JSfcF3cDQmV6QscLBTYrc7
	n1wcYxT6pW4GkRrve2Ki1pQNozkXdfM5jVra2YY8vF7olRvQ5fppSUbmzVF7/4gKroACr+
	cZLoDSJijVJf2DFV7aB2MguxyPgeVq807yyxqW20YVewla2+xPqr8Ff1Ecn8Mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793959224;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=j4osMNDmLwkWKhQT7EaD1xTcYWiAySbLQzPUU5FLHKk=;
	b=W7n6pifLxk+FkPwJB96UvOD7xXbv44hbA7OVwmR0ZH48BYereu1VSa8VJHuzfOSKBj1CdZ
	47RmthaHzWgn1n9ZyY+DO55b2tqRTvXkDBEvOF8tVZnYt1PPXzeFA0fuvfskWLL/spGUmE
	H+eb8kEBTpK0Tdk3x/xcanHcjcWao3Abg4PWJhEKuvWrrTC62rQSndmAVVhdStAinTe7RN
	tE0czpANkJxAhzk5tgiVtza/Sn6lzPNgySeKezcASDKCDMQCXLkYXzSvfXqEZdQTm4CJqH
	K68gcrS9xPb0Bl+epCv/ewXwLzPmvBDNa9RdGcIFpZ8IBUIyJeKmmBff2Db1/Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793959224; a=rsa-sha256;
	cv=none;
	b=fsGxf0l23isNXriEWu1xYQUN/o2F/sFpXI/1HUu9PaeoNlCI8dC3A53ibT67vVVCDFijAx
	xiOQaldt7qcH4eF9Nh3l4Nitc4EFt/HcZ2+uh+D/pLYfvc9ozjSuEfKL0nbvJTOa5Q2d9z
	gufotVFO62oH9TxPrLm2DI4jkYq9u5Cpn1srv7ak6uN5sfqXYSPlKADht6O03RZV0gI9P1
	uG0CDpgs/fHwjkDpYHxZ+79CA98sDgxh84cMsaDK683t6NWCaUbDDPSZOqNa3I75IlZMXH
	Z/cKs4b+K1LOQp0ASesjIvC6Dug+lYnImOCxVqHM/mFov6btN5VBySBlk50NVQ==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 833DAFF9DB;
	Fri, 06 Nov 2026 11:00:24 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261103101602.3933234-1-a.fatoum@pengutronix.de>
References: <20261103101602.3933234-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] tee: optee: improve error message for unprogrammed
 auth key
Message-Id: <179395922451.4003150.17224067990929186185.b4-ty@pengutronix.de>
Date: Fri, 06 Nov 2026 11:00:24 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_020027_942856_5846A4D1 
X-CRM114-Status: UNSURE (   6.37  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 03 Nov 2026 11:15:59 +0100, Ahmad Fatoum wrote: >
    Even with barebox now decoding the OP-TEE command that fails, the > resulting
    error message is still rather cryptic: > > ERROR: optee: PTA_CM [...] 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 4BEFF202A97
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
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
	NEURAL_HAM(-0.00)[-0.999];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: b3xwkdoybyk1kh7tyqpdoag66c4dh8h8


On Tue, 03 Nov 2026 11:15:59 +0100, Ahmad Fatoum wrote:
> Even with barebox now decoding the OP-TEE command that fails, the
> resulting error message is still rather cryptic:
> 
>   ERROR: optee: PTA_CMD_GET_DEVICES_RPMB invoke function err: f0100003
> 
> Linux doesn't emit an error message at all, but suppresses this specific
> error code.
> 
> [...]

Applied, thanks!

[1/1] tee: optee: improve error message for unprogrammed auth key
      https://git.pengutronix.de/cgit/barebox/commit/?id=f5561e61929b (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



