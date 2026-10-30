Delivery-date: Fri, 30 Oct 2026 11:55:18 +0100
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xMkGT-0057Hx-2m
	for lore@lore.pengutronix.de;
	Fri, 30 Oct 2026 11:55:18 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id B7378200AD1
	for <lore@pengutronix.de>; Fri, 30 Oct 2026 11:55:17 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g3m1Gqyo;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=If9h6d9T;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357718;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=wd+PpEjgAR8R5daORi/9ug/HkWtfQyp6UvrmeA5iC9M=;
	b=JKazfNQZZbe/RF9RfNrbRviRyGr0G2it9WejPB7ngoDGzgB4CpJhWArtjsoKRWsr0hsoJ/
	ci0u4aN//PmJgyazPBHn9Ve1KF5+mfWzAV5KeT2gsnkUzXa25kpWUo9HViMRNrTcGU916m
	bb27X6u7Dk0TsPLx97w4qK1tvmVBHZwhfkxkuHa6cF2mModDa86zfbmt+db+sQhRLlco5K
	UZmzhvhlCoFVCq91+gdU7HeM9zybdM4p3iwzE+rkmjLA7XZYlqjGLGdANXFfNJUYbZ9ynz
	CFwd8fa4IxYkg+iiHJFWgl5ZK8IzeNeB7rvJA9x2pCnKBtL/0P1iR3G0UdyckA==
ARC-Authentication-Results: i=2;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=g3m1Gqyo;
	dkim=fail ("headers rsa verify failed") header.d=pengutronix.de header.s=20260414 header.b=If9h6d9T;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none;
	arc=reject ("signature check failed: fail, {[1] = sig:pengutronix.de:reject}")
ARC-Seal: i=2; s=20260414; d=pengutronix.de; t=1793357718; a=rsa-sha256;
	cv=fail;
	b=cKtZmmA5Y0dhAu8xL1oXtnHJStAfhKDtSs3dhp7+T84Nralf7X3f+NZ5NCvJrA+rOu+fk1
	zuH/ClD/lLPUgLjzn9l6+bS8P9l0ARoNWAyec9yxu3H5rK31r0/7IUdeZhVnLg9zpWn1HL
	9Fl8HzHeoXPPIwMrsTwMu3KwC+D00xSjtZpIkMLDwWeoQlGN4rAsIJkb0AIWiwvqr07H1V
	ItmGUIUY9AWpw/8qJrrEP1aSsf895/rs21UTY77Tuux1v18Q2qbcN3zLrhDEtfCtCadYll
	Txb9ZLmsukjjqeQ/p4Y4uOdUSVrRvHnqpgqakBdcuEXXh8w21/GGjYAYsqZ0oQ==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Unsubscribe-Post:
	List-Owner; bh=wd+PpEjgAR8R5daORi/9ug/HkWtfQyp6UvrmeA5iC9M=; b=g3m1GqyoQcqY8V
	lrPEtIUmlL8k5/NGGFbwR7ishecwXFLJPh7NIvATahTltrJHdKmZEa7uJkqyc3tAPMnCj54LROdj2
	aJl4T+klSGqJiFxpVFfcZcCb4L6zXyY5u+bD1iKakT9gtrpPw91453tK1zg/+zKkW0XXfH1cOJvR6
	0xB3H+2ZKrC4+WSF9WABwT9d6PrG0DiTTr1s19VHaHS/6r7wVLl7IMxJZXvrguogA90CbIH58bKJc
	xT6EwJ/EdXu/OT4zcdnYETukIkf6vn6O9aYWIMnppj1x0nTk0QoRSuYV2doIdspUccgGWggahcQ1i
	58iudp6ECB3Kmm8a/W7A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFM-0000000BSpQ-45pI;
	Fri, 30 Oct 2026 10:54:08 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xMkFH-0000000BSlE-1xXp
	for barebox@lists.infradead.org;
	Fri, 30 Oct 2026 10:54:06 +0000
Received: from [127.0.1.1] (unknown [IPv6:2a02:560:5ca5:d100:9ebf:dff:fe00:fdb5])
	(Authenticated sender: sha@pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 92CC82020BA;
	Fri, 30 Oct 2026 11:54:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wd+PpEjgAR8R5daORi/9ug/HkWtfQyp6UvrmeA5iC9M=;
	b=If9h6d9TWVvSBDGmZPzelssfyiXVZotbguovI/ZOObAuGIr01olUyYIXq6GT9di09JIiYI
	pngxbEfmdPRnNXd1LLsqUW1mUi4WuhUKDMJKROk+0ngKD203M8uBqF8OUuHULlMsCP5rDX
	SunRo+EN2ej+xrhqGqffBw1bvoprvf4LOtceW3vZLOU7QQHSOaxQKTfgoh2h50JgyR1pFW
	FTmGSbPTHHVVhStNpTPnoFijtGjYUUqHFEqqg+wSAnysLnO/RCJfBWKeNl/F4GOarskiED
	RdU1Oudh1Dz32giE5y18c8liew73nXMKkuhgJhmeV7vmckDlchdLHIzs+HTtuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1793357640;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=wd+PpEjgAR8R5daORi/9ug/HkWtfQyp6UvrmeA5iC9M=;
	b=aHGDIIYSO0T+wy1vdhBZN6EwgoaRwPYORH4ReCu5K6K1OMC4+xD1Wy7ciIgUp9q/N0VeJy
	IlvfXrPyLFfGIOZYxexRUOKkFiSRpaiNKDNUvNNMGwW77ixwVkcHmGwwD1/ABimLS9oopI
	zFbU1Wd3wv1zmoCzCS4l30yUSEdBAaFspHABYpirz6gaOP7CKdaLNFOBKt/zkUWzxDINAy
	uR6JyB5MOUYTR/ThR3VZLEyPOaOLNcivAEoSIHr0fAwuvZoW6VxxXCSzzTRSwjgwGlmT7m
	aDrtaAFn/7aTW0XroWOtuJM+sPH6p+vXfyNmhDGOPeML8x1isXopn7TRS1pKsw==
ARC-Authentication-Results: i=1;
	ORIGINATING;
	auth=pass smtp.auth=sha@pengutronix.de smtp.mailfrom=s.hauer@pengutronix.de
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1793357640; a=rsa-sha256;
	cv=none;
	b=HMYcTQlE5s8tW0wXg7mY2WeZhMXI+SicUGG3srOeZC/VmAGzsQdx6sSd+dcF43x+5+fm+8
	DNpddWPAzUh1ZYVu4pfDS2vMmMzIOJ8Od6Hrm1ZAd/866TlyDtPcSwENxeywX1Lv6/e1+0
	KGxgo4tHj/GKpanJstnXTq6VOjw9WogLA8kUm9FGMcdsBL0PicLUSiVjnqFOljsYHcVFZz
	0rGOTXABys9kEzkpj/QTOrKuUvA5kEuCrQb7tPHQiqYZNTfKKX7uEVBRtoXTOna5ZGOi1B
	JAPyj23oVRn6E31YkCjOIsz5pfr6HmUCwakjHqmf4WObCyhyDE47/QA4aErCyQ==
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Fri, 30 Oct 2026 11:53:59 +0100
Subject: [PATCH 01/10] globalvar: add scopes to snapshot and restore
 globalvars
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20261030-boot-globalvar-stack-v1-1-a03803e1100c@pengutronix.de>
References: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
In-Reply-To: <20261030-boot-globalvar-stack-v1-0-a03803e1100c@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1793357640; l=7398;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=9neXRn9UI72rLbk4QP/D427M4AMNvPFUFynPGqS+FqA=;
 b=TfKZp5plIXj+mG4Vn8TUII9TFfi/5nvclfSPnt5CC4dklXinyK5O7Jf2nDDTM2en0LRKHGjQs
 bxfW58+oLHFC9H+jjXeKlQjp8qKIzGXPYdrW25GogULyGbUL1iiJxMO
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261030_035403_676539_50CDD299 
X-CRM114-Status: GOOD (  17.34  )
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
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
  0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
                             envelope-from domain
 -0.1 DKIM_VALID             Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from author's
                             domain
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
X-Spamd-Result: default: False [-56.41 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[100.00%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:pengutronix.de:reject}];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	MAILLIST(-0.20)[mailman];
	RCVD_IN_DNSWL_MED(-0.20)[2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_ALL(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	RCVD_COUNT_THREE(0.00)[3];
	RCPT_COUNT_ONE(0.00)[1];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	DKIM_MIXED(0.00)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=2];
	NEURAL_HAM(-0.00)[-1.000];
	FROM_NEQ_ENVFROM(0.00)[s.hauer@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	R_DKIM_REJECT(0.00)[pengutronix.de:s=20260414];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+,pengutronix.de:-];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Stat-Signature: effr1cztmmqqg7h17yzt5mm3qbpxcwc6
X-Rspamd-Queue-Id: B7378200AD1

Code that runs foreign code, like boot scripts, often wants to revert
whatever that code changed in the global namespace afterwards. So far
this is done by hand for each use case: either by saving and restoring a
fixed list of variables, or by putting variables into a dedicated
namespace which is cleared afterwards.

Add globalvar_scope_push() and globalvar_scope_pop() to do this
generically. A scope records the current values of all globalvars whose
name begins with one of the given prefixes. Popping it restores changed
values, removes variables created in the meantime and creates removed
variables again. Variables are only removed or recreated if they were
created with globalvar_add_simple(), which is what the shell's global
command and most dynamically created variables use. For all other
globalvars, which are backed by a C variable, only the value is
restored, through the regular setter so the C variable follows.

Scopes can be nested as long as they are popped in reverse order.

Assisted-by: Claude:claude-opus-5-5
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 common/globalvar.c  | 142 ++++++++++++++++++++++++++++++++++++++++++++++++++++
 include/globalvar.h |  29 +++++++++++
 2 files changed, 171 insertions(+)

diff --git a/common/globalvar.c b/common/globalvar.c
index 876379b253..4686378ded 100644
--- a/common/globalvar.c
+++ b/common/globalvar.c
@@ -456,6 +456,148 @@ void globalvar_set_match(const char *match, const char *val)
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
+	const char * const *prefixes;
+	struct list_head vars;
+};
+
+static bool globalvar_scope_match(const struct globalvar_scope *scope,
+				  const char *name)
+{
+	const char * const *prefix;
+
+	for (prefix = scope->prefixes; *prefix; prefix++)
+		if (str_has_prefix(name, *prefix))
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
+ * @prefixes: NULL terminated array of name prefixes to snapshot, which
+ *            must stay valid until globalvar_scope_pop()
+ *
+ * Records the current value of all globalvars whose name starts with one
+ * of @prefixes. A later globalvar_scope_pop() reverts all changes done
+ * to these variables in the meantime, including adding and removing them.
+ * Scopes can be nested, but must be popped in reverse order.
+ *
+ * Return: the scope to be passed to globalvar_scope_pop()
+ */
+struct globalvar_scope *__globalvar_scope_push(const char * const *prefixes)
+{
+	struct globalvar_scope *scope;
+	struct param_d *p;
+
+	scope = xzalloc(sizeof(*scope));
+	scope->prefixes = prefixes;
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
index e369616c63..7fbfdd1284 100644
--- a/include/globalvar.h
+++ b/include/globalvar.h
@@ -10,6 +10,24 @@
 
 extern struct device global_device;
 
+struct globalvar_scope;
+
+/**
+ * globalvar_scope_push - snapshot a set of globalvars
+ * @...: name prefixes of the globalvars to snapshot
+ *
+ * See __globalvar_scope_push(). The scope borrows the prefixes until
+ * globalvar_scope_pop(). Collecting them in a static array makes the
+ * compiler reject prefixes that don't live that long, as only string
+ * literals and addresses of static objects are allowed as initializers.
+ *
+ * Return: the scope to be passed to globalvar_scope_pop()
+ */
+#define globalvar_scope_push(...) ({					\
+	static const char * const __prefixes[] = { __VA_ARGS__, NULL };	\
+	__globalvar_scope_push(__prefixes);				\
+})
+
 #ifdef CONFIG_GLOBALVAR
 
 static inline const char *globalvar_get(const char *name)
@@ -24,6 +42,9 @@ char *globalvar_get_match(const char *match, const char *separator);
 void globalvar_set_match(const char *match, const char *val);
 void globalvar_set(const char *name, const char *val);
 
+struct globalvar_scope *__globalvar_scope_push(const char * const *prefixes);
+void globalvar_scope_pop(struct globalvar_scope *scope);
+
 int globalvar_add_simple_string(const char *name, char **value);
 int globalvar_add_simple_int(const char *name, int *value,
 			     const char *format);
@@ -126,6 +147,14 @@ static inline void globalvar_set_match(const char *match, const char *val) {}
 
 static inline void globalvar_set(const char *name, const char *val) {}
 
+static inline struct globalvar_scope *
+__globalvar_scope_push(const char * const *prefixes)
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



