Delivery-date: Thu, 12 Jan 2023 13:57:33 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFx9C-009nl8-4b
	for lore@lore.pengutronix.de; Thu, 12 Jan 2023 13:57:33 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pFx9A-0003tN-5H
	for lore@pengutronix.de; Thu, 12 Jan 2023 13:57:32 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=RWrDvbhrDRtpdbuW2hQNCkjQfxjsC89r4SX0FLFyFGI=; b=AwXT2TQA6RctZqABG7YiOE/tsj
	lM2ciKB8ye34AUeSu3kbN2xzKLFt71aCaJVxG7krOT2hhLKwhqEps0U7dOFqsPldi610HVNIewIaV
	VJKmLudb+T24pxduBba3Bp+vmKlTg8bBmuNHIbYYrz1gc47ZMfavjOVm1FptjVPWiokWzoSjKgN4v
	mOK83t0+fV2wE+jqObYxpZFzoBnlt76y/nU0eHW+7FLeHpOF0CcdXO1mhIniTaVdbntUVcZWctkl8
	Go+NAcyC87+RQvklV5XdPfLDvW36DKStqOw8mPdi6fAP85JdlWSb3cXUDQcBGzAhH4vRuWfNUM1Gd
	Se7LP/8w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx7O-00F3dI-Af; Thu, 12 Jan 2023 12:55:42 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pFx7I-00F3bG-UF
	for barebox@lists.infradead.org; Thu, 12 Jan 2023 12:55:38 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pFx7E-0003Mb-O1; Thu, 12 Jan 2023 13:55:32 +0100
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFx7D-005Xj3-UJ; Thu, 12 Jan 2023 13:55:31 +0100
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pFx7D-00CJze-4y; Thu, 12 Jan 2023 13:55:31 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Johannes Schneider <johannes.schneider@leica-geosystems.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 12 Jan 2023 13:55:28 +0100
Message-Id: <20230112125528.2936698-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230112_045536_987500_09D1D989 
X-CRM114-Status: UNSURE (   7.97  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] firmware: Kconfig: unify whitespace used for indentation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

File has a mixture of tabs, spaces and even both in the same line.
Use tabs throughout.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 firmware/Kconfig | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/firmware/Kconfig b/firmware/Kconfig
index b466c2aea818..b0a120346909 100644
--- a/firmware/Kconfig
+++ b/firmware/Kconfig
@@ -7,22 +7,22 @@ config EXTRA_FIRMWARE_DIR
 	default "firmware"
 
 config FIRMWARE_IMX_LPDDR4_PMU_TRAIN
-       	bool
+	bool
 
 config FIRMWARE_IMX_DDR4_PMU_TRAIN
-       	bool
+	bool
 
 config FIRMWARE_IMX8MM_ATF
-        bool
+	bool
 
 config FIRMWARE_IMX8MN_ATF
-        bool
+	bool
 
 config FIRMWARE_IMX8MP_ATF
-        bool
+	bool
 
 config FIRMWARE_IMX8MQ_ATF
-        bool
+	bool
 
 config FIRMWARE_CCBV2_OPTEE
 	bool
-- 
2.30.2



