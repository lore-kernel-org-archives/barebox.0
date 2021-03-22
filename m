Delivery-date: Mon, 22 Mar 2021 08:23:05 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEu1-0003Au-Dy
	for lore@lore.pengutronix.de; Mon, 22 Mar 2021 08:23:05 +0100
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lOEu0-0001Qt-LB
	for lore@pengutronix.de; Mon, 22 Mar 2021 08:23:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=7xyV3ZX1bNfnvmbO15iX620hGY9r/yriZ/h+i10+UKU=; b=U2jgOH4mVdiX1V5aokF3mjAbE
	AZrnWZLw9Ad7VqWjGhpFTw9M/jVQpUoNkxIAMcjCy5wqxXnCc46sIgoILplmDKXv19oQcu/pmAFrU
	VTc5TTNhgPct457b3vtETkf2atycKyr2KypM1jKZhQsI+JKKYU2VL0so4+Oyx4s54pysy/gRgw8Wh
	H0By7TmznosdHJr81wO2grBFL+hGqrsRaZ3ePychmf1JTHLDNl3FBZYAw3ICWo5/4FQbqtjoNHl7Z
	ucrtRo0g7nBDOo191M1ZXxhE2xTxWW45pK03aQwqiOD5QvAfx6SZY8zhxhdMH0eQZhDgFrHLWKnC9
	vZ8bmXkPw==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lOEt4-00B4lk-Nj; Mon, 22 Mar 2021 07:22:06 +0000
Received: from relay12.mail.gandi.net ([217.70.178.232])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lOEss-00B4l1-HU
 for barebox@lists.infradead.org; Mon, 22 Mar 2021 07:21:56 +0000
Received: from geraet.fritz.box (unknown [83.135.84.27])
 (Authenticated sender: ahmad@a3f.at)
 by relay12.mail.gandi.net (Postfix) with ESMTPSA id 84CE8200009;
 Mon, 22 Mar 2021 07:21:53 +0000 (UTC)
From: Ahmad Fatoum <ahmad@a3f.at>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <ahmad@a3f.at>
Date: Mon, 22 Mar 2021 08:21:49 +0100
Message-Id: <20210322072149.3740811-1-ahmad@a3f.at>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210321151344.5810-21-a.fatoum@pengutronix.de>
References: <20210321151344.5810-21-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210322_072154_817147_ACF7A894 
X-CRM114-Status: GOOD (  12.41  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH] fixup! clocksource: add driver for RISC-V and CLINT timers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This were wrongly squashed into the commit after.

Signed-off-by: Ahmad Fatoum <ahmad@a3f.at>
---
 arch/riscv/Kconfig                |  1 +
 arch/riscv/dts/erizo.dtsi         |  2 +-
 drivers/clocksource/Kconfig       |  2 +-
 drivers/clocksource/timer-riscv.c | 18 +++++++++++++++++-
 4 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
index ce338e3f1f95..c0583f31536b 100644
--- a/arch/riscv/Kconfig
+++ b/arch/riscv/Kconfig
@@ -32,6 +32,7 @@ config MACH_ERIZO
 	select HAS_NMON
 	select USE_COMPRESSED_DTB
 	select RISCV_M_MODE
+	select RISCV_TIMER
 
 config MACH_VIRT
 	bool "virt family"
diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
index 07534798ac75..e854a48ae55c 100644
--- a/arch/riscv/dts/erizo.dtsi
+++ b/arch/riscv/dts/erizo.dtsi
@@ -22,7 +22,7 @@ fixed-clock
 
 		cpu@0 {
 			device_type = "cpu";
-			compatible = "cliffordwolf,picorv32";
+			compatible = "cliffordwolf,picorv32", "riscv";
 			clocks = <&ref_clk>;
 			reg = <0>;
 		};
diff --git a/drivers/clocksource/Kconfig b/drivers/clocksource/Kconfig
index 2d8f5113ad8d..7bc69afd7820 100644
--- a/drivers/clocksource/Kconfig
+++ b/drivers/clocksource/Kconfig
@@ -101,7 +101,7 @@ config CLOCKSOURCE_TI_32K
 
 config RISCV_TIMER
 	bool "Timer for the RISC-V platform" if COMPILE_TEST
-	depends on RISCV && RISCV_SBI
+	depends on RISCV
 	help
 	  This enables the per-hart timer built into all RISC-V systems, which
 	  is accessed via both the SBI and the rdcycle instruction.  This is
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index 637285fd78a7..eb5ba2d8c226 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -13,7 +13,7 @@
 #include <asm/timer.h>
 #include <asm/csr.h>
 
-static u64 notrace riscv_timer_get_count(void)
+static u64 notrace riscv_timer_get_count_sbi(void)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -28,6 +28,22 @@ static u64 notrace riscv_timer_get_count(void)
 	return ((u64)hi << 32) | lo;
 }
 
+static u64 notrace riscv_timer_get_count_rdcycle(void)
+{
+	u64 ticks;
+	asm volatile("rdcycle %0" : "=r" (ticks));
+
+	return ticks;
+}
+
+static u64 notrace riscv_timer_get_count(void)
+{
+	if (IS_ENABLED(CONFIG_RISCV_SBI))
+		return riscv_timer_get_count_sbi();
+	else
+		return riscv_timer_get_count_rdcycle();
+}
+
 static struct clocksource riscv_clocksource = {
 	.read		= riscv_timer_get_count,
 	.mask		= CLOCKSOURCE_MASK(64),
-- 
2.30.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

