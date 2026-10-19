Delivery-date: Mon, 19 Oct 2026 12:07:25 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIkH6-000ZNt-39
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 12:07:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id E26EA201C31
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 12:07:24 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g03C70Pt;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=nEq0wssr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LC6n2TWz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792404445; a=rsa-sha256;
	cv=pass;
	b=GYhhClIocTGdCFW4RssL7AHOVkiceBAuGQEvr+k9Ct9imexYyccOIprrUpIfnsR76J/Bmf
	w3UnXzeBjXB2AXcYhglQlpnrzGDKbb8QJQ9COzaUkzWf2D7vdGSYwegk8HhlHlFXZWME0Z
	V7IPI3k/UVeioTQvH4z4OCX5L3kDqffxqKwNPUBomBD7EKy/awCu229Q1BVF50r+b7pzI5
	BBsuiY3Ac/hh14bsj2oav4zqcbESGlb4CFllo4zogQ6dW6ZbSKavuVGL/KQmUH7rGijlAQ
	SHbOtPAwoW14zuvsBJAKraSDdOOXVOvKXNU+ZpDG6mqULUbAOPnbUmLxEG47lQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g03C70Pt;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=nEq0wssr;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=LC6n2TWz;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404445;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=D1AYaeKDGwvhi3QLOVF/BRIWcUoZZ1xdFWAuoX9j7lk=;
	b=fDvN4bj304QJQyIPdaHxn4co1S+9XzmatSKPTMhHqEsM8KL01SqbJlB/6alZeDUMiT3ruj
	mqZvbO9lzf3/SefgY2adjpSvE5f6p6r8uoWvcTzdOqWg570wITXyIUrlTKBkcZLmkY5FkL
	qmeXRQixMm4HMd6vJ77V10WplyQXJBTZ3UC/TX84U7J/NoQUGHEYnUiai4yzYjMzliBXq+
	GmlVIdW8v+7yfbPhRDIz8WEcgM+Py2Ed7y8KAGznfM+5eodTER+B0GB+tpnoqeLNXIXcuo
	9oWCj8M5RrElmU+GlB2Dqx5GfK7hbRTgWORMVqe5oPN+5hc86wqM5sPaQgHJfg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=D1AYaeKDGwvhi3QLOVF/BRIWcUoZZ1xdFWAuoX9j7lk=; b=g03C70PtA5qFlNjTsW1FwuHi8K
	EI2dD8NjDwOSuesOjuVNGzYFYhaKXhjXs5SDcBTo9/d1u8n75tzsr7OcpzRqR/qt49xACeUSD3wsY
	Tet5nOe4C4Gip44O8ey7CoJlJxnUxSdElgGYFTBbnDP4Rk4b37IoQL4Bs6uBN4C6BlgDcUXr4b/IR
	FG5LzcJui3VN2r7kPAFXnNBvhh9rtqr6f8OnZOmgE577duYirqhI0Y1vhsTr6JiPJPjvSfT6Pr+Ux
	lkvqjanQGjAKTTpVA2/e2wp/i89mnrZEzA41wRE9o0WMGCxQFdwFY7YUiSOhRK8ku02A1TQQ4fEOd
	OnguWx6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFx-000000076UH-0WEZ;
	Mon, 19 Oct 2026 10:06:13 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFo-000000076PW-3KB1
	for barebox@bombadil.infradead.org;
	Mon, 19 Oct 2026 10:06:04 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=D1AYaeKDGwvhi3QLOVF/BRIWcUoZZ1xdFWAuoX9j7lk=; b=nEq0wssrzpkNsD/DuDktPMda6J
	QjC2pQsO3LPfMQDqAt6rymXZGtiOtXp4ymfOtdshGICIqYnhyHgCIPlAK/mkuAQG5PJg7clAavrpl
	WsU91F1mmVMTyd41kNWsDqx9Dlp9zPBtbKdqw/mQJi1XTpk+O5Z8V1GG1/Fe794KMROrW+C0YBdH7
	fXG6jtx0UvL2L4OHxXhymh+AxL7v6gljzQHPc9wzVG/BKGFeHixRDXp12KHBVuMK789qI3ndpeC1f
	g21F3bRuLsX9XvgDZ99wAaVgRAIHF4UniBM92q3x+KHa4eaZCRCAdbBh67pqedSHJWoFzT7UZEHym
	qikGylkA==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xIkFj-00000003VgH-1jhM
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 10:06:03 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4B55D202341;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D1AYaeKDGwvhi3QLOVF/BRIWcUoZZ1xdFWAuoX9j7lk=;
	b=LC6n2TWzv8g5fKBIJ+UwXQOk0pJXaC98AzlKlIaDwIo7OdLwlvolH8kjSloyIAchcznhfj
	CLL36VkXAm3VNpTGIXkuWBJ71uV9M0CbyZBUCxCno2GnWk5Mi+S3kElEyNhGiBuXnxtrb6
	ExSw4CMy9+bwSWZvThoCpqIj5fjOAeFmZ2z9WAasOlG8dxsZ6JosoeBYDWsaoFN4HRXiWU
	HiudA+X7+yXmniyF2rB/tctO6MPvsMNOVBl2rBHUelCcPL4EHbJ+A3+ukC4Jty9mGT2Lnx
	dRIoh43X0khbYqc28mI+dwifttwqUrp3y3rQkAjbBico1+aNnZIb+GGevWqbFw==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792404356; a=rsa-sha256;
	cv=none;
	b=PxscgrykFNNAnvxnq5BNa8/NPoH57uv/VL/cpvNsNRiYMs+OpH9erbzBJ+63aT38vS4WhU
	9cOLrMBYtDDo8hv6TsK3gMg8Z0fNZM+lylY5bDLwfJLolNDc8sSmp9PBy3lqWzFtd3XtSf
	mE9mWPlwWkD4EtgkXm9atsLBKoeSdB/Y63K/sy8a6o2zE9Ym+LNhUJJvbXkwqT9y7A5jLX
	1i2i4hivpXwQxwQn9GC4nDrWVKm5GJQLHxo7pQvB6dr3lsfTse+/k3JdygDAdT11xNjQbv
	Bcr16MWgrDVuP++JX916kkvfzkAEfKkoKgxKvbxZztXf5VW0OD71wCh0QISXGg==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=D1AYaeKDGwvhi3QLOVF/BRIWcUoZZ1xdFWAuoX9j7lk=;
	b=cAlAgOV9+J9yjGWiU+dRlfVGbJQ3b2B4HVdzNRKwsaP3V2OjafW2Dawrnsb8PQV98SxQNa
	FCEdLoB/sZsW4WUyH1qHXWQP+TZY9ODbjEuxkaWMuiKeiGRL2s0KaUcMxskDnVesFEDzMU
	q9O0AQnOE/tZRGgAvmP/CshTCGqGNQ9s+0xeC7B0CfhrnAEtJOB5OPgQ9FLXJDmnFA7Npl
	z3iMyZdTCbiGEpdjxqfIIskK2gOQcBpy+HoWTvogTvT6cbZ5TV7BJlGv3JXman4B6HoJW1
	7VBJCfJcF/2d4+6HkwRcvyY32PB8QJimedVB7Nwt4fx3ygweStoT0SZWpoL7OQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 215C7741783;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 19 Oct 2026 12:05:47 +0200
Subject: [PATCH v2 4/5] tests: of_overlay: add __symbols__ merging tests
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-fix-overlay-v2-4-24e9ff1c0e12@pengutronix.de>
References: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
In-Reply-To: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_110559_728980_D30B2285 
X-CRM114-Status: GOOD (  13.75  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  These tests exercise the merging of the __symbols__ table
   from a overlay into the target device tree. Signed-off-by: Stefan Kerkmann
    <s.kerkmann@pengutronix.de> --- test/self/Makefile | 3 ++ test/self/of_overlay.c
    | 90 ++++++++++++++++++++++++++++++++++ test/self/of_overlay_with_symbols.dts
    | 14 +++++ [...] 
 
 Content analysis details:   (-0.2 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
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
X-Rspamd-Queue-Id: E26EA201C31
X-Spamd-Result: default: False [-60.61 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DMARC_NA(0.00)[pengutronix.de];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	DKIM_MIXED(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email,0.0.0.2:email,0.0.0.1:email];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: hrfmyfgesfa95jbyud4nor4pmpz4ta8o

These tests exercise the merging of the __symbols__ table from a overlay
into the target device tree.

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 test/self/Makefile                     |  3 ++
 test/self/of_overlay.c                 | 90 ++++++++++++++++++++++++++++++++++
 test/self/of_overlay_with_symbols.dts  | 14 ++++++
 test/self/of_overlay_with_symbols.dtso | 43 ++++++++++++++++
 4 files changed, 150 insertions(+)

diff --git a/test/self/Makefile b/test/self/Makefile
index f912afe5a6..f6cec81011 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -11,6 +11,9 @@ CFLAGS_printf.o += -Wno-format-security -Wno-format
 obj-$(CONFIG_SELFTEST_PROGRESS_NOTIFIER) += progress-notifier.o
 obj-$(CONFIG_SELFTEST_OF_MANIPULATION) += of_manipulation.o of_manipulation.dtb.o
 obj-$(CONFIG_SELFTEST_OF_OVERLAY) += of_overlay.o
+# Enforce generation of __symbols__ table for overlay tests
+DTC_FLAGS_of_overlay_with_symbols := -@
+obj-$(CONFIG_SELFTEST_OF_OVERLAY) += of_overlay_with_symbols.dtb.o of_overlay_with_symbols.dtbo.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_DIRFD) += dirfd.o
diff --git a/test/self/of_overlay.c b/test/self/of_overlay.c
index d60898358f..2804c936c0 100644
--- a/test/self/of_overlay.c
+++ b/test/self/of_overlay.c
@@ -10,7 +10,97 @@
 
 BSELFTEST_GLOBALS();
 
+extern char __dtb_of_overlay_with_symbols_start[],
+	__dtb_of_overlay_with_symbols_end[];
+extern char __dtbo_of_overlay_with_symbols_start[],
+	__dtbo_of_overlay_with_symbols_end[];
+
+static struct device_node *unflatten(char *start, char *end)
+{
+	struct device_node *root;
+
+	root = of_unflatten_dtb(start, end - start);
+	if (IS_ERR(root)) {
+		pr_err("failed to unflatten dtb");
+		return NULL;
+	}
+
+	return root;
+}
+
+static bool test_setup(struct device_node **root, struct device_node **overlay,
+		       char *dtb_start, char *dtb_end, char *dtbo_start,
+		       char *dtbo_end)
+{
+	*root = unflatten(dtb_start, dtb_end);
+	if (!assert_cond(*root != NULL))
+		return false;
+
+	*overlay = unflatten(dtbo_start, dtbo_end);
+	if (!assert_cond(*overlay != NULL)) {
+		of_delete_node(*root);
+		return false;
+	}
+
+	return true;
+}
+
+static void test_of_overlay_symbol_without_overlay(void)
+{
+	struct device_node *root, *overlay, *symbols;
+	const char *path;
+	int ret;
+
+	if (!test_setup(&root, &overlay, __dtb_of_overlay_with_symbols_start,
+			__dtb_of_overlay_with_symbols_end,
+			__dtbo_of_overlay_with_symbols_start,
+			__dtbo_of_overlay_with_symbols_end))
+		return;
+
+	ret = of_overlay_apply_tree(root, overlay);
+	assert_inteq(ret, 0);
+
+	symbols = of_get_child_by_name(root, "__symbols__");
+	assert_cond(symbols != NULL);
+
+	assert_inteq(of_property_read_string(symbols, "added", &path), 0);
+	assert_inteq(of_property_read_string(symbols, "toplevel", &path),
+		     -EINVAL);
+	assert_inteq(of_property_read_string(symbols, "target", &path), 0);
+
+	of_delete_node(overlay);
+	of_delete_node(root);
+}
+
+static void test_of_overlay_symbol_outside_overlay(void)
+{
+	struct device_node *root, *overlay, *symbols;
+	const char *path;
+	int ret;
+
+	if (!test_setup(&root, &overlay, __dtb_of_overlay_with_symbols_start,
+			__dtb_of_overlay_with_symbols_end,
+			__dtbo_of_overlay_with_symbols_start,
+			__dtbo_of_overlay_with_symbols_end))
+		return;
+
+	ret = of_overlay_apply_tree(root, overlay);
+	assert_inteq(ret, 0);
+
+	symbols = of_get_child_by_name(root, "__symbols__");
+	assert_cond(symbols != NULL);
+
+	assert_inteq(of_property_read_string(symbols, "added", &path), 0);
+	assert_inteq(of_property_read_string(symbols, "local", &path), -EINVAL);
+	assert_inteq(of_property_read_string(symbols, "outside", &path), -EINVAL);
+
+	of_delete_node(overlay);
+	of_delete_node(root);
+}
+
 static void test_of_overlay(void)
 {
+	test_of_overlay_symbol_without_overlay();
+	test_of_overlay_symbol_outside_overlay();
 }
 bselftest(core, test_of_overlay);
diff --git a/test/self/of_overlay_with_symbols.dts b/test/self/of_overlay_with_symbols.dts
new file mode 100644
index 0000000000..ac568025ed
--- /dev/null
+++ b/test/self/of_overlay_with_symbols.dts
@@ -0,0 +1,14 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+
+/ {
+	target: target-node {
+		existing-child {
+			old-prop = "old";
+		};
+	};
+
+	phandle_target: phandle-target-node {
+	};
+};
diff --git a/test/self/of_overlay_with_symbols.dtso b/test/self/of_overlay_with_symbols.dtso
new file mode 100644
index 0000000000..9f26e31aee
--- /dev/null
+++ b/test/self/of_overlay_with_symbols.dtso
@@ -0,0 +1,43 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	/* label that ends up in no fragment at all */
+	toplevel: toplevel-node {};
+
+	fragment@0 {
+		target-path = "/target-node";
+
+		__overlay__ {
+			/* label that resolves into an __overlay__ */
+			added: added-by-fragment0 {};
+		};
+	};
+
+	fragment@1 {
+		target-path = "/target-node";
+
+		localinfo {
+			/* label below a fragment but outside its __overlay__ */
+			local: subnode {};
+		};
+
+		__overlay__ {
+			added-by-fragment1 {};
+		};
+	};
+
+	fragment@2 {
+		target-path = "/target-node";
+
+		__overlay__ {
+			added-by-fragment2 {};
+		};
+
+		__overlay__extra {
+			outside: subnode {};
+		};
+	};
+};

-- 
2.47.3



