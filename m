Delivery-date: Mon, 19 Oct 2026 12:07:28 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIkH9-000ZOu-1j
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 12:07:27 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 682B72009B1
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 12:07:27 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="vKkCS/at";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=O9nDHEUJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZYv0NQNP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792404447; a=rsa-sha256;
	cv=pass;
	b=Sln+Xxe7bDfh4PjwMmHWRupzGe7rMq14N0IYmixGVY7JPVnT/khNWp3fxAbL/K4IKkEmK5
	yQ4sbXXQDA7+noOyzA3tQ5ZKaoy17XD6SBwmmtkkjd7rmtnJr9OiC0TNRSRF61Kxx0XLlS
	ebxyoeCjjfhZ+NavAAr1BxCJYntIeqYffvIOfR/O5IXECfZLuIoOhaogZQId4xMfvSsneH
	idKX5GTDpoN53bARB6Nx9krausoKpYMvuGE9ZvN9MYhbFgCQxjCOfsiJP/0DNQ8CEg5Q1G
	IpP/DFZuCoR3/1hEC+VUWwjOW0e8TEWBdLTYrfTolabO4lJMOyTI1NtK+ZlihA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b="vKkCS/at";
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b=O9nDHEUJ;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=ZYv0NQNP;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404447;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Wo7c6njEzwInr5uD4w7z4rfa2kiKrycHctbiSMWCZRw=;
	b=VigEwPKuGwe0JkhldL/IFRYyVqjm/g1gu7W/43vaQkvLHs0f3ydhdiV9uGa3I+zArsHI5f
	QZbmCGAu5/l3wIf9tmF+Q8ggXjGWAGYmeGkaKXu2uBxAwEcwEZBq04yVXtq+DUZEdT+CpH
	vyxhgWocZw+4JT/e0YF6S5iyn6XZ1uK+s9+Db9cbFGF+4FGWWT6KPmq/0DnFHW3NKkvVlk
	mE/9zSAqCd2LaMBvp/u/upI0nvLVIyTho6pEl6AwMBxX/Q5F49vG7tEVh9CVn0ma3LQ1oG
	vG7HXXjBe2vwDmiJo9N4AdRNx6Yk/oKFZO1OurGwWepntK3B/DE0VNxOLhaI2Q==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Wo7c6njEzwInr5uD4w7z4rfa2kiKrycHctbiSMWCZRw=; b=vKkCS/atWrw9PRkJOn42GIXQ11
	0HJiiXym02Q78kXOCSgEeWqtd3Mer860JIf0/Z+6NwUaiYIYTTcS/BJYj4T3pflJSaGknL8dmdvLD
	as4KUb7Yq7bopAWfL8DccZ5Uk/7gyS00ThwnNdwgsBdo5IPGU/1Y8KN0LiOvRo2eYy4Ze+q7zjSKm
	QLDHHBp7KqtXyrifOD5NDsrp+qOvPGQxF0B0jcUpczBbXpAAtGwk3cUJD5891eQYrPbNH2sfTq252
	luF+8F7J82nNWs/GHFdmB+Nq1k1sdoecGHTuT4B+Q62kX0AvQJ0ZSvBUbcUy/DatW5Es6ZZ1NEAKF
	cRP29pNA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFz-000000076Wk-1d99;
	Mon, 19 Oct 2026 10:06:15 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFq-000000076RG-2F6l
	for barebox@bombadil.infradead.org;
	Mon, 19 Oct 2026 10:06:12 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=Wo7c6njEzwInr5uD4w7z4rfa2kiKrycHctbiSMWCZRw=; b=O9nDHEUJ2Og/lArb+Bcj4H9so2
	VbtQWxnxvdEpdV03nbRgpOGxutvgSEn3WERFUrNHyh4ISy2K4SujrvSszJj4qJypUcIVM/jPNoJx9
	cW8MLzzk20U+gqvoFtxfwCRHjCMx8j1XpKcoIwNB+30U2TnuzrjNdj2WytzXiXTy2nnBv0m2eQgCO
	42teFUG6K43LwNHWhGkMkc5Znd8rgpgkE14ruaeeWjfSP6NM4ldvTQj1W6oSHEJKQBmlFY+5KL7s6
	c1h69G+qRMRLg7SllbUtE6cEcGEvKdMCjs1q6nPu6FIdnUYj0QutuPF1rUo4x6t3MIViq/m11q7bQ
	YuD+1Usg==;
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xIkFj-00000003VgI-1W9n
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 10:06:05 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 4E44120235B;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wo7c6njEzwInr5uD4w7z4rfa2kiKrycHctbiSMWCZRw=;
	b=ZYv0NQNPoshLZGR8j6S7L78QDFToqQmoQqVVGoTFAC4U2yfqZRZpaGlyGFqcTdptgZ01R3
	9cFXRIB3JuWaq9WfQTpIVGD5O74lu0s9cL8EIIkmma96253InT9hHj40JE+NRh56Ba/s3P
	6xPTLI/gAlO2CRi9nnntwFzS+ybUHQDKWVqGUqFvKI005hGEDeoW+voDy1/3uXmfasYK4e
	P9ZlEX53J5GJxTqMbrzF90Cy1ih1JZvhqY2pLIh1GZ+2KznMjlvKxsQ6IZXl+jnYuH92aF
	DFqclkqyPA0hz6Sz5zYBqAblnaCYuXxUlNHgIcrpWpm65Y2JauSdONab+JOo6g==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792404356; a=rsa-sha256;
	cv=none;
	b=dQKzgHTnuClcjqfZqbjwXSdOodHJDfAHp/5w9GjZR7yFRQHPLn4VzlKgLpvBXo/n20J/3m
	JxoH4SMDSyGRsqLmE4BKA5q+oPiz9YFLjrHzd/bOF4hHhySK23Hh15Adp14Uy19dht/bbA
	e5V9EJb7b0I74jKRPfJdQxKx1SE1qfRqc8NOU6MZFddJcAcsL4bDSYLyIL6sZTL4qdAact
	w7Hhm4c+7noQVd6GfqSdWxNBshw71EXqXtPldl9pMuzURk8M9xYOVhIPNpWTMzY3Ts0YRS
	gsz4Xye/FkcRkQQa1+Mhdz0EZCHF5AFE9ve3XL6L3FsX4lmWR8YjfNjKFYvo9g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Wo7c6njEzwInr5uD4w7z4rfa2kiKrycHctbiSMWCZRw=;
	b=Edjp56FJ2i5sZa+vfbppFdReXCmPZ4ELVzrgy/Jv/RUUjZ5rtIYG/K/C56bOOPzm0LQLc0
	noCQZ63cyBiqq1p8TcJs1rVboGx5YxExDpYZ4UKW5n4fjLttsL0VG16mlfLOPFLecRWjNS
	u2WB8tQ3c6cT/VozVN0ZFn0mgWXF/xF/CwM852wCF+bp5wRI5jBDKuP1k+i3zp3GwWeimr
	IebJovFuLMIGDYfpfYLlGFWxcWbROSZUgulniajHBIJYoAtWjDIe5UN0LjZ3I14cfI55pa
	OmV+KziVOqrOah7pcA4RUGRD/3QOz9HYzYDuvo0OBKYtKd7dsv/QuGfaWNI9HA==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 219D974178B;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 19 Oct 2026 12:05:48 +0200
Subject: [PATCH v2 5/5] tests: of_overlay: add fragment application tests
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-fix-overlay-v2-5-24e9ff1c0e12@pengutronix.de>
References: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
In-Reply-To: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_110559_827769_5A0F34D6 
X-CRM114-Status: GOOD (  12.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  These tests exercise the application of the overlay fragments
    by of_overlay_apply_fragment() with the following test cases: 1. Fragment
    target is found by target-path and phandle 2. Fragment properties are merged
    into existing nodes 3. Fragment children without an __overlay__ node are
   skipped 4. Error path for a fragment w [...] 
 
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
X-Rspamd-Queue-Id: 682B72009B1
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
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
	DBL_PROHIBIT(0.00)[0.0.0.1:email,0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: oxth9n3tp7utiq78mhcpjejs9fsuwo1u

These tests exercise the application of the overlay fragments by
of_overlay_apply_fragment() with the following test cases:

1. Fragment target is found by target-path and phandle
2. Fragment properties are merged into existing nodes
3. Fragment children without an __overlay__ node are skipped
4. Error path for a fragment whose target does not exist

Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 test/self/Makefile                       |  1 +
 test/self/of_overlay.c                   | 68 ++++++++++++++++++++++++++++++++
 test/self/of_overlay.dtso                | 34 ++++++++++++++++
 test/self/of_overlay_missing_target.dtso | 24 +++++++++++
 4 files changed, 127 insertions(+)

diff --git a/test/self/Makefile b/test/self/Makefile
index f6cec81011..0fba7ac566 100644
--- a/test/self/Makefile
+++ b/test/self/Makefile
@@ -14,6 +14,7 @@ obj-$(CONFIG_SELFTEST_OF_OVERLAY) += of_overlay.o
 # Enforce generation of __symbols__ table for overlay tests
 DTC_FLAGS_of_overlay_with_symbols := -@
 obj-$(CONFIG_SELFTEST_OF_OVERLAY) += of_overlay_with_symbols.dtb.o of_overlay_with_symbols.dtbo.o
+obj-$(CONFIG_SELFTEST_OF_OVERLAY) += of_overlay.dtbo.o of_overlay_missing_target.dtbo.o
 obj-$(CONFIG_SELFTEST_ENVIRONMENT_VARIABLES) += envvar.o
 obj-$(CONFIG_SELFTEST_FS_RAMFS) += ramfs.o
 obj-$(CONFIG_SELFTEST_DIRFD) += dirfd.o
diff --git a/test/self/of_overlay.c b/test/self/of_overlay.c
index 2804c936c0..4c17cae16d 100644
--- a/test/self/of_overlay.c
+++ b/test/self/of_overlay.c
@@ -98,9 +98,77 @@ static void test_of_overlay_symbol_outside_overlay(void)
 	of_delete_node(root);
 }
 
+extern char __dtbo_of_overlay_start[], __dtbo_of_overlay_end[];
+
+static void test_of_overlay_fragments(void)
+{
+	struct device_node *root, *overlay, *node;
+	int ret;
+
+	if (!test_setup(&root, &overlay, __dtb_of_overlay_with_symbols_start,
+			__dtb_of_overlay_with_symbols_end,
+			__dtbo_of_overlay_start, __dtbo_of_overlay_end))
+		return;
+
+	ret = of_overlay_apply_tree(root, overlay);
+	assert_inteq(ret, 0);
+
+	node = of_find_node_by_path_from(root, "/target-node");
+	assert_cond(node != NULL);
+	assert_inteq(of_property_match_string(node, "new-prop", "target-path"),
+		     0);
+	assert_cond(of_get_child_by_name(node, "added-child") != NULL);
+
+	node = of_find_node_by_path_from(root, "/target-node/existing-child");
+	assert_cond(node != NULL);
+	assert_inteq(of_property_match_string(node, "old-prop", "old"), 0);
+	assert_inteq(of_property_match_string(node, "new-prop", "merged"), 0);
+
+	node = of_find_node_by_path_from(root, "/phandle-target-node");
+	assert_cond(node != NULL);
+	assert_inteq(of_property_match_string(node, "new-prop",
+					      "target-phandle"),
+		     0);
+
+	node = of_find_node_by_path_from(root, "/non-fragment-node");
+	assert_cond(node == NULL);
+
+	of_delete_node(overlay);
+	of_delete_node(root);
+}
+
+extern char __dtbo_of_overlay_missing_target_start[],
+	__dtbo_of_overlay_missing_target_end[];
+
+static void test_of_overlay_missing_target(void)
+{
+	struct device_node *root, *overlay, *node;
+	int ret;
+
+	if (!test_setup(&root, &overlay, __dtb_of_overlay_with_symbols_start,
+			__dtb_of_overlay_with_symbols_end,
+			__dtbo_of_overlay_missing_target_start,
+			__dtbo_of_overlay_missing_target_end))
+		return;
+
+	ret = of_overlay_apply_tree(root, overlay);
+	assert_inteq(ret, -ENOENT);
+
+	node = of_find_node_by_path_from(root, "/does-not-exist");
+	assert_cond(node == NULL);
+
+	node = of_find_node_by_path_from(root, "/target-node/applied-anyway");
+	assert_cond(node != NULL);
+
+	of_delete_node(overlay);
+	of_delete_node(root);
+}
+
 static void test_of_overlay(void)
 {
 	test_of_overlay_symbol_without_overlay();
 	test_of_overlay_symbol_outside_overlay();
+	test_of_overlay_fragments();
+	test_of_overlay_missing_target();
 }
 bselftest(core, test_of_overlay);
diff --git a/test/self/of_overlay.dtso b/test/self/of_overlay.dtso
new file mode 100644
index 0000000000..21dc85a8e4
--- /dev/null
+++ b/test/self/of_overlay.dtso
@@ -0,0 +1,34 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	/* not a fragment, must not be applied */
+	non-fragment-node {
+	};
+
+	fragment@0 {
+		target-path = "/target-node";
+
+		__overlay__ {
+			new-prop = "target-path";
+
+			added-child {
+				child-prop;
+			};
+
+			existing-child {
+				new-prop = "merged";
+			};
+		};
+	};
+
+	fragment@1 {
+		target = <&phandle_target>;
+
+		__overlay__ {
+			new-prop = "target-phandle";
+		};
+	};
+};
diff --git a/test/self/of_overlay_missing_target.dtso b/test/self/of_overlay_missing_target.dtso
new file mode 100644
index 0000000000..39362b0a0e
--- /dev/null
+++ b/test/self/of_overlay_missing_target.dtso
@@ -0,0 +1,24 @@
+// SPDX-License-Identifier: GPL-2.0-only
+
+/dts-v1/;
+/plugin/;
+
+/ {
+	fragment@0 {
+		target-path = "/does-not-exist";
+
+		__overlay__ {
+			never-applied {
+			};
+		};
+	};
+
+	fragment@1 {
+		target-path = "/target-node";
+
+		__overlay__ {
+			applied-anyway {
+			};
+		};
+	};
+};

-- 
2.47.3



