Delivery-date: Tue, 22 Sep 2026 12:49:41 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y4D-00529N-21
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:49:41 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 22FF6201F42
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:49:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="sTiEZ/bv";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NNj7KA8x;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074181;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=3mF7lxuS2AxIAO62O9dMZsIvg3MRPbx8T+TRpE33bbk=;
	b=L+a4DuOsN5QQnnEj/0Y0flVroBcao3K6myeRdG+Frr42uVpGHnpNb7DWTHasvrO2HQxMP2
	+O9u8lp/Sdr5cRC7H2Kd484ur9sWxyJuDol0s1Ra8EjYcKT9dKHjOhJiD0BplrmNnQdeiH
	BKFtZ/HncQx9p8ZdMOCKmNe6JsqMSpgKb2g28V4xYrpT9Wk/qvSb7e0IoQABslBbyrX+VQ
	uoeKWIkC/AyFpYVtwPKv9vpe8I3gNoUBefMoLx8rw1qglWuUeZ8Dy74gbVKa1ZXAH83maq
	95qaZiItj8Bh7ENORrkKkKLRo1vd5YforXt5aYEpM245Ko1ifUcg33NgoLjykw==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074181; a=rsa-sha256;
	cv=pass;
	b=dTYMSfAFuzYzoARCjEkp00MSGOwSWAxEr/BP3rnbVqf7qKfZUtOlUeMbjzhJjSDy/1fJyn
	QtwfQxXgFCN+EfRbwCfUrQrribo67kG+3jKwzjr+a9Iaod0ijU3JAOThyubtBduFbCQA7B
	v3B5aCyahyoPz3YwhnZEYj0ACA4qz1emGQKB9uX+yJ/dIWgTYpVkgJ2bOQQcAsptY7TWmU
	XzmATV5+A71rjkSc83K7OgYmKpFGnxw+iOq0TxW6ca0ynhQGXgLsi1K8g4Na0kETa4PHYa
	2OV8l3DRIG3iDAeVuZXeThaQOu/Z4L3VDApTmfLBbPAhznbe6uGl9/LVI5kmpA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="sTiEZ/bv";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=NNj7KA8x;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=3mF7lxuS2AxIAO62O9dMZsIvg3MRPbx8T+TRpE33bbk=; b=sTiEZ/bvPxNqGWMmHEr4mprzBP
	RDyui2+138bMCAla3+NPFIFo9BgfEY8kTqU+4SSau29BbY2In1PPPUI/UDWpmy0BNuHFsr0TST0zy
	QYlDXw5VE3xjnS6r2LVNEYdf1NtGF6y/iCShTSKwrv6Ogrl/VrQOMcLM/ZS68Et6ZkbmziW3ZQARR
	anxLpplmuxcUiY6VszX1qL4fAZvPP/ve4YQ2iRtLzKQV528kTHrHPCE/vbeTsGyqUSqU7D0PXlZ2x
	GcgWeKkwtiu/wYjbuZZvI/VNB9Z/BYZwCNx5b9ds8J+BdoGKGd6gcPYRh9t0uswlG01lTUPzuRrdk
	JpG3JwpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2w-000000056Fc-0Bgw;
	Tue, 22 Sep 2026 10:48:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2s-000000056E7-3qqk
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:48:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id C6B78200044;
	Tue, 22 Sep 2026 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3mF7lxuS2AxIAO62O9dMZsIvg3MRPbx8T+TRpE33bbk=;
	b=NNj7KA8xIDnVrm7GSMrH5szjgbEIOjM5XkECmUba3k7r8pmpNrjds/Nh/p14oqZUqd3HHc
	kvpF8M2bQyRMqlWQ1KwNgeNHSWb+oIINFdR240WMckeclB6y0FLqBx7asgpA9TFIUiT2sX
	jtDjRWVRHnPgWIGe5CihVF3wCJ0vAk2k07qrSAKPS+fCXtDwdYLss1AUtMXdWNTyKXlKpj
	3up8ZXKh5TWnsvZI2nA/uum0t9u/TqRemX7xNMBe8Xw5wHj41EBvu93/1YRWn/JSmifQZS
	y3QnoOLHb0anFJEWUv3deRxXyelOKfeDuVEAtjsig389cOKM9couQWlXFIVaBA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=3mF7lxuS2AxIAO62O9dMZsIvg3MRPbx8T+TRpE33bbk=;
	b=P1RZt973XpXp4M5Y6da8unw9kCTBrL2gt9751b7UML5eveanwIFOFiRHU9gAtBrIfGytFy
	NHZStMTq5s1p3+Y0OzHtzPRDlIcrGpXjQ1zXH2YJhFnWXjDGXKo0AeRTk3JF/u0WVhV8W4
	+L+GgKG562eogQRP9RSGgqQmlOR+YopYaOvGwuyYmps1nLM56pTPGOyf/b+8Q+VZhgZxId
	c2LDy99VW3qFsU/cFuHIfaiQOAniJzfKiBZbWueZsDObugTtUb8VaSzbVJY/S8NpyyB0kw
	a5OPQzMqHhMa8XHYiIS9U7IAMI3dJ0IVhWfIY6OlQFGIHm+RDJbptKj/JQqEsw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074096; a=rsa-sha256;
	cv=none;
	b=LRlYv10PlUjhLqWwOQ/tfBNy5dEnvVhMuiqT1Z+bWD3nwiGN95m/0y4rdNIQrDNr0oYsNG
	NpcccOZZB5xyTypjp2xy9yqUk5enQtwRsxE2b799Hp9+O/5EyqGuXgIp3WTvEh06DGxBUZ
	9wH/ZnRwsYkDkM6pFgxyj0yqjmRgYBg521jZHwQP1EI0t8QQDpp+qIcE37GB7cTkBxwQT/
	h86VRhZ1Cryt91mNFr8BO7XKENQrQEJ5oC/0ApK5LsZzjPlrTaS82luXZgZG7GA+tlqufe
	ASNDRp8RBxa+SR7DJX/w3cuK0yQXfi/3/IVDVl+7YXNzMBs6PBbMCMfJdhE3IQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2q-002DSa-2K;
	Tue, 22 Sep 2026 12:48:16 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2r-00000001M6y-0acd;
	Tue, 22 Sep 2026 12:48:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 0/5] malloc: add __free() cleanup handlers
Date: Tue, 22 Sep 2026 12:47:51 +0200
Message-ID: <20260922104813.317584-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_034819_347326_E4630C44 
X-CRM114-Status: GOOD (  10.47  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The cleanup infrastructure was added to barebox a while back
    in commit 332e3542e5ed ("Port Linux __cleanup() based guard infrastructure"),
    but without any DEFINE_FREE() handlers, so nothing could be p [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-59.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 22FF6201F42
X-Stat-Signature: qh8ucdpbamp4bx1w4bhtpkqqasii7cc8

The cleanup infrastructure was added to barebox a while back in
commit 332e3542e5ed ("Port Linux __cleanup() based guard
infrastructure"), but without any DEFINE_FREE() handlers, so nothing
could be passed to __free() so far.

Let's start with malloc and kmalloc, so buffers can be tied to the
scope they are used in:

	void *buf __free(free)  =  malloc(size);
	void *foo __free(kfree) = kzalloc(size, GFP_KERNEL);

[k]free_sensitive() looks up the usable size of the buffer before
zeroing it, so it gets the same test rather than just a NULL check
to avoid an error pointer dereference inside the allocator.

Ahmad Fatoum (5):
  commands: rksecure: exit if invalid integer passed to -b
  firmware-zynqmp: don't ignore the kstrtouint() result in parse_reg()
  include: compiler: make __must_check a yes-op
  malloc: add __free() cleanup handlers
  test: self: add cleanup selftest

 arch/arm/mach-zynqmp/firmware-zynqmp.c |  6 +-
 commands/rksecure.c                    |  4 +-
 include/linux/compiler_types.h         |  4 --
 include/linux/slab.h                   |  5 ++
 include/malloc.h                       |  5 ++
 test/self/Kconfig                      | 10 +++
 test/self/Makefile                     |  1 +
 test/self/cleanup.c                    | 89 ++++++++++++++++++++++++++
 8 files changed, 118 insertions(+), 6 deletions(-)
 create mode 100644 test/self/cleanup.c

-- 
2.47.3



