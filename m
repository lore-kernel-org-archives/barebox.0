Delivery-date: Fri, 16 Jan 2026 20:44:22 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpk7-0024Vk-11
	for lore@lore.pengutronix.de;
	Fri, 16 Jan 2026 20:44:22 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vgpjr-000219-KM
	for lore@pengutronix.de; Fri, 16 Jan 2026 20:44:22 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=LEjQTLIOWr7xfiwFhb8Ul5FgNl8sHz1I/VojtTf/x/o=; b=ZzorphJkqqTmbGSj2rxXplUT3H
	/Tc+t3NHRJCST0ELoXE1DL/AcyirgURz6Uk9pQB8kjoxBvywAKA/mQjkhURxiVOIUsEiYzCZ2oXa8
	gU6iaFwyfqKEousdcnhlhJZwrhNrPQl+URyC4gej4pxkHXr/ziOSBmomOZvWFJ5SZjwWEMsyQiv3u
	eDNBSkOyAlMiZ7SKNz4J1l6xNWG7ZH/i0McyRWLwoWLbUHlvmBUJzetM09/c2fqcPoDNeaNpdEITL
	VQfqnhNy3GaKEsRSS5OfacKPLflufx+c8Jt5VlIRTUK8PbDviHPOvmE4gzvZ1E1De2QwVO/EJNRP7
	wk2KYEyg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpig-0000000EhmN-0WoR;
	Fri, 16 Jan 2026 19:42:54 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vgpib-0000000EhiE-26pd
	for barebox@lists.infradead.org;
	Fri, 16 Jan 2026 19:42:52 +0000
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-b87677a8abeso414236766b.1
        for <barebox@lists.infradead.org>; Fri, 16 Jan 2026 11:42:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768592567; x=1769197367; darn=lists.infradead.org;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LEjQTLIOWr7xfiwFhb8Ul5FgNl8sHz1I/VojtTf/x/o=;
        b=L8GCA+1w4U+U1tXfgfy7qGbC1AmRdtqmQ/xXQAgTn5uhCMcwUtM9V44xcDWXkz92hg
         4vTdzCXuTUmhdKCAl/LO5gKFjuUUMOhjOt4Wvb3kB9CZ6hg3OdMDjhEeK+SxS1R+7CBS
         ULr2WbPiYQP0V938Je/WnKDglHOf/rD0qUQTStgs2v7Noqu0/r80zR70EZci/kDovCbM
         94sjG3Mfis/eI5YEFwKM+sJNjM+Wn3WKVH1LL/L7/7D80RNFJRoVNca7ZJgl9NUC/oOC
         DFOEPJaTDcK6fWTUDaKhZyQGNs5vXFhiyftllH+b/FRdCiDSi+RfIRJFsnAdt11awTf8
         C30g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768592567; x=1769197367;
        h=to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LEjQTLIOWr7xfiwFhb8Ul5FgNl8sHz1I/VojtTf/x/o=;
        b=gYNkv9Ol3Af+zpaRum0viUk2f8+YFs2pIl++PdNk0e98wVjPnjhDevCmmO6clLT+bw
         tx+4U6Zc1t9CMPDXWNmqZRij4iF6DEtgiNqYyTWL6uBBTpUTAQhzNvBGiV6tgTHPtAUu
         UV6CzrN504D44Uce/xdnamuP8kkFrk4RtDmxs09txqeLbC5rsEAjxpMIraK4iYfZ2S0Y
         PtTML4Ibg6r9QhMQeFRDwDT7LXaiWPbkCPQQ09lYsH4pNk7FS0VurUElUwmYqCazUdNf
         chBkJjq1g4Aqa+p8SIZSJkCDwIXqLTPOSg25muwcYAN9gkzH8t5vYOjFnftuo1ZJtg+B
         K/+g==
X-Forwarded-Encrypted: i=1; AJvYcCWAQBvXEGXsAi/6US6Q++2KfPq6y4rW6zwrIm2K10LdvNQD6kcDOarBjPx4RcbyAOqQgOAGRuvF@lists.infradead.org
X-Gm-Message-State: AOJu0YzJ6Bg98qy7fn4/MNu4/Dp2UJNKJsalg4ms/k7lAl1qZqf+bnbh
	E1GDrDbWyxpJKUCA9OqSryL2ppJ8Nj6yCuBn989HjGZRusILbP2gzJP+/7HSbw==
X-Gm-Gg: AY/fxX7HrC1WRt55OTauYfFAFeuzTvhUxyqcCZs9UPvhOENuLpe41Xgump1OefHh+SE
	Rx52Cf+bg9aXzGB2EW6AN9J8d+D7QTUApIpiMo50gfeCnikni70OeHuXYEn9t7byrOFwZPKugq9
	cdDCu7GjO1AXxemxQ9D9oRB76yuICUKdlVIfOV7VJKNeN1PdvIjqgd21LdiTgmSUHe4ZTurrxvY
	QhhcXWIAwKhL82KKm+CuwRme0ohQnCB98eNBzLP4a4j/LFFzKE2jUB2V6UpIc5rXdMRYCP1nIdq
	TnvnTLfxdz0QO6Uy40w+5Xm0a1bCKXs7M3xVEa9dZ2o2/BrTv6LwRTxTO8IDqhTwCyb6f5unLtP
	HNumPnOPGOM1fV4/iAq8QFRefHgv3tOfz4jOpTZyEH6uJ/jzPdv/41TO7czqR/bwZg2ZkzFgUUx
	k3tFFrhGCdu4f4cRo+3aQxwnmO7kp3zr8DzMLsZ72E+hIiVBmPswh4vGfzN48IXRzFLSoKd0cxj
	chrrJnGuv3KijZ0l3I4ILWcTwCMdIRYsroi5h4BQAX9rzngIlO6JSTnqPE2rzrrBAVpSipngY6Q
	OfotZ1AiRxl0Ih5bvb4I8Z+GgOw38SoCHaYriB3sQg==
X-Received: by 2002:a17:907:72ca:b0:b87:49e1:275c with SMTP id a640c23a62f3a-b8793244442mr328677866b.40.1768592566878;
        Fri, 16 Jan 2026 11:42:46 -0800 (PST)
Received: from [127.0.1.1] (2a02-8388-08be-f800-f96f-90ee-b1eb-797e.cable.dynamic.v6.surfer.at. [2a02:8388:8be:f800:f96f:90ee:b1eb:797e])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b87959c9fb0sm328166266b.43.2026.01.16.11.42.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jan 2026 11:42:46 -0800 (PST)
From: Sohaib Mohamed <sohaib.amhmd@gmail.com>
Date: Fri, 16 Jan 2026 20:40:36 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260116-barebox-kickpi-v1-2-d11fbccd527a@gmail.com>
References: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
In-Reply-To: <20260116-barebox-kickpi-v1-0-d11fbccd527a@gmail.com>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Sohaib Mohamed <sohaib.amhmd@gmail.com>, 
 BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1768592564; l=90246;
 i=sohaib.amhmd@gmail.com; s=20251127; h=from:subject:message-id;
 bh=Lf57oZiJcNNx/bz8/Emu6RZVl8uZSDXXss5dxKUkiF8=;
 b=4hk8VQ8imrVoF+Gudo/+L6b19CJwpVJQMb3LUHkJ5nJDJ5bfoqXinldNWmYFXrHSTHB6udFcq
 eHpJMNwIDumCRWdupa2DoViCQBGkmcZN6Em/DeAYV+dRYz0l0UekIkm
X-Developer-Key: i=sohaib.amhmd@gmail.com; a=ed25519;
 pk=Q1nrPhN99EawVQo4UT9CZVAG4nQ2Zq/e3sfCABjccgk=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260116_114249_961145_7C2C631F 
X-CRM114-Status: GOOD (  13.25  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_GMAIL_RCVD,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,UPPERCASE_50_75 autolearn=no autolearn_force=no
	version=3.4.2
Subject: [PATCH 02/14] clk: rockchip: add RK3562 clock and reset driver
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Ahmad Fatoum <a.fatoum@pengutronix.de>

Add clock and reset controller support for RK3562 SoC with PLL
configurations and clock trees for all power domains.

Co-developed-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Sohaib Mohamed <sohaib.amhmd@gmail.com>
---
 drivers/clk/rockchip/Makefile     |    1 +
 drivers/clk/rockchip/clk-rk3562.c | 1098 +++++++++++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk.c        |    2 +-
 drivers/clk/rockchip/clk.h        |  268 ++++++++-
 drivers/clk/rockchip/rst-rk3562.c |  430 +++++++++++++++
 5 files changed, 1794 insertions(+), 5 deletions(-)

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index b644926898..cfbefb88b0 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -10,6 +10,7 @@ obj-y += gate-link.o
 obj-$(CONFIG_RESET_CONTROLLER) += softrst.o
 obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
 obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
+obj-$(CONFIG_ARCH_RK3562) += clk-rk3562.o rst-rk3562.o
 obj-$(CONFIG_ARCH_RK3568) += clk-rk3568.o
 obj-$(CONFIG_ARCH_RK3576) += clk-rk3576.o rst-rk3576.o
 obj-$(CONFIG_ARCH_RK3588) += clk-rk3588.o rst-rk3588.o
diff --git a/drivers/clk/rockchip/clk-rk3562.c b/drivers/clk/rockchip/clk-rk3562.c
new file mode 100644
index 0000000000..867a852f4f
--- /dev/null
+++ b/drivers/clk/rockchip/clk-rk3562.c
@@ -0,0 +1,1098 @@
+// SPDX-License-Identifier: GPL-2.0
+// SPDX-Comment: Origin-URL: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/drivers/clk/rockchip/clk-rk3562.c?id=f863d4cc79a7e2f8c734d1fac84dc275805f41c7
+/*
+ * Copyright (c) 2022 Rockchip Electronics Co., Ltd.
+ * Author: Elaine Zhang <zhangqing@rock-chips.com>
+ * Author: Finley Xiao <finley.xiao@rock-chips.com>
+ */
+
+#include <common.h>
+#include <linux/clk.h>
+#include <of.h>
+#include <of_address.h>
+#include <linux/barebox-wrapper.h>
+#include <init.h>
+#include <linux/spinlock.h>
+#include <of_device.h>
+#include <dt-bindings/clock/rockchip,rk3562-cru.h>
+#include "clk.h"
+
+#define RK3562_GRF_SOC_STATUS0		0x430
+#define ROCKCHIP_PLL_ALLOW_POWER_DOWN	BIT(2)
+
+enum rk3562_plls {
+	apll, gpll, vpll, hpll, cpll, dpll,
+};
+
+static struct rockchip_pll_rate_table rk3562_pll_rates[] = {
+	/* _mhz, _refdiv, _fbdiv, _postdiv1, _postdiv2, _dsmpd, _frac */
+	RK3036_PLL_RATE(2208000000, 1, 92, 1, 1, 1, 0),
+	RK3036_PLL_RATE(2184000000, 1, 91, 1, 1, 1, 0),
+	RK3036_PLL_RATE(2160000000, 1, 90, 1, 1, 1, 0),
+	RK3036_PLL_RATE(2088000000, 1, 87, 1, 1, 1, 0),
+	RK3036_PLL_RATE(2064000000, 1, 86, 1, 1, 1, 0),
+	RK3036_PLL_RATE(2040000000, 1, 85, 1, 1, 1, 0),
+	RK3036_PLL_RATE(2016000000, 1, 84, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1992000000, 1, 83, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1920000000, 1, 80, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1896000000, 1, 79, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1800000000, 1, 75, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1704000000, 1, 71, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1608000000, 1, 67, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1600000000, 3, 200, 1, 1, 1, 0),
+	RK3036_PLL_RATE(1584000000, 1, 132, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1560000000, 1, 130, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1536000000, 1, 128, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1512000000, 1, 126, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1488000000, 1, 124, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1464000000, 1, 122, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1440000000, 1, 120, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1416000000, 1, 118, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1400000000, 3, 350, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1392000000, 1, 116, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1368000000, 1, 114, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1344000000, 1, 112, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1320000000, 1, 110, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1296000000, 1, 108, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1272000000, 1, 106, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1248000000, 1, 104, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1200000000, 1, 100, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1188000000, 1, 99, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1104000000, 1, 92, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1100000000, 3, 275, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1008000000, 1, 84, 2, 1, 1, 0),
+	RK3036_PLL_RATE(1000000000, 3, 250, 2, 1, 1, 0),
+	RK3036_PLL_RATE(912000000, 1, 76, 2, 1, 1, 0),
+	RK3036_PLL_RATE(816000000, 1, 68, 2, 1, 1, 0),
+	RK3036_PLL_RATE(800000000, 3, 200, 2, 1, 1, 0),
+	RK3036_PLL_RATE(700000000, 3, 350, 4, 1, 1, 0),
+	RK3036_PLL_RATE(696000000, 1, 116, 4, 1, 1, 0),
+	RK3036_PLL_RATE(600000000, 1, 100, 4, 1, 1, 0),
+	RK3036_PLL_RATE(594000000, 1, 99, 4, 1, 1, 0),
+	RK3036_PLL_RATE(500000000, 1, 125, 6, 1, 1, 0),
+	RK3036_PLL_RATE(408000000, 1, 68, 2, 2, 1, 0),
+	RK3036_PLL_RATE(312000000, 1, 78, 6, 1, 1, 0),
+	RK3036_PLL_RATE(216000000, 1, 72, 4, 2, 1, 0),
+	RK3036_PLL_RATE(200000000, 1, 100, 3, 4, 1, 0),
+	RK3036_PLL_RATE(148500000, 1, 99, 4, 4, 1, 0),
+	RK3036_PLL_RATE(100000000, 1, 150, 6, 6, 1, 0),
+	RK3036_PLL_RATE(96000000, 1, 96, 6, 4, 1, 0),
+	RK3036_PLL_RATE(74250000, 2, 99, 4, 4, 1, 0),
+	{ /* sentinel */ },
+};
+
+PNAME(mux_pll_p)			= { "xin24m" };
+PNAME(gpll_cpll_p)			= { "gpll", "cpll" };
+PNAME(gpll_cpll_hpll_p)			= { "gpll", "cpll", "hpll" };
+PNAME(gpll_cpll_pvtpll_dmyapll_p)	= { "gpll", "cpll", "log_pvtpll", "dummy_apll" };
+PNAME(gpll_cpll_hpll_xin24m_p)		= { "gpll", "cpll", "hpll", "xin24m" };
+PNAME(gpll_cpll_vpll_dmyhpll_p)		= { "gpll", "cpll", "vpll", "dummy_hpll" };
+PNAME(gpll_dmyhpll_vpll_apll_p)		= { "gpll", "dummy_hpll", "vpll", "apll" };
+PNAME(gpll_cpll_xin24m_p)		= { "gpll", "cpll", "xin24m" };
+PNAME(gpll_cpll_xin24m_dmyapll_p)	= { "gpll", "cpll", "xin24m", "dummy_apll" };
+PNAME(gpll_cpll_xin24m_dmyhpll_p)	= { "gpll", "cpll", "xin24m", "dummy_hpll" };
+PNAME(vpll_dmyhpll_gpll_cpll_p)		= { "vpll", "dummy_hpll", "gpll", "cpll" };
+PNAME(mux_xin24m_32k_p)			= { "xin24m", "clk_rtc_32k" };
+PNAME(mux_50m_xin24m_p)			= { "clk_matrix_50m_src", "xin24m" };
+PNAME(mux_100m_50m_xin24m_p)		= { "clk_matrix_100m_src", "clk_matrix_50m_src", "xin24m" };
+PNAME(mux_125m_xin24m_p)		= { "clk_matrix_125m_src", "xin24m" };
+PNAME(mux_200m_xin24m_32k_p)		= { "clk_200m_pmu", "xin24m", "clk_rtc_32k" };
+PNAME(mux_200m_100m_p)			= { "clk_matrix_200m_src", "clk_matrix_100m_src" };
+PNAME(mux_200m_100m_50m_xin24m_p)	= { "clk_matrix_200m_src", "clk_matrix_100m_src", "clk_matrix_50m_src", "xin24m" };
+PNAME(clk_sai0_p)			= { "clk_sai0_src", "clk_sai0_frac", "xin_osc0_half", "mclk_sai0_from_io" };
+PNAME(mclk_sai0_out2io_p)		= { "mclk_sai0", "xin_osc0_half" };
+PNAME(clk_sai1_p)			= { "clk_sai1_src", "clk_sai1_frac", "xin_osc0_half", "mclk_sai1_from_io" };
+PNAME(mclk_sai1_out2io_p)		= { "mclk_sai1", "xin_osc0_half" };
+PNAME(clk_sai2_p)			= { "clk_sai2_src", "clk_sai2_frac", "xin_osc0_half", "mclk_sai2_from_io" };
+PNAME(mclk_sai2_out2io_p)		= { "mclk_sai2", "xin_osc0_half" };
+PNAME(clk_spdif_p)			= { "clk_spdif_src", "clk_spdif_frac", "xin_osc0_half" };
+PNAME(clk_uart1_p)			= { "clk_uart1_src", "clk_uart1_frac", "xin24m" };
+PNAME(clk_uart2_p)			= { "clk_uart2_src", "clk_uart2_frac", "xin24m" };
+PNAME(clk_uart3_p)			= { "clk_uart3_src", "clk_uart3_frac", "xin24m" };
+PNAME(clk_uart4_p)			= { "clk_uart4_src", "clk_uart4_frac", "xin24m" };
+PNAME(clk_uart5_p)			= { "clk_uart5_src", "clk_uart5_frac", "xin24m" };
+PNAME(clk_uart6_p)			= { "clk_uart6_src", "clk_uart6_frac", "xin24m" };
+PNAME(clk_uart7_p)			= { "clk_uart7_src", "clk_uart7_frac", "xin24m" };
+PNAME(clk_uart8_p)			= { "clk_uart8_src", "clk_uart8_frac", "xin24m" };
+PNAME(clk_uart9_p)			= { "clk_uart9_src", "clk_uart9_frac", "xin24m" };
+PNAME(clk_rtc32k_pmu_p)			= { "clk_rtc32k_frac", "xin32k", "clk_32k_pvtm" };
+PNAME(clk_pmu1_uart0_p)			= { "clk_pmu1_uart0_src", "clk_pmu1_uart0_frac", "xin24m" };
+PNAME(clk_pipephy_ref_p)		= { "clk_pipephy_div", "clk_pipephy_xin24m" };
+PNAME(clk_usbphy_ref_p)			= { "clk_usb2phy_xin24m", "clk_24m_sscsrc" };
+PNAME(clk_mipidsi_ref_p)		= { "clk_mipidsiphy_xin24m", "clk_24m_sscsrc" };
+
+static struct rockchip_pll_clock rk3562_pll_clks[] __initdata = {
+	[apll] = PLL(pll_rk3328, PLL_APLL, "apll", mux_pll_p,
+		     0, RK3562_PLL_CON(0),
+		     RK3562_MODE_CON, 0, 0,
+		     ROCKCHIP_PLL_ALLOW_POWER_DOWN, rk3562_pll_rates),
+	[gpll] = PLL(pll_rk3328, PLL_GPLL, "gpll", mux_pll_p,
+		     0, RK3562_PLL_CON(24),
+		     RK3562_MODE_CON, 2, 3, 0, rk3562_pll_rates),
+	[vpll] = PLL(pll_rk3328, PLL_VPLL, "vpll", mux_pll_p,
+		     0, RK3562_PLL_CON(32),
+		     RK3562_MODE_CON, 6, 4,
+		     ROCKCHIP_PLL_ALLOW_POWER_DOWN, rk3562_pll_rates),
+	[hpll] = PLL(pll_rk3328, PLL_HPLL, "hpll", mux_pll_p,
+		     0, RK3562_PLL_CON(40),
+		     RK3562_MODE_CON, 8, 5,
+		     ROCKCHIP_PLL_ALLOW_POWER_DOWN, rk3562_pll_rates),
+	[cpll] = PLL(pll_rk3328, PLL_CPLL, "cpll", mux_pll_p,
+		     0, RK3562_PMU1_PLL_CON(0),
+		     RK3562_PMU1_MODE_CON, 0, 2, 0, rk3562_pll_rates),
+	[dpll] = PLL(pll_rk3328, PLL_DPLL, "dpll", mux_pll_p,
+		     CLK_IS_CRITICAL, RK3562_SUBDDR_PLL_CON(0),
+		     RK3562_SUBDDR_MODE_CON, 0, 1, 0, NULL),
+};
+
+#define MFLAGS CLK_MUX_HIWORD_MASK
+#define DFLAGS CLK_DIVIDER_HIWORD_MASK
+#define GFLAGS (CLK_GATE_HIWORD_MASK | CLK_GATE_SET_TO_DISABLE)
+
+static struct rockchip_clk_branch rk3562_clk_sai0_fracmux __initdata =
+	MUX(CLK_SAI0, "clk_sai0", clk_sai0_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(3), 6, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_sai1_fracmux __initdata =
+	MUX(CLK_SAI1, "clk_sai1", clk_sai1_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(5), 6, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_sai2_fracmux __initdata =
+	MUX(CLK_SAI2, "clk_sai2", clk_sai2_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(8), 6, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_spdif_fracmux __initdata =
+	MUX(CLK_SPDIF, "clk_spdif", clk_spdif_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(15), 6, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart1_fracmux __initdata =
+	MUX(CLK_UART1, "clk_uart1", clk_uart1_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(21), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart2_fracmux __initdata =
+	MUX(CLK_UART2, "clk_uart2", clk_uart2_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(23), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart3_fracmux __initdata =
+	MUX(CLK_UART3, "clk_uart3", clk_uart3_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(25), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart4_fracmux __initdata =
+	MUX(CLK_UART4, "clk_uart4", clk_uart4_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(27), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart5_fracmux __initdata =
+	MUX(CLK_UART5, "clk_uart5", clk_uart5_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(29), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart6_fracmux __initdata =
+	MUX(CLK_UART6, "clk_uart6", clk_uart6_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(31), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart7_fracmux __initdata =
+	MUX(CLK_UART7, "clk_uart7", clk_uart7_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(33), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart8_fracmux __initdata =
+	MUX(CLK_UART8, "clk_uart8", clk_uart8_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(35), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_uart9_fracmux __initdata =
+	MUX(CLK_UART9, "clk_uart9", clk_uart9_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(37), 14, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_rtc32k_pmu_fracmux __initdata =
+	MUX(CLK_RTC_32K, "clk_rtc_32k", clk_rtc32k_pmu_p, CLK_SET_RATE_PARENT | CLK_SET_RATE_NO_REPARENT,
+			RK3562_PMU0_CLKSEL_CON(1), 0, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_pmu1_uart0_fracmux __initdata =
+	MUX(CLK_PMU1_UART0, "clk_pmu1_uart0", clk_pmu1_uart0_p, CLK_SET_RATE_PARENT,
+			RK3562_PMU1_CLKSEL_CON(2), 6, 2, MFLAGS);
+
+static struct rockchip_clk_branch rk3562_clk_branches[] __initdata = {
+	/*
+	 * CRU Clock-Architecture
+	 */
+	/* PD_TOP */
+	COMPOSITE(CLK_MATRIX_50M_SRC, "clk_matrix_50m_src", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(0), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(0), 0, GFLAGS),
+	COMPOSITE(CLK_MATRIX_100M_SRC, "clk_matrix_100m_src", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(0), 15, 1, MFLAGS, 8, 4, DFLAGS,
+			RK3562_CLKGATE_CON(0), 1, GFLAGS),
+	COMPOSITE(CLK_MATRIX_125M_SRC, "clk_matrix_125m_src", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(1), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(0), 2, GFLAGS),
+	COMPOSITE(CLK_MATRIX_200M_SRC, "clk_matrix_200m_src", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(2), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(0), 4, GFLAGS),
+	COMPOSITE(CLK_MATRIX_300M_SRC, "clk_matrix_300m_src", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(3), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(0), 6, GFLAGS),
+	COMPOSITE(ACLK_TOP, "aclk_top", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(5), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(1), 0, GFLAGS),
+	COMPOSITE(ACLK_TOP_VIO, "aclk_top_vio", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(5), 15, 1, MFLAGS, 8, 4, DFLAGS,
+			RK3562_CLKGATE_CON(1), 1, GFLAGS),
+	COMPOSITE(CLK_24M_SSCSRC, "clk_24m_sscsrc", vpll_dmyhpll_gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(6), 6, 2, MFLAGS, 0, 6, DFLAGS,
+			RK3562_CLKGATE_CON(1), 9, GFLAGS),
+	COMPOSITE(CLK_CAM0_OUT2IO, "clk_cam0_out2io", gpll_cpll_xin24m_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(8), 6, 2, MFLAGS, 0, 6, DFLAGS,
+			RK3562_CLKGATE_CON(1), 12, GFLAGS),
+	COMPOSITE(CLK_CAM1_OUT2IO, "clk_cam1_out2io", gpll_cpll_xin24m_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(8), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3562_CLKGATE_CON(1), 13, GFLAGS),
+	COMPOSITE(CLK_CAM2_OUT2IO, "clk_cam2_out2io", gpll_cpll_xin24m_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(9), 6, 2, MFLAGS, 0, 6, DFLAGS,
+			RK3562_CLKGATE_CON(1), 14, GFLAGS),
+	COMPOSITE(CLK_CAM3_OUT2IO, "clk_cam3_out2io", gpll_cpll_xin24m_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(9), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3562_CLKGATE_CON(1), 15, GFLAGS),
+	FACTOR(0, "xin_osc0_half", "xin24m", 0, 1, 2),
+
+	/* PD_BUS */
+	COMPOSITE(ACLK_BUS, "aclk_bus", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(40), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(18), 0, GFLAGS),
+	COMPOSITE(HCLK_BUS, "hclk_bus", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(40), 15, 1, MFLAGS, 8, 6, DFLAGS,
+			RK3562_CLKGATE_CON(18), 1, GFLAGS),
+	COMPOSITE(PCLK_BUS, "pclk_bus", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(41), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(18), 2, GFLAGS),
+	GATE(PCLK_I2C1, "pclk_i2c1", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(19), 0, GFLAGS),
+	GATE(PCLK_I2C2, "pclk_i2c2", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(19), 1, GFLAGS),
+	GATE(PCLK_I2C3, "pclk_i2c3", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(19), 2, GFLAGS),
+	GATE(PCLK_I2C4, "pclk_i2c4", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(19), 3, GFLAGS),
+	GATE(PCLK_I2C5, "pclk_i2c5", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(19), 4, GFLAGS),
+	COMPOSITE_NODIV(CLK_I2C, "clk_i2c", mux_200m_100m_50m_xin24m_p, 0,
+			RK3562_CLKSEL_CON(41), 8, 2, MFLAGS,
+			RK3562_CLKGATE_CON(19), 5, GFLAGS),
+	GATE(CLK_I2C1, "clk_i2c1", "clk_i2c", 0,
+			RK3562_CLKGATE_CON(19), 6, GFLAGS),
+	GATE(CLK_I2C2, "clk_i2c2", "clk_i2c", 0,
+			RK3562_CLKGATE_CON(19), 7, GFLAGS),
+	GATE(CLK_I2C3, "clk_i2c3", "clk_i2c", 0,
+			RK3562_CLKGATE_CON(19), 8, GFLAGS),
+	GATE(CLK_I2C4, "clk_i2c4", "clk_i2c", 0,
+			RK3562_CLKGATE_CON(19), 9, GFLAGS),
+	GATE(CLK_I2C5, "clk_i2c5", "clk_i2c", 0,
+			RK3562_CLKGATE_CON(19), 10, GFLAGS),
+	COMPOSITE_NODIV(DCLK_BUS_GPIO, "dclk_bus_gpio", mux_xin24m_32k_p, 0,
+			RK3562_CLKSEL_CON(41), 15, 1, MFLAGS,
+			RK3562_CLKGATE_CON(20), 4, GFLAGS),
+	GATE(DCLK_BUS_GPIO3, "dclk_bus_gpio3", "dclk_bus_gpio", 0,
+			RK3562_CLKGATE_CON(20), 5, GFLAGS),
+	GATE(DCLK_BUS_GPIO4, "dclk_bus_gpio4", "dclk_bus_gpio", 0,
+			RK3562_CLKGATE_CON(20), 6, GFLAGS),
+	GATE(PCLK_TIMER, "pclk_timer", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(21), 0, GFLAGS),
+	GATE(CLK_TIMER0, "clk_timer0", "xin24m", 0,
+			RK3562_CLKGATE_CON(21), 1, GFLAGS),
+	GATE(CLK_TIMER1, "clk_timer1", "xin24m", 0,
+			RK3562_CLKGATE_CON(21), 2, GFLAGS),
+	GATE(CLK_TIMER2, "clk_timer2", "xin24m", 0,
+			RK3562_CLKGATE_CON(21), 3, GFLAGS),
+	GATE(CLK_TIMER3, "clk_timer3", "xin24m", 0,
+			RK3562_CLKGATE_CON(21), 4, GFLAGS),
+	GATE(CLK_TIMER4, "clk_timer4", "xin24m", 0,
+			RK3562_CLKGATE_CON(21), 5, GFLAGS),
+	GATE(CLK_TIMER5, "clk_timer5", "xin24m", 0,
+			RK3562_CLKGATE_CON(21), 6, GFLAGS),
+	GATE(PCLK_STIMER, "pclk_stimer", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(21), 7, GFLAGS),
+	GATE(CLK_STIMER0, "clk_stimer0", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(21), 8, GFLAGS),
+	GATE(CLK_STIMER1, "clk_stimer1", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(21), 9, GFLAGS),
+	GATE(PCLK_WDTNS, "pclk_wdtns", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(22), 0, GFLAGS),
+	GATE(CLK_WDTNS, "clk_wdtns", "xin24m", 0,
+			RK3562_CLKGATE_CON(22), 1, GFLAGS),
+	GATE(PCLK_GRF, "pclk_grf", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(22), 2, GFLAGS),
+	GATE(PCLK_SGRF, "pclk_sgrf", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(22), 3, GFLAGS),
+	GATE(PCLK_MAILBOX, "pclk_mailbox", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(22), 4, GFLAGS),
+	GATE(PCLK_INTC, "pclk_intc", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(22), 5, GFLAGS),
+	GATE(ACLK_BUS_GIC400, "aclk_bus_gic400", "aclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(22), 6, GFLAGS),
+	GATE(ACLK_BUS_SPINLOCK, "aclk_bus_spinlock", "aclk_bus", 0,
+			RK3562_CLKGATE_CON(23), 0, GFLAGS),
+	GATE(ACLK_DCF, "aclk_dcf", "aclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(23), 1, GFLAGS),
+	GATE(PCLK_DCF, "pclk_dcf", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(23), 2, GFLAGS),
+	GATE(FCLK_BUS_CM0_CORE, "fclk_bus_cm0_core", "hclk_bus", 0,
+			RK3562_CLKGATE_CON(23), 3, GFLAGS),
+	GATE(CLK_BUS_CM0_RTC, "clk_bus_cm0_rtc", "clk_rtc_32k", 0,
+			RK3562_CLKGATE_CON(23), 4, GFLAGS),
+	GATE(HCLK_ICACHE, "hclk_icache", "hclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(23), 8, GFLAGS),
+	GATE(HCLK_DCACHE, "hclk_dcache", "hclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(23), 9, GFLAGS),
+	GATE(PCLK_TSADC, "pclk_tsadc", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(24), 0, GFLAGS),
+	COMPOSITE_NOMUX(CLK_TSADC, "clk_tsadc", "xin24m", 0,
+			RK3562_CLKSEL_CON(43), 0, 11, DFLAGS,
+			RK3562_CLKGATE_CON(24), 1, GFLAGS),
+	COMPOSITE_NOMUX(CLK_TSADC_TSEN, "clk_tsadc_tsen", "xin24m", 0,
+			RK3562_CLKSEL_CON(43), 11, 5, DFLAGS,
+			RK3562_CLKGATE_CON(24), 3, GFLAGS),
+	GATE(PCLK_DFT2APB, "pclk_dft2apb", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(24), 4, GFLAGS),
+	COMPOSITE_NOMUX(CLK_SARADC_VCCIO156, "clk_saradc_vccio156", "xin24m", 0,
+			RK3562_CLKSEL_CON(44), 0, 12, DFLAGS,
+			RK3562_CLKGATE_CON(24), 9, GFLAGS),
+	GATE(PCLK_GMAC, "pclk_gmac", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(25), 0, GFLAGS),
+	GATE(ACLK_GMAC, "aclk_gmac", "aclk_bus", 0,
+			RK3562_CLKGATE_CON(25), 1, GFLAGS),
+	COMPOSITE_NODIV(CLK_GMAC_125M_CRU_I, "clk_gmac_125m_cru_i", mux_125m_xin24m_p, 0,
+			RK3562_CLKSEL_CON(45), 8, 1, MFLAGS,
+			RK3562_CLKGATE_CON(25), 2, GFLAGS),
+	COMPOSITE_NODIV(CLK_GMAC_50M_CRU_I, "clk_gmac_50m_cru_i", mux_50m_xin24m_p, 0,
+			RK3562_CLKSEL_CON(45), 7, 1, MFLAGS,
+			RK3562_CLKGATE_CON(25), 3, GFLAGS),
+	COMPOSITE(CLK_GMAC_ETH_OUT2IO, "clk_gmac_eth_out2io", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(46), 7, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_CLKGATE_CON(25), 4, GFLAGS),
+	GATE(PCLK_APB2ASB_VCCIO156, "pclk_apb2asb_vccio156", "pclk_bus", CLK_IS_CRITICAL,
+			RK3562_CLKGATE_CON(25), 5, GFLAGS),
+	GATE(PCLK_TO_VCCIO156, "pclk_to_vccio156", "pclk_bus", CLK_IS_CRITICAL,
+			RK3562_CLKGATE_CON(25), 6, GFLAGS),
+	GATE(PCLK_DSIPHY, "pclk_dsiphy", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(25), 8, GFLAGS),
+	GATE(PCLK_DSITX, "pclk_dsitx", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(25), 9, GFLAGS),
+	GATE(PCLK_CPU_EMA_DET, "pclk_cpu_ema_det", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(25), 10, GFLAGS),
+	GATE(PCLK_HASH, "pclk_hash", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(25), 11, GFLAGS),
+	GATE(PCLK_TOPCRU, "pclk_topcru", "pclk_bus", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(25), 15, GFLAGS),
+	GATE(PCLK_ASB2APB_VCCIO156, "pclk_asb2apb_vccio156", "pclk_to_vccio156", CLK_IS_CRITICAL,
+			RK3562_CLKGATE_CON(26), 0, GFLAGS),
+	GATE(PCLK_IOC_VCCIO156, "pclk_ioc_vccio156", "pclk_to_vccio156", CLK_IS_CRITICAL,
+			RK3562_CLKGATE_CON(26), 1, GFLAGS),
+	GATE(PCLK_GPIO3_VCCIO156, "pclk_gpio3_vccio156", "pclk_to_vccio156", 0,
+			RK3562_CLKGATE_CON(26), 2, GFLAGS),
+	GATE(PCLK_GPIO4_VCCIO156, "pclk_gpio4_vccio156", "pclk_to_vccio156", 0,
+			RK3562_CLKGATE_CON(26), 3, GFLAGS),
+	GATE(PCLK_SARADC_VCCIO156, "pclk_saradc_vccio156", "pclk_to_vccio156", 0,
+			RK3562_CLKGATE_CON(26), 4, GFLAGS),
+	GATE(PCLK_MAC100, "pclk_mac100", "pclk_bus", 0,
+			RK3562_CLKGATE_CON(27), 0, GFLAGS),
+	GATE(ACLK_MAC100, "aclk_mac100", "aclk_bus", 0,
+			RK3562_CLKGATE_CON(27), 1, GFLAGS),
+	COMPOSITE_NODIV(CLK_MAC100_50M_MATRIX, "clk_mac100_50m_matrix", mux_50m_xin24m_p, 0,
+			RK3562_CLKSEL_CON(47), 7, 1, MFLAGS,
+			RK3562_CLKGATE_CON(27), 2, GFLAGS),
+
+	/* PD_CORE */
+	COMPOSITE_NOMUX(0, "aclk_core_pre", "scmi_clk_cpu", CLK_IGNORE_UNUSED,
+			RK3562_CLKSEL_CON(11), 0, 3, DFLAGS | CLK_DIVIDER_READ_ONLY,
+			RK3562_CLKGATE_CON(4), 3, GFLAGS),
+	COMPOSITE_NOMUX(0, "pclk_dbg_pre", "scmi_clk_cpu", CLK_IGNORE_UNUSED,
+			RK3562_CLKSEL_CON(12), 0, 4, DFLAGS | CLK_DIVIDER_READ_ONLY,
+			RK3562_CLKGATE_CON(4), 5, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_CORE, "hclk_core", "gpll", CLK_IS_CRITICAL,
+			RK3562_CLKSEL_CON(13), 0, 6, DFLAGS,
+			RK3562_CLKGATE_CON(5), 2, GFLAGS),
+	GATE(0, "pclk_dbg_daplite", "pclk_dbg_pre", CLK_IGNORE_UNUSED,
+			RK3562_CLKGATE_CON(4), 10, GFLAGS),
+
+	/* PD_DDR */
+	FACTOR_GATE(0, "clk_gpll_mux_to_ddr", "gpll", 0, 1, 4,
+			RK3328_CLKGATE_CON(1), 6, GFLAGS),
+	COMPOSITE_NOMUX(PCLK_DDR, "pclk_ddr", "clk_gpll_mux_to_ddr", CLK_IS_CRITICAL,
+			RK3562_DDR_CLKSEL_CON(1), 8, 5, DFLAGS,
+			RK3562_DDR_CLKGATE_CON(0), 3, GFLAGS),
+	COMPOSITE_NOMUX(CLK_MSCH_BRG_BIU, "clk_msch_brg_biu", "clk_gpll_mux_to_ddr", CLK_IS_CRITICAL,
+			RK3562_DDR_CLKSEL_CON(1), 0, 4, DFLAGS,
+			RK3562_DDR_CLKGATE_CON(0), 4, GFLAGS),
+	GATE(PCLK_DDR_HWLP, "pclk_ddr_hwlp", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(0), 6, GFLAGS),
+	GATE(PCLK_DDR_UPCTL, "pclk_ddr_upctl", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(0), 7, GFLAGS),
+	GATE(PCLK_DDR_PHY, "pclk_ddr_phy", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(0), 8, GFLAGS),
+	GATE(PCLK_DDR_DFICTL, "pclk_ddr_dfictl", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(0), 9, GFLAGS),
+	GATE(PCLK_DDR_DMA2DDR, "pclk_ddr_dma2ddr", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(0), 10, GFLAGS),
+	GATE(PCLK_DDR_MON, "pclk_ddr_mon", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(1), 0, GFLAGS),
+	GATE(TMCLK_DDR_MON, "tmclk_ddr_mon", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(1), 1, GFLAGS),
+	GATE(PCLK_DDR_GRF, "pclk_ddr_grf", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(1), 2, GFLAGS),
+	GATE(PCLK_DDR_CRU, "pclk_ddr_cru", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(1), 3, GFLAGS),
+	GATE(PCLK_SUBDDR_CRU, "pclk_subddr_cru", "pclk_ddr", CLK_IGNORE_UNUSED,
+			RK3562_DDR_CLKGATE_CON(1), 4, GFLAGS),
+
+	/* PD_GPU */
+	COMPOSITE(CLK_GPU_PRE, "clk_gpu_pre", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(18), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(8), 0, GFLAGS),
+	COMPOSITE_NOMUX(ACLK_GPU_PRE, "aclk_gpu_pre", "clk_gpu_pre", 0,
+			RK3562_CLKSEL_CON(19), 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(8), 2, GFLAGS),
+	GATE(CLK_GPU, "clk_gpu", "clk_gpu_pre", 0,
+			RK3562_CLKGATE_CON(8), 4, GFLAGS),
+	COMPOSITE_NODIV(CLK_GPU_BRG, "clk_gpu_brg", mux_200m_100m_p, 0,
+			RK3562_CLKSEL_CON(19), 15, 1, MFLAGS,
+			RK3562_CLKGATE_CON(8), 8, GFLAGS),
+
+	/* PD_NPU */
+	COMPOSITE(CLK_NPU_PRE, "clk_npu_pre", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(15), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(6), 0, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_NPU_PRE, "hclk_npu_pre", "clk_npu_pre", 0,
+			RK3562_CLKSEL_CON(16), 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(6), 1, GFLAGS),
+	GATE(ACLK_RKNN, "aclk_rknn", "clk_npu_pre", 0,
+			RK3562_CLKGATE_CON(6), 4, GFLAGS),
+	GATE(HCLK_RKNN, "hclk_rknn", "hclk_npu_pre", 0,
+			RK3562_CLKGATE_CON(6), 5, GFLAGS),
+
+	/* PD_PERI */
+	COMPOSITE(ACLK_PERI, "aclk_peri", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_PERI_CLKSEL_CON(0), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(1), 0, GFLAGS),
+	COMPOSITE(HCLK_PERI, "hclk_peri", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_PERI_CLKSEL_CON(0), 15, 1, MFLAGS, 8, 6, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(1), 1, GFLAGS),
+	COMPOSITE(PCLK_PERI, "pclk_peri", gpll_cpll_p, CLK_IS_CRITICAL,
+			RK3562_PERI_CLKSEL_CON(1), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(1), 2, GFLAGS),
+	GATE(PCLK_PERICRU, "pclk_pericru", "pclk_peri", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKGATE_CON(1), 6, GFLAGS),
+	GATE(HCLK_SAI0, "hclk_sai0", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(2), 0, GFLAGS),
+	COMPOSITE(CLK_SAI0_SRC, "clk_sai0_src", gpll_cpll_hpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(1), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(2), 1, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_SAI0_FRAC, "clk_sai0_frac", "clk_sai0_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(2), 0,
+			RK3562_PERI_CLKGATE_CON(2), 2, GFLAGS,
+			&rk3562_clk_sai0_fracmux),
+	GATE(MCLK_SAI0, "mclk_sai0", "clk_sai0", 0,
+			RK3562_PERI_CLKGATE_CON(2), 3, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI0_OUT2IO, "mclk_sai0_out2io", mclk_sai0_out2io_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(3), 5, 1, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(2), 4, GFLAGS),
+	GATE(HCLK_SAI1, "hclk_sai1", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(2), 5, GFLAGS),
+	COMPOSITE(CLK_SAI1_SRC, "clk_sai1_src", gpll_cpll_hpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(3), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(2), 6, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_SAI1_FRAC, "clk_sai1_frac", "clk_sai1_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(4), 0,
+			RK3562_PERI_CLKGATE_CON(2), 7, GFLAGS,
+			&rk3562_clk_sai1_fracmux),
+	GATE(MCLK_SAI1, "mclk_sai1", "clk_sai1", 0,
+			RK3562_PERI_CLKGATE_CON(2), 8, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI1_OUT2IO, "mclk_sai1_out2io", mclk_sai1_out2io_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(5), 5, 1, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(2), 9, GFLAGS),
+	GATE(HCLK_SAI2, "hclk_sai2", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(2), 10, GFLAGS),
+	COMPOSITE(CLK_SAI2_SRC, "clk_sai2_src", gpll_cpll_hpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(6), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(2), 11, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_SAI2_FRAC, "clk_sai2_frac", "clk_sai2_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(7), 0,
+			RK3562_PERI_CLKGATE_CON(2), 12, GFLAGS,
+			&rk3562_clk_sai2_fracmux),
+	GATE(MCLK_SAI2, "mclk_sai2", "clk_sai2", 0,
+			RK3562_PERI_CLKGATE_CON(2), 13, GFLAGS),
+	COMPOSITE_NODIV(MCLK_SAI2_OUT2IO, "mclk_sai2_out2io", mclk_sai2_out2io_p, CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(8), 5, 1, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(2), 14, GFLAGS),
+	GATE(HCLK_DSM, "hclk_dsm", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(3), 1, GFLAGS),
+	GATE(CLK_DSM, "clk_dsm", "mclk_sai1", 0,
+			RK3562_PERI_CLKGATE_CON(3), 2, GFLAGS),
+	GATE(HCLK_PDM, "hclk_pdm", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(3), 4, GFLAGS),
+	COMPOSITE(MCLK_PDM, "mclk_pdm", gpll_cpll_hpll_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(12), 6, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(3), 5, GFLAGS),
+	GATE(HCLK_SPDIF, "hclk_spdif", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(3), 8, GFLAGS),
+	COMPOSITE(CLK_SPDIF_SRC, "clk_spdif_src", gpll_cpll_hpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(13), 14, 2, MFLAGS, 8, 6, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(3), 9, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_SPDIF_FRAC, "clk_spdif_frac", "clk_spdif_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(14), 0,
+			RK3562_PERI_CLKGATE_CON(3), 10, GFLAGS,
+			&rk3562_clk_spdif_fracmux),
+	GATE(MCLK_SPDIF, "mclk_spdif", "clk_spdif", 0,
+			RK3562_PERI_CLKGATE_CON(3), 11, GFLAGS),
+	GATE(HCLK_SDMMC0, "hclk_sdmmc0", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(4), 0, GFLAGS),
+	COMPOSITE(CCLK_SDMMC0, "cclk_sdmmc0", gpll_cpll_xin24m_dmyhpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(16), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(4), 1, GFLAGS),
+	MMC(SCLK_SDMMC0_DRV, "sdmmc0_drv", "cclk_sdmmc0", RK3562_SDMMC0_CON0, 1),
+	MMC(SCLK_SDMMC0_SAMPLE, "sdmmc0_sample", "cclk_sdmmc0", RK3562_SDMMC0_CON1, 1),
+	GATE(HCLK_SDMMC1, "hclk_sdmmc1", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(4), 2, GFLAGS),
+	COMPOSITE(CCLK_SDMMC1, "cclk_sdmmc1", gpll_cpll_xin24m_dmyhpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(17), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(4), 3, GFLAGS),
+	MMC(SCLK_SDMMC1_DRV, "sdmmc1_drv", "cclk_sdmmc1", RK3562_SDMMC1_CON0, 1),
+	MMC(SCLK_SDMMC1_SAMPLE, "sdmmc1_sample", "cclk_sdmmc1", RK3562_SDMMC1_CON1, 1),
+	GATE(HCLK_EMMC, "hclk_emmc", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(4), 8, GFLAGS),
+	GATE(ACLK_EMMC, "aclk_emmc", "aclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(4), 9, GFLAGS),
+	COMPOSITE(CCLK_EMMC, "cclk_emmc", gpll_cpll_xin24m_dmyhpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(18), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(4), 10, GFLAGS),
+	COMPOSITE(BCLK_EMMC, "bclk_emmc", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(19), 15, 1, MFLAGS, 8, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(4), 11, GFLAGS),
+	GATE(TMCLK_EMMC, "tmclk_emmc", "xin24m", 0,
+			RK3562_PERI_CLKGATE_CON(4), 12, GFLAGS),
+	COMPOSITE(SCLK_SFC, "sclk_sfc", gpll_cpll_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(20), 8, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(4), 13, GFLAGS),
+	GATE(HCLK_SFC, "hclk_sfc", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(4), 14, GFLAGS),
+	GATE(HCLK_USB2HOST, "hclk_usb2host", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(5), 0, GFLAGS),
+	GATE(HCLK_USB2HOST_ARB, "hclk_usb2host_arb", "hclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(5), 1, GFLAGS),
+	GATE(PCLK_SPI1, "pclk_spi1", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(6), 0, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI1, "clk_spi1", mux_200m_100m_50m_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(20), 12, 2, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(6), 1, GFLAGS),
+	GATE(SCLK_IN_SPI1, "sclk_in_spi1", "sclk_in_spi1_io", 0,
+			RK3562_PERI_CLKGATE_CON(6), 2, GFLAGS),
+	GATE(PCLK_SPI2, "pclk_spi2", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(6), 3, GFLAGS),
+	COMPOSITE_NODIV(CLK_SPI2, "clk_spi2", mux_200m_100m_50m_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(20), 14, 2, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(6), 4, GFLAGS),
+	GATE(SCLK_IN_SPI2, "sclk_in_spi2", "sclk_in_spi2_io", 0,
+			RK3562_PERI_CLKGATE_CON(6), 5, GFLAGS),
+	GATE(PCLK_UART1, "pclk_uart1", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 0, GFLAGS),
+	GATE(PCLK_UART2, "pclk_uart2", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 1, GFLAGS),
+	GATE(PCLK_UART3, "pclk_uart3", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 2, GFLAGS),
+	GATE(PCLK_UART4, "pclk_uart4", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 3, GFLAGS),
+	GATE(PCLK_UART5, "pclk_uart5", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 4, GFLAGS),
+	GATE(PCLK_UART6, "pclk_uart6", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 5, GFLAGS),
+	GATE(PCLK_UART7, "pclk_uart7", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 6, GFLAGS),
+	GATE(PCLK_UART8, "pclk_uart8", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 7, GFLAGS),
+	GATE(PCLK_UART9, "pclk_uart9", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(7), 8, GFLAGS),
+	COMPOSITE(CLK_UART1_SRC, "clk_uart1_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(21), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(7), 9, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART1_FRAC, "clk_uart1_frac", "clk_uart1_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(22), 0,
+			RK3562_PERI_CLKGATE_CON(7), 10, GFLAGS,
+			&rk3562_clk_uart1_fracmux),
+	GATE(SCLK_UART1, "sclk_uart1", "clk_uart1", 0,
+			RK3562_PERI_CLKGATE_CON(7), 11, GFLAGS),
+	COMPOSITE(CLK_UART2_SRC, "clk_uart2_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(23), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(7), 12, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART2_FRAC, "clk_uart2_frac", "clk_uart2_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(24), 0,
+			RK3562_PERI_CLKGATE_CON(7), 13, GFLAGS,
+			&rk3562_clk_uart2_fracmux),
+	GATE(SCLK_UART2, "sclk_uart2", "clk_uart2", 0,
+			RK3562_PERI_CLKGATE_CON(7), 14, GFLAGS),
+	COMPOSITE(CLK_UART3_SRC, "clk_uart3_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(25), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(7), 15, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART3_FRAC, "clk_uart3_frac", "clk_uart3_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(26), 0,
+			RK3562_PERI_CLKGATE_CON(8), 0, GFLAGS,
+			&rk3562_clk_uart3_fracmux),
+	GATE(SCLK_UART3, "sclk_uart3", "clk_uart3", 0,
+			RK3562_PERI_CLKGATE_CON(8), 1, GFLAGS),
+	COMPOSITE(CLK_UART4_SRC, "clk_uart4_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(27), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(8), 2, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART4_FRAC, "clk_uart4_frac", "clk_uart4_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(28), 0,
+			RK3562_PERI_CLKGATE_CON(8), 3, GFLAGS,
+			&rk3562_clk_uart4_fracmux),
+	GATE(SCLK_UART4, "sclk_uart4", "clk_uart4", 0,
+			RK3562_PERI_CLKGATE_CON(8), 4, GFLAGS),
+	COMPOSITE(CLK_UART5_SRC, "clk_uart5_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(29), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(8), 5, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART5_FRAC, "clk_uart5_frac", "clk_uart5_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(30), 0,
+			RK3562_PERI_CLKGATE_CON(8), 6, GFLAGS,
+			&rk3562_clk_uart5_fracmux),
+	GATE(SCLK_UART5, "sclk_uart5", "clk_uart5", 0,
+			RK3562_PERI_CLKGATE_CON(8), 7, GFLAGS),
+	COMPOSITE(CLK_UART6_SRC, "clk_uart6_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(31), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(8), 8, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART6_FRAC, "clk_uart6_frac", "clk_uart6_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(32), 0,
+			RK3562_PERI_CLKGATE_CON(8), 9, GFLAGS,
+			&rk3562_clk_uart6_fracmux),
+	GATE(SCLK_UART6, "sclk_uart6", "clk_uart6", 0,
+			RK3562_PERI_CLKGATE_CON(8), 10, GFLAGS),
+	COMPOSITE(CLK_UART7_SRC, "clk_uart7_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(33), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(8), 11, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART7_FRAC, "clk_uart7_frac", "clk_uart7_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(34), 0,
+			RK3562_PERI_CLKGATE_CON(8), 12, GFLAGS,
+			&rk3562_clk_uart7_fracmux),
+	GATE(SCLK_UART7, "sclk_uart7", "clk_uart7", 0,
+			RK3562_PERI_CLKGATE_CON(8), 13, GFLAGS),
+	COMPOSITE(CLK_UART8_SRC, "clk_uart8_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(35), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(8), 14, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART8_FRAC, "clk_uart8_frac", "clk_uart8_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(36), 0,
+			RK3562_PERI_CLKGATE_CON(8), 15, GFLAGS,
+			&rk3562_clk_uart8_fracmux),
+	GATE(SCLK_UART8, "sclk_uart8", "clk_uart8", 0,
+			RK3562_PERI_CLKGATE_CON(9), 0, GFLAGS),
+	COMPOSITE(CLK_UART9_SRC, "clk_uart9_src", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(37), 8, 1, MFLAGS, 0, 7, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(9), 1, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_UART9_FRAC, "clk_uart9_frac", "clk_uart9_src", CLK_SET_RATE_PARENT,
+			RK3562_PERI_CLKSEL_CON(38), 0,
+			RK3562_PERI_CLKGATE_CON(9), 2, GFLAGS,
+			&rk3562_clk_uart9_fracmux),
+	GATE(SCLK_UART9, "sclk_uart9", "clk_uart9", 0,
+			RK3562_PERI_CLKGATE_CON(9), 3, GFLAGS),
+	GATE(PCLK_PWM1_PERI, "pclk_pwm1_peri", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(10), 0, GFLAGS),
+	COMPOSITE_NODIV(CLK_PWM1_PERI, "clk_pwm1_peri", mux_100m_50m_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(40), 0, 2, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(10), 1, GFLAGS),
+	GATE(CLK_CAPTURE_PWM1_PERI, "clk_capture_pwm1_peri", "xin24m", 0,
+			RK3562_PERI_CLKGATE_CON(10), 2, GFLAGS),
+	GATE(PCLK_PWM2_PERI, "pclk_pwm2_peri", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(10), 3, GFLAGS),
+	COMPOSITE_NODIV(CLK_PWM2_PERI, "clk_pwm2_peri", mux_100m_50m_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(40), 6, 2, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(10), 4, GFLAGS),
+	GATE(CLK_CAPTURE_PWM2_PERI, "clk_capture_pwm2_peri", "xin24m", 0,
+			RK3562_PERI_CLKGATE_CON(10), 5, GFLAGS),
+	GATE(PCLK_PWM3_PERI, "pclk_pwm3_peri", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(10), 6, GFLAGS),
+	COMPOSITE_NODIV(CLK_PWM3_PERI, "clk_pwm3_peri", mux_100m_50m_xin24m_p, 0,
+			RK3562_PERI_CLKSEL_CON(40), 8, 2, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(10), 7, GFLAGS),
+	GATE(CLK_CAPTURE_PWM3_PERI, "clk_capture_pwm3_peri", "xin24m", 0,
+			RK3562_PERI_CLKGATE_CON(10), 8, GFLAGS),
+	GATE(PCLK_CAN0, "pclk_can0", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(11), 0, GFLAGS),
+	COMPOSITE(CLK_CAN0, "clk_can0", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(41), 7, 1, MFLAGS, 0, 5, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(11), 1, GFLAGS),
+	GATE(PCLK_CAN1, "pclk_can1", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(11), 2, GFLAGS),
+	COMPOSITE(CLK_CAN1, "clk_can1", gpll_cpll_p, 0,
+			RK3562_PERI_CLKSEL_CON(41), 15, 1, MFLAGS, 8, 5, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(11), 3, GFLAGS),
+	GATE(PCLK_PERI_WDT, "pclk_peri_wdt", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(13), 0, GFLAGS),
+	COMPOSITE_NODIV(TCLK_PERI_WDT, "tclk_peri_wdt", mux_xin24m_32k_p, 0,
+			RK3562_PERI_CLKSEL_CON(43), 15, 1, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(13), 1, GFLAGS),
+	GATE(ACLK_SYSMEM, "aclk_sysmem", "aclk_peri", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKGATE_CON(13), 2, GFLAGS),
+	GATE(HCLK_BOOTROM, "hclk_bootrom", "hclk_peri", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKGATE_CON(13), 3, GFLAGS),
+	GATE(PCLK_PERI_GRF, "pclk_peri_grf", "pclk_peri", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKGATE_CON(13), 4, GFLAGS),
+	GATE(ACLK_DMAC, "aclk_dmac", "aclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(13), 5, GFLAGS),
+	GATE(ACLK_RKDMAC, "aclk_rkdmac", "aclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(13), 6, GFLAGS),
+	GATE(PCLK_OTPC_NS, "pclk_otpc_ns", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(14), 0, GFLAGS),
+	GATE(CLK_SBPI_OTPC_NS, "clk_sbpi_otpc_ns", "xin24m", 0,
+			RK3562_PERI_CLKGATE_CON(14), 1, GFLAGS),
+	COMPOSITE_NOMUX(CLK_USER_OTPC_NS, "clk_user_otpc_ns", "xin24m", 0,
+			RK3562_PERI_CLKSEL_CON(44), 0, 8, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(14), 2, GFLAGS),
+	GATE(PCLK_OTPC_S, "pclk_otpc_s", "pclk_peri", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKGATE_CON(14), 3, GFLAGS),
+	GATE(CLK_SBPI_OTPC_S, "clk_sbpi_otpc_s", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKGATE_CON(14), 4, GFLAGS),
+	COMPOSITE_NOMUX(CLK_USER_OTPC_S, "clk_user_otpc_s", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_PERI_CLKSEL_CON(44), 8, 8, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(14), 5, GFLAGS),
+	GATE(CLK_OTPC_ARB, "clk_otpc_arb", "xin24m", 0,
+			RK3562_PERI_CLKGATE_CON(14), 6, GFLAGS),
+	GATE(PCLK_OTPPHY, "pclk_otpphy", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(14), 7, GFLAGS),
+	GATE(PCLK_USB2PHY, "pclk_usb2phy", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(15), 0, GFLAGS),
+	GATE(PCLK_PIPEPHY, "pclk_pipephy", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(15), 7, GFLAGS),
+	GATE(PCLK_SARADC, "pclk_saradc", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(16), 4, GFLAGS),
+	COMPOSITE_NOMUX(CLK_SARADC, "clk_saradc", "xin24m", 0,
+			RK3562_PERI_CLKSEL_CON(46), 0, 12, DFLAGS,
+			RK3562_PERI_CLKGATE_CON(16), 5, GFLAGS),
+	GATE(PCLK_IOC_VCCIO234, "pclk_ioc_vccio234", "pclk_peri", CLK_IS_CRITICAL,
+			RK3562_PERI_CLKGATE_CON(16), 12, GFLAGS),
+	GATE(PCLK_PERI_GPIO1, "pclk_peri_gpio1", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(17), 0, GFLAGS),
+	GATE(PCLK_PERI_GPIO2, "pclk_peri_gpio2", "pclk_peri", 0,
+			RK3562_PERI_CLKGATE_CON(17), 1, GFLAGS),
+	COMPOSITE_NODIV(DCLK_PERI_GPIO, "dclk_peri_gpio", mux_xin24m_32k_p, 0,
+			RK3562_PERI_CLKSEL_CON(47), 8, 1, MFLAGS,
+			RK3562_PERI_CLKGATE_CON(17), 4, GFLAGS),
+	GATE(DCLK_PERI_GPIO1, "dclk_peri_gpio1", "dclk_peri_gpio", 0,
+			RK3562_PERI_CLKGATE_CON(17), 2, GFLAGS),
+	GATE(DCLK_PERI_GPIO2, "dclk_peri_gpio2", "dclk_peri_gpio", 0,
+			RK3562_PERI_CLKGATE_CON(17), 3, GFLAGS),
+
+	/* PD_PHP */
+	COMPOSITE(ACLK_PHP, "aclk_php", gpll_cpll_p, 0,
+			RK3562_CLKSEL_CON(36), 7, 1, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(16), 0, GFLAGS),
+	COMPOSITE_NOMUX(PCLK_PHP, "pclk_php", "aclk_php", 0,
+			RK3562_CLKSEL_CON(36), 8, 4, DFLAGS,
+			RK3562_CLKGATE_CON(16), 1, GFLAGS),
+	GATE(ACLK_PCIE20_MST, "aclk_pcie20_mst", "aclk_php", 0,
+			RK3562_CLKGATE_CON(16), 4, GFLAGS),
+	GATE(ACLK_PCIE20_SLV, "aclk_pcie20_slv", "aclk_php", 0,
+			RK3562_CLKGATE_CON(16), 5, GFLAGS),
+	GATE(ACLK_PCIE20_DBI, "aclk_pcie20_dbi", "aclk_php", 0,
+			RK3562_CLKGATE_CON(16), 6, GFLAGS),
+	GATE(PCLK_PCIE20, "pclk_pcie20", "pclk_php", 0,
+			RK3562_CLKGATE_CON(16), 7, GFLAGS),
+	GATE(CLK_PCIE20_AUX, "clk_pcie20_aux", "xin24m", 0,
+			RK3562_CLKGATE_CON(16), 8, GFLAGS),
+	GATE(ACLK_USB3OTG, "aclk_usb3otg", "aclk_php", 0,
+			RK3562_CLKGATE_CON(16), 10, GFLAGS),
+	COMPOSITE_NODIV(CLK_USB3OTG_SUSPEND, "clk_usb3otg_suspend", mux_xin24m_32k_p, 0,
+			RK3562_CLKSEL_CON(36), 15, 1, MFLAGS,
+			RK3562_CLKGATE_CON(16), 11, GFLAGS),
+	GATE(CLK_USB3OTG_REF, "clk_usb3otg_ref", "xin24m", 0,
+			RK3562_CLKGATE_CON(16), 12, GFLAGS),
+	GATE(CLK_PIPEPHY_REF_FUNC, "clk_pipephy_ref_func", "pclk_pcie20", 0,
+			RK3562_CLKGATE_CON(17), 3, GFLAGS),
+
+	/* PD_PMU1 */
+	COMPOSITE_NOMUX(CLK_200M_PMU, "clk_200m_pmu", "cpll", CLK_IS_CRITICAL,
+			RK3562_PMU1_CLKSEL_CON(0), 0, 5, DFLAGS,
+			RK3562_PMU1_CLKGATE_CON(0), 1, GFLAGS),
+	/* PD_PMU0 */
+	COMPOSITE_FRACMUX(CLK_RTC32K_FRAC, "clk_rtc32k_frac", "xin24m", CLK_IS_CRITICAL,
+			RK3562_PMU0_CLKSEL_CON(0), 0,
+			RK3562_PMU0_CLKGATE_CON(0), 15, GFLAGS,
+			&rk3562_rtc32k_pmu_fracmux),
+	COMPOSITE_NOMUX(BUSCLK_PDPMU0, "busclk_pdpmu0", "clk_200m_pmu", CLK_IS_CRITICAL,
+			RK3562_PMU0_CLKSEL_CON(1), 3, 2, DFLAGS,
+			RK3562_PMU0_CLKGATE_CON(0), 14, GFLAGS),
+	GATE(PCLK_PMU0_CRU, "pclk_pmu0_cru", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 0, GFLAGS),
+	GATE(PCLK_PMU0_PMU, "pclk_pmu0_pmu", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 1, GFLAGS),
+	GATE(CLK_PMU0_PMU, "clk_pmu0_pmu", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 2, GFLAGS),
+	GATE(PCLK_PMU0_HP_TIMER, "pclk_pmu0_hp_timer", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 3, GFLAGS),
+	GATE(CLK_PMU0_HP_TIMER, "clk_pmu0_hp_timer", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 4, GFLAGS),
+	GATE(CLK_PMU0_32K_HP_TIMER, "clk_pmu0_32k_hp_timer", "clk_rtc_32k", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 5, GFLAGS),
+	GATE(PCLK_PMU0_PVTM, "pclk_pmu0_pvtm", "busclk_pdpmu0", 0,
+			RK3562_PMU0_CLKGATE_CON(0), 6, GFLAGS),
+	GATE(CLK_PMU0_PVTM, "clk_pmu0_pvtm", "xin24m", 0,
+			RK3562_PMU0_CLKGATE_CON(0), 7, GFLAGS),
+	GATE(PCLK_IOC_PMUIO, "pclk_ioc_pmuio", "busclk_pdpmu0", CLK_IS_CRITICAL,
+			RK3562_PMU0_CLKGATE_CON(0), 8, GFLAGS),
+	GATE(PCLK_PMU0_GPIO0, "pclk_pmu0_gpio0", "busclk_pdpmu0", 0,
+			RK3562_PMU0_CLKGATE_CON(0), 9, GFLAGS),
+	GATE(DBCLK_PMU0_GPIO0, "dbclk_pmu0_gpio0", "xin24m", 0,
+			RK3562_PMU0_CLKGATE_CON(0), 10, GFLAGS),
+	GATE(PCLK_PMU0_GRF, "pclk_pmu0_grf", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 11, GFLAGS),
+	GATE(PCLK_PMU0_SGRF, "pclk_pmu0_sgrf", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(0), 12, GFLAGS),
+	GATE(CLK_DDR_FAIL_SAFE, "clk_ddr_fail_safe", "xin24m", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(1), 0, GFLAGS),
+	GATE(PCLK_PMU0_SCRKEYGEN, "pclk_pmu0_scrkeygen", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU0_CLKGATE_CON(1), 1, GFLAGS),
+	COMPOSITE_NOMUX(CLK_PIPEPHY_DIV, "clk_pipephy_div", "cpll", 0,
+			RK3562_PMU0_CLKSEL_CON(2), 0, 6, DFLAGS,
+			RK3562_PMU0_CLKGATE_CON(2), 0, GFLAGS),
+	GATE(CLK_PIPEPHY_XIN24M, "clk_pipephy_xin24m", "xin24m", 0,
+			RK3562_PMU0_CLKGATE_CON(2), 1, GFLAGS),
+	COMPOSITE_NODIV(CLK_PIPEPHY_REF, "clk_pipephy_ref", clk_pipephy_ref_p, 0,
+			RK3562_PMU0_CLKSEL_CON(2), 7, 1, MFLAGS,
+			RK3562_PMU0_CLKGATE_CON(2), 2, GFLAGS),
+	GATE(CLK_USB2PHY_XIN24M, "clk_usb2phy_xin24m", "xin24m", 0,
+			RK3562_PMU0_CLKGATE_CON(2), 4, GFLAGS),
+	COMPOSITE_NODIV(CLK_USB2PHY_REF, "clk_usb2phy_ref", clk_usbphy_ref_p, 0,
+			RK3562_PMU0_CLKSEL_CON(2), 8, 1, MFLAGS,
+			RK3562_PMU0_CLKGATE_CON(2), 5, GFLAGS),
+	GATE(CLK_MIPIDSIPHY_XIN24M, "clk_mipidsiphy_xin24m", "xin24m", 0,
+			RK3562_PMU0_CLKGATE_CON(2), 6, GFLAGS),
+	COMPOSITE_NODIV(CLK_MIPIDSIPHY_REF, "clk_mipidsiphy_ref", clk_mipidsi_ref_p, 0,
+			RK3562_PMU0_CLKSEL_CON(2), 15, 1, MFLAGS,
+			RK3562_PMU0_CLKGATE_CON(2), 7, GFLAGS),
+	GATE(PCLK_PMU0_I2C0, "pclk_pmu0_i2c0", "busclk_pdpmu0", 0,
+			RK3562_PMU0_CLKGATE_CON(2), 8, GFLAGS),
+	COMPOSITE(CLK_PMU0_I2C0, "clk_pmu0_i2c0", mux_200m_xin24m_32k_p, 0,
+			RK3562_PMU0_CLKSEL_CON(3), 14, 2, MFLAGS, 8, 5, DFLAGS,
+			RK3562_PMU0_CLKGATE_CON(2), 9, GFLAGS),
+	/* PD_PMU1 */
+	GATE(PCLK_PMU1_CRU, "pclk_pmu1_cru", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU1_CLKGATE_CON(0), 0, GFLAGS),
+	GATE(HCLK_PMU1_MEM, "hclk_pmu1_mem", "busclk_pdpmu0", CLK_IGNORE_UNUSED,
+			RK3562_PMU1_CLKGATE_CON(0), 2, GFLAGS),
+	GATE(PCLK_PMU1_UART0, "pclk_pmu1_uart0", "busclk_pdpmu0", 0,
+			RK3562_PMU1_CLKGATE_CON(0), 7, GFLAGS),
+	COMPOSITE_NOMUX(CLK_PMU1_UART0_SRC, "clk_pmu1_uart0_src", "cpll", 0,
+			RK3562_PMU1_CLKSEL_CON(2), 0, 4, DFLAGS,
+			RK3562_PMU1_CLKGATE_CON(0), 8, GFLAGS),
+	COMPOSITE_FRACMUX(CLK_PMU1_UART0_FRAC, "clk_pmu1_uart0_frac", "clk_pmu1_uart0_src", CLK_SET_RATE_PARENT,
+			RK3562_PMU1_CLKSEL_CON(3), 0,
+			RK3562_PMU1_CLKGATE_CON(0), 9, GFLAGS,
+			&rk3562_clk_pmu1_uart0_fracmux),
+	GATE(SCLK_PMU1_UART0, "sclk_pmu1_uart0", "clk_pmu1_uart0", 0,
+			RK3562_PMU1_CLKGATE_CON(0), 10, GFLAGS),
+	GATE(PCLK_PMU1_SPI0, "pclk_pmu1_spi0", "busclk_pdpmu0", 0,
+			RK3562_PMU1_CLKGATE_CON(1), 0, GFLAGS),
+	COMPOSITE(CLK_PMU1_SPI0, "clk_pmu1_spi0", mux_200m_xin24m_32k_p, 0,
+			RK3562_PMU1_CLKSEL_CON(4), 6, 2, MFLAGS, 0, 2, DFLAGS,
+			RK3562_PMU1_CLKGATE_CON(1), 1, GFLAGS),
+	GATE(SCLK_IN_PMU1_SPI0, "sclk_in_pmu1_spi0", "sclk_in_pmu1_spi0_io", 0,
+			RK3562_PMU1_CLKGATE_CON(1), 2, GFLAGS),
+	GATE(PCLK_PMU1_PWM0, "pclk_pmu1_pwm0", "busclk_pdpmu0", 0,
+			RK3562_PMU1_CLKGATE_CON(1), 3, GFLAGS),
+	COMPOSITE(CLK_PMU1_PWM0, "clk_pmu1_pwm0", mux_200m_xin24m_32k_p, 0,
+			RK3562_PMU1_CLKSEL_CON(4), 14, 2, MFLAGS, 8, 2, DFLAGS,
+			RK3562_PMU1_CLKGATE_CON(1), 4, GFLAGS),
+	GATE(CLK_CAPTURE_PMU1_PWM0, "clk_capture_pmu1_pwm0", "xin24m", 0,
+			RK3562_PMU1_CLKGATE_CON(1), 5, GFLAGS),
+	GATE(CLK_PMU1_WIFI, "clk_pmu1_wifi", "xin24m", 0,
+			RK3562_PMU1_CLKGATE_CON(1), 6, GFLAGS),
+	GATE(FCLK_PMU1_CM0_CORE, "fclk_pmu1_cm0_core", "busclk_pdpmu0", 0,
+			RK3562_PMU1_CLKGATE_CON(2), 0, GFLAGS),
+	GATE(CLK_PMU1_CM0_RTC, "clk_pmu1_cm0_rtc", "clk_rtc_32k", 0,
+			RK3562_PMU1_CLKGATE_CON(2), 1, GFLAGS),
+	GATE(PCLK_PMU1_WDTNS, "pclk_pmu1_wdtns", "busclk_pdpmu0", 0,
+			RK3562_PMU1_CLKGATE_CON(2), 3, GFLAGS),
+	GATE(CLK_PMU1_WDTNS, "clk_pmu1_wdtns", "xin24m", 0,
+			RK3562_PMU1_CLKGATE_CON(2), 4, GFLAGS),
+	GATE(PCLK_PMU1_MAILBOX, "pclk_pmu1_mailbox", "busclk_pdpmu0", 0,
+			RK3562_PMU1_CLKGATE_CON(3), 8, GFLAGS),
+
+	/* PD_RGA */
+	COMPOSITE(ACLK_RGA_PRE, "aclk_rga_pre", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(32), 6, 2, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(14), 0, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_RGA_PRE, "hclk_rga_pre", "aclk_rga_jdec", 0,
+			RK3562_CLKSEL_CON(32), 8, 3, DFLAGS,
+			RK3562_CLKGATE_CON(14), 1, GFLAGS),
+	GATE(ACLK_RGA, "aclk_rga", "aclk_rga_jdec", 0,
+			RK3562_CLKGATE_CON(14), 6, GFLAGS),
+	GATE(HCLK_RGA, "hclk_rga", "hclk_rga_pre", 0,
+			RK3562_CLKGATE_CON(14), 7, GFLAGS),
+	COMPOSITE(CLK_RGA_CORE, "clk_rga_core", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(33), 6, 2, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(14), 8, GFLAGS),
+	GATE(ACLK_JDEC, "aclk_jdec", "aclk_rga_jdec", 0,
+			RK3562_CLKGATE_CON(14), 9, GFLAGS),
+	GATE(HCLK_JDEC, "hclk_jdec", "hclk_rga_pre", 0,
+			RK3562_CLKGATE_CON(14), 10, GFLAGS),
+
+	/* PD_VDPU */
+	COMPOSITE(ACLK_VDPU_PRE, "aclk_vdpu_pre", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(22), 6, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(10), 0, GFLAGS),
+	COMPOSITE(CLK_RKVDEC_HEVC_CA, "clk_rkvdec_hevc_ca", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(23), 14, 2, MFLAGS, 8, 5, DFLAGS,
+			RK3562_CLKGATE_CON(10), 3, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_VDPU_PRE, "hclk_vdpu_pre", "aclk_vdpu", 0,
+			RK3562_CLKSEL_CON(24), 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(10), 4, GFLAGS),
+	GATE(ACLK_RKVDEC, "aclk_rkvdec", "aclk_vdpu", 0,
+			RK3562_CLKGATE_CON(10), 7, GFLAGS),
+	GATE(HCLK_RKVDEC, "hclk_rkvdec", "hclk_vdpu_pre", 0,
+			RK3562_CLKGATE_CON(10), 8, GFLAGS),
+
+	/* PD_VEPU */
+	COMPOSITE(CLK_RKVENC_CORE, "clk_rkvenc_core", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(20), 6, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(9), 0, GFLAGS),
+	COMPOSITE(ACLK_VEPU_PRE, "aclk_vepu_pre", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(20), 14, 2, MFLAGS, 8, 5, DFLAGS,
+			RK3562_CLKGATE_CON(9), 1, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_VEPU_PRE, "hclk_vepu_pre", "aclk_vepu", 0,
+			RK3562_CLKSEL_CON(21), 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(9), 2, GFLAGS),
+	GATE(ACLK_RKVENC, "aclk_rkvenc", "aclk_vepu", 0,
+			RK3562_CLKGATE_CON(9), 5, GFLAGS),
+	GATE(HCLK_RKVENC, "hclk_rkvenc", "hclk_vepu", 0,
+			RK3562_CLKGATE_CON(9), 6, GFLAGS),
+
+	/* PD_VI */
+	COMPOSITE(ACLK_VI, "aclk_vi", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(25), 6, 2, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(11), 0, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_VI, "hclk_vi", "aclk_vi_isp", 0,
+			RK3562_CLKSEL_CON(26), 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(11), 1, GFLAGS),
+	COMPOSITE_NOMUX(PCLK_VI, "pclk_vi", "aclk_vi_isp", 0,
+			RK3562_CLKSEL_CON(26), 8, 4, DFLAGS,
+			RK3562_CLKGATE_CON(11), 2, GFLAGS),
+	GATE(ACLK_ISP, "aclk_isp", "aclk_vi_isp", 0,
+			RK3562_CLKGATE_CON(11), 6, GFLAGS),
+	GATE(HCLK_ISP, "hclk_isp", "hclk_vi", 0,
+			RK3562_CLKGATE_CON(11), 7, GFLAGS),
+	COMPOSITE(CLK_ISP, "clk_isp", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(27), 6, 2, MFLAGS, 0, 4, DFLAGS,
+			RK3562_CLKGATE_CON(11), 8, GFLAGS),
+	GATE(ACLK_VICAP, "aclk_vicap", "aclk_vi_isp", 0,
+			RK3562_CLKGATE_CON(11), 9, GFLAGS),
+	GATE(HCLK_VICAP, "hclk_vicap", "hclk_vi", 0,
+			RK3562_CLKGATE_CON(11), 10, GFLAGS),
+	COMPOSITE(DCLK_VICAP, "dclk_vicap", gpll_cpll_pvtpll_dmyapll_p, 0,
+			RK3562_CLKSEL_CON(27), 14, 2, MFLAGS, 8, 4, DFLAGS,
+			RK3562_CLKGATE_CON(11), 11, GFLAGS),
+	GATE(CSIRX0_CLK_DATA, "csirx0_clk_data", "csirx0_clk_data_io", 0,
+			RK3562_CLKGATE_CON(11), 12, GFLAGS),
+	GATE(CSIRX1_CLK_DATA, "csirx1_clk_data", "csirx1_clk_data_io", 0,
+			RK3562_CLKGATE_CON(11), 13, GFLAGS),
+	GATE(CSIRX2_CLK_DATA, "csirx2_clk_data", "csirx2_clk_data_io", 0,
+			RK3562_CLKGATE_CON(11), 14, GFLAGS),
+	GATE(CSIRX3_CLK_DATA, "csirx3_clk_data", "csirx3_clk_data_io", 0,
+			RK3562_CLKGATE_CON(11), 15, GFLAGS),
+	GATE(PCLK_CSIHOST0, "pclk_csihost0", "pclk_vi", 0,
+			RK3562_CLKGATE_CON(12), 0, GFLAGS),
+	GATE(PCLK_CSIHOST1, "pclk_csihost1", "pclk_vi", 0,
+			RK3562_CLKGATE_CON(12), 1, GFLAGS),
+	GATE(PCLK_CSIHOST2, "pclk_csihost2", "pclk_vi", 0,
+			RK3562_CLKGATE_CON(12), 2, GFLAGS),
+	GATE(PCLK_CSIHOST3, "pclk_csihost3", "pclk_vi", 0,
+			RK3562_CLKGATE_CON(12), 3, GFLAGS),
+	GATE(PCLK_CSIPHY0, "pclk_csiphy0", "pclk_vi", 0,
+			RK3562_CLKGATE_CON(12), 4, GFLAGS),
+	GATE(PCLK_CSIPHY1, "pclk_csiphy1", "pclk_vi", 0,
+			RK3562_CLKGATE_CON(12), 5, GFLAGS),
+
+	/* PD_VO */
+	COMPOSITE(ACLK_VO_PRE, "aclk_vo_pre", gpll_cpll_vpll_dmyhpll_p, 0,
+			RK3562_CLKSEL_CON(28), 6, 2, MFLAGS, 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(13), 0, GFLAGS),
+	COMPOSITE_NOMUX(HCLK_VO_PRE, "hclk_vo_pre", "aclk_vo", 0,
+			RK3562_CLKSEL_CON(29), 0, 5, DFLAGS,
+			RK3562_CLKGATE_CON(13), 1, GFLAGS),
+	GATE(ACLK_VOP, "aclk_vop", "aclk_vo", 0,
+			RK3562_CLKGATE_CON(13), 6, GFLAGS),
+	GATE(HCLK_VOP, "hclk_vop", "hclk_vo_pre", 0,
+			RK3562_CLKGATE_CON(13), 7, GFLAGS),
+	COMPOSITE(DCLK_VOP, "dclk_vop", gpll_dmyhpll_vpll_apll_p, CLK_SET_RATE_NO_REPARENT,
+			RK3562_CLKSEL_CON(30), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3562_CLKGATE_CON(13), 8, GFLAGS),
+	COMPOSITE(DCLK_VOP1, "dclk_vop1", gpll_dmyhpll_vpll_apll_p, CLK_SET_RATE_NO_REPARENT,
+			RK3562_CLKSEL_CON(31), 14, 2, MFLAGS, 0, 8, DFLAGS,
+			RK3562_CLKGATE_CON(13), 9, GFLAGS),
+};
+
+static void __init rk3562_clk_init(struct device_node *np)
+{
+	struct rockchip_clk_provider *ctx;
+	unsigned long clk_nr_clks;
+	void __iomem *reg_base;
+
+	clk_nr_clks = rockchip_clk_find_max_clk_id(rk3562_clk_branches,
+					ARRAY_SIZE(rk3562_clk_branches)) + 1;
+
+	reg_base = of_iomap(np, 0);
+	if (!reg_base) {
+		pr_err("%s: could not map cru region\n", __func__);
+		return;
+	}
+
+	ctx = rockchip_clk_init(np, reg_base, clk_nr_clks);
+	if (IS_ERR(ctx)) {
+		pr_err("%s: rockchip clk init failed\n", __func__);
+		iounmap(reg_base);
+		return;
+	}
+
+	rockchip_clk_register_plls(ctx, rk3562_pll_clks,
+				   ARRAY_SIZE(rk3562_pll_clks),
+				   RK3562_GRF_SOC_STATUS0);
+
+	rockchip_clk_register_branches(ctx, rk3562_clk_branches,
+				       ARRAY_SIZE(rk3562_clk_branches));
+
+	rk3562_rst_init(np, reg_base);
+
+	rockchip_register_restart_notifier(ctx, RK3562_GLB_SRST_FST);
+
+	rockchip_clk_of_add_provider(np, ctx);
+}
+
+struct clk_rk3562_inits {
+	void (*inits)(struct device_node *np);
+};
+
+static const struct clk_rk3562_inits clk_rk3562_cru_init = {
+	.inits = rk3562_clk_init,
+};
+
+static const struct of_device_id clk_rk3562_match_table[] = {
+	{
+		.compatible = "rockchip,rk3562-cru",
+		.data = &clk_rk3562_cru_init,
+	},
+	{ }
+};
+
+static int clk_rk3562_probe(struct device *dev)
+{
+	const struct clk_rk3562_inits *init_data;
+
+	init_data = device_get_match_data(dev);
+	if (!init_data)
+		return -EINVAL;
+
+	if (init_data->inits)
+		init_data->inits(dev->of_node);
+
+	return 0;
+}
+
+static struct driver clk_rk3562_driver = {
+	.probe		= clk_rk3562_probe,
+	.name	= "clk-rk3562",
+	.of_match_table = clk_rk3562_match_table,
+};
+
+core_platform_driver(clk_rk3562_driver);
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 2b992b6061..987c3bc518 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -436,7 +436,7 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				list->mux_shift, list->mux_width,
 				list->mux_flags, &ctx->lock);
 			break;
-		case branch_muxgrf:
+		case branch_grf_mux:
 			clk = rockchip_clk_register_muxgrf(list->name,
 				list->parent_names, list->num_parents,
 				flags, ctx->grfmap[list->grf_type],
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 988a9a82a3..a56a42aaf5 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -21,6 +21,8 @@
 #include <linux/clk.h>
 #include <restart.h>
 
+struct clk;
+
 #define HIWORD_UPDATE(val, mask, shift) \
 		((val) << (shift) | (mask) << ((shift) + 16))
 
@@ -78,6 +80,92 @@
 #define RV1108_EMMC_CON0		0x1e8
 #define RV1108_EMMC_CON1		0x1ec
 
+#define RV1126_PMU_MODE			0x0
+#define RV1126_PMU_PLL_CON(x)		((x) * 0x4 + 0x10)
+#define RV1126_PMU_CLKSEL_CON(x)	((x) * 0x4 + 0x100)
+#define RV1126_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x180)
+#define RV1126_PMU_SOFTRST_CON(x)	((x) * 0x4 + 0x200)
+#define RV1126_PLL_CON(x)		((x) * 0x4)
+#define RV1126_MODE_CON			0x90
+#define RV1126_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RV1126_CLKGATE_CON(x)		((x) * 0x4 + 0x280)
+#define RV1126_SOFTRST_CON(x)		((x) * 0x4 + 0x300)
+#define RV1126_GLB_SRST_FST		0x408
+#define RV1126_GLB_SRST_SND		0x40c
+#define RV1126_SDMMC_CON0		0x440
+#define RV1126_SDMMC_CON1		0x444
+#define RV1126_SDIO_CON0		0x448
+#define RV1126_SDIO_CON1		0x44c
+#define RV1126_EMMC_CON0		0x450
+#define RV1126_EMMC_CON1		0x454
+
+#define RV1126B_TOPCRU_BASE		0x0
+#define RV1126B_BUSCRU_BASE		0x10000
+#define RV1126B_PERICRU_BASE		0x20000
+#define RV1126B_CORECRU_BASE		0x30000
+#define RV1126B_PMUCRU_BASE		0x40000
+#define RV1126B_PMU1CRU_BASE		0x50000
+#define RV1126B_DDRCRU_BASE		0x60000
+#define RV1126B_SUBDDRCRU_BASE		0x68000
+#define RV1126B_VICRU_BASE		0x70000
+#define RV1126B_VEPUCRU_BASE		0x80000
+#define RV1126B_NPUCRU_BASE		0x90000
+#define RV1126B_VDOCRU_BASE		0xA0000
+#define RV1126B_VCPCRU_BASE		0xB0000
+
+#define RV1126B_PLL_CON(x)		((x) * 0x4 + RV1126B_TOPCRU_BASE)
+#define RV1126B_MODE_CON		(0x280 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLKSEL_CON(x)		((x) * 0x4 + 0x300 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLKGATE_CON(x)		((x) * 0x4 + 0x800 + RV1126B_TOPCRU_BASE)
+#define RV1126B_SOFTRST_CON(x)		((x) * 0x4 + 0xa00 + RV1126B_TOPCRU_BASE)
+#define RV1126B_GLB_SRST_FST		(0xc08 + RV1126B_TOPCRU_BASE)
+#define RV1126B_GLB_SRST_SND		(0xc0c + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_CM_FRAC0_DIV_H	(0xcc0 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_CM_FRAC1_DIV_H	(0xcc4 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_CM_FRAC2_DIV_H	(0xcc8 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_UART_FRAC0_DIV_H	(0xccc + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_UART_FRAC1_DIV_H	(0xcd0 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_AUDIO_FRAC0_DIV_H	(0xcd4 + RV1126B_TOPCRU_BASE)
+#define RV1126B_CLK_AUDIO_FRAC1_DIV_H	(0xcd8 + RV1126B_TOPCRU_BASE)
+#define RV1126B_BUSCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_BUSCRU_BASE)
+#define RV1126B_BUSCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_BUSCRU_BASE)
+#define RV1126B_BUSSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_BUSCRU_BASE)
+#define RV1126B_PERIPLL_CON(x)		((x) * 0x4 + RV1126B_PERICRU_BASE)
+#define RV1126B_PERICLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_PERICRU_BASE)
+#define RV1126B_PERICLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_PERICRU_BASE)
+#define RV1126B_PERISOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_PERICRU_BASE)
+#define RV1126B_CORECLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_CORECRU_BASE)
+#define RV1126B_CORECLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_CORECRU_BASE)
+#define RV1126B_CORESOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_CORECRU_BASE)
+#define RV1126B_PMUCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_PMUCRU_BASE)
+#define RV1126B_PMUCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_PMUCRU_BASE)
+#define RV1126B_PMUSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_PMUCRU_BASE)
+#define RV1126B_PMU1CLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_PMU1CRU_BASE)
+#define RV1126B_PMU1CLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_PMU1CRU_BASE)
+#define RV1126B_PMU1SOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_PMU1CRU_BASE)
+#define RV1126B_DDRCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_DDRCRU_BASE)
+#define RV1126B_DDRCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_DDRCRU_BASE)
+#define RV1126B_DDRSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_DDRCRU_BASE)
+#define RV1126B_SUBDDRPLL_CON(x)	((x) * 0x4 + RV1126B_SUBDDRCRU_BASE)
+#define RV1126B_SUBDDRCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_SUBDDRCRU_BASE)
+#define RV1126B_SUBDDRCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_SUBDDRCRU_BASE)
+#define RV1126B_SUBDDRSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_SUBDDRCRU_BASE)
+#define RV1126B_VICLKSEL_CON(x)		((x) * 0x4 + 0x300 + RV1126B_VICRU_BASE)
+#define RV1126B_VICLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_VICRU_BASE)
+#define RV1126B_VISOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_VICRU_BASE)
+#define RV1126B_VEPUCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_VEPUCRU_BASE)
+#define RV1126B_VEPUCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_VEPUCRU_BASE)
+#define RV1126B_VEPUSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_VEPUCRU_BASE)
+#define RV1126B_NPUCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_NPUCRU_BASE)
+#define RV1126B_NPUCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_NPUCRU_BASE)
+#define RV1126B_NPUSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_NPUCRU_BASE)
+#define RV1126B_VDOCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_VDOCRU_BASE)
+#define RV1126B_VDOCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_VDOCRU_BASE)
+#define RV1126B_VDOSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_VDOCRU_BASE)
+#define RV1126B_VCPCLKSEL_CON(x)	((x) * 0x4 + 0x300 + RV1126B_VCPCRU_BASE)
+#define RV1126B_VCPCLKGATE_CON(x)	((x) * 0x4 + 0x800 + RV1126B_VCPCRU_BASE)
+#define RV1126B_VCPSOFTRST_CON(x)	((x) * 0x4 + 0xa00 + RV1126B_VCPCRU_BASE)
+
 #define RK2928_PLL_CON(x)		((x) * 0x4)
 #define RK2928_MODE_CON		0x40
 #define RK2928_CLKSEL_CON(x)	((x) * 0x4 + 0x44)
@@ -187,6 +275,80 @@
 #define RK3399_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x100)
 #define RK3399_PMU_SOFTRST_CON(x)	((x) * 0x4 + 0x110)
 
+#define RK3506_PMU_CRU_BASE		0x10000
+#define RK3506_PLL_CON(x)		((x) * 0x4 + RK3506_PMU_CRU_BASE)
+#define RK3506_CLKSEL_CON(x)		((x) * 0x4 + 0x300)
+#define RK3506_CLKGATE_CON(x)		((x) * 0x4 + 0x800)
+#define RK3506_SOFTRST_CON(x)		((x) * 0x4 + 0xa00)
+#define RK3506_PMU_CLKSEL_CON(x)	((x) * 0x4 + 0x300 + RK3506_PMU_CRU_BASE)
+#define RK3506_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x800 + RK3506_PMU_CRU_BASE)
+#define RK3506_MODE_CON			0x280
+#define RK3506_GLB_CNT_TH		0xc00
+#define RK3506_GLB_SRST_FST		0xc08
+#define RK3506_GLB_SRST_SND		0xc0c
+
+#define RK3528_PMU_CRU_BASE		0x10000
+#define RK3528_PCIE_CRU_BASE		0x20000
+#define RK3528_DDRPHY_CRU_BASE		0x28000
+#define RK3528_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3528_PCIE_PLL_CON(x)		((x) * 0x4 + RK3528_PCIE_CRU_BASE)
+#define RK3528_DDRPHY_PLL_CON(x)	((x) * 0x4 + RK3528_DDRPHY_CRU_BASE)
+#define RK3528_MODE_CON			0x280
+#define RK3528_CLKSEL_CON(x)		((x) * 0x4 + 0x300)
+#define RK3528_CLKGATE_CON(x)		((x) * 0x4 + 0x800)
+#define RK3528_SOFTRST_CON(x)		((x) * 0x4 + 0xa00)
+#define RK3528_SDMMC_CON(x)		((x) * 0x4 + 0x24)
+#define RK3528_SDIO0_CON(x)		((x) * 0x4 + 0x4)
+#define RK3528_SDIO1_CON(x)		((x) * 0x4 + 0xc)
+#define RK3528_PMU_CLKSEL_CON(x)	((x) * 0x4 + 0x300 + RK3528_PMU_CRU_BASE)
+#define RK3528_PMU_CLKGATE_CON(x)	((x) * 0x4 + 0x800 + RK3528_PMU_CRU_BASE)
+#define RK3528_PCIE_CLKSEL_CON(x)	((x) * 0x4 + 0x300 + RK3528_PCIE_CRU_BASE)
+#define RK3528_PCIE_CLKGATE_CON(x)	((x) * 0x4 + 0x800 + RK3528_PCIE_CRU_BASE)
+#define RK3528_DDRPHY_CLKGATE_CON(x)	((x) * 0x4 + 0x800 + RK3528_DDRPHY_CRU_BASE)
+#define RK3528_DDRPHY_MODE_CON		(0x280 + RK3528_DDRPHY_CRU_BASE)
+#define RK3528_GLB_CNT_TH		0xc00
+#define RK3528_GLB_SRST_FST		0xc08
+#define RK3528_GLB_SRST_SND		0xc0c
+
+#define RK3562_PMU0_CRU_BASE		0x10000
+#define RK3562_PMU1_CRU_BASE		0x18000
+#define RK3562_DDR_CRU_BASE		0x20000
+#define RK3562_SUBDDR_CRU_BASE		0x28000
+#define RK3562_PERI_CRU_BASE		0x30000
+
+#define RK3562_PLL_CON(x)		RK2928_PLL_CON(x)
+#define RK3562_PMU1_PLL_CON(x)		((x) * 0x4 + RK3562_PMU1_CRU_BASE + 0x40)
+#define RK3562_SUBDDR_PLL_CON(x)	((x) * 0x4 + RK3562_SUBDDR_CRU_BASE + 0x20)
+#define RK3562_MODE_CON			0x600
+#define RK3562_PMU1_MODE_CON		(RK3562_PMU1_CRU_BASE + 0x380)
+#define RK3562_SUBDDR_MODE_CON		(RK3562_SUBDDR_CRU_BASE + 0x380)
+#define RK3562_CLKSEL_CON(x)		((x) * 0x4 + 0x100)
+#define RK3562_CLKGATE_CON(x)		((x) * 0x4 + 0x300)
+#define RK3562_SOFTRST_CON(x)		((x) * 0x4 + 0x400)
+#define RK3562_DDR_CLKSEL_CON(x)	((x) * 0x4 + RK3562_DDR_CRU_BASE + 0x100)
+#define RK3562_DDR_CLKGATE_CON(x)	((x) * 0x4 + RK3562_DDR_CRU_BASE + 0x180)
+#define RK3562_DDR_SOFTRST_CON(x)	((x) * 0x4 + RK3562_DDR_CRU_BASE + 0x200)
+#define RK3562_SUBDDR_CLKSEL_CON(x)	((x) * 0x4 + RK3562_SUBDDR_CRU_BASE + 0x100)
+#define RK3562_SUBDDR_CLKGATE_CON(x)	((x) * 0x4 + RK3562_SUBDDR_CRU_BASE + 0x180)
+#define RK3562_SUBDDR_SOFTRST_CON(x)	((x) * 0x4 + RK3562_SUBDDR_CRU_BASE + 0x200)
+#define RK3562_PERI_CLKSEL_CON(x)	((x) * 0x4 + RK3562_PERI_CRU_BASE + 0x100)
+#define RK3562_PERI_CLKGATE_CON(x)	((x) * 0x4 + RK3562_PERI_CRU_BASE + 0x300)
+#define RK3562_PERI_SOFTRST_CON(x)	((x) * 0x4 + RK3562_PERI_CRU_BASE + 0x400)
+#define RK3562_PMU0_CLKSEL_CON(x)	((x) * 0x4 + RK3562_PMU0_CRU_BASE + 0x100)
+#define RK3562_PMU0_CLKGATE_CON(x)	((x) * 0x4 + RK3562_PMU0_CRU_BASE + 0x180)
+#define RK3562_PMU0_SOFTRST_CON(x)	((x) * 0x4 + RK3562_PMU0_CRU_BASE + 0x200)
+#define RK3562_PMU1_CLKSEL_CON(x)	((x) * 0x4 + RK3562_PMU1_CRU_BASE + 0x100)
+#define RK3562_PMU1_CLKGATE_CON(x)	((x) * 0x4 + RK3562_PMU1_CRU_BASE + 0x180)
+#define RK3562_PMU1_SOFTRST_CON(x)	((x) * 0x4 + RK3562_PMU1_CRU_BASE + 0x200)
+#define RK3562_GLB_SRST_FST		0x614
+#define RK3562_GLB_SRST_SND		0x618
+#define RK3562_GLB_RST_CON		0x61c
+#define RK3562_GLB_RST_ST		0x620
+#define RK3562_SDMMC0_CON0		0x624
+#define RK3562_SDMMC0_CON1		0x628
+#define RK3562_SDMMC1_CON0		0x62c
+#define RK3562_SDMMC1_CON1		0x630
+
 #define RK3568_PLL_CON(x)		RK2928_PLL_CON(x)
 #define RK3568_MODE_CON0		0xc0
 #define RK3568_MISC_CON0		0xc4
@@ -371,12 +533,28 @@ enum rockchip_grf_type {
 	grf_type_num
 };
 
+/* ceil(sqrt(enums in rockchip_grf_type - 1)) */
+#define GRF_HASH_ORDER 2
+
+/**
+ * struct rockchip_aux_grf - entry for the aux_grf_table hashtable
+ * @grf: pointer to the grf this entry references
+ * @type: what type of GRF this is
+ * @node: hlist node
+ */
+struct rockchip_aux_grf {
+	struct regmap *grf;
+	enum rockchip_grf_type type;
+	struct hlist_node node;
+};
+
 /**
  * struct rockchip_clk_provider - information about clock provider
  * @reg_base: virtual address for the register base.
  * @clk_data: holds clock related data like clk* and number of clocks.
  * @cru_node: device-node of the clock-provider
  * @grf: regmap of the general-register-files syscon
+ * @aux_grf_table: hashtable of auxiliary GRF regmaps, indexed by grf_type
  * @lock: maintains exclusion between callbacks for a given clock-provider.
  */
 struct rockchip_clk_provider {
@@ -436,7 +614,8 @@ struct rockchip_pll_rate_table {
  *
  * Flags:
  * ROCKCHIP_PLL_SYNC_RATE - check rate parameters to match against the
- *	rate_table parameters and ajust them if necessary.
+ *	rate_table parameters and adjust them if necessary.
+ * ROCKCHIP_PLL_FIXED_MODE - the pll operates in normal mode only
  */
 struct rockchip_pll_clock {
 	unsigned int		id;
@@ -454,6 +633,7 @@ struct rockchip_pll_clock {
 };
 
 #define ROCKCHIP_PLL_SYNC_RATE		BIT(0)
+#define ROCKCHIP_PLL_FIXED_MODE		BIT(1)
 
 #define PLL(_type, _id, _name, _pnames, _flags, _con, _mode, _mshift,	\
 		_lshift, _pflags, _rtable)				\
@@ -559,7 +739,7 @@ struct clk *rockchip_clk_register_muxgrf(const char *name,
 enum rockchip_clk_branch_type {
 	branch_composite,
 	branch_mux,
-	branch_muxgrf,
+	branch_grf_mux,
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
@@ -816,10 +996,26 @@ struct rockchip_clk_branch {
 		.gate_offset	= -1,				\
 	}
 
+#define MUXTBL(_id, cname, pnames, f, o, s, w, mf, mt)		\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_mux,			\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.mux_shift	= s,				\
+		.mux_width	= w,				\
+		.mux_flags	= mf,				\
+		.gate_offset	= -1,				\
+		.mux_table	= mt,				\
+	}
+
 #define MUXGRF(_id, cname, pnames, f, o, s, w, mf, gt)		\
 	{							\
 		.id		= _id,				\
-		.branch_type	= branch_muxgrf,		\
+		.branch_type	= branch_grf_mux,		\
 		.name		= cname,			\
 		.parent_names	= pnames,			\
 		.num_parents	= ARRAY_SIZE(pnames),		\
@@ -900,6 +1096,18 @@ struct rockchip_clk_branch {
 		.div_shift	= shift,			\
 	}
 
+#define MMC_GRF(_id, cname, pname, offset, shift, grftype)	\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_grf_mmc,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.muxdiv_offset	= offset,			\
+		.div_shift	= shift,			\
+		.grf_type	= grftype,			\
+	}
+
 #define INVERTER(_id, cname, pname, io, is, if)			\
 	{							\
 		.id		= _id,				\
@@ -960,6 +1168,58 @@ struct rockchip_clk_branch {
 		.gate_flags	= gf,				\
 	}
 
+#define COMPOSITE_NOGATE_HALFDIV(_id, cname, pnames, f, mo, ms, mw, mf,	\
+				 ds, dw, df)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_half_divider,		\
+		.name		= cname,			\
+		.parent_names	= pnames,			\
+		.num_parents	= ARRAY_SIZE(pnames),		\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.mux_shift	= ms,				\
+		.mux_width	= mw,				\
+		.mux_flags	= mf,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= -1,				\
+	}
+
+#define COMPOSITE_NOMUX_HALFDIV(_id, cname, pname, f, mo, ds, dw, df,	\
+			go, gs, gf)				\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_half_divider,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= mo,				\
+		.div_shift	= ds,				\
+		.div_width	= dw,				\
+		.div_flags	= df,				\
+		.gate_offset	= go,				\
+		.gate_shift	= gs,				\
+		.gate_flags	= gf,				\
+	}
+
+#define DIV_HALF(_id, cname, pname, f, o, s, w, df)			\
+	{							\
+		.id		= _id,				\
+		.branch_type	= branch_half_divider,		\
+		.name		= cname,			\
+		.parent_names	= (const char *[]){ pname },	\
+		.num_parents	= 1,				\
+		.flags		= f,				\
+		.muxdiv_offset	= o,				\
+		.div_shift	= s,				\
+		.div_width	= w,				\
+		.div_flags	= df,				\
+		.gate_offset	= -1,				\
+	}
+
 /* SGRF clocks are only accessible from secure mode, so not controllable */
 #define SGRF_GATE(_id, cname, pname)				\
 		FACTOR(_id, cname, pname, 0, 1, 1)
@@ -994,7 +1254,6 @@ void rockchip_clk_register_late_branches(struct device *dev,
 					 struct rockchip_clk_provider *ctx,
 					 struct rockchip_clk_branch *list,
 					 unsigned int nr_clk);
-
 void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *pll_list,
 				unsigned int nr_pll, int grf_lock_offset);
@@ -1031,6 +1290,7 @@ static inline void rockchip_register_softrst(struct device_node *np,
 	return rockchip_register_softrst_lut(np, NULL, num_regs, base, flags);
 }
 
+void rk3562_rst_init(struct device_node *np, void __iomem *reg_base);
 void rk3576_rst_init(struct device_node *np, void __iomem *reg_base);
 void rk3588_rst_init(struct device_node *np, void __iomem *reg_base);
 
diff --git a/drivers/clk/rockchip/rst-rk3562.c b/drivers/clk/rockchip/rst-rk3562.c
new file mode 100644
index 0000000000..e0b30194f7
--- /dev/null
+++ b/drivers/clk/rockchip/rst-rk3562.c
@@ -0,0 +1,430 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ * Copyright (c) 2024 Collabora Ltd.
+ * Author: Detlev Casanova <detlev.casanova@collabora.com>
+ * Based on Sebastien Reichel's implementation for RK3588
+ */
+
+#include <linux/module.h>
+#include <linux/array_size.h>
+#include <of.h>
+#include <dt-bindings/reset/rockchip,rk3562-cru.h>
+#include "clk.h"
+
+/* 0xff100000 + 0x0A00 */
+#define RK3562_CRU_RESET_OFFSET(id, reg, bit) [id] = (0 + reg * 16 + bit)
+/* 0xff110000 + 0x0A00 */
+#define RK3562_PMU0CRU_RESET_OFFSET(id, reg, bit) [id] = (0x10000*4 + reg * 16 + bit)
+/* 0xff118000 + 0x0A00 */
+#define RK3562_PMU1CRU_RESET_OFFSET(id, reg, bit) [id] = (0x18000*4 + reg * 16 + bit)
+/* 0xff120000 + 0x0A00 */
+#define RK3562_DDRCRU_RESET_OFFSET(id, reg, bit) [id] = (0x20000*4 + reg * 16 + bit)
+/* 0xff128000 + 0x0A00 */
+#define RK3562_SUBDDRCRU_RESET_OFFSET(id, reg, bit) [id] = (0x28000*4 + reg * 16 + bit)
+/* 0xff130000 + 0x0A00 */
+#define RK3562_PERICRU_RESET_OFFSET(id, reg, bit) [id] = (0x30000*4 + reg * 16 + bit)
+
+/* mapping table for reset ID to register offset */
+static const int rk3562_register_offset[] = {
+	/* SOFTRST_CON01 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_TOP_BIU, 1, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_A_TOP_VIO_BIU, 1, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_REF_PVTPLL_LOGIC, 1, 2),
+
+	/* SOFTRST_CON03 */
+	RK3562_CRU_RESET_OFFSET(SRST_NCOREPORESET0, 3, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_NCOREPORESET1, 3, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_NCOREPORESET2, 3, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_NCOREPORESET3, 3, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_NCORESET0, 3, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_NCORESET1, 3, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_NCORESET2, 3, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_NCORESET3, 3, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_NL2RESET, 3, 8),
+
+	/* SOFTRST_CON04 */
+	RK3562_CRU_RESET_OFFSET(SRST_DAP, 4, 9),
+	RK3562_CRU_RESET_OFFSET(SRST_P_DBG_DAPLITE, 4, 10),
+	RK3562_CRU_RESET_OFFSET(SRST_REF_PVTPLL_CORE, 4, 13),
+
+	/* SOFTRST_CON05 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_CORE_BIU, 5, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CORE_BIU, 5, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_H_CORE_BIU, 5, 2),
+
+	/* SOFTRST_CON06 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_NPU_BIU, 6, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_H_NPU_BIU, 6, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_A_RKNN, 6, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_H_RKNN, 6, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_REF_PVTPLL_NPU, 6, 6),
+
+	/* SOFTRST_CON08 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_GPU_BIU, 8, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_GPU, 8, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_REF_PVTPLL_GPU, 8, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_GPU_BRG_BIU, 8, 8),
+
+	/* SOFTRST_CON09 */
+	RK3562_CRU_RESET_OFFSET(SRST_RKVENC_CORE, 9, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_A_VEPU_BIU, 9, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_H_VEPU_BIU, 9, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_A_RKVENC, 9, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_H_RKVENC, 9, 6),
+
+	/* SOFTRST_CON10 */
+	RK3562_CRU_RESET_OFFSET(SRST_RKVDEC_HEVC_CA, 10, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_A_VDPU_BIU, 10, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_H_VDPU_BIU, 10, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_A_RKVDEC, 10, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_H_RKVDEC, 10, 8),
+
+	/* SOFTRST_CON11 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_VI_BIU, 11, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_H_VI_BIU, 11, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_P_VI_BIU, 11, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_ISP, 11, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_A_VICAP, 11, 9),
+	RK3562_CRU_RESET_OFFSET(SRST_H_VICAP, 11, 10),
+	RK3562_CRU_RESET_OFFSET(SRST_D_VICAP, 11, 11),
+	RK3562_CRU_RESET_OFFSET(SRST_I0_VICAP, 11, 12),
+	RK3562_CRU_RESET_OFFSET(SRST_I1_VICAP, 11, 13),
+	RK3562_CRU_RESET_OFFSET(SRST_I2_VICAP, 11, 14),
+	RK3562_CRU_RESET_OFFSET(SRST_I3_VICAP, 11, 15),
+
+	/* SOFTRST_CON12 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_CSIHOST0, 12, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CSIHOST1, 12, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CSIHOST2, 12, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CSIHOST3, 12, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CSIPHY0, 12, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CSIPHY1, 12, 5),
+
+	/* SOFTRST_CON13 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_VO_BIU, 13, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_H_VO_BIU, 13, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_A_VOP, 13, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_H_VOP, 13, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_D_VOP, 13, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_D_VOP1, 13, 9),
+
+	/* SOFTRST_CON14 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_RGA_BIU, 14, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_H_RGA_BIU, 14, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_A_RGA, 14, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_H_RGA, 14, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_RGA_CORE, 14, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_A_JDEC, 14, 9),
+	RK3562_CRU_RESET_OFFSET(SRST_H_JDEC, 14, 10),
+
+	/* SOFTRST_CON15 */
+	RK3562_CRU_RESET_OFFSET(SRST_B_EBK_BIU, 15, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_P_EBK_BIU, 15, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_AHB2AXI_EBC, 15, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_H_EBC, 15, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_D_EBC, 15, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_H_EINK, 15, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_P_EINK, 15, 8),
+
+	/* SOFTRST_CON16 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_PHP_BIU, 16, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_A_PHP_BIU, 16, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_P_PCIE20, 16, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_PCIE20_POWERUP, 16, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_USB3OTG, 16, 10),
+
+	/* SOFTRST_CON17 */
+	RK3562_CRU_RESET_OFFSET(SRST_PIPEPHY, 17, 3),
+
+	/* SOFTRST_CON18 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_BUS_BIU, 18, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_H_BUS_BIU, 18, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_P_BUS_BIU, 18, 5),
+
+	/* SOFTRST_CON19 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_I2C1, 19, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_P_I2C2, 19, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_P_I2C3, 19, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_P_I2C4, 19, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_P_I2C5, 19, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_I2C1, 19, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_I2C2, 19, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_I2C3, 19, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_I2C4, 19, 9),
+	RK3562_CRU_RESET_OFFSET(SRST_I2C5, 19, 10),
+
+	/* SOFTRST_CON20 */
+	RK3562_CRU_RESET_OFFSET(SRST_BUS_GPIO3, 20, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_BUS_GPIO4, 20, 6),
+
+	/* SOFTRST_CON21 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_TIMER, 21, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_TIMER0, 21, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_TIMER1, 21, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_TIMER2, 21, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_TIMER3, 21, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_TIMER4, 21, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_TIMER5, 21, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_P_STIMER, 21, 7),
+	RK3562_CRU_RESET_OFFSET(SRST_STIMER0, 21, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_STIMER1, 21, 9),
+
+	/* SOFTRST_CON22 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_WDTNS, 22, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_WDTNS, 22, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_P_GRF, 22, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_P_SGRF, 22, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_P_MAILBOX, 22, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_P_INTC, 22, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_A_BUS_GIC400, 22, 6),
+	RK3562_CRU_RESET_OFFSET(SRST_A_BUS_GIC400_DEBUG, 22, 7),
+
+	/* SOFTRST_CON23 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_BUS_SPINLOCK, 23, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_A_DCF, 23, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_P_DCF, 23, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_F_BUS_CM0_CORE, 23, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_T_BUS_CM0_JTAG, 23, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_H_ICACHE, 23, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_H_DCACHE, 23, 9),
+
+	/* SOFTRST_CON24 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_TSADC, 24, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_TSADC, 24, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_TSADCPHY, 24, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_P_DFT2APB, 24, 4),
+
+	/* SOFTRST_CON25 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_GMAC, 25, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_P_APB2ASB_VCCIO156, 25, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_P_DSIPHY, 25, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_P_DSITX, 25, 8),
+	RK3562_CRU_RESET_OFFSET(SRST_P_CPU_EMA_DET, 25, 9),
+	RK3562_CRU_RESET_OFFSET(SRST_P_HASH, 25, 10),
+	RK3562_CRU_RESET_OFFSET(SRST_P_TOPCRU, 25, 11),
+
+	/* SOFTRST_CON26 */
+	RK3562_CRU_RESET_OFFSET(SRST_P_ASB2APB_VCCIO156, 26, 0),
+	RK3562_CRU_RESET_OFFSET(SRST_P_IOC_VCCIO156, 26, 1),
+	RK3562_CRU_RESET_OFFSET(SRST_P_GPIO3_VCCIO156, 26, 2),
+	RK3562_CRU_RESET_OFFSET(SRST_P_GPIO4_VCCIO156, 26, 3),
+	RK3562_CRU_RESET_OFFSET(SRST_P_SARADC_VCCIO156, 26, 4),
+	RK3562_CRU_RESET_OFFSET(SRST_SARADC_VCCIO156, 26, 5),
+	RK3562_CRU_RESET_OFFSET(SRST_SARADC_VCCIO156_PHY, 26, 6),
+
+	/* SOFTRST_CON27 */
+	RK3562_CRU_RESET_OFFSET(SRST_A_MAC100, 27, 1),
+
+	/* PMU0_SOFTRST_CON00 */
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_CRU, 0, 0),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_PMU, 0, 1),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_PMU0_PMU, 0, 2),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_HP_TIMER, 0, 3),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_PMU0_HP_TIMER, 0, 4),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_PMU0_32K_HP_TIMER, 0, 5),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_PVTM, 0, 6),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_PMU0_PVTM, 0, 7),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_IOC_PMUIO, 0, 8),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_GPIO0, 0, 9),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_PMU0_GPIO0, 0, 10),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_GRF, 0, 11),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_SGRF, 0, 12),
+
+	/* PMU0_SOFTRST_CON01 */
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_DDR_FAIL_SAFE, 1, 0),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_SCRKEYGEN, 1, 1),
+
+	/* PMU0_SOFTRST_CON02 */
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_P_PMU0_I2C0, 2, 8),
+	RK3562_PMU0CRU_RESET_OFFSET(SRST_PMU0_I2C0, 2, 9),
+
+	/* PMU1_SOFTRST_CON00 */
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_P_PMU1_CRU, 0, 0),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_H_PMU1_MEM, 0, 2),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_H_PMU1_BIU, 0, 3),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_P_PMU1_BIU, 0, 4),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_P_PMU1_UART0, 0, 7),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_S_PMU1_UART0, 0, 10),
+
+	/* PMU1_SOFTRST_CON01 */
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_P_PMU1_SPI0, 1, 0),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_PMU1_SPI0, 1, 1),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_P_PMU1_PWM0, 1, 3),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_PMU1_PWM0, 1, 4),
+
+	/* PMU1_SOFTRST_CON02 */
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_F_PMU1_CM0_CORE, 2, 0),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_T_PMU1_CM0_JTAG, 2, 2),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_P_PMU1_WDTNS, 2, 3),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_PMU1_WDTNS, 2, 4),
+	RK3562_PMU1CRU_RESET_OFFSET(SRST_PMU1_MAILBOX, 2, 8),
+
+	/* DDR_SOFTRST_CON00 */
+	RK3562_DDRCRU_RESET_OFFSET(SRST_MSCH_BRG_BIU, 0, 4),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_MSCH_BIU, 0, 5),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_HWLP, 0, 6),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_PHY, 0, 8),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_DFICTL, 0, 9),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_DMA2DDR, 0, 10),
+
+	/* DDR_SOFTRST_CON01 */
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_MON, 1, 0),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_TM_DDR_MON, 1, 1),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_GRF, 1, 2),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_DDR_CRU, 1, 3),
+	RK3562_DDRCRU_RESET_OFFSET(SRST_P_SUBDDR_CRU, 1, 4),
+
+	/* SUBDDR_SOFTRST_CON00 */
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_MSCH_BIU, 0, 1),
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_DDR_PHY, 0, 4),
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_DDR_DFICTL, 0, 5),
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_DDR_SCRAMBLE, 0, 6),
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_DDR_MON, 0, 7),
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_A_DDR_SPLIT, 0, 8),
+	RK3562_SUBDDRCRU_RESET_OFFSET(SRST_DDR_DMA2DDR, 0, 9),
+
+	/* PERI_SOFTRST_CON01 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_A_PERI_BIU, 1, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_PERI_BIU, 1, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PERI_BIU, 1, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PERICRU, 1, 6),
+
+	/* PERI_SOFTRST_CON02 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SAI0_8CH, 2, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_M_SAI0_8CH, 2, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SAI1_8CH, 2, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_M_SAI1_8CH, 2, 8),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SAI2_2CH, 2, 10),
+	RK3562_PERICRU_RESET_OFFSET(SRST_M_SAI2_2CH, 2, 13),
+
+	/* PERI_SOFTRST_CON03 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_DSM, 3, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_DSM, 3, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_PDM, 3, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_M_PDM, 3, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SPDIF, 3, 8),
+	RK3562_PERICRU_RESET_OFFSET(SRST_M_SPDIF, 3, 11),
+
+	/* PERI_SOFTRST_CON04 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SDMMC0, 4, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SDMMC1, 4, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_EMMC, 4, 8),
+	RK3562_PERICRU_RESET_OFFSET(SRST_A_EMMC, 4, 9),
+	RK3562_PERICRU_RESET_OFFSET(SRST_C_EMMC, 4, 10),
+	RK3562_PERICRU_RESET_OFFSET(SRST_B_EMMC, 4, 11),
+	RK3562_PERICRU_RESET_OFFSET(SRST_T_EMMC, 4, 12),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_SFC, 4, 13),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_SFC, 4, 14),
+
+	/* PERI_SOFTRST_CON05 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_USB2HOST, 5, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_USB2HOST_ARB, 5, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_USB2HOST_UTMI, 5, 2),
+
+	/* PERI_SOFTRST_CON06 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_SPI1, 6, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_SPI1, 6, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_SPI2, 6, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_SPI2, 6, 4),
+
+	/* PERI_SOFTRST_CON07 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART1, 7, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART2, 7, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART3, 7, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART4, 7, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART5, 7, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART6, 7, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART7, 7, 6),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART8, 7, 7),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_UART9, 7, 8),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART1, 7, 11),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART2, 7, 14),
+
+	/* PERI_SOFTRST_CON08 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART3, 8, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART4, 8, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART5, 8, 7),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART6, 8, 10),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART7, 8, 13),
+
+	/* PERI_SOFTRST_CON09 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART8, 9, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_S_UART9, 9, 3),
+
+	/* PERI_SOFTRST_CON10 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PWM1_PERI, 10, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_PWM1_PERI, 10, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PWM2_PERI, 10, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_PWM2_PERI, 10, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PWM3_PERI, 10, 6),
+	RK3562_PERICRU_RESET_OFFSET(SRST_PWM3_PERI, 10, 7),
+
+	/* PERI_SOFTRST_CON11 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_CAN0, 11, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_CAN0, 11, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_CAN1, 11, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_CAN1, 11, 3),
+
+	/* PERI_SOFTRST_CON12 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_A_CRYPTO, 12, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_CRYPTO, 12, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_CRYPTO, 12, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_CORE_CRYPTO, 12, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_PKA_CRYPTO, 12, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_KLAD, 12, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_KEY_READER, 12, 6),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_RK_RNG_NS, 12, 7),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_RK_RNG_S, 12, 8),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_TRNG_NS, 12, 9),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_TRNG_S, 12, 10),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_CRYPTO_S, 12, 11),
+
+	/* PERI_SOFTRST_CON13 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PERI_WDT, 13, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_T_PERI_WDT, 13, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_A_SYSMEM, 13, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_H_BOOTROM, 13, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PERI_GRF, 13, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_A_DMAC, 13, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_A_RKDMAC, 13, 6),
+
+	/* PERI_SOFTRST_CON14 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_OTPC_NS, 14, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_SBPI_OTPC_NS, 14, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_USER_OTPC_NS, 14, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_OTPC_S, 14, 3),
+	RK3562_PERICRU_RESET_OFFSET(SRST_SBPI_OTPC_S, 14, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_USER_OTPC_S, 14, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_OTPC_ARB, 14, 6),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_OTPPHY, 14, 7),
+	RK3562_PERICRU_RESET_OFFSET(SRST_OTP_NPOR, 14, 8),
+
+	/* PERI_SOFTRST_CON15 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_USB2PHY, 15, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_USB2PHY_POR, 15, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_USB2PHY_OTG, 15, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_USB2PHY_HOST, 15, 6),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PIPEPHY, 15, 7),
+
+	/* PERI_SOFTRST_CON16 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_SARADC, 16, 4),
+	RK3562_PERICRU_RESET_OFFSET(SRST_SARADC, 16, 5),
+	RK3562_PERICRU_RESET_OFFSET(SRST_SARADC_PHY, 16, 6),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_IOC_VCCIO234, 16, 12),
+
+	/* PERI_SOFTRST_CON17 */
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PERI_GPIO1, 17, 0),
+	RK3562_PERICRU_RESET_OFFSET(SRST_P_PERI_GPIO2, 17, 1),
+	RK3562_PERICRU_RESET_OFFSET(SRST_PERI_GPIO1, 17, 2),
+	RK3562_PERICRU_RESET_OFFSET(SRST_PERI_GPIO2, 17, 3),
+};
+
+void rk3562_rst_init(struct device_node *np, void __iomem *reg_base)
+{
+	rockchip_register_softrst_lut(np,
+				      rk3562_register_offset,
+				      ARRAY_SIZE(rk3562_register_offset),
+				      reg_base + RK3562_SOFTRST_CON(0),
+				      ROCKCHIP_SOFTRST_HIWORD_MASK);
+}

-- 
2.43.0



