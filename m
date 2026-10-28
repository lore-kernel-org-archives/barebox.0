Delivery-date: Wed, 28 Oct 2026 10:29:44 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xLzya-004H5N-0b
	for lore@lore.pengutronix.de;
	Wed, 28 Oct 2026 10:29:44 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 1E6052021E3
	for <lore@pengutronix.de>; Wed, 28 Oct 2026 10:29:44 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AYj8Gq8l;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cB8INJSK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793179784; a=rsa-sha256;
	cv=pass;
	b=A+AUbp54zQMqdGmdlU1nPpVSHM/ZdFSG1HfW/q150+MhBg+zxxmAlgKnzCewMp8LCOpktv
	ZxxAIGzIyNay0IzJAGgmk5+8mqK45H38hSjqXQcd5F8W1fHy4Re4tduPbZuHU068ApTsrv
	fDHNsDuog2UXXG4Q0WRdqD6USL+Al3/d17EX4Z/JXaTD7P4/F74gkDdqO3SJPskbeAOk+L
	cmrSYyXCUmmELESYbTLqz9APz3fcFiaPZUmQ59jai0K+HqfIyR4fNNsPcq/MKIGYoWsvu4
	+KnBAOq2fmzTGxAX3+8yNa3oQnEffQMabzYBOt66s1g0T2U3KgyMnVl4DcXQpQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=AYj8Gq8l;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=cB8INJSK;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179784;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=O/O0mbW2B9uzPKwNll8WIDzQsat1dWHuxaA2tZjowlM=;
	b=c6XdUcsRYFQTXoXrU6v4dDYysW6/lD98S4Gbfo+pmFB3V5vcEZlNRCAEOK3/wkpD+z3PZj
	8iG5hzbSAaZb0sdKyYQ1Nnrt/qtEWOVragVScvVuoSymKwIOFwpuTFL6SCDLFotJF8fTXw
	ZN6X+O/kgH5RlssNyyFLwtYCe8Ou+QV27DPRcWOi66W4VCFgYL01tsXHbXJzHUR2B26r9J
	s/x25UlofH7oDq3LAQ2fLhybLQRDG6Mic+BCsgKF950HUUq5cnpXMXHz1WBLOrVJm7j5Lk
	hTrESaGXuFTtO+6uS8C3J0h7Pme4Q9DbrTmOK39RVoTpUk8yudqYF88rBnS1mQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=O/O0mbW2B9uzPKwNll8WIDzQsat1dWHuxaA2tZjowlM=; b=AYj8Gq8lZzwLTk
	9vZ6Wh6qI2EPVApvUswgHBNr9wTQJoDVwjDQCpfQCe/g5LFBUByGo2kMgusgEiRadacxqb56vrR8t
	1O414IbjAuigdkdhelSPLggNaVCFIdIAV72l5nSTv6lLSW4bAqLviFPuyMoZKGEibquut/e/OJ2oI
	Ul5MTpsIVul4cfEYLpKNsflbuwcuzF3z+s39u91vKJ/OdD8LEHUlS36TKGxN9L6wNPBERvB5AObSP
	DRb6847iGWf04FqOIo79CQLjltmpvhZpr+Dy7P1LMHKvEv7NR3VgKcTjRLfVUlZxSKzX8yODKEPgN
	EdqgpXhhTyG7KCojW/Mw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztv-00000006eIo-2K17;
	Wed, 28 Oct 2026 09:24:55 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xLztp-00000006eE6-3jsu
	for barebox@lists.infradead.org;
	Wed, 28 Oct 2026 09:24:53 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.4.pengutronix.de [10.17.1.19])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 8F027202925;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O/O0mbW2B9uzPKwNll8WIDzQsat1dWHuxaA2tZjowlM=;
	b=cB8INJSKk9BGQ4eS04SRoqW05QpdY/sF2u/ejdI4mZJwRCvjbDQjXoumIsY++EsZp6JoY5
	Qll82fFLyk7qwQFQyE2wOTVGoSIyVYfa3FUZeYxF5WH45VRKyinCnojq4ObeYTwff2pJzm
	BlkDD34uhzS0AITY6BjKX3H3ilc5S0Ere2iYQ9ZPoW929mGeNphpaF3x7DOLY/yutIla9A
	2l7ENNCgvghVYIF/UMN5n1Wh+9ShAikMriM8agSSh1OjUmb+oIqiioKNi55um5ub6N2NWE
	u3Iifs/h+cHCDCg3/jnDmu9xRgLfUXzUDAEErKSDmy6b6j49TYZJ47/MKxucqA==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793179485; a=rsa-sha256;
	cv=none;
	b=Y4dYyzk8CNHhg2xvWblBt9n+EKFPB9XhaXzqcqEDziXKDRBgpx6N3wf1iW1BgZ5qYXwfvt
	Q8zog5rogOYFUL0cBe/sk4JXBM7WG+PmXQ4aj8sMXXSd6wH2/TVuYe/+H+AVNajO2jqS99
	irMUG7tOG/cwkSynq0cZcgFyu6J6f4kyvd58aZuSuDHR3iJ/Q87Eu3nqZQ/sVs3VyESTYu
	0uTv+0J4/kIsbXkf55Zn0a/TpUJpJjAR7AGt159U/sgTLxQwNt16Df8Aoi3vYb5pEYb4FE
	3XRT39x0pXqIIbFGRNCd6je1m0uawxyBh+HIWjsDH/HliAdnKZcz0f/DypW0Dw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793179485;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=O/O0mbW2B9uzPKwNll8WIDzQsat1dWHuxaA2tZjowlM=;
	b=Wq0x65S3NsCWZ5ILdNKMG7bJmoM+6qG/lkfowI4bUsUAKP9XCyAh1n0NRa1iv3zcnA5wFz
	AnCBwr1I7iOkIKnAkmXogj79OWCcfxisYuydQ8BE1cyZP1fplgMRMhMS8MP3BHl+U7hI4c
	ZlNdP7WfpMvsGnXuIrkFywEbNlQPKbtqYtt4c8J8gUR2D+S2ZWNcfNfVr35203EwHwseRl
	aj+5X49TMn4ozDcgVBtc0ZR9oP9q1yFizvO+bHWKPYKQl980lVKFJ3oBJYUxyZ8rL5/uRr
	NtOdDh7E0Tk7gslRtncJY34wXyOdlZrBeR8ZNsKIEuG21zn+PZ2GYRnuezoRXQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 74F3E74094A;
	Wed, 28 Oct 2026 10:24:45 +0100 (CET)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 04/19] talloc: free children in a loop
Date: Wed, 28 Oct 2026 10:14:38 +0100
Message-ID: <20261028092442.3300753-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
References: <20261028092442.3300753-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261028_022450_377882_CE064A70 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> __tfree() recurses
    along the sibling list too, so stack usage grows with the number of siblings
    and a chunk is only freed after all of its older siblings. Let's free the
    children in a loop instead, each one completely before the next, most recently
    added first, like Samba does. This will determine the order destructors run
    in. 
 
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
X-Rspamd-Queue-Id: 1E6052021E3
X-Spamd-Result: default: False [-58.91 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	R_MISSING_CHARSET(0.50)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
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
X-Stat-Signature: cnit8psozeafs9jtdiexiug48t7j6ceq

From: Ahmad Fatoum <a.fatoum@barebox.org>

__tfree() recurses along the sibling list too, so stack usage grows
with the number of siblings and a chunk is only freed after all of its
older siblings.

Let's free the children in a loop instead, each one completely before
the next, most recently added first, like Samba does. This will
determine the order destructors run in.

Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 lib/talloc.c | 22 +++++++---------------
 1 file changed, 7 insertions(+), 15 deletions(-)

diff --git a/lib/talloc.c b/lib/talloc.c
index 2bfbac2e9c29..6a0fe81b9762 100644
--- a/lib/talloc.c
+++ b/lib/talloc.c
@@ -229,22 +229,18 @@ void *talloc_realloc_size(const void *parent, void *mem, size_t size)
 EXPORT_SYMBOL(talloc_realloc_size);
 
 /**
- * __tfree() - Deallocate all the descendants of given parent recursively.
+ * __talloc_free() - Deallocate a memory chunk and all its descendants.
  *
  * @hdr: pointer to previously talloc'ed memory chunk.
  */
-static void __tfree(struct talloc *hdr)
+static void __talloc_free(struct talloc *hdr)
 {
-	if (ZERO_OR_NULL_PTR(hdr))
-		return;
+	/* Unlink first so cycles terminate */
+	mem_set_parent(hdr, NULL);
 
-	/* Fail if the tree hierarchy has cycles. */
+	while (hdr->child)
+		__talloc_free(hdr->child);
 
-	ASSERT(hdr->prev);
-	hdr->prev = NULL;
-
-	__tfree(hdr->child);
-	__tfree(hdr->next);
 	free(hdr);
 }
 
@@ -260,11 +256,7 @@ void talloc_free(void *mem)
 	if (ZERO_OR_NULL_PTR(mem))
 		return;
 
-	mem_set_parent(hdr, NULL);
-
-	__tfree(hdr->child);
-
-	free(hdr);
+	__talloc_free(hdr);
 }
 EXPORT_SYMBOL(talloc_free);
 
-- 
2.47.3



