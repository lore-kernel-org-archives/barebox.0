Delivery-date: Tue, 22 Sep 2026 12:49:45 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8y4H-0052Ad-2x
	for lore@lore.pengutronix.de;
	Tue, 22 Sep 2026 12:49:45 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 69EBE200044
	for <lore@pengutronix.de>; Tue, 22 Sep 2026 12:49:45 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f2mxFG2U;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=W58kTa6j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074185;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=PXPso9ZFBQmVGkheGBvQu7TXmJuz5vg2NfGfyFh0Fpc=;
	b=HfML+TPHedvkMBeaEjea0wlL7cSSf5exL90KK3qKW+zRUUPxRZvSuke9cepMueWAkoEZh9
	NhwlSY1UTGsfK7sYqX11mBVmXgsD5JP/CU7RXbdAvas0ollefIvXUQWIe4F7Yaj/NRaP5r
	TiDv7RocGJI8lFsJqGzaKDQ7Qzmt85wXK7e+7yw2pDAn/I9HpGjruQ2BeLNLt7vt5wqmiR
	cZhUXBM9cok1CXnegiLjGlx7qMnHo/FCEcVGyPmUwSZ7U1XRXkUwQPenKDaAlY69h9qgCC
	ylGOeMtgULFBq8mmlYVefnGviAZjxhd9iJ+anYrafShwx6iMo/sFmFS3CvO1gA==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1790074185; a=rsa-sha256;
	cv=pass;
	b=B/NeNQj7r50FwN6HmgIE7Prw7h3G5rsjaoHU1Z/s/npzZoDX3KGaCNBkhOeprwFh2dRuFD
	zCecHOhB4NCuozfzWsOQ5jZmv6EhWOa9/RUWFrCJgU9rY6War8YDeATs+Uo4qIGLDSedZA
	eoENiFzfUX1YAWbO4zskW8uZZIYdnlQIu8evq9Ba8j8F6/9vYdnygMWyPfrXplIEJcPqo3
	LjOFKX+q+xiIFQcTZwjXkQrt8noGfFaSp8TkwHBhO+VTcl5kftadoDWl2WZXzH6QcaEWyP
	ughq3PJFQE1XD2IxNtRMMrq3TCguoHfkzn470tCy2Kyv9jJCtXC/lt0mT1tMkg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=f2mxFG2U;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=W58kTa6j;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PXPso9ZFBQmVGkheGBvQu7TXmJuz5vg2NfGfyFh0Fpc=; b=f2mxFG2UNGHIsp/psGhQYH69Mc
	xPwoRPS7AxMWBPmKPidA1U8BG9qRIwc1JH/iEk+Jkim2xCU6KjLSqIhYNgKjyIvR0UTFsL3caAFFR
	jEmhG4YQjdiO7PXkbIuqMHd7B+R7mj9HUCiFjCTPwVQWDNCfy5akiWlN3us4ww9RYa/O0q77Ffr23
	G5nBEee3qciPY+RGaQYN9B1AY8AzqOrH+hisxUxECRZBi6OJohLwv9c25iTPWKGnty5l6ztsMJ4/3
	NJJ+bpXlGVoAHH7Rm+50kcyBsC0BpQkKqQtlYPUz+r+Ij7uDBBIgKjlVm/z3f6MltE5JE+pJ1fBah
	BSCh/XLQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2x-000000056GH-18lI;
	Tue, 22 Sep 2026 10:48:23 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8y2s-000000056EE-3a9o
	for barebox@lists.infradead.org;
	Tue, 22 Sep 2026 10:48:21 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id DE348201F3D;
	Tue, 22 Sep 2026 12:48:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PXPso9ZFBQmVGkheGBvQu7TXmJuz5vg2NfGfyFh0Fpc=;
	b=W58kTa6jL7bHr/NuMgvqkGcVNPSJVGYd+bMQl9YHohEtQ5LLrtx1YoPDeFIhwayTdCucJa
	+t7LIIg0jye4j3jN2ujttB2cZDtBsUWyEYTxMVbb9v3slYg55eISr2MYMO+VtzLO4ji1kR
	jpixj+1sHp+tlHElCV9QozvpPbx8qAWnbtqfsbxdEpRfyThGKpHKjpdqPn3ZTss23YFI8G
	Tys8/8t84VUFgILddcRW8SXMWlwVLj388h6N9Plo86le1r21bqfIqzX3v7JjTCfUqctmbD
	wp3iB5BaDvpPTMBkh99gF/WFcdR3IeuNXbwwJKDGS2obOaqy83yDOcFUxqX9Fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1790074096;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=PXPso9ZFBQmVGkheGBvQu7TXmJuz5vg2NfGfyFh0Fpc=;
	b=L4sllX1reXNxTGa2HH4zoSu5zh8fPW+dtcKhNEcxnrD4e5SJ2hjLV1oBJ0pfD83OWgdRVt
	nUN8s1aZY1kBdd4+yrRIN/bkyXhXnWZXgLYrMuRAgYD2UdKcr+toVE20iLQpa8wUke4L3y
	i0kbbpOn6s+9+KjNw58DGv4z0yR+0I7c3H1qRujEc6ttrtj0ObBjwhqi+eif2hHp8YSS1+
	3y/Fr8uTQ8Lnhlu+Ra0tq04GITi3yNgi+IOxD2v7qWDeYlD8m75SQFLuLSUc/31jh4C+54
	bMwtwubsPgpptY1gAqzEsjsnUjq9vx+HpbHO2pv/wCPRZ9Uzenv0EbMnG2e8rQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1790074096; a=rsa-sha256;
	cv=none;
	b=VG1U9srJhVv/T5rfoIDH3egiRlm5eNTTzqCHYODiV1th3iuRUkjY5+hdThQWFEC7evO+3A
	Wjh2ye+SglBg9+2dc7odI3pTPcYDt6Wxbs7yYv10fXJCLAe128uj96na5eZGJT7/K/Fsip
	X7C5dfKB0eGW/AuJkT3Ngm9cUvyE7HRvFwlVmUb16utj6nxztY1aBlWbbZH+EoQywyb6GQ
	iYZA01tkq1yk3JnrfH8Hat5htcHFaTOLefCF+WuVXFtPovaYnkP5pI6cCtBiAtRqGejb5N
	zKXgrvgXQlOWodaKh87W1HnYW3uIMPkszTvfvkzo3Dpy0UxD5PZde5OVDMxB+Q==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-drehscheibe.grey.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2q-002DSe-2e;
	Tue, 22 Sep 2026 12:48:16 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8y2r-00000001M6y-108D;
	Tue, 22 Sep 2026 12:48:16 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: mfe@pengutronix.de,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH 2/5] firmware-zynqmp: don't ignore the kstrtouint() result in parse_reg()
Date: Tue, 22 Sep 2026 12:47:53 +0200
Message-ID: <20260922104813.317584-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260922104813.317584-1-a.fatoum@pengutronix.de>
References: <20260922104813.317584-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260922_034819_346727_5CEBA8ED 
X-CRM114-Status: GOOD (  10.66  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  parse_reg() decodes the index out of the ggs%u/pggs%u parameter
    names the driver registers itself, so the conversion can't really fail. We
    define __must_check as empty currently, so the __must_check on kstrtouint()
    doesn't catch this, but it will once we change the definition, so prepare
    for that. 
 
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
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received,2a0a:edc0:0:c01:1d::a2:received];
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
X-Rspamd-Queue-Id: 69EBE200044
X-Stat-Signature: hxfhmzf6tqg5gpg1qnejcis4zii4fp6d

parse_reg() decodes the index out of the ggs%u/pggs%u parameter names the
driver registers itself, so the conversion can't really fail.

We define __must_check as empty currently, so the __must_check on
kstrtouint() doesn't catch this, but it will once we change the
definition, so prepare for that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/mach-zynqmp/firmware-zynqmp.c | 6 +++++-
 1 file changed, 5 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-zynqmp/firmware-zynqmp.c b/arch/arm/mach-zynqmp/firmware-zynqmp.c
index 039a46e76759..d21e2c1137f1 100644
--- a/arch/arm/mach-zynqmp/firmware-zynqmp.c
+++ b/arch/arm/mach-zynqmp/firmware-zynqmp.c
@@ -712,7 +712,11 @@ EXPORT_SYMBOL_GPL(zynqmp_pm_get_eemi_ops);
 static bool parse_reg(const char *reg, unsigned *idx)
 {
 	bool pggs = reg[0] == 'p';
-	kstrtouint(reg + pggs + sizeof("ggs") - 1, 10, idx);
+
+	/* the names are registered by this driver as ggs%u and pggs%u */
+	if (WARN_ON(kstrtouint(reg + pggs + sizeof("ggs") - 1, 10, idx)))
+		*idx = 0;
+
 	return pggs;
 }
 
-- 
2.47.3



