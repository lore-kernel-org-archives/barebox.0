Delivery-date: Tue, 25 Aug 2026 05:07:21 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyhVQ-006vat-2y
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 05:07:21 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 31792201B02
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 05:07:21 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=D0um68sv;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=ps93Vvsm;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=; b=D0um68svYGC/UuhmRyc+ffn2my
	F1jAMC+A7DiYPo5V1YZ3rZoVTmiDpMBtMQjG0NCeAYN7bkXXMqaOQRr+Zj+rWT6R3PxeSd/Pt3HK4
	8qav5YF6vHLNexMLtrXYmAxqlbjFx6hA28WFlqWt7vzL5iY1g2Qse/lopn2phwKKEWlZrrX0VZXM+
	kYlEz3wukswNZGthX5CS5hjjuCZRtACC7DVWKhfbbj6A3LeBvYmWWmAE36D+78oE0UCOz1GjHi4jd
	LxcudYQIDAJbnSB6HEyvafmnhbkiBVhoO+KdVwqwy+eFyKaQIZkEfVUhBPKgzRkZfT8q3fYJ5xD4v
	tQ75EgpQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhUB-000000004yB-1IZj;
	Tue, 25 Aug 2026 03:06:03 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyhU8-000000004xJ-1tzB
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 03:06:01 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-482938466a7so2989038f8f.1
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 20:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787627158; x=1788231958; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=;
        b=ps93VvsmVfxYDTE1xlxI8BUeE+UstfBCCLNvcdCE1/fIBZjwZ8dR4RvVfo1iPz87gJ
         /v3dYCpeKGjuzLF9PnGUifkrVuF1jlWkofMKKFYdILHtSidcGD0eYlRB+5Ubp28hEYnj
         CzHNDV7SJxr039ajVaxxUyOYZkp2gHTT5XBeluURzOOY/BNnhGQORQE2i/goUW03xchE
         JdyN27yYCcPRaaHnGJ5Ll8gxiUoEWZO8Hqz3H5ijj/4diJ7ZIVd+KBrij6ZGF+pmF1Wk
         GmE3GTLQ4yZKVfNsfqzxklkX4K3bx/q4jhkRKsaE98mLL6EKloUgWKADRHxJvbvQbQhm
         d6kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787627158; x=1788231958;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=;
        b=g50lZxlarQmR4N7QLrUH28RrWRC6UmomD3lGo30gIeTfVpQYWS+6P6jynivmoOoVKZ
         cSMdKd4Y6JFrJRZhLiQ76lkLs6QFxr78tciDlNipsipWM05C26SCdjClGG0cZ4M2JUlJ
         PrqHcvGX++ZZWErhAcrYb8wGPRPHReSnTqEQ5g0004HGaaljBi7Utztb4VatfKdEbF2C
         tyGNDevXpWSZODVRU3Lzjrcdx8XBHDDzo4JiweYgo4MvnVtw4qvhNZv2fY/+bb+Rkfvh
         CnAJr1u2UPP3tX1M3sSl0yAcUV1KOu+bGrTbi9Trk0erHMBjC/smRBZwkXJ3ABJSfm6V
         ilUA==
X-Gm-Message-State: AFuF++ljYJlDzNICz6XI8H4tEvC42xpu9otLxfdYASbmXV3RwtZS/TAX
	WRrLfxogk6P3GONpYgEwgTUYB51B/2zeWgH9lJxg4qjEyv067oJ6Tulv32WbqA==
X-Gm-Gg: AR+sD10ACPj9SXWRb9GRM1R0UFnciJ46s//R5S5sclf8AqHhtWazWkpj3Qx0zC8soHw
	56kQxE+/rlvhWfI8AAfrj23ygNtJU5a8iQdxpmj0sxQz5p6L1p+4K4c4Jr/Xi2HtyRmSeipGiHC
	bP132pJfKaPEgPQtG12hGJ8mi2z+4RxuKHoEbiBS7WXQwENlkwB/ZQ0d2KQkj0kSAzRnZCUzpVz
	vonj2lxMViG4TLnRTcmLX7KjTN8/h4PHLY6z3OapSesIlY88RxohXmY+vExktQ+km3jd2hnsp57
	UvDBVW21BrsL19WNWMGMHsjGa+Fd2s0cMXlkHsWQZpZDijvGYzOyq5fU8F/+q42OIFmywjy4/0j
	fm/uCG+Qnd0B92u0Cvk6vlbaYVqgZ+R+FlB76IWjg1dmlvVE/z5CeTRdgGkMNJIPSk1TTfblJk3
	Fgzs+D8yUQumohOfdDbSDvVwwH9JSvDwmOoevz8z89R7CnTuk8kvEftp/3BAlZ8U5N98W0vMRGE
	X3cG+t53bh5QcPnhGiscQR99ko8EjLFRFco7nmulTm50W70+6EkZ40TroX2UWSc6tDbCbXmR4p3
	vRAicI2C2g==
X-Received: by 2002:a05:6000:22c4:b0:482:d7db:ec06 with SMTP id ffacd0b85a97d-482d9f40324mr3200745f8f.22.1787627158550;
        Mon, 24 Aug 2026 20:05:58 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9c146f1sm9944021f8f.33.2026.08.24.20.05.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 20:05:57 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v3 1/4] state: make of_state_fixup() usable outside common/state/
Date: Tue, 25 Aug 2026 05:05:45 +0200
Message-ID: <20260825030548.473672-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825030548.473672-1-chalianis1@gmail.com>
References: <20260825030548.473672-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_200600_513229_46F12257 
X-CRM114-Status: GOOD (  14.76  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Chali Anis of_state_fixup() was static, callable only
    via of_register_fixup(). Export it so other subsystems can invoke it directly
    to render a state instance's devicetree representation on demand, without
    going [...] 
 
 Content analysis details:   (-1.9 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/, no
                             trust
                             [2a00:1450:4864:20:0:0:0:431 listed in]
                             [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends in
                             digit
                             [chalianis1(at)gmail.com]
  0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail provider
                             [chalianis1(at)gmail.com]
 -0.0 DMARC_PASS             DMARC pass policy
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
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: wcarn14z4jyebbranhhd7ahpbnf8dk3f
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::431:received];
	FREEMAIL_FROM(0.00)[gmail.com];
	ARC_NA(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NO_DN(0.00)[];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 31792201B02

From: Chali Anis <chalianis1@gmail.com>

of_state_fixup() was static, callable only via of_register_fixup().
Export it so other subsystems can invoke it directly to render a
state instance's devicetree representation on demand, without going
through the global fixup-registration/of_fix_tree() machinery.

While exporting it, teach it to resolve backend nodes that are
top-level "barebox,fixed-partitions" subnodes carrying a partuuid
property instead of being tied to a real, already-probed storage
device node in the tree - the same globally-resolvable-by-UUID
binding drivers/of/of_path.c's of_cdev_find() already supports for
EFI, where devices aren't instantiated from devicetree. Without this,
of_state_fixup() could only find a backend reachable by walking real
hardware nodes already present in root, which such a partuuid-only
declaration never is.

Assisted-by: Claude Sonnet 5
Signed-off-by: Chali Anis <chalianis1@gmail.com>
---
 common/state/state.c | 72 ++++++++++++++++++++++++++++++++++++--------
 include/state.h      |  5 +++
 2 files changed, 64 insertions(+), 13 deletions(-)

diff --git a/common/state/state.c b/common/state/state.c
index b421b43da539..5de806b954e9 100644
--- a/common/state/state.c
+++ b/common/state/state.c
@@ -433,14 +433,69 @@ int state_from_node(struct state *state, struct device_node *node, bool create)
 	return ret;
 }
 
-static int of_state_fixup(struct device_node *root, void *ctx)
+static int state_get_backend(struct state *state, struct device_node *root, struct device_node *n)
+{
+	struct device_node *backend_node, *part, *state_root, *np;
+	const char *compatible = "fixed-partitions";
+	struct property *prop;
+	phandle phandle;
+	int ret;
+
+	state_root = of_find_node_by_path(state->of_path);
+	if (!state_root)
+		return -ENODEV;
+
+	backend_node = of_parse_phandle(state_root, "backend", 0);
+	if (!backend_node)
+		return -ENODEV;
+
+	if (of_node_is_fixed_partitions(of_get_parent(backend_node)) &&
+	    of_property_present(backend_node, "partuuid")) {
+		part = of_create_node(root, "/partitions");
+		if (!part)
+			return -ENOMEM;
+
+		prop = of_new_property(part, "compatible", compatible,
+					strlen(compatible) + 1);
+		if (!prop)
+			return -ENOMEM;
+
+		np = of_copy_node(part, backend_node);
+		if (!np)
+			return -ENOMEM;
+
+		/*
+		 * of_copy_node() carries over backend_node's phandle as-is,
+		 * but that phandle was allocated in barebox's own live
+		 * devicetree, a namespace independent of @root's. Assign a
+		 * fresh one scoped to @root instead, so it can't collide
+		 * with an unrelated node already using that value there.
+		 */
+		phandle = of_get_tree_max_phandle(root) + 1;
+		np->phandle = phandle;
+		ret = of_property_write_u32(np, "phandle", phandle);
+		if (ret)
+			return ret;
+
+		return of_property_write_u32(n, "backend", phandle);
+	}
+
+	backend_node = of_find_node_by_reproducible_name(root, state->backend_reproducible_name);
+	if (!backend_node)
+		return -ENODEV;
+
+	phandle = of_node_create_phandle(backend_node);
+
+	return of_property_write_u32(n, "backend", phandle);
+}
+
+int of_state_fixup(struct device_node *root, void *ctx)
 {
 	struct state *state = ctx;
 	const char *compatible = "barebox,state";
-	struct device_node *new_node, *node, *parent, *backend_node, *aliases;
+	struct device_node *new_node, *node, *parent, *aliases;
 	struct property *p;
 	int ret;
-	phandle phandle;
 
 	node = of_find_node_by_path_from(root, state->of_path);
 	if (node) {
@@ -498,16 +553,7 @@ static int of_state_fixup(struct device_node *root, void *ctx)
 		goto out;
 	}
 
-	/* backend phandle */
-	backend_node = of_find_node_by_reproducible_name(root,
-						state->backend_reproducible_name);
-	if (!backend_node) {
-		ret = -ENODEV;
-		goto out;
-	}
-
-	phandle = of_node_create_phandle(backend_node);
-	ret = of_property_write_u32(new_node, "backend", phandle);
+	ret = state_get_backend(state, root, new_node);
 	if (ret)
 		goto out;
 
diff --git a/include/state.h b/include/state.h
index 3daf82c0735f..d0034506f6e3 100644
--- a/include/state.h
+++ b/include/state.h
@@ -22,6 +22,7 @@ void state_info(void);
 
 int state_read_mac(struct state *state, const char *name, u8 *buf);
 
+int of_state_fixup(struct device_node *root, void *ctx);
 #else /* #if IS_ENABLED(CONFIG_STATE) */
 
 static inline struct state *state_new_from_node(struct device_node *node,
@@ -60,6 +61,10 @@ static inline int state_read_mac(struct state *state, const char *name, u8 *buf)
 	return -ENOSYS;
 }
 
+static inline int of_state_fixup(struct device_node *root, void *ctx)
+{
+	return -ENOSYS;
+}
 #endif /* #if IS_ENABLED(CONFIG_STATE) / #else */
 
 #define BAREBOX_STATE_PARTITION_GUID \


