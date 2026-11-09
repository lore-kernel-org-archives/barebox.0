Delivery-date: Mon, 09 Nov 2026 11:33:20 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xQMgi-008zXL-1g
	for lore@lore.pengutronix.de;
	Mon, 09 Nov 2026 11:33:20 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 82C3C201BFB
	for <lore@pengutronix.de>; Mon, 09 Nov 2026 11:33:20 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SBIgqe8w;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e94t7L2y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794220400;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=nRF8t01t3kugvskI8VxSvf7Ir6GsdR1rxFx7HbpNKmk=;
	b=dFlhrzyrR5TBRpNP5E0E4OtUqb3+Zn0Gp4By+LD/bgJiTfONZo37RMDy01fvyT1ZEp8R3y
	6co8BU6SauL57iI6k/aUvaUrvD5JTIcqL+VNmzFZ1SwzDYY79LFRD+WFqs/YHkppOAdGjI
	QagC/RzJ0QL0jiZ/DD11+oIlcZRwZOHFb79xL1tgT6vKg350Kp4bE6Q4T1C6Lg1oRpFa7J
	JlZghknJzh0e/cWU5wax2O6QFuOJdXRM00mOqJd/D2uqgtu6ZY3rcDO/ubGl7qKTdqAvvw
	4p8Sir8EJnbMdKB2Mqstpi1OKZ9GsdYXksWJxojBD/MUvgPKPAqXqXUn1FD10g==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794220400; a=rsa-sha256;
	cv=pass;
	b=UOU6PB7FegRRm/FVFVHzSQmDLFfNRMM/xxvrML5/EMM76a9iFj7u+xafoOqBSYA0cvcVQh
	0fRjlyicmuL0dDsG/RstbevJfihCi4wZjMYNEbezI+7aPa3pJ58afLxdqhUIWh3E4DeBnp
	MU+y4QVz+m1a2h9HynCIKkUUFV95BaZrH6pXSt59BGV80vIADRF2T7KGNzxFzivmtVHier
	MiqMI9IZsVLaC4EPAF6YaQIUS6+NPGzoGzUWUKNqHkviB3BMn2tfZyYVTC93lYnXLjWred
	gQvAo5+kyhdd4HBi0MjsEPjAklMChKsTxBQNZ8MVh7DfwQPquyvmiMUT/5NJxw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=SBIgqe8w;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=e94t7L2y;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=nRF8t01t3kugvskI8VxSvf7Ir6GsdR1rxFx7HbpNKmk=; b=SBIgqe8w++Xj3t
	68fmQsAVlb78yT6PBXS3lCm5nC6MwEUcUOeFXD4kMq8A53T/xC6XNiQrT1LwukECUAQEaGl6qTpz8
	iYyIvca3zbNKn91dxNIlU0y8mB/1a3Uzm59u8xvKfdvErB1oRMwtn7aXMgssML91cdBNNp1iBdVDD
	LNhF1olQgqXG7LoUlpKfIvoSkyXwqIdht2rDVfAQ/iwh5ew1CRheeelHMhIKeN6c5Ae280TQsKbJj
	E9boTLgPquXrfzYTUGwEQ2UwgwN9i5cQMSlwlxwgwbPEJni93gNfo8L+2/NTU8UiXAD4VjWkfN/IN
	sG83jifxB1yEcm28bQRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLLo-00000000AMA-3Kmg;
	Mon, 09 Nov 2026 09:07:40 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xQLLl-00000000ALQ-1eFq
	for barebox@lists.infradead.org;
	Mon, 09 Nov 2026 09:07:38 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BB59120177D;
	Mon, 09 Nov 2026 10:07:35 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794215255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nRF8t01t3kugvskI8VxSvf7Ir6GsdR1rxFx7HbpNKmk=;
	b=e94t7L2yKNa6QJKyohTxpOlMeBV7thvIPA/9UwDj2/HJhAQ28RQZAryaBUpwLVr1/xMxDz
	C90J3u9DnhHaT0CRgbR8NHZWErlIR2lrQvvCla4EvUZ5ZWFXqXeNH+kEnVPwTB+eG9kxk2
	PCaGIGPSRrZ6JkeNL3305SgqifykQvXByuAmr52QHqcush5QaSzrWfOj31Wrm61hlB3EWu
	G6++CSQbPc+D4vomJea4A1C7Db/FFMFXKilXblsviDXZUFLR0Vj66fIH78x8E+FJDODBb8
	Ytg44HK2hD2+jznhQpp/5rtovEf+DgyHHGAbP2rvuAytQ2m0KmJuroiGogPgpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794215255;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=nRF8t01t3kugvskI8VxSvf7Ir6GsdR1rxFx7HbpNKmk=;
	b=BcRNVxBnLp302jbwwghLokEsYC5HRxMcASFuW98ZvAk70t9fXJHTvmUJ1FvjnPdTeXDbWT
	1Fx8ojvq7X04i+7i2ylDhNIvhp63TE/OfMdKD4j84UIpcQ2kegaAGDZ7cSbA5altE6FbOh
	FZeOxG0BQZ8N3E2KsoWosE7AlYqXSabRuotgYdnyrB/dzXGg78HRBykEGj2WKRrxRGCX1I
	5Y24/E5txRrSIk0TqJWXzo5iP4F6UbZg2p95r5cm2acdAiXZP/LlfjCTCfA/4Kh8BAAVA+
	nAJnyuJmDGQ6XxMPLztWadkYDq0AJh/rneBdTBuc8flEbTW7sbZ14VzV5PdMtg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794215255; a=rsa-sha256;
	cv=none;
	b=FPj5E7h6Y5ciQWkTXBt1p0G317gZEOLnjX56mJ+rKU+xfV5NZnmKVq9l3aFhSbBUDKs4yQ
	REiyLJgx1NkBZ9IbOM5Ca3D+C6MOI2Hg4hJdCx06SfEc5nKb6KvxrPTrTAFGJvUba3/By6
	OdN9MZyKkfvj3IJpaD5AV8tZjMuBbzghPcd0THyr1YknjEogDT/a66/8WoD4sEbT/n/pqS
	tETuaTKTBObNCLTabSh1+9vHWhPTZnCv622QIX0U8ObTmTIKxyY0UGgFihJIaQ3/hJix6T
	dQgacBewxaLAxXLaDVr+m9/nw3Iz8uR3IuqM+yoHeU0j+nwVZEQRuQprkek4cg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id A3EDEFF898;
	Mon, 09 Nov 2026 10:07:35 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261108201524.1400939-1-a.fatoum@barebox.org>
References: <20261108201524.1400939-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] FIP: don't free the buffer twice when parsing fails
Message-Id: <179421525564.499899.16599620988285828074.b4-ty@pengutronix.de>
Date: Mon, 09 Nov 2026 10:07:35 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261109_010737_593594_8B1C1897 
X-CRM114-Status: UNSURE (   6.40  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 08 Nov 2026 21:15:23 +0100, Ahmad Fatoum wrote: >
    fip_do_parse_buf() hands the buffer to the fip_state before it checks > anything,
    so fip_free() frees it. fip_parse() freed it on a parse err [...] 
 
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
X-Spamd-Result: default: False [-60.58 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.97)[99.87%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::28:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 82C3C201BFB
X-Stat-Signature: upy3mtezi8mqo1roa3ikzhe5mfxatnn5
X-Rspamd-Action: no action


On Sun, 08 Nov 2026 21:15:23 +0100, Ahmad Fatoum wrote:
> fip_do_parse_buf() hands the buffer to the fip_state before it checks
> anything, so fip_free() frees it. fip_parse() freed it on a parse error
> as well, and fiptool and the bootm handler call fip_free() afterwards,
> which trips over the double free:
> 
>   !block_is_free(block) && "block already marked as free"common/tlsf.c 1069
> 
> [...]

Applied, thanks!

[1/1] FIP: don't free the buffer twice when parsing fails
      https://git.pengutronix.de/cgit/barebox/commit/?id=db380db7a860 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



