Delivery-date: Wed, 07 Oct 2026 13:15:31 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xEPcQ-00Auju-35
	for lore@lore.pengutronix.de;
	Wed, 07 Oct 2026 13:15:30 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 714F5202013
	for <lore@pengutronix.de>; Wed, 07 Oct 2026 13:15:30 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xbMxqiF8;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Iu3vN6sr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1791371730; a=rsa-sha256;
	cv=pass;
	b=QHNL96KuvqbqaOv4BZBWB7b0fXx1RFDK7Oth3ZyjTC1tUYGxb3TiR0F4Yo6KVjJ7Ygwqv3
	9AiEEe++6Bvxue0OspOLGeKg84e59utPVTUe7xI8Sn47rrcnSksTBZgonn28/zdMWSF+Re
	4zZcy4lHqs23LcygMSZ5ZPflLZdYUShBjznwq5cEXjI2NJeS3xhF2mZYFa+ZQRUOEETEHi
	7yrml2U9+a5p6RDKbw/U4tStxl6Ic29t+jL5AniHNiDshdFsUWx7pdl3pSBcSbZpn2ty/v
	h7wH0LrSXoJFFllHGLGDYROqExItkNhqoMoc9dNK3nhJDi/HzdrEA6K1Iim9AA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=xbMxqiF8;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Iu3vN6sr;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791371730;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=lFF+wrqvOkH4JuEP+6IMczm7BXkALeoYI+LWDsDPfUE=;
	b=A0nE4nA96Vpc3Hjwr/47XPXwMpUvOoSrMpV/3MNsh/tba59IrJ6Duby9OV5j/7E+gdNrZH
	6AwUyt+wfXbflBeKYfwnSk9tfKjO/9bZdQHmFIXNE3/0MvuDqeSjsvgvwB8VaxrvUguIlQ
	7JWw2EsEwoYYxc1YP1aQGoIVGw2bskEf5fVx4S1dAdei+GA4QRiNJUoETgOkzPkkOFGw8w
	CjrlHTLdzPpgiHKLnuwF6fmMFJpGKAdqcjMaMHESOFeCtkrJMIV0nDnS77gqx7RfFSCvS/
	+W3BXi46H7sBD5hKbFQpeylAkCOK7ZX+3W70vIgzcWVUp+Oq9WPUH2a8XQuA7w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lFF+wrqvOkH4JuEP+6IMczm7BXkALeoYI+LWDsDPfUE=; b=xbMxqiF8RCiaFdI+ZziAkWWuDW
	U1lm1n71jsf4bFRId4dRc3jx66j+N/D3C7cQkPIUalN/ZQgiDd/GgGNEMrrR0Ej+cq35bm52DommJ
	jTszykRcMONk0k+KiDhdMv1HMKGjodAyfGzXCS1iHZJP4PntSd5T9GWdYz7uZkveqSIaL8ltybIWC
	P397nC8vUFI+hasB6rzZbKlDZifCq+nHWrwZUZsEpQaXdP6qnL8l32r+PqWJcxsNSIEcKAMv+XNRZ
	jTjG/pVU43bAKG3wKHWD8phzL3n8BuOX+4x+7K1+qWF4VYc6QaC3kqcaZtQI3C7EiSc41JWKztLRs
	wvnq6CxA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPbz-00000002Hrb-3M21;
	Wed, 07 Oct 2026 11:15:03 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xEPbx-00000002HqP-1E9O
	for barebox@lists.infradead.org;
	Wed, 07 Oct 2026 11:15:02 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 836C1201EFE;
	Wed, 07 Oct 2026 13:14:59 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791371699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lFF+wrqvOkH4JuEP+6IMczm7BXkALeoYI+LWDsDPfUE=;
	b=Iu3vN6srvCzDeDt5CEn65ibn9dizYeEH9C1ZSU9EfqEq/LsL9LIugaOmTk5e1XzIJtTJHe
	/Hp/6J9GJUdkPCjhzcxQtO5bLMnEbtdxSsSuXh3egXUYu01OBkme7zDrfEyTrkKs4R8zFF
	9JoXcAMSHZSnhTl1fSGXgxcOx9xXUkvY2IjT9vimANxrQoscuSPBG0CKPSYUxRx000MzKG
	8uAFadRjn4+QJIEKkGwk/8PRcCCUbj6gbWeEzV9ZEkH2Wlx6mOTlbpYXJJ6cSWvvtJyoL0
	cVp28gp3HJCI3vwNQ01HrqYWP5pU+ExOZjHCulkyzb04VXGIMMH6ehdtS01wtg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1791371699; a=rsa-sha256;
	cv=none;
	b=as9vT93vbr7GsgNTzUz/ZidilbJOgtAIi+owdOODfey9VuLpL/PwmHeAWbum8AIIfoJmAt
	joRk76TgnxqtUg0SBe6sD1nt1aY8D6/q0leUmq8oGbKAQ2JJf51niDgvS1ClYvEQGgu4zb
	rgfUGspcbxUZbAHkvLq3SjtqNVect5rwx7l3eUqbFJBxlo2sa9lRMPbCxd2x5Y6k8zGJ/f
	wMWpi+kCeKpDdXNwg1kn2K2/6pRUEuxN0ZcDsTDDyR8qSVQ1i1b4L+2D6zqDnUA8IKAyGw
	bCJt3+CxI4YNpsRR7tN6A3sE+GdOOsZurns4HCYX8mlg8uq6x7YMEcANkxCxDA==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1791371699;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=lFF+wrqvOkH4JuEP+6IMczm7BXkALeoYI+LWDsDPfUE=;
	b=GQzlMr3rfazK1hzxg+FzRrGPojorb328z79Mh7iFsUTXAhj/Jq1X6LoguFOybYLC5RuahJ
	BFpW7jPDbIVUJPQd3tVNyvgO7DNvewAI5nkK1AhyL0vteC+XSrfFdaLEsVjEdpu82coBgl
	F+OgeycFmobO/31caa+HWaqr+AqWQPivTl+Gsz7rA42bHn4bm0XJTNfXypC4pGSaK1MsKN
	wxGB9zdx4z3juDWG7mWx2kP6AAWtnbRFMs5p7ieKOWeDAF+kTayXNXMmyn1XpIiGDNwFUw
	ZKctdHqP5TfAoytPzXIDM8AM1rZUxtqKt1dAL2k7Ch6W21ZmEknSNzT8jdQLpQ==
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xEPJM-004haR-0n;
	Wed, 07 Oct 2026 12:55:48 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Wed, 07 Oct 2026 12:55:55 +0200
Subject: [PATCH 10/11] arm: socfpga: axe5-eagle: move lowlevel init to
 separate function
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261007-socfpga-agilex5-xload-v1-10-f8fb2d2819da@pengutronix.de>
References: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
In-Reply-To: <20261007-socfpga-agilex5-xload-v1-0-f8fb2d2819da@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261007_041501_507144_413E8EB6 
X-CRM114-Status: UNSURE (   9.01  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Move the lowlevel initialization to a separate function to
    be able to reuse it in the xload entry point. Drop the debug message that
    lowlevel init is finished, because the message isn't really useful. 
 
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
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:c01:1d::a2:received,2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Rspamd-Queue-Id: 714F5202013
X-Stat-Signature: i38hgfemejb77s9smca5oq9icjxysast

Move the lowlevel initialization to a separate function to be able to
reuse it in the xload entry point.

Drop the debug message that lowlevel init is finished, because the
message isn't really useful.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index b0a2d6673e0f..bf98515f28d8 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -13,7 +13,7 @@
 
 extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
-static noinline void axe5_eagle_continue(void)
+static void axe5_eagle_lowlevel_init(void)
 {
 	void __iomem *uart = IOMEM(SOCFPGA_UART_BASE(0));
 
@@ -21,8 +21,11 @@ static noinline void axe5_eagle_continue(void)
 
 	socfpga_uart_setup(uart);
 	pbl_set_putc(socfpga_uart_putc, uart);
+}
 
-	pr_debug("Lowlevel init done\n");
+static noinline void axe5_eagle_continue(void)
+{
+	axe5_eagle_lowlevel_init();
 
 	agilex5_barebox_entry(__dtb_z_socfpga_agilex5_axe5_eagle_start);
 }

-- 
2.47.3



