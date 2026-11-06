Delivery-date: Fri, 06 Nov 2026 12:15:02 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xPHuQ-007zGy-0d
	for lore@lore.pengutronix.de;
	Fri, 06 Nov 2026 12:15:02 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 34103201899
	for <lore@pengutronix.de>; Fri, 06 Nov 2026 12:15:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0ibGor0L;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BYAzbf2E;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963702;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=rX3LypvjTpB16tpJf68zxxYi3HHU9OCZejL9VA6Fqr0=;
	b=KYEXwBnyfDrLhGi8/R24zJQwkE952crVn0wT3XJL/ZBDr0FUjvTNuxkcFyqx6UA515JHoJ
	BuvIdFaaxB34kSjhxteT1JoIxM3yQSu1V8fFqaBnoVj1yo2+v+6+qjThTdhe5IlANIOFJG
	TWUeYaTDt1GyhBokWQQZ2HH9vY6/ZRDW3s3OR5Lpe+cZ8cycgcMPlnpDdrjSCY7XpfPWOy
	9JN78/l3sPZt5MkIeaLDdQL05vcmotm1twWHierulhtzt+7e1od5Z5AYahID7hJjTXr9ia
	ZqTRUBrEzLW9iA+UA8s+CD0/jYBo7AqssmF0WbIzJoIRX1TAjrlpgFUc5eN9dg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=0ibGor0L;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=BYAzbf2E;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793963702; a=rsa-sha256;
	cv=pass;
	b=abaXl4axxsPMRnMdzu+srz79uMbxgVoGBBCLiW+3y9+bEY+BNAS2jBwpXCPe/ktelduWdF
	xlUPc5YfhWIf4TmTqkVPpij9zo0R0KbU0HF5VagbsNc7wLOGh/4EbEXHsiE4metRLJcXSE
	dlhqJE1vHDxU386P9KkBghMQbuuVj35nVRD35mOYvdiw2oKkMQS5x9M+2XglYZor+dVOxs
	irbAHUy6uTYQl3HDHJXZgm0mWhuW5BBHVpse/Jzt1FAqAXoFrzr9pG8vTY7qHl0D1QOD5x
	XE6plzk+s/qCiI1ct7czSGfRtqLrOSblZeXElfRCTU5xjPvMIqAXhnNKj12OBg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=rX3LypvjTpB16tpJf68zxxYi3HHU9OCZejL9VA6Fqr0=; b=0ibGor0LvYBCrN
	w919Sd/ZSHViVEKYGefig2lpBl055IdkP9imdrTZugRaw4ufr1EnO6cEkRgdeHzH897I6R4RUveL2
	JlbsSfdhOypYHcMHUY2myXnSYoLfFMCQpkXrsJzSk4txeXdLJNBl3D+lHcKfc2SxzfqFuiKq8DBuX
	NfsxQuGkTTalc15j4mYoXF8sDHlAIm0CpyN5ROmqfEDAaggmaL0P+M+WLC6OPwQYWPl6x0u7ysADZ
	Rc81zqD9+HMcxPK75YD+06kmsYlsmuiOKZXzofs3c/DE5kzIEcnAmBR6Q2sXBNF/vqKeFMHe3Un3J
	0L+gcABxfY5oFT6gNKlQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtR-0000000C6nK-1zq2;
	Fri, 06 Nov 2026 11:14:01 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xPHtN-0000000C6js-1zPr
	for barebox@lists.infradead.org;
	Fri, 06 Nov 2026 11:14:00 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DD540202929;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rX3LypvjTpB16tpJf68zxxYi3HHU9OCZejL9VA6Fqr0=;
	b=BYAzbf2E+mb4dHGzsshHSw2VYhqQ9VGre/0ikL6/yU4SlYfpEbt4+GdtZT1/xZAqGXpcTi
	x3MRIy7dwTL0OmyW+oL2hxd6BPkd5W7BEorht0O84h+bryduFUWh2TyjNfcOFxx+PhG2vb
	yRycqOETnO7/TwBm1BIlICvZ9QJA4y9F+eJQa5KBKmXMVAvlF1wB5OHUtVdCUZh+1v6EPI
	YX+O6/KaNfjChqpTCadchH1xFn387b4g5WnQjr9alrfMh/M6CvR9tlQ2L+25kGD/58L+KV
	mDT7Qdnt581DjPywLp6+xt/Pf3V4Lsl0kc2Hkj3IvRcIV735hM/o/rvZvkMWDw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793963633;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=rX3LypvjTpB16tpJf68zxxYi3HHU9OCZejL9VA6Fqr0=;
	b=KUdNm6fuD0hqiWfKgeUfBIKJH/Sg0ZZeKchyDqyS9E+N2eDo2yTwMsS2HB2f9cxMiL6qhP
	cM2dfF56wooxOFWCVZGKRWJyaxkpH3k/gYLTiWfifcbCTChce9mNxfNAKtQq9qX979qbiK
	2k1hgIlZxfVytRTA36YDCP/O9gv9PvsUhKKOv+WFv4LlTvjDmJmgLXOLnErp1ohWCiT/h6
	ZJ6j2/kwrdh3/jNLArD/dmw2XseCdlW6aYHR28tL9uRCdV9FThko/qI9sMYT4qJoi9fy0v
	s1ebk8NWPtZnCsWZhdCvIGnxu2904qo/VNPLZ6pSGX3njOpy4CQWlNcHWd6R+g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793963633; a=rsa-sha256;
	cv=none;
	b=Z7najwUlZHctCbuVZXSD+dN4ELXx1WCZ9fdD68Xl7X5I4rX0czZeGSh/omALXCr5Jhu02k
	/1vHSzYxpIe/iT2tKGGpNkky4qxLpgUGbloCxIEpAaEqnIju7rXYo2D5l3g50+QkbuSMoN
	vT6HJ9n5qcEY4oTvMINS94moIiaFq/F9ghVzsd2vM5YoosBzu8RYhA3laJ2rVRhyZBh3TT
	z0SVi5zCgZdkQPiqQYCQRZV1c7JaSOgdCfSJgvPhMFwP1Xm3Lp5B22TpTjJZ0jaqLl45JP
	6gNrgqhScwzk3oESOz2AXcR4h4HiMGY+L262onjIqwPzx5OJePVoaTIjysUkOg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id BE16C7412FA;
	Fri, 06 Nov 2026 12:13:53 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 3/4] pwm: atmel: look up the clock without a name
Date: Fri,  6 Nov 2026 12:13:49 +0100
Message-ID: <20261106111352.3535034-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
References: <20261106111352.3535034-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261106_031358_065657_A9F0135A 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> The SAMA5D2, SAMA5D3
    and SAMA5D4 device trees don't name the PWM clock, so probe fails with -ENOENT
    on these SoCs. Linux requests the clock without a name, so let's do the same.
    at91sam9263.dtsi has o [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
  0.0 URIBL_BLOCKED          ADMINISTRATOR NOTICE: The query to URIBL was blocked.
                             See
                             http://wiki.apache.org/spamassassin/DnsBlocklists#dnsbl-block
                              for more information.
                             [URI: pengutronix.de]
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 34103201899
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCPT_COUNT_TWO(0.00)[2];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DMARC_NA(0.00)[pengutronix.de];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: xwdiy49fgw1uu7nuzm87gibe4cwrp87o

From: Ahmad Fatoum <a.fatoum@barebox.org>

The SAMA5D2, SAMA5D3 and SAMA5D4 device trees don't name the PWM clock,
so probe fails with -ENOENT on these SoCs. Linux requests the clock
without a name, so let's do the same. at91sam9263.dtsi has only the one
clock, so it keeps working.

Fixes: 3b4a22e803bb ("pwm: add pwm-atmel from Linux kernel 4.14")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/pwm/pwm-atmel.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pwm/pwm-atmel.c b/drivers/pwm/pwm-atmel.c
index a847d4d434e3..35299cbc563a 100644
--- a/drivers/pwm/pwm-atmel.c
+++ b/drivers/pwm/pwm-atmel.c
@@ -432,7 +432,7 @@ static int atmel_pwm_probe(struct device *dev)
 	atmel_pwm = xzalloc(sizeof(*atmel_pwm));
 	atmel_pwm->data = data;
 	atmel_pwm->dev = dev;
-	atmel_pwm->clk = clk_get(dev, "pwm_clk");
+	atmel_pwm->clk = clk_get(dev, NULL);
 	if (IS_ERR(atmel_pwm->clk))
 		return PTR_ERR(atmel_pwm->clk);
 
-- 
2.47.3



