Delivery-date: Tue, 25 Aug 2026 02:08:36 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeiR-006sbD-2t
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 02:08:36 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0CE20201AD4
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 02:08:32 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=VBSzroCM;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=fpBoW5UV;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=; b=VBSzroCMTwQfi1m/zVr5eNUz+Q
	UyFPlcQzIKQrKnaL4cZ6zUS/cW/s2P9YS7BYWuWcqRQjpkXU422zp1jwzsPTWXpspANomvIbM1Eis
	4DiAVBPrkoqNl+hRolwLRCTV7BtesyKfiJ8J9FIreoG5tCEOPpoj7f0qM0D2iCJrHQ/kIfuMk0AT3
	R8ijw5mh/CKCnbInWff8irE7XDtZMqLcheo2+x6Cmt7JvCzN5gKOv17CKrG3kY4B9UQxFpLaMa29s
	YelP+J6Hc1dKQA02dZ4+K8qvqVgXyIwoWkYGuSknDaktHcOZvEl6+lqubj4GyUe2/pbeu3L0aIcHb
	WaU5s0RA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyegs-0000000HW3a-3m9R;
	Tue, 25 Aug 2026 00:06:58 +0000
Received: from mail-wm1-x32f.google.com ([2a00:1450:4864:20::32f])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyego-0000000HW2A-2S3u
	for barebox@lists.infradead.org;
	Tue, 25 Aug 2026 00:06:55 +0000
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-499b6c02b02so19281515e9.1
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 17:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787616412; x=1788221212; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=;
        b=fpBoW5UVwuhumZbdOXnolbG0lyw3LzsLoyNFPuNwVa0ujQqwBUyZrL/KCY1JEKSjfA
         mS5Cy6sikK/qsRF59w9+dzJAmdN2S8eh6f50KaZycNSt22hrL03PCe95XMMvx2zgb3Mf
         g4EO53e4yU7s3cHpT3UXppjPOewx18XDoopU0uSscRRnjiCBAtpfzYKAAIShN8akiKiz
         3UERPvgANwaxCEAMem/yVfujPCkh/K6upwFm0gwT0tUhOdBkQUjdKDvMF7tUK0gUjovn
         WyVk8ETK3X/Rk0bVdti485IEd6WaKGT+BDec9mdDXAuumPznS8RhFJdQe9czwlyrSl99
         0zjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787616412; x=1788221212;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=;
        b=C/qWUOKV1Dna0uJ+szlP3a+1AOuRIsPph8SUbfUhmnsyN2RnA9OW5bPsmKEoCoodgu
         f/q/480yu2L8+ZfKd0Kvgki3hI0Dqy4jqozI94ayMV2RGAsuNu/inl9NCg0q7a39q6PS
         bGf09QUrdus9osqKPdqRmzadCXCjQUJTAUO1UpnVuOCiC9EZfYe6EOThV9PQIQZZmbAR
         OGs5Jokj2uqKUfSN6Mj00SBxpZEM+VIm41TL9R18by17egBzDhtrliJvarw0KrV39jdo
         /sCxEbBHtZztJsDWg9YRKZ2YKv3CdeZvC0tt8r2viZj1g4Y29JL81Lh9ebctln3P0Hdp
         h7ew==
X-Gm-Message-State: AFuF++lGJZBMU375NjexhAj5PmG/gE2ecxHpsSA1Lwa+C3mtYUK0RYfC
	24Sw44bQ+RTtxkqePCb4BTWc2R7DtXHdImdBbasKJiH1hhWp7Gsr3yp3f1D9YQ==
X-Gm-Gg: AR+sD13gCjR14c1Qpt6CD2IYBkONNNSNquYWct5y7vm/keQ4JKicDmAm5uTDWBP40FD
	X65/obmtotRHO2YXdWvLXIPykiILVFC8Rl9cFrxLa/3KkMfHQLkgZAwAKNNf/NABLIvPacitYGk
	sdNRtgUHtaSifPXmevGMaQbx1T4zRxRma4CyFdJyJ1MWGGBJZgVrkz/Jqy00LZsdA3iYWIpOD8F
	hIWLIyNjGgizWS2ZuvwT8jtxHGEYvQGsRTZBhEKnuk6+iko3jfn4ioF85Fv7C08SDtJJnqVpfvg
	H0EqxxRyWWkT+LuJwDA5q9FoAHl/MI46/RS34PUNH9ritotFHY5q+Jn66FZkeSoqo3Oz9A7wIqq
	7yqlqgfqsmVPG2jZRN1F/jTZd8z6YueOSkLrmgR4K/8Mi+rBxyyPAk8IVnJeEuOnlQk4BUJ+pFX
	u5fx04U4nxyuyj873qvOsv6t4vt0QO9088XMeoo+K3+YFXM1ubOzg1JMGndtaBZClAB3Fmdrq8R
	opXlSiXAuOxYbh/ZShydICYCiy1XLsnjyVqhNiv0MldDNIDNEOHQB1cM6jCCfPjWBHUa3LMFG5I
	FQFSp+9otkBDcIH97YtjPQ==
X-Received: by 2002:a05:600c:4e89:b0:499:53c4:1daa with SMTP id 5b1f17b1804b1-499b8474febmr376548135e9.15.1787616412517;
        Mon, 24 Aug 2026 17:06:52 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-499d636efa8sm10181285e9.14.2026.08.24.17.06.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 17:06:51 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 1/3] state: make of_state_fixup() usable outside common/state/
Date: Tue, 25 Aug 2026 02:06:43 +0200
Message-ID: <20260825000645.122086-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260825000645.122086-1-chalianis1@gmail.com>
References: <20260825000645.122086-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_170654_646232_777A4736 
X-CRM114-Status: GOOD (  14.86  )
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
                             [2a00:1450:4864:20:0:0:0:32f listed in]
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
X-Stat-Signature: a6mgwntf6xyfe6yfzpmjmsnegcp5oiyd
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	TO_DN_SOME(0.00)[];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::32f:received];
	RCVD_COUNT_THREE(0.00)[4];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FROM_NO_DN(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 0CE20201AD4

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


