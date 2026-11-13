Delivery-date: Fri, 13 Nov 2026 08:24:44 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xRleN-00AL08-2U
	for lore@lore.pengutronix.de;
	Fri, 13 Nov 2026 08:24:44 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id C83BF201544
	for <lore@pengutronix.de>; Fri, 13 Nov 2026 08:24:42 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=utUllbn+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Atamg2ji;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554683;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=Bi6IzsYilSwccH0Ad68Mrf9DSQwTQE7VRGH4xiTlYzE=;
	b=VOz3X3Rg5/Nr/zi4XGW9eAsddqF7vlCO8+CmEcmXFRVpPV7CK1RPvhFx4Y6yz1Khijq/x0
	Ya3pAnxXUB3lAbRg7DiQ1grQAjgfjW+sifF/GrHct+hLieVDYrmRh3sU42AecfUPNuDMnI
	0+Rgfix8EZQZMNLFpoOOqBLtQ8BZwXuj5GMVhkji+RCdA/RBm19MMHPYc24TFPcyr6Qn/4
	hQTHptdG6fOwV0zfW8tEh3IYsBquQZy/9mnUR85oO4htWEY5f56auTltqmeESU4S+ddefd
	0jtLDMbXIOq2oiNrnm9wHbAXOfmSpSOAYGwTsYFYM+sZCvV9/e3RE8y1+8OjRQ==
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1794554683; a=rsa-sha256;
	cv=pass;
	b=ekWooqArS9RN+8V5nhY8T2bhMNQEXG9UJ/R5oZ8J3juL1HUYo4UxfBHJ/mSLZV7hxGZP4T
	8No41VcFXjvCusl5h84KN9loVC736z+p4Ryr62w7fbU0d+mygeCNu5Cp4ImHLh7sLa/2Xi
	66rc/CtagMUJGtlV4ySarotd3kKOwSwhyI5Kz8lQPT65U/+LhM8UT3R8F/0+D7Dg/KnvrK
	BEr7DgcuboBPi2xhdcZWx21Mhvu0a6mESS7InlONeOFGD8JSXIVlR6f/lsfpSFUwfzyf8s
	lR/JJxkbLloMUBtWKoyzT6gK1BYdP4JOOTv9guoKkjGpoJAg8MYH+YYVQ4WHcg==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=utUllbn+;
	dkim=pass header.d=pengutronix.de header.s=20260414 header.b=Atamg2ji;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=pass ("pengutronix.de:s=20260414:i=1")
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=Bi6IzsYilSwccH0Ad68Mrf9DSQwTQE7VRGH4xiTlYzE=; b=utUllbn+VVOrNw
	en+llyKKB7CDOVvilzLGC5oXsOu9POkEqvDdBp7rWqWgU+hJ8IUt6gVLYsLYdWoXlhzh4mXcR8EN0
	5V+oR8YhC/FSfqn0QzkwNswL3FCx4dccDDZe50bIoh3fZMzDC7bR1W1vWQj2vr8LosH1eIVCXa8ca
	h9EY3KLND+/P+02h2uAoeshSI3dBN95UI0p5KC76VO7rlWrcO+gHewK6R2kOSKeIKmtprwt0NrFiD
	ceK2g8shz+Sqep2I8c0d5jWTM3vU91cHbmhwPcUkWI4mzKytwMyFOPlOgspNYUlsMMnKr+tAvIyt9
	dg1yC0zDmUaa7MfpUirQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlab-0000000Bt45-0Olq;
	Fri, 13 Nov 2026 07:20:49 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xRlaV-0000000BszO-36am
	for barebox@lists.infradead.org;
	Fri, 13 Nov 2026 07:20:47 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5d79:c700:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 89A11201544;
	Fri, 13 Nov 2026 08:20:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bi6IzsYilSwccH0Ad68Mrf9DSQwTQE7VRGH4xiTlYzE=;
	b=Atamg2jiSqq9KCDZx6vEa6FyrSBvAd22VJ8bWGf21CDZ4igh+bFNbDLia+jq6IYgBUKjOy
	NP67FVQqtveU17AbVi1kPD4Ql9yq9hOdtGToEqSo8BdPkum/b8Xm1AAhvS+BVM3fnmB7qc
	HX5gGtBulgzhwnuJnHyvLdGtYsBrgFbZmaE2Kj2l2ItmQBY7K7rLx32B2t6zPxk8QVpBeE
	CpoZbhEeXKH/IacjX2F6KnamFTW1PPOh3biujfUGj6pYKluD5xc1xhgLDu94PgxJ6k3r1R
	kCxs4/lnkkXT8s5F09WWPjnTc4NJe4P6XkfD435LvwBPtPqIn+MSquR9aHopNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1794554441;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Bi6IzsYilSwccH0Ad68Mrf9DSQwTQE7VRGH4xiTlYzE=;
	b=FD5Jhd1d70D/k+yd2Lc7XLU1xXDMF5NOTxUL92rubaEm1q8AZ92TL8jg00RY6jnpqrh4IE
	2agtgn3x1vmLavD1ko9UQNxwzjMYoRR5FGzolGFenlboTyr0Mu+gfsPaQ9wMc6o/ymeDxf
	H9DOmnSidx5Ls5C/r/GcAYEwWKzXXyvTfOGVp14L+NiKKjre3j8GsPpzKAB77vFHXnL+82
	RdSTX74zN3RpGOChMaK6Y9pWq4+2LJ42M0GTlwk58c/aDxSeBwO/P8FqvLNQ2USUGOD0d2
	GU83xqUoe3p/fMwlB6H3hIAys7nsNs53dyOemTewLjfVCF1Vh+pe9LSI9CmfVQ==
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1794554441; a=rsa-sha256;
	cv=none;
	b=RL1ka5XT+sHuduBlz++lFGHMmF9w3N9HxeLkFzY74g2bPzj20zTdcNAm7zrtPK0XK8K+7R
	fy23lWznxDZRPKmpnOxb0hMQzG9hBQfnUZH2rdl08AhWxK/tDfraXVEIKXhv3CJIJ3ygPF
	jNdJWP0/PqQHgXYLfakI4Z9jzyi5PiFuWGKl1sU3SX5S88F7MyOyWd5JLGY/6SH6kzJ/jy
	YO2izh0bPNisuyTFRhpd62kjr8A/Zac2NynsmdZNC2X6PBcprw6eoCKT/ntdy2RYhnwONL
	UG6qSPfWjWL/0WgBadIo++t6ir6XXISojFJeXwliOVW23ftSRNzIfgtoGori9g==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 13 Nov 2026 08:20:36 +0100
Subject: [PATCH v2 1/9] globalvar: add scopes to snapshot and restore
 globalvars
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261113-boot-globalvar-stack-v2-1-14c0f0a0986e@pengutronix.de>
References: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
In-Reply-To: <20261113-boot-globalvar-stack-v2-0-14c0f0a0986e@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1794554441; l=7498;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=cfd/X07pYcmKZT4RejkXzj6qS4lk/Qv4UuOJ86cLdUc=;
 b=C7WyWVAL6KnLKu5NSClQFLgoLXPEZgeQK7wLS6g/hg3KUc7ZXGTkIvuORm8nl70K2AIGrFiH/
 ab+9jz5IStKAIuFnutpFWaU9OvX1aNEIw8J2hDKsh4F1IrlgP3pyNyl
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261112_232044_125743_56276A93 
X-CRM114-Status: GOOD (  16.43  )
X-Spam-Score: -2.1 (--)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  Code that runs foreign code, like boot scripts, often wants
    to revert whatever that code changed in the global namespace afterwards.
   So far this is done by hand for each use case: either by saving and [...] 
 
 Content analysis details:   (-2.1 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
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
X-Spamd-Result: default: False [-60.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	ARC_ALLOW_TRUSTED(-2.00)[pengutronix.de:s=20260414:i=1];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_ALLOW(-1.00)[pengutronix.de:s=20260414:i=1];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309,pengutronix.de:s=20260414];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[3];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCPT_COUNT_TWO(0.00)[2];
	DMARC_NA(0.00)[pengutronix.de];
	FORWARDED(0.00)[barebox@lists.infradead.org];
	FORGED_SENDER(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	TO_DN_ALL(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: C83BF201544
X-Stat-Signature: hf71auhuhbkzdowjzuscf7bgdq6wphbo
X-Rspamd-Action: no action

Code that runs foreign code, like boot scripts, often wants to revert
whatever that code changed in the global namespace afterwards. So far
this is done by hand for each use case: either by saving and restoring a
fixed list of variables, or by putting variables into a dedicated
namespace which is cleared afterwards.

Add globalvar_scope_push() and globalvar_scope_pop() to do this
generically. A scope records the current values of all globalvars whose
name matches one of the given fnmatch() patterns, as globalvar_remove()
already takes them. Popping it restores changed values, removes
variables created in the meantime and creates removed variables again.
Variables are only removed or recreated if they were created with
globalvar_add_simple(), which is what the shell's global command and
most dynamically created variables use. For all other globalvars, which
are backed by a C variable, only the value is restored, through the
regular setter so the C variable follows.

Scopes can be nested as long as they are popped in reverse order.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 143 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/globalvar.h |  29 +++++++++++
 2 files changed, 172 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 876379b253..5ec40635dd 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -456,6 +456,149 @@ void globalvar_set_match(const char *match, const char *val)
 	}
 }
 
+struct globalvar_scope_var {
+	struct list_head list;
+	char *name;
+	char *value;
+	bool unqualified;
+	bool seen;
+};
+
+struct globalvar_scope {
+	const char * const *patterns;
+	struct list_head vars;
+};
+
+static bool globalvar_scope_match(const struct globalvar_scope *scope,
+				  const char *name)
+{
+	const char * const *pattern;
+
+	for (pattern = scope->patterns; *pattern; pattern++)
+		if (!fnmatch(*pattern, name, 0))
+			return true;
+
+	return false;
+}
+
+static struct globalvar_scope_var *
+globalvar_scope_find(struct globalvar_scope *scope, const char *name)
+{
+	struct globalvar_scope_var *var;
+
+	list_for_each_entry(var, &scope->vars, list)
+		if (!strcmp(var->name, name))
+			return var;
+
+	return NULL;
+}
+
+/**
+ * __globalvar_scope_push - snapshot a set of globalvars
+ * @patterns: NULL terminated array of fnmatch() patterns of the names
+ *            to snapshot, which must stay valid until globalvar_scope_pop()
+ *
+ * Records the current value of all globalvars whose name matches one of
+ * @patterns, e.g. "bootm.*" for all variables in the bootm namespace. A
+ * later globalvar_scope_pop() reverts all changes done to these variables
+ * in the meantime, including adding and removing them. Scopes can be
+ * nested, but must be popped in reverse order.
+ *
+ * Return: the scope to be passed to globalvar_scope_pop()
+ */
+struct globalvar_scope *__globalvar_scope_push(const char * const *patterns)
+{
+	struct globalvar_scope *scope;
+	struct param_d *p;
+
+	scope = xzalloc(sizeof(*scope));
+	scope->patterns = patterns;
+	INIT_LIST_HEAD(&scope->vars);
+
+	dev_for_each_param(&global_device, p) {
+		struct globalvar_scope_var *var;
+
+		if (!globalvar_scope_match(scope, p->name))
+			continue;
+
+		var = xzalloc(sizeof(*var));
+		var->name = xstrdup(p->name);
+		var->value = xstrdup(p->get(p->bobj, p) ?: "");
+		var->unqualified = p->flags & PARAM_GLOBALVAR_UNQUALIFIED;
+		list_add_tail(&var->list, &scope->vars);
+	}
+
+	return scope;
+}
+
+/**
+ * globalvar_scope_pop - revert globalvars to a snapshot
+ * @scope: the scope returned by globalvar_scope_push()
+ *
+ * Restores all globalvars covered by @scope to the values they had when
+ * the scope was pushed: changed values are set back, variables created
+ * in the meantime are removed and removed variables are created again.
+ * Variables which were not created with globalvar_add_simple() are never
+ * removed or recreated, only their values are restored.
+ *
+ * @scope is freed afterwards.
+ */
+void globalvar_scope_pop(struct globalvar_scope *scope)
+{
+	struct globalvar_scope_var *var, *vtmp;
+	struct param_d *p, *tmp;
+	int ret;
+
+	if (!scope)
+		return;
+
+	dev_for_each_param_safe(&global_device, p, tmp) {
+		const char *cur;
+
+		if (!globalvar_scope_match(scope, p->name))
+			continue;
+
+		var = globalvar_scope_find(scope, p->name);
+		if (!var) {
+			if (!(p->flags & PARAM_GLOBALVAR_UNQUALIFIED))
+				continue;
+
+			pr_debug("scope: removing global.%s\n", p->name);
+			param_remove(p);
+			continue;
+		}
+
+		var->seen = true;
+
+		cur = p->get(p->bobj, p) ?: "";
+		if (!strcmp(cur, var->value))
+			continue;
+
+		pr_debug("scope: restoring global.%s: \"%s\" -> \"%s\"\n",
+			 p->name, cur, var->value);
+
+		ret = dev_set_param(&global_device, p->name, var->value);
+		if (ret)
+			pr_warn("Cannot restore global.%s=\"%s\": %pe\n",
+				p->name, var->value, ERR_PTR(ret));
+	}
+
+	list_for_each_entry_safe(var, vtmp, &scope->vars, list) {
+		if (!var->seen && var->unqualified) {
+			pr_debug("scope: recreating global.%s=\"%s\"\n",
+				 var->name, var->value);
+			globalvar_add_simple(var->name, var->value);
+		}
+
+		list_del(&var->list);
+		free(var->name);
+		free(var->value);
+		free(var);
+	}
+
+	free(scope);
+}
+
 void globalvar_set(const char *name, const char *val)
 {
 	dev_set_param(&global_device, name, val);
diff --git a/include/globalvar.h b/include/globalvar.h
index e369616c63..5712bad7f9 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -10,6 +10,24 @@
 
 extern struct device global_device;
 
+struct globalvar_scope;
+
+/**
+ * globalvar_scope_push - snapshot a set of globalvars
+ * @...: fnmatch() patterns of the globalvar names to snapshot
+ *
+ * See __globalvar_scope_push(). The scope borrows the patterns until
+ * globalvar_scope_pop(). Collecting them in a static array makes the
+ * compiler reject patterns that don't live that long, as only string
+ * literals and addresses of static objects are allowed as initializers.
+ *
+ * Return: the scope to be passed to globalvar_scope_pop()
+ */
+#define globalvar_scope_push(...) ({					\
+	static const char * const __patterns[] = { __VA_ARGS__, NULL };	\
+	__globalvar_scope_push(__patterns);				\
+})
+
 #ifdef CONFIG_GLOBALVAR
 
 static inline const char *globalvar_get(const char *name)
@@ -24,6 +42,9 @@ char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 void globalvar_set(const char *name, const char *val);
 
+struct globalvar_scope *__globalvar_scope_push(const char * const *patterns);
+void globalvar_scope_pop(struct globalvar_scope *scope);
+
 int globalvar_add_simple_string(const char *name, char **value);
 int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format);
@@ -126,6 +147,14 @@ static inline void globalvar_set_match(const char *match, const char *val) {}
 
 static inline void globalvar_set(const char *name, const char *val) {}
 
+static inline struct globalvar_scope *
+__globalvar_scope_push(const char * const *patterns)
+{
+	return NULL;
+}
+
+static inline void globalvar_scope_pop(struct globalvar_scope *scope) {}
+
 static inline int nvvar_load(void)
 {
 	return 0;

-- 
2.47.3



