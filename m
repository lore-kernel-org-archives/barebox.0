Delivery-date: Thu, 01 Oct 2026 09:44:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xCBSd-008MeE-2E
	for lore@lore.pengutronix.de;
	Thu, 01 Oct 2026 09:44:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 3A7D8201F18
	for <lore@pengutronix.de>; Thu, 01 Oct 2026 09:44:11 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xB5AXEqK;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Kfp6PPBm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790840651; a=rsa-sha256;
	cv=fail;
	b=YGnxhCzna/TJdsVQNVW4r2tEdiVJH6B577ClLBmALqW0/cMDsefBVNVDiSOpisUhpt7V8A
	bdE1z4KoHsmeJwIE+DA5dnCxFCdj1TC/JUJUCboqoTHPQwH93rPWqRUFFwdeR0c+kjDFK1
	CU4ZUwbtxLWcIf58CHVhFA6XAmI4lBfUID1TUkTH2PdMqdHbSikWSHoIQyOddsTEs7czOO
	fUMKS5pK5z3RN6abS1b1cr28kripwlSi5nTs30dOFMIxftsjAWPCr+LnVZiWQo5YW/AFSQ
	RdhhIu2FHLH5wuOklsG+2+NImWjEXtSjoVtSgnKq1zZqGZuN2fOMyQTn6WVmjA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xB5AXEqK;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=Kfp6PPBm;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840651;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=EcjydbHvCqQQPsLsV7Y/yf5qD3hCfFS1jSCZpj+/qGI=;
	b=TCZNAbPH272NrlvM1iwLdWXyDeHfa9W9b2IwRCOlEEXo+/Xxcf8uER7CYivGw5tvzI7fVW
	PH93X6QRAvmxBvMzJNsYXzWU5BmjNN9OHatJ6s1FWIWna1A7vNrMUAl60fSIq6XGBL4QqF
	YEqwVW/OZrdVP8UKab2KKaUZyStkR6EGmWFBLjc9nvvRhP1ThA8GJvoj2Oo2VUAEkmT+c5
	WUs0nZ73DVXAFuMThsHnlygEMOWr8moCJXDlZEQiYYWmdzYy/l5Lf31nKQhwgBrTWzVOGf
	rzFgySXVionBlCIPucpNviRbgLq7bQPJsmAGNiH+naeigNWDOqxgJuOQSf2cuQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:Content-Transfer-Encoding
	:Content-Type:MIME-Version:Message-Id:Date:Subject:From:Reply-To:Cc:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=EcjydbHvCqQQPsLsV7Y/yf5qD3hCfFS1jSCZpj+/qGI=; b=xB5AXEqK3qCthVH2KxKvYAm3x1
	4KID2n18TrpfJ/CKxhU8+LnJyhlEbC8yqTR5a4fZFvSUAFfnWTfZi+k4rs/A7sRuu5YgoAjIosHCl
	M3ebrJ9ot5ZfU80cIigPV9FrCdnDv+njM0k/hK+GkGy5IRKnkGAIB11+8uw5IVBT4HLKGE14yL6DO
	1S3dJD28RZJvpYz0AWHnEEUk5tE9S8GlGH0SabDZVHHUM4xZPcDCJL+U82OyPJIZk5EoMGw284PQO
	yR4fYQQUh6Sg63VYAKgN/oE6GCd6IuKsEcbVqy0f2CtTtPO7AO6ACrQJGDARYSi9svOwjYEpa95Ut
	hZPYnI/A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRT-00000008220-2WL1;
	Thu, 01 Oct 2026 07:42:59 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xCBRP-0000000821D-27nf
	for barebox@lists.infradead.org;
	Thu, 01 Oct 2026 07:42:57 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5dd5:4b00:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9B534201F18;
	Thu, 01 Oct 2026 09:42:53 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EcjydbHvCqQQPsLsV7Y/yf5qD3hCfFS1jSCZpj+/qGI=;
	b=Kfp6PPBmPwZPzJTfl6+a7GQXpregDZmAc6kmn69giEV8sidSjgvkejR5l1P5+h0gXtfcOy
	IPx+38+vz5fC85lLvbt26mRmhnhqau0dQ4CxMdRggVnaYn3za4/j53qt8//Xp7rpxvex6o
	QqEZlxCNdoK1FA3XJcdYt4jqxjR7g/8kukDtZmAwYFa4bRxdOBrzwor3/HV10Tu4ZrBL9G
	Z8zB/TrVq4Cq98C/vC27qn3YeZ9mtnyVoBZ+esi+Sv3XR2xQEPWV+6AougMRgGMgIGPW8M
	yNTb84AXHRsd/GnsH1xN9AKGcOh+qhLCjXS6fNH4XhpLs3Uy1FgAvVbIzsZwRg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790840573; a=rsa-sha256;
	cv=none;
	b=a5RvjTyJ6AY3zUs9DzqBwEYUiZEG27BW2IkzmSqe2JSkuX4/scwwlOmnOIGK6oMJPFG+D5
	QtIcmEq3Sj7Z8HU4L7ud9tmG9zBSa7EkW6kJhA/jt4+FEbAEJ7BuuhIcD887cJpi89rJh0
	GwJUH7tgAgDRfNJHjAdJ6LsocEWQp596PAcU58tAIzZNPTOdkPUp7F6Wr66Gc5ZuqT4KeB
	AMe2+TJtlt3ubdaVjHmrGstW4it7StYCSQ3NDprb7y/6TlDhGTBCrbEK9rPM4iP/IdnBKi
	BrsZXqANbshPYgoQQLW4CVYyHhvoslVC42Fnkq2uyN4bjf36REl2A6A6indNSg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790840573;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=EcjydbHvCqQQPsLsV7Y/yf5qD3hCfFS1jSCZpj+/qGI=;
	b=DIHJSYx/rDEFBmTKcDWjpx7fkr9j+Qp9DDwZH8ZYzmNpBnwN92C3CAzA5QeGOvjZrj+m7x
	HMLARhIUbJTnGSFIOL1avMI/wAifsGvjThN48Sz4ZX97BYn0Gr8GXK6VBXwHbWyEGkPHjL
	Ivl7TPWBiNfpdZOqEa/xW/lv1a8Ifknr5NfPV7FPP3xRb1qlFlgpUIxfegeot7HB9KC2lH
	NE1l7kWr7FS7/Ls6boLlT35jEel2vOXYaJhb2KmJEmZKiHMd3pflnHQTB/kELffx7Eizcx
	4UkBDDp/8eaQF0ezT+qyRmk4aYr89Czta4HPrRj50G22y/RKG7S07o+P/H2mNA==
From: Sascha Hauer <s.hauer@pengutronix.de>
Subject: [PATCH 0/3] Rockchip: early boot time optimization
Date: Thu, 01 Oct 2026 09:42:50 +0200
Message-Id: <20261001-rockchip-early-boottime-v1-0-dd891bcdb74f@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPsOvmoC/x3MTQqEMAxA4atI1gbSCoN6FXFha2YM/lTSIop4d
 8ssv8V7N0RW4QhtcYPyIVHClmHKAvw0bD9GGbPBkv0YIoMa/Own2ZEHXS50IaQkK6NrakNN5UY
 mC7nelb9y/s9d/zwv1elpUWkAAAA=
X-Change-ID: 20261001-rockchip-early-boottime-b981093bde02
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1790840573; l=2146;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=jYEoFhq66QE15ts+Kh7WDajNbL64IYwEzaQu9q74V6o=;
 b=0lv9JGT2GeUATBA8l2loagw08BTjYuLnlA/SG0Ui9KTGLoauO7igH4itxGyA5faDfpN5jbiIj
 22fpJPkP6MsBY07Es77D/KOkugXkh3Ny7uWSXxj9OetjoGjDlBZwyNE
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261001_004255_713962_8911445B 
X-CRM114-Status: UNSURE (   8.85  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  On Rockchip boards the ROM loads the barebox binary to the
    start of DRAM where later the TF-A is placed, so the first thing all 64bit
    Rockchip boards do is to move away from that location. This is don [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_ONE(0.00)[1];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-0.724];
	FROM_HAS_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 3A7D8201F18
X-Stat-Signature: hycfjx73bxemaz74fhemd7tdorno1co6

On Rockchip boards the ROM loads the barebox binary to the start of DRAM where
later the TF-A is placed, so the first thing all 64bit Rockchip boards do is
to move away from that location. This is done with MMU disabled, so takes some
time. Instead of letting each board repeat this pattern, do the move in atf.c
at a place common for all Rockchip boards and turn on the MMU beforehand.

Also, both TF-A and OP-TEE hold the device tree passed to them in uncached memory,
so accessing it is slow. calling fdt_pack() on the device tree before passing
it squeezes the unused bytes out of the device tree and thus speed up TF-A
and OP-TEE by a few 100ms.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
Sascha Hauer (3):
      ARM: rockchip: move to the load address with the MMU enabled
      ARM: rockchip: boards: leave moving to the load address to atf.c
      ARM: rockchip: pack the device tree passed to TF-A and OP-TEE

 arch/arm/boards/pine64-pinetab2/lowlevel.c         | 10 +----
 arch/arm/boards/pine64-quartz64/lowlevel.c         |  5 +--
 arch/arm/boards/protonic-prtpuk/lowlevel.c         |  5 +--
 arch/arm/boards/protonic-rk356x/lowlevel.c         |  5 +--
 arch/arm/boards/qnap-tsx33/lowlevel.c              | 18 +--------
 arch/arm/boards/radxa-cm3/lowlevel.c               |  5 +--
 arch/arm/boards/radxa-rock3/lowlevel.c             |  5 +--
 arch/arm/boards/radxa-rock5/lowlevel.c             | 10 +----
 arch/arm/boards/rockchip-rk3562-evb2/lowlevel.c    |  5 +--
 .../boards/rockchip-rk3562-kickpi-k3/lowlevel.c    |  5 +--
 .../boards/rockchip-rk3568-bpi-r2pro/lowlevel.c    |  5 +--
 arch/arm/boards/rockchip-rk3568-evb/lowlevel.c     |  5 +--
 arch/arm/boards/wolfvision-pf5/lowlevel.c          |  9 +----
 arch/arm/boards/xunlong-orangepi-5-plus/lowlevel.c |  5 +--
 arch/arm/mach-rockchip/atf.c                       | 47 +++++++++++++++++++---
 15 files changed, 58 insertions(+), 86 deletions(-)
---
base-commit: 4aa5dcd400d5b9cecfd24e68c6f05cd128c75c43
change-id: 20261001-rockchip-early-boottime-b981093bde02

Best regards,
-- 
Sascha Hauer <s.hauer@pengutronix.de>



