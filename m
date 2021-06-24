Delivery-date: Thu, 24 Jun 2021 17:02:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsc-00055h-Go
	for lore@lore.pengutronix.de; Thu, 24 Jun 2021 17:02:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lwQsb-0001m4-Bd
	for lore@pengutronix.de; Thu, 24 Jun 2021 17:02:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2ma5m1FhMvgYllVsyE3TYWlWeIgzru7ibhsbAg5fWGg=; b=yhwgSmCmqkzL87
	93YRg8ebfbpegpDGbR7Ub3Z2RQxP0uiU7e6GJnxJRg3fDIb/vDGyX72ArT7dL3fhTVW7am//SbqdY
	/aFT+mn2ipL1yGk3YT5A6lDbS2VswJ2X/5JCD5SQUlVNlopeg4hZL/z1JW8qlttc4A2peGw3M/ykx
	MX/+nBa+iMnQdjgLywWMDeldG/cmDtgRxnoZgFY8dPl53zlHxYARv78s4dV82zy+OCKtEZuziutt9
	GagAf8dQzmiBClvM+WIqGrfvsC2M8CXKcbnXow0KrlrAsHB7/ZRu8xX3OhVZhteJqdlHKXfrPpdEZ
	jT38yE5oMrB1yvhFfbCA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lwQqw-00F9VI-UV; Thu, 24 Jun 2021 15:01:15 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lwQqe-00F9Mt-Qq
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 15:00:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqd-0000q6-3P
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:55 +0200
Received: from [2a0a:edc0:0:1101:1d::39] (helo=dude03.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0002Aj-Hg
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
Received: from mtr by dude03.red.stw.pengutronix.de with local (Exim 4.92)
 (envelope-from <mtr@pengutronix.de>) id 1lwQqc-0053b8-FD
 for barebox@lists.infradead.org; Thu, 24 Jun 2021 17:00:54 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
To: barebox@lists.infradead.org
Date: Thu, 24 Jun 2021 17:00:49 +0200
Message-Id: <20210624150054.1205422-3-m.tretter@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210624150054.1205422-1-m.tretter@pengutronix.de>
References: <20210624150054.1205422-1-m.tretter@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210624_080057_042411_FED03EE7 
X-CRM114-Status: GOOD (  10.91  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/7] clk: zynqmp: do not enable already enabled clocks
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
Changelog:

v2: none
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
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

