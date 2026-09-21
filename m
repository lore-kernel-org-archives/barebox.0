Delivery-date: Mon, 21 Sep 2026 17:04:17 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x8fZ3-004iVp-1t
	for lore@lore.pengutronix.de;
	Mon, 21 Sep 2026 17:04:17 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id A3EF6200153
	for <lore@pengutronix.de>; Mon, 21 Sep 2026 17:04:16 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VMG3n8EA;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=qVR0tju6y9U4pzsy2XN8bvslSwqvrWrvDL8TGAD9BbM=; b=VMG3n8EAuMDTbgtQJTFw8iY3ff
	v5w4HZgcltsqgzAL9wJDuuuIghq9rVa1Ju8WnTc72q2ZHqMZKjLTZJuxy9vUk3DHuhFrpYqHGpJwS
	2mD4WCArvQx5IQgqYPQOVGpcfJJVGlgLwzNdPmflC32OS0LbT3/Iyoz8o2c2S83lOn6mES5XXT718
	UYzRgeoTU862DsFo/G7hYfcsZ7mH8WnTcExq+kRmnLycpkUNL/WcEFIu3j/2j9JTJ+ucXVSHJyUkf
	QRMhn+2P3Ez1biCUZ/jm7kJYvD/ARsrRcDPynhduaBFjqooc5QPRwga8WdHL5Zh8UceQhiWGfIhBP
	k7LXSsaA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fXh-00000002X3Z-1s0g;
	Mon, 21 Sep 2026 15:02:53 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x8fXd-00000002X1T-2eZQ
	for barebox@lists.infradead.org;
	Mon, 21 Sep 2026 15:02:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id B44C8200153;
	Mon, 21 Sep 2026 17:02:47 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8fXb-0025A7-27;
	Mon, 21 Sep 2026 17:02:47 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x8fXc-00000002lJR-0G4C;
	Mon, 21 Sep 2026 17:02:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Subject: [PATCH] FIT: prefer the default configuration when several match equally well
Date: Mon, 21 Sep 2026 17:02:41 +0200
Message-ID: <20260921150243.657613-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260921_080249_826216_A5C15785 
X-CRM114-Status: GOOD (  20.44  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  fit_find_compatible_unit() keeps the first configuration it
    walked into when several match the barebox root node equally well and only
    looks at 'default' when nothing matched at all. A FIT carrying on [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
X-Stat-Signature: br78gtshrcu7norus4w9cwyiy1unodpo
X-Rspamd-Queue-Id: A3EF6200153
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	DMARC_NA(0.00)[pengutronix.de];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

fit_find_compatible_unit() keeps the first configuration it walked into
when several match the barebox root node equally well and only looks at
'default' when nothing matched at all. A FIT carrying one base devicetree
plus a couple of overlay combinations for the same board has all of its
configurations match equally well, so the choice the image author
expressed in 'default' is silently ignored.

The Flat Image Tree specification asks for the opposite since 8f6cc2523be7
("usage: prefer the default configuration on a compatible tie"):

  If several configurations are equally good matches (they match at the
  same position in the bootloader's compatible stringlist), the one named
  by the 'default' property is selected.

Let's resolve 'default' to a node up front and let it win ties. A strictly
better match still wins and a FIT without a 'default' keeps booting the
first best match, so only equal scores change. The shortcut out of the
loop on a perfect match now needs the default to have been walked past.

A 'default' naming no configuration is reported here now instead of by
fit_open_configuration(). The /configurations node is not covered by the
configuration signature either way, so rewriting 'default' and reordering
the configurations stay equivalent.

Assisted-by: Claude:opus-5
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/user/booting-linux.rst |  2 ++
 common/image-fit.c                   | 48 +++++++++++++++++++++-------
 2 files changed, 39 insertions(+), 11 deletions(-)

diff --git a/Documentation/user/booting-linux.rst b/Documentation/user/booting-linux.rst
index 0f1225681360..7412c9893691 100644
--- a/Documentation/user/booting-linux.rst
+++ b/Documentation/user/booting-linux.rst
@@ -65,6 +65,8 @@ To use an initramfs, use the ``-r`` option or the
 
 FIT image configurations will be matched by comparing the ``compatible`` property
 inside the configuration node with the barebox live tree's ``/compatible``.
+If several configurations match equally well, the one named by the
+``/configurations`` node's ``default`` property is preferred.
 It's also possible to select a specific configuration explicitly:
 
 .. code-block:: sh
diff --git a/common/image-fit.c b/common/image-fit.c
index d16d805d53c5..3b75b31f54b6 100644
--- a/common/image-fit.c
+++ b/common/image-fit.c
@@ -952,12 +952,19 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 				    bool (*config_node_valid)(struct fit_handle *handle,
 							      struct device_node *config))
 {
-	struct device_node *child = NULL;
+	struct device_node *child = NULL, *dflt = NULL, *best = NULL;
 	struct device_node *barebox_root;
 	int best_score = 0;
-	const char *machine;
+	const char *machine, *dfltname = NULL;
+	bool dflt_pending = false;
 	int ret;
 
+	if (!of_property_read_string(conf_node, "default", &dfltname)) {
+		dflt = fit_get_child_by_name_exact(conf_node, dfltname);
+		if (dflt)
+			dflt_pending = true;
+	}
+
 	barebox_root = of_get_root_node();
 	if (!barebox_root)
 		goto default_unit;
@@ -969,6 +976,9 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 	for_each_child_of_node(conf_node, child) {
 		int score;
 
+		if (child == dflt)
+			dflt_pending = false;
+
 		if (config_node_valid && !config_node_valid(handle, child))
 			continue;
 
@@ -977,26 +987,42 @@ static int fit_find_compatible_unit(struct fit_handle *handle,
 		if (!score)
 			score = fit_fdt_is_compatible(handle, child, machine);
 
-		if (score > best_score) {
-			best_score = score;
-			*unit = child->name;
+		if (!score)
+			continue;
 
-			if (score == OF_DEVICE_COMPATIBLE_MAX_SCORE)
-				break;
+		/*
+		 * A FIT may carry one base devicetree plus a number of
+		 * overlay combinations with multiple configurations matching the
+		 * board equally well. Allow the image author to influences who
+		 * wins ties by means of the default property.
+		 */
+		if (score > best_score || (score == best_score && child == dflt)) {
+			best_score = score;
+			best = child;
 		}
+
+		/* Nothing left to walk into that could do better */
+		if (best_score == OF_DEVICE_COMPATIBLE_MAX_SCORE && !dflt_pending)
+			break;
 	}
 
-	if (best_score) {
+	if (best) {
+		*unit = best->name;
 		pr_info("matching unit '%s' found\n", *unit);
 		return 0;
 	}
 
 default_unit:
 	pr_info("No match found. Trying default.\n");
-	if (of_property_read_string(conf_node, "default", unit) == 0)
-		return 0;
+	if (!dflt) {
+		if (dfltname)
+			pr_err("default configuration '%s' not found\n", dfltname);
+		return -ENOENT;
+	}
 
-	return -ENOENT;
+	*unit = dflt->name;
+
+	return 0;
 }
 
 static int fit_find_last_unit(struct fit_handle *handle,
-- 
2.47.3



