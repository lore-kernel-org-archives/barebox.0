Delivery-date: Wed, 28 Oct 2026 10:29:49 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzye-004H6Z-2x
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:49 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A5835202925
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:48 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jLj7SF8i;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZmU0eJ09;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179789; a=rsa-sha256;
	cv=pass;
	b=MTkszAFbNUZjMIIFTW4F8byIfW0A4uCYfCUHN7UHQc7DbQtZn2uwBZjv6zXTsqUVbEgTAD
	zHGsTmk/xTZpNlB6DWSJdRArD3YKtMShYxo3HtbBtxRvOcSaXL78DRbduZwfsYxV+98weL
	DSg1QEM6AUNuzEZ5pTZH4OmAU+BVvLk5whHaCUkKJIS5Ug7C1rVzqpys9ELS9Q6Co38d9S
	W3NeAV/J8RwQgru7vbl+X/1wwGzZhI4Vvy2OKz4uPDNFa9qa5nLy0LTSPG1cA2mjlrx4EN
	SejE+5Xjk9b1k9Wc/+a8t6FvI/b4MvjjJjO0M0c+ztZLOdaqOnZMfAQ32Yq9+Q==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=jLj7SF8i;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZmU0eJ09;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179789;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=JkdqFq4+XiYD+CHSHJmi/rTI1Fr3m4UKbL2+V1cu0dA=;
	b=F0xWi8td3QonWfT5HPCXX9rk6jIxMU5xc4LiKSLU2Xe0pfx6k1PEW6FGOFWorvRceIE07c
	kIPlRF+HcfI2p3VIH1IVFEO5hfcfr9PVT9j34g7EsS/h9sZ+hE0GTS9s0GNhpLiJEJ9ydZ
	+M/yTVvc6SfphM6Vd/U73gc8OQnM2hUrPEb7d5lxw2E5BCH8fgs5m5ty7bVnCMcE5pwfrI
	s7IHQj9a8FGeztOOX4TR3HZQyOJfPmzn4eZ4uahLvHy89EbM2TKLs0qpK3z7IS/2JZtPaR
	CWF4zDUbQw7HY5/mk9GsIA01tkocPCAcmcGfI++wXpV8xRmxh+F7GW7VmJDD+g==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=JkdqFq4+XiYD+CHSHJmi/rTI1Fr3m4UKbL2+V1cu0dA=; b=jLj7SF8iPV5PhO
	E2OhKZw1AnA5M5D5twnYak2izOUf/XVh9J7Muzdkg0agd8VPvX7shhpJPnx96N4kT6ViISiyvb3FU
	15CsFaxVM7mSnN+IUv00tfuixnSqrYlfK/w4lu7LwdeEYWxgAwlwF2lqeSimlKovZyCdLDOughyiE
	ngn8SnzcYqDSZ4xSjOzH2HhnEsAoeG0sYHJzwPl+2UDivji8llmOyGoHjgwm2Qj7xN9dS5F7YTi4I
	NqhX44nTOpCbuPP/PTVktPeBy9N8ndm2vg/039im3xd+R7R2ZXqra735deI9bpog7dZgOgtWw5el1
	SkMhBxEVaVvnlp16/MGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLzty-00000006eMR-1G2N;
	Wed, 28 Oct 2026 09:24:58 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztt-00000006eFc-2Xod
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:54 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B0F5120293A;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JkdqFq4+XiYD+CHSHJmi/rTI1Fr3m4UKbL2+V1cu0dA=;
	b=ZmU0eJ09TSRJ/ZE/SUqRVlGVPFk7WhnbJRWDXXxcQ9APos7/yDBqTfAYW3CK5GZmvilSTT
	96zIBKOJGpwAo2zcos3LzHNRuibYmU67nnCCKrs+yoy+i6JpQmbOeaM3C+78V7yNbpX/fg
	FaRtr/zbE7UrV0jGoMnUZuEUBlHHSNsKDXeTVxl5nVrINtIEyQuZN3klIDqHOpBxnjI/+I
	F8IXQpD65OXqPqodYFRMZ/M9TdkEAnCkgoKW9wNqKUmtchGZkrEuzBNf4doQBHpxNfLw22
	GMQEr5TzTOuB7m2sXEPHgip3oBEu89dAEq9oCRXaOwv167m7TgaURX9CBRh0BA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=U9Zs98cVFHr99xEJIZCsiPBSoucaEaOqYqYbT1eQXEkWZmmpkBaMWPArY6zHP0O/7TVR2p
	qqBhB0LKzDLGO/xJyXlmSDCfLZ/WfMv/FTFUCjEdqEf283TRazfx8jdI+OEvnd2tTvVWGx
	tsvFVN9TV2xf/m9Z81w/CiLu8znfBTRNsxLOwVBn7l1jnM3QsNDMXhn/N0NFJLsrFL1hIT
	XtE7sJSkN2G1mOeYPdVxe4wlPxjW4EBFLJ46epM5WjWATjTRCZgTFPlma4xkwFJ9gPGT4Z
	2DPoZFhKYmZcBy97qJEw68lZNkXJgtExo83DTXYdBjBjTJib3w3pNOYYaUNQrQ==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=JkdqFq4+XiYD+CHSHJmi/rTI1Fr3m4UKbL2+V1cu0dA=;
	b=Jvjtc0zEIMIYlggwCVfXXyp2e7422tdpoG/McS7+jXJ510suvIM55rjvgWAD7tg0rddX2+
	c1VLeFa5ycxMvElQ3YsYhVBe4+/HJ3CSOsLh0JPbtFeFbHk4Eb3E8czRFBWlnH5Sc59gMY
	piNzsDlqi6xHA5OeDmZ4+G2nscKZR2TXwaIcHCVIkdWtIoPuWMSYQIiUJIGg6gyhxRf74k
	89yi88TO23Mktah//iMQlTXe3x89w/uWQIkoq06liXjnikkGEp70TpLxuCI0lJlBWDnS84
	fGdrxiJYdnFjDPBxL/BphQXi2L1zQjKTNr7PtJX9LZEnMgRl9wSSoReZClmXcg==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 962FE742F56;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 07/19] talloc: add talloc_run_destructors()
Date: Wed, 28 Oct 2026 10:14:41 +0100
Message-ID: <20261028092442.3300753-8-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022453_803874_F8E9E4EB 
X-CRM114-Status: GOOD (  16.32  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> On shutdown, we
   want to run the devm_ actions, but not free managed memory one allocation
   at a time, as the kernel reclaims it anyway. Let's add talloc_run_destructors(),
    which runs and drops destructors in talloc_free() order, but keeps all chunks.
    It only takes chunks without parent, which is all devres needs, as a destructor
    could [...] 
 
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
X-Rspamd-Queue-Id: A5835202925
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
X-Stat-Signature: heatkeaz1u88io9aaigcs5rmtcgshxj3

From: Ahmad Fatoum <a.fatoum@barebox.org>

On shutdown, we want to run the devm_ actions, but not free managed
memory one allocation at a time, as the kernel reclaims it anyway.

Let's add talloc_run_destructors(), which runs and drops destructors in
talloc_free() order, but keeps all chunks. It only takes chunks without
parent, which is all devres needs, as a destructor could otherwise free
the chunk along with its parent while it's being walked.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 include/talloc.h   |  1 +
 lib/talloc.c       | 52 +++++++++++++++++++++++++++++
 test/self/talloc.c | 83 ++++++++++++++++++++++++++++++++++++++++++++++
 3 files changed, 136 insertions(+)

diff --git a/include/talloc.h b/include/talloc.h
index 806921898b6c..a1a65267b2e3 100644
--- a/include/talloc.h
+++ b/include/talloc.h
@@ -31,6 +31,7 @@ void *talloc_realloc_size(const void *parent, void *mem, size_t size);
 void talloc_free(void *mem);
 
 int talloc_add_destructor(const void *parent, void (*fn)(void *), void *data);
+void talloc_run_destructors(void *mem);
 
 char *talloc_strdup(const void *parent, const char *str);
 const char *talloc_strdup_const(const void *parent, const char *str);
diff --git a/lib/talloc.c b/lib/talloc.c
index 97787b2d6503..f5c414e82ae7 100644
--- a/lib/talloc.c
+++ b/lib/talloc.c
@@ -320,6 +320,58 @@ int talloc_add_destructor(const void *parent, void (*fn)(void *), void *data)
 }
 EXPORT_SYMBOL(talloc_add_destructor);
 
+/*
+ * Like __talloc_free(), but children are parked in @kept instead of being
+ * freed. @hdr and @kept are marked, so destructors can't free them.
+ */
+static void talloc_run_child_destructors(struct talloc *hdr)
+{
+	struct talloc kept = {};
+
+	kept.next = &kept;
+	hdr->next = hdr;
+
+	while (hdr->child) {
+		struct talloc *child = hdr->child;
+
+		if (is_destructor(child)) {
+			__talloc_free(child);
+			continue;
+		}
+
+		mem_set_parent(child, NULL);
+		talloc_run_child_destructors(child);
+		mem_set_parent(child, &kept);
+	}
+
+	while (kept.child)
+		mem_set_parent(kept.child, hdr);
+}
+
+/**
+ * talloc_run_destructors() - Run destructors without freeing any memory
+ *
+ * @mem: pointer to previously talloc'ed memory chunk without parent.
+ *
+ * Runs the destructors of @mem and its descendants in the order
+ * talloc_free() would and drops them, but keeps all chunks.
+ */
+void talloc_run_destructors(void *mem)
+{
+	struct talloc *hdr = mem2hdr(mem);
+
+	if (ZERO_OR_NULL_PTR(mem) || is_freeing(hdr))
+		return;
+
+	/* A destructor could free the parent and @mem along with it */
+	if (WARN_ON(!is_root(hdr)))
+		return;
+
+	talloc_run_child_destructors(hdr);
+	hdr->next = NULL;
+}
+EXPORT_SYMBOL(talloc_run_destructors);
+
 /**
  * talloc_free_const() - call talloc_free, unless read/only memory
  *
diff --git a/test/self/talloc.c b/test/self/talloc.c
index 85fc74336f43..12aef4c879ee 100644
--- a/test/self/talloc.c
+++ b/test/self/talloc.c
@@ -172,6 +172,13 @@ static void other_free_destructor(void *data)
 	talloc_free(other_to_free);
 }
 
+static void other_parent_free_destructor(void *data)
+{
+	log_destructor(data);
+	/* Must do nothing, other_to_free is parked while we run */
+	talloc_free(talloc_parent(other_to_free));
+}
+
 /* Chunk holding @c, with a destructor that is passed the chunk */
 static void *talloc_char(const void *parent, char c, void (*fn)(void *))
 {
@@ -265,6 +272,81 @@ static void talloc_destructor_tests(void)
 	talloc_free(root);
 }
 
+static void talloc_run_destructors_tests(void)
+{
+	void *root, *a, *b, *c, *d, *x;
+
+	root = talloc_new(NULL);
+
+	/* Same order as talloc_free(), but everything stays */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', log_destructor);
+	b = talloc_char(a, 'b', log_destructor);
+	selftest_check(talloc_add_destructor(a, log_destructor, "1") == 0);
+	c = talloc_char(a, 'c', log_destructor);
+	d = talloc_char(c, 'd', log_destructor);
+	if (!a || !b || !c || !d)
+		return;
+
+	talloc_run_destructors(root);
+	selftest_check(!strcmp(destructor_log, "dc1ba"));
+	selftest_check(talloc_parent(a) == root);
+	selftest_check(talloc_parent(b) == a && talloc_parent(c) == a);
+	selftest_check(talloc_parent(d) == c && *(char *)d == 'd');
+	selftest_check(talloc_total_blocks(a) == 3);
+
+	/* Destructors that ran are gone, new ones run */
+	selftest_check(talloc_add_destructor(c, log_destructor, "2") == 0);
+	talloc_run_destructors(root);
+	talloc_free(a);
+	selftest_check(!strcmp(destructor_log, "dc1ba2"));
+
+	/* Chunks being walked can't be freed from destructors */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', log_destructor);
+	b = talloc_char(a, 'b', self_free_destructor);
+	c = talloc_char(b, 'c', other_free_destructor);
+	other_to_free = a;
+	talloc_run_destructors(root);
+	selftest_check(!strcmp(destructor_log, "cba"));
+	selftest_check(talloc_parent(c) == b && talloc_parent(b) == a);
+	selftest_check(talloc_parent(a) == root);
+	talloc_free(a);
+
+	/* Nor the parent of a chunk that was walked already */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', log_destructor);
+	c = talloc_char(a, 'c', other_parent_free_destructor);
+	other_to_free = talloc_char(a, 'b', log_destructor);
+	talloc_run_destructors(root);
+	selftest_check(!strcmp(destructor_log, "bca"));
+	selftest_check(talloc_parent(other_to_free) == a && talloc_parent(c) == a);
+	talloc_free(a);
+
+	/* Other chunks can, even siblings that are still to be walked */
+	reset_destructor_log();
+	a = talloc_char(root, 'a', log_destructor);
+	other_to_free = talloc_char(a, 'b', log_destructor);
+	c = talloc_char(a, 'c', other_free_destructor);
+	talloc_run_destructors(root);
+	selftest_check(!strcmp(destructor_log, "cba"));
+	selftest_check(talloc_total_blocks(a) == 2 && *(char *)c == 'c');
+	talloc_free(a);
+
+	selftest_check(talloc_total_blocks(root) == 1);
+	talloc_free(root);
+
+	/* @mem can't be freed from its destructors and is usable after */
+	reset_destructor_log();
+	x = talloc_char(NULL, 'x', self_free_destructor);
+	talloc_run_destructors(x);
+	selftest_check(!strcmp(destructor_log, "x"));
+	selftest_check(*(char *)x == 'x' && !talloc_parent(x));
+	selftest_check(talloc_add_destructor(x, log_destructor, "X") == 0);
+	talloc_free(x);
+	selftest_check(!strcmp(destructor_log, "xX"));
+}
+
 static void test_talloc(void)
 {
 	talloc_basic_tests();
@@ -272,5 +354,6 @@ static void test_talloc(void)
 	talloc_stress_tests();
 	talloc_corner_cases();
 	talloc_destructor_tests();
+	talloc_run_destructors_tests();
 }
 bselftest(core, test_talloc);
-- 
2.47.3



