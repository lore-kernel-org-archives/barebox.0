Delivery-date: Wed, 30 Sep 2026 09:45:02 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBozq-007yvd-1f
	for lore@lore.pengutronix.de;
	Wed, 30 Sep 2026 09:45:02 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id DA60F201547
	for <lore@pengutronix.de>; Wed, 30 Sep 2026 09:44:57 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4OOYdx14;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=d26GV9jp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790754297; a=rsa-sha256;
	cv=pass;
	b=Uhurq2AqrFgsXgULqhoXiK6Xxd7+1vK+Vs7wKfEt5HPm8C+gmkAaR271D9P9pvxPfinWL1
	/fJDPIOlEB/e7geST1hw/SUZ9I7brrQXNhYn9wW/eb2Y1KnfCrVDtd7XNDI5sPeDQP1Ny7
	U9s7JrMkFHZXBC/7C94gR56JN9mPzhFizQKwukU13YA6q9eqUvGb/HuAG09rhsEbCMIzTK
	x/eZTAIlRWr4u1Pw3xPpQc9GMNl0ZuuaH1mry9Ju2C8c9uJqZ49WcwTfJZue0uhCS5SW23
	VAzROZ1fa34QCYoto0AEQLXYx/f0ZzCFJR4X1LJ3Ekk5v0T+TjusOfJegA6bzw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=4OOYdx14;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=d26GV9jp;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790754297;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=sUUGZ4DgvuY03wuOUKqWaxUMNDfwmhE1u7VS1bJi0fk=;
	b=UIieLNO3ULXEp9hZrZcBdtDhTliv/uTWFaua3eDHnhub2vwh05tLWTbvkXMMxmKgtt/tos
	lBLvqYKaHufoTRuTgmjbPwgLiiwDRlNuCdqs4c/RauVWee+XN5DABKeP9s9N0b/YkIozx5
	2I/B+Gp38e0/RTAAH6CbW+siVh8NWwb8zmTaAEZd0QJUNiFTrIa754MxdZ41x5z4iRvqxA
	gQvPtpzuegCs3/Eu8mzwPBt/veU9Tirju12u8wjbCZU3yDBJGy+Xq98oJOmoceKPad9vhB
	HW6vP7dbDU1cJY97Ny+4YfUXKEFbihEa3AzVGLyD2l9nWF/20gTgk6cfpXRd1g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sUUGZ4DgvuY03wuOUKqWaxUMNDfwmhE1u7VS1bJi0fk=; b=4OOYdx14G1YqcV5aV2S1FOB7w7
	2tx4EcIeKqoBxxjD0ZRqNhOsD0JFyK1PSPebM7B6jQj9BAUc/FDJwZe0wjI3SZf4pdlmQSGlQNzPX
	HwVKLuP3P7+sPs90Q2hWb15fgx6Q4Xy6VEWlYT7kKaCgDiCVSDKCV46OPEY4saDyhwhfUJAFFtXBF
	fpNtaI7M7xsjzNFJ+XMuSUpV09OwNW/5G/vidknm3oHk91ijClMlSrHJCGM+d3ivHWlFtixw4G072
	KMsVKLVhR01qR7sAh02HTIXojrTqIOLzJWX2utsJEst3lKlG3WuLuI2qjOcKHygAJtfLMicI/QOSY
	Kt7UFucA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBozC-00000005JDY-40ZD;
	Wed, 30 Sep 2026 07:44:18 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xBoz9-00000005JCp-2WTO
	for barebox@lists.infradead.org;
	Wed, 30 Sep 2026 07:44:17 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 9E8FD2001F2;
	Wed, 30 Sep 2026 09:44:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790754248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sUUGZ4DgvuY03wuOUKqWaxUMNDfwmhE1u7VS1bJi0fk=;
	b=d26GV9jpv4DSqo5tN9ty9FOn9ltu2/eoFU69IaGKm2YW93i2GHrYp8ew1agM6TvMhl+HKm
	itbp4SsXvDfjKbpL6nCqPJ/FBi22gQXl+mWfUiK8e5XlrAoXajHS25lI15GR0E2TyDbpWf
	PCMdUQtAccUWPyawpiXrDoga7MlD9f0pmBP+AIOmqTwyp9Yq9QWCNSXirhArEpnDzXSWn6
	CcU5cgyz8jEK8V1bdnTzFhKB0lsVCZHLNktmjN7RjlLiFBcjRQ1Av2Wac918pWhCXGX2hk
	zN2qHOktbF4P98AO0IBJk8340I8X6FcGL6FEQLBz0W05uTrZ/71SMQ9I4LTCHg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790754248; a=rsa-sha256;
	cv=none;
	b=TfXxywwbpmgqJfKJHJjM8lUpzxTuolLCPTmJM5QEDZRdNuM8oPUBQTkRmlYLXcILxWKC0n
	OkH/ea++ppND4U9tGRLnK+HLqYss66AwjrtPUSBQq2BbvZXZWn8Xk159zHgmrCaQVW+SHe
	zCBXynjlmcpq3zrrvVdMhUZc7RcWDJ7nE7Fz4NwtgvxmRCQY8v/Bmt7SQ8bB7Csff5a1rz
	Z+t+EC+yjF6kx4yokEE1sTrUv7Eu4J6xRpOVQEnIYhXEJsJvItaMHX2CCqROmxMQ4Gzq5Y
	DGhgbz2TGQ4AneUIoDSgCMS72BGMdgSz+pVrhGQfJV0+nwq4vVA+WMWK3mc2qw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790754248;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=sUUGZ4DgvuY03wuOUKqWaxUMNDfwmhE1u7VS1bJi0fk=;
	b=XRdb3E532uCm9X7bq7rtojwKj7yyi7Zi7YOc+6BDDCDNQ63JHeWCR8WsEh1CVCHJg2OxVF
	PC8iTJP9xXkCFalIcr12VankCLJ/Vu/bghWAHBiRNexEy6y+RKxK52goJCg9CjGfCwWBvf
	PWrblEia30vi7XmTdEDRP85VzRl2eC724gcJSla00KN74PXI8x+/RJZCj/LipaBSjT9fUL
	/UDThc5jhEy+m41THkLe+3RvAnHb8OkZfNhi7IVE03KPrBwkwwfe3dpYXscmlMlEdnL/mu
	JrSdgGvrFz2Xv0Thez6A1QmN8GY8wieabnqy/SA5tEhGxmNWvevLe6dS1OIZxg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 89843740D6C;
	Wed, 30 Sep 2026 09:44:08 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>,
	Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Subject: [PATCH] ARM: i.MX8MP: variscite-dt8mcustomboard: use i.MX8MP early clock init
Date: Wed, 30 Sep 2026 09:44:05 +0200
Message-ID: <20260930074407.1499418-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260930_004415_808281_87CC5B3B 
X-CRM114-Status: UNSURE (   9.43  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The board is an i.MX8MP, but calls imx8mm_early_clock_init(),
    so it runs the i.MX8MM flavour of __imx8m_early_clock_init(), leading to
   PLL, NOC_IO and GIC root clock to end up with different configura [...] 
 
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
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DMARC_NA(0.00)[pengutronix.de];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: DA60F201547
X-Stat-Signature: grer1mekfxi8cto8i5xmr1qhwwteob9x

The board is an i.MX8MP, but calls imx8mm_early_clock_init(), so it
runs the i.MX8MM flavour of __imx8m_early_clock_init(), leading to
PLL, NOC_IO and GIC root clock to end up with different configuration.

Call imx8mp_early_clock_init() like all other i.MX8MP boards do.

Cc: Michael Kopfensteiner <michael.kopfensteiner@vahle.com>
Fixes: 9c6a7058b8a7 ("ARM: IMX8MP: add initial support for Variscite DT8MCustomBoard with iMX8MP")
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
index c9907ebf0a35..0483a6479710 100644
--- a/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
+++ b/arch/arm/boards/variscite-dt8mcustomboard-imx8mp/lowlevel.c
@@ -89,7 +89,7 @@ static void start_atf(void)
 	if (current_el() != 3)
 		return;
 
-	imx8mm_early_clock_init();
+	imx8mp_early_clock_init();
 
 	power_init_board();
 
-- 
2.47.3



