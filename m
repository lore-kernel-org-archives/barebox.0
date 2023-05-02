Delivery-date: Tue, 02 May 2023 09:44:34 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkgd-0027t0-JE
	for lore@lore.pengutronix.de; Tue, 02 May 2023 09:44:34 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptkgb-0003LD-IQ
	for lore@pengutronix.de; Tue, 02 May 2023 09:44:34 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=5rP/cr9i3tyDL+EI9ClJZ/UpDak3sQWmRO6g3RgB/dQ=; b=3uL5beNDMZUQs1myN0N0l7lrjD
	nNl6pA82GklmzhwHDyJGoC40EmgI5xD3ybE6cbVuCtelCiJILobj1BzmmiD/WfKKbTMSjteO+i1bm
	YEUxtRlYzhMCUu3DGPAS90egXyneh4UdoF2YPwJnJFa422JbWhuAyKfrwGNtHvGKBJXLST0wB4FL/
	aXpcHnFIJbAnpgi//wJigMWqgA4bO/4JAg/whvwKBzbEkdGj/Jeyj6zfViT/BH6pJLRbFIk4bPwI3
	qK17xgO7d63uHjv9y5RgtH8eLsrzszaoo201gd8GqWNJ6vSmXgIeT9V5PhZmRZ0ph9x3pE3cvMbIv
	ZwZSBC9g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkfc-000WAM-0o;
	Tue, 02 May 2023 07:43:32 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptkfZ-000W9p-1s
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 07:43:30 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkfY-0003ER-9Z; Tue, 02 May 2023 09:43:28 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkfX-000XRP-PN; Tue, 02 May 2023 09:43:27 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptkfW-001q4G-QX; Tue, 02 May 2023 09:43:26 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 09:43:26 +0200
Message-Id: <20230502074326.438291-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_004329_614488_8652B31A 
X-CRM114-Status: UNSURE (   8.53  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: multi_v7_defconfig: Enable BCM283X Pinctrl/GPIO driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

multi_v7_defconfig has everything necessary to build for Rasperry Pi,
but the BCM283X Pinctrl/GPIO driver is missing. Enable it.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/multi_v7_defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/configs/multi_v7_defconfig b/arch/arm/configs/multi_v7_defconfig
index d83e503671..ae30b7d487 100644
--- a/arch/arm/configs/multi_v7_defconfig
+++ b/arch/arm/configs/multi_v7_defconfig
@@ -318,6 +318,7 @@ CONFIG_MXS_APBH_DMA=y
 CONFIG_GPIO_GENERIC_PLATFORM=y
 CONFIG_GPIO_RASPBERRYPI_EXP=y
 CONFIG_GPIO_STMPE=y
+CONFIG_PINCTRL_BCM283X=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_IMX_OCOTP_WRITE=y
 CONFIG_STM32_BSEC=y
-- 
2.39.2



