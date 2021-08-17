Delivery-date: Tue, 17 Aug 2021 12:13:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5v-0005u1-5X
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:13:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFw5q-0003af-D1
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:13:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzB2GXwzhYiihsSMYwkfErMeoVtq/SnIKtdKaoLelHQ=; b=si2DBt68cJQakE
	2Aug1OL8dGSM6zz5pB2v1RhJzgM4pK0zakfVH5tplUmw8Kjx+VZR+ny14kllYEVL7Ppgk/f1dFQ9+
	GcEO2Ix9KhBs6w6IHqkMASJJfmw24XO8mvhGYbC9zd4C473sBVWJalH3nUqFHeNyMZXF5eRMbdfYH
	/7inS5HSENAoU8ztCaywHgsTvgp348xU6OT+lao3lW3lNOp64udg0x9KaFwQ9gxVNilDqrQ8r1AoK
	4akYHPHnkCd7Ph9SJ0OYudg73+MqRFNGkhzs0mU/zOHaJCm3uPT/1AJSHzH4sXGjSUNtfSS8N0anP
	fa7xQ1pyLvdpJEmSk+Eg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFw4A-0021fp-FC; Tue, 17 Aug 2021 10:11:30 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFw3w-0021as-TS
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:11:20 +0000
Received: by mail-lf1-x130.google.com with SMTP id x27so40350452lfu.5
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:11:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvUEXO1NARnIBnPiYsCIxJ5G4OEU+FKYc16BQylhrsk=;
 b=gJyYEt5r159gBplqHoqH0JowW5xeXIfIiPTxpksBqx2V14C0tbN/S8TYHf5SZDkqLe
 Z4b+bwpI9pZSajYTaea0XNhgs8NFPysGsTmLnG+r285FLNEsr5s5psdBG+lem3avwbzg
 7CPiZN+YBi3nBD/YNypWooGrNWIKoSnuXNyp9jnkgIcydhqKuO6ZudijnL7H0AYAa2oq
 wL3VUCySenulqtqBIMgkB5joazoAiR6MhISv0RXcxIKTXr5SbeAN57wPWMtir4MnnMIO
 nkehU52h7wnQPUCDApSvaEgKQU1Im95p8LUojBqa5rMIY1NoPbKCExtbJIsj09fX/8Yo
 kYcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvUEXO1NARnIBnPiYsCIxJ5G4OEU+FKYc16BQylhrsk=;
 b=fXpwR1ZBKWFsQQymiTRAjSuEyHjgA/d0LDmlu2EitXmz+RnMUhq67b0x7CnppFMOX6
 q2E02gEdg3vdKTgvbMG7iXVDMXA/w9NmZ1q70m77rzyaiaqHJefJ3N/lzkd/yeIptwP0
 rfDUh0CLnhE5qlfPWryjDryfAQU1N4kLn81/Ed5+pNOt8rxx/l8/oaYns9vzheuJ3F+t
 2SgovPv6n6Y9pPl2gvv26PSPIAyEvL6Osq+bS/g4NrTmJ48fD5WFu1zIq7txd0ox8gdg
 ZGdiPR7baDFLRw8oJ9ztC0ufhO1MPVT/yTmFmcLkwmfG1j9eoQCn3kMsm+E4UcypwuvS
 KtHw==
X-Gm-Message-State: AOAM532T45Lf2/TKgbGImZiRRXsIDXlS76q28LBpazV5VdiLxUgJ6iPt
 4/jhs2zXctdZSnwXGUGnqOzEIBxQl7M=
X-Google-Smtp-Source: ABdhPJyy120lGwOTQhLW7mLdSzFXLlUDUc1ev6PBanFh212ntN/mCAikdOcBPJHh5x0qjWTMpMIZPw==
X-Received: by 2002:ac2:46ef:: with SMTP id q15mr1869527lfo.407.1629195075319; 
 Tue, 17 Aug 2021 03:11:15 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id x16sm144412lfa.244.2021.08.17.03.11.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:11:15 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:10:57 +0300
Message-Id: <20210817101104.114945-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817101104.114945-1-antonynpavlov@gmail.com>
References: <20210817101104.114945-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_031116_971828_DBD400D2 
X-CRM114-Status: GOOD (  14.91  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH RESEND v4 1/8] clocksource: timer-riscv: select CSR from
 device tree
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

See also http://lists.infradead.org/pipermail/barebox/2021-May/036067.html

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
index 5a517fe6b4..96637f988a 100644
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
 	dev_dbg(dev, "running at %lu Hz\n", riscv_timebase);
 
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
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

