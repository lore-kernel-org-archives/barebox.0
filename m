Delivery-date: Fri, 13 Mar 2026 14:27:54 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YU-000DCN-2w
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:54 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YT-0005iK-8H
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i3XJwkgBsNwF1ba1DpSY0MsS+rSFiuV7XKAIHBSUOIc=; b=VcVZfZULtJQB5LW9GnIzzQ6inf
	8kld5jR61QeDAAo94KbdZZB+hgDj/w4ygOX9ILx7DmOyFHWrh/NLsY0qp27U5EJGzRk+VggzVumec
	w3exWsOOQXWLGSdp9pFrwMy5cOtnopgPs6kzdLuJsZoSF97udcHLD5Nev9Ax3El1mU25BSU2ATqlB
	GzanUCEov6CE4GP3Pqi3CWZ9pm9dAx84fKT84d1smG4pQ5UsPCUDfzlzBBKsqV7m+KVCD7YOAxFtE
	6aroNotwVTVMa7i5EfN06R/xKMNjeZiQoKlCWz7L+f7pZsLbV41IbKO/kh+P0u0t7sX0cvOlLM8LD
	ZF2y+LXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XW-00000000EIq-37N4;
	Fri, 13 Mar 2026 13:26:54 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XV-00000000EFH-0KPZ
	for barebox@bombadil.infradead.org;
	Fri, 13 Mar 2026 13:26:53 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=i3XJwkgBsNwF1ba1DpSY0MsS+rSFiuV7XKAIHBSUOIc=; b=NmoVrrQSRVbTjCm+rg2J9Tk5R9
	xiEgY7mDcUUusBCHLGARiJyK4aP00XHHwXTb2njZ7vnQ2TyDv1TBVFKllju0zf7m/03pQp36vgCjc
	oDwH3ZvzGkl/BQ3J1mWzn6nHJon5A+rNlYVwBq/Y+QRYtSguT+8grodeR4EnXyJJSmeCeeQQkLm8A
	+oGCsCb07BmQYmHSidY8tqGl7bbkE3m2JU82EroYTwRZ6edx13n2MvDhDYTJ5gnFHnm5g9fYmk0im
	cJROW3fvlHJBoatQqkKtMOPRauRRJcPCi/hdHTIQrsQy+Bw8YbljMTK4q9o0lXqHFEZPB2qQHFJaJ
	G7AdJ8hA==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XQ-00000003NW3-2HEj
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-000585-Ir; Fri, 13 Mar 2026 14:26:42 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005RP-1F;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-1Csa;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Chali Anis <chalianis1@gmail.com>
Date: Fri, 13 Mar 2026 14:24:45 +0100
Message-ID: <20260313132631.2257573-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_132649_690402_7186C5C6 
X-CRM114-Status: UNSURE (   9.71  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 01/58] clk: clkdev: fix format security.
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Chali Anis <chalianis1@gmail.com>

not a string literal and no format
arguments [-Werror=format-security]

(cherry picked from commit 85e8514df331cbc72b85a4819420a1d5559998c7)

Fixes: 61da1fea5d3c ("clk: sifive: Fix missing conversion to struct clk_hw")
Signed-off-by: Chali Anis <chalianis1@gmail.com>
Link: https://lore.barebox.org/20250830182917.1378282-1-chalianis1@gmail.com
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/sifive/sifive-prci.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/sifive/sifive-prci.c b/drivers/clk/sifive/sifive-prci.c
index 349629d82aa9..dbbf05655850 100644
--- a/drivers/clk/sifive/sifive-prci.c
+++ b/drivers/clk/sifive/sifive-prci.c
@@ -508,7 +508,7 @@ static int __prci_register_clocks(struct device *dev, struct __prci_data *pd,
 			return PTR_ERR(clk);
 		}
 
-		r = clk_register_clkdev(clk, pic->name, dev_name(dev));
+		r = clk_register_clkdev(clk, pic->name, "%s", dev_name(dev));
 		if (r) {
 			dev_warn(dev, "Failed to register clkdev for %s: %d\n",
 				 clk_hw_get_name(&pic->hw), r);
-- 
2.47.3



