Delivery-date: Mon, 01 Aug 2022 14:19:44 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOe-007eJz-PA
	for lore@lore.pengutronix.de; Mon, 01 Aug 2022 14:19:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oIUOc-0008G6-Ah
	for lore@pengutronix.de; Mon, 01 Aug 2022 14:19:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tm+Fo4AMFXit9zLtNOW9Cxn7fPbH8mPUrIKzqjdFZ3E=; b=qIG4Oksf6ZmlcZZU9Q6gE+CdbS
	z5ABgWsJYN8FmmMHVfpuMA4Wr7FuW1tMXmDtPOefzE1/fcy2p8mTsXNZTOISaBdbcGjZW5T1ydxYc
	FfxuMuk3G1NPVVWVf4mKpEnFv2m1F6DE2OEq/DXcnUr5Sn1fKooYwOP5Yb8bGKMUoI/gkvfGIBJx6
	3vpwhre57A/eTsHN8mhtEnKuMYDpZPr+BQ4JEWp2G1p5UYFwW555OUWDiv0hUGrXvAQekKp14dRew
	lbTq4payI1nEaYBR/OhStDj4Rube0Inb7WvevoOdN+ylnf5Q6AAs0M0IOGtxV+mPRBSFXi/Iq9XxF
	GEnZjTyw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUMz-0063i9-K6; Mon, 01 Aug 2022 12:18:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oIUCf-005trx-Gm
	for barebox@lists.infradead.org; Mon, 01 Aug 2022 12:07:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0005zs-QW; Mon, 01 Aug 2022 14:07:17 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCb-0016gW-3M; Mon, 01 Aug 2022 14:07:17 +0200
Received: from str by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <str@pengutronix.de>)
	id 1oIUCZ-00AXmY-OA; Mon, 01 Aug 2022 14:07:15 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon,  1 Aug 2022 14:07:01 +0200
Message-Id: <20220801120708.2511165-1-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220801_050721_590874_C847EAC1 
X-CRM114-Status: UNSURE (   8.54  )
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
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v4 1/8] scripts: socfgpa_xml_to_config: document pincfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 scripts/socfpga_xml_to_config.sh | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/scripts/socfpga_xml_to_config.sh b/scripts/socfpga_xml_to_config.sh
index 3bb0dd283b..1e6056cfb4 100755
--- a/scripts/socfpga_xml_to_config.sh
+++ b/scripts/socfpga_xml_to_config.sh
@@ -74,6 +74,14 @@ pinmux_config() {
     # FIXME: Either find solution how to parse these values too or replace
     # script with something that goes more in the direction of a programming
     # language
+    # 21:19 RTRIM
+    # 18:17 INPUT_BUF_EN
+    #    16 WK_PU_EN
+    #    13 PU_SLW_RT
+    #  12:8 PU_DRV_STRG
+    #     5 PD_SLW_RT
+    #   4:0 PD_DRV_STRG
+
     DEDICATED_FIXME="[arria10_pincfg_dedicated_io_bank] = FIXME,
     [arria10_pincfg_dedicated_io_1] = FIXME,
     [arria10_pincfg_dedicated_io_2] = FIXME,
-- 
2.30.2



