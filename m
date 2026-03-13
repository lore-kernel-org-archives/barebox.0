Delivery-date: Fri, 13 Mar 2026 14:27:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YR-000DB9-0z
	for lore@lore.pengutronix.de;
	Fri, 13 Mar 2026 14:27:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1w12YQ-0005ik-52
	for lore@pengutronix.de; Fri, 13 Mar 2026 14:27:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mS3dbEObChF4TMSX34pfsygJ/V7JA0EDhh7Ck2eFQC8=; b=2HbAHuaSn/xIK3q/qTMN6LeVsP
	nhrqYq6k2GpHKLdPYa5AUHvPnV1gNpUfC0ZJjShL3uJ7ivJX14KsHP89Qj6ay7cfAgTAIko5nUHTD
	dqgtxMAfQPZD8ehZ/F4QRjEGlKtWMpeglnVdGcErVKYSahv8NKcBStD0hTVDu53NHgJaA8VlXsf+H
	ZooTng+l0noF5E6qNUSq1BTTWG4pY29A6wjAbUQ/dDa/MlJrvVPs71DmCsh2VkTpzAosdZz8lQnWR
	zICJE5GCiYnUCRO2J4DBzb0EWyEKycA1cYLggMoMDbF1BDOW2Dq2dUt+yz5IgmgEMDDtFUkTgsJxj
	UEQU0Czg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XT-00000000EDh-0j7k;
	Fri, 13 Mar 2026 13:26:51 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1w12XP-00000000E8U-0Ixp
	for barebox@lists.infradead.org;
	Fri, 13 Mar 2026 13:26:48 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XL-00058m-4S; Fri, 13 Mar 2026 14:26:43 +0100
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-0005Rp-2Q;
	Fri, 13 Mar 2026 14:26:42 +0100
Received: from [::1] (helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1w12XK-00000009ULB-2kNN;
	Fri, 13 Mar 2026 14:26:42 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Bruno Knittel <bruno.knittel@bruker.com>
Date: Fri, 13 Mar 2026 14:24:53 +0100
Message-ID: <20260313132631.2257573-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.47.3
In-Reply-To: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
References: <20260313132631.2257573-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260313_062647_115877_B76889DB 
X-CRM114-Status: UNSURE (   7.51  )
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
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2025.09.y 09/58] ARM: socfpga: arria10-reset-manager: release UART0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Bruno Knittel <bruno.knittel@bruker.com>

UART0 is also a dedictated peripheral. Release from reset to have
earlier serial for debugging.

(cherry picked from commit 0ecec7397757dc5cfc3338c2c7f0af13b19907bd)

Signed-off-by: Bruno Knittel <bruno.knittel@bruker.com>
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Link: https://lore.barebox.org/20251114-v2025-11-0-topic-socfpga-arria10-v1-1-e091cddacea5@pengutronix.de
Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-socfpga/arria10-reset-manager.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-socfpga/arria10-reset-manager.c b/arch/arm/mach-socfpga/arria10-reset-manager.c
index 6f209e704520..01534cd74b87 100644
--- a/arch/arm/mach-socfpga/arria10-reset-manager.c
+++ b/arch/arm/mach-socfpga/arria10-reset-manager.c
@@ -86,6 +86,7 @@ void arria10_reset_deassert_dedicated_peripherals(void)
 	mask = ARRIA10_RSTMGR_PER1MODRST_I2C3 |
 	       ARRIA10_RSTMGR_PER1MODRST_I2C4 |
 	       ARRIA10_RSTMGR_PER1MODRST_I2C2 |
+	       ARRIA10_RSTMGR_PER1MODRST_UART0 |
 	       ARRIA10_RSTMGR_PER1MODRST_UART1 |
 	       ARRIA10_RSTMGR_PER1MODRST_GPIO2;
 	clrbits_le32(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_PER1MODRST, mask);
-- 
2.47.3



