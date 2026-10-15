Delivery-date: Thu, 15 Oct 2026 16:10:08 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xHM9o-00Dx2L-1o
	for lore@lore.pengutronix.de;
	Thu, 15 Oct 2026 16:10:08 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id F123A201BC6
	for <lore@pengutronix.de>; Thu, 15 Oct 2026 16:10:03 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1wCcM1hv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K6+H1Rx4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792073404; a=rsa-sha256;
	cv=pass;
	b=gCspaTtT/Eb3Cyuwd1SyC+B0UVbuoFeJbeo8G1KJ0+SzyKEqEPLmSXwgTJJkmkzBmZ2aJu
	WUfFphbDcDk1vl+VOUwj6bcAfBw61f+wl0KBZJ5sogxzMv1zdpjBJjL4tqwNhfCMObnR5C
	0gVLMYJEDc1qT/X5djausdp9wfgtUDcBeXA/9m+iuNDdwc1JjSn3pyrfJSEbjonCn0vVwd
	BHya61mFAdcgIHC1K8BYTtw74KxT/6CDUMnPr5F3/EnoYkbG6RroSd5UVkkmroxfPiDDBV
	FZhLmxcZzFc58FYW2LryyNy9qlDk/8W0i4vOzqF3iXJfM8t3fxefK3/KlBJ/WQ==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=1wCcM1hv;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=K6+H1Rx4;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	arc=pass ("pengutronix.de:s=20260414:i=1");
	dmarc=none
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073404;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=UHIo3SmkE4VV1P0KL32EKy7yhpslxj/iA2+yGDbW03w=;
	b=esJ4zM2ci0yqbY9bR3+wClXYO1gNsTi1fxi9VFLHYPcgOgr9fuq1gL/X7+w5GzJlaWYQPF
	zYFB94OZYOi3GWlzC0g9rqCmw91iI4Ri6UXz1a5/Bo1QB56mFshqFaXWVUt+bJUU5al1+X
	y1/4iqiBXqxgg1afk1yJlOItPkykMeiffLLPVHoeqzMp9d/1eYrpSWDyoV+yghGL5mZcZz
	fqCnzv50uEK/7h+pSySxeYgP+7VJVcX4XFkl8r5E8mN03ilbgYx5nLo4ZGPNNbAMVNFXM8
	yi1b7uCH9euVXzAMK+Z5nZ+WLEbcvvE4/1gG/3GdDreL0t9LO/JFwTYfZuD+9w==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=UHIo3SmkE4VV1P0KL32EKy7yhpslxj/iA2+yGDbW03w=; b=1wCcM1hv/fWX19PbwF+6h2x6GC
	n5zX78cWtQwufbdZRSXuLU4PqQbr0phA3I0P688NBrephbyKNX7/AQ+LWRLeicaxFCadr0su057Pt
	H8YUtawsIJqqcqsPUWpSmmD3ekTHOzKj8EfLnh5tbaE6aH5jV7ubezGp64Cywz5fT9KSnAurlT5D2
	FJS5vQ1X9zEI12Lu6oqBCR0sTi06dyNkOjhEYMFj1+Qktv7Zsc2ltc2ZgkrfWz8cX3EGAUgy7tZ/c
	v6vQqLYm+4jEXER7751MXkinYqr3j8KzFK1OzpC4GZHhi3HFTFqiBfw0tB+gsgMSF5v7/P/6rbcjK
	H1XWU8UA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM8y-00000000Kcp-1b2Y;
	Thu, 15 Oct 2026 14:09:16 +0000
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xHM8v-00000000Kc5-3jVT
	for barebox@lists.infradead.org;
	Thu, 15 Oct 2026 14:09:15 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 41AEC2027F5;
	Thu, 15 Oct 2026 16:09:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UHIo3SmkE4VV1P0KL32EKy7yhpslxj/iA2+yGDbW03w=;
	b=K6+H1Rx4T/AXK0RWcVXFAg9xry9/3baAtY/GXX3MSv1UxIeVO7RBfT/R61V5NU3lOliQPN
	CeMG8DkSjoBwbSdXwEAivIdH//fHagq4peTwqUQb47Cbcj6ZH3YBW6SW7ymy4IZWaxY68S
	j0xLL9QNBcnSVBUS+UxohlY/FEu0MkOCI98ExYZyC5ZWicWqY2jcbz25PEG5ZFZGu96hs8
	BlC/IJ8MVf/ibBw2zmlIgZ9s4M3CFESu4zXNbWzJpYEnRtH00oq0FXitt8Pm4wqmGZFjWn
	rVlHf5NEzpCyyd8HvHfaK8+IaLy83MHdgA7/iSqcYm1ar7PtnLA6YC1+BkQBzg==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792073348; a=rsa-sha256;
	cv=none;
	b=ShbhlBEKJBNT/h7uA+7VS51smcclOXsYfHpQT1f/Ve7NpeS7OlHO4ycrYxiDU1yf9Rl/1v
	JEtWRGQlT0bIxHjlJwAG59I18Gu25HKZwMK17XlKnSCxEvzU6uTfgmXBEkK5WH3fCVjXq1
	tVsBV5P25BTqp26vtH7swVQUHHaXGqHly4JjQ/OsfQQ1Ra1V2fCW52tHubDYZcFjdb6MKq
	H3kxykXmzBqhmGvgRiyGfv6XxxUa1oJx0SyuoSMNAar8gmrDpbrbiJwFXZ0xRE2dFodWvI
	7IQZ8MT5IpZDHiNFTxKCcJ53RMYWjlk/H21kMiFPjTWu7DlTzJl06Hwrb3S6Iw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=a.fatoum@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792073348;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding;
	bh=UHIo3SmkE4VV1P0KL32EKy7yhpslxj/iA2+yGDbW03w=;
	b=GTpARZH22Q49NVQfdzGacjwFr9K4Q5W5dgbBx85rYOAaXyku7z6xka7ZGaiAAY+B+fDMwL
	DWglwZnD+jGmSAUbUYXqHhboIMZWBHVs16XwrboUC8Zo3MSlcQdJuNjE3ISN+SKsgX8H2y
	wpdDNNE4uQA2KLHPeY8/4+uXo2tMEdIwCQHqWqWpi9DsD0IHQvDeJjtnmDodC9c9ugu8X2
	LJ3eWqZ6d0IFxDEQkQiF0ATByG7dE+gFSIxCUZoK4BSDxkj0CPGzV3+U9+HBijJgjMAJ5w
	AEZcTc9QIey62xy0ry3CMqVDukWdwEM9KmCfAjXDqpQhY9pNTOyl3p7ckdQRwQ==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 27ED97415DA;
	Thu, 15 Oct 2026 16:09:08 +0200 (CEST)
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH] of: reject alias values that are not NUL-terminated
Date: Thu, 15 Oct 2026 16:08:59 +0200
Message-ID: <20261015140907.1275192-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261015_070914_154747_D00D48FE 
X-CRM114-Status: UNSURE (   9.56  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> of_alias_resolve()
    passes the value of an /aliases property straight to of_find_node_by_path_from()
    as a C string. Unflattened property values are copied with their exact length,
    so a value without a [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
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
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: F123A201BC6
X-Stat-Signature: hx5yomft7unaisnxmr1sj1348o9q9e9m

From: Ahmad Fatoum <a.fatoum@barebox.org>

of_alias_resolve() passes the value of an /aliases property straight
to of_find_node_by_path_from() as a C string. Unflattened property
values are copied with their exact length, so a value without a
terminating NUL makes the path lookup read past the end of the
allocation.

Only devicetrees barebox trusts get here.
Still, let's skip such values like libfdt's fdt_get_alias_namelen()
does.

Fixes: 58f3457f4f03 ("of: add devicetree probing support")
Assisted-by: Claude:opus-5.5
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/of/base.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/of/base.c b/drivers/of/base.c
index 194888359345..1987f9c8b0ca 100644
--- a/drivers/of/base.c
+++ b/drivers/of/base.c
@@ -22,6 +22,7 @@
 #include <linux/clk.h>
 #include <linux/ctype.h>
 #include <linux/err.h>
+#include <linux/string_helpers.h>
 #include <pm_domain.h>
 #include <tee/optee.h>
 
@@ -178,13 +179,18 @@ static void of_alias_add(struct alias_prop *ap, struct device_node *np,
 
 static struct device_node *of_alias_resolve(struct device_node *root, struct property *pp)
 {
+	const char *path = of_property_get_value(pp);
+
 	/* Skip those we do not want to proceed */
 	if (!of_prop_cmp(pp->name, "name") ||
 	    !of_prop_cmp(pp->name, "phandle") ||
 	    !of_prop_cmp(pp->name, "linux,phandle"))
 		return NULL;
 
-	return of_find_node_by_path_from(root, of_property_get_value(pp));
+	if (!path || !string_is_terminated(path, pp->length))
+		return NULL;
+
+	return of_find_node_by_path_from(root, path);
 }
 
 static int of_alias_id_parse(const char *start, int *len)
-- 
2.47.3



