Delivery-date: Mon, 28 Sep 2026 13:33:19 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xB9bj-007H0f-0c
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 13:33:19 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A8B762007E1
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 13:33:18 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KvQmUieX;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=A939QcRk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="I/3HhOek";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790595199;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=LD8CQW3NdE4eAVB7OhsVZrz1QQpiTWZEYE+piA4ctbo=;
	b=cR+Vt0talzXcI/MHRjX9AEn88+/oUo1QxIGgVx+yrrwNFY7FyCF1ayODs7jXqu5eqKwgA7
	FF/OPuisXcxWG39Fk7uTWClIMdq6DXkBeYRKw80ppWjeagOXMXsBoB8j5t2xsAPyDe3sSj
	SiJcUhI8BsNQXk4gD5ybWtLvVvd/MZ1riI/WR+VAWG1BBdmoiQS72c66egDHc33Gt+0KzA
	9rw0IJZdo+3NWnXGJGJtp3o0IWpvDL6yBI/0WEkgiNEthxWqohMRd9Wx2S0mRDPFH77AMO
	8nJ0ak+p/fYEL85z9Xw4FUzEJXML4TiobDCYFQaVqiP1jb4AGSHkbSeSjs1A8Q==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790595199; a=rsa-sha256;
	cv=pass;
	b=gkkL2yoyOXTU6d4f1iPBJRA5dXWS5MT5YyV68aRvK5WX0jq9GG2k2enH7mwBAFTWJIwitI
	zH5X3vmxdXY+BTIipyvWSfMkraLW9oKp8Rie+N3XErmuZFuuSEI3CEuv4ve7ggbDl50PaJ
	F5bqEZCgmg8KnIYFNTdkex65vukwyVJcXeOKSyG1ZoReOTRnprLGk7fNCZAGEyorqwbCnz
	UZVxzIQJHps5vaQROLwRngFqu8nxWRLE+NgRYlnoeCJfoiAElO3nINh1xVY9yIwy4wsjMH
	sLIwUuovOlU8QUk8bDsayqFdgqXw6UpmHgugV8C8eZshoVJrzi3iaOP2FmkG1w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=KvQmUieX;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=A939QcRk;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b="I/3HhOek";
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LD8CQW3NdE4eAVB7OhsVZrz1QQpiTWZEYE+piA4ctbo=; b=KvQmUieX28AxL2qazdPAVEMQ6E
	L/3ts2mSpMX1Js4B0BSLehsa1xUwgdsbf5NicXiPDpQ2/YFZlao4NM1e4cJxgtPry8uqERUVseiba
	2HmEG9Yn0id0FBKoDOV+r+MSxXOC3APPV/u3Fep817K8w8qw5pZmKny843AtgvBpvnY8omEsB7UTT
	niVUfqxJ+QDE3hgnzj/35ZnFmHxTi/N50thSnzPWJiehzXG0dtHJCTXvk6GpgN6drQeSiHScDtssm
	jETby6Kj/lFozoFLwPrh3fS+BzLZS4VY0yKfTA59feGLo5G2u0kpEr6t0dy2Zn2IiPP5OWbIzzKvh
	u4zTkK7w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wz-00000000S8y-02Wv;
	Mon, 28 Sep 2026 11:28:25 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9Wu-00000000S3b-3qXQ
	for barebox@bombadil.infradead.org;
	Mon, 28 Sep 2026 11:28:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=LD8CQW3NdE4eAVB7OhsVZrz1QQpiTWZEYE+piA4ctbo=; b=A939QcRk/ATSj3HMMru0yK2VrS
	Ywa9br3VqqoNjJCgVqzoymQ60MjjSGDYAfZsQon9j9B+IFU4RKh+O9jO9tAv3qxh33gzJ6pRQ0FKK
	tsGE5miiXyy25gO/gbxhvgQjure9sobMlXY3PQZPD+mJ52C1WpAaeLACp2APH/FTwI+o+4rVtS8hw
	fKPCBd6Dn5AX1J83w2oUZU2/snohIKhk3qdKeWeYdxw2HL0Qr3i+nZR0vG6lRkY+5xjkzcrKagOTG
	kVXEZ+AqdJQm03Z+F1i9887hrzvA7q8xoVA1Mky52KRuZBOXwTkWgk0ldN/hopgpn1oPT/atyXWz9
	pRKnFHgw==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.2 #2 (Red Hat Linux))
	id 1xB9Wr-00000001PmX-2d3K
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:28:19 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 0C8F5201F16;
	Mon, 28 Sep 2026 13:28:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LD8CQW3NdE4eAVB7OhsVZrz1QQpiTWZEYE+piA4ctbo=;
	b=I/3HhOek91Zjrc3wmCBEkPDDSLTQyCdo6yNuENmSMBF6lehBbe8nBMakAjGY3Ib3rRXLCN
	ykkBZambzFew9zfuGu99hjz3fpy0F991aMdb+6cSHh6VpbVlid4xOSPM2rceAjkw0EssHN
	LMR2aC7XtdyP272bdYxxlcsJ0podp9XJYUSauF8IkwVSD+ZskBp63HDFqu7v4CLEQPz3v5
	uO8PBA4Es1jiHC2uEJqDBfxb5BWl+MoFc7Gh9wCgUMZnRD7Ahcb5fhUXUTiHNK2Kem1cq6
	UCVfOB+U0vNmSHfZU02s0JBu4lKnIP7JYFhoL/eySi2y8HWpLyi4XpvlDqpepw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790594891;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=LD8CQW3NdE4eAVB7OhsVZrz1QQpiTWZEYE+piA4ctbo=;
	b=c7RRuozbXPgvPbnB6Npejrv6c27KCtlDXrjPP2FfbZqCiC/Nusl6k3V67hp5BSnhd2vtDx
	xm0ZHLhX+8ba6y5Vc6gKRFKCeMUXB4PevMKQPbRV6nqoC7fh1GzwrTOm1S1NvTVo41aZL7
	Bfs8V22n+wC2C1auOaclmtq3GD5dRqiek99lWSD/J64Sbk+P0Ynb/+7QmGIKuhCTzzzBUx
	oFopJo85Xz9I7CvPDb4WPkiC2URgSC2Hyx0hSNpCzHDDJrGjLoRQhet0atLKo+tZJBoUZS
	zFwbdbqGXxAklqKiUmgk+yeVDddpqjHD+rKSLqX/cYVQRvUWrmaX63r/MEZ4ig==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790594891; a=rsa-sha256;
	cv=none;
	b=UItn6Up1TZNv6YJv8ZUl7a0OUqRKeH07dr3Poqtr6Pp41z0C+suuQhX7XM+Byyz752+/9A
	UrKjmjJ/n1KLxfPtPQY4ZD7MY+5xZHRvQCl0oIT06f+rIiHKjW/3w5lYKB0rEsSHU7+jjM
	rx54vBfme5pD7NjfXC/WIv+0dgoml9/r+6ufdHZoe6GQoe6U4abff62eW9D+JzYk6jZcaG
	km1mjdcOA30vlHhRWmJkDvVwytFOxErsSNgAEc7x0wH9MufDTDL/hP2Dq4e5YFN0ECBP/F
	iNud5laduya+eJpAug2eZqIEEYCSxibeFt8ij/SoKRjKXgmZr11OSQuixQUqnQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id E6AEB74D045;
	Mon, 28 Sep 2026 13:28:10 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 09/11] Documentation: security: add anchors for the different sections
Date: Mon, 28 Sep 2026 13:27:04 +0200
Message-ID: <20260928112731.1271094-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
References: <20260928112731.1271094-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_122817_984919_391CC877 
X-CRM114-Status: GOOD (  13.89  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> So they can be referred
    to from the threat model chapter. Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
    --- Documentation/user/security.rst | 14 ++++++++++++++ 1 file changed, 14
    insertions(+) 
 
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
X-Rspamd-Queue-Id: A8B762007E1
X-Stat-Signature: 91k4cwitw9c4b57jtripmzutoj19543t

From: Ahmad Fatoum <a.fatoum@barebox.org>

So they can be referred to from the threat model chapter.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 Documentation/user/security.rst | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/Documentation/user/security.rst b/Documentation/user/security.rst
index 185adac2d51c..1ad4fa905d54 100644
--- a/Documentation/user/security.rst
+++ b/Documentation/user/security.rst
@@ -84,6 +84,8 @@ devicetree from the previous stage. It's thus only suitable for verified
 boot if that stage verified the devicetree as well, e.g. because both are
 part of the same signed FIP image.
 
+.. _loading_firmware:
+
 Loading firmware
 ----------------
 
@@ -97,6 +99,8 @@ Firmware) should happen as early as possible, i.e., within the barebox
 barebox will run with elevated permission, which greatly increases the attack
 surface.
 
+.. _pinning_fit_config:
+
 Pinning the FIT configuration
 -----------------------------
 
@@ -138,6 +142,8 @@ development keys into the barebox binary.
 The private keys for these keys can be found
 `[here] <https://github.com/pengutronix/ptx-code-signing-dev>`__.
 
+.. _disabling_shell:
+
 Disabling the shell
 ^^^^^^^^^^^^^^^^^^^
 
@@ -157,6 +163,8 @@ that. Whoever reaches the shell is as trusted as the boot chain, so any
 remaining way of reaching it is part of the boot chain. A console kept for
 diagnostics should be output-only.
 
+.. _disabling_env:
+
 Disabling the non-builtin environment
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -185,6 +193,8 @@ way to arbitrarily set global variables, be it a writable environment,
 a script on media or a shell, defeats verified boot regardless of how well
 the images are signed.
 
+.. _avoiding_filesystems:
+
 Avoiding use of file systems
 ^^^^^^^^^^^^^^^^^^^^^^^^^^^^
 
@@ -203,6 +213,8 @@ If file system use is desired anyway, its integrity should be ensured by
 other means, e.g. by being mounted from a dm-verity block device that was
 setup with a correctly signed root hash.
 
+.. _verity_root_param:
+
 Prevent the kernel from booting the rootfs in verity boots
 ----------------------------------------------------------
 
@@ -248,6 +260,8 @@ an attacker. It's thus strongly advisable to keep a separate secure
 configuration that disables all features that are used for development and
 are not absolutely necessary for booting in the field.
 
+.. _runtime_configuration:
+
 Run-time configuration
 ^^^^^^^^^^^^^^^^^^^^^^
 
-- 
2.47.3



