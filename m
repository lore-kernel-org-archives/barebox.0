Delivery-date: Tue, 25 Aug 2026 01:54:28 +0200
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wyeUl-006sPh-0n
	for lore@lore.pengutronix.de;
	Tue, 25 Aug 2026 01:54:28 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 76053201B02
	for <lore@pengutronix.de>; Tue, 25 Aug 2026 01:54:23 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=hMsf6hRj;
	dkim=pass header.d=gmail.com header.s=20251104 header.b=quUuXvae;
	dmarc=pass (policy=none) header.from=gmail.com;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org"
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=; b=hMsf6hRjQq/t02d1NvVwIcuLHW
	8sVadFFGI7Qfge82H0aTnolpnT+n0Efcs6xL7beP6K5n3KtLL+aKP8h2WRY1Fzk4q7RcnGFJzeqph
	6Gx+3bITnKcywpGvHiTVjNZEFpxzzMg9qErq+szkmQWsMOGcEo7DOZUM7U4a9ML185T0HbEtynFGR
	VoNe4ynOpL2ALzoWHXRubvmP85RuqoZe2Fx9FlIlwizzmTYeL2yz4UU+uPLHLjIRsCAbD6euc3Dst
	afoS6aJHbBnZP8IK5kfdTNKdz1VzvzXY8jL5V4wCYuBbmtHu8w1z9Sb9DYd+kSkHxF8X6L6xlWjt1
	3TUfnm4A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeTQ-0000000HVV0-4Ab5;
	Mon, 24 Aug 2026 23:53:04 +0000
Received: from mail-wr1-x431.google.com ([2a00:1450:4864:20::431])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wyeTO-0000000HVTn-1JPK
	for barebox@lists.infradead.org;
	Mon, 24 Aug 2026 23:53:03 +0000
Received: by mail-wr1-x431.google.com with SMTP id ffacd0b85a97d-47362928f65so2176037f8f.2
        for <barebox@lists.infradead.org>; Mon, 24 Aug 2026 16:53:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20251104; t=1787615580; x=1788220380; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=;
        b=quUuXvaeSKYVqGPNnR8fj7OY96tFfOOApbRlMYr3njcuoEr2/1aztryNCyCxhlJ/2+
         APembNrtPHrFU7OKQt+qUOV/pzCdOGgH6/v4zpM/LquaoVp6bnedPC8NFKx9Kvvwku+g
         PbuMd4/q7ibty6vUmhW39L8vGroF18RsZyDY7GusEYZG7F+3+pu4hw95HkH81UohScT6
         zcbHYlMlmVyidRsOoifPuPALI17RbknvxMOnqgtZtJiqVSZzpA6uFXHBS/3xqqq86LeQ
         dQf6sx19uGoLmkZt5ZtoDofQvnst70qNNm47Tw5OKSvrKCi7Srv3TzPai6W0HXvkULgD
         75tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1787615580; x=1788220380;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=oE+pw2CLxKdsKa7QobM1W20dcJUCF44EzDchY78OVSA=;
        b=HnLvGs+sA0wa8opfF/APUkDBhvFnO2hvLQr+dDz2787sSr1PHK+fHDJj8MivOw6b4Q
         ZEK9aUEIEe48Merb1BSsiShN8e9rCU9wsiXlcayBnvTX+ZCExt8UOfYRPj5lJDynhG5p
         CHZMrkMjLE6+ZvVt8rolTvUADo8EZMcjsM3UZ6BtYjWs7x00ntHwMWukFCccy9kS9Drh
         s0+Yh3j/PVgobYa81tz9vcRXmJ5ayamprk0FuEiKehGP/A3xVPYYsL5ddUjHVDt7UX5c
         BaUzHDt05zl5vaZW289tScgoCWATh4RHX3bHwhtfbxPsfnzuPMIl2My7KqIddq8k+/qa
         f0EA==
X-Gm-Message-State: AFuF++m1NiJApeURWQkeov9TpynjLmEHo4mfSCyxWwiMZMAElZd0FU+O
	TJswZS63Tyb2qvvCIjDQUigJy1x/VV5m/tYa79JYYcKbipr7W7WRU/xK
X-Gm-Gg: AR+sD111Dp4m9ktWO1dlAk1kiwiYBXEo+Oc+MELxrAwbrg4pVh9rninlBHxGrAQ416p
	CljUiF36ivBDHjlQxqpV5j86vXPTmUfH3bQsHf+HTyT9HjJ3HC2SNHc6H3w35npjhGMV3Sam322
	cXqIIgdtzxHAlt09d6+AtS3YX1ecLvqNzJVzcq1tsN01phdI4Q0epcv5uyoI3EE62neF5cbJOBu
	tpwzVfvV/Ju1kv86m3QturnnUqg5IBBtNDL+wHAkZQVCjXdmj/aQyAAJes+ynC6Faq/ed86FnOa
	aWFrhZAeczu4oLSvdAh068TEeKdqlktGuAFB23WKJQzlo6re7D/xiajyUGKFgqxBYkWOzUhJb+d
	Unpxbw9spMhEd9X7L+rNrQUNwVsuk0kkDhf1cklkik9yuBY8WfeknsIZo29EVXZ/n8jycc5igyW
	Bb8BrXkRgETuqH/V/AbdYRexLC88IwXCe2TS01/fIZCamnzne915tHU2Avkg7sisa3sVHmStCrW
	epi9AxZW6Qze64iDOtZGRvzSQlW/tq+RBN34Rt/1iT/0E8Bb0r0qjrUYQM1kQiD1JCd+plW6RRw
	qzUTfEUXZA==
X-Received: by 2002:a05:6000:2589:b0:482:bf17:e685 with SMTP id ffacd0b85a97d-482c0b88f19mr44900172f8f.11.1787615580313;
        Mon, 24 Aug 2026 16:53:00 -0700 (PDT)
Received: from CNCMK0001D007E ([213.195.92.95])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-482c9b69a60sm9845153f8f.1.2026.08.24.16.52.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Aug 2026 16:52:58 -0700 (PDT)
From: chalianis1@gmail.com
To: s.hauer@pengutronix.de
Cc: barebox@lists.infradead.org,
	Chali Anis <chalianis1@gmail.com>
Subject: [PATCH v2 1/3] state: make of_state_fixup() usable outside common/state/
Date: Tue, 25 Aug 2026 01:52:48 +0200
Message-ID: <20260824235250.94681-2-chalianis1@gmail.com>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260824235250.94681-1-chalianis1@gmail.com>
References: <20260824235250.94681-1-chalianis1@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260824_165302_382165_C3AAD8B0 
X-CRM114-Status: GOOD (  14.69  )
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
X-Stat-Signature: d1jt1qez14n9sfn4qa3bm41nbbt74kc1
X-Spamd-Result: default: False [-6.41 / 15.00];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	MID_CONTAINS_FROM(1.00)[];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,gmail.com:s=20251104];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_NA(0.00)[];
	DWL_DNSWL_NONE(0.00)[gmail.com:dkim];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	FREEMAIL_FROM(0.00)[gmail.com];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[chalianis1@gmail.com,barebox-bounces@lists.infradead.org];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RECEIVED_SPAMHAUS_PBL(0.00)[213.195.92.95:received];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	NEURAL_HAM(-0.00)[-1.000];
	PREVIOUSLY_DELIVERED(0.00)[barebox@lists.infradead.org];
	RCVD_TLS_LAST(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,gmail.com:+];
	FORGED_SENDER_FORWARDING(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	FREEMAIL_CC(0.00)[lists.infradead.org,gmail.com];
	RCVD_IN_DNSWL_NONE(0.00)[2a00:1450:4864:20::431:received];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Queue-Id: 76053201B02

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


