Delivery-date: Thu, 02 Mar 2023 12:17:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwc-006UoV-VF
	for lore@lore.pengutronix.de; Thu, 02 Mar 2023 12:17:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pXgwc-0001ed-9E
	for lore@pengutronix.de; Thu, 02 Mar 2023 12:17:55 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=PLjNwbtf97xSVmnrCANM/JknBit09RAZ54kLwVK+U3s=; b=rWHFHIUuO07VjzX8jRCHo56ScI
	h2DVkV+N3mjxXkL6MpJdWh/iU27KZughpHIXEgXWvdXaU42VJs0V0X7abTnrt0rzwEcBONOuTiIfk
	A/hnLL0m4gg0tYnLdMlRARrKOZY0D55S+U2KVS/pxflr8TTO4jfA6jAcQjBcK0yTIn9bdF8BIlazv
	jM0M2OuxB1L4npRQAJw2kbyXswOnT9RaHiPv2xoagiWoVpwWc44beqiO2F1bKqHGOjQ41BXNPfEdu
	FmInago1TIZo00QgPk70RBto51Wjrg5joo4ExypULadXfwpqrJ9AeOHX93wvF4HkLP0WnErY7hNjV
	t8aai0ww==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXgvL-001sRm-15; Thu, 02 Mar 2023 11:16:35 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pXguy-001sGY-6O
	for barebox@lists.infradead.org; Thu, 02 Mar 2023 11:16:15 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pXgux-00018Y-0O; Thu, 02 Mar 2023 12:16:11 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguw-001JdN-CP; Thu, 02 Mar 2023 12:16:10 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pXguu-004QVm-1G; Thu, 02 Mar 2023 12:16:08 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Thu,  2 Mar 2023 12:16:05 +0100
Message-Id: <20230302111606.1054037-13-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230302111606.1054037-1-s.hauer@pengutronix.de>
References: <20230302111606.1054037-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230302_031612_268075_1FCAC7C6 
X-CRM114-Status: UNSURE (   9.74  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 12/13] ARM: stm32mp_defconfig: Enable remaining boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The stm32mp13xx-dk and the phytec-phycore-stm32mp1 are not enabled
in the defconfig. Enable them to get a better compile coverage.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/stm32mp_defconfig | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/configs/stm32mp_defconfig b/arch/arm/configs/stm32mp_defconfig
index 2fec3a2d3b..1a8548b3e2 100644
--- a/arch/arm/configs/stm32mp_defconfig
+++ b/arch/arm/configs/stm32mp_defconfig
@@ -1,9 +1,11 @@
 CONFIG_ARCH_STM32MP=y
+CONFIG_MACH_STM32MP13XX_DK=y
 CONFIG_MACH_STM32MP15XX_DKX=y
 CONFIG_MACH_LXA_MC1=y
 CONFIG_MACH_SEEED_ODYSSEY=y
 CONFIG_MACH_STM32MP15X_EV1=y
 CONFIG_MACH_PROTONIC_STM32MP1=y
+CONFIG_MACH_PHYTEC_PHYCORE_STM32MP1=y
 CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_THUMB2_BAREBOX=y
 CONFIG_ARM_BOARD_APPEND_ATAG=y
-- 
2.30.2



