Delivery-date: Mon, 26 Oct 2026 14:25:50 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLKhy-003WTx-1H
	for lore@lore.pengutronix.de;
	Mon, 26 Oct 2026 14:25:50 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 108202022B5
	for <lore@pengutronix.de>; Mon, 26 Oct 2026 14:25:50 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=byidzi0M;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=a6DG3Xhw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793021150; a=rsa-sha256;
	cv=pass;
	b=ZON//7GwvWbe6NqZUUR01VwPEENQyl3yLlkPyTwh5g38uTCfxlsgkMuZNnVVr+EVgnzU+X
	YSuUz5hpnZF75ybzVSgFQiWrKupuDyzBPkpCylE80j7kQxNBUH4ibQd6sIECU3rrbkU0u/
	OqfTrBCjhbfEXcjFy0hw9lydov9VMsiQ40H5sHU+jwgZa7lzTa/fOpN1Jycc8bBx8JEKkr
	iS1N8Tg35AvjuycmknU2w7Bi31ksH8ftpe2k76jF8AtqXlHYhbu8aQm8/Zq4udMszKwqqa
	X/NeeXZi6aB3X0d5takeLXZQ2+qwkOKKGUfQ0GACfVRbhZE8SUAp7Mm0eBH8MQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=byidzi0M;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=a6DG3Xhw;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793021150;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=DBpqg7BcWPF3fTICiPvXoODY4DkEH6qonjDtcYSnZKU=;
	b=VmK+MD0RaorZIktaeoBraHpBhaFe7xVZaeFTlRO0qQ0zi48nScMG5+BMhlOYpcyinzZ8YR
	Y63mC+d4/nSKrb+TLjov3eUCwlzlruOAKgEdT7dmwWCRkkbCTVE4s7J4iM9M5LGmPBpCST
	dCbA5RgJus9giyi3hlnLDypdL6703hLQiS9xEHJnjZxJrrBN6Ck4w8oBKthMfTrMwPmfv0
	KrhtG3s5fLwb/QU3aoiw67y8/+9kOUtzGWFaM4d5rA3kQ4cffETWcyo3M6vNSod+OL/k7d
	weVIu3hQ588m30C+m8n3KbEQOPKwtl4+CYMkGdpepXRoDsvA7vKgpT9IXKmnBg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=DBpqg7BcWPF3fTICiPvXoODY4DkEH6qonjDtcYSnZKU=; b=byidzi0MwjlZuH
	BXyQ+dMFSDy1W8jazDW9Jb8gJ/M3A7NoNo+YqQTXrPMV4ZIC1yE0E9sxHa+5uI6DSFXJnZEiGj/2f
	ieODgH3a9iquUuMpyd+IWr+z5cpbUIJehmncQCx1W3HjQlsAkRY7JsRp0PU7I6PAxMjZfDIv4/P1U
	5czNr6Yg1rVsj6qJ3ze28Umj502gAvSQ01YuJXdtwb0hPJsjrASZ0r7DbJ7JPribKXX+aaFU4RFXL
	9qF4sbyoxKNo1XEBWuFF8daaEA+FvmpfUTcuGGNwBncnET2k0fnpE7CG5E1F9vqwwSOOWHzxLe6Z1
	EiD5E0TgpJWcAbj/jZ0Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYe-00000002TJX-2750;
	Mon, 26 Oct 2026 12:12:08 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLJYa-00000002TCC-0YWP
	for barebox@lists.infradead.org;
	Mon, 26 Oct 2026 12:12:06 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 050742027F5;
	Mon, 26 Oct 2026 13:11:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DBpqg7BcWPF3fTICiPvXoODY4DkEH6qonjDtcYSnZKU=;
	b=a6DG3XhwM6S76Esemf4tRaGw+UrlEQdAn0H8V7M04ZQtFLPwd3ZIvyydIDksFZtUxzM6w7
	uKSNQ9D1FRAnkUwKAxhPfPF9O7rrxxDt/Ik65DMO68O5XHqomwLZ6/XU/twqF0dOXJM47K
	3p6KueLW7ONHB4kWlyW/e59lOXp5ib6706JW0FP0tsZgDYw4C/d43JeIaTfzgJTNjnNGOL
	4M4Rfooc7BwtzKr54NHFfeLOSWllUFeJD2LmaXotdVZT4W0Shex7fsFo2aSfdgNyh4SUTL
	e86fgIBcZEafjSh0XqJQdcbRfC6HT7BRubgdMPtcI0rMc+SDroLywOP5GuNA4Q==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793016717; a=rsa-sha256;
	cv=none;
	b=dibEvMTb7N+KKluAIvZGU6QPz1DI8GZsbMm72WZs8awxj7rH1F1zvWRR6XW2A/iCWjdAlm
	8zA4tbAOZdqJNCFLSDj71sJAk4nEJSZkolEniisVbJrz5RKNovgTjYB29TQEwVZ8rH0Ctm
	6mttFWe1Nwg36gAcxAjnQ7dj8WidnzrOeVdT39t6aGgwE93P62ApgarFCblhNmmjTSqXwb
	FltPFgyEqvy/hoBVaNih+AxXsA6xR+HpwHxaOGoZF/SR75anwcR4GTj2hL9t/AUXrPGMFR
	CZ6Mwqj9YoMNsqIcM+Nd/Ek3cF+X2UihoKeSsM6Y9fxg7xdWcMi2h0D5PpWPTw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793016717;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=DBpqg7BcWPF3fTICiPvXoODY4DkEH6qonjDtcYSnZKU=;
	b=DzLKNlae/b5N1a1JMQFRZcazoj/fv911wIMpbOiGceqUGnZqxGarnQJIQ2seM/IFBk3SFT
	InMBARPVvpnRdtEnChh01eEo7FZPuD6rRt4FrPSr5qy/whgqw3KwFFB3Zu0QlUfcdlVGPG
	i6BtPOd8tRtSTAOj9c44+LJLPaYKJFJleIEAetBvF0cnaHOowifXKJBluCEqzXgarPJxWf
	nzAS2H/iGqFEuqONtQrZ94PjEZPo6po0MRSdUFOZVym2mkW5QZQLk44lOd0eRQKwQ05vpg
	qbUgDO27DJ+fayKpWGTE/Y/qrR6xaDim4S4uUW3I9MUl4T3L3FFbiDRDFrRHew==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id DF4B9745F30;
	Mon, 26 Oct 2026 13:11:56 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH v3 12/12] boot: report exit status of failing boot scripts
Date: Mon, 26 Oct 2026 13:10:03 +0100
Message-ID: <20261026121150.455510-13-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261026121150.455510-1-a.fatoum@pengutronix.de>
References: <20261026121150.455510-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261026_051204_361079_53F3141D 
X-CRM114-Status: GOOD (  11.26  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> A boot script that
    runs, but fails, makes execute_binfmt() return its positive exit status,
   while bootscript_boot() treats any non-zero value as negative error code.
   A failing script thus logs nonsens [...] 
 
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
X-Rspamd-Queue-Id: 108202022B5
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: re58gmh6eqy4dbae7rh787fn9741n7ip

From: Ahmad Fatoum <a.fatoum@barebox.org>

A boot script that runs, but fails, makes execute_binfmt() return its
positive exit status, while bootscript_boot() treats any non-zero value
as negative error code. A failing script thus logs nonsense:

  Running script '/env/boot/foo' failed: error -1
  Booting entry 'foo' failed: 0000000000000001

Let's print the exit status instead and return -EINVAL, so boot_entry()
and other callers get the negative error code they expect.

Fixes: 662ff5a3558e ("boot: make it a little bit less verbose")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 common/boot.c | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/common/boot.c b/common/boot.c
index c7fa170224b1..00c95eb7f5f7 100644
--- a/common/boot.c
+++ b/common/boot.c
@@ -117,8 +117,13 @@ static int bootscript_boot(struct bootentry *entry, int verbose, int dryrun)
 	 * without the shell expanding or splitting it first.
 	 */
 	ret = execute_binfmt(bs->args ? 2 : 1, argv);
-	if (ret) {
-		pr_err("Running script '%s' failed: %s\n", bs->entry.path, strerror(-ret));
+	if (ret > 0) {
+		pr_err("Running script '%s' failed with exit status %d\n",
+		       bs->entry.path, ret);
+		ret = -EINVAL;
+		goto out;
+	} else if (ret) {
+		pr_err("Running script '%s' failed: %pe\n", bs->entry.path, ERR_PTR(ret));
 		goto out;
 	}
 
-- 
2.47.3



