Delivery-date: Tue, 25 May 2021 09:21:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRNr-0008CL-EO
	for lore@lore.pengutronix.de; Tue, 25 May 2021 09:21:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1llRNp-0003iy-Oz
	for lore@pengutronix.de; Tue, 25 May 2021 09:21:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=j0UOyYSWSwuZ7BKEe3MMAZV1VSbtJXl6W4YlxHkXAZA=; b=a03nKL6t01kShi
	Z+Xappjj+jVsuXvhmK36zGZQAQpAftWRFCKBaSd+Ly5ksXt891GHWV5qTMeJB96doHk1GvAIGXfvB
	9AO5I43d/IFNn1FMQIqglc+Pb6i3WfryDmruB0sfT3S8/2D49jBJIJXQ/3gI6M77wFZGhfZPfBF6V
	LrawS6ID0aINBc21knZhkls0QC/KyXFSjVHQPZXH8Iby0h1cxCC20WheehUlUxdvzMBpKo8Ksw/9l
	aiCTEtpPGQwS8AiffG5WDJ2W9TqCdLWGmVGAfR3tthSU8fG+KW0cwF5IJcohn5NSz6CpKTdrJgvhV
	fxxixHNqQ1jYPKtjKQmw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1llRMY-003pum-Q1; Tue, 25 May 2021 07:20:27 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1llRMD-003pmp-Qg
 for barebox@lists.infradead.org; Tue, 25 May 2021 07:20:09 +0000
Received: by mail-lf1-x12c.google.com with SMTP id q3so14334731lfu.2
 for <barebox@lists.infradead.org>; Tue, 25 May 2021 00:20:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=ueTC082uJ3OuL1Evs5+7Xn2WE6062yrdObwRobPZ5nQ=;
 b=NWTnjvRp+bW9HnWZLxxVpcKM2EDutf+2AHgRsrSqQ65FTGg0lJ4rqYL6jgx/vlaG3W
 LIxlqsXiOrbdcK3rfXNqT1SM7aSwveUD7DOYJ/2R/sSS+OjSB5q2VgUj9u63jvs1d8eW
 +Ya7KXbsnzzW2fMCwmtC8ycSbw/k79E1b0GOdLzkm8kocJP2fZKVC05ygUSC4NCVEY9I
 H4PcRCObyUv4tFYDnvgRIgt57d5k3paMiZYZCbfyiyjh4eYwSfKRi2BMA4TVxsyHTlku
 0O6Fh60Aj/yd82D0nFSJh/akghL0gsmFZclVAYwwfZVSh/UsbK5QS1DI8nhO0FGMdd2C
 +ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=ueTC082uJ3OuL1Evs5+7Xn2WE6062yrdObwRobPZ5nQ=;
 b=pFLHQ5T1QBFCDEX1Fuj+LgKwtT2pxwIpbxGyWdCPEfiEan76UInqW/gDlRP6+D0XSs
 OBNjhkIDMF9V1loGotnYgtGNH9A2t5wRFFfEd+KeA8X5Pq8rUstPTDnwzuCeRDG8BnMA
 tBmcvz4GPXU4QMcDkrIohywdtSi1tsklsN4TiEw1SN2PdMFASMX3B14QpfVxNcn+oS7c
 WcNQG0NaIbTX2aP8j8vVCTo18OVKmBPlY03FF7RtihxsakWjAJ1fGbfz1yBumONl+ey1
 q44jyymfmYyLbAtC8Ov8aUyywSLxCkerQ4K2DlP6oDwCbOXNhRx1TzQQLBGPhlrcfBrq
 3Pmg==
X-Gm-Message-State: AOAM530gZn4ZA4lQTJ8/txeSjJIQo6S7PVrUIF9WqdMsZrD5Gm5+XijW
 rI+sxrq0NJ26J6xIO/eVpHe4E1BWbnVwdQ==
X-Google-Smtp-Source: ABdhPJy0ia68w3JWauu+o0mSsH8Ba5sp32gseg9HaWe8u5Sq15HlR21UCaeTcGvFjhtshOLvYWmEyQ==
X-Received: by 2002:a05:6512:1284:: with SMTP id
 u4mr12826882lfs.49.1621927204316; 
 Tue, 25 May 2021 00:20:04 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-17.dynamic.spd-mgts.ru.
 [109.252.203.17])
 by smtp.gmail.com with ESMTPSA id f36sm1641387lfv.248.2021.05.25.00.20.03
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 May 2021 00:20:04 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 25 May 2021 10:19:43 +0300
Message-Id: <20210525071952.18045-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210525071952.18045-1-antonynpavlov@gmail.com>
References: <20210525071952.18045-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210525_002005_931978_84CDBA19 
X-CRM114-Status: GOOD (  15.16  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.1 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/10] clocksource: timer-riscv: select CSR from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox timer-riscv driver supports one of user counters:

  * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
  * 'time', timer for RDTIME instruction (CSR 0xc01).

At the moment in M-mode timer-riscv uses the 'cycle' counter,
and in S-mode timer-riscv uses the 'time' timer.

Alas picorv32 CPU core supports only the 'cycle' counter.
VexRiscV CPU core in M-mode supports only the 'time' timer.

This patch makes it possible to use the 'time' timer
for VexRiscV CPU in M-mode.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/dts/erizo.dtsi         |  2 ++
 drivers/clocksource/timer-riscv.c | 24 ++++++++++++------------
 2 files changed, 14 insertions(+), 12 deletions(-)

diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
index 228711bd69..4eb92ae6f1 100644
--- a/arch/riscv/dts/erizo.dtsi
+++ b/arch/riscv/dts/erizo.dtsi
@@ -22,6 +22,8 @@
 
 		timebase-frequency = <24000000>;
 
+		barebox,csr-cycle;
+
 		cpu@0 {
 			device_type = "cpu";
 			compatible = "cliffordwolf,picorv32", "riscv";
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index cbbe18d9a6..305d1ecea0 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -12,9 +12,8 @@
 #include <clock.h>
 #include <asm/timer.h>
 #include <asm/csr.h>
-#include <asm/system.h>
 
-static u64 notrace riscv_timer_get_count_sbi(void)
+static u64 notrace riscv_timer_get_count_time(void)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -29,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
 	return ((u64)hi << 32) | lo;
 }
 
-static u64 notrace riscv_timer_get_count_rdcycle(void)
+static u64 notrace riscv_timer_get_count_cycle(void)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -44,24 +43,25 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
 	return ((u64)hi << 32) | lo;
 }
 
-static u64 notrace riscv_timer_get_count(void)
-{
-	if (riscv_mode() == RISCV_S_MODE)
-		return riscv_timer_get_count_sbi();
-	else
-		return riscv_timer_get_count_rdcycle();
-}
-
 static struct clocksource riscv_clocksource = {
-	.read		= riscv_timer_get_count,
 	.mask		= CLOCKSOURCE_MASK(64),
 	.priority	= 100,
 };
 
 static int riscv_timer_init(struct device_d* dev)
 {
+	struct device_node *cpu;
+
 	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
 
+	cpu = of_find_node_by_path("/cpus");
+
+	if (of_property_read_bool(cpu, "barebox,csr-cycle")) {
+		riscv_clocksource.read = riscv_timer_get_count_cycle;
+	} else {
+		riscv_clocksource.read = riscv_timer_get_count_time;
+	}
+
 	riscv_clocksource.mult = clocksource_hz2mult(riscv_timebase, riscv_clocksource.shift);
 
 	return init_clock(&riscv_clocksource);
-- 
2.31.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

