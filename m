Delivery-date: Mon, 28 Sep 2026 16:05:43 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xBBzD-007JW6-1m
	for lore@lore.pengutronix.de;
	Mon, 28 Sep 2026 16:05:43 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C9AA620026F
	for <lore@pengutronix.de>; Mon, 28 Sep 2026 16:05:42 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fNz6qxHS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DRqUevL+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790604343;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=63xmeQAXGTfHrOkw/gaQhb2LBW8NGJFdJTpGtAFbesk=;
	b=Nux1Fd3St0R6ET9hhCSnuYeHJUnJvgqnr2GM+eG7xSmtjLBqAjilPzDC+3lcOUP0l8EK3/
	vJqbB7kgAai64uW4LeYyQCcVeLW8uoKoIGy7+GDna7vQYw+6C9uM0iqYMvDPJaqpzDkUf/
	f6m5LDT4xKYi2TR2KEmRut6+qF4FgKIYf1qqy2dODr8EeaGv1Lll7yJ5bpPHxFSVaYbgyh
	aEEZ+GvJsr2T2krtBNYvk0JDdzo8sflsOkN/6v2bzmviab25M6M6EPHe1gRRN5cMLamIln
	ixX9yp245cDV5b8We0Emt5eFVsXa6nr8nbm9MI0O95H6aN2Z/l9PglB0D2ffUg==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790604343; a=rsa-sha256;
	cv=pass;
	b=KrtCvNsoGiDgugsTblMjjEea5KgzHn/fERhUHINBeIXptYrCnXUbFDC9+6CFn4rm4RA/u1
	ZQctPlnZa1OoIYSZ5UM4JZcFitgL0grYP97ZeBeNNo2kUYFXLr488leWtpOJMBiPCOyfPe
	WnH9m8sDiQvd0pen13HlAmhgJRLM0MFbDdFQdFb4M8wJMM3YGETjF/YZ/Bqts4k32wSGN1
	lH7+jnkSkphtcHFN5Qhq+7sk0d5w5s68j//VW+or4eHMN5v3rieaqBlUjLMRmZ2q1qTLge
	ZIDlaNPhsDBLdflIHPpoIE+/o0L2vyDKPtNTrtJFBytcXvner2ZTYKbDqGzR5w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=fNz6qxHS;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=DRqUevL+;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=63xmeQAXGTfHrOkw/gaQhb2LBW8NGJFdJTpGtAFbesk=; b=fNz6qxHSYIC6VNu+hQ1JQ8flC6
	qIs0WorfDBRAakCYPOGHukpSmW3nlPmaYOXnYlpGHWpyFXd2p2XlLuPDJyyP7DuOgtqL5ImQeZA1K
	3Yt9naJJBfZSCkOjueifVlaj3U2UZTQOMLbXAbyek3PQkZgYgofnWX8M0LdXtWTA5vGa+19OdAcYI
	dn0J6RPdDl/7SPeHb2oQvXsnhuaiPcrvkjeBs+5Ruxf8ygFgGAYwz81vF5U3xSkKGp6AtJplDrm1m
	1Wt+ziW7VxCh5TDDSSNjGYFuaFHXgWmq4jPA1OgOkvCgrSVvEpqu4KeY7ukuiYBqcn6cZigu7u8ZY
	G2yaSqeA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9y2-00000000Vd0-1AMh;
	Mon, 28 Sep 2026 11:56:22 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xB9xz-00000000VcG-16Dm
	for barebox@lists.infradead.org;
	Mon, 28 Sep 2026 11:56:20 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id EF184200044;
	Mon, 28 Sep 2026 13:56:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790596575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=63xmeQAXGTfHrOkw/gaQhb2LBW8NGJFdJTpGtAFbesk=;
	b=DRqUevL+gOanyUnpgBM6c/YGGOtlryFdqtcF1c5YD40zCEbLN+rZmpjpujgO88QlbEa+bH
	//aMemoq1Za1I/nIH6CXjnPCLZTKSXszwPEKlB+ugvpjHbd8k6JTy+iE1hw5iWjY/AAH1H
	PY6SkerJgxeddMtOwnkXl7KDrWS6kaaAHijGJSK+zu+AKx4d3BA/Sjnw4AzYzEL/idFWHK
	16iZGkB3AnZQB3XUFJ0o/x0CzIYXE9ej5A1E36KZAB9PIDhshi+n2eEVxJH+4kjhGsdqH+
	nQsFIeBLkmAQY2vw+kTDanBWzIzBSSRkxZx8wWlmEQuV71L6nWnsFOA1UKOk2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790596575;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=63xmeQAXGTfHrOkw/gaQhb2LBW8NGJFdJTpGtAFbesk=;
	b=HbZFh1ongXj9K+u5mPvRPlXINrnCII6M/pKmv3rFO3GNt1B0xJQtmOSf2FUN2fK6Qplppr
	Ven0WQ8nRjMkIFvAh+w1ABhO4Sv/RZasra870yyCUltNi81n63vBXZiFFAyQav1Np6feEO
	3L1AHkJ6Qabr4qmkGiBDCtTr3RZVuiFU4Rrj89NZCIM/pFB+ve421p/fP6l8qkBCR6cry2
	h0w7FhCGO53mH2NqQU3XW+YPWImUg3nQ+awuQG/EqzpcKUsNuBLaYZpzG77XpUSx5M8Drr
	zO9uNWbyoSC175rJFCex8+0q5k63N1e3H6bB1wzUMqz/IRCUNI9Gy6qOD6oRZw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790596575; a=rsa-sha256;
	cv=none;
	b=M94l5ltNRTXPMPe/VogLBVUKiaBhYW8NyPpuO26K4/VRLCLZh9SsQ1/F7aarbPfseTU+zG
	owTvWnA3fFvtp6QH9DeYgSqqIBnf17Af+S4e3UwESqDu8n/GHN10o6PGj1irp/IbLrniyb
	/UwzB5PlrnOV8Raq1dvJtX0n3rVYcR+Kksc44dALq+jRMNFYwHcnMBiRsGT6xdlayI5MWd
	8Zl6A7JhuB7yXR3ra4GtoCrT5yHIEvU8Uyjve3z8S+qo6H+8yG9ulmeX8PR7wnYs2dDw2Y
	5yGAhM3GdotxVXUBUpFNM9lHnpJ2Lj9e/ZORCRLg+g+9ItNrO6OUW/kSRqvLVg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=m.tretter@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1xB9xv-003Db0-2t;
	Mon, 28 Sep 2026 13:56:15 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Mon, 28 Sep 2026 13:56:15 +0200
Subject: [PATCH] mci: cadence: adjust name of reset line to dt binding
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260928-mci-cadence-sdhci-v1-1-e18fdf9070c0@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAN5VumoC/x3MQQqAIBBA0avErBPUhWVXiRbqTDmLLBQiEO+et
 HyL/ysUykwFlqFCpocLX6lDjQOE6NJBgrEbtNRGWj2LM7AIDikFEgVjFyp0aKQ3k/XQuzvTzu/
 /XLfWPsMT4NxjAAAA
X-Change-ID: 20260928-mci-cadence-sdhci-d1dad60b679b
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Steffen Trumtrar <s.trumtrar@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260928_045619_466492_CEBDB0BA 
X-CRM114-Status: GOOD (  11.44  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  The driver has been implemented with a preliminary dt-binding.
    The lastest version of the binding patches [0] use the name "combophy" for
    the softphy-reset line. There are no upstream device trees in barebox that
    use the driver with the preliminary binding. 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
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
	RCPT_COUNT_THREE(0.00)[4];
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
X-Rspamd-Queue-Id: C9AA620026F
X-Stat-Signature: o8rdo5dbinqz8km3gcxdn1s1r6ym71dc

The driver has been implemented with a preliminary dt-binding. The
lastest version of the binding patches [0] use the name "combophy" for
the softphy-reset line.

There are no upstream device trees in barebox that use the driver with
the preliminary binding.

Change the driver without compatibility to the preliminary binding to be
compatible with the Agilex 5 device trees that are eventually added by a
device tree sync with the Linux kernel.

[0] https://lore.kernel.org/all/20260901184828.15653-2-tanmay.kathpalia@altera.com/

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/mci/cadence-sdhci.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/mci/cadence-sdhci.c b/drivers/mci/cadence-sdhci.c
index b76c04f5e087..2a4fd5273fef 100644
--- a/drivers/mci/cadence-sdhci.c
+++ b/drivers/mci/cadence-sdhci.c
@@ -424,9 +424,9 @@ static int sdhci_cdns_probe(struct device *dev)
 		return PTR_ERR(priv->rst);
 	}
 
-	priv->softphy_rst = reset_control_get(dev, "softphy-reset");
+	priv->softphy_rst = reset_control_get(dev, "combophy");
 	if (IS_ERR(priv->softphy_rst)) {
-		dev_err(dev, "Invalid reset line 'softphy-reset'.\n");
+		dev_err(dev, "Invalid reset line 'combophy'.\n");
 		return PTR_ERR(priv->softphy_rst);
 	}
 

---
base-commit: 75819f9e196e2da048e96c8589898fdc38ef8e7a
change-id: 20260928-mci-cadence-sdhci-d1dad60b679b

Best regards,
-- 
Michael Tretter <m.tretter@pengutronix.de>



