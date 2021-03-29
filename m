Delivery-date: Tue, 30 Mar 2021 03:19:02 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR326-0006Zr-8f
	for lore@lore.pengutronix.de; Tue, 30 Mar 2021 03:19:02 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lR324-00078a-UQ
	for lore@pengutronix.de; Tue, 30 Mar 2021 03:19:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=ZKhFsU4+4LOXxt6LyoWc4pK8j4a6KDtarZRrc/88kC4=; b=PwgnzUf0yYFCMtcBcd1cymCsX
	JNLhptdlxiZq1716bzLdcmXvCQtEgnZi4EUnhtKmf0uzAhLqdXWAlx/isZxtn29MkzzZRxDM/+vLX
	D7O37mpBdtJmVP5IlTxF7A9zIUzf31dHj8RR7winr/qKJmPv1eQXTe2D6YgbGeEXrrGx+q+gcoMIZ
	lDrC4TVY2PsaLQcLuVnnvoCQfd2H0HKOhOE6sMNbndElrKEKStjseiemqzU61s1597HqdyLtXBNgm
	2pmbm2pYVTuAnKbjC1XQOpLD1F2+5+ZcEgVqr0zqG3G44xa6IL5IXjSeMs2D7/xIt8Zr8aaRQEE/l
	NVAaTf3iQ==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lR30c-002KLQ-9l; Tue, 30 Mar 2021 01:17:30 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lR0Pu-001gNF-TP
 for barebox@lists.infradead.org; Mon, 29 Mar 2021 22:31:34 +0000
Received: by mail-lf1-x129.google.com with SMTP id a198so20784873lfd.7
 for <barebox@lists.infradead.org>; Mon, 29 Mar 2021 15:31:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=/0NhYTKAATHZ7HF+yD5cNQUjwmuH4pbtkHuDVLeU5yY=;
 b=LHwN7AwrYqr9ZH66CWN+JFK4yBGlgUSfJwx92nJR1onAeZaXg0Jw0p1CRYxhbyfklO
 oQJHS/fyhPAZqYuTZ6wdAlexy1mxtX5XfeVmXaisxwbsc/viFnA3manWIFRUXVijWT1h
 xo6clHNGFqUSUDXrNjcPtbt1fsw7eBiNfNZiN2OEATLurCw3ceUd2JcUiCow3pU8biAu
 V03ud99T3XS/kkuXd8EMYt4Cpse6FfQqzHTlEYSDYyoAb9jrQ5Qe1P5X9PhdSyaSGZcm
 SPNQMBsdPBE8+8fJOn622Ge8l9AC1ItocPPSmq/GiV1fkMfhlyGdLbk8t1xkgr5v9ccn
 RLyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=/0NhYTKAATHZ7HF+yD5cNQUjwmuH4pbtkHuDVLeU5yY=;
 b=KByUUa5+OXdW2gamLKJ+FF+ilVqgnGDTqIA67v8ACBfQzsrG0/yQbcS2WOPjehaj5b
 Odge2oL26dzgGoH/3HdpcPlXQ74xR6mI76uHcINbDnL4lIpk5Lg0oIqKTAs/AaVD/9Kv
 /4ZBKR4X77eOYExfzlNysdu4Id4/tvubX1nEiO///A95dGslBtEvYxH37/xKh9WRH+tJ
 Lag++zuLhLh5dzWcqJbbeo02KH7Ox1X/59tp77fFbF3JQSeoIM0W5npOkLKPDvgM4SvX
 0YL9EiO2Lk4Yfg3mFVZaDn3OeD0mrfl6QetOzSrv71bVL7Nl1W6fJwZO0c3U5B8tnzpt
 XS3A==
X-Gm-Message-State: AOAM530O0DkxLZXez1/iRjZZn2guUG313kzd7AUmTqj8Enc3dZTryzs7
 11eaZ+G5bXWPne77Xb0ZXxmAx+EXke0=
X-Google-Smtp-Source: ABdhPJxGx3EazaneCtVscgd1LV0lkff7uq6I3QTWN9Ar+HdWPOmYkm4054F80MFMs3XNYuWY5G2DMA==
X-Received: by 2002:a05:6512:ba0:: with SMTP id
 b32mr18289204lfv.127.1617057085994; 
 Mon, 29 Mar 2021 15:31:25 -0700 (PDT)
Received: from localhost.localdomain (109-252-203-32.dynamic.spd-mgts.ru.
 [109.252.203.32])
 by smtp.gmail.com with ESMTPSA id r9sm691710lfn.247.2021.03.29.15.31.25
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 29 Mar 2021 15:31:25 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Tue, 30 Mar 2021 01:31:20 +0300
Message-Id: <20210329223120.442256-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.30.1
In-Reply-To: <20210329223120.442256-1-antonynpavlov@gmail.com>
References: <20210329223120.442256-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210329_233127_295247_F18F0922 
X-CRM114-Status: GOOD (  14.70  )
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
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] RISC-V: drop old timer handling code
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Use drivers/clocksource/timer-riscv.c driver introduced in
'2ee369dcf7a5 ("clocksource: add driver for RISC-V and CLINT
timers")' instead.

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 arch/riscv/lib/Makefile      |  2 +-
 arch/riscv/lib/riscv_timer.c | 63 ------------------------------------
 2 files changed, 1 insertion(+), 64 deletions(-)

diff --git a/arch/riscv/lib/Makefile b/arch/riscv/lib/Makefile
index a9bf68bca5..a4eaa1005d 100644
--- a/arch/riscv/lib/Makefile
+++ b/arch/riscv/lib/Makefile
@@ -2,7 +2,7 @@
 
 extra-y += barebox.lds
 
-obj-y += riscv_timer.o dtb.o
+obj-y += dtb.o
 obj-pbl-y += sections.o setupc.o reloc.o sections.o runtime-offset.o
 obj-$(CONFIG_HAS_ARCH_SJLJ) += setjmp.o longjmp.o
 obj-$(CONFIG_RISCV_OPTIMZED_STRING_FUNCTIONS) += memcpy.o memset.o memmove.o
diff --git a/arch/riscv/lib/riscv_timer.c b/arch/riscv/lib/riscv_timer.c
deleted file mode 100644
index 919d77d4b5..0000000000
--- a/arch/riscv/lib/riscv_timer.c
+++ /dev/null
@@ -1,63 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Copyright (C) 2017 Antony Pavlov <antonynpavlov@gmail.com>
- *
- * This file is part of barebox.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- */
-
-/**
- * @file
- * @brief Clocksource based on RISC-V cycle CSR timer
- */
-
-#include <init.h>
-#include <of.h>
-#include <linux/clk.h>
-#include <clock.h>
-
-static uint64_t rdcycle_read(void)
-{
-	register unsigned long __v;
-
-	__asm__ __volatile__ ("rdcycle %0" : "=r" (__v));
-
-	return __v;
-}
-
-static struct clocksource rdcycle_cs = {
-	.read	= rdcycle_read,
-	.mask	= CLOCKSOURCE_MASK(32),
-};
-
-static int rdcycle_cs_init(void)
-{
-	unsigned int cycle_frequency;
-
-	/* default rate: 100 MHz */
-	cycle_frequency = 100000000;
-
-	if (IS_ENABLED(CONFIG_OFTREE)) {
-		struct device_node *np;
-		struct clk *clk;
-
-		np = of_get_cpu_node(0, NULL);
-		if (np) {
-			clk = of_clk_get(np, 0);
-			if (!IS_ERR(clk)) {
-				cycle_frequency = clk_get_rate(clk);
-			}
-		}
-	}
-
-	clocks_calc_mult_shift(&rdcycle_cs.mult, &rdcycle_cs.shift,
-		cycle_frequency, NSEC_PER_SEC, 10);
-
-	return init_clock(&rdcycle_cs);
-}
-postcore_initcall(rdcycle_cs_init);
-- 
2.30.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

