Delivery-date: Wed, 28 Oct 2026 10:26:03 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzv1-004H0r-0L
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:26:03 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F3B20202285
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:26:02 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="QV3/+55n";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RoAAgINb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179563; a=rsa-sha256;
	cv=pass;
	b=CXPM/yHg8hVEv1SM/Fyi/rXM7QTekQVuwcHsBUJf4ETb7W2vTE0W+CPBCCcLYVqJJvImBL
	R3dYyNqVpLpoqvOqSqClnA3nNP5fSar7mbIECbT+fYiGMnpFq0V89Qo4+xDpjgHJs9H7YY
	QSSXHosm2HWJvzG8Lz8sPFs7K80vMcLlvoLGIw3GGPUEg+lab+Iw5ws8FC7PPIBa7mQr4p
	AKWGOuEpVOG+eSQpj3+2hXj8xrwz9NxFG08dMAQWYI2kJqq0xEAaj+meCrwl0rHiYfzM/X
	wCTrKv8egdM9vEXk+cfIi6Bi21SzIdLe7vpG5YzVF4VxWkZQEBZe9G7da3ar5w==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="QV3/+55n";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=RoAAgINb;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179563;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=9QyyHamrhH/7/WIqdISXb++EWx4r6EOzfLfrtyWNRRo=;
	b=Sxn/9nFICQqoCq8YqTR7s7BiPWD7/1dcSbc5D8tQdlSNOpGh6DyKLl6ybfjmoxTQWWw10j
	9qbxo7qUpvJUUdHbmVDrgkIAUfjnMgn/trtOKrd1fkBC9VTy9rzdc2YFw7pHbs5/+RExIT
	g3lidUtbBGooQrqUougsCl8LGMkg6zN8w756IUb5+mNgVyoFzMBkzm2IuWvPzxHLgo57oI
	Re2RYcX1iOJdzw3EmDWTXwSIEZeJx2Oa0ldzVxaJtHbUWhYWfBl9+/d6rSw3k07t6JeC1d
	N7fPAbwBdht5cGa8Qrp2qLnD6Yfspch/dRob8rfb8LbAbBLFyiqnMJIbJliBug==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=9QyyHamrhH/7/WIqdISXb++EWx4r6EOzfLfrtyWNRRo=; b=QV3/+55nbRdx0g
	Y9qp4WMPkfgDdCDPA1LKuTgFgxfsq4m3BxrAB5EW8NkrnB5ZvrbJG5MhR2kCU5xbWinXUfbwdSmWe
	nUHdzXsYol8EsJKUmwhQkO/6Llbgn28Gjq35a5S1VaEwRnfW7obqWilC1EiYrJLp0626luXzjJaKM
	i9agTTJ1WZX+dPkLUnINmoX/+VFKbejQuOiddKOoDaeGrDKYG8tto8XWMZAzUUf5nOXKSlv4ndxCn
	XTBwCFf1124ehmWHMfd7glBIflzopno4WnuVQwWPONzagRxCx6l4zY/7KyPb+xaR6L8+gdSLLrdFm
	6l31aFSBIo9awVtKk94g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzty-00000006eNi-3aAj;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztt-00000006eFa-2i3t
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:57 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id A4A89202930;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9QyyHamrhH/7/WIqdISXb++EWx4r6EOzfLfrtyWNRRo=;
	b=RoAAgINbDs98Onnp7/KLZl2vvXodyUYpKFQU1/W+DMjytOA5E7GsqR0zveEaZAEKUTrbMH
	VKpRLcvOoyZtFnS64vEP1GbfQ2qvv0Nb+8FJdMg74tEZciH79g6I0U2GIfIGFo49QAZxir
	gMt+8LcndLtEILEnvmBBrj2fArwaLfC1+EGWb9G5K7Zxyx11BP+cGthZr0M2/zU7TP3t0F
	QNLi6cohe5E7hQ+STxI14SPI30nw4rVEe3A11Mg5WhYEqq+DMaF1EfOC2wunTQCqsghbtt
	zjnl3SsuW/u18PKhbBgvdE/x+7LBNE2zlSUCuZzIHidqlbSv5UBHWXR408Uapg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=ddj6hBjV9hXIO6xprbvvdSq6GHGkMTXs1JDnVHVBgqQMg4ffTABZ1iBeuJ/qWmRnFapw96
	3bTyMzkk0ihm61JkWBsEHHzAF9y+3Uy1pXlrd4y3bAROyMZn61vf7WU7b1Qu1nsyhpghtb
	XmhY1UynRqzwIxZOzxpIh/zgAPhLKNp/WKyQNGHcFh0oTxkF72Xq7LW2Eilckq43WXUthM
	6FdoYhfWE6Az2/V9bOrKv3VdxZCw2yqTcZRBd1oStydGuqjM2n5Uuyn62Y2r7V5P2n/ac+
	NXuWIqriIMlgvDoksaY3FWfjxYIKGSeR29gMmEJWFypz8oiFX3fq1m4oNobYZQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=9QyyHamrhH/7/WIqdISXb++EWx4r6EOzfLfrtyWNRRo=;
	b=BP47DzWTmPmeN5YTfJZOCKQXjomHecOODPcOXHxggIvLq5gjOdpHYOJb7iB/GItG+EaBqj
	GsTACQ/zRrgFPIN5WeUsvdvZS1/aJYDKKY9VfJXlOnH5IXw11emQ/AGEkymaohHRFfgdD1
	b2u+bjt1JfoU098MFNLnLb/l/vrdfSRWATpfRykSn1rmTbR0dFUV/Z8LdFyduSz5d5en6k
	eavVViGBx7SzasdqGwBsjCvF9l813GuAnFcqjVGWYnoh5c5k5WsGoT/9mQog2gd726DATi
	BUzpVrYoeewUVEB5xdWAgxm3t7zUXA++rtY+cKbhxOhNHOwAwWsGEKUyFunxEQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 8A8847420DE;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 06/19] test: self: talloc: add destructor tests
Date: Wed, 28 Oct 2026 10:14:40 +0100
Message-ID: <20261028092442.3300753-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022453_862901_949782E5 
X-CRM114-Status: GOOD (  11.79  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> Cover ordering relative
    to children and siblings, realloc and frees from within destructors. Assisted-by:
    Claude:fable-5.1 Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org> --- test/self/talloc.c
    | 124 +++++++++++++++++++++++++++++++++++++++++++++ 1 file changed, 124 insertions(+)
    
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Queue-Id: F3B20202285
X-Spamd-Result: default: False [-59.11 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2607:7c80:54:3::133:from,2a0a:edc0:0:1101:1d::54:received];
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
X-Stat-Signature: qaxwfk9ntnedeffttufoedp934bk7nfn

From: Ahmad Fatoum <a.fatoum@barebox.org>

Cover ordering relative to children and siblings, realloc and frees
from within destructors.

Assisted-by: Claude:fable-5.1
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 test/self/talloc.c | 124 +++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 124 insertions(+)

diff --git a/test/self/talloc.c b/test/self/talloc.c
index a7bbf90b59fb..85fc74336f43 100644
--- a/test/self/talloc.c
+++ b/test/self/talloc.c
@@ -142,11 +142,135 @@ static void talloc_corner_cases(void)
 	talloc_free(root);
 }
 
+static char destructor_log[16];
+static unsigned destructor_log_len;
+
+static void reset_destructor_log(void)
+{
+	memset(destructor_log, 0, sizeof(destructor_log));
+	destructor_log_len = 0;
+}
+
+static void log_destructor(void *data)
+{
+	if (destructor_log_len < sizeof(destructor_log) - 1)
+		destructor_log[destructor_log_len++] = *(char *)data;
+}
+
+static void self_free_destructor(void *data)
+{
+	log_destructor(data);
+	/* Must do nothing, we are being freed already */
+	talloc_free(data);
+}
+
+static void *other_to_free;
+
+static void other_free_destructor(void *data)
+{
+	log_destructor(data);
+	talloc_free(other_to_free);
+}
+
+/* Chunk holding @c, with a destructor that is passed the chunk */
+static void *talloc_char(const void *parent, char c, void (*fn)(void *))
+{
+	char *mem = talloc_size(parent, 1);
+
+	if (!selftest_check(mem))
+		return NULL;
+
+	*mem = c;
+	selftest_check(talloc_add_destructor(mem, fn, mem) == 0);
+
+	return mem;
+}
+
+static void talloc_destructor_tests(void)
+{
+	void *root, *a, *b, *c, *d, *x, *tmp;
+
+	selftest_check(talloc_add_destructor(NULL, log_destructor, "") == -EINVAL);
+
+	root = talloc_new(NULL);
+
+	/* Children are freed before their parent's destructors run */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', log_destructor);
+	b = talloc_char(a, 'b', log_destructor);
+	c = talloc_char(a, 'c', log_destructor);
+	d = talloc_char(c, 'd', log_destructor);
+	if (!a || !b || !c || !d)
+		return;
+
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "dcba"));
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	/* Destructors run in reverse order, interleaved with frees */
+	reset_destructor_log();
+	a = talloc_new(root);
+	selftest_check(talloc_add_destructor(a, log_destructor, "1") == 0);
+	b = talloc_char(a, 'b', log_destructor);
+	selftest_check(talloc_add_destructor(a, log_destructor, "2") == 0);
+	selftest_check(talloc_total_blocks(a) == 2);
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "2b1"));
+
+	/* Destructors survive realloc */
+	reset_destructor_log();
+	a = talloc_size(root, 1);
+	selftest_check(talloc_add_destructor(a, log_destructor, "a") == 0);
+	tmp = talloc_realloc_size(root, a, SZ_64K);
+	if (selftest_check(tmp))
+		a = tmp;
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "a"));
+
+	/* Freeing a chunk from its own destructor does nothing */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', self_free_destructor);
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "a"));
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	/* Same for an ancestor that is being freed */
+	reset_destructor_log();
+	x = talloc_char(root, 'x', log_destructor);
+	a = talloc_char(x, 'a', other_free_destructor);
+	other_to_free = x;
+	talloc_free(x);
+	selftest_check(!strcmp(destructor_log, "ax"));
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	/* Ancestors of the freed chunk can be freed */
+	reset_destructor_log();
+	x = talloc_char(root, 'x', log_destructor);
+	a = talloc_char(x, 'a', log_destructor);
+	b = talloc_char(a, 'b', other_free_destructor);
+	other_to_free = x;
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "bxa"));
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	/* So can siblings that are still to be freed */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', log_destructor);
+	other_to_free = talloc_char(a, 'b', log_destructor);
+	c = talloc_char(a, 'c', other_free_destructor);
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "cba"));
+	selftest_check(talloc_total_blocks(root) == 1);
+
+	talloc_free(root);
+}
+
 static void test_talloc(void)
 {
 	talloc_basic_tests();
 	talloc_hierarchy_tests();
 	talloc_stress_tests();
 	talloc_corner_cases();
+	talloc_destructor_tests();
 }
 bselftest(core, test_talloc);
-- 
2.47.3



