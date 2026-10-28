Delivery-date: Wed, 28 Oct 2026 14:13:31 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xM3T8-004LDN-2v
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 14:13:31 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 7CECB201E0D
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 14:13:30 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ikwSqlJt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="XGOQhiK/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793193210; a=rsa-sha256;
	cv=pass;
	b=Uu0MkIfmCWqeNwT7ivsn6xzIbqMThs/73LwY7URf7XTdflaL3fR9zDgyt/OVTAijcMLM1w
	rpbgur27Eo+lSQkR2ljIR8jv2aTUIFggcCpXQ0XPDbiOrUPKb1L5xPWa9fZEg5fBHjLEVs
	/h5ey546mqENzqQL0uUb880dAsWsDDVUEOw4oAN9lFLlpwdK89fMKZ3BZ665lcHWOo0ECU
	iOfvkCM89uTMucxLroqjWrd/EUZkiTxiXHN1805pZOaBlhCzAoYTSWJl5uf+nvGP/3WR07
	swo3BOCALtluzO1wcTUhjXLoj6BS+c2pds9Mxlbp1F7uDG3nm4E4sEtHyzqNCQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=ikwSqlJt;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="XGOQhiK/";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793193210;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=W81ElHMkvNQHCQWzRyDP4ZgUftGsYOJvpINUhUiO4HI=;
	b=SHe0IuBOotbQTskl+1XsoQM5jbWa9JF4kYwoMNnRc7c1Y6Y088CcynszLCQz2NHXcsAVfw
	L9XxvuxZErTPv+lmYAKGn7WREV5uL07FctB6q3gAKdMXSkiB1i1A97m74tGZPhQaY2m2gV
	ImMWj+pQQo6dI0o9HpBKXDFaKpKLL8WZk25uUDe8f9OCAA9LxB2sonjX4DuHoaB/e3xAfG
	sVGRlYx1LHoRYBZxNLMaSAyRZdQg+ZtdPJC7Lli64CJZ3BFnvYI1mWNinnLAK7hcPG8+6A
	+AkPT4VMD/TX9kZEUAt02UegyJ2ixuxP+cJgzsNksQ9r41thQreXuAgYZVb97Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=W81ElHMkvNQHCQWzRyDP4ZgUftGsYOJvpINUhUiO4HI=; b=ikwSqlJt7BGArI9COlKWmVHohs
	a0sQqfBSwURuvA8E27xgFNeR+/Md70z4MOPqt9jyT34qDTX7SNJ8eJ+f5mD54mWAnkHuN5Rjn2OIk
	2Zwj2at8XhyR+KlE4s7k7OcBxtcXjJk5dIRosfb6rmnSZtc1IfpYblK+QC/94XdLmUhD72RTN1ubb
	eH0OHIFubgSeJNEt7IwRkrPojLwm4AlHjP3DfbZYIxzhcv4baguOHE8g5TW38h8UofKq7do0LyQwc
	4CiFVDtr+RNXLFwnTwKnKDNcs0qLvZF54zx3qH3sjfSAf+2k2OOHf9Pw8tf5zmiLoX/UmQpeZBoTS
	pcS/8Pig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3Rn-000000071gc-39Mf;
	Wed, 28 Oct 2026 13:12:07 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xM3Rk-000000071eK-2yaL
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 13:12:06 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0DD58201BAB;
	Wed, 28 Oct 2026 14:12:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793193122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=W81ElHMkvNQHCQWzRyDP4ZgUftGsYOJvpINUhUiO4HI=;
	b=XGOQhiK/ycZ0ebu5klPu3seg35ZxKaJxu5zI1SlhKEyb1jPBf6pbZgsJdfaqhiypdA1meQ
	imTJIIBXkgyJPNtxfLK/rzMjFLwxuhWB7QRkq4YgI9keDBWYz7l2yd22Aw187h9LIDGK8e
	7yRK6wZbw+D0G/mtvuKq3KXfzZCCKC7Lk15WGrnWqgdiRX/DNKZMFu8prw6rDh8B1hR0pD
	AC9ORYyUszYwiNHE5d8os1spXlq5seKrETkyxtfVIwrmSK9BHHD9uKKveoUPODAmh110wH
	3LZjND/UfBZEZnYecvJ4rUaDHnIWAuDcbqcUNd3CHg7GQjs5V84APk6j1pX/8g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793193122; a=rsa-sha256;
	cv=none;
	b=BMJOAvBJrI6kzBy4Ql93K881zyGlRMD7Gs1SUCvD8xHl7yLxYSj9JaXfbmzCovTIEXGfVY
	BwcqcN5C52zzWslgFcZiD71jUW36Ka5Jn/NbEZqtwzTpu9sjXCO6Eh1vA3Tw7Eqyx+QAY6
	XgJW4BnKPgU9XdQjYAUggKEhTaXVM4ADrxwmMMGf1d/j5OPxYjWDAO9A1+Am9bKF8Iog6n
	Xs/HLuD3fzJ0qtmhPqewHMa2pdWXx5Xp2jJsBPHV+5/Evj7UvrqYiHOdeW2WgIq4SJxV2c
	H4P7Ix4DTN+YHB7fsPSr5uciZa4ATOrTHAkFEHeYTfRKt958N0ZM2cRq2yJ3/g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793193122;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=W81ElHMkvNQHCQWzRyDP4ZgUftGsYOJvpINUhUiO4HI=;
	b=KpdadDq+YqTnMl0YKZVQbe+cxYg2kyBNb0QuFm/LL2DLboLx7O8ffQ1/eePi0p2wikos1O
	BX1SUXBn/kvQhGF/3TA3TvRmKCC25DMMzvIeTj8rhVnd4ybZn237izWsFnAkpKENzgjZHR
	x53jABnOqWJIvP2SNGqLPfE3UkSWAc5W+Y9Y69pq0lG8tTpvEXNRfVkAnjrqKvIa+sAscP
	8vpc054cQ7zXi13GZetZBhraobAbIP3as5qCCimibKk8DRUAA5krvgCBeSjvF/yXtf3lti
	2KWzWDGNt3cN7JQzQ5uiw1OtT653eDLhqFR/RbL+UBn0mtuvUhg7NF2wxaTNEw==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id E7C1C743943;
	Wed, 28 Oct 2026 14:12:01 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH master 1/2] defaultenv: devboot: name module CPIO after hostname, not arch
Date: Wed, 28 Oct 2026 14:11:58 +0100
Message-ID: <20261028131201.411183-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_061204_997723_EEE686F3 
X-CRM114-Status: GOOD (  11.23  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  It makes little sense to have the kernel in /env/devboot/defaults
    suffixed with the hostname, but have its module suffixed with the arch name.
    Use hostname for both. Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
    --- Documentation/user/devboot.rst | 2 +- defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
    | 2 +- 2 files changed, 2 insertions(+), 2 deleti [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 7CECB201E0D
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_HAS_DN(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: fd8ks3a6y459tut6wgwzy7wtbuie3qjp

It makes little sense to have the kernel in /env/devboot/defaults
suffixed with the hostname, but have its module suffixed with the arch
name. Use hostname for both.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/devboot.rst                         | 2 +-
 defaultenv/defaultenv-2-devboot/devboot/rsinit-modules | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/user/devboot.rst b/Documentation/user/devboot.rst
index e319636994e0..5872973f5650 100644
--- a/Documentation/user/devboot.rst
+++ b/Documentation/user/devboot.rst
@@ -221,7 +221,7 @@ which the configuration script can source instead of spelling them out:
   line, so RAUC neither marks the slot as booted nor as good.
 
 ``/env/devboot/rsinit-modules``
-  Appends the ``${global.user}-modules-${global.arch}`` CPIO archive to
+  Appends the ``${global.user}-modules-${global.hostname}`` CPIO archive to
   the initrd, as built by the Linux kernel ``make modules-cpio-pkg``
   target, and adds ``rsinit.bind_modules`` to the kernel command
   line, so that the rsinit init in the initramfs bind mounts the modules
diff --git a/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules b/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
index b47d2e2739eb..22be4b92360e 100644
--- a/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
+++ b/defaultenv/defaultenv-2-devboot/devboot/rsinit-modules
@@ -1,4 +1,4 @@
 # Append the module CPIO archive and rsinit bind mount them over /lib/modules
 
-devboot_initrd="${devboot_initrd}:${global.user}-modules-${global.arch}"
+devboot_initrd="${devboot_initrd}:${global.user}-modules-${global.hostname}"
 global linux.bootargs.devboot.rsinit="rsinit.bind_modules"
-- 
2.47.3



