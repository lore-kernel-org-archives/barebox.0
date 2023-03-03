Delivery-date: Fri, 03 Mar 2023 10:27:55 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1hi-007Npn-64
	for lore@lore.pengutronix.de; Fri, 03 Mar 2023 10:27:55 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pY1hh-0003Kg-LH
	for lore@pengutronix.de; Fri, 03 Mar 2023 10:27:54 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=IiikB1tCDjI8IFiLQTwbMvKk5JP9Io2UUuhBPFhVfXA=; b=fxDpsuDlrGw8iAtPuH4Qya82Fo
	1dym4g/II8qr+E9s5i6rOHFeqW7C8dbUQTwbYiSffQMRwnw39zeELd6LhzIfbjoOmYd8lswPr5QZN
	DPyDnqskX8vwdBBMq3GjJw7gE2MlsHXUv2QWkJYGATAKadhliZGKIy+ILp4KQ9lXr317DNPxzodVU
	38sdiZbq90JSVx5qz0n55u+t8yHJu4T78ugrp25ujmyYQlBgxZihL8J340Wr85Pew4rpQDb3j21NG
	2c4x/Lbcv/ZlLAmV4AdUmUPVsAWw+tPk6glxIR89SvtHAykPRAotiNsw16g83A3bSn2WqW+CV7ouh
	K27IXQtg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1gU-005hvT-S8; Fri, 03 Mar 2023 09:26:40 +0000
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bu-005eWm-SM
	for barebox@bombadil.infradead.org; Fri, 03 Mar 2023 09:21:54 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=casper.20170209; h=Content-Transfer-Encoding:MIME-Version:
	References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=IiikB1tCDjI8IFiLQTwbMvKk5JP9Io2UUuhBPFhVfXA=; b=iJr9VFkJ7nk/huC85wzhlNaKrK
	HNEDntm64eR3KBsvE1f6cPfCyrjmnsHLOI1E8T3+hskUK3rWtZ+8O4NPCL0A8JYymeUB7AbQpNSIV
	kyKuR7gapaPZ5b/rc/GlDWacZisBlus78EdAFL28STcla+0aOSD/1rk0z829PeXFMnASvkhHa22xp
	b2SIMpPFzCcMQtdGgNB72gfmiDd9UicbSMc7c+MWwzfJvLOpPlY0n5daatExn/s7cEVXlTkfbaFPq
	UjSOCvpqLH3N7OIj/1dIfwVfW5HMCF09muT9hRG22buOTATDnfDKojJtbj9rbRCrqJ0YU/VM8St7L
	qYBlpTSQ==;
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by casper.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pY1bn-0031N5-DC
	for barebox@lists.infradead.org; Fri, 03 Mar 2023 09:21:53 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-0000IM-R8; Fri, 03 Mar 2023 10:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bj-001Wjm-5t; Fri, 03 Mar 2023 10:21:43 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1pY1bb-00F2l5-4k; Fri, 03 Mar 2023 10:21:35 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri,  3 Mar 2023 10:21:25 +0100
Message-Id: <20230303092131.3063587-45-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230303092131.3063587-1-s.hauer@pengutronix.de>
References: <20230303092131.3063587-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230303_092148_035112_FC15EEE0 
X-CRM114-Status: GOOD (  14.89  )
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 44/50] ARM: vexpress: Drop unnecessary initcall
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Call vexpress_restart_register_feature() from vexpress_*init() to
get rid of an unnecessary initcall.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/mach-vexpress/reset.c   | 9 ++++-----
 arch/arm/mach-vexpress/v2m.c     | 5 +++--
 include/mach/vexpress/vexpress.h | 6 ++++++
 3 files changed, 13 insertions(+), 7 deletions(-)
 create mode 100644 include/mach/vexpress/vexpress.h

diff --git a/arch/arm/mach-vexpress/reset.c b/arch/arm/mach-vexpress/reset.c
index f0fa75330e..0d626db7d7 100644
--- a/arch/arm/mach-vexpress/reset.c
+++ b/arch/arm/mach-vexpress/reset.c
@@ -9,7 +9,7 @@
 #include <init.h>
 #include <restart.h>
 #include <linux/amba/sp805.h>
-
+#include <mach/vexpress/vexpress.h>
 #include <mach/vexpress/devices.h>
 
 void __iomem *v2m_wdt_base;
@@ -22,10 +22,9 @@ static void __noreturn vexpress_reset_soc(struct restart_handler *rst)
 	hang();
 }
 
-static int restart_register_feature(void)
+void vexpress_restart_register_feature(void __iomem *base)
 {
-	restart_handler_register_fn("soc-wdt", vexpress_reset_soc);
+	v2m_wdt_base = base;
 
-	return 0;
+	restart_handler_register_fn("soc-wdt", vexpress_reset_soc);
 }
-coredevice_initcall(restart_register_feature);
diff --git a/arch/arm/mach-vexpress/v2m.c b/arch/arm/mach-vexpress/v2m.c
index 9181d7e2ef..5c4c2478cf 100644
--- a/arch/arm/mach-vexpress/v2m.c
+++ b/arch/arm/mach-vexpress/v2m.c
@@ -8,6 +8,7 @@
 #include <io.h>
 #include <asm/hardware/sp810.h>
 #include <mach/vexpress/devices.h>
+#include <mach/vexpress/vexpress.h>
 
 void __iomem *v2m_sysreg_base;
 
@@ -26,12 +27,12 @@ static void v2m_sysctl_init(void __iomem *base)
 
 void vexpress_a9_legacy_init(void)
 {
-	v2m_wdt_base = IOMEM(0x1000f000);
 	v2m_sysctl_init(IOMEM(0x10001000));
+	vexpress_restart_register_feature(IOMEM(0x1000f000));
 }
 
 void vexpress_init(void)
 {
-	v2m_wdt_base = IOMEM(0x1c0f0000);
 	v2m_sysctl_init(IOMEM(0x1c020000));
+	vexpress_restart_register_feature(IOMEM(0x1c0f0000));
 }
diff --git a/include/mach/vexpress/vexpress.h b/include/mach/vexpress/vexpress.h
new file mode 100644
index 0000000000..768a3ab07a
--- /dev/null
+++ b/include/mach/vexpress/vexpress.h
@@ -0,0 +1,6 @@
+#ifndef __MACH_VEXPRESS_VEXPRESS_H
+#define __MACH_VEXPRESS_VEXPRESS_H
+
+void vexpress_restart_register_feature(void __iomem *base);
+
+#endif /* __MACH_VEXPRESS_VEXPRESS_H */
-- 
2.30.2



