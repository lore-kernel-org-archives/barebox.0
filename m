Delivery-date: Tue, 28 Feb 2023 15:32:10 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11V-004kxa-32
	for lore@lore.pengutronix.de; Tue, 28 Feb 2023 15:32:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pX11U-0004iE-VD
	for lore@pengutronix.de; Tue, 28 Feb 2023 15:32:09 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=aTgZDlR3cxZvFVolARZ3Umj/JlLx68fdMeXf7FKYjnE=; b=fAeEnjPKZvrcz4FDkAzuajUE49
	tYfBA78K4O0kcxFHH9dXSTfpLqoS/25f2XStzd8PNjn96WbeKiJ3gnbvkUpL8m7/Mk1lyYDz7C9Ci
	z4V55HJdSW63gLLfGYEh8cIXmUHhGkQMdQdOP4zFjP08RzVIefxy0Je2/RzwjqhR+VkJYv9NSA/QB
	e9wkZJVEIuk9aeF5H/lGKhLWfOU7uKx2AWxjhEl0eRNLwdcXQhtmx6NYa0x2GdHvzbADDB6IRH1fz
	6uEptpm4NXTqbh55/20tlR1oEiIhC3LbEgKCxY6GRhSYIp51O/K2RNGU/RayrZ40xcbOJfQcao3Oa
	4acoUxYQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX10O-00DSrX-5u; Tue, 28 Feb 2023 14:31:00 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pX101-00DSgZ-5W
	for barebox@lists.infradead.org; Tue, 28 Feb 2023 14:30:41 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-00048w-V9; Tue, 28 Feb 2023 15:30:35 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zz-000t9M-Ar; Tue, 28 Feb 2023 15:30:35 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pX0zw-007LWX-T5; Tue, 28 Feb 2023 15:30:32 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue, 28 Feb 2023 15:30:25 +0100
Message-Id: <20230228143031.1718565-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230228143031.1718565-1-s.hauer@pengutronix.de>
References: <20230228143031.1718565-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230228_063037_223508_E94D02B6 
X-CRM114-Status: GOOD (  12.51  )
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
Subject: [PATCH 3/9] ARM: rockchip: drop mach/timer.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

mach/timer.h only contains the declaration of struct rk_timer. Move
this into its only user and drop the file.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-rockchip/include/mach/timer.h | 19 -------------------
 drivers/clocksource/rk_timer.c              | 10 +++++++++-
 2 files changed, 9 insertions(+), 20 deletions(-)
 delete mode 100644 arch/arm/mach-rockchip/include/mach/timer.h

diff --git a/arch/arm/mach-rockchip/include/mach/timer.h b/arch/arm/mach-rockchip/include/mach/timer.h
deleted file mode 100644
index e6ed0e4e3e..0000000000
--- a/arch/arm/mach-rockchip/include/mach/timer.h
+++ /dev/null
@@ -1,19 +0,0 @@
-/*
- * (C) Copyright 2015 Rockchip Electronics Co., Ltd
- *
- * SPDX-License-Identifier:     GPL-2.0+
- */
-
-#ifndef _ASM_ARCH_TIMER_H
-#define _ASM_ARCH_TIMER_H
-
-struct rk_timer {
-	unsigned int timer_load_count0;
-	unsigned int timer_load_count1;
-	unsigned int timer_curr_value0;
-	unsigned int timer_curr_value1;
-	unsigned int timer_ctrl_reg;
-	unsigned int timer_int_status;
-};
-
-#endif
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index 36aa6949e3..1d4b764561 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -10,12 +10,20 @@
 #include <clock.h>
 #include <init.h>
 #include <io.h>
-#include <mach/timer.h>
 #include <stdio.h>
 #include <mach/hardware.h>
 #include <mach/cru_rk3288.h>
 #include <common.h>
 
+struct rk_timer {
+	unsigned int timer_load_count0;
+	unsigned int timer_load_count1;
+	unsigned int timer_curr_value0;
+	unsigned int timer_curr_value1;
+	unsigned int timer_ctrl_reg;
+	unsigned int timer_int_status;
+};
+
 struct rk_timer *timer_ptr;
 
 static uint64_t rockchip_get_ticks(void)
-- 
2.30.2



