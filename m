Delivery-date: Wed, 21 Oct 2026 10:40:22 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xJRrx-001Orm-22
	for lore@lore.pengutronix.de;
	Wed, 21 Oct 2026 10:40:22 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 85B9F201B55
	for <lore@pengutronix.de>; Wed, 21 Oct 2026 10:40:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oG+EG2SZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Xg2SDobZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ftZjKikV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792572021; a=rsa-sha256;
	cv=pass;
	b=X1sAISK8XAOtlgVKapbA2SAJF0xYYCbBRlKrtQpy35QqDHYz9MO9kwVXmVST1rR7te8TCO
	JC92zdPE1qJnQ35pL+TdtMEJiL+kL/Ej4qD47oUFXx2p0MtWLlJJxFoeaPUWVAQc1t++ix
	8B2yLTAt+gVQV3bhQXlF11IdAAzuLRPAxfTwTmMZ7PiwXIhfuyuj6z7pCx2+iKVn70Iq1p
	lkstVUh+/e1GS23whA8StrRLVGpfdcXv+N5BLXpgDwskSzk27t2gv32tOMuIbZC2UVjU5l
	XtMKpwbLmXcZjGQm2KvRPyONbt2X1pW0uFtvvzPUD81CR4tgtIfCEtE/sJlB5w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oG+EG2SZ;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=Xg2SDobZ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ftZjKikV;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792572021;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=4TPsnwztybnXyBA2196QcB07iqk/awu0f0P8n9b35i8=;
	b=eQT39vXTn3iG59+DJSvAqaFcwvouBCi+Trm/Ub87RHw2HOd25g/K71nE4X+VbLZAMkL5/P
	mLU0mcKtrCJe3Shj+5SSBTa51uX4U6vRjAUEoW7qKejjvG3zMFhHVDs3qBN6a6+SxSfHnZ
	RRYZEcpnR6Eb1t/eP1+SB+fg43Fbcmalf94btwEwpoONdG4xsUrXu6Y0vxQIzJDKYgbXhY
	uTt/+BNuRf1bt5VRH2k1SZO0DHJSA7Qn/I92yGtSqIeTmRAE2TqgLmF/AWVfifQus0GoHd
	Fb8oNF+QNXVzHf1jNLRYgMfkVYsGa5jNJxi0J1j4OIscpHFTyLuZFs8vH06+bQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=4TPsnwztybnXyBA2196QcB07iqk/awu0f0P8n9b35i8=; b=oG+EG2SZbqGhxBI31AQeCAx8GU
	sWtto7OHVy2Cj8N9OfKgJrwoVlBy24HubvK2EpmJGxat37DknibuBYJKJ8TKLXBUlOJXO2uXMtVVn
	FOTb16EIDJaIo4HWazh8fB2wlAuWdG1rga4fTVEqSpA0ATKSNyNUVKb1NZ0/qJSV7BYfaNA/Z8Fcu
	DiNScluxMxqx8mudJzUKJeolP5ugZHkrn40+85XziI3cL1JZ6zkfXcsfOevMHPpH1mEcBSiUO7FyB
	TO9IgKgmARwJAfxQAgZuqE6R+K6huKMLUVIJ8UqCZgakFB8p/pvyINhTCBvJM8xK6g0fgQy0juIBv
	mCGhhU7Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJRqU-0000000BOa3-1O6n;
	Wed, 21 Oct 2026 08:38:50 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xJRqT-0000000BOZQ-1Ioc
	for barebox@bombadil.infradead.org;
	Wed, 21 Oct 2026 08:38:49 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=4TPsnwztybnXyBA2196QcB07iqk/awu0f0P8n9b35i8=; b=Xg2SDobZMsmCR/57gsfv62ufgE
	OsGt5wla5ddCghcDX82jH1K1y4MoaMMOln55OALOKB4Q6FYwCpD/RHZQQLmB8WHOHpPPMZNG7n3Bm
	KXosCwJO12gxtlZj055k9NlzPdftj9g2MJEp++y2bjHqaq2mSzJ1ADLnQ8n8DU0BN2N2xPTvkbbxt
	NeGhX759/bqvn1ojFmfNHwCYfqpkIcsX/APJ5L0V4q5RBliMUskXmAABABUilmPsNtIT5gzoVhMZJ
	4otCMCpRioyLsuSr3OZ/66Kju5Sl2nUqlIoOdfFG3F0THLzCqFOJg1u/0bXUryXDVwpXx4RFuTVy8
	JRPJamYg==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xJRqQ-00000005bkH-0UJI
	for barebox@lists.infradead.org;
	Wed, 21 Oct 2026 08:38:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id CFF87201EFE;
	Wed, 21 Oct 2026 10:38:43 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792571923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4TPsnwztybnXyBA2196QcB07iqk/awu0f0P8n9b35i8=;
	b=ftZjKikVWisC9w5ZaGq6FB7+Vj9BIpDnWt94mtgv2dDUh2WSwufKxPbcQk4TrzaG9/BWMy
	oDL8W79EDwbdf7xx6FAg7dWGiRfTXJM7C9CV7es3uOswFiKE5u2wWD3MkruKbMprkRIl4o
	bc5mJM1Pak44VxlFh+ZHr7NCH6By99Y1eQ8ev18YnrQ2V/yKOUCIZuEfNvoVxQRW/InbdG
	Vhauy8T1hDUltTjvaZroFer7tFOyc432sCOcPSI9Zho1Fts3Y6+BXvmE+EfmKGS3eq7msK
	HOfU9rQY0y1t4GuNZGxBiMErQnufTOl5+/SCnwzhHLX1hfpkz5kiwGikwWh8zA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792571923; a=rsa-sha256;
	cv=none;
	b=bAzif8bBh+zwNXhdHYT7aZfBNTZVUk276NjYLnNnGEnhZaV45rkuipWszxR7Rgh6sswneg
	ncIq0nexZft8gHShTRRwC+mxE0TMm8x1Rtv9uMCLa9CQRoHxuML2xBuQvh159DRUW3kjoy
	TT8aM4XtYLTJBjLS8CMj6NZyufT6D/0WCRomWphEA7pI6tsbvITvd3zaqpq+PuNhuxsBhp
	cPvMZDK5IQ2PcTGcCjM6zh2pu0DnXNXIcYfy7Z3opoKuEZ3Gfuv0xqdoiqDro67HbzJGCL
	d5uf+Q2SVOV3zR1w4VMKnojcKhIdljTzz4Ks0Qa9kw17ZCPNsg3KAvA6oXipAQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792571923;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=4TPsnwztybnXyBA2196QcB07iqk/awu0f0P8n9b35i8=;
	b=df7wgxkREAhOk4/2yfy5HPK1wlTKz9gkFa1fqcvEnOerSQHeFvSW3ED3PsaaTvsnAWtZLj
	3hEOKtEXXDJg3QBHfiJFoUYkoWKWSyiUGJMUKYiZfPcLukgpcTYb4slPYY31zdU4+f28iA
	RNBgTXaa+r0FK4NtiQllMNbpuQCTR86Q5iubenLL5uv6G6PUaw4zIECNECHtD4e2WzfEjH
	egmZ6RVOSci/MiwJu/lSCj0ds86Pq92JX0igh1XaHzfsyGbdUl9LvPw6ND+NlYSK5QSj2f
	YIrmU+YlmZSW2bYsUuBdPMIZO5QZqmhuorRPvDpm+mAZsYYv/6KKo6Y4lagyVA==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xJRqN-000Wzu-2L;
	Wed, 21 Oct 2026 10:38:43 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>,
	BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
Subject: [PATCH] fixup! arm: socfpga: axe5-eagle: build FSBL without piggy data
Date: Wed, 21 Oct 2026 10:38:43 +0200
Message-ID: <20261021083843.3550194-1-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-11-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-11-f8fb2d2819da@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261021_093846_411004_9CD69813 
X-CRM114-Status: UNSURE (   7.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  --- arch/arm/mach-socfpga/Kconfig | 2 -- 1 file changed, 2
    deletions(-) diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
    index 6ff9b50fd303..84bdba1d23cd 100644 --- a/arch/arm/mach-socfpga/Kconfig
    +++ b/arch/arm/mach-socfpga/Kconfig @@ -95,7 +95, [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: 85B9F201B55
X-Spamd-Result: default: False [-59.51 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.80)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	FROM_NEQ_ENVFROM(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	SUBJECT_HAS_EXCLAIM(0.00)[];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER(0.00)[m.tretter@pengutronix.de,barebox-bounces@lists.infradead.org];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: dffukhgyedh78o5a18w6aoe4yr14i3tz

---
 arch/arm/mach-socfpga/Kconfig | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 6ff9b50fd303..84bdba1d23cd 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -95,7 +95,6 @@ config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
 	  xload support.
 
 config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_ADDR
-	depends on MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
 	prompt "Start address of the Arrow AXE5 SSBL on flash"
 	hex
 	default 0x01000000
@@ -105,7 +104,6 @@ config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_ADDR
 	  Keep this address in sync with your QSPI image configuration.
 
 config MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD_SIZE
-	depends on MACH_SOCFPGA_ARROW_AXE5_EAGLE_XLOAD
 	prompt "Maximum size of the Arrow AXE5 SSBL on flash"
 	hex
 	default 0x00400000
-- 
2.47.3



