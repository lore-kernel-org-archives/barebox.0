Delivery-date: Tue, 02 May 2023 11:15:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6o-002Adb-O4
	for lore@lore.pengutronix.de; Tue, 02 May 2023 11:15:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1ptm6m-0002GF-9a
	for lore@pengutronix.de; Tue, 02 May 2023 11:15:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q2UKiwtpbwgkIxUaui72UdS2k0Krs/QHp9FMBWtQ+ro=; b=tTNkt8YjmphOhqnnVazhBO6kkJ
	RjasK0VlIDTC422Wh1vdyHzc6bohmkqz4jKBfdlnsdFysk86czP2Aayj2Msk+X1ja8KM1WxuoHg+q
	Svesncjxli4akcgeJiJhjN9DPUrnw+1TLraMYtcNAoLFOIPj5Ak15gRtC5cLlj/b5+KqSsyzC8zMa
	sMv701fctGjqCmUFvixZSuHmEclOj7cqgjg6XA6qa7I0u6ZIKArpqTO7s2yKmxAN3RekYJADqXg/k
	c5LAUQSGatP5cBmGq41qRVN1y3BAcv60vWWr7zA983axLSadPLut+Wh8CHvLdEV2OmluCyzh4Ybmc
	/ye2ToGg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5g-000jPS-3B;
	Tue, 02 May 2023 09:14:32 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1ptm5Y-000jH0-0B
	for barebox@lists.infradead.org;
	Tue, 02 May 2023 09:14:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-0001Ah-QV; Tue, 02 May 2023 11:14:22 +0200
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5W-000Yjq-CS; Tue, 02 May 2023 11:14:22 +0200
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1ptm5U-00AqzE-5C; Tue, 02 May 2023 11:14:20 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Tue,  2 May 2023 11:14:10 +0200
Message-Id: <20230502091419.2551228-4-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230502091419.2551228-1-s.hauer@pengutronix.de>
References: <20230502091419.2551228-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230502_021424_092468_1623F0C1 
X-CRM114-Status: GOOD (  12.14  )
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
Subject: [PATCH 03/12] ARM: versatile: drop platform code to register UART
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/boards/versatile/versatilepb.c |  2 --
 arch/arm/mach-versatile/core.c          | 24 ------------------------
 include/mach/versatile/init.h           |  8 --------
 3 files changed, 34 deletions(-)
 delete mode 100644 include/mach/versatile/init.h

diff --git a/arch/arm/boards/versatile/versatilepb.c b/arch/arm/boards/versatile/versatilepb.c
index 923dbd2564..c5ce46e525 100644
--- a/arch/arm/boards/versatile/versatilepb.c
+++ b/arch/arm/boards/versatile/versatilepb.c
@@ -14,7 +14,6 @@
 #include <asm/armlinux.h>
 #include <asm/system_info.h>
 #include <generated/mach-types.h>
-#include <mach/versatile/init.h>
 #include <mach/versatile/platform.h>
 #include <environment.h>
 #include <linux/sizes.h>
@@ -36,7 +35,6 @@ static int vpb_console_init(void)
 	barebox_set_hostname(hostname);
 	barebox_set_model(model);
 
-	versatile_register_uart(0);
 	return 0;
 }
 console_initcall(vpb_console_init);
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 69ff82e9a5..8e32d10302 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -39,7 +39,6 @@
 #include <asm/armlinux.h>
 
 #include <mach/versatile/platform.h>
-#include <mach/versatile/init.h>
 
 
 /* 1Mhz / 256 */
@@ -101,29 +100,6 @@ static int vpb_clocksource_init(void)
 
 core_initcall(vpb_clocksource_init);
 
-void versatile_register_uart(unsigned id)
-{
-	resource_size_t start;
-
-	switch (id) {
-	case 0:
-		start = VERSATILE_UART0_BASE;
-		break;
-	case 1:
-		start = VERSATILE_UART1_BASE;
-		break;
-	case 2:
-		start = VERSATILE_UART2_BASE;
-		break;
-	case 3:
-		start = VERSATILE_UART3_BASE;
-		break;
-	default:
-		return;
-	}
-	amba_apb_device_add(NULL, "uart-pl011", id, start, 4096, NULL, 0);
-}
-
 static void __noreturn versatile_reset_soc(struct restart_handler *rst)
 {
 	u32 val;
diff --git a/include/mach/versatile/init.h b/include/mach/versatile/init.h
deleted file mode 100644
index e47aa857a1..0000000000
--- a/include/mach/versatile/init.h
+++ /dev/null
@@ -1,8 +0,0 @@
-/* SPDX-License-Identifier: GPL-2.0-only */
-
-#ifndef __VERSATILE_INIT_H__
-#define __VERSATILE_INIT_H__
-
-void versatile_register_uart(unsigned id);
-
-#endif
-- 
2.39.2



