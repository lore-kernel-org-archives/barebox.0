Delivery-date: Thu, 24 Jun 2021 12:27:10 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMZi-0000Jx-RK
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 12:27:10 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwMZg-0006fY-Pa
	for lore@pengutronix.de; Thu, 24 Jun 2021 12:27:10 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/trrWUXtyyjO/ZbLR07R4N9V2s0OLRM+wWAWrHsq1L4=; b=ES+XYKI2XeVMfg
	cVQonN75FIcXiIjujHaXqAI7AWfWDqOQytTrvKK+yXGJwqz0wO/B5WQstfDoWCTNmSgAFctA62Zv/
	lubxbPK4Qh8yJkNWHdkCldpHa+ViWAlBsAdrct4hp2LYCDjqCIR03MKqt14Prr/3LQ++StpgVnLuG
	T2HA0/lG4q9nJVzWKueJcDEl8rDACqUU9lXmHzbsnxq4+HSwszCvUNskftJU5biRR2ouYBYexMnL5
	TLp0wA1F9+ewXkxrvcobpDIHY4gxwpvFZBEritj5yfih+CN3zzhq9h0JP7fA+yaUpQeKkA225Hynw
	SIbKwafPi4jj3jrxmFsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwMXz-00E4EP-OL; Thu, 24 Jun 2021 10:25:23 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwMWQ-00E3aC-Tu
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 10:23:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWN-0005pj-1T
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:43 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-0001jA-GJ
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:42 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwMWM-00185P-Fk
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 12:23:42 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 12:23:37 +0200
Message-Id: <20210624102342.269363-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210624102342.269363-1-m.tretter@pengutronix.de>
References: <20210624102342.269363-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_032347_109661_5EF44FC0 
X-CRM114-Status: GOOD (  10.68  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/7] clk: zynqmp: do not enable already enabled clocks
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The pmu fw manages the permissions who can enable/disable the clocks.

There are a few clocks (TOPSW_LSBUS and LSBUS) which are exposed to
Barebox and Barebox assumes that is has to enable the clocks. However,
the pmu fw considers the clocks under its control and returns a
permission denied for the clock enable request.

Assume that clocks that are already enabled don't need to be enable by
Barebox to avoid the permission denied errors.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 drivers/clk/zynqmp/clk-gate-zynqmp.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/drivers/clk/zynqmp/clk-gate-zynqmp.c b/drivers/clk/zynqmp/clk-gate-zynqmp.c
index a3b9ee21e506..493c1dfeaaa3 100644
--- a/drivers/clk/zynqmp/clk-gate-zynqmp.c
+++ b/drivers/clk/zynqmp/clk-gate-zynqmp.c
@@ -28,6 +28,9 @@ static int zynqmp_clk_gate_enable(struct clk_hw *hw)
 {
 	struct zynqmp_clk_gate *gate = to_zynqmp_clk_gate(hw);
 
+	if (clk_hw_is_enabled(hw))
+		return 0;
+
 	return gate->ops->clock_enable(gate->clk_id);
 }
 
-- 
2.29.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

