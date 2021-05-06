Delivery-date: Fri, 07 May 2021 00:10:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCa-00036k-3r
	for lore@lore.pengutronix.de; Fri, 07 May 2021 00:10:36 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lemCY-00055a-Vo
	for lore@pengutronix.de; Fri, 07 May 2021 00:10:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AVcRSk6Pb9LxJyGcLJUVOEO/YIb4uY+YSrLWyWmkMEY=; b=lHxFrFUiW60Y8MgjnC/+8ox7L
	lpZNy8JZh61liMLi5DAzLoVh3DF5iQcgoO3tiYZly/UrN8oHFYjsmTWUJ58KuEApWeFie2FUM4Oah
	IGNfLoR/eRata6xhPKk/As94kSeoJh+yO95iiGomJPBh806PozsGZi4SGdZ/SgtJX89m0dtoetrzz
	5F6ZTL/nJdH6Iu/koTonKzXqkuF+k4/0+cAYiaR3SHUR/IpgcM82K8c56Qj3ncwEENGRpMHCrHHoa
	Phf6kWh2Pi+E9VP40bW1ekLw+zf602ziyuUH0GOOBWJA/ZY+o+4Lv4JbFfTJZX/i9jpNrwWqKXwrA
	5X3Gw/H7Q==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lemBO-005RQL-MF; Thu, 06 May 2021 22:09:22 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB3-005ROP-PN
 for barebox@desiato.infradead.org; Thu, 06 May 2021 22:09:02 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=BU4+a3BQTRwxypxhZv140f/6eCSnY7PwG0hbl/cveBs=; b=XQHDB4G+uvyuX/uSRplHtdIrW4
 jZnerVaOS0pOkQjB7g0lsJStlmlDvd6k+PrjdiVRqWybW6/f1ulzNprZYkniqvv1V8y1iKz/lHKUv
 XhTNEvMx3oZ9ik5LACaz1Jvp0Y8cP8tr4wnCy6ImA+k66ViV3SN+n+ZlWLIYjsdIx+sMVaCwn9DB2
 5lUnPgJQmlR5G1vMb6n4cGgcMTI1j3hlbPh6s+xOgZAhDBcmtOeXTILLSnQONsnHCI9h7gRN3ZKtH
 /fi2sqFKfnEUXiuQbswR/eMGLtYMTC/kGOueaM9uArkjV4luW23pZe0gSrLM/rl0BJ+UulC6mvZMS
 bf1uBaTg==;
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lemB1-006QNx-4n
 for barebox@lists.infradead.org; Thu, 06 May 2021 22:09:00 +0000
Received: by mail-lj1-x234.google.com with SMTP id v5so9012543ljg.12
 for <barebox@lists.infradead.org>; Thu, 06 May 2021 15:08:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=BU4+a3BQTRwxypxhZv140f/6eCSnY7PwG0hbl/cveBs=;
 b=TCViDdzvhsfBJXM+YZptI12OFrpM+LpgXKb3+4i25XfeMiBxegxf3S+WV2lHt6NSMp
 nkp4K8SIMsLHNyotipQkDVS5VLFEY1LEC/D+WCnm86z1halUeY+yrgffJjEfQf51aGuH
 SdOzP9eQQMhT0My2BXwXZEwP/0VbyZE9NjMrWprqVUa3WBR3qvGY2tlJ21cI/ry9mtYV
 Ji4GOGm7VzqQAe7Lj46+kk4oAWT8ra3zBaKHkj7scmb7xfIXPAS2uM4YiTslihVNtj3a
 9uBa6r9Gj14z81z+KSVmJFMCFY8r6TRAjZFYUa3azvG+x1t/MVdZFOWXGWVlMMCijGUN
 XgXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=BU4+a3BQTRwxypxhZv140f/6eCSnY7PwG0hbl/cveBs=;
 b=BN5hktVqe06cRdfWeH/fcoMCYTMDdtij775/KggXyl1vhyCYJ5QEkUhSjlW74pzRPQ
 7nri6Xn22PTA9g4sUKRXI/M7vZ1tVcU9JOOIC+hvZXHR0j5qJNHNqySgOkhAyFroUwlz
 Opdg3DpXWdcWyTZMolcbYFpW5Tlc7H4ec7rt+i36N116YUL13NoS7mPPS7/jIeZ1cSkz
 NJhohkx/GlsHGIdTMm3UCKhs+kPvFAN4LS4UNHMZ5cBy10hssk1hgc+mHmWwlteEjgc3
 zuf4EWRQE6pJJCRLEwFTzWKnTJ2Q5StfBti2jaJk+0HM+oWgOGt5jdKdUbdaWzhXfiZj
 pi4w==
X-Gm-Message-State: AOAM5334nTW8VnEAbfru5yiVgvbPw10QMdWyyiKq2zIw5WN0fsTGAuAd
 SnTRe/syvBSPpH/dEMJ+NiXrHaB1NdOSIQ==
X-Google-Smtp-Source: ABdhPJxBe71Htam48ZXS3GP7rzLOAcjN4+eXC+fJ5FYCP9wvx6P6kBNBRtVhBU0Wx4vxYT6bH97pMA==
X-Received: by 2002:a05:651c:2ca:: with SMTP id
 f10mr5173271ljo.236.1620338933716; 
 Thu, 06 May 2021 15:08:53 -0700 (PDT)
Received: from localhost.localdomain ([176.59.42.245])
 by smtp.gmail.com with ESMTPSA id b24sm962584lff.207.2021.05.06.15.08.52
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 May 2021 15:08:53 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 May 2021 01:08:24 +0300
Message-Id: <20210506220834.223350-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210506220834.223350-1-antonynpavlov@gmail.com>
References: <20210506220834.223350-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210506_150859_209519_348C229F 
X-CRM114-Status: GOOD (  16.12  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 01/11] clocksource: timer-riscv: select CSR from device tree
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

barebox timer-riscv driver supports one of user counters:

  * 'cycle', counter for RDCYCLE instruction (CSR 0xc00);
  * 'time', timer for RDTIME instruction (CSR 0xc01).

At the moment in S-mode timer-riscv uses the 'cycle' counter,
and in M-mode timer-riscv uses the 'time' timer.

Alas picorv32 CPU core supports only the 'cycle' counter.
VexRiscV CPU core supports only the 'time' timer.

This patch makes it possible to use the 'time' timer
for VexRiscV CPU in M-mode.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/cpu/time.c             |  7 +++++++
 arch/riscv/dts/erizo.dtsi         |  2 ++
 arch/riscv/include/asm/timer.h    |  1 +
 drivers/clocksource/timer-riscv.c | 19 ++++++++-----------
 4 files changed, 18 insertions(+), 11 deletions(-)

diff --git a/arch/riscv/cpu/time.c b/arch/riscv/cpu/time.c
index 39bb6a5112..59c8ca61d6 100644
--- a/arch/riscv/cpu/time.c
+++ b/arch/riscv/cpu/time.c
@@ -18,6 +18,7 @@
 #include <asm/timer.h>
 
 unsigned long riscv_timebase;
+unsigned long riscv_use_csr_cycle;
 
 int timer_init(void)
 {
@@ -32,6 +33,12 @@ int timer_init(void)
 
 	riscv_timebase = prop;
 
+	if (of_property_read_bool(cpu, "csr-cycle")) {
+		riscv_use_csr_cycle = 1;
+	} else {
+		riscv_use_csr_cycle = 0;
+	}
+
 	of_platform_populate(cpu, NULL, NULL);
 
 	return 0;
diff --git a/arch/riscv/dts/erizo.dtsi b/arch/riscv/dts/erizo.dtsi
index 228711bd69..b3ccf281f2 100644
--- a/arch/riscv/dts/erizo.dtsi
+++ b/arch/riscv/dts/erizo.dtsi
@@ -22,6 +22,8 @@
 
 		timebase-frequency = <24000000>;
 
+		csr-cycle;
+
 		cpu@0 {
 			device_type = "cpu";
 			compatible = "cliffordwolf,picorv32", "riscv";
diff --git a/arch/riscv/include/asm/timer.h b/arch/riscv/include/asm/timer.h
index 1f78ef4c00..555b3f5989 100644
--- a/arch/riscv/include/asm/timer.h
+++ b/arch/riscv/include/asm/timer.h
@@ -5,5 +5,6 @@
 
 int timer_init(void);
 extern unsigned long riscv_timebase;
+extern unsigned long riscv_use_csr_cycle;
 
 #endif /* _ASM_RISCV_DELAY_H */
diff --git a/drivers/clocksource/timer-riscv.c b/drivers/clocksource/timer-riscv.c
index ef67cff475..c0deed40eb 100644
--- a/drivers/clocksource/timer-riscv.c
+++ b/drivers/clocksource/timer-riscv.c
@@ -13,7 +13,7 @@
 #include <asm/timer.h>
 #include <asm/csr.h>
 
-static u64 notrace riscv_timer_get_count_sbi(void)
+static u64 notrace riscv_timer_get_count_time(void)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -28,7 +28,7 @@ static u64 notrace riscv_timer_get_count_sbi(void)
 	return ((u64)hi << 32) | lo;
 }
 
-static u64 notrace riscv_timer_get_count_rdcycle(void)
+static u64 notrace riscv_timer_get_count_cycle(void)
 {
 	__maybe_unused u32 hi, lo;
 
@@ -43,16 +43,7 @@ static u64 notrace riscv_timer_get_count_rdcycle(void)
 	return ((u64)hi << 32) | lo;
 }
 
-static u64 notrace riscv_timer_get_count(void)
-{
-	if (IS_ENABLED(CONFIG_RISCV_SBI))
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
@@ -61,6 +52,12 @@ static int riscv_timer_init(struct device_d* dev)
 {
 	dev_info(dev, "running at %lu Hz\n", riscv_timebase);
 
+	if (riscv_use_csr_cycle) {
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

