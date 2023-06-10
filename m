Delivery-date: Sat, 10 Jun 2023 12:33:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuV-000xvc-2A
	for lore@lore.pengutronix.de; Sat, 10 Jun 2023 12:33:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7vuS-0006uI-Gz
	for lore@pengutronix.de; Sat, 10 Jun 2023 12:33:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Mh9lWBgw4yHWt67BEWMBJD4bt1u++O4jKIRYnyTK5io=; b=rRU0Tl/xLmQ4ll
	ZCszdTtTeu0fEn10wgybx1evJ3cMZp/+7+6bUFIVuG+qrq/ae0E7D72ZsXdHCY6wsQnrnTXss5rGs
	dPzva4VabXE4DGjmG/yolp+r506ARN7kslyNV81uzis/6flyxbeJ6WWnsUhelZXFdxgV0Rpx/Zfnc
	pGRbb1iFdVqMs5Xn0fcMSv/wFIR0A35y7aeRAaWtQlS/3fxzSL1x0xdUmorg3KBxXo/HGCGPEv+Qs
	260XxyrYJhGHSmJ42kGgJc3hR3QN2NUVFy6zDjxwP530CeFjQL2GMLqT+BGtDFPFkvwXYcDuTXEkV
	KXFn2T8EyrWABFAz+mpg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vtA-00FqSR-1B;
	Sat, 10 Jun 2023 10:32:08 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7vt6-00FqNW-2X
	for barebox@lists.infradead.org;
	Sat, 10 Jun 2023 10:32:06 +0000
Received: by mail-lj1-x22b.google.com with SMTP id 38308e7fff4ca-2b1b30445cfso29718421fa.1
        for <barebox@lists.infradead.org>; Sat, 10 Jun 2023 03:32:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1686393120; x=1688985120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Mh9lWBgw4yHWt67BEWMBJD4bt1u++O4jKIRYnyTK5io=;
        b=OsLi+mx1V6M1EA4BV9/Fxzh5PFypbaFJTqoeglz7g1LYrrRE1JNHQQNIgroVEVRqGN
         evNuMRHBL02rRejpVI9ENIsH9XTljRhgm7HuWNdK1VeMIt25ujXFZyvcJDSbCOYJhaA+
         c208GytaiHklKzB0rI6AmZVO0tIN/Nwohci2FxWPSrwWSZs4Q/00ldIEVQqdVkL2RH8R
         LBBcKOtj6hgz8UyYaS/pdsU9kwsrMj8rKH+gZJ/ZQ4dCmw2NOERquXFQyqhJyH61QsUQ
         addT5mJO+gN/5C1fm+julwVi1R9d+c2aen2h4OLKknXkQFsMtmPpmNOcnGrbfR5ztL6M
         godg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686393120; x=1688985120;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Mh9lWBgw4yHWt67BEWMBJD4bt1u++O4jKIRYnyTK5io=;
        b=h/dv+cpOO3t/+tuHPWt3JxxXPDw8yI5N6OeOmkQRw12I0VGR/q8hWtV90W7AEf1kXP
         3emxIQ9lExsEspX6oOiHEy3xsBAEjKuRa9wvLnzIXSwkBF//dLj3w0Cff8u728mMncUT
         mTxk9ThoIQQ/hFtv+FireeYDYIpC892+C/hRHNncjq64FRNb9dCGwbU6NNDc5gGm0nuw
         jxQrxeU/S0ecePUSBiZLn0fvqsiiYRtYWF1Ld8taCfI3De/cTtZj8TS5jlxOVTOLzwjK
         ELwmHIQAOLWiRUnDAm1WytXlibIwVnEAqpbyjkcq3cgDe+Evgmdbu4Q3OQu3UFAs9QvG
         hgHw==
X-Gm-Message-State: AC+VfDyT5KQ5jJRHvYTSeE/YYu3uUru2FmvNDFWegXoU0AxmQGkXvzye
	gtiW9Ggbv899iGhU2o2USzp1un1a6Vc=
X-Google-Smtp-Source: ACHHUZ7JrRN/FCPhC4EwISONTaufnPkFqug/JYbk33MnrprN0bqxn0KrXiYc9WAKp3154jc+FUunFg==
X-Received: by 2002:a2e:9b90:0:b0:2b1:bdf0:baa4 with SMTP id z16-20020a2e9b90000000b002b1bdf0baa4mr446287lji.51.1686393120097;
        Sat, 10 Jun 2023 03:32:00 -0700 (PDT)
Received: from cinco.. ([109.252.8.26])
        by smtp.gmail.com with ESMTPSA id s16-20020a2e81d0000000b002adf8d948dasm792727ljg.35.2023.06.10.03.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Jun 2023 03:31:59 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sat, 10 Jun 2023 13:32:17 +0300
Message-Id: <20230610103220.566369-2-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230610103220.566369-1-antonynpavlov@gmail.com>
References: <20230610103220.566369-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230610_033204_827378_DE9AB94E 
X-CRM114-Status: GOOD (  14.54  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [RFC 1/4] clocksource: add sc6531e driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/clocksource/Makefile        |  1 +
 drivers/clocksource/timer-sc6531e.c | 70 +++++++++++++++++++++++++++++
 2 files changed, 71 insertions(+)

diff --git a/drivers/clocksource/Makefile b/drivers/clocksource/Makefile
index eceaa990d43..863a7e931cf 100644
--- a/drivers/clocksource/Makefile
+++ b/drivers/clocksource/Makefile
@@ -26,3 +26,4 @@ obj-$(CONFIG_CLINT_TIMER) += timer-clint.o
 obj-$(CONFIG_RISCV_TIMER) += timer-riscv.o
 obj-$(CONFIG_ARMV7M_SYSTICK) += armv7m_systick.o
 obj-$(CONFIG_CLKSRC_STM32) += timer-stm32.o
+obj-$(CONFIG_ARCH_SC6531E) += timer-sc6531e.o
diff --git a/drivers/clocksource/timer-sc6531e.c b/drivers/clocksource/timer-sc6531e.c
new file mode 100644
index 00000000000..c5f095f1a2e
--- /dev/null
+++ b/drivers/clocksource/timer-sc6531e.c
@@ -0,0 +1,70 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (C) 2023 Antony Pavlov <antonynpavlov@gmail.com>
+ *
+ * This file is part of barebox.
+ */
+
+#include <common.h>
+#include <io.h>
+#include <init.h>
+#include <clock.h>
+#include <linux/err.h>
+
+#include <debug_ll.h>
+
+#define SC6531E_TIMER_CLOCK 1000
+
+#define SYST_VALUE_SHDW 0x0c
+
+static void __iomem *timer_base;
+
+static uint64_t sc6531e_cs_read(void)
+{
+	return (uint64_t)readl(timer_base + SYST_VALUE_SHDW);
+}
+
+static struct clocksource sc6531e_cs = {
+	.read	= sc6531e_cs_read,
+	.mask   = CLOCKSOURCE_MASK(32),
+	.priority = 60,
+};
+
+static int sc6531e_timer_probe(struct device *dev)
+{
+	struct resource *iores;
+
+	/* use only one timer */
+	if (timer_base)
+		return -EBUSY;
+
+	iores = dev_request_mem_resource(dev, 0);
+	if (IS_ERR(iores)) {
+		dev_err(dev, "could not get memory region\n");
+		return PTR_ERR(iores);
+	}
+
+	timer_base = IOMEM(iores->start);
+	clocks_calc_mult_shift(&sc6531e_cs.mult, &sc6531e_cs.shift,
+		SC6531E_TIMER_CLOCK, NSEC_PER_SEC, 1);
+
+	init_clock(&sc6531e_cs);
+
+	return 0;
+}
+
+static __maybe_unused struct of_device_id sc6531e_timer_dt_ids[] = {
+	{
+		.compatible = "sc6531e-timer",
+	}, {
+		/* sentinel */
+	}
+};
+
+static struct driver sc6531e_timer_driver = {
+	.probe	= sc6531e_timer_probe,
+	.name	= "sc6531e-timer",
+	.of_compatible = DRV_OF_COMPAT(sc6531e_timer_dt_ids),
+};
+
+coredevice_platform_driver(sc6531e_timer_driver);
-- 
2.39.0



