Delivery-date: Thu, 15 Feb 2024 13:19:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raai0-007Ord-2M
	for lore@lore.pengutronix.de;
	Thu, 15 Feb 2024 13:19:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1raai0-0001w3-3s
	for lore@pengutronix.de; Thu, 15 Feb 2024 13:19:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Sl/icvw1N3XA+kBSfr1YIw2o7plLxj+rjjDtpBfXEGg=; b=Koxml0kHoX53FVcPCKaUyB479e
	f0C1rigRhTkdmedrJiKopX9F/sz8cgkN8HFfh/fd/eF+ehVNrAxGHb3cAj4mshK/zMZpxDhguJ0di
	GoKI5L4tO1iJIZUCtXegjQvmdnRq9RUX+044S102UsYY3UvdBvWzDkdzf0fc+tfRjHuA1RF6fxqA/
	ZpICfz510EJKv8GTQGQEaQoLL8bo+3jwZkbXlipDUN36spsdqtdoPfUqalbQoi2sB6Ou6CfX8hBft
	5yD4CdgfcSpsONMOXOoAh+H7/WcyhsfOlPnBmiP3Ot6BPivXVJKKwLO0TfMdPYt+FUivk93b0Rw8n
	urtA4+AA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahR-0000000GCUp-36ZK;
	Thu, 15 Feb 2024 12:18:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1raahN-0000000GCSE-3ifH
	for barebox@lists.infradead.org;
	Thu, 15 Feb 2024 12:18:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahM-0001jt-CX; Thu, 15 Feb 2024 13:18:40 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-000shg-W8; Thu, 15 Feb 2024 13:18:40 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1raahL-001YuQ-2w;
	Thu, 15 Feb 2024 13:18:39 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 15 Feb 2024 13:18:36 +0100
Message-Id: <20240215121837.251013-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240215121837.251013-1-a.fatoum@pengutronix.de>
References: <20240215121837.251013-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240215_041841_974167_A7A056B3 
X-CRM114-Status: UNSURE (   7.98  )
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
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] clk: define empty stub for clk_hw_unregister
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We don't do clk unregistration and thus define clk_unregister as empty
stub. Let's do likewise for clk_hw_unregister.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index d76f175bbd49..25bba3e99971 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -875,6 +875,10 @@ static inline void clk_unregister(struct clk *clk)
 {
 }
 
+static inline void clk_hw_unregister(struct clk_hw *hw)
+{
+}
+
 #ifdef CONFIG_COMMON_CLK
 
 /**
-- 
2.39.2



