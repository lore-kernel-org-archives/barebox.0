Delivery-date: Tue, 14 Nov 2023 14:31:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tVu-00BJrl-2N
	for lore@lore.pengutronix.de;
	Tue, 14 Nov 2023 14:31:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r2tVu-0006tO-QF
	for lore@pengutronix.de; Tue, 14 Nov 2023 14:31:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=tQbEivm6C6xd7RNDq8uHeIGrhwZqOS8ECazcfjbJkmc=; b=aFZXxKXKbTTsO1SBlOkdbWp/hZ
	FYEAw0qlh87GKUV53Q49NeCXXKf+7+IcbyDahHT8pGtfZx8FPVgX5uIFg8G5KGKhMor/avtl8jQQ3
	+r8hj3otEFC/xYAFfUO57qJyihfVlmDFC405tisYKM2Gkx0i/PNa2y+54HhaSuKXJjHyYh9wngyYs
	5HAHCd2mXbpQeY3dsY6IW3/y+iI5aFNj6Ya+CcmZoItt20wVqcwv2/kSIu/cojFFTZE6BDsWwZCJG
	KqgEnxcWRTL5RoESF1f7ffC01qiIyBWHhFb1+VQ+msfyCB7jjiCdB+bvXVpjhcjyZPZ2PnqpmByKt
	7q5f8roA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUi-00G2k0-0G;
	Tue, 14 Nov 2023 13:30:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r2tUe-00G2hs-1Z
	for barebox@lists.infradead.org;
	Tue, 14 Nov 2023 13:30:17 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1r2tUd-0006Gh-3t
	for barebox@lists.infradead.org; Tue, 14 Nov 2023 14:30:15 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Tue, 14 Nov 2023 14:30:00 +0100
Message-Id: <20231114133007.3662931-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231114_053016_531924_A8F8AA1B 
X-CRM114-Status: UNSURE (   9.25  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 1/8] mci: correct ENH_ATTRIBUTE_EN_MASK bit mask
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>

Extended CSD register PARTITIONING_SUPPORT ENH_ATTRIBUTE_EN is bit 1
instead of 0

Signed-off-by: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 include/mci.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/include/mci.h b/include/mci.h
index 3e93f378e4a3..616c7c3cae5c 100644
--- a/include/mci.h
+++ b/include/mci.h
@@ -305,7 +305,7 @@
 #define EXT_CSD_ENH_USR_MASK		(1 << 0)
 
 /* register PARTITIONING_SUPPORT [160] */
-#define EXT_CSD_ENH_ATTRIBUTE_EN_MASK	(1 << 0)
+#define EXT_CSD_ENH_ATTRIBUTE_EN_MASK	(1 << 1)
 
 /* register BUS_WIDTH [183], field Bus Mode Selection [4:0] */
 #define EXT_CSD_BUS_WIDTH_1	0	/* Card is in 1 bit mode */
-- 
2.39.2



