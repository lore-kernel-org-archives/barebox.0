Delivery-date: Mon, 28 Sep 2026 13:33:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9bh-007Gza-0s
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:33:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id BE4272001F2
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:33:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DjF5uI+W;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=LH7buXjg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QrJJ+h1o;
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
	bh=IuOkJbk5AYUdyeg/C2O56ofP+UrXa7ZIfqrzM2sghjg=;
	b=YX37FhpCnH8t1Yuf47uqUL9X2sDAOEFESNymWrB4jjxEHCYFtvyMttK2wz4z08GyLGDIbQ
	XHkyCQtYax1daaHX777+SOvei3/q9ea3IP0bJUhgtaYGkZ8aFXtthZ9W3biMlAXuolCHiu
	EzLchxNb2Jg0ZIQHHTlIYBGTeXyPnuBrZtNcq3+5Xar10p7sbYWUARubaBFRrCdZnQGxJ1
	3/gwPcTzytMfXzWmyYR8QiTAFlV4fGfT3/bUdF7i9fJAc/5Tda04BK3L8OyA9Snsv1+5E1
	qXskKtT64tl7HwrtkiiVxSlsnL55Rd5YRXJ9Ay4GiCiJd/eTCNW6roFDPL5QsQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790595197; a=rsa-sha256;
	cv=pass;
	b=DP1zwzZ/g69PPXDyM8SJDNBJjx/mByY3NRqDASroMGf/gB012u+2H9ZxxQh0pQpVUsBksa
	y1zQyXk77aql07KOf/lbXf3SLTvLVqqHeropGTPlpKoPLUeegFL8wwXIkBmHF8cj9gWK7u
	rsytlvM9nKpzhl6VsKNCOzP17O9kI28sv14j2YfOm1B7APJyW6roegNYb9/C7vPJ9T0LAz
	xkP/kNU0XRIel78ueVWsG1BHOS8GyRk+qZxeCdOAozPGEPQn+y11nurCqrhbrkL3jeuhLJ
	RIoQLHFJdPx+ZHBmg+pMPQzsBK6nkJNYFUTDkYJoyLsKdr5VtwMboAJDT5cOvA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=DjF5uI+W;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=LH7buXjg;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=QrJJ+h1o;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IuOkJbk5AYUdyeg/C2O56ofP+UrXa7ZIfqrzM2sghjg=; b=DjF5uI+WpdTQWUOLaWL9ex/fRW
	6CWFw5+2D9cvKnqVovKmFGfJW6/MTjOuiq1GukzNv1sC8/HlNC9ctPydl3emv2z1Ukb8g+C+QzKy7
	1aFQWWZuMwtNU9ompDDBcl01hvN8MxvBs2zsHSKeaOlWL3zvTkn77D0RoM2p9Yhtj68H9ItzIkS1c
	uuTOjP/uGd5Ajn/ZDALUKUDLYXOfceigMT7yF9u2oeYf2Xr7/X+v5sR0HPu81W3A1WN4w/aY6NUVT
	Jr5IK9uRe43Ji3EcmGkFgYN8dRqIuUBOSxPCgJDPJzaTHfAjqYxZbgIEXAhirdXL2aXAOzCqeThdD
	O8sr5xDw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wt-00000000S2d-20bi;
	Mon, 28 Sep 2026 11:28:19 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wr-00000000S15-2NiF
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:17 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IuOkJbk5AYUdyeg/C2O56ofP+UrXa7ZIfqrzM2sghjg=; b=LH7buXjgC/zF0AbZaJDzuCzfkL
	e/iFphluzNJdZp7kiFg47/BNaAhUPVjKggiB3eUChDl8851FRuVYytoDlc+DlgnyRLGZ0HF1YEt1k
	dvkU10Es940ofUbhpdZirG0B0mv03CfzPRoDlkANn8o/e1FutEP5mWbMP5f9wZMQMWnHV8w2pCMdh
	U1kJdMhqcZ+3Hesnnvv2vf1UCVrXsqjCTdqEQNCHLQSd+nattFBsJZ+AREWlF+sPMk/bg1Yx1bCAn
	GqnMQNLwuhC/fbaFwy+zjWXTUjZP/IcIUO/DuubH9xky9mgqNnqdxKmhygCJfFrvsNY5+QcrUtbkb
	eAx4cohg==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wo-00000001PlQ-0oW9
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:16 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CC212201E7E;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IuOkJbk5AYUdyeg/C2O56ofP+UrXa7ZIfqrzM2sghjg=;
	b=QrJJ+h1oBmaoryWmOpJLiElR8N5Xtya3rUc3Ofi+zFs2iAgdgkaJ5y2djcfXIisSGoSwUK
	jay1rPv7osgH4GkLDs7dytElI6AGbXNGrwWiAs7nszZ1034+JUFCaNa7IAvfq8b2ht2Puj
	Uz7IUnY/wu3AD91yjKGelElow/iQ3svqwg1XJPoewJXY/wEIsk9+cOX0YFlT2r0CbCyxfL
	G3KQzqcdb+QFxmbNlbKwQF7iKIzuGIrNWJFUDxwwzpUUVsh9RFNbtJq+tL7q03UmwA5YtX
	QBV+HBBPQ6sasJDIgqY7pbO148MaRXEH0ynTj6MTpFJkrZyibC9RfaYuB575YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594890;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IuOkJbk5AYUdyeg/C2O56ofP+UrXa7ZIfqrzM2sghjg=;
	b=Tq2EYOl40hq8WyrseO4FYdAnclMZIGGB0X8ecfdnmowYxvtBgz7eXZ5t0JNY2J8Kwy825S
	u3AxFECxxLSODgMn/qV6YhLMTrxgZTanCaJ8Lrahcm3AeDOyjtZdz/rScS4YdT6bJlOORs
	nWgeXOboDY6mLh7lzX+flG7nXcUAUy22ABIZ0MHf3HAUvxDfJ6+EJijzEnV5cnOsdrrfhd
	rX21vUlE5dS8DhO46px2P2HMXdUGekqDlpHkYekAIZsIz9baxnPpqlWqS7yGcdXVmLJays
	as/uOQ7E0gkFyvLLROG239fcEDCHcoXroECuUnNE5R/C5kSgggG952fGtrFMTw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594890; a=rsa-sha256;
	cv=none;
	b=EvicLJgXfdHOqOoq9a8ySeNBKl76NklxhPNviSrDFPTTrhyA7UC6ViBwkkVekzGvFffOLi
	T4SxjY5bqzO67bM2bUUdJT/88MwGizJjYMgeZeQPckegOkjsDBQcGYhyByDcYLO4NaAda2
	U5DLJvnq7qmnWtKVjKQohC88F+Ncs+ZhmjWBNru5BVsYvSnzGnWJZOo5sUavAvkwkf1Odv
	u/y/L+00kCgaTETLQoLnLkg4NFWnzr6CoZkxiHyNulmL7F2SqmJq3B+FESp04ot7ZGA6Fs
	dvEwl+1CQXPylGiRvT6SpLXEb8xDXlerl19RKVkaB5NlEa5cjt1jQ+Gw0jjeSA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id B0F4E7421D5;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 04/11] Documentation: security: document trust for builtin devicetree
Date: Mon, 28 Sep 2026 13:26:59 +0200
Message-ID: <20260928112731.1271094-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122814_449901_20E3168A 
X-CRM114-Status: GOOD (  14.01  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> barebox-dt-2nd.img
    exists to allow booting barebox like one would boot a Linux kernel. This
   is a convenient way to use barebox without modifying existent firmware, but
    it's not suitable for use as par [...] 
 
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
X-Rspamd-Queue-Id: BE4272001F2
X-Stat-Signature: 75dwp65fa9am96bin3c1c6f48rcqc8gw

From: Ahmad Fatoum <a.fatoum@barebox.org>

barebox-dt-2nd.img exists to allow booting barebox like one would boot a
Linux kernel. This is a convenient way to use barebox without modifying
existent firmware, but it's not suitable for use as part of a boot chain
if the device tree hasn't been verified beforehand.

Spell that out in the documentations and also add the missing help text
for CONFIG_CRYPTO_BUILTIN_KEYS.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 17 +++++++++++++++++
 crypto/Kconfig                  |  8 ++++++++
 2 files changed, 25 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 7160f8f8e3c2..d981d89268c8 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -56,6 +56,23 @@ fusing for both HABv4 and AHAB.
    touch the subset of fuses relevant to most users. It's up to the integrators
    to fuse away unneeded functionality like USB recovery or JTAG as needed.
 
+Ensuring the barebox devicetree is verified
+-------------------------------------------
+
+Whoever controls the devicetree barebox uses for itself can inject RSA keys
+to be used for FIT verification and control what drivers are probed.
+
+The devicetree must therefore be either:
+
+- verified by the previous boot stage before passing it to barebox
+
+- part of a barebox image and thus verified by the previous boot stage
+
+``barebox-dt-2nd.img`` is bootable like a Linux kernel and takes its
+devicetree from the previous stage. It's thus only suitable for verified
+boot if that stage verified the devicetree as well, e.g. because both are
+part of the same signed FIP image.
+
 Loading firmware
 ----------------
 
diff --git a/crypto/Kconfig b/crypto/Kconfig
index 528e9a0d2204..977e502e8a14 100644
--- a/crypto/Kconfig
+++ b/crypto/Kconfig
@@ -130,6 +130,14 @@ config CRYPTO_BUILTIN_KEYS
 	bool "builtin keys"
 	select KEYTOC
 	select IDR
+	help
+	  Compile public keys into barebox. See CRYPTO_PUBLIC_KEYS for how to
+	  specify them and their keyrings.
+
+	  This also enables reading RSA keys from /signature of the devicetree
+	  barebox runs on, like U-Boot does with its control FDT. Such keys
+	  always end up in the "fit" keyring. Prefer compiled-in keys. Either
+	  way, the devicetree must be verified together with barebox.
 
 config CRYPTO_PUBLIC_KEYS
 	depends on CRYPTO_BUILTIN_KEYS
-- 
2.47.3



