Delivery-date: Mon, 27 Nov 2023 07:51:28 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSp-00Aet9-1x
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:28 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSp-0001A7-MA
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:28 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=eALH3qu64eBQPhRvarSrQYwHo+AaMUm3/6Yme1ZVcG8=; b=BEgdKylO9gH5i1YCDXwX36bohN
	e7gwc5vnRRvB6qZ8Q6epexDj1iMQgArNW2Q1RQljVG31wS5M1bubeXKR0kalnmcTE3uTA2vO7TUbd
	XHruWhGdS8mYEmWb+fLcLs3edNKTvitHgRmrKalliq2kyUjG3ydR2hfkKm2I9FPpVBUiR5uBqE8jD
	AkkyJWvaZ0J63zCEyKj1Ys/e9Lmxuu7tF0fxGziTCz9iTOYLBQMZIp47DnPdIwFq9ABauvqCNgouW
	Y/kpdHc2ucjcdJUGGB2l3UeE919wbwDQelrFF++RB28ODCsO9PVeFeSNiolK8Up0U9xqbtvjFe3zO
	u1b8nVBQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRc-001bdv-05;
	Mon, 27 Nov 2023 06:50:12 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWM-29
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:59 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dt-GH; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-00Bsj5-3n; Mon, 27 Nov 2023 07:49:54 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-009GPh-06;
	Mon, 27 Nov 2023 07:49:54 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:42 +0100
Message-Id: <20231127064947.2207726-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_972977_76F91C1E 
X-CRM114-Status: GOOD (  10.22  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/13] clk: implement clk_hw_reparent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

clk_hw_reparent does a bit of work in Linux to update the cached clock
tree, but we have no cached clock tree in barebox, so just implement it
as empty stub.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 28ed2d2bfd66..18fda074fd95 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -431,6 +431,11 @@ struct clk_divider {
 extern const struct clk_ops clk_divider_ops;
 extern const struct clk_ops clk_divider_ro_ops;
 
+static inline void clk_hw_reparent(struct clk_hw *hw, struct clk_hw *new_parent)
+{
+	/* clk_get_parent always reads from HW, so nothing to update here */
+}
+
 unsigned long divider_recalc_rate(struct clk *clk, unsigned long parent_rate,
 		unsigned int val,
 		const struct clk_div_table *table,
-- 
2.39.2



