Delivery-date: Tue, 17 Jun 2025 11:02:35 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDC-008DR8-2p
	for lore@lore.pengutronix.de;
	Tue, 17 Jun 2025 11:02:35 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uRSDC-0001TY-Aj
	for lore@pengutronix.de; Tue, 17 Jun 2025 11:02:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=t5t92G4HjUOnHlkFtAl3+xEaXOKAJjGDj1eVwuvvtQg=; b=THTEi9l7w4rSABCksTggJGbQYK
	5zGWItfGFGCfXml0u2PggnpqoRdvcKy7umgypf4RzO00dJUGc0W0Xk3ssPX61J1smJ3QLJyZFnDMF
	iAwWyi/nD5DkokKs+Q7NUVFHeAKAe2zZzdfY6bG69PRGoDp/8+W5Ux+nKxMb7KTtPcAuHj2Brf2TC
	0c4MHXlhORCz0wpqTz4xoeQXyDCeQRVWAaK7NjiLu+bHZjid4D/OXFwLlIyQps4miV5n9QuPOtHMO
	7Fa6tFCeDzS5vdH78Ko0R7RlEIWYd9H4S4ugF13gtdsTHBy04Zaf5OFfzKt7BWa5sNRMmJIwbmzgU
	iIutPv6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCS-00000006g9S-2QQx;
	Tue, 17 Jun 2025 09:01:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uRSCP-00000006g7B-2P2E
	for barebox@lists.infradead.org;
	Tue, 17 Jun 2025 09:01:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-0008Tn-F4; Tue, 17 Jun 2025 11:01:44 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-003wfS-0o;
	Tue, 17 Jun 2025 11:01:44 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uRSCO-00Cb9A-0T;
	Tue, 17 Jun 2025 11:01:44 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 17 Jun 2025 11:01:41 +0200
Message-Id: <20250617090142.3000882-3-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250617090142.3000882-1-s.hauer@pengutronix.de>
References: <20250617090142.3000882-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250617_020145_627335_397D792C 
X-CRM114-Status: GOOD (  12.82  )
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
X-Spam-Status: No, score=-6.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] plat: ti: k3: return 0 parents for clocks which only have a single parent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some clocks return one parent in their get_num_clock_parents() hook, but
if asked for this parent it returns an error which goes down to
device_clk_get_parent() where we have:

	if (!fail && (clock_data->type != DEV_CLK_TABLE_TYPE_MUX)) {
		fail = true;
	}

A clock with only one parent is not a mux, but why should it be not
allowed to to have a parent? This code all looks strange and I suspect
more problems here. For now just report clocks with a single parent as
clocks without parent.

Change-Id: I6d120e6774b6b630e86ce921891823715126a905
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 plat/ti/k3/common/drivers/scmi/scmi_clock.c | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/plat/ti/k3/common/drivers/scmi/scmi_clock.c b/plat/ti/k3/common/drivers/scmi/scmi_clock.c
index afda3f05b..9eee60e69 100644
--- a/plat/ti/k3/common/drivers/scmi/scmi_clock.c
+++ b/plat/ti/k3/common/drivers/scmi/scmi_clock.c
@@ -160,6 +160,9 @@ int32_t plat_scmi_clock_get_possible_parents(unsigned int agent_id,
 
 	*nb_elts = (uint64_t)scmi_handler_clock_get_num_clock_parents(clock->dev_id,
 									clock->clock_id);
+	if (*nb_elts == 1)
+		*nb_elts = 0;
+
 	if (plat_possible_parents) {
 		for (uint32_t i = 0; i < (uint32_t)*nb_elts ; i++) {
 			plat_possible_parents[i] = i + scmi_id + 1;
-- 
2.39.5



