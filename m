Delivery-date: Fri, 03 Oct 2025 12:38:26 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v4dBC-003p1V-0B
	for lore@lore.pengutronix.de;
	Fri, 03 Oct 2025 12:38:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1v4dBB-0003Sd-H0
	for lore@pengutronix.de; Fri, 03 Oct 2025 12:38:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=S+cQJqRp3EF7hTHOpw0Yl3jbbJ00WaPX3K6ol2akKkQ=; b=uz29SggnTppEh89c0lGjRA6f/q
	qStI4wSCnqtufks8ArES/KMMSDxEoLe1yyQzEgtaGLoQ/Y4oiJjMKKT5xg9wQnVrtOhcJNpti4OSf
	Ck0IrsGaWqM8ZtPMcYqrHkmROhYLoNBYVZbD40rtAtC9JfDf2tpKncae1fK9rhxyKQRV3wSh7za5d
	1924pwmu2Jx85tTQdJfoaq4dn0752Hy6NWWQtf0NedQdl6n0Vs/xsrJjvxKkE9xpkSRb5E72H2Fhb
	5bSoxMHKmKmEZBvS3CFtRUFrEqBT+ZjV850iJ309Di+3YgOODFbHfF1xSTVVvA4cV2BHKl2rfaIdC
	IU6SvlDg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4dAS-0000000C2mZ-1wPO;
	Fri, 03 Oct 2025 10:37:40 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1v4dAP-0000000C2lk-18L5
	for barebox@lists.infradead.org;
	Fri, 03 Oct 2025 10:37:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1v4dAL-0003MP-FH
	for barebox@lists.infradead.org; Fri, 03 Oct 2025 12:37:33 +0200
Received: from dude04.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::ac])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1v4dAL-001jSi-0w
	for barebox@lists.infradead.org;
	Fri, 03 Oct 2025 12:37:33 +0200
Received: from localhost ([::1] helo=dude04.red.stw.pengutronix.de)
	by dude04.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <m.grzeschik@pengutronix.de>)
	id 1v4dAL-00000008Vhc-0nIg
	for barebox@lists.infradead.org;
	Fri, 03 Oct 2025 12:37:33 +0200
From: Michael Grzeschik <m.grzeschik@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri,  3 Oct 2025 12:37:20 +0200
Message-ID: <20251003103720.2028460-1-m.grzeschik@pengutronix.de>
X-Mailer: git-send-email 2.47.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20251003_033737_304988_98569B94 
X-CRM114-Status: UNSURE (   8.18  )
X-CRM114-Notice: Please train this message.
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
X-Spam-Status: No, score=-0.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	SUBJECT_IN_BLACKLIST,SUBJECT_IN_BLOCKLIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] clk: clk_set_parent: skip any operation if current and new parents are equal
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Michael Grzeschik <m.grzeschik@pengutronix.de>
---
 drivers/clk/clk.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 89a007a12c5..ac5b83cf8b4 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -302,6 +302,9 @@ int clk_set_parent(struct clk *clk, struct clk *newparent)
 	if (IS_ERR(newparent))
 		return PTR_ERR(newparent);
 
+	if (newparent == curparent)
+		return 0;
+
 	if (!clk->num_parents)
 		return -EINVAL;
 	if (!clk->ops->set_parent)
-- 
2.47.3



