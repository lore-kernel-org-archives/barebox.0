Delivery-date: Wed, 25 Nov 2026 18:35:10 +0100
Received: from mx1.white.stw.pengutronix.de ([2a0a:edc0:0:b01:1d::107])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1xWGth-003Big-1E
	for lore@lore.pengutronix.de;
	Wed, 25 Nov 2026 18:35:10 +0100
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 83D89200F84
	for <lore@pengutronix.de>; Wed, 25 Nov 2026 18:35:05 +0100 (CET)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=j2EmV1Gt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=pengutronix.de;
	s=20260414; t=1795628105;
	h=from:from:sender:sender:reply-to:subject:subject:date:date:
	 message-id:message-id:to:to:cc:mime-version:mime-version:
	 content-transfer-encoding:content-transfer-encoding:list-id:list-help:
	 list-unsubscribe:list-subscribe:list-post:dkim-signature;
	bh=BwMUYMkpEzN/b7kK4dAo2QCI7kbuN24I/WItjNU2IoE=;
	b=e+u6XQYOBewYQB8is+qALQcjJmo2KPR5b7NP07XUd/0N2eJmsWd8eZWZUprtCXf0zgmPgY
	T1L9pWZLwHpZ7m+ZQS9ezWS1pBS9TL7E6hv92H4FoIMfpPGcjjcii5j0sBVILO7Ctda85j
	O1zSSO/G9piSDKpXJ2bWyW85aowbrAVRAnPdqKyeLaCzUpx7LHPWzgb84ZjkvLK9s3HwCU
	o6tPJ7qa/FyLzVgTiCzk9KiX0yzPYUD4GNiqZFyIdnXjN2xdxQX3XhoY8w/aT1xZHPstR/
	/ogekclYMdmLy+bbhLd7sDbb+AYoH5ZfkKPMvPblyIzHx3au4UQXRn+MADe8Pg==
ARC-Authentication-Results: i=1;
	mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=j2EmV1Gt;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=barebox.org (policy=none)
ARC-Seal: i=1; s=20260414; d=pengutronix.de; t=1795628105; a=rsa-sha256;
	cv=none;
	b=XkE5sneR4OsINZNaVoqhE/9fSsk2zSKzTCg8dfN2mltO7yup0Fy5S4OCorW5bYys1O/g4I
	WJSPL2J9kLPbjc7bb3kOZSPjmtP75dgKwA0b+iencBO8raavVqINe8fcOxAQ4dawFfw+Qp
	R1gpcQGT35p1hC5Fl+PIOClZNQ905bJPVoFKpBvHkDeR79etTCLhKUz3yWa1zJu8sKqeJN
	RS4427hGROeWCMGo4YKHpNDdpjxQrJoy6v02YdL9l6T3OHgCTShLfjgf7smyoy6WgxdVWj
	iGuVz/elL/8QzsADj9oxkq+FmCFjl2Ex9j50uByoV6mt1gb6LmmpxboidqZVvA==
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Unsubscribe-Post:List-Owner;
	bh=BwMUYMkpEzN/b7kK4dAo2QCI7kbuN24I/WItjNU2IoE=; b=j2EmV1GtHQegAjob+JsJ5FM/0U
	Jok5YkW3cjmD5uIBvNLQL2yCC2NZpAVz7MZr1tTEyod5PQbqNIYp3pz9qIV+XyQce8nnLUPZkClmT
	ZHXmaQm24FstXauss2yXrqhGqo5SSYETqAiO50kFFYPKPV/GTauG2/jzWIQ7tNEaAFzpW5AD39TJm
	gY9+EvlU3/cn9LzdCxnmGeDXsI0yXJb4qLMVxA6M6Nr6erzssPjNsA1ja580JgeV0xWUZlDikY8r1
	vVoLlqUp8fxEZL+OYXPDu4MsbmYzUOl6qYWfAb5D2WVBoIZWuV0Iv0NTw5E9MqBTs++woIaYB5L0M
	PyJjOTXA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWGsS-0000000AkdF-3k80;
	Wed, 25 Nov 2026 17:33:52 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.100.1 #2 (Red Hat Linux))
	id 1xWGsQ-0000000Akbl-2gIr
	for barebox@lists.infradead.org;
	Wed, 25 Nov 2026 17:33:52 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.guest.stw.pengutronix.de)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1xWGsP-00086w-00
	for barebox@lists.infradead.org; Wed, 25 Nov 2026 18:33:49 +0100
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Subject: [PATCH 1/2] clk: add clk_hw_set_rate_range()
Date: Wed, 25 Nov 2026 18:33:44 +0100
Message-ID: <20261125173348.1514894-1-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: a.fatoum@barebox.org
X-SA-Exim-Scanned: No (on metis.whiteo.stw.pengutronix.de); SAEximRunCond expanded to false
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20261125_093350_846800_99878995 
X-CRM114-Status: GOOD (  15.53  )
X-Spam-Score: -1.0 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@pengutronix.de> The barebox clock
    core has no notion of a clock rate range. clk_hw_init_rate_request() always
    initializes the request with [0, ULONG_MAX] and nothing ever acts on it. 
 
 Content analysis details:   (-1.0 points, 5.0 required)
 
  pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/, low
                             trust
                             [2a0a:edc0:2:b01:1d:0:0:104 listed in]
                             [list.dnswl.org]
  0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
  0.7 SPF_SOFTFAIL           SPF: sender does not match SPF record (softfail)
 -1.9 BAYES_00               BODY: Bayes spam probability is 0 to 1%
                             [score: 0.0000]
  0.9 DMARC_NONE             DMARC none policy
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
X-Stat-Signature: e59h6is1m5uc5z8psgnfqztfz44pndr5
X-Spamd-Result: default: False [-6.11 / 15.00];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	RCVD_IN_DNSWL_MED(-0.40)[2a0a:edc0:0:900:1d::77:received,2607:7c80:54:3::133:from];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[barebox.org : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RCVD_IN_DNSWL_LOW(-0.10)[2a0a:edc0:2:b01:1d::104:received];
	HAS_LIST_UNSUB(-0.01)[];
	ARC_SIGNED(0.00)[pengutronix.de:s=20260414:i=1];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@barebox.org,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_ONE(0.00)[1]
X-Rspamd-Action: no action
X-Rspamd-Server: mx1
X-Rspamd-Queue-Id: 83D89200F84

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

The barebox clock core has no notion of a clock rate range.
clk_hw_init_rate_request() always initializes the request with
[0, ULONG_MAX] and nothing ever acts on it.

In Linux, it's possible to restrict rate per consumer handle and from
provider side. As we do not have this separation in barebox, let's for
now implement only the provider side of the rate range support:

Ranges default to [0, ULONG_MAX], so no functional change just yet.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/clk/clk.c            | 53 ++++++++++++++++++++++++++++++++----
 include/linux/clk-provider.h |  2 ++
 include/linux/clk.h          |  4 +++
 3 files changed, 53 insertions(+), 6 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 60a875d27687..107903aa1449 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -172,8 +172,8 @@ void clk_hw_init_rate_request(const struct clk_hw *hw,
 
 	req->hw = (struct clk_hw *)hw;
 	req->rate = rate;
-	req->min_rate = 0;
-	req->max_rate = ULONG_MAX;
+	req->min_rate = hw->clk.min_rate;
+	req->max_rate = hw->clk.max_rate;
 }
 EXPORT_SYMBOL_GPL(clk_hw_init_rate_request);
 
@@ -233,8 +233,8 @@ void clk_hw_forward_rate_request(const struct clk_hw *hw,
 
 	req->hw = (struct clk_hw *)parent;
 	req->rate = parent_rate;
-	req->min_rate = old_req->min_rate;
-	req->max_rate = old_req->max_rate;
+	req->min_rate = max(parent->clk.min_rate, old_req->min_rate);
+	req->max_rate = min(parent->clk.max_rate, old_req->max_rate);
 }
 
 static int clk_core_round_rate(struct clk *clk, struct clk_rate_request *req);
@@ -365,6 +365,22 @@ int __clk_mux_determine_rate_closest(struct clk_hw *hw,
 }
 EXPORT_SYMBOL_GPL(__clk_mux_determine_rate_closest);
 
+static int clk_core_determine_round(struct clk *clk,
+				    struct clk_rate_request *req)
+{
+	/*
+	 * A request that wasn't initialized with clk_hw_init_rate_request()
+	 * or clk_hw_forward_rate_request() would be clamped to 0
+	 */
+	if (!req->min_rate && !req->max_rate)
+		pr_warn("%s: %s: clk_rate_request has no min and max rate\n",
+			__func__, clk->name);
+	else
+		req->rate = clamp(req->rate, req->min_rate, req->max_rate);
+
+	return clk->ops->determine_rate(clk_to_clk_hw(clk), req);
+}
+
 /*
  * Determine the rate @clk would settle on for the request @req, without
  * touching the hardware.  Mirrors Linux' clk_core_round_rate_nolock().
@@ -375,7 +391,7 @@ static int clk_core_round_rate(struct clk *clk, struct clk_rate_request *req)
 	struct clk *parent;
 
 	if (clk->ops->determine_rate)
-		return clk->ops->determine_rate(hw, req);
+		return clk_core_determine_round(clk, req);
 
 	parent = clk_get_parent(clk);
 
@@ -466,16 +482,21 @@ int clk_set_rate(struct clk *clk, unsigned long rate)
 
 	current_rate = clk_get_rate(clk);
 
+	rate = clamp(rate, clk->min_rate, clk->max_rate);
+
 	if (clk->ops->determine_rate) {
 		struct clk_rate_request req;
 		struct clk_hw *best_parent_hw;
 
 		hw = clk_to_clk_hw(clk);
 		clk_hw_init_rate_request(hw, &req, rate);
-		ret = clk->ops->determine_rate(hw, &req);
+		ret = clk_core_determine_round(clk, &req);
 		if (ret)
 			return ret;
 
+		if (req.rate < clk->min_rate || req.rate > clk->max_rate)
+			return -EINVAL;
+
 		if (req.rate == current_rate)
 			return 0;
 
@@ -563,6 +584,23 @@ int clk_hw_set_rate(struct clk_hw *hw, unsigned long rate)
 	return clk_set_rate(&hw->clk, rate);
 }
 
+/**
+ * clk_hw_set_rate_range - set the rate range a clock can run at
+ * @hw: clock to set the range of, must be registered already
+ * @min_rate: minimum rate in Hz, inclusive
+ * @max_rate: maximum rate in Hz, inclusive
+ *
+ * Rate requests for the clock, including those its children forward to it,
+ * are clamped to the range.
+ */
+void clk_hw_set_rate_range(struct clk_hw *hw, unsigned long min_rate,
+			   unsigned long max_rate)
+{
+	hw->clk.min_rate = min_rate;
+	hw->clk.max_rate = max_rate;
+}
+EXPORT_SYMBOL_GPL(clk_hw_set_rate_range);
+
 static int clk_fetch_parent_index(struct clk *clk,
 				  struct clk *parent)
 {
@@ -806,6 +844,9 @@ static int __bclk_register(struct clk *clk)
 		}
 	}
 
+	clk->min_rate = 0;
+	clk->max_rate = ULONG_MAX;
+
 	list_add_tail(&clk->list, &clks);
 
 	if (clk->ops->init) {
diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
index 65e6489e91e0..cef24a1a5dbf 100644
--- a/include/linux/clk-provider.h
+++ b/include/linux/clk-provider.h
@@ -66,6 +66,8 @@ void clk_hw_forward_rate_request(const struct clk_hw *hw,
 				 unsigned long parent_rate);
 
 int __clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req);
+void clk_hw_set_rate_range(struct clk_hw *hw, unsigned long min_rate,
+			   unsigned long max_rate);
 int clk_hw_determine_rate_no_reparent(struct clk_hw *hw,
 				      struct clk_rate_request *req);
 int clk_mux_determine_rate_flags(struct clk_hw *hw,
diff --git a/include/linux/clk.h b/include/linux/clk.h
index abcfdac0ebf8..6c58731ebd6a 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -397,6 +397,10 @@ struct clk {
 
 	struct clk **parents;
 	unsigned long flags;
+
+	/* set by the provider with clk_hw_set_rate_range() */
+	unsigned long min_rate;
+	unsigned long max_rate;
 };
 
 /**
-- 
2.47.3



