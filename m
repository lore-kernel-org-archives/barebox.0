Delivery-date: Fri, 10 Jun 2022 10:58:33 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaTR-009qPj-J9
	for lore@lore.pengutronix.de; Fri, 10 Jun 2022 10:58:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nzaTN-00055g-O0
	for lore@pengutronix.de; Fri, 10 Jun 2022 10:58:33 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OJCHVYuhRfEQogdr5DzRdR4fTw5f6j02L5VPEsxiFD0=; b=Pb2fGMdQwAK0gL
	QLmD7UUClnuKsaIvRb76I+WXP3sI5xQ0f7ZS3E6KT3mxTuSfUofJ2XxNyjtkzSMeadlZdBNqdHkxj
	/iTMFCKIsIODRTuzZClgOsJrs5xpukVB5ytAa7uqyXd5w1r671eFERFPNVPQ7IJFQ9NduYqZ+46RU
	OIj+drl34DxFtkvfJyijXUzhkikpL2r4mPS1IsYEC+oqW9oFphf/lvTSfGV9uU6QqCz34tu0gYuCJ
	F6ntvmftmwh65wz10li7gookFlMdV2hWtv3LtN94y8p8OuxASHIRMHMEucTEVcGiyzlfG8v8KoYoC
	nz0K6M1Dk2DZ0jvNca6g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaRp-006xW6-Lc; Fri, 10 Jun 2022 08:56:53 +0000
Received: from mail-lj1-x229.google.com ([2a00:1450:4864:20::229])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nzaRf-006xTS-Tx
	for barebox@lists.infradead.org; Fri, 10 Jun 2022 08:56:47 +0000
Received: by mail-lj1-x229.google.com with SMTP id d19so16397913lji.10
        for <barebox@lists.infradead.org>; Fri, 10 Jun 2022 01:56:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yvfloQ0c3qVm4P87BRaHi7BrMykrK61EvJs/PyM5sn0=;
        b=AgtZhkWcF7eKirmZNebdCPHm1pK4AB9uavKXqZLo884WKC8/Pooszjn8UYiX9FpLo3
         SMQ/LMbi1XaC+69tCSx2R9+YWcbugAyhQkUSoR/sR+UmpwMdG2lgVtYRbigrcbyPAkfl
         iLnT7JtXIsEF7qYbA2HLARL22jytZ6ta0p2RlJiUrwGpZjhpaiYTWiTcuL4rbyCUtb73
         ftxpoDHh85cszEvnkeSE/Xfb6q1dk7aNYJgxvMbo2UE6noYR369lL1vjpcUs8t2kNek+
         IsYWCORObMjbVc4OQbA0tK46GP5hYoVsYu2SzRsEeEreyG9oFh0uPRss6rQcd+sB0hhx
         NwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=yvfloQ0c3qVm4P87BRaHi7BrMykrK61EvJs/PyM5sn0=;
        b=t8MxBlZq50cyuZCNHFm9M4nI8hrHQrscK+EHVMzzmcm3lgAe4mHQSKuRw9J+wZVrSf
         EKJ/j1sSCAPJezUnYKv8y2/7UrQKW1XyDVqBGABW1uuc4kVFm4sD1NaGCiY4GvFQrUra
         nesAoV1gxRXWsKswkmn46qgVlHzsqZXge4BCSMsGRwVv4bR/AHnRjUomf3x1VZPa1oqu
         MQGrEzTe95p0fz1QKVMWEuDGZR6XyCa4P3k37ktRHOOqrhhAZk+Ch2I12QLjWMQlvvj8
         2B0BQMufEjtBSpzPCWRcmRzP45nVk/1CFFBlOGtI5VhyAzNBCReuMaR/ILnclKg6SLhB
         yaGg==
X-Gm-Message-State: AOAM5324LIOUfildEjS9FzxgUrAXXT3F8ByjtnspI85PD0YllJ1qld0e
	C6s0Rd/FOjAmGOmguYAlG2EpqmrgKvQ=
X-Google-Smtp-Source: ABdhPJyPKrSdYpTRHYTJ4ahv/4I1aRoleLE1EXd8/J6H4roADtX8ZCi9nqe2BMK5nKhWsGMchyle2g==
X-Received: by 2002:a2e:94cc:0:b0:24f:81d:15f3 with SMTP id r12-20020a2e94cc000000b0024f081d15f3mr62723273ljh.407.1654851400391;
        Fri, 10 Jun 2022 01:56:40 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q9-20020ac25109000000b00479395286ffsm2484410lfb.107.2022.06.10.01.56.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 01:56:39 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jun 2022 11:56:31 +0300
Message-Id: <20220610085633.21606-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220610_015644_022232_C52C2E7B 
X-CRM114-Status: GOOD (  16.62  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 1/2] clocksource: Introduce a context storage for the clocksource structure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This patch adds a context entry for the clocksource structure.
This field can be used to store any private driver data, and to
distinguish between multiple driver instances for debugging purposes.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-at91/at91rm9200_time.c        |  4 ++--
 arch/arm/mach-davinci/time.c                |  4 ++--
 arch/arm/mach-ep93xx/clocksource.c          |  4 ++--
 arch/arm/mach-mxs/clocksource-imx23.c       |  4 ++--
 arch/arm/mach-mxs/clocksource-imx28.c       |  4 ++--
 arch/arm/mach-pxa/clocksource.c             |  4 ++--
 arch/arm/mach-samsung/s3c-timer.c           |  4 ++--
 arch/arm/mach-tegra/tegra20-timer.c         |  4 ++--
 arch/arm/mach-versatile/core.c              |  4 ++--
 arch/mips/lib/csrc-r4k.c                    |  4 ++--
 arch/mips/mach-xburst/csrc-jz4750.c         |  4 ++--
 arch/openrisc/lib/clock.c                   |  4 ++--
 arch/powerpc/mach-mpc5xxx/time.c            |  4 ++--
 arch/powerpc/mach-mpc85xx/time.c            |  4 ++--
 arch/sandbox/board/clock.c                  |  4 ++--
 common/clock.c                              | 18 +++++++++++-------
 drivers/clocksource/amba-sp804.c            |  4 ++--
 drivers/clocksource/arm_architected_timer.c |  4 ++--
 drivers/clocksource/arm_global_timer.c      |  4 ++--
 drivers/clocksource/arm_smp_twd.c           |  4 ++--
 drivers/clocksource/armv7m_systick.c        |  4 ++--
 drivers/clocksource/bcm2835.c               |  4 ++--
 drivers/clocksource/clps711x.c              |  4 ++--
 drivers/clocksource/digic.c                 |  4 ++--
 drivers/clocksource/dw_apb_timer.c          |  4 ++--
 drivers/clocksource/efi.c                   |  4 ++--
 drivers/clocksource/efi_x86.c               |  4 ++--
 drivers/clocksource/kvx_timer.c             |  4 ++--
 drivers/clocksource/mvebu.c                 |  4 ++--
 drivers/clocksource/nomadik.c               |  4 ++--
 drivers/clocksource/orion.c                 |  4 ++--
 drivers/clocksource/rk_timer.c              |  4 ++--
 drivers/clocksource/timer-atmel-pit.c       |  4 ++--
 drivers/clocksource/timer-clint.c           |  4 ++--
 drivers/clocksource/timer-imx-gpt.c         |  4 ++--
 drivers/clocksource/timer-riscv.c           |  6 +++---
 drivers/clocksource/timer-stm32.c           |  4 ++--
 drivers/clocksource/timer-ti-32k.c          |  4 ++--
 drivers/clocksource/timer-ti-dm.c           |  4 ++--
 drivers/clocksource/uemd.c                  |  4 ++--
 include/clock.h                             |  7 ++++---
 41 files changed, 94 insertions(+), 89 deletions(-)

diff --git a/arch/arm/mach-at91/at91rm9200_time.c b/arch/arm/mach-at91/at91rm9200_time.c
index 110d770881..80d4d7d35e 100644
--- a/arch/arm/mach-at91/at91rm9200_time.c
+++ b/arch/arm/mach-at91/at91rm9200_time.c
@@ -17,7 +17,7 @@ static void __iomem *st = IOMEM(AT91RM9200_BASE_ST);
  * the updates as seen by the CPU don't seem to be strictly monotonic.
  * Waiting until we read the same value twice avoids glitching.
  */
-static uint64_t at91rm9200_clocksource_read(void)
+static uint64_t at91rm9200_clocksource_read(void *ctx)
 {
 	unsigned long x1, x2;
 
@@ -48,7 +48,7 @@ static int clocksource_init (void)
 
 	cs.mult = clocksource_hz2mult(AT91_SLOW_CLOCK, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 core_initcall(clocksource_init);
 
diff --git a/arch/arm/mach-davinci/time.c b/arch/arm/mach-davinci/time.c
index c54e49470b..ba6737e6ba 100644
--- a/arch/arm/mach-davinci/time.c
+++ b/arch/arm/mach-davinci/time.c
@@ -88,7 +88,7 @@ static struct timer_s timers[] = {
 
 static struct timer_s *t = &timers[0];
 
-static uint64_t davinci_cs_read(void)
+static uint64_t davinci_cs_read(void *ctx)
 {
 	return (uint64_t)__raw_readl(t->base + t->tim_off);
 }
@@ -152,7 +152,7 @@ static int clocksource_init(void)
 	clocks_calc_mult_shift(&davinci_cs.mult, &davinci_cs.shift,
 		DAVINCI_TIMER_CLOCK, NSEC_PER_SEC, 10);
 
-	init_clock(&davinci_cs);
+	init_clock(&davinci_cs, NULL);
 
 	timer_init(IOMEM(DAVINCI_TIMER0_BASE));
 	timer_init(IOMEM(DAVINCI_TIMER1_BASE));
diff --git a/arch/arm/mach-ep93xx/clocksource.c b/arch/arm/mach-ep93xx/clocksource.c
index e2a3a39780..1a36e30fc2 100644
--- a/arch/arm/mach-ep93xx/clocksource.c
+++ b/arch/arm/mach-ep93xx/clocksource.c
@@ -26,7 +26,7 @@
 
 #define TIMER_FREQ		508469
 
-static uint64_t ep93xx_clocksource_read(void)
+static uint64_t ep93xx_clocksource_read(void *ctx)
 {
 	struct timer_regs *timer = (struct timer_regs *)TIMER_BASE;
 
@@ -57,7 +57,7 @@ static int clocksource_init(void)
 
 	cs.mult = clocksource_hz2mult(TIMER_FREQ, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/arm/mach-mxs/clocksource-imx23.c b/arch/arm/mach-mxs/clocksource-imx23.c
index ba5aad9f30..c4692a1bf4 100644
--- a/arch/arm/mach-mxs/clocksource-imx23.c
+++ b/arch/arm/mach-mxs/clocksource-imx23.c
@@ -24,7 +24,7 @@ static const unsigned long timer_base = IMX_TIM1_BASE;
 
 #define CLOCK_TICK_RATE (32000)
 
-static uint64_t imx23_clocksource_read(void)
+static uint64_t imx23_clocksource_read(void *ctx)
 {
 	/* only the upper bits are the valid */
 	return ~(readl(timer_base + TIMCOUNT1) >> 16);
@@ -58,7 +58,7 @@ static int clocksource_init(void)
 
 	writel(TIMCTRL_UPDATE | TIMCTRL_RELOAD | TIMCTRL_PRESCALE(0) | TIMCTRL_SELECT(8), timer_base + TIMCTRL1);
 	cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE/*imx_get_xclk()*/, cs.shift);
-	init_clock(&cs);
+	init_clock(&cs, NULL);
 
 	clock_register_client(&imx23_clock_notifier);
 	return 0;
diff --git a/arch/arm/mach-mxs/clocksource-imx28.c b/arch/arm/mach-mxs/clocksource-imx28.c
index 65d8155ad2..0d7d718191 100644
--- a/arch/arm/mach-mxs/clocksource-imx28.c
+++ b/arch/arm/mach-mxs/clocksource-imx28.c
@@ -30,7 +30,7 @@ static const void __iomem * timer_base = (void *)IMX_TIM1_BASE;
 /* we are using the 32 kHz reference */
 #define CLOCK_TICK_RATE 32000
 
-static uint64_t imx28_clocksource_read(void)
+static uint64_t imx28_clocksource_read(void *ctx)
 {
 	return ~(readl(timer_base + TIMCOUNT1));
 }
@@ -56,7 +56,7 @@ static int imx28_clocksource_init(void)
 			TIMCTRL_SELECT(0xb), timer_base + TIMCTRL1);
 	imx28_cs.mult = clocksource_hz2mult(CLOCK_TICK_RATE, imx28_cs.shift);
 
-	return init_clock(&imx28_cs);
+	return init_clock(&imx28_cs, NULL);
 }
 
 core_initcall(imx28_clocksource_init);
diff --git a/arch/arm/mach-pxa/clocksource.c b/arch/arm/mach-pxa/clocksource.c
index 3bc95827d8..bafa74cc4b 100644
--- a/arch/arm/mach-pxa/clocksource.c
+++ b/arch/arm/mach-pxa/clocksource.c
@@ -19,7 +19,7 @@
 
 #define OSCR	0x40A00010
 
-static uint64_t pxa_clocksource_read(void)
+static uint64_t pxa_clocksource_read(void *ctx)
 {
 	return readl(OSCR);
 }
@@ -35,7 +35,7 @@ static int clocksource_init(void)
 {
 	cs.mult = clocksource_hz2mult(3250000, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/arm/mach-samsung/s3c-timer.c b/arch/arm/mach-samsung/s3c-timer.c
index 38bcebc7c4..de70172c35 100644
--- a/arch/arm/mach-samsung/s3c-timer.c
+++ b/arch/arm/mach-samsung/s3c-timer.c
@@ -91,7 +91,7 @@ static void s3c_timer_start(void)
 	writel(tcon, S3C_TCON);
 }
 
-static uint64_t s3c_clocksource_read(void)
+static uint64_t s3c_clocksource_read(void *ctx)
 {
 	/* note: its a down counter */
 	return max - readl(S3C_TCNTO4);
@@ -114,6 +114,6 @@ static int s3c_clk_src_init(void)
 
 	cs.mult = clocksource_hz2mult(s3c_get_t4_clk(), cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 core_initcall(s3c_clk_src_init);
diff --git a/arch/arm/mach-tegra/tegra20-timer.c b/arch/arm/mach-tegra/tegra20-timer.c
index 8ca8cb24fa..d1686cc034 100644
--- a/arch/arm/mach-tegra/tegra20-timer.c
+++ b/arch/arm/mach-tegra/tegra20-timer.c
@@ -33,7 +33,7 @@
 
 static void __iomem *timer_base;
 
-static uint64_t tegra20_timer_cs_read(void)
+static uint64_t tegra20_timer_cs_read(void *ctx)
 {
 	return readl(timer_base + TIMERUS_CNTR_1US);
 }
@@ -88,7 +88,7 @@ static int tegra20_timer_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(1000000, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 static __maybe_unused struct of_device_id tegra20_timer_dt_ids[] = {
diff --git a/arch/arm/mach-versatile/core.c b/arch/arm/mach-versatile/core.c
index 9a2a9cad80..2f457b5457 100644
--- a/arch/arm/mach-versatile/core.c
+++ b/arch/arm/mach-versatile/core.c
@@ -83,7 +83,7 @@ EXPORT_SYMBOL(clk_disable);
 #define TIMER2_BASE (VERSATILE_TIMER2_3_BASE)
 #define TIMER3_BASE ((VERSATILE_TIMER2_3_BASE) + 0x20)
 
-static uint64_t vpb_clocksource_read(void)
+static uint64_t vpb_clocksource_read(void *ctx)
 {
 	return ~readl(TIMER0_BASE + TIMER_VALUE);
 }
@@ -129,7 +129,7 @@ static int vpb_clocksource_init(void)
 	versatile_timer_init();
 	vpb_cs.mult = clocksource_hz2mult(TIMER_FREQ, vpb_cs.shift);
 
-	return init_clock(&vpb_cs);
+	return init_clock(&vpb_cs, NULL);
 }
 
 core_initcall(vpb_clocksource_init);
diff --git a/arch/mips/lib/csrc-r4k.c b/arch/mips/lib/csrc-r4k.c
index 35fba3a29c..d77e57e087 100644
--- a/arch/mips/lib/csrc-r4k.c
+++ b/arch/mips/lib/csrc-r4k.c
@@ -15,7 +15,7 @@
 #include <io.h>
 #include <asm/mipsregs.h>
 
-static uint64_t c0_hpt_read(void)
+static uint64_t c0_hpt_read(void *ctx)
 {
 	return read_c0_count();
 }
@@ -48,6 +48,6 @@ static int clocksource_init(void)
 	clocks_calc_mult_shift(&cs.mult, &cs.shift,
 		mips_hpt_frequency, NSEC_PER_SEC, 10);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 postcore_initcall(clocksource_init);
diff --git a/arch/mips/mach-xburst/csrc-jz4750.c b/arch/mips/mach-xburst/csrc-jz4750.c
index 43135ac498..c90982761a 100644
--- a/arch/mips/mach-xburst/csrc-jz4750.c
+++ b/arch/mips/mach-xburst/csrc-jz4750.c
@@ -15,7 +15,7 @@
 
 #define JZ_TIMER_CLOCK 24000000
 
-static uint64_t jz4750_cs_read(void)
+static uint64_t jz4750_cs_read(void *ctx)
 {
 	return (uint64_t)__raw_readl((void *)TCU_OSTCNT);
 }
@@ -31,7 +31,7 @@ static int clocksource_init(void)
 	clocks_calc_mult_shift(&jz4750_cs.mult, &jz4750_cs.shift,
 		JZ_TIMER_CLOCK, NSEC_PER_SEC, 10);
 
-	init_clock(&jz4750_cs);
+	init_clock(&jz4750_cs, NULL);
 
 	__raw_writel(TCU_OSTCSR_PRESCALE1 | TCU_OSTCSR_EXT_EN,
 		(void *)TCU_OSTCSR);
diff --git a/arch/openrisc/lib/clock.c b/arch/openrisc/lib/clock.c
index 651b163f13..d21ef243a7 100644
--- a/arch/openrisc/lib/clock.c
+++ b/arch/openrisc/lib/clock.c
@@ -19,7 +19,7 @@
 #include <asm/system.h>
 #include <asm/openrisc_exc.h>
 
-static uint64_t openrisc_clocksource_read(void)
+static uint64_t openrisc_clocksource_read(void *ctx)
 {
 	return (uint64_t)(mfspr(SPR_TTCR));
 }
@@ -36,7 +36,7 @@ static int clocksource_init(void)
 	mtspr(SPR_TTMR, SPR_TTMR_CR | 0xFFFFFF);
 	cs.mult = clocksource_hz2mult(OPENRISC_TIMER_FREQ, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/powerpc/mach-mpc5xxx/time.c b/arch/powerpc/mach-mpc5xxx/time.c
index d690d50f0d..5fc51e40d1 100644
--- a/arch/powerpc/mach-mpc5xxx/time.c
+++ b/arch/powerpc/mach-mpc5xxx/time.c
@@ -20,7 +20,7 @@
 #include <mach/clock.h>
 #include <asm/common.h>
 
-static uint64_t ppc_clocksource_read(void)
+static uint64_t ppc_clocksource_read(void *ctx)
 {
 	return get_ticks();
 }
@@ -39,7 +39,7 @@ static int clocksource_init(void)
 
 	cs.mult = clocksource_hz2mult(get_timebase_clock(), cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/powerpc/mach-mpc85xx/time.c b/arch/powerpc/mach-mpc85xx/time.c
index 5981995ac2..08ae1a4009 100644
--- a/arch/powerpc/mach-mpc85xx/time.c
+++ b/arch/powerpc/mach-mpc85xx/time.c
@@ -20,7 +20,7 @@
 #include <init.h>
 #include <mach/clock.h>
 
-static uint64_t ppc_clocksource_read(void)
+static uint64_t ppc_clocksource_read(void *ctx)
 {
 	return get_ticks();
 }
@@ -39,7 +39,7 @@ static int clocksource_init(void)
 	clocks_calc_mult_shift(&cs.mult, &cs.shift,
 				fsl_get_timebase_clock(), NSEC_PER_SEC, 10);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 core_initcall(clocksource_init);
diff --git a/arch/sandbox/board/clock.c b/arch/sandbox/board/clock.c
index 1787fb5786..1b3d216dd1 100644
--- a/arch/sandbox/board/clock.c
+++ b/arch/sandbox/board/clock.c
@@ -19,7 +19,7 @@
 #include <clock.h>
 #include <mach/linux.h>
 
-static uint64_t linux_clocksource_read(void)
+static uint64_t linux_clocksource_read(void *ctx)
 {
 	return linux_get_time();
 }
@@ -35,7 +35,7 @@ static int clocksource_init (void)
 {
 	cs.mult = clocksource_hz2mult(1000 * 1000 * 1000, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 core_initcall(clocksource_init);
diff --git a/common/clock.c b/common/clock.c
index b300e5798a..b7da0c0f0b 100644
--- a/common/clock.c
+++ b/common/clock.c
@@ -17,7 +17,7 @@
 
 static uint64_t time_ns;
 
-static uint64_t dummy_read(void)
+static uint64_t dummy_read(void *ctx)
 {
 	static uint64_t dummy_counter;
 
@@ -56,7 +56,7 @@ uint64_t get_time_ns(void)
 	uint64_t ns_offset;
 
 	/* read clocksource: */
-	cycle_now = cs->read() & cs->mask;
+	cycle_now = cs->read(cs->ctx) & cs->mask;
 
 	/* calculate the delta since the last call: */
 	cycle_delta = (cycle_now - cs->cycle_last) & cs->mask;
@@ -203,10 +203,12 @@ void mdelay_non_interruptible(unsigned long msecs)
 }
 EXPORT_SYMBOL(mdelay_non_interruptible);
 
-int init_clock(struct clocksource *cs)
+int init_clock(struct clocksource *cs, void *ctx)
 {
-	if (current_clock && cs->priority <= current_clock->priority)
-		return 0;
+	if (cs->ctx)
+		return -EBUSY;
+
+	cs->ctx = ctx;
 
 	if (cs->init) {
 		int ret;
@@ -221,8 +223,10 @@ int init_clock(struct clocksource *cs)
 	 * before barebox started, we only care about the time spent in barebox
 	 * thus we must discard the clocksource cycles up to this exact moment:
 	 */
-	cs->cycle_last = cs->read() & cs->mask;
-	current_clock = cs;
+	cs->cycle_last = cs->read(cs->ctx) & cs->mask;
+
+	if (!current_clock || (cs->priority > current_clock->priority))
+		current_clock = cs;
 
 	return 0;
 }
diff --git a/drivers/clocksource/amba-sp804.c b/drivers/clocksource/amba-sp804.c
index fcb2b0254b..4c8387bf4b 100644
--- a/drivers/clocksource/amba-sp804.c
+++ b/drivers/clocksource/amba-sp804.c
@@ -17,7 +17,7 @@
 static __iomem void *sp804_base;
 static struct clk *sp804_clk;
 
-static uint64_t sp804_read(void)
+static uint64_t sp804_read(void *ctx)
 {
 	return ~readl(sp804_base + TIMER_VALUE);
 }
@@ -66,7 +66,7 @@ static int sp804_probe(struct amba_device *dev, const struct amba_id *id)
 
 	sp804_clksrc.mult = clocksource_hz2mult(tick_rate, sp804_clksrc.shift);
 
-	return init_clock(&sp804_clksrc);
+	return init_clock(&sp804_clksrc, NULL);
 }
 
 static struct amba_id sp804_ids[] = {
diff --git a/drivers/clocksource/arm_architected_timer.c b/drivers/clocksource/arm_architected_timer.c
index d5948fe948..b92c782a0a 100644
--- a/drivers/clocksource/arm_architected_timer.c
+++ b/drivers/clocksource/arm_architected_timer.c
@@ -10,7 +10,7 @@
 #include <io.h>
 #include <asm/system.h>
 
-static uint64_t arm_arch_clocksource_read(void)
+static uint64_t arm_arch_clocksource_read(void *ctx)
 {
 	return get_cntpct();
 }
@@ -26,7 +26,7 @@ static int arm_arch_timer_probe(struct device_d *dev)
 {
 	cs.mult = clocksource_hz2mult(get_cntfrq(), cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 static struct of_device_id arm_arch_timer_dt_ids[] = {
diff --git a/drivers/clocksource/arm_global_timer.c b/drivers/clocksource/arm_global_timer.c
index 65bfca3558..6e2fae9ba4 100644
--- a/drivers/clocksource/arm_global_timer.c
+++ b/drivers/clocksource/arm_global_timer.c
@@ -37,7 +37,7 @@ static void __iomem *gt_base;
  *  different to the 32-bit upper value read previously, go back to step 2.
  *  Otherwise the 64-bit timer counter value is correct.
  */
-static uint64_t arm_global_clocksource_read(void)
+static uint64_t arm_global_clocksource_read(void *ctx)
 {
 	uint64_t counter;
 	uint32_t lower;
@@ -96,7 +96,7 @@ static int arm_global_timer_probe(struct device_d *dev)
 	/* enables timer on all the cores */
 	writel(GT_CONTROL_TIMER_ENABLE, gt_base + GT_CONTROL);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 static struct of_device_id arm_global_timer_dt_ids[] = {
diff --git a/drivers/clocksource/arm_smp_twd.c b/drivers/clocksource/arm_smp_twd.c
index 1ad754bb2b..dabaaa60c5 100644
--- a/drivers/clocksource/arm_smp_twd.c
+++ b/drivers/clocksource/arm_smp_twd.c
@@ -26,7 +26,7 @@
 static __iomem void *twd_base;
 static struct clk *twd_clk;
 
-static uint64_t smp_twd_read(void)
+static uint64_t smp_twd_read(void *ctx)
 {
 	return ~readl(twd_base + TWD_TIMER_COUNTER);
 }
@@ -88,7 +88,7 @@ static int smp_twd_probe(struct device_d *dev)
 
 	smp_twd_clksrc.mult = clocksource_hz2mult(tick_rate, smp_twd_clksrc.shift);
 
-	return init_clock(&smp_twd_clksrc);
+	return init_clock(&smp_twd_clksrc, NULL);
 }
 
 static __maybe_unused struct of_device_id smp_twd_compatible[] = {
diff --git a/drivers/clocksource/armv7m_systick.c b/drivers/clocksource/armv7m_systick.c
index 16d89c23bd..8e380e99fa 100644
--- a/drivers/clocksource/armv7m_systick.c
+++ b/drivers/clocksource/armv7m_systick.c
@@ -25,7 +25,7 @@
 
 static __iomem void *systick_base;
 
-static u64 armv7m_systick_clocksource_read(void)
+static u64 armv7m_systick_clocksource_read(void *ctx)
 {
         return SYSTICK_LOAD_RELOAD_MASK - readl(systick_base + SYST_CVR);
 }
@@ -72,7 +72,7 @@ static int armv7m_systick_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(rate, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 static struct of_device_id armv7m_systick_dt_ids[] = {
diff --git a/drivers/clocksource/bcm2835.c b/drivers/clocksource/bcm2835.c
index d84341fc40..4dfb68b52a 100644
--- a/drivers/clocksource/bcm2835.c
+++ b/drivers/clocksource/bcm2835.c
@@ -20,7 +20,7 @@
 
 static __iomem void *stc_base;
 
-static uint64_t stc_read_cycles(void)
+static uint64_t stc_read_cycles(void *ctx)
 {
 	return readl(stc_base + ST_CLO);
 }
@@ -69,7 +69,7 @@ static int bcm2835_cs_probe(struct device_d *dev)
 
 	clocks_calc_mult_shift(&bcm2835_stc.mult, &bcm2835_stc.shift, rate, NSEC_PER_SEC, 60);
 
-	return init_clock(&bcm2835_stc);
+	return init_clock(&bcm2835_stc, NULL);
 }
 
 static __maybe_unused struct of_device_id bcm2835_cs_dt_ids[] = {
diff --git a/drivers/clocksource/clps711x.c b/drivers/clocksource/clps711x.c
index 1fe7f6c891..cd1de1ec32 100644
--- a/drivers/clocksource/clps711x.c
+++ b/drivers/clocksource/clps711x.c
@@ -11,7 +11,7 @@
 
 static __iomem void *clps711x_timer_base;
 
-static uint64_t clps711x_cs_read(void)
+static uint64_t clps711x_cs_read(void *ctx)
 {
 	return ~readw(clps711x_timer_base);
 }
@@ -43,7 +43,7 @@ static int clps711x_cs_probe(struct device_d *dev)
 	clocks_calc_mult_shift(&clps711x_cs.mult, &clps711x_cs.shift, rate,
 			       NSEC_PER_SEC, 10);
 
-	return init_clock(&clps711x_cs);
+	return init_clock(&clps711x_cs, NULL);
 }
 
 static __maybe_unused struct of_device_id clps711x_timer_dt_ids[] = {
diff --git a/drivers/clocksource/digic.c b/drivers/clocksource/digic.c
index 234985aece..3ddf34bdfa 100644
--- a/drivers/clocksource/digic.c
+++ b/drivers/clocksource/digic.c
@@ -18,7 +18,7 @@
 
 static void __iomem *timer_base;
 
-static uint64_t digic_cs_read(void)
+static uint64_t digic_cs_read(void *ctx)
 {
 	return (uint64_t)(0xffff - readl(timer_base + DIGIC_TIMER_VALUE));
 }
@@ -56,7 +56,7 @@ static int digic_timer_probe(struct device_d *dev)
 	/* max counter value */
 	writel(0x0000ffff, timer_base + 0x08);
 
-	init_clock(&digic_cs);
+	init_clock(&digic_cs, NULL);
 
 	/* enable timer */
 	writel(0x00000001, timer_base + DIGIC_TIMER_CONTROL);
diff --git a/drivers/clocksource/dw_apb_timer.c b/drivers/clocksource/dw_apb_timer.c
index 251089cf7e..69451a8b13 100644
--- a/drivers/clocksource/dw_apb_timer.c
+++ b/drivers/clocksource/dw_apb_timer.c
@@ -84,7 +84,7 @@ static int dw_apb_clocksource_start(struct clocksource *clksrc)
 	return 0;
 }
 
-static uint64_t dw_apb_clocksource_read(void)
+static uint64_t dw_apb_clocksource_read(void *ctx)
 {
 	return (uint64_t) ~apbt_readl(&timer, APBTMR_N_CURRENT_VALUE);
 }
@@ -128,7 +128,7 @@ static int dw_apb_timer_probe(struct device_d *dev)
 
 	dw_apb_clksrc.mult = clocksource_hz2mult(clk_freq, dw_apb_clksrc.shift);
 
-	return init_clock(&dw_apb_clksrc);
+	return init_clock(&dw_apb_clksrc, NULL);
 }
 
 static struct of_device_id dw_apb_timer_dt_ids[] = {
diff --git a/drivers/clocksource/efi.c b/drivers/clocksource/efi.c
index 9df5226573..0556ef63d1 100644
--- a/drivers/clocksource/efi.c
+++ b/drivers/clocksource/efi.c
@@ -14,7 +14,7 @@
 static uint64_t ticks = 1;
 static void *efi_cs_evt;
 
-static uint64_t efi_cs_read(void)
+static uint64_t efi_cs_read(void *ctx)
 {
 	return ticks;
 }
@@ -98,7 +98,7 @@ static struct clocksource efi_cs = {
 
 static int efi_cs_probe(struct device_d *dev)
 {
-	return init_clock(&efi_cs);
+	return init_clock(&efi_cs, NULL);
 }
 
 static struct driver_d efi_cs_driver = {
diff --git a/drivers/clocksource/efi_x86.c b/drivers/clocksource/efi_x86.c
index c9b6c44a1e..f66c4764d3 100644
--- a/drivers/clocksource/efi_x86.c
+++ b/drivers/clocksource/efi_x86.c
@@ -40,7 +40,7 @@ static uint64_t ticks_freq(void)
 	return (ticks_end - ticks_start) * 1000;
 }
 
-static uint64_t efi_x86_cs_read(void)
+static uint64_t efi_x86_cs_read(void *ctx)
 {
 	return 1000 * 1000 * ticks_read() / freq;
 }
@@ -64,7 +64,7 @@ static struct clocksource efi_x86_cs = {
 
 static int efi_x86_cs_probe(struct device_d *dev)
 {
-	return init_clock(&efi_x86_cs);
+	return init_clock(&efi_x86_cs, NULL);
 }
 
 static struct driver_d efi_x86_cs_driver = {
diff --git a/drivers/clocksource/kvx_timer.c b/drivers/clocksource/kvx_timer.c
index 259755eacd..ff255e7098 100644
--- a/drivers/clocksource/kvx_timer.c
+++ b/drivers/clocksource/kvx_timer.c
@@ -12,7 +12,7 @@
 
 #include <asm/sfr.h>
 
-static uint64_t kvx_pm_read(void)
+static uint64_t kvx_pm_read(void *ctx)
 {
 	return kvx_sfr_get(PM0);
 }
@@ -42,7 +42,7 @@ static int kvx_timer_probe(struct device_d *dev)
 	/* Init clocksource */
 	kvx_clksrc.mult = clocksource_hz2mult(clk_freq, kvx_clksrc.shift);
 
-	return init_clock(&kvx_clksrc);
+	return init_clock(&kvx_clksrc, NULL);
 }
 
 static struct of_device_id kvx_timer_dt_ids[] = {
diff --git a/drivers/clocksource/mvebu.c b/drivers/clocksource/mvebu.c
index d3214955dc..753342edbd 100644
--- a/drivers/clocksource/mvebu.c
+++ b/drivers/clocksource/mvebu.c
@@ -33,7 +33,7 @@
 
 static __iomem void *timer_base;
 
-static uint64_t mvebu_clocksource_read(void)
+static uint64_t mvebu_clocksource_read(void *ctx)
 {
 	return 0 - __raw_readl(timer_base + TIMER0_VAL_OFF);
 }
@@ -81,7 +81,7 @@ static int mvebu_timer_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(rate, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 static struct of_device_id mvebu_timer_dt_ids[] = {
diff --git a/drivers/clocksource/nomadik.c b/drivers/clocksource/nomadik.c
index 7cf10352ea..99f58ef9f9 100644
--- a/drivers/clocksource/nomadik.c
+++ b/drivers/clocksource/nomadik.c
@@ -62,7 +62,7 @@ static u32 nmdk_cycle;		/* write-once */
  * clocksource: the MTU device is a decrementing counters, so we negate
  * the value being read.
  */
-static uint64_t nmdk_read_timer(void)
+static uint64_t nmdk_read_timer(void *ctx)
 {
 	return nmdk_cycle - readl(mtu_base + MTU_VAL(0));
 }
@@ -132,7 +132,7 @@ static int nmdk_mtu_probe(struct device_d *dev)
 
 	nmdk_clksrc.mult = clocksource_hz2mult(rate, nmdk_clksrc.shift);
 
-	return init_clock(&nmdk_clksrc);
+	return init_clock(&nmdk_clksrc, NULL);
 }
 
 static struct driver_d nmdk_mtu_driver = {
diff --git a/drivers/clocksource/orion.c b/drivers/clocksource/orion.c
index 4a56849800..dd9fac312f 100644
--- a/drivers/clocksource/orion.c
+++ b/drivers/clocksource/orion.c
@@ -22,7 +22,7 @@
 
 static __iomem void *timer_base;
 
-static uint64_t orion_clocksource_read(void)
+static uint64_t orion_clocksource_read(void *ctx)
 {
 	return 0 - __raw_readl(timer_base + TIMER0_VAL);
 }
@@ -56,7 +56,7 @@ static int orion_timer_probe(struct device_d *dev)
 
 	clksrc.mult = clocksource_hz2mult(clk_get_rate(tclk), clksrc.shift);
 
-	return init_clock(&clksrc);
+	return init_clock(&clksrc, NULL);
 }
 
 static struct of_device_id orion_timer_dt_ids[] = {
diff --git a/drivers/clocksource/rk_timer.c b/drivers/clocksource/rk_timer.c
index e941030771..54805da104 100644
--- a/drivers/clocksource/rk_timer.c
+++ b/drivers/clocksource/rk_timer.c
@@ -18,7 +18,7 @@
 
 struct rk_timer *timer_ptr;
 
-static uint64_t rockchip_get_ticks(void)
+static uint64_t rockchip_get_ticks(void *ctx)
 {
 	uint64_t timebase_h, timebase_l;
 
@@ -50,7 +50,7 @@ static int rockchip_timer_probe(struct device_d *dev)
 	writel(0xffffffff, &timer_ptr->timer_load_count1);
 	writel(1, &timer_ptr->timer_ctrl_reg);
 
-	return init_clock(&rkcs);
+	return init_clock(&rkcs, NULL);
 }
 
 static __maybe_unused struct of_device_id rktimer_dt_ids[] = {
diff --git a/drivers/clocksource/timer-atmel-pit.c b/drivers/clocksource/timer-atmel-pit.c
index a133e384d7..0b8f526fb2 100644
--- a/drivers/clocksource/timer-atmel-pit.c
+++ b/drivers/clocksource/timer-atmel-pit.c
@@ -27,7 +27,7 @@
 
 static __iomem void *pit_base;
 
-static uint64_t at91sam9_clocksource_read(void)
+static uint64_t at91sam9_clocksource_read(void *ctx)
 {
 	return pit_read(AT91_PIT_PIIR);
 }
@@ -86,7 +86,7 @@ static int at91_pit_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(pit_rate, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 const static __maybe_unused struct of_device_id at91_pit_dt_ids[] = {
diff --git a/drivers/clocksource/timer-clint.c b/drivers/clocksource/timer-clint.c
index d48b5bcba0..c9ffd42508 100644
--- a/drivers/clocksource/timer-clint.c
+++ b/drivers/clocksource/timer-clint.c
@@ -49,7 +49,7 @@ static u64 notrace clint_get_cycles64(void)
 }
 #endif /* CONFIG_64BIT */
 
-static u64 clint_rdtime(void)
+static u64 clint_rdtime(void *ctx)
 {
 	return clint_get_cycles64();
 }
@@ -77,7 +77,7 @@ static int clint_timer_init_dt(struct device_d* dev)
 
 	clint_clocksource.mult = clocksource_hz2mult(riscv_timebase, clint_clocksource.shift);
 
-	return init_clock(&clint_clocksource);
+	return init_clock(&clint_clocksource, NULL);
 }
 
 static struct of_device_id timer_clint_dt_ids[] = {
diff --git a/drivers/clocksource/timer-imx-gpt.c b/drivers/clocksource/timer-imx-gpt.c
index 7ca879f4f0..e829ab25d2 100644
--- a/drivers/clocksource/timer-imx-gpt.c
+++ b/drivers/clocksource/timer-imx-gpt.c
@@ -55,7 +55,7 @@ static struct imx_gpt_regs regs_imx31 = {
 static struct imx_gpt_regs *regs;
 static void __iomem *timer_base;
 
-static uint64_t imx_clocksource_read(void)
+static uint64_t imx_clocksource_read(void *ctx)
 {
 	return readl(timer_base + regs->tcn);
 }
@@ -120,7 +120,7 @@ static int imx_gpt_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(rate, cs.shift);
 
-	init_clock(&cs);
+	init_clock(&cs, NULL);
 
 	clock_register_client(&imx_clock_notifier);
 
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index c7af54fc8f..4ed28b4925 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -13,7 +13,7 @@
 #include <asm/timer.h>
 #include <asm/csr.h>
 
-static u64 notrace riscv_timer_get_count_time(void)
+static u64 notrace riscv_timer_get_count_time(void *ctx)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -28,7 +28,7 @@ static u64 notrace riscv_timer_get_count_time(void)
 	return ((u64)hi << 32) | lo;
 }
 
-static u64 notrace riscv_timer_get_count_cycle(void)
+static u64 notrace riscv_timer_get_count_cycle(void *ctx)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -64,7 +64,7 @@ static int riscv_timer_init(struct device_d* dev)
 
 	riscv_clocksource.mult = clocksource_hz2mult(riscv_timebase, riscv_clocksource.shift);
 
-	return init_clock(&riscv_clocksource);
+	return init_clock(&riscv_clocksource, NULL);
 }
 
 static struct driver_d riscv_timer_driver = {
diff --git a/drivers/clocksource/timer-stm32.c b/drivers/clocksource/timer-stm32.c
index dec48fccf5..b824d55c74 100644
--- a/drivers/clocksource/timer-stm32.c
+++ b/drivers/clocksource/timer-stm32.c
@@ -48,7 +48,7 @@ struct stm32_timer_regs {
 
 static struct stm32_timer_regs *timer_base;
 
-static u64 stm32_timer_read(void)
+static u64 stm32_timer_read(void *ctx)
 {
 	return readl(&timer_base->cnt);
 }
@@ -106,7 +106,7 @@ static int stm32_timer_probe(struct device_d *dev)
 
 	cs.mult = clocksource_hz2mult(MHZ_1, cs.shift);
 
-	return init_clock(&cs);
+	return init_clock(&cs, NULL);
 }
 
 static struct of_device_id stm32_timer_dt_ids[] = {
diff --git a/drivers/clocksource/timer-ti-32k.c b/drivers/clocksource/timer-ti-32k.c
index 21cb686369..2dc2c4aae9 100644
--- a/drivers/clocksource/timer-ti-32k.c
+++ b/drivers/clocksource/timer-ti-32k.c
@@ -37,7 +37,7 @@ static void __iomem *timerbase;
  *
  * @return S32K clock counter
  */
-static uint64_t s32k_clocksource_read(void)
+static uint64_t s32k_clocksource_read(void *ctx)
 {
 	return readl(timerbase + S32K_CR);
 }
@@ -74,7 +74,7 @@ static int omap_32ktimer_probe(struct device_d *dev)
 
 	s32k_cs.mult = clocksource_hz2mult(S32K_FREQUENCY, s32k_cs.shift);
 
-	return init_clock(&s32k_cs);
+	return init_clock(&s32k_cs, NULL);
 }
 
 static __maybe_unused struct of_device_id omap_32ktimer_dt_ids[] = {
diff --git a/drivers/clocksource/timer-ti-dm.c b/drivers/clocksource/timer-ti-dm.c
index cdd297f10c..943e4cb772 100644
--- a/drivers/clocksource/timer-ti-dm.c
+++ b/drivers/clocksource/timer-ti-dm.c
@@ -53,7 +53,7 @@ static void *base;
  *
  * @return DMTimer counter
  */
-static uint64_t dmtimer_read(void)
+static uint64_t dmtimer_read(void *ctx)
 {
 	return readl(base + TCRR);
 }
@@ -86,7 +86,7 @@ static int omap_dmtimer_probe(struct device_d *dev)
 	/* Enable counter */
 	writel(0x3, base + TCLR);
 
-	return init_clock(&dmtimer_cs);
+	return init_clock(&dmtimer_cs, NULL);
 }
 
 static __maybe_unused struct of_device_id omap_dmtimer_dt_ids[] = {
diff --git a/drivers/clocksource/uemd.c b/drivers/clocksource/uemd.c
index a763eadc0c..fc10032009 100644
--- a/drivers/clocksource/uemd.c
+++ b/drivers/clocksource/uemd.c
@@ -43,7 +43,7 @@
 
 static void __iomem *timer_base;
 
-static uint64_t uemd_timer_cs_read(void)
+static uint64_t uemd_timer_cs_read(void *ctx)
 {
 	/* Down counter! */
 	return ~__raw_readl(timer_base + TIMER_VALUE);
@@ -98,7 +98,7 @@ static int uemd_timer_probe(struct device_d *dev)
 	clocks_calc_mult_shift(&uemd_cs.mult, &uemd_cs.shift,
 		clk_get_rate(timer_clk), NSEC_PER_SEC, 10);
 
-	return init_clock(&uemd_cs);
+	return init_clock(&uemd_cs, NULL);
 }
 
 static __maybe_unused struct of_device_id uemd_timer_dt_ids[] = {
diff --git a/include/clock.h b/include/clock.h
index e6197e7eb0..b7247d810c 100644
--- a/include/clock.h
+++ b/include/clock.h
@@ -10,11 +10,12 @@
 struct clocksource {
 	uint32_t	shift;
 	uint32_t	mult;
-	uint64_t	(*read)(void);
+	uint64_t	(*read)(void *);
 	uint64_t	cycle_last;
 	uint64_t	mask;
 	int		priority;
-	int		(*init)(struct clocksource*);
+	void		*ctx;
+	int		(*init)(struct clocksource *);
 };
 
 static inline uint64_t cyc2ns(struct clocksource *cs, uint64_t cycles)
@@ -24,7 +25,7 @@ static inline uint64_t cyc2ns(struct clocksource *cs, uint64_t cycles)
         return ret;
 }
 
-int init_clock(struct clocksource *);
+int init_clock(struct clocksource *, void *ctx);
 
 uint64_t get_time_ns(void);
 
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

