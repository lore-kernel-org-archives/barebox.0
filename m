Delivery-date: Fri, 30 Oct 2026 17:04:57 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMp68-005CYF-2o
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 17:04:57 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0BC9D20295E
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 17:04:53 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Tz4BtgMl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PxWQXNhg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376293;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Q82K5iIarloEvJ8L7G/dUAONTYsa2H0fCw+WGr9zq3U=;
	b=OZgsm5In5zHCzCtn6yxH3aI/71VWLgxgvEHBT+AKAUiTS5lewFW1USUiZ0wGivh5wACGc0
	kaYq18B78jTCUL25MT8NIZMB0F2RheRXu1rTXjNwSCQc0hQlI3H2C35TumF2bkWh6WDPPR
	p2JkgclKhT5DnThKu3WYzQlHn9tj1mIdDvM5kTiXkXceFIcRXBW66ockZQhTigxZHcQsCl
	JTaOjqlhId8hJ2mdvoOKSd+f2U5Udduu7uCv8j0bvfPjlQp9L/uxVtDzTgcw6z62JRR/jg
	U4xsmc8bRTEzFqLJxn4rCRCgT6/6hkwXxFlw8DjI9WvfR7anfeoFrIf49oATFA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=Tz4BtgMl;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=PxWQXNhg;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793376293; a=rsa-sha256;
	cv=pass;
	b=VdxJvta7X922PRf66Q2DQBIX2z8dplSIggLbfs0allDXFSUNBGKT91Eexc0Sh0q/3l7rK2
	h0rMp4LODdgmUWlljVcWmASU/JTHg9mG6uVo2T5betyc+7+zLEj0eavaBP2qPuzLa3HSck
	KcebONQyITvE1+JO8XN8qYo92Yo/jKoBXSs9WBUMqeAbR1h7Oy7Go5jAJh+1xSXAKBc21U
	OihgonfjrETkIaOleQXSqzDgAjcRqUGEN+G1hpzA4sfJJ/qsxk+vF2mfKTlS/47V1DIX4w
	GtH2YCZkXotaaewgZmRMreu+5JKZ7fMHkKT4JgwoXGjg8XHNdFVzWI8tiwEu0Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Message-Id:Date:Subject:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=Q82K5iIarloEvJ8L7G/dUAONTYsa2H0fCw+WGr9zq3U=; b=Tz4BtgMlq/mEUcPU0kTzFk+FDm
	bHXpjOAmLgIOHOc/4dy4+2lXWp8077Isfp/PVHlqapakKGYMg/F2JG4wixim2KVtox2Ge7i0Z21UB
	QcEsWaiLIa8Fyp+MoJmvn/CtK422K5xzlrL14oX8iLLpuMwPJPXe4nM6tQ/7DIPtwBcMEKRYptdTQ
	8Zi+nO2cv5RttcNwAmBNQk6Ac5dGtsoIf+3OgTWfDXUerc8vbRSoC2mVUKT1RZY+9sTq90eWb0ep4
	yJ32Vkvg6YOE7Xo7k6BtSdDqxtVXaUiO1vza6RhFuI+x2bE5fQiCPvDi52k7DXqNoqwvvj2x4vEpV
	EbJ/EggA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMp4w-0000000C4rC-0kHB;
	Fri, 30 Oct 2026 16:03:42 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMp4t-0000000C4qE-1Yhl
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 16:03:40 +0000
Received: from ratatoskr.trumtrar.info (unknown [IPv6:2a01:599:600:7591:fab4:1411:7f97:ceb2])
	(Authenticated sender: str@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 857EA200B9E;
	Fri, 30 Oct 2026 17:03:30 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Q82K5iIarloEvJ8L7G/dUAONTYsa2H0fCw+WGr9zq3U=;
	b=PxWQXNhg70jWSJXPm4DkXhGtU7hTmJE5xdqsCaMGG6SjbaIfgjyeB4VYi43lDGzr2lAymU
	j6mgCQIv9Qsr9CMfEtSxvRx3d4MOR95WiFNgg8BoGluAcKa8YDd04xR0nyt/9nBqnh6+/h
	e2DVVOX8Hn9b4gEvliMgs1ycvwgfYVx/N60Fqwtvg9g6PY3O7WOiVeEqBUR/qWdJMgSrwM
	QYO5j5/jcpH50UA2d4cj5/nEZ+IXznvMwRVoHPSg8Jm3oRzb3fycXmURF9PogH0W478K78
	aL3zdcNWgPHCZ9dsDNuyxivnuJ+K3S/uMj8On4W1akoi6GOZr17+2S1WMRKdgg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793376210;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=Q82K5iIarloEvJ8L7G/dUAONTYsa2H0fCw+WGr9zq3U=;
	b=FbbU6CferofzH3G9VADz77b6jQAlNnjoxMUbHVqJydiCb1Ab0hVz1SB6O6vhaqFIDl/rNV
	GN4u7OBIM1x8UFAiWyAI1oSeH6aJXtjw9NOE7PEgVc5OS1HhBsSxBQBr/OlPj6vU14Ohw1
	VmyvYUrmUL2ZkNA+WxUA2QtQRYBDdXhMLPSQbFjWia7R+LgIFvgngv/ByYrLP6sw5QyqeJ
	HqruAMJJY9szibiJIAKA3loK8au9KPF1zy9VTQ5Z/g8w9kfmHegM4Cw+8TliJ4vUSUDAEE
	ciMPe1PS8ppMmo8i2MiCN/95Pl/klLlKKerF1UUa9b/Fp6M3PC9QiDDSQbhKXw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=str@pengutronix.de smtp.mailfrom=s.trumtrar@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793376210; a=rsa-sha256;
	cv=none;
	b=hBKTzNAZHijcELhoYZWxG+j+b1lRTYgS3I3Z43oj//eOvntObyUTeA5I0qeszN4iWDNfxY
	1exz3Z90UrReaQ4kRP44K6c7QnBMwa3++iQTt6190uCHc8MJ/uuy0IQd1FBULZ1FGQAJww
	SJ7kqmU+KbQwTp3ss39xZgVNQGl+CXDz+CoSdI9wgssviKvCS8yCfMowqVfpQIrmOvX68d
	SOqhTeSLYPTLuEd0wQ3D8J2wTJi546Ch9ycl2gpcVPkVuXJSXa7v5+KSEREa1cEj4zpvGs
	ylencMjHidxIlRuePe/83MeaVPgwRxxpGuRKUBLjOnBJ6FTz3dg6lCH5pp4Rqw==
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Subject: [PATCH 0/2] watchdog: gpio-wdt: add support for more dt-bindings
Date: Fri, 30 Oct 2026 17:03:15 +0100
Message-Id: <20261030-v2026-10-0-topic-gpio-wdt-v1-0-e81eb3470f62@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/yXMOw6DMBBF0a2gqRlpTASIbCWiMPZAhgJbtvlIi
 L3HkO6d4t0TIgfhCO/ihMCbRHFLhioLMF+9TIxis6GiqlH0ItzuhYqQMDkvBicvDnebsKXB6qb
 r9Fgz5L8PPMrxtD/933EdZjbpDsJ1/QCY5LgIfQAAAA==
X-Change-ID: 20261030-v2026-10-0-topic-gpio-wdt-70bda699af5e
To: barebox@lists.infradead.org, Sascha Hauer <s.hauer@pengutronix.de>
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.15.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=691;
 i=s.trumtrar@pengutronix.de; h=from:subject:message-id;
 bh=Ye+/XQWOzrdCVWyUuA5pCMru8Y9ezWq0qksfvtLevos=;
 b=owGbwMvMwCUmtVehiCsuTInxtFoSQ9aT/Wd9Q5NiXm9oSl/I1PvW4GLY0yNJay+Fat87WpyjG
 bp2/sINHaUsDGJcDLJiiiwqCyv4RD0+eEZOE+GCmcPKBDKEgYtTACZyOJCRYaL0G0ff/b99bsw8
 rpf/drXP/gjm0OQUnlPn3S7/1bxbMI/hn433k8SQg4wvhfbGfWhdrnG4tLR/5yUWK/3PVrrMnZ2
 yHAA=
X-Developer-Key: i=s.trumtrar@pengutronix.de; a=openpgp;
 fpr=24A1780E1548F0495996140A1ABD20720A5E5622
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_090339_573654_594BE596 
X-CRM114-Status: UNSURE (   5.71  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Update the gpio-wdt with support for more upstream devicetree
    bindings: - always-running - reset-from-wdt-gpios always-running is already
    upstream, reset-from-gpios will be in v7.4. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.trumtrar@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: j97ahj8mo3au6chiy5tdb3tyu8ufxqn4
X-Rspamd-Queue-Id: 0BC9D20295E

Update the gpio-wdt with support for more upstream devicetree bindings:

    - always-running
    - reset-from-wdt-gpios

always-running is already upstream, reset-from-gpios will be in v7.4.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
Steffen Trumtrar (2):
      watchdog: gpio: support always-running
      watchdog: gpio: support reset-from-wdt gpio

 drivers/watchdog/gpio_wdt.c | 28 +++++++++++++++++++++++++++-
 1 file changed, 27 insertions(+), 1 deletion(-)
---
base-commit: 5c46c205c8d1a7c57b9dbaa5e516758a6c0a4d80
change-id: 20261030-v2026-10-0-topic-gpio-wdt-70bda699af5e

Best regards,
--  
Steffen Trumtrar <s.trumtrar@pengutronix.de>



