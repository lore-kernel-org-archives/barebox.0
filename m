Delivery-date: Tue, 17 Aug 2021 12:07:11 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFvzz-0005hO-FW
	for lore@lore.pengutronix.de; Tue, 17 Aug 2021 12:07:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mFvzt-0001vi-Da
	for lore@pengutronix.de; Tue, 17 Aug 2021 12:07:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=EzB2GXwzhYiihsSMYwkfErMeoVtq/SnIKtdKaoLelHQ=; b=XUbxbLaXNbnvxp
	mO1V8WjcyOFwsHaqBtwy61rB1oNbrmw0uf+j2wocYZU5eawg7MERQ8fx0KW9Bo/sA9kzUO23lZJW1
	UwnRSrBqWfgTwI3C9/bhXyWKyJBGMVQWKQ7uUY2TOqsGzJif7QWXvxYsx5t0Rw+i4I17oizZXbDYR
	pHb17jdaF4PEB61s3QYCWHmYip7yjVF0Q3FXFSV9nwHWnwqhyOktwgMii5xcjLYFvSYGS1a5vkZL0
	ZTCa7bBSpYL/7GQUZ53ZSOsEZrm6YDEmJRvcDTHdngJ6Bc1Gw22cE4b1ZGKMzZ+pu+hSQnvjiOGPW
	EdA9fNHFTRPvBRi3PQJw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mFvxw-001z3z-Dg; Tue, 17 Aug 2021 10:05:04 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mFvxj-001yyC-KG
 for barebox@lists.infradead.org; Tue, 17 Aug 2021 10:04:55 +0000
Received: by mail-lf1-x12b.google.com with SMTP id i9so19568166lfg.10
 for <barebox@lists.infradead.org>; Tue, 17 Aug 2021 03:04:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=zvUEXO1NARnIBnPiYsCIxJ5G4OEU+FKYc16BQylhrsk=;
 b=n1es6HNUE6QTb+c+i1HZRY851V05Be6cOy9WSD24c1Rx4TM5GdOp332Rc8inAblIqJ
 7lAOJr8gGeUiwRj9w4nIFF3maoLNDG31n5Ginj0rzIAjmWk9BDD6EQixWjNY3Mx0kAnC
 JOlZHT1sh75yPqGKBMdfdEym24mlxCCovTAlerTkRfkFhYIBjo4S1wV5flDpSI6Hmxql
 GT2bFF6N0ZgXceCnWPTww7lVrx3i1iL6ZHQLmgqYS0RAOXss+fzvsFAkb3Fu93ESE1fy
 Rr5seDfNp2NE3rDv1Er/MvaoexUsG333w5bbp965+dIXTEICLk9TuoZdaoFX171Hr0Bp
 Razw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=zvUEXO1NARnIBnPiYsCIxJ5G4OEU+FKYc16BQylhrsk=;
 b=dP2U+0OOm/OkiD69p0zzmiTnAReCwME3iZ5QelJH7VG0SuVvo/6D3g1ODhz/EhMGSi
 wtCFBvs/dTjnuJA6Edpon1C+GjjufhjEDMYL63aNOuOgwHJKTnVFJcolNbt7KHOa4kje
 eN+Oc6g8BzJUhXf7HDDHwZ4gJZEk7dQt/9lTGwXAF7ni6uQ5QNNEkKyTW+sRC7n6d7dc
 6SVWMIF92NhLo+FBCPt1N0Ae6WzaogPOPCJ0Ij0tcro2rw+NsGjb/HxAnQOwcRlxjeaX
 tLPbDixYFRcVL25cgtAa5v/xlujTpVki9Yt9TJWGgp6QovRL6K4/iyfCzikP4KZaKBKA
 bn4w==
X-Gm-Message-State: AOAM533lbvWHa4m+0uSeAFggxyQlCkz4dFoFki65Ms/c1s/yLnMzAFVD
 ebarSO5BiyD3u91C4N8gyJ+i4LKp+aI=
X-Google-Smtp-Source: ABdhPJzvp8KmgpHetKlym9sXRy/N7gB58gTDXqfhb5MYzvYe1RbHkmjISU2KB0gdbZIUaaqLj/ZM3Q==
X-Received: by 2002:a05:6512:519:: with SMTP id
 o25mr1786106lfb.590.1629194688710; 
 Tue, 17 Aug 2021 03:04:48 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-80.dynamic.spd-mgts.ru.
 [109.252.203.80])
 by smtp.gmail.com with ESMTPSA id e20sm179795ljn.13.2021.08.17.03.04.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 17 Aug 2021 03:04:48 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 17 Aug 2021 13:04:28 +0300
Message-Id: <20210817100435.114756-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210817100435.114756-1-antonynpavlov@gmail.com>
References: <20210817100435.114756-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210817_030451_711774_336C268C 
X-CRM114-Status: GOOD (  14.82  )
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
Subject: [PATCH 1/8] clocksource: timer-riscv: select CSR from device tree
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

