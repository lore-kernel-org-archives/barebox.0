Delivery-date: Tue, 30 May 2023 13:20:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOd-002k0W-7S
	for lore@lore.pengutronix.de; Tue, 30 May 2023 13:20:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q3xOa-0001dJ-Fa
	for lore@pengutronix.de; Tue, 30 May 2023 13:20:09 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iWhMjB2KfZ2mH4T2uwCH6RABVxDaXyi9HlD6tM4vKl0=; b=GKTCQJJu3zQ45+m6JXdS+ChPeM
	4D6VdLkAGCpCWslhCGHo9TgeEXr+f+wzdYlcrc5NLdFsX2xsWzo5XD4XdJ1+vLJtebL4xmZkCEhiD
	e++dqRA1uEQ7cvd1Vf4778xIYjX+O072us5dBrF3dK+g5jIIkhs1qXPBNjbtwj1K2iKRT4+qY1zII
	fNTYm42Bo2AyRsr/rFUHXgxMiUw+Qia+sGEaRs63M5t0uiaFEskYlkWVtpMV2/YJ0pg9zPYYUtBmw
	FwexJqvghllTpbOF2HiffBWn8eQ0T4KIW9TGJkX5HeV5TU94i3gAN+Rm97kUd2x+INUkA68QgVL1o
	dwUySd+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNI-00DboF-0f;
	Tue, 30 May 2023 11:18:48 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q3xNA-00Dbii-1e
	for barebox@lists.infradead.org;
	Tue, 30 May 2023 11:18:43 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN6-000148-2I; Tue, 30 May 2023 13:18:36 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN5-003rOU-Ay; Tue, 30 May 2023 13:18:35 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1q3xN3-0082bG-Os; Tue, 30 May 2023 13:18:33 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 30 May 2023 13:18:30 +0200
Message-Id: <20230530111832.1916542-9-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230530111832.1916542-1-s.hauer@pengutronix.de>
References: <20230530111832.1916542-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230530_041840_607420_EC07A6FB 
X-CRM114-Status: UNSURE (   9.01  )
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
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 08/10] ARM: rockchip_v8_defconfig: Enable SCMI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

SCMI clocks are needed to support the RK3588.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/rockchip_v8_defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index efe6adc9dc..cc3c3c6d48 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -119,6 +119,7 @@ CONFIG_MCI_MMC_BOOT_PARTITIONS=y
 CONFIG_MCI_DW=y
 CONFIG_MCI_ROCKCHIP_DWCMSHC=y
 CONFIG_MCI_ARASAN=y
+CONFIG_COMMON_CLK_SCMI=y
 CONFIG_MFD_ACT8846=y
 CONFIG_MFD_RK808=y
 CONFIG_LED=y
@@ -129,7 +130,9 @@ CONFIG_WATCHDOG_POLLER=y
 CONFIG_WATCHDOG_DW=y
 CONFIG_REGULATOR=y
 CONFIG_REGULATOR_FIXED=y
+CONFIG_REGULATOR_ARM_SCMI=y
 CONFIG_REGULATOR_RK808=y
+CONFIG_ARM_SCMI_PROTOCOL=y
 CONFIG_GENERIC_PHY=y
 CONFIG_USB_NOP_XCEIV=y
 CONFIG_PHY_ROCKCHIP_INNO_USB2=y
-- 
2.39.2



