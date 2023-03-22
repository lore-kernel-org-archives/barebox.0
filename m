Delivery-date: Wed, 22 Mar 2023 09:34:06 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petv3-00AE1T-PP
	for lore@lore.pengutronix.de; Wed, 22 Mar 2023 09:34:06 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1petv2-0001jj-VY
	for lore@pengutronix.de; Wed, 22 Mar 2023 09:34:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=i9HYIAgN9NTqt0gpQJYo0Bn2kEkGKXUCFs5Oz2Y9274=; b=R1CPiE2hec2xHb25o1215tx5PG
	n2jw1m4ofGbDIoxIdc8p5Kig8qVG5JIlUtyzCeIkTafZTsyMbhj0usFqWL1Ndkq103HHH/8KJ/J2u
	iSkLc5KEml2hQk6zyrc2zHzWaRo/DKtJxCgoo/5r80VFXuCUAwisd9KvWNyJ1WnE0BXlMHshv4g6g
	+go9ED4GCOX0uRx4lFimPYKYR/yCW2f/42QXPkN0aUJWRRomsHL/6Ba2XnrbfqOqQEqDOpjpDDPfw
	lLdtjIenStA25LhSrWoOjjlVPJMs7MHS/1SO8U882OHpStwgaQV+OnNCw9FvF/aLBkCqWfT8b3Jpk
	19s5X3Ig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1pettv-00FCGC-2g;
	Wed, 22 Mar 2023 08:32:55 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1pettp-00FCDM-0K
	for barebox@lists.infradead.org;
	Wed, 22 Mar 2023 08:32:51 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-0001Sk-S3; Wed, 22 Mar 2023 09:32:47 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettn-005sSf-7a; Wed, 22 Mar 2023 09:32:47 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pettm-001D9y-5W; Wed, 22 Mar 2023 09:32:46 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 22 Mar 2023 09:32:44 +0100
Message-Id: <20230322083245.251340-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230322083245.251340-1-s.hauer@pengutronix.de>
References: <20230322083245.251340-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230322_013249_142198_9FB3FAD5 
X-CRM114-Status: GOOD (  15.34  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] clk: of: make of_clk_init() safe for being called multiple times
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Applying device tree overlays to the barebox live tree currently works
for devices handled by regular drivers, but not for clocks which do
not have a regular driver, but instead are declared with CLK_OF_DECLARE.
To support adding such clocks with a device tree overlay we have to
call of_clk_init() again. This patch makes of_clk_init() safe for being
called multiple times. For this we have to make sure we do not register
clocks for nodes which already have a clock.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/clk/clk.c | 20 ++++++++++++++++++--
 1 file changed, 18 insertions(+), 2 deletions(-)

diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index c7ee6878c2..7406dba260 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -847,6 +847,18 @@ static int parent_ready(struct device_node *np)
 	}
 }
 
+static LIST_HEAD(probed_clks);
+
+static bool of_clk_probed(struct device_node *np)
+{
+	struct clock_provider *clk_provider;
+
+	list_for_each_entry(clk_provider, &probed_clks, node)
+		if (clk_provider->np == np)
+			return true;
+	return false;
+}
+
 /**
  * of_clk_init() - Scan and init clock providers from the DT
  *
@@ -875,6 +887,11 @@ int of_clk_init(void)
 		if (!of_device_is_available(root))
 			continue;
 
+		if (of_clk_probed(root)) {
+			pr_debug("%s: already probed: %pOF\n", __func__, root);
+			continue;
+		}
+
 		parent = xzalloc(sizeof(*parent));
 
 		parent->clk_init_cb = match->data;
@@ -894,8 +911,7 @@ int of_clk_init(void)
 				clk_provider->clk_init_cb(np);
 				of_clk_set_defaults(np, true);
 
-				list_del(&clk_provider->node);
-				free(clk_provider);
+				list_move_tail(&clk_provider->node, &probed_clks);
 				is_init_done = true;
 			}
 		}
-- 
2.30.2



