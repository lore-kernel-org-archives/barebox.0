Delivery-date: Mon, 28 Sep 2026 13:33:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9bh-007Gzw-26
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:33:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1B6382007E1
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:33:17 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u8wmfjLi;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=pcXvuJSq;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OrCkJ6Sc;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790595197;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=4c5Z0ZsFuEi8nJTz+d/3YRDrC3joxiWJ4qEcCHtbaoc=;
	b=R8kIjnUQCmG9B1ClK60E7mSBaJedMEomxNhG/uxItCQTQ4dpFi8ratpKLx+2Csdnb2T26P
	IRd59LrJOoLA/JEMwhF/CITTqLooGnXd70NmV3qp2BnAvb1X74fhHNjTvgC+aSEsYmS9do
	mHJzRAjMa1+JdIkWCJ63Tfs4BAr0mVJNVfw884YkosMA84XQH2aQvsNpij1MAFWpMTkkJQ
	PT8TJY6YpLmMCtSBMmOqDFEnyY13XyzAtQ7DpyzECjcaI7oNuEl4LLoIfYZ4F+MkXLpLJF
	C2o1wBxHWn4FF36qYeooj9JjwrWAla2w18VhZfc8zS1b8i/qXEhZiDmfH3Ngow==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790595197; a=rsa-sha256;
	cv=pass;
	b=SWH/sVb39NvylAYJME6X2NJm/qxmvZNAZzKBgNx3ofiEit4RPNeKgK7UaAWxO7deDN06mZ
	L51W3lmhrotMrpk1Xfkr2O6M5LkQkGk78MQNnfUJ0569LNe36b2q/1kAFhn/ekXKWT+iWK
	wu8UGXL5b5j73s7+1d+7SeNzlaGr/1dmc1CvQgiVwQRsfzzRm5t052jkBP5eEOiuasgfth
	2v1L8fRUyiYvfwHrYwvkospZwk7ARmHY/dEUuF4fCAD191taPuCcIR49BD997ku4ldaEKg
	neWCU252jO7NEAX2E7Uo7OI5izXvJ3DBet8BbrZve4PEglGh2w/HTdhPPATkeg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=u8wmfjLi;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=pcXvuJSq;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=OrCkJ6Sc;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4c5Z0ZsFuEi8nJTz+d/3YRDrC3joxiWJ4qEcCHtbaoc=; b=u8wmfjLi414jpVon01xrGBlA0Y
	PD9HqC/nfmk0NvCx75Wbth2ij/D3VDCN3ndaPLJh0mOEP1py8uBdnzrb78ibK+X7ddVThIZyMXZVB
	gCjaLdwGj+rXSgPPiTgadXeYcOEaiP6MlveRiFfbl6UWpBOFRMM9SRhwUYicZIQrh79abzPdHRX5d
	YB1+Cb4JcKCmkfQhsS6BJbL8NyLGaUxwcQPD7IrgJpbBSlmV65T5+fApabm8ojYmDKrMSnHljiDn6
	YCH9Fh4XdL0tD2IipFzGhIRM59D7BMa4sKRsPrmaBvaX/tm+zhrrWJZ4vSlAE7CbcJ52n98cgT+RL
	p0g4Gs+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wz-00000000S9S-0ztN;
	Mon, 28 Sep 2026 11:28:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wv-00000000S3h-0PlE
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:21 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4c5Z0ZsFuEi8nJTz+d/3YRDrC3joxiWJ4qEcCHtbaoc=; b=pcXvuJSq0U3vEZ72rNAQO5mbhu
	0k8eCBOEtcbbUTcXWu6/D7Mul8HGr1Js8jLwHJreSoq1dBSIi69pAHiujuQOrTd0fATMaV/FzEsxb
	gKBYZOL+BnfHEipc55SDCysuOQQ5OLDnuYqQxIpwEVNvJJ58xloMfQGtZhzan3IpDKYTTdj06T1Gd
	kQODGY3h8dW2LQjDSC8JSDtCw5fDt1pC5dRmjEX2pDZfRtH+ld6BjzOJmvbkiVIy6ZtvRnRmUDSRb
	srCcjEhr4v2ds4NwrdMu0tHwQNZohBIBMFhgLFiIcelcuIZRk8OqEqiP27kXbEAnwae2glD2VyS4R
	+4wZ4Hag==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wr-00000001PmZ-2aQP
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:20 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 22830201F23;
	Mon, 28 Sep 2026 13:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4c5Z0ZsFuEi8nJTz+d/3YRDrC3joxiWJ4qEcCHtbaoc=;
	b=OrCkJ6ScydwFrOUGAnKTSqcJNfnoLKrj7kIYUDJ8iI/kd4ZELqdKqIKWSUnE02+DHub2Ew
	ITHL4gYb4d6dZ5n62IqghG2DnmClSgdktzCtTrUj5CErxACLK6eBfr5dNxy91PyxZifK2a
	yxvEYS0LLnong07VX28eCLh9LzIOHb/XDN4AYtjIPRQXylFmI+WVQnzHRDSAt05g7x4uLr
	yXPCUHjJvz7LOi+zCXkvoSXMZdUlM4EXfE2bg7CM6flq8RCJ4Z+QJVVa47u7fZolZr/dik
	vuEKxjaGHW2ivFhcsmzbP4fgvER75RbaGw3zLiL3J52D2cyw0hxu+kefNxo9tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4c5Z0ZsFuEi8nJTz+d/3YRDrC3joxiWJ4qEcCHtbaoc=;
	b=Im5itVmmPXT2EOogwOK56BgdQUPjpz5Y4+rgmwOpkwbHCk7M4mswP+i6lqTj1jOQAYglHG
	ivakGrhxgKu9EvxYuaCDs6uyCqphPBEo1IpopgYnrNtlALEdbpCqBxLcRs87eyGlx7q5Ga
	VwimYN6eZ7s/XDSLGjJbIyi9JgDahzWyZV4X7l8yDxOvwToCHscQPPsZQNHtC83QAL+NZE
	DHx4MVog+HSJRizvr8rU3usj5/KgmG96vMigRfU78aG+jjoMjlzK1K9HmggjapGOYTiTNo
	hJsXj+0MEucqfoNSteJH/hdPTD0sPi83S9ZkYZaoJfM6SNdm2DV6+wItbydtXA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594891; a=rsa-sha256;
	cv=none;
	b=I+nNC8QFx8vIHpk/ZRZOJH7LZtVAqR+S9/I1j4RKO/LKwFrQ4KAZc13oOWzVltRXMLlYaw
	kHyv/JtZiUlBgmipOw7x9tjzFhLBKrfRybDTOd/SBBANPYMZ1ZpRxd/htkD5i6Vxk+15Fg
	bFqLaAs9aNMmlcyEPcVlh2hZVsOBnQrIzC4iHQTiENzC55g6bHjFpDjKkf2MuEPgjJ2QqQ
	kzBl6texu8NeetSc3ULCK/moUVwJcumQjYcrfkut7JY0JS/QT5NmYfcSLxMoBHGtPs1GHZ
	ow457RoOJY12LkJFGtQmOz+g0CYeGVmafDYSG4nOgqjn9XAzLyH9n7L18DPHVw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 07EAA74D0A4;
	Mon, 28 Sep 2026 13:28:11 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 11/11] README, SECURITY.md: link the threat model and security considerations
Date: Mon, 28 Sep 2026 13:27:06 +0200
Message-ID: <20260928112731.1271094-12-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122817_956204_5D57D835 
X-CRM114-Status: UNSURE (   9.74  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> SECURITY.md says
    where to report vulnerabilities, but not what counts as one. The README says
    nothing about security. Link the new threat model from both files. In the
    README, add a short Security section that also links the Security Considerations
    chapter. 
 
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
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
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
X-Rspamd-Queue-Id: 1B6382007E1
X-Stat-Signature: nom17zirapsbgrkaosoi5qno7ggu9aub

From: Ahmad Fatoum <a.fatoum@barebox.org>

SECURITY.md says where to report vulnerabilities, but not what counts as
one. The README says nothing about security.

Link the new threat model from both files. In the README, add a short
Security section that also links the Security Considerations chapter.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 README.rst  | 10 ++++++++++
 SECURITY.md |  6 ++++++
 2 files changed, 16 insertions(+)

diff --git a/README.rst b/README.rst
index fe783028dfad..1800f5e51822 100644
--- a/README.rst
+++ b/README.rst
@@ -284,6 +284,16 @@ are the release rules:
   does never change, in order to make life easier for distribution
   people.
 
+Security
+--------
+
+The `threat model <https://www.barebox.org/doc/latest/user/threat-model.html>`_
+describes what barebox does and does not protect against and which bugs are
+considered security vulnerabilities. The
+`Security Considerations <https://www.barebox.org/doc/latest/user/security.html>`_
+chapter describes how to configure barebox for verified boot. Refer to
+``SECURITY.md`` for how to report vulnerabilities.
+
 .. _contributing:
 
 Contributing
diff --git a/SECURITY.md b/SECURITY.md
index 862dd14623d9..39407514a361 100644
--- a/SECURITY.md
+++ b/SECURITY.md
@@ -19,7 +19,13 @@ releases:
 Please report security vulnerabilities to security@barebox.org.
 We will work with the reporter to create a fix and to coordinate the disclosure.
 
+The [threat model](https://www.barebox.org/doc/latest/user/threat-model.html)
+describes what barebox does and does not protect against and which classes of
+bugs are not vulnerabilities. Report those as ordinary bugs on the
+[mailing list](https://www.barebox.org/doc/latest/user/introduction.html#feedback).
+
 ## Securing barebox
 
 Refer to the [Security Considerations](https://www.barebox.org/doc/latest/user/security.html)
 chapter of the documentation for information on how to configure barebox securely.
+That advice relies on the assumptions listed in the threat model.
-- 
2.47.3



