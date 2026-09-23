Delivery-date: Wed, 23 Sep 2026 08:11:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x9GCB-005KSD-3A
	for lore@lore.pengutronix.de;
	Wed, 23 Sep 2026 08:11:07 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 936ED201A8D
	for <lore@pengutronix.de>; Wed, 23 Sep 2026 08:11:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kWDIuwkS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BRtIY5jI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143867;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=zGeuAriA3iokauBVj05meETh9JuHjfooWzWcESwjLy4=;
	b=BonVItCQsJONdaKLM8qVJM+uNrTv02OXnbACSg+judOuzFNYC2XOl+iRFVdpzKDQ7VDzoj
	sawDAfA0/8uU7ZCCqufktX6hfRti+tjlMhtTgz5r6+ewjede+myGvhzqpzeiPqqQurUCzE
	zEIZuis4V0tYFHjvEE+Kj3RQmBEnXgBCypDtDtWEqm0Q9nU8v41y1l37qAj5s7dvPzpO/1
	/wvJpKy5LfR9SdcHGO1LWQ/ArpNpdgy2dQb0apNJdd5koyZuxa3zKlDi0saDLzYPcKfkgu
	enFJut2uDDlIm6M+GjkZK6uTNahKdBRhyvboOGfWHUSr+TZP/44CW2NOgcsWcA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790143867; a=rsa-sha256;
	cv=pass;
	b=WaxNcPpRcbAqwDbv5jbHtwrdeEARwLZCkmW08FZ4tXWmf4Bcu1LgD0BBiJn8wpVovWir8P
	/wER85FwQBf/Lub8cv3FpW+xVEg9F+P2+mXGqf75wrpTfDPBxVSMrEuB1dhW/DU4xSG4vq
	Oa1UCsnxUkHP+kXBO0b5px3wUFdWcLIvcYcGvXlmv8D+/xmHxowmu3WZSlz0VczGc1ynQ1
	uvg615yt1sJ5Lwc4+0UHvxFm+tgri58OVali+SkPtkhl8XkcFrb7cenZvZXAlrPreff0xg
	BjXEM2ZD0R5TB2y8Y/iBmQUFuxr14TYnJOidMs+0ETTnT0d7sB52nEH2M0vhAg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=kWDIuwkS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BRtIY5jI;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=zGeuAriA3iokauBVj05meETh9JuHjfooWzWcESwjLy4=; b=kWDIuwkSc1/T8TxmY6mq0tTzXJ
	m3a+iRTCVCoHx+09hSJw+/Jko6l2Urs8wEdNcYg2B+49QSVPFUAyggzlvL2JNrEMikxVOm3jVg+nG
	ZLEfyOeKpmYCvEGXku+gDoENeTkAySJf1lybxhahEAHB7/HAAd3oOXgig3zGhDgj+w4e+pq6ZGxx+
	HDUmQk8lhrKEyNJvCrPhrFcjmV/6PXTAOsqPxPqtdVMwQH/mhsZ4shH5kxmoVABNjFDaFovlo8/bI
	Lmrdq29n2aNSebltQVEkVIlzKO6G7hCONlz9YhBDN3cLIxywQ0djH6aR/FESWFGN1eqtBouQzEz7n
	P82POs0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GB4-00000007F7Q-1z7S;
	Wed, 23 Sep 2026 06:09:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x9GB1-00000007F6v-1Iuq
	for barebox@lists.infradead.org;
	Wed, 23 Sep 2026 06:09:56 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 5E6F0201F08;
	Wed, 23 Sep 2026 08:09:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143793;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zGeuAriA3iokauBVj05meETh9JuHjfooWzWcESwjLy4=;
	b=BRtIY5jI81Rnl4nNoXC3pHfoO8p7vD7FF+ODxt1bK5gnIJo/CuGFYUZzUnSEUcZMVy1IT3
	4oPrEhjF9stAx3uuErGK5JzXo7GBPl3OLltPmnI4fvkIcU1Tvhg+ZUeNHebtvDHLt2LShW
	wYmpeNr3aSPSHi/oLrFNfgcO6sSYp8SKZ81FRvcuraMzgF4WeqRO5AJ6son9l4/Dh2uvzo
	ugZLfSghsuTjr7MoJ4PG3iNc865fjGnG9zNyATygAKWWS1czU9+DVUWZDXWaQ3MXyxB73x
	MCMBnbxVnblGnyvQFwLHmFFnnMwtCOZROL+qXpHqOlUOdG9l92E7nw14oXxuQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790143793;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=zGeuAriA3iokauBVj05meETh9JuHjfooWzWcESwjLy4=;
	b=GRH4Cn2ZdtACmr3Oq0VLXraAJG1DENWHEDMTysmE2tlt7XkTGTvrT8RTkWizMDKXyV2SeA
	r35XisZFsd3+p4AYyoljhfbauZoIDqPe2bXsIUF2K605yxlCI8n1NCQyh6H8xzOWl33dp+
	2w4OooZwJkeHfA23vCWRdP/70HR4Jq40FOwhKdq3IZDOm5U5tUrOWU0xdCeEelGa/XKaoY
	Trg/vtxsuBdYeoLtDt0Rbr3hBQmD9xYmEsqQ4/M1H6UwPKqaaHZTCraDVeYCWE5msJKF11
	64ZolxqowM20T5KbPliaYI53EEn5qo0yQZkTXwnGcOQswbyjyqz+6CXiqHbA9g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790143793; a=rsa-sha256;
	cv=none;
	b=ZiZZzaAJMmoiN+qFbk1WiBp1TQm8eXhiYTNUBFQVhWKm5JD3eEFWNF4+YNx34mYLRgCf3f
	2T9J1P1fEAYEZom+Hw7lBYMyzOUsQweMG4eMtfS84l+zrl5AfEsxhchBJldWtSYPQBCr5l
	avHwf50E/Put1u9wdp0216ZBMC0IKyGxLT6w/7/vYCsGq3yRCryYX2lgOjFc+Snydv99bd
	LddMNRxLO+9k83wgxgjkprNyCgGwldbAO5x6NTzZJm+0XALSzDkrjEV/vD3GAaoMwx+YeO
	oP4xWhGGmxGwGoPATx4CpFkiFSamLhJxpMTEdOSy6ilWfoKQ0BbaGulGvdeRlg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GAz-002M4Q-0z;
	Wed, 23 Sep 2026 08:09:53 +0200
Received: from [::1] (helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1x9GAz-0000000Boc7-12Oc;
	Wed, 23 Sep 2026 08:09:53 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260922105308.386749-1-a.fatoum@pengutronix.de>
References: <20260922105308.386749-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 1/2] sandbox: route malloc_usable_size() through the
 PBL glue again
Message-Id: <179014379324.2816128.4504755399464080457.b4-ty@pengutronix.de>
Date: Wed, 23 Sep 2026 08:09:53 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_230955_571973_EC8C642F 
X-CRM114-Status: UNSURE (   6.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Tue, 22 Sep 2026 12:53:02 +0200, Ahmad Fatoum wrote: >
    Everything in SANDBOX_PBL2PROPER_GLUE_SYMS is #defined to a barebox_ > prefixed
    name in barebox proper, so calls end up at our wrappers > ins [...] 
 
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.98%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 936ED201A8D
X-Stat-Signature: htbbjzuog5w77od6cccraux3zw9jnojy


On Tue, 22 Sep 2026 12:53:02 +0200, Ahmad Fatoum wrote:
> Everything in SANDBOX_PBL2PROPER_GLUE_SYMS is #defined to a barebox_
> prefixed name in barebox proper, so calls end up at our wrappers
> instead of directly in the host libc directly.
> 
> malloc_usable_size lost its prefix when sandbox was migrated to PBL,
> which becomes quickly apparent if it's called with a ZERO_SIZE_PTR:
> The barebox wrapper rejects it, while the host allocator will choke on
> it under ASAN:
> 
> [...]

Applied, thanks!

[1/2] sandbox: route malloc_usable_size() through the PBL glue again
      https://git.pengutronix.de/cgit/barebox/commit/?id=e542d5ae713b (link may not be stable)
[2/2] test: self: free a zero-sized buffer with free_sensitive()
      https://git.pengutronix.de/cgit/barebox/commit/?id=0e9ba4d8df4a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



