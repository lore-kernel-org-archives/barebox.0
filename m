Delivery-date: Mon, 19 Oct 2026 12:07:25 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xIkH7-000ZO9-1I
	for lore@lore.pengutronix.de;
	Mon, 19 Oct 2026 12:07:25 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 4D80F201F3E
	for <lore@pengutronix.de>; Mon, 19 Oct 2026 12:07:25 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oJ3vuv3Z;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="hKj/aJR3";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dwOo32Re;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1792404445; a=rsa-sha256;
	cv=pass;
	b=e8s4WnPUqkGcJi565Tjpa3OfMX9+NCzdmbe8NhqqU5jWVOKJYm83iNSAO8QHUpQk8NTRlL
	30jFaopcZpOS3Y3ZI+GtHhkLx9M9r/5pT4PbI21pdN2sJl4aaVidhAQzl2WFvuJ7nNz4hE
	IAGur+E4N0vgpStqHzFFrSYI/jyyVA+y4gnjThwPkyTT5NDL3WNVzP0ZCNLwT4mm17x5Ij
	H++ID96VnzUuL78v6rjbCeWv7290XNChcvoFEdsIeeeymokDijG/l6NL+M9/Z9I1WSOpw9
	jvYFdz/O3E++VYS0LEmWYNuhOus1PxJYPKlYJa5oitXMaMLz0cFiiDboDj+KUw==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=oJ3vuv3Z;
	dkim=fail ("headers rsa verify failed") header.d=infradead.org header.s=desiato.20200630 header.b="hKj/aJR3";
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=dwOo32Re;
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
	bh=/AK8UdmP/tMwwEIy9QIKGNR1oXkOOqzPKVU/K/N8K9Q=;
	b=HuTKKpgFnVTBPx7/Yt2eLMYRNipQnL29AJMmUqpdyEgNwF5il/VjcHPqXUL4c2HqjUj/Xu
	2VXsMiEQ6Yp5iVSTIJ3uNJ005f6uC6Hjy/GGKi7IGR0GZGNYa4LRJtTdGvGcCHbTA50aWk
	gWMBNCQRlkaicK8/MWr0QZ884o7VEYcUkymq/988sk3aO7SxEjUCmumVmRMqzvrgi/ktC4
	z8h3PzuqvcZeX83qQz3GDzRoONwf443S06xz4CDhAVzGQGwp+aZji4StnytyO9aEQW3s6S
	buXESrmuWMUyUVw2mcf6mdUZQMOEwHSSkuoBe4uhDebesn6npyQoulH5Rpn8Jg==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=/AK8UdmP/tMwwEIy9QIKGNR1oXkOOqzPKVU/K/N8K9Q=; b=oJ3vuv3ZA/VV5q1ePtmN4EvWmR
	1zrxdixa8hHyKeisx8Z18lGnot/uUP0bAIGDU0xMAA9iwonD3DyUMnrLTgBmxgoClC2Sg2uxCPKHo
	gVQOaupxv3yuq8SnDA3axZc9Irt3wr/UVdTBcy6nXqztnLzOvzm0APhxEo0Mi07r8E7a0ON3zQ7EN
	kN+auGiL6WXiDYR9YukNgPMy+WDqUGwydwAH9CrK2jhEt3eXwg6EpfcBuGMJUoG3UVxJ0DgrojUOS
	KLu+hb54z6Xp5e5RcNBGCDo2NagIftfKViANeFXe6SYt2YlN4Ip7JLT+90eW09pAQCsFq5WRWPDZ2
	W/tOpLOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFy-000000076V7-17NO;
	Mon, 19 Oct 2026 10:06:14 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1xIkFq-000000076R8-0y9D
	for barebox@bombadil.infradead.org;
	Mon, 19 Oct 2026 10:06:06 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Cc:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Sender:Reply-To:Content-ID:Content-Description;
	bh=/AK8UdmP/tMwwEIy9QIKGNR1oXkOOqzPKVU/K/N8K9Q=; b=hKj/aJR3K30s0Zn4BQnV4XxI6P
	UYUNNzNjzZrXICfPT5Y3z16LUmLjLCPAZfXKtuzp2k48dAghTHzmuKXwuxRvSacU6aGqHBLtLIXm/
	M9cucgMaPJRcZF1c42b7h+qu3FhMJ1e0zAw+V71fcKu7KjYe6Yw4RKcHJDKNOOghvUxT1+q27/Sca
	/gq1uJN4IrGXh17G4V3IS54xrmCG10UhFAbKZgdvUiRfJroxAFNpWZIIsi/F1VbgGORn81uhtbylr
	yGSI2fgTWnoHtsNTSyAmKLvJYde7lF172HDXQlKo05Z6WB/1JxJq9mJgERzgwfZgpXdxXhsX/Ttwo
	zYQ2DtqA==;
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by desiato.infradead.org with esmtps (Exim 4.99.5 #2 (Red Hat Linux))
	id 1xIkFj-00000003VgG-1LXX
	for barebox@lists.infradead.org;
	Mon, 19 Oct 2026 10:06:04 +0000
Received: from dude05.red.stw.pengutronix.de (dude05.red.stw.pengutronix.de [IPv6:2a0a:edc0:0:1101:1d::54])
	(Authenticated sender: relay-from-dude05.red.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 45C88202337;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/AK8UdmP/tMwwEIy9QIKGNR1oXkOOqzPKVU/K/N8K9Q=;
	b=dwOo32ReNU0EHGoA8ExvCrqIFup5wVpihmu0QPHzBlUn2gDXH76pFilpDAxWv962jnDVv0
	EwnHImA2PNeBG2GQHHQKkZFYxDeGG0SW0pXBUBTcwCXCOtAVeiPnDIaG7hOQvmnlG/tztB
	VfKFggpldLrLZ0BGFex3JtONdxyiJssSJqaupUnFUORaSOFkzhqP7NNd94AAqc1FSUc17B
	l6CvfyPQNSslW23LAIWcIQ56GAGzIGaFxvWD0TXdxWKDC0/nA3Q6nQN220PId5HxPpG+3q
	hlZ/FMgUVYUsih+QrLVDPeK84llpqEEKv0+bVnrfJWa/PVfg2sNVLmTZvefjyQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1792404356; a=rsa-sha256;
	cv=none;
	b=P+NL5V3ad6tB+p4DBgGvWY+Ctis5kHOkcoU8gtKBhvyAj9ZenBZv3zF6zcnZFAWFNTNp5W
	SnHLxMPspXswepOmbhIsCQ2pLb3BH7Fl1ZNMjpXxcz2+ttQ7JpyskUJlj3QTPUGZZx9x/1
	hl/6/9BUb0aOrIxYWCjqFG4NHiFOfhpIN4QJfiUriTB3Ukax5NBPpaN7U3qbfiyystDx5m
	6l2k7nOmBqjKvgy0l+Gzy9kzgTMPLg7cmGpZXTtNdmCTthj7IJkJVPWFg2m8Jp+KnPXP4c
	0vDRMs2jt2c4XkGVDf4kE0vTsbSmNrn56kRdWUrbJs4QUdpn+i1ZSxI/UFNM6A==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=relay-from-dude05.red.stw.pengutronix.de smtp.mailfrom=s.kerkmann@pengutronix.de
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1792404356;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=/AK8UdmP/tMwwEIy9QIKGNR1oXkOOqzPKVU/K/N8K9Q=;
	b=BeierzGTOnY4a9msu3M4Ct4jknM6zKcd6kuhd1hxS8kcaodr3+THbEX6vREgzF39kJuFJ7
	lQ+c6JFfCjUD9yCbhzBhJlFkE9EyDorcJXG5iKNBPAuJiKC3k5moBwhbIsprslf5SYLUzN
	gkjsJjjSKwhE7Nkn8juDoUnAJpUSM44i2X9lLT9AGVkg/PVAi4mvUuVqhLkBmpxGeSuEXm
	f/MLoAku3pXPM2FPCoPQ70QNWXotdWnNehz3G067mSaVB7DNfp1hhfvHANDkrcSXm7vDqS
	VklEmaP8QBH+ya1SZ3J+Fsmm6LhPoelFG3ZkVMQe2E+NVlIfmSF+5O3DaAEQ8Q==
Received: from dude05.red.stw.pengutronix.de (localhost [IPv6:::1])
	by dude05.red.stw.pengutronix.de (Postfix) with ESMTP id 208E47409AB;
	Mon, 19 Oct 2026 12:05:56 +0200 (CEST)
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Mon, 19 Oct 2026 12:05:44 +0200
Subject: [PATCH v2 1/5] of: overlay: of_overlay_fix_path: skip symbols
 without __overlay__ node
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261019-fix-overlay-v2-1-24e9ff1c0e12@pengutronix.de>
References: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
In-Reply-To: <20261019-fix-overlay-v2-0-24e9ff1c0e12@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 "open list:BAREBOX" <barebox@lists.infradead.org>
Cc: Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.15.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261019_110559_766301_2AF7ED2C 
X-CRM114-Status: GOOD (  14.52  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: Spam detection software, running on the system "desiato.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  An overlay with a label entry in the `__symbols__` table without
    a matching fragment that contains an `__overlay__` is not an error. This
   matches the behavior of the dtc libfdt implementation[1]. This edge case was
    triggered by: 
 
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
X-Rspamd-Queue-Id: 4D80F201F3E
X-Spamd-Result: default: False [-60.81 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	RCVD_IN_DNSWL_MED(-0.60)[2607:7c80:54:3::133:from,2001:8b0:10b:1:d65d:64ff:fe57:4e05:received,2a0a:edc0:0:1101:1d::54:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[barebox@bombadil.infradead.org];
	TO_DN_ALL(0.00)[];
	FORGED_SENDER(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	DKIM_MIXED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[s.kerkmann@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[infradead.org:s=desiato.20200630];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,infradead.org:-,pengutronix.de:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Stat-Signature: fs8aa7zafxp3zyk1ego1jgq6p88ftezg

An overlay with a label entry in the `__symbols__` table without a
matching fragment that contains an `__overlay__` is not an error. This
matches the behavior of the dtc libfdt implementation[1].

This edge case was triggered by:

1. Enabling CONFIG_OF_OVERLAY_LIVE this adds a `__symbols__` table to
   device trees compiled by barebox.

2. Passing the barebox devicetree via TF-A to OP-TEE that adds overlay
   fragments to the barebox device tree.

3. Enabling CONFIG_OPTEE_APPLY_OVERLAY and applying the same DT again as
   a DT overlay. The DT in this case was expanded by OP-TEE with overlay
   fragments (and still contains the __symbol__ table with entries that
   do not reference the OP-TEE fragments).

[1]: 5c715a4 ("fdtoverlay: Ignore symbols in overlays which don't apply to the target tree")

Fixes: 6553d2c2a5e3 ("of: overlay: avoid potential null pointer exception")
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
 drivers/of/overlay.c | 24 ++++++++++++++++++------
 1 file changed, 18 insertions(+), 6 deletions(-)

diff --git a/drivers/of/overlay.c b/drivers/of/overlay.c
index 4ce45513ea..a1df9c3c79 100644
--- a/drivers/of/overlay.c
+++ b/drivers/of/overlay.c
@@ -99,27 +99,37 @@ static int of_overlay_apply(struct device_node *target,
 static char *of_overlay_fix_path(struct device_node *root,
 				 struct device_node *overlay, const char *path)
 {
+	struct device_node *overlay_node;
 	struct device_node *fragment;
 	struct device_node *target;
 	const char *path_tail;
 	const char *prefix;
+	size_t prefix_len;
 
 	fragment = of_find_node_by_path_from(overlay, path);
 	while ((fragment = of_get_parent(fragment)) != NULL) {
-		if (of_get_child_by_name(fragment, "__overlay__"))
+		overlay_node = of_get_child_by_name(fragment, "__overlay__");
+		if (overlay_node != NULL)
 			break;
 	}
+
 	if (!fragment) {
-		pr_info("could not find __overlay__ node\n");
+		pr_debug("could not find __overlay__ node for %s\n", path);
+		return NULL;
+	}
+
+	prefix = overlay_node->full_name;
+	prefix_len = str_has_prefix(path, prefix);
+	if (!prefix_len || !strchr("/", path[prefix_len])) {
+		pr_debug("%s is not below %pOF\n", path, overlay_node);
 		return NULL;
 	}
 
 	target = find_target(root, fragment, false);
 	if (!target)
-		return NULL;
+		return ERR_PTR(-EINVAL);
 
-	prefix = of_get_child_by_name(fragment, "__overlay__")->full_name;
-	path_tail = path + strlen(prefix);
+	path_tail = path + prefix_len;
 
 	return basprintf("%pOF%s", target, path_tail);
 }
@@ -152,8 +162,10 @@ static int of_overlay_apply_symbols(struct device_node *root,
 
 		old_path = of_property_get_value(prop);
 		new_path = of_overlay_fix_path(root, overlay, old_path);
+		if (IS_ERR(new_path))
+			return PTR_ERR(new_path);
 		if (!new_path)
-			return -EINVAL;
+			continue;
 
 		pr_debug("add symbol %s with new path %s\n",
 			 prop->name, new_path);

-- 
2.47.3



