Delivery-date: Fri, 14 Jan 2022 09:40:07 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8I7z-001sYv-2q
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:40:07 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8I7x-0000xE-Ki
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:40:06 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=go1yKHAtsiku2efYenylTsRTaz+TUwM0CK0kKv+57/0=; b=X63M/nygfRYXow
	TncmMhW//GQz0uIypgwtF9wE6MLRdY4KUmTjFo5dHz9EmZQueL6AzCd0GSe9DO2VhhL6dZ+xL3N39
	PD92xlxQxqbavZarVjBg9pGijOPbrrRBwZ19W37Pl9Ga3fG+Kx++GYtKAjF7LcAlkZgbyixXaDg/O
	uEuteZPn/lXMua5tjqyyQBGPzUrcNkAjczv77XRWMgrUPzX6bfK8/pOgD9A9nPh01fI1pkAqp7qHb
	dtRfDLk7r6aDBoaDs0sYM9BJ1466Mq0xx2mScdDcwD/CwkFby1I6ttTXJITC4HDN9zdqC30jmjypH
	RaDVp0r2WdhZAKDRAGlg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8I6j-008IGV-HZ; Fri, 14 Jan 2022 08:38:49 +0000
Received: from relay5-d.mail.gandi.net ([217.70.183.197])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8I6T-008ICD-8J
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:38:34 +0000
Received: (Authenticated sender: ahmad@a3f.at)
 by relay5-d.mail.gandi.net (Postfix) with ESMTPSA id BEDEA1C0003;
 Fri, 14 Jan 2022 08:38:29 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Fri, 14 Jan 2022 09:38:23 +0100
Message-Id: <20220114083825.726347-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_003833_449918_452BC160 
X-CRM114-Status: UNSURE (   6.95  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.5 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 1/3] ARM: rockchip: add new ARCH_ROCKCHIP_{V7,V8} symbols
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

In preparation for adding rk3399 support, which is another SoC with
ARMv8 CPUs, add new ARCH_ROCKCHIP_{V7,V8} symbols for the common
functionality.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/arm/mach-rockchip/Kconfig  | 18 ++++++++++++------
 arch/arm/mach-rockchip/Makefile |  5 +++--
 2 files changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 2e855714f7da..596de663f9e3 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -12,24 +12,30 @@ config RK_TIMER
 	hex
 	default 1
 
-config ARCH_RK3188
+config ARCH_ROCKCHIP_V7
 	bool
 	select CPU_V7
 	select ARM_SMP_TWD
 	select ARCH_HAS_L2X0
 
+config ARCH_RK3188
+	bool
+	select ARCH_ROCKCHIP_V7
+
 config ARCH_RK3288
 	bool
-	select CPU_V7
-	select ARM_SMP_TWD
-	select ARCH_HAS_L2X0
+	select ARCH_ROCKCHIP_V7
 	select CLOCKSOURCE_ROCKCHIP
 
-config ARCH_RK3568
+config ARCH_ROCKCHIP_V8
 	bool
 	select CPU_V8
-	select ARM_ATF
 	select SYS_SUPPORTS_64BIT_KERNEL
+	select ARM_ATF
+
+config ARCH_RK3568
+	bool
+	select ARCH_ROCKCHIP_V8
 
 comment "select Rockchip boards:"
 
diff --git a/arch/arm/mach-rockchip/Makefile b/arch/arm/mach-rockchip/Makefile
index 72bf77c1e124..474b8629d13f 100644
--- a/arch/arm/mach-rockchip/Makefile
+++ b/arch/arm/mach-rockchip/Makefile
@@ -1,9 +1,10 @@
 # SPDX-License-Identifier: GPL-2.0-only
 
 obj-y += rockchip.o
-pbl-$(CONFIG_ARCH_RK3568) += atf.o
+pbl-$(CONFIG_ARCH_ROCKCHIP_V8) += atf.o
 obj-$(CONFIG_ARCH_RK3188) += rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += rk3288.o
+obj-pbl-$(CONFIG_ARCH_RK3399) += rk3399.o
 obj-pbl-$(CONFIG_ARCH_RK3568) += rk3568.o
-obj-$(CONFIG_ARCH_RK3568) += bootm.o
+obj-$(CONFIG_ARCH_ROCKCHIP_V8) += bootm.o
 obj-$(CONFIG_BAREBOX_UPDATE) += bbu.o
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

