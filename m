Delivery-date: Thu, 15 Feb 2024 13:19:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raahz-007OrD-0m
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:19:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raahy-0001vY-I4
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:19:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t6p7/Vwh0OBlM5cq1MzBV7wCtA0eNnJfBJr6pubAQAE=; b=u3M2H5lnYwG0zKdpKhFTHypsf5
	VxPhPKhEwg1J6IA7Exwg/A/QBDIVKrRJzCCcWLMhEvVEjSyxLFkCj7QquDnn9WgO5Y95U1lKBW668
	zJXtZ0kBRcZiz4becCjTycdxWO69ubuq/JPELTxcIN543KFa5nCvK/N3bi/73bNaskmftcNZOt+dv
	YTOGwW6JKZyykEPwEoXA0zuxDkQEtV8QHMH2g1miuvwaW1t6Ngc93a/c1juWt1VYfmOqNiKG+4i0G
	hOGJuLhH+dgGWEZHTLgSKgYsZR0Q6NSOgCH2L89MeK7as+GA7mpVtXm/+F3+gCgxbWbvmYWgr7ui4
	yOrKBhqA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahT-0000000GCVd-0tRX;
	Thu, 15 Feb 2024 12:18:47 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahN-0000000GCSC-3iaw
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:18:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahM-0001js-Av; Thu, 15 Feb 2024 13:18:40 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-000shd-Uk; Thu, 15 Feb 2024 13:18:39 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-001YuQ-2m;
	Thu, 15 Feb 2024 13:18:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 13:18:35 +0100
Message-Id: <20240215121837.251013-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215121837.251013-1-a.fatoum@pengutronix.de>
References: <20240215121837.251013-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_041841_966920_7939E2B1 
X-CRM114-Status: GOOD (  13.71  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/3] clk: add dummy definitions for CLK_SET_RATE_GATE, CLK_SET_PARENT_GATE
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

CLK_SET_RATE_GATE and CLK_SET_PARENT_GATE mean that the clk itself or
its parent, respectively, needs to be gated before attempting a set
rate.

If this is not the case, the operation would fail in Linux with -EBUSY.
The usual way this is ported to barebox is by just omitting the flag,
because a well-behaving driver shouldn't be gating clocks before setting
rate anyway. Embrace this guard rail free life by defining the macros as
zero.

If in future, we decide to add them, we can always redefine them and
implement appropriate behavior.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 Documentation/devel/porting.rst | 1 -
 include/linux/clk.h             | 5 +++++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/Documentation/devel/porting.rst b/Documentation/devel/porting.rst
index 4e14ace691df..6d6cf059fc97 100644
--- a/Documentation/devel/porting.rst
+++ b/Documentation/devel/porting.rst
@@ -391,7 +391,6 @@ Miscellaneous Linux porting advice:
   * ``jiffies``: use ``get_time_ns()``
   * ``time_before``: use ``!is_timeout()``
   * ``clk_hw_register_fixed_rate_with_accuracy``: use ``clk_hw_register_fixed_rate`` without accuracy
-  * ``CLK_SET_RATE_GATE`` can be ignored
   * ``clk_prepare``: is for the non-atomic code preparing for clk enablement. Merge it into ``clk_enable``
 
 ***************************
diff --git a/include/linux/clk.h b/include/linux/clk.h
index 1bdfb21d509e..d76f175bbd49 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -240,6 +240,11 @@ static inline void clk_put(struct clk *clk)
 #define CLK_GATE_SET_TO_DISABLE	(1 << 0)
 #define CLK_GATE_HIWORD_MASK	(1 << 1)
 
+/* Ignored sanity checking flags */
+#define CLK_SET_RATE_GATE	0 /* must be gated across rate change */
+#define CLK_SET_PARENT_GATE	0 /* must be gated across re-parent */
+
+
 /**
  * struct clk_ops -  Callback operations for hardware clocks; these are to
  * be provided by the clock implementation, and will be called by drivers
-- 
2.39.2



