Delivery-date: Mon, 31 Aug 2026 21:37:11 +0200
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1x17oc-009O0Q-1j
	for lore@lore.pengutronix.de;
	Mon, 31 Aug 2026 21:37:11 +0200
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:3::133])
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPS id 0ED3E2032FA
	for <lore@pengutronix.de>; Mon, 31 Aug 2026 21:37:07 +0200 (CEST)
Authentication-Results: mx1.white.stw.pengutronix.de;
	dkim=pass header.d=lists.infradead.org header.s=bombadil.20210309 header.b=RfzrvTHE;
	spf=pass (mx1.white.stw.pengutronix.de: domain of "barebox-bounces+lore=pengutronix.de@lists.infradead.org" designates 2607:7c80:54:3::133 as permitted sender) smtp.mailfrom="barebox-bounces+lore=pengutronix.de@lists.infradead.org";
	dmarc=none
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=ox3TG/4TKKOIgoCDzgOskIlEDuK02LK8/96XVD7Yi58=; b=RfzrvTHEJpxuArhcWyPkyTYA7x
	u6kJUrAmM+SBZyfmwJgt7kUrcLvEbzLwfRpuS8Wnmoji8rXxcnLjvJsgV30C/1adwfOYTJ49ZHfZt
	QExiIQJPWc+NxceIclH4KHncMUBOVeQx5t2pBKYYi3E0LIXd7XWuEiGhQq2Jggdct9cbQJ/iu5Y9d
	l6eSF1tzVAzNOfY9W2flQ2V6S6fEimhvJyo7GliB3Kyg/cp73Lkn5XENjP719eyMXtwXuqX4vK8wB
	8JZXvu+7YDt87Je1r4rlY5slu2OXlPge2uTMPt+0u4roal/fh4JxCi3EP20w8Zyhug/2PQbWn+1PG
	n6P4I/Vg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17no-0000000ANo3-2ZnK;
	Mon, 31 Aug 2026 19:36:20 +0000
Received: from mx1.white.stw.pengutronix.de ([185.203.200.13])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1x17nj-0000000ANkd-0wBc
	for barebox@lists.infradead.org;
	Mon, 31 Aug 2026 19:36:17 +0000
Received: from drehscheibe.grey.stw.pengutronix.de (drehscheibe.grey.stw.pengutronix.de [IPv6:2a0a:edc0:0:c01:1d::a2])
	(Authenticated sender: relay-from-drehscheibe.grey.stw.pengutronix.de)
	by mx1.white.stw.pengutronix.de (Postfix) with ESMTPSA id 35727202485;
	Mon, 31 Aug 2026 21:36:09 +0200 (CEST)
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nd-004J3V-0J;
	Mon, 31 Aug 2026 21:36:09 +0200
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1x17nc-00000006Bjz-4849;
	Mon, 31 Aug 2026 21:36:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Subject: [PATCH 1/8] clk: stm32f4: allow building under COMPILE_TEST and fix the build
Date: Mon, 31 Aug 2026 21:35:48 +0200
Message-ID: <20260831193605.1474749-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260831_123615_434379_3FD1DFB8 
X-CRM114-Status: GOOD (  12.39  )
X-Spam-Score: -1.9 (-)
X-Spam-Report: Spam detection software, running on the system "bombadil.infradead.org",
 has NOT identified this incoming email as spam.  The original
 message has been attached to this so you can view it or label
 similar future email.  If you have any questions, see
 the administrator of that system for details.
 
 Content preview:  From: Ahmad Fatoum <a.fatoum@barebox.org> No in-tree defconfig
    combines ARCH_STM32 with this driver, so it has never been compiled and doesn't
    build: clk-stm32f4.c:1665:20: error: 'struct clk_mux' has no member named
    'width' 
 
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
X-Stat-Signature: 83gw3nmas56irc35z1zy64n3ujpsbdbp
X-Rspamd-Queue-Id: 0ED3E2032FA
X-Spamd-Result: default: False [-56.31 / 15.00];
	RECEIVED_AUTHENTICATED_BY_MX1(-50.00)[];
	BAYES_HAM(-3.00)[99.99%];
	DWL_DNSWL_MED(-2.00)[infradead.org:dkim];
	KNOWN_LIST_ID(-1.00)[barebox.lists.infradead.org];
	MID_CONTAINS_FROM(1.00)[];
	RCVD_IN_DNSWL_MED(-0.60)[2a0a:edc0:0:1101:1d::54:received,2607:7c80:54:3::133:from,2a0a:edc0:0:c01:1d::a2:received];
	RCVD_DKIM_ARC_DNSWL_MED(-0.50)[];
	R_MISSING_CHARSET(0.50)[];
	R_DKIM_ALLOW(-0.20)[lists.infradead.org:s=bombadil.20210309];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	DMARC_NA(0.00)[pengutronix.de];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWO(0.00)[2];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[lists.infradead.org:+];
	TAGGED_FROM(0.00)[lore=pengutronix.de];
	RCVD_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[a.fatoum@pengutronix.de,barebox-bounces@lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:7247, ipnet:2607:7c80:54::/48, country:US];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[]
X-Rspamd-Action: no action

From: Ahmad Fatoum <a.fatoum@barebox.org>

No in-tree defconfig combines ARCH_STM32 with this driver, so it has
never been compiled and doesn't build:

  clk-stm32f4.c:1665:20: error: 'struct clk_mux' has no member named 'width'

barebox' struct clk_mux carries a mask like Linux', so assign it
verbatim as upstream does; the tables already hold unshifted masks.

The symbol can't be enabled at all either: its prompt is gated on
COMPILE_TEST and it has no default, and the only in-tree selector of
ARCH_STM32 is ARCH_STM32MP, which uses clk-stm32mp1.c instead.

As I still hope to finish upstreaming my STM32F support one day, let's
just ensure the driver compile tests for now.

Fixes: 27923adcd1b7 ("clk: add clock driver for stm32f4 and stm32f7")
Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
 drivers/clk/Kconfig       | 4 ++--
 drivers/clk/clk-stm32f4.c | 2 +-
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/clk/Kconfig b/drivers/clk/Kconfig
index fe7056f8971b..e11361c43895 100644
--- a/drivers/clk/Kconfig
+++ b/drivers/clk/Kconfig
@@ -43,8 +43,8 @@ config CLK_SOCFPGA
 if COMMON_CLK
 
 config COMMON_CLK_STM32F
-	bool "STM32F4 and STM32F7 clock driver" if COMPILE_TEST
-	depends on ARCH_STM32
+	bool "STM32F4 and STM32F7 clock driver"
+	depends on ARCH_STM32 || COMPILE_TEST
 	help
 	  Support for stm32f4 and stm32f7 SoC families clocks
 
diff --git a/drivers/clk/clk-stm32f4.c b/drivers/clk/clk-stm32f4.c
index 343ee0e6e9b5..764603cc473a 100644
--- a/drivers/clk/clk-stm32f4.c
+++ b/drivers/clk/clk-stm32f4.c
@@ -1659,7 +1659,7 @@ static struct clk_hw *stm32_register_aux_clk(const char *name,
 
 		mux->reg = base + offset_mux;
 		mux->shift = shift;
-		mux->width = hweight8(mask);
+		mux->mask = mask;
 		mux->flags = 0;
 		mux_hw = &mux->hw;
 		mux_ops = &clk_mux_ops;
-- 
2.47.3



