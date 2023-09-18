Delivery-date: Mon, 18 Sep 2023 19:06:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiHhe-002I82-1S
	for lore@lore.pengutronix.de; Mon, 18 Sep 2023 19:06:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qiHhc-0007K4-4y
	for lore@pengutronix.de; Mon, 18 Sep 2023 19:06:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=NNeOIWFENfGi8/YYk7+WSoU6FyExRAa9wbgga/VhWrQ=; b=RYbCZBUsBDgujXrDz3SZnDXds8
	hshiulTBffGazvOPX0fCnqgCruLR1vM/DJ+lFsGv1RDeBXXMVbx4qFxAlMPUoNnlBOJP3Y2XP/ctl
	lc/Rf0N2UIwMrMEVtQoQ+d5Lroa3OSxJrsfqQAuh5Nk5TqDRqPGvX580iM85uop3mCqK4NQYAl1x2
	vgJ4GZ6kFUWTkCcwx7pkmh0eNxY2AS6hfDXjsRjLH/ovyds23qzFgddjJFEKv5RrxkDRWE2BqzMJn
	sRMIRgLjt1bnr3LI3I4+iM+p2lss0x7rBLxxoWKhkeOcyPFk0lz3krz3srWcVtqKltiVanL6VM8LO
	Ele8Xokg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qiHgP-00FwKp-1M;
	Mon, 18 Sep 2023 17:05:13 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qiHgM-00FwKG-37
	for barebox@lists.infradead.org;
	Mon, 18 Sep 2023 17:05:12 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qiHgL-0005dJ-GQ; Mon, 18 Sep 2023 19:05:09 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qiHgL-007GUv-43; Mon, 18 Sep 2023 19:05:09 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qiHgL-000WDk-0G;
	Mon, 18 Sep 2023 19:05:09 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 18 Sep 2023 19:04:58 +0200
Message-Id: <20230918170458.121957-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230918_100511_005859_10CE0A12 
X-CRM114-Status: GOOD (  11.03  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] clk: have clk_get always return -ENOENT on missing clock
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Currently, clk_get(dev, NULL) returns -ENOENT on missing clock, but 
clk_get(dev, "missing-named-clock") returns -EINVAL. This went by unnoticed
so far as most consumers either require a clock or don't, but with the
addition of clk_get_optional, it's important that clk_get() return value
is uniform.

Therefore align clk_get with Linux and always fall through to clk_get_sys()
if getting clock over DT is not possible. Failing clk_get_sys() returns
-ENOENT always, ensuring we can't end up with -EINVAL as before while
keeping of_clk_get_by_name return value as it is under Linux.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
Please order before commit ("clk: implement clk_get_optional helper")
currently 8b013ac8ec69 in next.
---
 drivers/clk/clkdev.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clkdev.c b/drivers/clk/clkdev.c
index 68c6ac36a0c8..dbe998b6af35 100644
--- a/drivers/clk/clkdev.c
+++ b/drivers/clk/clkdev.c
@@ -176,9 +176,9 @@ struct clk *clk_get(struct device *dev, const char *con_id)
 	if (!IS_ERR(clk))
 		return clk;
 
-	if (dev) {
+	if (dev && dev->of_node) {
 		clk = of_clk_get_by_name(dev->of_node, con_id);
-		if (!IS_ERR(clk) || PTR_ERR(clk) != -ENOENT)
+		if (!IS_ERR(clk) || PTR_ERR(clk) == -EPROBE_DEFER)
 			return clk;
 	}
 
-- 
2.39.2



