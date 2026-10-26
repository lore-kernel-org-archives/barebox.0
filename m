Delivery-date: Mon, 26 Oct 2026 14:06:20 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKP5-003VzF-1z
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:06:20 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 9BDEC200153
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:06:19 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Gj1YVrBc;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cNc1o6eM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793019979; a=rsa-sha256;
	cv=pass;
	b=X+F4KEGD80h3NjI5ow8R0WBR966bYvjod95LjVIiCpunjSKH7IDAXUqaA2S+mzD0Hs3qj1
	VxnEgBKehPZiClLj+BZ8W4IVGbjTy/KpVL/1ppor++b8YMFthkb7ySh1quL0QWnbb4Sufy
	geNPdJImD1/N1pHjEnb01Ga2RX/cy0+swtQBBFiQlDJ31p0RoFniZKRe1L/r/LvBLri+cS
	aT0O4iSldGRw7/tfRI5IczUd48i0ZoNthj3rAmP/Pn9Z1I2ZklE8sdPiTyuLzuBMwBsH+k
	e7yViReoGkOu2aGh4ARXuHRPpHz4VktriC17t4JOgX2AdNOzoXudSIDhCMRQNQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Gj1YVrBc;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cNc1o6eM;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019979;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=0AJdWDB1MEoG4ygZPgQ1y4QchF0YyiXwKICcKat2aKg=;
	b=YrXTq7F4qpZsl4u1ghkIzKih9T+jYquAH67XqyLYlBWjRXyL4IfOMil71riwCzglvsfuP8
	xC7hS1p9hBfJHjn+0A94KrdGK5YDsNnDSYXgGPC+yocP4XDlzXNq8rL32AlEb7EgwQqu3k
	rgStxAK33YpGIp/UHEDtr/RSictODP1GePoZ9kwH5RAQiavOExImuo32M6noonb24tQU3Q
	NtHsKbCa6wTxC9dUehfBXLC818Q7g/Fhju9wWg6kvgOelluqFul5f/d0BRtAoNX4q1CZxA
	YleV0QMRv88BIFAtTqAMt+rac+cS8Nw44Z8+3wD0HolPpGJBniERgOeB3oxb2Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=0AJdWDB1MEoG4ygZPgQ1y4QchF0YyiXwKICcKat2aKg=; b=Gj1YVrBcCG44N9
	KP9AwkSQ4TMG/hQVluVuD6jq6LPRUlITqKtaGFK3uc9GWWSjlPmphjwIGZkQ2TeqxkGEqtYqcbEt+
	e015K4omu5t5XFIFgt/wWeiHu9fZrZvhiqDWHmO/BDlsP8/vsUr4hNdRVi+djy/mMG5OcuFhZGHM6
	eb/vs4lfNxpc7ZZUQV7zoMZVZnkhUMjUS5QmaFlVZoTRvmnzKVswdR64XULXKbuiJqdyxRJKzSCRM
	9x/7T7AztqcT40Vhn1jPAKNINQ1npfaVLIALALu0JCDX8nWNhm6wKeH9QaAk2/uZ4HPmIHYWu1YEl
	jZwzGCZ3HAvDCAwLPgKw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKHP-00000002YCt-38Cv;
	Mon, 26 Oct 2026 12:58:23 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLKHM-00000002YC2-2O4D
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:58:21 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.4.pengutronix.de [10.17.1.16])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id E1C92200582;
	Mon, 26 Oct 2026 13:58:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0AJdWDB1MEoG4ygZPgQ1y4QchF0YyiXwKICcKat2aKg=;
	b=cNc1o6eMVeu99VY5Kg7iXy4+hKcaRLdKC7vG0+arrZcK8mPeF/8RfUsM0bhIg3mEOHHR6p
	Mw5chT+EV5Wf0QiOk71akKvUcBAeEWlsExfMNJp51BzHubZHTlSORaQfYrHrZ85M0QnxTN
	5X+sHX+RZLE7I5Fz1D8icOGtwkUFlXnn3xMOPL0Y0npcf5fI38gNXP8we9taOxwmT6Pz9+
	+0Au8fD4FggfzwlAJDkXVuvrqjnNOcFZNFopBz0er7VnEV+rscSPUVDYTIn8hr6HK2tkU/
	J/tlFTF39RBiK8CoPiZFkZdzl5xeRu6baSCJpJ8UGcHxNix/Wd0zHWoyoOjI7g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793019498; a=rsa-sha256;
	cv=none;
	b=V10GWQrqZ4+1ReLtJ2RbOauV4TWwdfKAP5ovGlYDgzg1jzMXtdCnfOwAMi7CBOXD8W4mBV
	ySIfy9ZS5wp8hyQK/LGP3pPffRutCpYx8LPTSHJMwmAb/glXOAs5hST6IFXyDPzqVFqSA7
	yJvPFvkmOq+Bs7dsKIhAouTxCcGsZgmDVaF6aiOHyi2BDxcd2yPsk5K9F95GWIddeIWMtq
	ZwYbLt+ftFBYuD5lEn9FwXbCa9oWJrq3LK9anmK1hFvvrufyWy4n4ii1JpPnF8AkoL9qbL
	FVcRbEO2j2iHHciIeqyQVhWbIYtc4aqaMtem6qjKJZI0wOnJRevma+zoRTmjEw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793019498;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=0AJdWDB1MEoG4ygZPgQ1y4QchF0YyiXwKICcKat2aKg=;
	b=eF5i3ii2DV4aT0iCJF0xQOBxc6hGaqB7LW1Fn5hJAWlfA8GLrkOTTX9m9ffZ02z9E4L4ER
	NTc6fIlR8XMZ5U0MzG/giJY99El6hI3EQUSYxhsrddWa/orLkYbMpzeiyqKkhf5sP+sPlL
	Fsvo+mBIQ2GObnO2xVqKpKe3Dcu9bDyft3gkfYXOffQIXCpqvrwYrjPenpkqF/ISV1azjP
	iGNUrbYE9YXpqxTPxkQbgh0sMGE3YK/1o5okAjH98aVZdAGSDT9lmoMANathDFdjHH336O
	SL7ps5rz5vB0bxu8WSwnj7DqAUl+KURLnpYjNYysDGoACxO53fU0wz5HcMgNxg==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id D2FE0FF946;
	Mon, 26 Oct 2026 13:58:18 +0100 (CET)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@barebox.org>
In-Reply-To: <20261025123315.2961785-1-a.fatoum@barebox.org>
References: <20261025123315.2961785-1-a.fatoum@barebox.org>
Subject: Re: [PATCH] usb: onboard-dev: sync with Linux v7.3
Message-Id: <179301949886.201480.14438605980167619206.b4-ty@pengutronix.de>
Date: Mon, 26 Oct 2026 13:58:18 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_055820_774249_722EE73B 
X-CRM114-Status: UNSURE (   6.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Sun, 25 Oct 2026 13:33:12 +0100, Ahmad Fatoum wrote: >
    The barebox driver was ported before Linux learnt about multiple > supplies,
    a clock and the I2C-configured USB5744, and its device table > h [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 9BDEC200153
X-Spamd-Result: default: False [-60.40 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.97%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
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
X-Stat-Signature: 3j44bb6xp4dq1z4aaxorwg5qch8a7onz


On Sun, 25 Oct 2026 13:33:12 +0100, Ahmad Fatoum wrote:
> The barebox driver was ported before Linux learnt about multiple
> supplies, a clock and the I2C-configured USB5744, and its device table
> has fallen behind.
> 
> Resync with Linux 7.3 drivers/usb/misc/onboard_usb_dev.c and .h.
> 
> 
> [...]

Applied, thanks!

[1/1] usb: onboard-dev: sync with Linux v7.3
      https://git.pengutronix.de/cgit/barebox/commit/?id=5505d767ec11 (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



