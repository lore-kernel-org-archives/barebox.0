Delivery-date: Tue, 23 May 2023 17:51:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1UID-00AyvJ-5F
	for lore@lore.pengutronix.de; Tue, 23 May 2023 17:51:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q1UIA-0008Od-PL
	for lore@pengutronix.de; Tue, 23 May 2023 17:51:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jfU0HztwGTrKy5LoPajstINlvdZRqDPMi/PI9mfCyF4=; b=LPo+GapVyrmrWb
	l/Kvvb/6WXWrCcPockFMLYUVIIcNbo4xE4t5dQ0vlwjZfLGT5R1bO8fmDSbMo1QreiiBEJqO/ACWB
	PjDuAPfhD/YnfpygX7q05G61j9DjbtGoEdL7w8yJ5GJ459WSfNKViw4xcrWamLqMYal00OocPY5I3
	cxycQOJpSVrGpxDBMxYK8QT9L+WOXEWBTCrBwn1iYebyi/eNEiu6ZXY6YbObuAFm+LUFWQ2JMEKQO
	ynkHD6h75yDtSP7MDBz1kPW0nxvbAKeeyqRBMBUHr0Bg56HguHNOjHnp8eAh9PgqUXTW2R0o3Nwvp
	mLH8ajF1zPxcwAOfOeOA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UGl-00AgXh-2p;
	Tue, 23 May 2023 15:49:51 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q1UGf-00AgW1-2s
	for barebox@lists.infradead.org;
	Tue, 23 May 2023 15:49:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGc-0007ep-Hh; Tue, 23 May 2023 17:49:42 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGb-002Hmg-SV; Tue, 23 May 2023 17:49:41 +0200
Received: from localhost ([::1] helo=blackshift.org)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <mkl@pengutronix.de>)
	id 1q1UGa-004aJG-UW; Tue, 23 May 2023 17:49:40 +0200
From: Marc Kleine-Budde <mkl@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 23 May 2023 17:49:38 +0200
Message-Id: <20230523154939.1074667-3-mkl@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230523154939.1074667-1-mkl@pengutronix.de>
References: <20230523154939.1074667-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230523_084945_931644_BE319346 
X-CRM114-Status: GOOD (  10.59  )
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
Cc: kernel@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] ddr: imx: fix indention of debug message
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes: 2ccc6a0946d7 ("ddr: imx: Cleanup debug messages")
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 drivers/ddr/imx8m/ddr_init.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/ddr/imx8m/ddr_init.c b/drivers/ddr/imx8m/ddr_init.c
index 164536800615..944cc3873e0c 100644
--- a/drivers/ddr/imx8m/ddr_init.c
+++ b/drivers/ddr/imx8m/ddr_init.c
@@ -204,7 +204,7 @@ int imx8m_ddr_init(struct dram_timing_info *dram_timing,
 
 	/* enable port 0 */
 	reg32_write(DDRC_PCTRL_0(0), 0x00000001);
-	pr_debug(" ddrmix config done\n");
+	pr_debug("ddrmix config done\n");
 
 	/* save the dram timing config into memory */
 	dram_config_save(dram_timing, IMX8M_SAVED_DRAM_TIMING_BASE);
-- 
2.39.2



