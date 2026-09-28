Delivery-date: Mon, 28 Sep 2026 13:29:28 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9Y0-007Gv1-1P
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:29:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 473B92001C8
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:29:28 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wb69WtLS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CtzDUUO2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594968;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PyiA7kClxoF+JWMi6MohvsZyEqQ4neapkhScVJgqp0A=;
	b=aycO+HeWb7ITSzv9Q6y4BOO8JvUpql8DVON6taajCIVgk6oNmU6nZRG0XN072jpn97AiJp
	e5cICZs/kaYMT6t2zZnX3fjcRFZY3/oF9WjlB5/s1VqZcgZHIXompnalKXPrIP5q1Uchcs
	lwLex6xFqL69trXkH0ebbUtK7eiBCbMRGRCn0L8imQvoxgaA/LSc/PL6kdh89kCrJagUy0
	AK9p6wubRfChqqA1qNmTBFWAklCRJMlH+gFA5bd7zEdItbaUmpZSQyeyayvfRujPGefo0M
	qftQPwHaLI2Vn8ofpCCyikFPSzGnCz8bvhfY8xZuCZyqednPNKBl1pza/ImBwg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790594968; a=rsa-sha256;
	cv=pass;
	b=GcjfGkS6trfIXzjb0nEE3W5+BuhxoPaZvsDTSSm+E9ECRa4v4/OxLA/1142T2Yu+/eAKR7
	lNDHEX0RW/U0HSGtdBPieYZEpVSmNIL9nd2iUV1+5SQEH4jBTBu2NgKTvR581cJbi3f1oI
	yuzL2nwVGGyFpwvKmkoppnyAeqDQchJFdA5PZ6UB4Pc+0mOyMOF6aQwLf+xsg6CzFU0Bdo
	CQTjejFN0HP16AoeLbQ+OLK+orBdYFgMgJGRZrk7koO380Jo0TtJQPNZpV+zw8hkojcHK1
	U60Vnhxb7Mcjhyd5po1ZBIxsT6hxU7r/nS7U93fQQHitNUxtp4Y64JoFhqjBNw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=wb69WtLS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=CtzDUUO2;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PyiA7kClxoF+JWMi6MohvsZyEqQ4neapkhScVJgqp0A=; b=wb69WtLSvD5WwmOH9gY+HwjBI7
	iqlk4DCdS88SEJu/ZJdtyTMvwCj9yCpXBkiQB+B25olF9Hg3gXuj3/3tPMR64HaRYN3CuDM/HyqGM
	R4DanhS/Sj1V4Vbh1NBwMDX791GP+NUZgD3duCL3qGjCBKa+qKk4AQ6qrZzgdT7oE7vpXSnlguCiH
	jDHTQMJcaxaYW8N/r10KUUN4IEpjlegGMabEGhBXtT1UlsY+5Ux5spRkCTsSfwfs6051qaSkimJLC
	loFKI5x3H6Mi5xHqsAaVnKOm39W8/c6OO1H09VXkfhN/ZeAb5H9VgvFyGfkoSxoGiE2IcP+eri1Zg
	Wdqulq4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wu-00000000S3G-0IIW;
	Mon, 28 Sep 2026 11:28:20 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wq-00000000S0L-2V5L
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:17 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CDAB5201E7F;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PyiA7kClxoF+JWMi6MohvsZyEqQ4neapkhScVJgqp0A=;
	b=CtzDUUO2sDqdILZ6uGjY2eAYd4WixF6b4XfdlTN/F5VxDiryy9nFMiMrZuxX6s8+29YNr/
	3UJGWE1/nBtC5g33PpoUX72YY3o8XfjnNkhRs7nzcr+oLoazzJr2nW2IImv5trRhFPrthy
	AffSmK88n82uKXO7OskyvC0e1amOvGCSU9teKwTO00i7W0Y7P/mH+2EH6aBm4iFjTJPNZu
	LOFc5g8bEIsBgbWpMfD+/lZmAafDeC8Mw3Oj3p4waLVAop1ikDy1pfPKr/9fBeR7/Ekea1
	DptA4lerAkjBxwlgjyvvV5tmA1X+ocrDyNlZXJYEywm+W88tN42258ulHAzKPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PyiA7kClxoF+JWMi6MohvsZyEqQ4neapkhScVJgqp0A=;
	b=JCUY3Tc439DHP5P7+rgTBAhoqTRXGHgEsdBw0CQiS+a/aFXr6bldAPHUTsMLcUKBxb/DN4
	v6wVv4VH9ObVwcob3gk0Tl9ae8TRDhIpmDyUr2WmpszepL2Zvw2yUvoBjm/wyL5FKwnKKu
	J1XnEff7bdim++/O4tyZ3Yygrq29eWa7jmhJIsVEcQVOyrZE7X924bi5PECKpGFK1AKQWs
	HZw28SLFGWaqxija8Q4FzgUWNbhHT4jB/9+daRzXzIqLFIm+iXAN1ZN2TWcGCbQMeo0k7l
	YtJNPElqNgtGO4fRAXt/3nypnBNmDxc9iMoQyTyHphXV571TEzIXsIZ9hW42dQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=fJnrSvHc8ens+CD18Hay+P5UuQuWR7hC//5CT3XH3cpZfO2lCWaoML1O3IT5UphP82g3RC
	ovsczSHwQBBgAjcKRUgR7lm/D7lY6Qfbq1PNY9kigjvRqnAuWbYItw7pVLeGouGUHxilc8
	2iKdPblXTbm5tMo2VMwwY7Xf7EaN06zmOGkv33kzCSy070AXI2ouiSQFlgQxlbCMn9XASa
	fVEvusrRWoFaJrv07+/AztFJAktEcWU25b7yHY+bYj+sa5f5HgLWyoG6zW2jMAJ+Q5vuDq
	0NYa6ZDlJipXVRmnPbV+nWR98cxzcUgRAzfJYSolC3u0DU+5SwO7eXSv1mPtPA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BBAFF74D045;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 05/11] Documentation: security: clarify the environment section
Date: Mon, 28 Sep 2026 13:27:00 +0200
Message-ID: <20260928112731.1271094-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_042816_806520_50BA5997 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> CONFIG_ENV_HANDLING
    can be problematic, even when the environment isn't mutable, i.e. it's simply
    read from external unauthenticated storage. Clarify that in the docs. 
 
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 473B92001C8
X-Stat-Signature: wgdnzebbgdantw986zqi1ptiiqc4ie6z

From: Ahmad Fatoum <a.fatoum@barebox.org>

CONFIG_ENV_HANDLING can be problematic, even when the environment isn't
mutable, i.e. it's simply read from external unauthenticated storage.

Clarify that in the docs.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 7 ++++---
 1 file changed, 4 insertions(+), 3 deletions(-)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index d981d89268c8..9a241b0e2e8d 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -140,13 +140,14 @@ In addition, there are alternative methods of accessing the shell like
 netconsole, or fastboot. These should preferably be disabled or at least
 not activated by default.
 
-Disabling mutable environment handling
-^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
+Disabling the non-builtin environment
+^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
 Anything done interactively by the shell can also be done automatically by
 means of init scripts in the environment. Even without shell support, the
 non-volatile variables in the environment could be used to reconfigure
-barebox in an insecure manner.
+barebox in an insecure manner or to influence the command line and device
+tree passed to the kernel on boot.
 
 A secure barebox should thus only consult the environment that it has built
 in and not parse an externally located environment.
-- 
2.47.3



