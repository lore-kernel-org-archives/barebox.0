Delivery-date: Tue, 24 Nov 2026 08:02:00 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xVkXP-002iGs-1c
	for lore@lore.pengutronix.de;
	Tue, 24 Nov 2026 08:02:00 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9C72B205A1C
	for <lore@pengutronix.de>; Tue, 24 Nov 2026 08:01:59 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BbuQbgS6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SQVE6GWm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503720;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=8qFR20Ii7Mzns+4O27yw+w/blBeb3V8RHzs3TZrlTj4=;
	b=SufAwpv11sY3kvXhP/tapIJSKPtdpGAbItnCIvC2p71Zx06JcsLT29gikk9aScNkZqnXm/
	bvTDekTU3RKSRQG50muDm0eZLtBBrNlDt9UFcsjX1T786eRLiIKXAmLwkF9l+EsJpoYEP5
	fITHWHVymC/yJsb+pbgEyq9vKixwn1egsKyx1rNOWOJudJPo8g5njQOaj1zuXwI6PKP7sy
	p4BT32tIdAr0WbyQHxzb5osDOA9y+hntXEP6yyivJecG9SkatKko/V/mV/zVm88SAbsLuW
	puIujjheBIwGEBQrxrC3VC5nAA5wNUnO1GYgXjdqP2C5O1/rRa8Dohx6GNL52Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=BbuQbgS6;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=SQVE6GWm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1795503720; a=rsa-sha256;
	cv=pass;
	b=bf0qPZ6fA9iGWCwp6EYvWSHZ2CFpDyvBgxJOjucw9sqdbTxOZUcwhMJKqEDvwWZOuZFwk2
	xNFSSs5thprqZ8caCPZH8XKtbFuO8reUXMmok0lvZFcfF3rnDbhI5zPm76qEPFfXbXdHFp
	KSWwyr+rjZeXkn7UmjqmZI3Goang1NcwfO2ee46MSszpcd1HtSmBzUAdSjgUXeXYBa4lFI
	uCdKvbTTsoqLCrM1M4lJPOfLu6xLTMIMYNbsVvua9qT6kPqd16AZZp0YcwXBdb5mCdm3mt
	xEmeNBo995C+xlngOO2F4NUGGlkbfZ2BOSfQvjhOFr3i5De4I/GMPsVIRXizeQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=8qFR20Ii7Mzns+4O27yw+w/blBeb3V8RHzs3TZrlTj4=; b=BbuQbgS6JqQ4id
	YS6mGR7rmb+pSZnp+cKOhNe4cOi0WP0VLOMmoDUJ5P3hOeTObJ64I+pWn8rXF7tcyYKFDGKzX+VPD
	sjahPHP2aOIgonD7hfufIC/r8c9hlw5UXtitUmN7G/MXACXZDApJ+ThiYDOZ7qZzrPQIgmMLRXIr9
	4Qf4LerhVJOFES4Y/wPYIhen5Oa2eT6vTpXA9JRHDnTkAR+s3duguWUozHuZKNV8B11mcboXj18ZZ
	VlbiQp4aB9KqLkc/QNSGCwiLU5gyXpPzj4DPFIxHrzRg8pa6f6kvmejNR6iqKvaDfMn6vuZCO5S04
	LhCZh2fP0xoqLf18sFqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkWN-00000005hWf-2KCg;
	Tue, 24 Nov 2026 07:00:55 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xVkWJ-00000005hTb-1dWY
	for barebox@lists.infradead.org;
	Tue, 24 Nov 2026 07:00:53 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 38BBD205A20;
	Tue, 24 Nov 2026 08:00:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503649;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8qFR20Ii7Mzns+4O27yw+w/blBeb3V8RHzs3TZrlTj4=;
	b=SQVE6GWmiXYHw2Rk0QCehAuqEopqeZdLMtPeil1VRAyUlmmztW3hk81cqHEu2Q5AX2cFNO
	lzi7RItJn5JaO7gh1B5anWz3KJk5NM0OckmcGFEgeltIgoAG/2U6+r8g+HlECAnz4X6PHY
	cHS/D0iWzU2G0wzZ8hf4/+14tC8ZUCDEOChhRJfFhyUG1RRsXGfcTTUxhaIna2nDPHkz9E
	ZvAzncpL6wIbY9vp20tbkIKaWWjaJ8q4IXdb6/kpXrCo0ga3sFRVFPUl8iBUldOZUhEMPj
	qmygeLMGis4vEy3KFgz/x46ThvCJfeLX7xiMjqKClThWFA3Knq4DNdNtIAy2iA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795503649;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=8qFR20Ii7Mzns+4O27yw+w/blBeb3V8RHzs3TZrlTj4=;
	b=XCBwhW1KJ64nfS4zxrFO1zGJ3DioqdevD6gDiI0mKSNNClytj0jPY7du3BommK12ee0mQS
	fMmPdreu7fUowQai12uHxEvETvhm1dHLd+rQr0ZfZ951u/vuMilmLMHIJjVOMi9MF4Msf5
	KHeMqpzX4Og9IB/0TxyG6wrV7AQspFEz+/zzQ4hEXfKqcansyQHMA3SeCr77VeqNitPUpx
	dS1M6ht1AbPSyzj7Sy91THUOQQhl+bWGnbu0AuoVIzIbREkf4ZiC7wIcQGZM3llPs/JejY
	sZU8vTGccV6yrgtSvozQNepgGwbm+PWrP8WWJrhBOvfcsg9aeczdeKzb1oBNmA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795503649; a=rsa-sha256;
	cv=none;
	b=QQy0qsLQTo7H38gQD7QUxIxhPzHDnMNUXS5bLQOszcg8qYizgKAVMj+eFHz9RpybCuisZr
	vmKCynH2zoIANr+yBz0t5Pihj1O/QAPULtNRmSFGWCgvN42j/BPx0bvEIQpOB5R0+z5tUA
	N25jMPgirt3S3YiIBQBZM0uBVLIePFdE5CjDKUgNxObvRrpFsW6hykiB7eSKwsqQysdMkP
	8pT4pZ6FnHTWc6CN4FXpHhUYIty18bGZNnoOyHRm7AHb1Xo/BkTJrkHSZUynLaX9k678e+
	BITUtVS0KBbUqvqxv4ZiS+WnIQ7KPkYz0EERr3c6oVY2q/MzSoE3dpbV2MFgtg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id 1E3D4FF9E6;
	Tue, 24 Nov 2026 08:00:49 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH 00/19] driver: add devm_ support
Message-Id: <179550364910.372265.7270910190546224351.b4-ty@pengutronix.de>
Date: Tue, 24 Nov 2026 08:00:49 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261123_230051_636462_97289B43 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Wed, 28 Oct 2026 10:14:34 +0100, Ahmad Fatoum wrote: >
    We currently have only devm_ macro fakery that leaks resources on device
   > removal. This is flagged by static analysis and requires modificat [...]
    
 
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
X-Stat-Signature: qbhyqq8e68c7intdxjxztwns7btets7k
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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
X-Rspamd-Queue-Id: 9C72B205A1C


On Wed, 28 Oct 2026 10:14:34 +0100, Ahmad Fatoum wrote:
> We currently have only devm_ macro fakery that leaks resources on device
> removal. This is flagged by static analysis and requires modifications
> to ported kernel code that uses devres-managed actions.
> 
> Implement destructor support into talloc and use it implement a subset
> of the Linux devm functionality.
> 
> [...]

Applied, thanks!

[01/19] commands: devunbind: refuse to unbind devices that were never bound
        https://git.pengutronix.de/cgit/barebox/commit/?id=2f3cd537f711 (link may not be stable)
[02/19] commands: devunbind: don't poison the active list entry
        https://git.pengutronix.de/cgit/barebox/commit/?id=516d8b18e000 (link may not be stable)
[03/19] talloc: remove unused talloc_steal() and talloc_steal_children()
        https://git.pengutronix.de/cgit/barebox/commit/?id=608185e1b26b (link may not be stable)
[04/19] talloc: free children in a loop
        https://git.pengutronix.de/cgit/barebox/commit/?id=583dff63c5c3 (link may not be stable)
[05/19] talloc: add support for destructors
        https://git.pengutronix.de/cgit/barebox/commit/?id=97a3e539694d (link may not be stable)
[06/19] test: self: talloc: add destructor tests
        https://git.pengutronix.de/cgit/barebox/commit/?id=8a9d90d47fe4 (link may not be stable)
[07/19] talloc: add talloc_run_destructors()
        https://git.pengutronix.de/cgit/barebox/commit/?id=72ca334c8648 (link may not be stable)
[08/19] mfd: pca9450: don't free device-managed memory in probe error path
        https://git.pengutronix.de/cgit/barebox/commit/?id=b0acfeb7be50 (link may not be stable)
[09/19] video: backlight-pwm: allocate brightness levels with devm_kcalloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=e4cdb5d02ffc (link may not be stable)
[10/19] driver: implement devm_ allocation helpers on top of talloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=1d626b92b4e4 (link may not be stable)
[11/19] devres: Provide kmalloc_obj*-style API for devm_kmalloc
        https://git.pengutronix.de/cgit/barebox/commit/?id=237b2c2b0955 (link may not be stable)
[12/19] memory: atmel-ebi: use generic devm_kzalloc()
        https://git.pengutronix.de/cgit/barebox/commit/?id=f1302bba9a41 (link may not be stable)
[13/19] driver: add devm_add_action()
        https://git.pengutronix.de/cgit/barebox/commit/?id=82bcb51620df (link may not be stable)
[14/19] test: self: add devm_ selftest
        https://git.pengutronix.de/cgit/barebox/commit/?id=a1ba6e668264 (link may not be stable)
[15/19] driver: add devm_request_mem_resource()
        https://git.pengutronix.de/cgit/barebox/commit/?id=7d647338f155 (link may not be stable)
[16/19] driver: make dev_platform_ioremap_resource() device-managed
        https://git.pengutronix.de/cgit/barebox/commit/?id=01c980e30a33 (link may not be stable)
[17/19] treewide: rename dev_platform_ioremap_resource() to devm_platform_ioremap_resource()
        https://git.pengutronix.de/cgit/barebox/commit/?id=d168aa2f7b12 (link may not be stable)
[18/19] driver: make dev_platform_get_and_ioremap_resource() device-managed
        https://git.pengutronix.de/cgit/barebox/commit/?id=15f1ac31b61c (link may not be stable)
[19/19] serial: stm32: request the registers with devm_request_mem_resource()
        https://git.pengutronix.de/cgit/barebox/commit/?id=eea493319a0a (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



