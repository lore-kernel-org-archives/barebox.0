Delivery-date: Fri, 25 Sep 2026 11:09:10 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xA1va-0066f4-1j
	for lore@lore.pengutronix.de;
	Fri, 25 Sep 2026 11:09:10 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4DA54201A8D
	for <lore@pengutronix.de>; Fri, 25 Sep 2026 11:09:10 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Fso4lCHx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Dh7QhtWS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790327350;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=1qc6SCnxNXxex45qUtOCVU1JUITLaHshtbXeZHss0E0=;
	b=E6Y9ls7ck05ezvUzC97emywyLUSpgkTW/WLHFX6O41U054V2PzFOF+6YXxqPO3sNRPN1TD
	odKcAP+WCnOSaG63R7kc+27LSgpavo020KQm0DV8eRzXG9Vb/j6YH5LNdabmCzgh3kKhnI
	iVPEGjptV0gbwLhvfAwlvhSyWqFXEhxIhFz+Zr/33D2iv7+6J+pG0LYMrDhCTNxGil6SOs
	BXcqJeZohg+Q31S/XBm+4kroy0uCd5DxkjQM61QZxXykP/1aizVr9AYw9zPe51pzMg/6xS
	qI5+dcf81K5KbtOjxt/7NSyFi7OnANjBfFrn8GauFOcRCojpkIcebvLdKmaIWw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790327350; a=rsa-sha256;
	cv=pass;
	b=OQqiVT8WY48euPx8bXGnT2x0XhZlMgGzIExpYIKLWN1Rz4+bAqvY3/T740aQnIVvf186SC
	4E69B1P+WbnLxEc40IadG3yZawO6dV89dseCiM3BFtVNAzf7JzAWa0671JD7HilylRWBlP
	cWV2tIJEf7ufV2IV+2ZHzrHYMLXIQn7IAK8fgEQbFkeX2Bk006wQhUC09DfKjwaLy4zMpQ
	8cZuhfJtQHWUTlAsyBDr60swsrBiWqX1z02jM/qUswPiThcPT3JkGRg2njqFmYXMA4rsqI
	hD8jbn10T0KoUbfKNYSGiFEnmDcpTSvpQlzX/MByDGrvbKxzWz6lkLWfVNi4cw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Fso4lCHx;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Dh7QhtWS;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=1qc6SCnxNXxex45qUtOCVU1JUITLaHshtbXeZHss0E0=; b=Fso4lCHxeuP8Fs0v8fLCLPTMdl
	0L3sM+tb3zRnuTevYU0wR95sRQ4boIDxMdPrm7PgcRIPd/EbnQfpaUtogFthfQaSALC8lSw5W99h2
	UwPdwPEk1WWKvRGPJU2FdX93P+Pu43dKZsv8hD34pLzU1oVeys8R5NtKr/C9+o5J8coOGfuZA656k
	7QJR9TUtm+1OXGGI83pE5QQSHQwILtm0UxqnBd4zeaWrYCTNHn1L6iPwRhr/ohflKPA3dTkWMmjfH
	ew+OcQ+/TXJ2sNFZgc8/DWRKl3FEjNOc9ZpLyRSQrY4UAK0rchrFw0B/HQoea5IZMqlTXBNbyrDH2
	6hGkERKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA1uH-0000000CyRf-2Cic;
	Fri, 25 Sep 2026 09:07:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xA1uE-0000000CyQe-26mz
	for barebox@lists.infradead.org;
	Fri, 25 Sep 2026 09:07:48 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8942F201A8D;
	Fri, 25 Sep 2026 11:07:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790327264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1qc6SCnxNXxex45qUtOCVU1JUITLaHshtbXeZHss0E0=;
	b=Dh7QhtWSAozpti9Zek0Nn99tMTN6q+igHmCgWdqFFAoeKl8uOC3jOaZiMqHpJ+pFLgoqmD
	UK6tGakmVqZjkm9ANjQ94PP+aE9Pz/OtvEdYKovyLIU4Pn2NCePBTeNNLSMDDhqaYnqvZl
	iFbeYS9afkRa4zGabRhh7yR61axaVs2+NI6fdCnadoSyBj9FfC1t++p+Ag6aMZKUEUIDBW
	+uf8rDIp3O5VvRd6qalflPYcQASLUekIL/t+54//XsZWQS8WuSeWwxW4gNpewu6IhGST++
	EBlCmo2N/qYE88Z57m46KIrWWy9HuaA7LIvZ8r0PXmPHk3grDPhj841odj2LYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790327264;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=1qc6SCnxNXxex45qUtOCVU1JUITLaHshtbXeZHss0E0=;
	b=XthFrn8DJ+qHbB0zjFos3Km2tvMR4psXBvAzGStg0f10m5QPCVG8F6S5WjNZyhajIJ9gsu
	pxqmNJ5k8rhWrPaW8R0dc94F9WepC6vnVaze3ni0ld6+Ce3Irtpc72AMTtev5rkycKLhCy
	5djCjaP1CvzmZpFCY+RIExec6rumAf+BwT5d+zCLyt0u5KxL1QhNMg41xNpaOFkWTaFI7b
	Y00a80XD66wOfeC8ZmZol+mhgDGBiU3PMbA/eSuLEUmrScyfs17khUtwXDRzHuQLzOEtO/
	8E7W21JOEYDgdZNuYEhBqnstNWZ6Sj1S7whS5nHfllXklc3c8+a0JWf9E1FK3Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790327264; a=rsa-sha256;
	cv=none;
	b=ZlXeGvihzoTyLs7b3pRTE9JUChOlFReJ9PMgfIHJLpHPvycjBg3AI59v4q3hQt4JeFjach
	vJXPjDfb+Xa/tJRMayqcMOvi7IiCtqmhjq+3zXrLUHkV/RuOyIYq/2keAxlaAAuBsnVbv/
	CCM4qy3VDwfuNHKM0xqpqCBE89AIZz7qvUd+43KsGUhYTODxcIYpF+A5kO6si2+bRnlUt8
	eXjQRfl5+0UPMIMwBp45ZlyDEDgApSHpPqaNHQKwQB//xUV+QxiOeojonaJYZe795+VXJ9
	90t56dAsHFX44h3BywKTVpoQXUEAjfOY3FUZGRCk/WPYCd/lUwPmDZzqrGUYzA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 6E7F9FF868;
	Fri, 25 Sep 2026 11:07:44 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20260924150624.2771746-1-a.fatoum@pengutronix.de>
References: <20260924145332.2712276-2-a.fatoum@pengutronix.de>
 <20260924150624.2771746-1-a.fatoum@pengutronix.de>
Subject: Re: (subset) [PATCH] fixup! Documentation: troubleshooting: add
 debugging via built-in init scripts
Message-Id: <179032726443.822161.14843415227209349443.b4-ty@pengutronix.de>
Date: Fri, 25 Sep 2026 11:07:44 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260925_020746_705276_3ABD2CAF 
X-CRM114-Status: UNSURE (   3.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 24 Sep 2026 17:06:21 +0200, Ahmad Fatoum wrote: >
    Applied, thanks! [1/1] fixup! Documentation: troubleshooting: add debugging
    via built-in init scripts https://git.pengutronix.de/cgit/barebox/commit/?id=d2e1dd036edf
    (link may not be stable) 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.96%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::28:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 4DA54201A8D
X-Stat-Signature: uxuw1m9yex147cqorjofxbpifhqzpmgo


On Thu, 24 Sep 2026 17:06:21 +0200, Ahmad Fatoum wrote:
> 


Applied, thanks!

[1/1] fixup! Documentation: troubleshooting: add debugging via built-in init scripts
      https://git.pengutronix.de/cgit/barebox/commit/?id=d2e1dd036edf (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



