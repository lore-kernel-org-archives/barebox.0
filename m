Delivery-date: Mon, 05 Dec 2022 14:30:32 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BYG-00BdXm-9n
	for lore@lore.pengutronix.de; Mon, 05 Dec 2022 14:30:32 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1p2BYF-0004OT-Mw
	for lore@pengutronix.de; Mon, 05 Dec 2022 14:30:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=abcrbDWlIiSMSqTFcEAVMg7Nd6kSyNn8SnfKcCvGjFo=; b=uetMQGEjTEV78C4l8fpVp8mAmf
	3qSIksdSVdfrcvSBMyPuYKTrXDZ5QtF2QDXtXa6OmUc3drJNVRqx9ou5zQT27Lj9GkXuf7BGG4q8d
	hxd45UYFPn1DTdB6hEV2ipyZ3byn9cVYTLFnZ01/enUUwv6Q+T/aJySPJjlHM14tkYPPRJYVTx6Ta
	7WCpLSUkQBPw6uWBw0uXY9YhwVexgg00rWstSp69RfpXSXeDvi0jLDTvI/EUj4NxE86i8CoePK7E5
	riaCNSRjSUlDyXF3DNEjIZ7Ed+/OW8Dd/s3B+39EM+mj2Hg+bcaCF++FM56rVxLqPQIz0lxEyNZIT
	dg9AO57A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BWd-003QMq-RT; Mon, 05 Dec 2022 13:28:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1p2BWV-003QHA-Mz
	for barebox@lists.infradead.org; Mon, 05 Dec 2022 13:28:46 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1p2BWQ-0003wf-3J; Mon, 05 Dec 2022 14:28:38 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2BWO-002U31-Mb; Mon, 05 Dec 2022 14:28:37 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1p2BWO-00Cb9I-Pe; Mon, 05 Dec 2022 14:28:36 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  5 Dec 2022 14:28:35 +0100
Message-Id: <20221205132835.3002605-2-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20221205132835.3002605-1-a.fatoum@pengutronix.de>
References: <20221205132835.3002605-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221205_052843_781808_84BFFC79 
X-CRM114-Status: UNSURE (   9.48  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ddr: imx8m: use pr_warn instead of plain prints
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We already have a pr_fmt, but we aren't making use of this. Change that.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/ddr/imx8m/ddrphy_utils.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/ddr/imx8m/ddrphy_utils.c b/drivers/ddr/imx8m/ddrphy_utils.c
index 3e03d4b75c9e..98e6ae648aed 100644
--- a/drivers/ddr/imx8m/ddrphy_utils.c
+++ b/drivers/ddr/imx8m/ddrphy_utils.c
@@ -210,7 +210,7 @@ static void dram_enable_bypass(enum ddr_rate drate)
 	const struct imx8m_bypass_config *config = &imx8m_bypass_table[drate];
 
 	if (!config->valid) {
-		printf("No matched freq table entry %u\n", drate);
+		pr_warn("No matched freq table entry %u\n", drate);
 		return;
 	}
 
@@ -239,7 +239,7 @@ static int dram_frac_pll_init(enum ddr_rate drate)
 	const struct imx8mm_fracpll_config *config = &imx8mm_fracpll_table[drate];
 
 	if (!config->valid) {
-		printf("No matched freq table entry %u\n", drate);
+		pr_warn("No matched freq table entry %u\n", drate);
 		return -EINVAL;
 	}
 
@@ -284,7 +284,7 @@ static int dram_sscg_pll_init(enum ddr_rate drate)
 	const struct imx8mq_ssgcpll_config *config = &imx8mq_ssgcpll_table[drate];
 
 	if (!config->valid) {
-		printf("No matched freq table entry %u\n", drate);
+		pr_warn("No matched freq table entry %u\n", drate);
 		return -EINVAL;
 	}
 
-- 
2.30.2



