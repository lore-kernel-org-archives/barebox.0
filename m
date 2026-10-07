Delivery-date: Wed, 07 Oct 2026 16:58:42 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xET6Q-00AyNh-0B
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 16:58:42 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 8B77520234C
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 16:58:41 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=m9aRhbez;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ajAJQ0G0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791385121; a=rsa-sha256;
	cv=pass;
	b=IdtqIkMXHR+n2xAwrLbXJ9uVw5xQmX3L923zhxRoenGT5oZt7neawxRp3EjnLbhcWoktR8
	8YvNSyXfZqjt2XVbZSjkEslzNkrDlgU8AQzDNukDnl1hoMrq+iu/jBLFtt+2NLExO4czsT
	Ov9ROVDvQOjCUKsqnCedxVboZhhT25wGQiWRBxyAiD+a5FdD7oMTaKM5VhxmyUsAJ/huHU
	s/vBpkZZzlh8gjfYvCDc6XWwND9B/kmZBO7z2sODvmrJbamy+IAeA8VqIpmjDGngHErZAh
	v565E6RxJu/nNa94N4Uuu2+4wk12+NME/SCGhO8XCAap085UenH6mlmsl9kQwA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=m9aRhbez;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ajAJQ0G0;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385121;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=IVHAd6JCii+c7nvqUOVOWDeP6Uh7Okhr6aBPKVxQqsk=;
	b=Vs5JOgOVJ1nN3sMgzVuDtSlssX8joADIHF54Q5uIdrVSHHd+me1Q6WMgxrmTkhM62JK6/C
	4TFE79kS/lD8lHtdSImj+Us8Oh+fuGu3Sg8S4JuXZGRWe7B8EU5TABLTM6/90N1y9EaQK/
	rkTNZvp+nUGalTCuSMdGQqFAnyT6JS6GNHNhNaWNjh70LCfE2usQp2B5UW9xz4FPy2qYGg
	pn/Dkq5t4V+FqeIbn7ENN4QCsj1YMa9vpRM978m8C2QrwVPO3XpW4dt5kC3Dts3Z3t9mEE
	blx+cKL5r2zLNOqdy3+V+zhdLOlHnfXxdfo/X/awt1gNHStFAF8jAygcI2jISA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IVHAd6JCii+c7nvqUOVOWDeP6Uh7Okhr6aBPKVxQqsk=; b=m9aRhbezvrZtDRBUu7vdUSyJTk
	Ip3abqOr8LLZgLZ0s2LXmvHgJDe5CfuR++9K+WbXeW7gIOKTAZTgm8tBbg3kTCnfZy34pLsl5LjGF
	qwT8sg+uSMmL9slpMnokecY0JULCJIJXXuzOmMXvCfxvztJemLL4GDi1CkSndKZeKtakY5h/oKQNX
	3+X+kxjj9rzDL/PPZxJ9i2T5byg7TGMH9Vaph+r+AfCY2oHJ6YwLvdzP0UgyQ2OwPM4MSLRONSSGx
	cA/RdnFwxIsHr09DyzS2WWHbG9r9iS9EowzXNNVP/vlNltiEm8QwTDocGx4tYIhRBUNsGhNvCbtyG
	hVkacUgA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET57-00000002f2s-3Jwb;
	Wed, 07 Oct 2026 14:57:21 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xET54-00000002f1v-11Dl
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 14:57:19 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id D67CC2023AF;
	Wed, 07 Oct 2026 16:57:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IVHAd6JCii+c7nvqUOVOWDeP6Uh7Okhr6aBPKVxQqsk=;
	b=ajAJQ0G0SMLoqqydhtb+6qHtQTVhy129bmnoVh3Ry8qurHKVAcbtdw0LTFBQkM+z7cgXUk
	GAICkxFsJI+b5MiBwBiWHiDyefYIa5A1OHSqxc7d0QaMP0XxxTPewoGxOuz8DD8BJhvMUW
	5pHFPMqK4pmM0zWOTQ9k7D8WOAH2llGYId2kmoJ/L/VzvKf4mjbcZ+agMj5qyShVCKfyiL
	Tmn4wkSISqSz3mfJ+VdBGvv6qzw3UFOe3dFJoOeMEewQA0EtVnHeVtARo/raePj08mT1Ey
	ZDzLE0H+RSJy/DeM0DmKRp5fGwd5y38p/yG0Yrx6j0MpuNBUA4bnr1zDhoeJPw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791385035; a=rsa-sha256;
	cv=none;
	b=MBrMLKeWcK5x32/rnmd/E35oYTEJZTuZV0D/mTcxq6LUJnxwmFkZw6oAHhgg/brlTKZCoD
	qQngi7mN/oq5Hy03EgeK5+TkZ2fg5SB+KU8ugXsgQh9W5a31XO7V/qDuWpNW2mO5lF3A+L
	PhW3wv3LyWCgjozRqYaOy++C16ZYR5rUeBW9gyO+Iwl6FlNzcEA0/wupdH2jKbibagrwIF
	VgPWKzYiv81vQGxEOIgTBZBhfviF7hzm+9BivDgpfMWgucgg8b+yndui+XriTvsFDvPzkB
	IbIqdKBf+FXEFRRbh6rg5BqBrQf9DuHTiVNDdsF5Xc8PsS725yQNHNPZ2G1IOw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791385035;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=IVHAd6JCii+c7nvqUOVOWDeP6Uh7Okhr6aBPKVxQqsk=;
	b=MgXcKyid29alIuv0TiEiAH9ztpZF/x0D+mhRrzmpOwRgPe/L2Y1Z35Kd9vhRFxmxBzxt1/
	2Mm/d0EATrKrX/xOEnX+f7BjYVnnfP1fVdw25NYOQVvYkP/zfrZT04uobra9LGGwS5HveU
	d+EzvpxEXDZeMcaavAJwjnJzFpQ/gNeJ3Kbv4zUaXoQTGxWGF2z/lzYsDEcLv4zapHvOfU
	uMRKidE4P9ZiOMJq1gLzvxWi45hVBneBoKWs7H+BjmvIAJck2BCbSsvpq1LRitMh4eB8Yj
	+Yn7ONdTiVo70+ZIYKGNIH/xq6nmTGpGaFLHpS64RqqrcxHYDJ2gZEt+zvtI0Q==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xET51-004jZX-2W;
	Wed, 07 Oct 2026 16:57:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 16:57:15 +0200
Subject: [PATCH 1/2] arm: socfpga: agilex5: select GPIOLIB
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-gpiolib-v1-1-a2911b434fc0@pengutronix.de>
References: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-gpiolib-v1-0-a2911b434fc0@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_075718_503836_7252FF7E 
X-CRM114-Status: GOOD (  10.99  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  GPIOLIB is disabled on the Agilex 5 Board, because it adds
    about 1k to the piggy data for barebox proper. During experiments, this added
    about 1k to the FSBL image, which pushed the size over some und [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 8B77520234C
X-Stat-Signature: jhjfkxiwdywimn3afgrprk9bqiy5erip

GPIOLIB is disabled on the Agilex 5 Board, because it adds about 1k to
the piggy data for barebox proper. During experiments, this added about
1k to the FSBL image, which pushed the size over some undocumented limit
that prevented the board from booting.

Since there is no actual size check for the barebox image, there is no
guarantee that the socfpga-agilex5_defconfig will result in an image
that meets the size restriction. Therefore, some tuning of the config
and disabling of various driver is required for some specific board,
anyway.

Enabling the GPIOLIB for one board will also enable it for all other
boards, unless there is a dependency that GPIOLIB is disabled and makes
board mutually exclusive.

If the piggy data is removed from the FSBL and loaded as SSBL, the size
of the piggy data is not restricted anymore, and the option has not
drawback anymore.

Therefore, select and enable GPIOLIB because its features are very
useful, and not having it causes more trouble for questionable gain.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index a836711e6c40..38b9ed4dfb39 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -30,6 +30,7 @@ config ARCH_SOCFPGA_AGILEX5
 	select FIRMWARE_AGILEX5_ATF
 	select ARM_ATF
 	select ARM_SMCCC
+	select GPIOLIB
 
 if 32BIT
 

-- 
2.47.3



