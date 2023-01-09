Delivery-date: Mon, 09 Jan 2023 16:13:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqD-006ldz-Lf
	for lore@lore.pengutronix.de; Mon, 09 Jan 2023 16:13:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pEtqB-0003mr-9A
	for lore@pengutronix.de; Mon, 09 Jan 2023 16:13:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cp2CN9mAFhbNdqRYuPTvRLA9IwKK59cHpc7idYqanCY=; b=g2qB50hhS+tQRLM/qxYbOORViO
	CsljwkuunSxfmgxSBrFva9rc4LAqbB3aCLOBDp5OZ4FWADvJe/Mw0hP2NWOAPPbWr33yS7j16aS2d
	qCZxCiUL9mla4POxN7dAM9NawQ92J6BLXQU8fZfc/x8kceJ0/Z3jj2AqYcJParkle+V3d7R8vkDVl
	M/EjteDH2b5rmF3rZFfCFptPqa8jd4u7B3lAimdcjku7RR5W5M14usVTp0G1SJQcz5g6Vz0m6Q6/H
	pwixtZY4MaN/UTOYY4KFe013OsbxUApESdSbm7QYNtrCdAOCNCMJmUq1vGv5quDF840FyiQ0mgKrX
	Y5fM8O+Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoz-0028LR-2K; Mon, 09 Jan 2023 15:12:21 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pEtoc-00289h-Vp
	for barebox@lists.infradead.org; Mon, 09 Jan 2023 15:12:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-0003Mw-PU; Mon, 09 Jan 2023 16:11:57 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtob-004sbV-6I; Mon, 09 Jan 2023 16:11:57 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pEtoZ-008bxx-Mu; Mon, 09 Jan 2023 16:11:55 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  9 Jan 2023 16:11:49 +0100
Message-Id: <20230109151152.2052493-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
References: <20230109151152.2052493-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230109_071159_043090_98B63F36 
X-CRM114-Status: GOOD (  11.44  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/7] clk: add prepare/unprepare helpers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox doesn't use interrupts, so it need not differentiate between a
possibly sleeping prepare/unprepare and an atomic enable/disable.

Provide a wrapper that just expands to the already existing functions to
simplify porting of Linux kernel drivers.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/linux/clk.h b/include/linux/clk.h
index 4cece8ba5e67..bffed2bdcfe7 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -71,6 +71,7 @@ struct clk *clk_get(struct device *dev, const char *id);
  * Returns success (0) or negative errno.
  */
 int clk_enable(struct clk *clk);
+#define clk_prepare_enable(clk) clk_enable(clk)
 
 /**
  * clk_disable - inform the system when the clock source is no longer required.
@@ -85,6 +86,7 @@ int clk_enable(struct clk *clk);
  * disabled.
  */
 void clk_disable(struct clk *clk);
+#define clk_disable_unprepare(clk) clk_disable(clk)
 
 /**
  * clk_get_rate - obtain the current clock rate (in Hz) for a clock source.
-- 
2.30.2



