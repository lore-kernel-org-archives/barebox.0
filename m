Delivery-date: Mon, 28 Sep 2026 13:29:31 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9Y2-007GvY-1A
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:29:31 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id D745A2001C8
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:29:29 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="cii/OxxL";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=aflRiXcH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="dybivDI/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594970;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=9Tk8EToa/vQijGIMbpXIgZc8T6HWAx6GXjuH5qcOGM0=;
	b=QIDLQdhPYO9JeZOOJgP04OcDbHwobUyCG9IJWCrE3FrjhBTqeHfUUdw9CdsVFLI8PGJeAD
	48Gc9OyJwfuo5SDZzDiI8OsNJOaJNFhdG7UnyAlKkJzEm4zyeBA9seFKFY3IBw53G+xv7s
	auK9+BzLPWqZWW+7AOnF05RDyQoup+D7hSIHi1UmT6qufS1OcDrIeUiohAd+0sq+s2hHGF
	vuW3ytx1i+itRjch7wq04XlZKjImYab9GH3he76bZ6mCjSIbMd9FEn0eV0yj9iohks/RSh
	89rwwuorXnZcTawfk8kiCCp0yYFJ/RsV7Wn2nPylAlh+K+ibxLjClkSy/yU+0w==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790594970; a=rsa-sha256;
	cv=pass;
	b=b3jylNdR5e5aB1DkN/OLhYQEeUAycRqgqxnYt5oTl6eZSIGjsinAfAuc/FNr9TQtecRrxO
	kkBCUCKN/W8XQK7Qyuvo3i2jnwBF+4YPdMOgjvGiwB6iZBLSA3HDCrQYqWhN3gS2vS4Phd
	RJIbNCz/Z5IQ9VbHd5K4+0ucdXYOd7EhgHj+OnGRUAo8XhRqMp6+Dat4qt7YmQNakdAXQB
	h7uGpk+PMC9TtaQlaJXL5ebNwEhqwxe68nbEfp8KXNqdTOVgH0S5838i+67c3g5ydGElvl
	itBYD1n+Ly75AMtb/qPhWWfITRzZFyBHj9eUHXkVf9npT35GliGfPJkNIxrDoA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="cii/OxxL";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=aflRiXcH;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="dybivDI/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9Tk8EToa/vQijGIMbpXIgZc8T6HWAx6GXjuH5qcOGM0=; b=cii/OxxLzK+WAt5cFLEHYy/REO
	dYtzmFNdV4W/3UvImpq21R2QCgK1G34F5h6qRs0z3BoX3p3zZj4H9VBBD/vc4u68SN6Lg/dsaPNMN
	wqOi6bEXSLSvu500m53OzmRyWFQYzkjEhdAheLrTZROGEgaxKc6/46EN/77fOb5yPRSh9rg1+1CVg
	g63XDG0tDJirUjAZepwIghKxj2bOtSEgQo6HbPQEfBU4GFkiw33GmoStqVIJb/8dGFzcH7XU+VP/t
	GhC3AD/rppk1KEooJ0LdXwevDtYI+KOpXC1fYAcHIpZiao3BOzufTtGcrx0iPhmDs2d97mvVXXqMI
	Iwj7yHEA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wt-00000000S2t-2d8p;
	Mon, 28 Sep 2026 11:28:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wr-00000000S17-2WTY
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=9Tk8EToa/vQijGIMbpXIgZc8T6HWAx6GXjuH5qcOGM0=; b=aflRiXcHKJ9AJeO/QFoRtJNxzG
	X+aGCKRulUwKOp+sqrjc+o0KXjfsohJOWLh/+qR6Kvdacg55iG+3pi6p5LfjIEdpMH3U60UNktipC
	T9Rcu3BL8A9I6ND9g7lptoVB8XjC4//qQhJYdy9Rsrs3VJsC+bZI2hG4qt0XU2tIHHzrTRYjr3PFQ
	Stnne7MGURMdGoH1d9z/caU/EvqDH1J/OaZzPeiiAMvtJmX1GJun8Y1mm9fZ+Pif2ccKAYZiMeesv
	bcyFQMmb8N++Vca0yrOhSXveRGphy/kVPhXNmnHG+HCAY1p4UT1WAX8tBts9gYQGVhI5Hv1FkwEhw
	oXVgMK5w==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wo-00000001PlR-0j9q
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:16 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id BBC09201E30;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9Tk8EToa/vQijGIMbpXIgZc8T6HWAx6GXjuH5qcOGM0=;
	b=dybivDI/71nI/mL5QvmuVuguwQw49S9EzkLswJmBnhYxwai2PE626fDMPwC3z4iBzAVvc4
	iYybZNDCpgZFKdsCquekg/uYv24vGQaXVgNVGpRXt+QCQi4kvVpMel2qVVLfXmCHvz4Uu/
	rxx157n/XIKJBoQMJHc++yj4rqt6+L6+sCkXr1nlaqirnc1E3x9f4JxipMFsttwF1oXQgi
	TeKquai91OO0tChbS4oxTy6Dimt6ePKlSWL1wuealxchTYZs2i7NzffjlmoCFdcgbF6oY8
	zu1cU0PS6cYJKBJmltrVNAOZM1LFPFXZOwUtKLFYd2oUAn+NF40IF//nJb5SCA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9Tk8EToa/vQijGIMbpXIgZc8T6HWAx6GXjuH5qcOGM0=;
	b=Yr3/hDX7GJNPZtx4uDKuWI7NoiAlPjfB8sdp/ku/AWINExeLDHYldMwOF3okbGitYqtVID
	XrFy0vXUkevIb8S8qU0MdIcara6URDGkGjF4+cVzjWQYwlua+rYYAbJjw9Q/t6befP06kC
	vduY6AhMVeGA5GUibobz/XoT9oSb0gKwIiphsjpXqnUNLMu06vy3ytCoYKupTBcDPqgKzf
	rmF6VfqGjQEtxgsnUi8VgjA7alEoU7urnUxYqYj4feH8t75NaGF4cdWc0nijuyvrr6hroQ
	64DTlVj9fe7nyG22ZiuWaVzob7tHkxEY3/f/k5U4YzyS9s557jon0tvpT9ZJYg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=fJQaCm6Mt7Co7PZ4M27Y7K1O+Fh40ZUJcHCWwdgO4jiTeL24wUXn5D0QIsCWMY8epOI/2N
	rGLd+tZVzdmDIRbt3az4nVp/pX+v6fpTiYcf64fthip+i1zrgC55wejRyFpf2hsbFsWr7Z
	kioQfKAcHxe+SedU9TCZq5dcFq493MPxHY5t72Xd5nTej28eB1LpxDdLuvkBoUhGoRoMcV
	RMSXOnbQ06vJ7ccAfVcE9nJgh31W+lzXCCFa4WQS3SLWVSI2Hr6nMkfIDuAuBN9Bv7ErK2
	ByMvHLaDPntXddFS2LLDOI1WV8JH3v/8de1vdvJckdvw9TSY7PbB8xXv+P1Btg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 9BA4574D09C;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 02/11] Documentation: security: clarify development key insecurity
Date: Mon, 28 Sep 2026 13:26:57 +0200
Message-ID: <20260928112731.1271094-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122814_441999_363CB7B7 
X-CRM114-Status: UNSURE (   9.91  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Should go without
    saying, but spell it out anyway. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- Documentation/user/security.rst | 3 ++- 1 file changed, 2 insertions(+),
    1 deletion(-) 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
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
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_RECIPIENTS(0.00)[m:barebox@lists.infradead.org,m:a.fatoum@barebox.org,s:lore@pengutronix.de];
	FORGED_SENDER(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: D745A2001C8
X-Stat-Signature: 3wsk5codbib97pu6jmriytu9agt94agc

From: Ahmad Fatoum <a.fatoum@barebox.org>

Should go without saying, but spell it out anyway.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 657bcd690b8e..e650c03a1023 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -92,7 +92,8 @@ This can be enforced by setting ``CONFIG_BOOTM_FORCE_SIGNED_IMAGES=y``
 and disabling any ways that could be used to override this.
 
 For development convenience ``CONFIG_CRYPTO_BUILTIN_DEVELOPMENT_KEYS``
-can be used to compile well known development keys into the barebox binary.
+can be enabled after enabling ``CONFIG_INSECURE`` to compile well known
+development keys into the barebox binary.
 The private keys for these keys can be found
 `[here] <https://github.com/pengutronix/ptx-code-signing-dev>`__.
 
-- 
2.47.3



