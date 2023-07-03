Delivery-date: Mon, 03 Jul 2023 19:22:32 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGNFx-00Dpt8-Hi
	for lore@lore.pengutronix.de; Mon, 03 Jul 2023 19:22:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qGNFv-00085U-5x
	for lore@pengutronix.de; Mon, 03 Jul 2023 19:22:31 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eptV7r46GX+oPcDQh3AX/YC7eFjQVvIrlg7uHMkIPGY=; b=D+382JvyT/nfuMuisPmx/rtSdF
	V4eu28yLpwItqScY0THfE9oluvYu0KAa19XRtdre0FtJQJPK+pu2wc15y2NlMpHvVpDtrPtanfSfm
	GXepB0+JxeHLO2ojAYa1FTRpZVg4civQ1u9o8F2fiJA/MwIn8fm0GE7m2n8lvuklsrBa+wSJMwWPY
	EnYzvxhPkHBTcBmKHRAm8ajBG3ZY8epRaf5KI0zxSMl4bJ9DLSWct8hbDk4zuNul1G6fASTNlidkT
	i7W+TBp//Sn0TYZQF+rtA9TALsF4eQSoEHMSg+husSM/lF3b312ThNl1O4ld99anpgcgZND24hep4
	zpGmfrZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qGNEV-00B5gv-0e;
	Mon, 03 Jul 2023 17:21:03 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qGNER-00B5fm-1G
	for barebox@lists.infradead.org;
	Mon, 03 Jul 2023 17:21:01 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNEO-0007vC-Sr; Mon, 03 Jul 2023 19:20:56 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNEO-00Br22-8M; Mon, 03 Jul 2023 19:20:56 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qGNEN-002FgT-2f;
	Mon, 03 Jul 2023 19:20:55 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon,  3 Jul 2023 19:20:53 +0200
Message-Id: <20230703172054.536931-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230703_102059_960028_DEF22857 
X-CRM114-Status: GOOD (  10.10  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/2] soc: imx: featctrl: add help text for CONFIG_IMX8M_FEATCTRL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There's no equivalent Linux driver, so a short help text is certainly in
order. While at it, replace spaces with tabs for the prompt line.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/imx/Kconfig | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/imx/Kconfig b/drivers/soc/imx/Kconfig
index 06513c02da2f..b11db718c2bc 100644
--- a/drivers/soc/imx/Kconfig
+++ b/drivers/soc/imx/Kconfig
@@ -8,9 +8,12 @@ config IMX_GPCV2_PM_DOMAINS
 	default y if ARCH_IMX7 || ARCH_IMX8M
 
 config IMX8M_FEATCTRL
-        bool "i.MX8M feature controller"
+	bool "i.MX8M feature controller"
 	depends on ARCH_IMX8M
 	select FEATURE_CONTROLLER
 	default y
+	help
+	  This driver disables device tree nodes that are not applicable
+	  to Lite variants of i.MX8M SoCs.
 
 endmenu
-- 
2.39.2



