Delivery-date: Tue, 20 Oct 2026 15:53:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJAHd-0013AT-33
	for lore@lore.pengutronix.de;
	Tue, 20 Oct 2026 15:53:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 2C714201709
	for <lore@pengutronix.de>; Tue, 20 Oct 2026 15:53:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KqvuKRVR;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Y/aZvUVq";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792504422; a=rsa-sha256;
	cv=pass;
	b=MEJr4K0m2nr2aW/MfTLHjmYbsnx800ZmMm07pKvewxo42qcntZLhMJ0RQjgFlnb/uFCyU6
	Sx4l7iqyPx3uB20t9HDUlrkK6Dcn+GtAUy17flPiTghtNLmbF6XjIu1D0xn/eWLZw17b8m
	rEwihmVpPDuyZWy+iplG/JCyVXsaeMi5EkIpW96PQzSy98dYlMrDlZpZnZLSIVPHWgvVMN
	y6iQebgMi5NDMtG2WsvmNYrCYPn0NCNyONERxlL2uDptJpIKeK3cAypwiBRXT2JaRKu9YL
	K5n/unYzAe7azUOV4uze37VOuqbY8oWGAytVAS1J1g+GrRSWuVLE6Uzz8VScpg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KqvuKRVR;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="Y/aZvUVq";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504422;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=6OJHa7p6VaOsbz/6Cus/D5DOUY/AJmOibQqAtd4fB+M=;
	b=W8xj8w0xyD0teqkvMb5Rxi19MH6tD2U0wRIF5O2k4my6Dp20yQrB2Vs7LDvA5Hqg6cQsYh
	JsxEVLVmwP+W8plFBjF30/x53gvrMl1RbLd7OvCliueRXuEOoyMQroV1IruAv+r9VXVepG
	x3XW7vw6w/vjwPdC4FM7wxpmemyxHPrGuka3PEMw4JGG+3a4bhcdUvfoA1gyYEGehjXs5j
	QpTnVUuCQPV5sNoPyEDtVNmNyrg8vydT4SfoyCTPtC80dHefWOjegxAIKYmpJLzXulkQLT
	6HLSaE+Ca4AIXV069Hp6PBc/H17GynD+B8hLiqnOlGlFu7jRGiDttdMNVG03JQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Date:Message-Id:Subject:References:In-Reply-To:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=6OJHa7p6VaOsbz/6Cus/D5DOUY/AJmOibQqAtd4fB+M=; b=KqvuKRVRIhOtb6jmDaow/Hweca
	kQLgZnRp+kuaV8b1h8vjkUsnNZgc4a8VhE0tAXkkFq7uqKJ18wWPWoL0j4sbXeVIP9K6j6oxQLTqP
	5C8ldcCzQmQOGOCApiZNeEy/huuNEmJu5DFyuG+g5Mt+RrXnqi8Ph8Puycefg6AVdjJTCxJW0RHJb
	xMtdeehtoYO3eEOxye0KcV+QB7HsCP9rV1CR4aLww2fNGbccgaIn9ENjFdoBtNyehQGRRlsijCZu4
	sRVq1l6b/tlLs7fX/Tavlda4kiIH0al5SlWhq+zvE8sBFcQn/U4tgISyezGW2AYSgnF3+aIo17Iw2
	h79b9KLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAGX-00000009pzK-07Ov;
	Tue, 20 Oct 2026 13:52:33 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJAGT-00000009pyM-3pL5
	for barebox@lists.infradead.org;
	Tue, 20 Oct 2026 13:52:31 +0000
Received: from dude02.red.stw.pengutronix.de (dude02.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::28])
	(Authenticated sender: relay-from-dude02.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 092AE2021EF;
	Tue, 20 Oct 2026 15:52:28 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6OJHa7p6VaOsbz/6Cus/D5DOUY/AJmOibQqAtd4fB+M=;
	b=Y/aZvUVq0DYJuEaSrlzhmi4sW1G/3LpXcFQ+CbnSwy84gIDgzgKtBc4bacTvzvB06seBCe
	xVHakfK4KFALYsyfmuHO0WTU60QxMuxZehITkGDbawTO0Wb8gCHk0BOW7FTHBvbf62t6ok
	qBEOjO+Htvpgz1qIOVPi2jWzFfBRpu2Il1mqds7SRdBQEtxOBZx+0G/v708jDqXTJO5X7s
	4yw0kKpRd+C/SNhbTY2oPEtIO9xGZjio8EZSSFw5Zijmb2jAqn/xpVHqRwkhfh1n4QrOeK
	JDpSeZk56z7vkK1ifhtxuWr5MzE35n8E7DBP6CX83i938UvdIkfX2t/9mEoMfQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792504348; a=rsa-sha256;
	cv=none;
	b=EMW12MthIqcTc7CScM8G5Ea0rC2Nhw6yjo6sPjyhKCz5CNiO+I1T1NHqQgzMlvA/F/4xOT
	o1gj3yKkVV8HsOkJqkI6+xL2TQAuiETeMjgt0qY2ZLm/77/HgmgLALNvOHILN62mJSRxsg
	xiJwJA/kyGKFJpTp3urBShkNJHZ1JYsLcL/twYpfeKKVOuqKDRdvNWmnRWjCp1h99p8PCC
	dmtHHqaS4bQpEZYYJKZjcDY296FVD6M/kO6cg0q4hLI+lV2wM3XEYPVBS9Vrn8Gafj5g5C
	SiY9bAHqw9ZIrb64lDNF9B3nbgL9f7pYiXjm7Trl52yL5GWxw3X3ONaKjhLTlA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude02.red.stw.pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792504348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6OJHa7p6VaOsbz/6Cus/D5DOUY/AJmOibQqAtd4fB+M=;
	b=NFL9xZPk0GhkjcAIoLf0tZJFnkVbxmgC8PNUS4p/tcgtMoEGCG4GV/aItPWHhZ2llCetsD
	gJshdSVS25toWO3FTkcKAnp4EuZ5D6ROW0/Cxyvqu6bR1Do2Fn3bC2NMJTLj5w5QqRgL+O
	mdAkW9uLdEtwhZOo8SgoMPSe3ryrd1rnXmaIX+sNVdLKMhEG+mgeGuWAdEi51u2AqJAA6U
	m/39IP0Mv7JY298tUhrImVzw30mPsM1GTsTLxmf+sa83nmRldLf4D94WHd5kcXMWNhJ3AW
	4HMEzLbaNJEkIdbecNhKoQj45gMiYWttxPjauzWsUqvDXq36emoP22T+oLmt+Q==
Received: from dude02.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude02.red.stw.pengutronix.de (Postfix) with ESMTP id E9AECFFA47;
	Tue, 20 Oct 2026 15:52:27 +0200 (CEST)
From: Sascha Hauer <s.hauer@pengutronix.de>
To: barebox@lists.infradead.org, Ahmad Fatoum <a.fatoum@pengutronix.de>
In-Reply-To: <20261015140315.1112500-1-a.fatoum@pengutronix.de>
References: <20261015140315.1112500-1-a.fatoum@pengutronix.de>
Subject: Re: [PATCH] images: remove unused FIT.ITS rule
Message-Id: <179250434793.2717261.13727322343827936042.b4-ty@pengutronix.de>
Date: Tue, 20 Oct 2026 15:52:27 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261020_065230_104094_9241005A 
X-CRM114-Status: UNSURE (   5.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Thu, 15 Oct 2026 16:03:14 +0200, Ahmad Fatoum wrote: >
    The rule building a FIT image from an .its file has had no users since >
   commit 7269ad4be96b ("ARM: k3: remove beagleplay FIT image"). > > Si [...]
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Rspamd-Queue-Id: 2C714201709
X-Spamd-Result: default: False [-60.60 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-2.99)[99.96%];
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
X-Stat-Signature: 7688ix6cztm5jsnub4dd7uxdgzfo3i9x


On Thu, 15 Oct 2026 16:03:14 +0200, Ahmad Fatoum wrote:
> The rule building a FIT image from an .its file has had no users since
> commit 7269ad4be96b ("ARM: k3: remove beagleplay FIT image").
> 
> Since the kbuild sync with Linux v6.17 moved dtc-tmp into
> scripts/Makefile.dtbs, which isn't included for images/, the rule also
> passes an empty file name to both the preprocessor and mkimage.
> 
> [...]

Applied, thanks!

[1/1] images: remove unused FIT.ITS rule
      https://git.pengutronix.de/cgit/barebox/commit/?id=6f8e0d3ff8df (link may not be stable)

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



