Delivery-date: Thu, 10 Apr 2025 14:08:43 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qi3-00Aour-2l
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 14:08:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qi2-0007iw-S1
	for lore@pengutronix.de; Thu, 10 Apr 2025 14:08:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cUXiZbACCxJlS/j4SVswmQE6up+djpwKap1eAl8tDPs=; b=ciIniDcYV7yuaC+viadqYd9GOm
	Mglh1SzWftKMOh4dtjV6eOWOjStkPOnjQVaEtQ+dDbvEk61RM8ZQIFJMUhF2DL8bYJ2S4HrpzN4KT
	cqdkAQHKnOrZRpaEMzJGOAl4CI4RPP2ma8zeot37x6BYR5NiubvgC3fC4FmYoG5Lw63PZ0nA/jNrJ
	G5bS+wC0ZenH5h5tw40uKNancjI83rRPFlSfjUDfzMLNHr5vprEK+1FuR0Q67MWtfhwB3L0de/kFF
	pwJXTDMDHhVEaqdtfCvFlKrMMurwa0J6EKAMlK0cvRd3dA57SqZIUH28kOzKazlBqwKXFYpFGvNpA
	wjlK918A==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qhQ-0000000ARPy-0gPo;
	Thu, 10 Apr 2025 12:08:04 +0000
Received: from mail-yw1-x1136.google.com ([2607:f8b0:4864:20::1136])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qhO-0000000ARPP-0uwd
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 12:08:03 +0000
Received: by mail-yw1-x1136.google.com with SMTP id 00721157ae682-6f666c94285so7825757b3.3
        for <barebox@lists.infradead.org>; Thu, 10 Apr 2025 05:08:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744286880; x=1744891680; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cUXiZbACCxJlS/j4SVswmQE6up+djpwKap1eAl8tDPs=;
        b=K3CkOwVdPaQfo4oW896vKW64U2vOMUCazclcS/cNuJaKyEyPWLQju8i8Cp5PElCidl
         3uIBvRherNsoAU9f7yU3WPbrjQ1rmlZAh2AsgMlj3xCs769rccrM8L4I1YO5H2hSbN9B
         umLndoU6rzcn2r+XTvjiDbewvLZbbz4zzm7ykGtvPnBH6D+nCt8OQi89QPUNZ9cpYGu4
         v4uhocEuZJIkuMed0aR/BK3fiI4env2ljnZIpyNPLH36if5eAM3iBE8YR9xAFYzNnn4H
         q7romIJ4zhJ8l0rX2ZmDz/czJUps+2K+Cc9y7WrnyF2PbA7w8zguVPo/NTtabGwSxJhr
         JVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744286880; x=1744891680;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cUXiZbACCxJlS/j4SVswmQE6up+djpwKap1eAl8tDPs=;
        b=tcdy0dzUkLbcOr1mdV0LDcIedXa/pdNg2HT+OP1yEfYYqk/gTsYZxWGD9eddq//D5d
         NR6RGWhO4F8xl43iDtuultvS+6llaMX6aGzbiD6vWskrAoXaves75t+EsTFojOiwBuVA
         DLwKvl4iwoPdo8FW1q/it6xzIrjcvJvO/AAw2UWd+imoqlWJnRIeK7EZh4SItrj0ooEh
         RaOvTQcr7/n6xaw4IZIHOASyQDQpvrExqxDTaj7U7joG7I6c0qmXeHhZHSDlgrhxbr70
         6fAyOGsO8nO1o21TG3WsCXXPeJcPtyHgK1ZfDLGPQil7OwK42JnKjieftHepYoeMcWNy
         R4Iw==
X-Gm-Message-State: AOJu0Yw8VA6UyWw5PxAeHbm9MVPGRrgYtV9bjUBOHTcVEER1qngghhxt
	wGqwDJ33dRXFzu6fa80PmcOsERgcm8AT9eQ1ZYOs/XUjQDz6q+gchiHwbg==
X-Gm-Gg: ASbGncvMe8J8hSmBDuOVUPTW80gZRPEvpGBxu8YGGtBm/bo/I/7DVT7W4jQux/lCK1c
	QgCHwMPJ7iNCb8OK4+6unNnc22lVcmgT4Ho5pNTi7FbV4v4OyEi7nSoJo5zAxX3JxwhRNNvzDdz
	2I04kdMYCOlogLwnnyclaJo87kLtj4S/pXUJ9oQ5MQpV7klcFBpyzLkjeMXiSVdKAi3QvzKgjx1
	uYW7XvcVJGmyf1ONV0mbU47qlLJnY9BI0EaTdrkBvKXzKqPzTOMwfAmbl8JKx2+F0kEUyBizh0c
	leoeu99VmJQeyxyORqFFK1mrt2yunTVHIR+kOo3FRkOiHC//PoIwSMwjpTG5ach4JQ==
X-Google-Smtp-Source: AGHT+IFlpJ8liE90APVPFix0A2DrK37ijMqf+khT5OyDor20T6Jp3MaV7gShE92cPyf9rfgOe2A20g==
X-Received: by 2002:a05:6902:2088:b0:e64:192e:725d with SMTP id 3f1490d57ef6-e703e127a1cmr4114874276.15.1744286880406;
        Thu, 10 Apr 2025 05:08:00 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7032404958sm674314276.11.2025.04.10.05.07.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 05:07:59 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 10 Apr 2025 15:07:44 +0300
Message-Id: <20250410120745.3696310-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
References: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_050802_260508_D66F758E 
X-CRM114-Status: GOOD (  25.37  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/3] clk: rockchip: Add linked gate clock support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Recent Rockchip SoCs have a new hardware block called Native Interface
Unit (NIU), which gates clocks to devices behind them. These clock
gates will only have a running output clock when all of the following
conditions are met:

1. the parent clock is enabled
2. the enable bit is set correctly
3. the linked clock is enabled

To handle them this code registers them as a normal gate type clock,
which takes care of condition 1 + 2. Thus the complete handling
of these clocks has been moved into its own driver.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/Makefile    |  1 +
 drivers/clk/rockchip/clk.c       | 67 ++++++++++++++++++++++++++------
 drivers/clk/rockchip/clk.h       | 25 +++++++++++-
 drivers/clk/rockchip/gate-link.c | 44 +++++++++++++++++++++
 4 files changed, 123 insertions(+), 14 deletions(-)
 create mode 100644 drivers/clk/rockchip/gate-link.c

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index 8d752d11b9..b1ab402003 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -12,6 +12,7 @@ clk-rockchip-y += clk-inverter.o
 clk-rockchip-y += clk-mmc-phase.o
 clk-rockchip-y += clk-muxgrf.o
 clk-rockchip-y += clk-ddr.o
+clk-rockchip-y += gate-link.o
 
 clk-rockchip-$(CONFIG_RESET_CONTROLLER) += softrst.o
 
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index 127b79e2c8..b162ca9798 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -240,7 +240,7 @@ static struct clk *rockchip_clk_register_frac_branch(
 			return mux_clk;
 		}
 
-		rockchip_clk_add_lookup(ctx, mux_clk, child->id);
+		rockchip_clk_set_lookup(ctx, mux_clk, child->id);
 
 		/* notifier on the fraction divider to catch rate changes */
 		if (frac->mux_frac_idx >= 0) {
@@ -350,14 +350,6 @@ void rockchip_clk_of_add_provider(struct device_node *np,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_of_add_provider);
 
-void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
-			     struct clk *clk, unsigned int id)
-{
-	if (ctx->clk_data.clks && id)
-		ctx->clk_data.clks[id] = clk;
-}
-EXPORT_SYMBOL_GPL(rockchip_clk_add_lookup);
-
 void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *list,
 				unsigned int nr_pll, int grf_lock_offset)
@@ -378,7 +370,7 @@ void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 			continue;
 		}
 
-		rockchip_clk_add_lookup(ctx, clk, list->id);
+		rockchip_clk_set_lookup(ctx, clk, list->id);
 	}
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_plls);
@@ -400,6 +392,29 @@ unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_find_max_clk_id);
 
+static struct device *rockchip_clk_register_gate_link(
+		struct device *parent_dev,
+		struct rockchip_clk_provider *ctx,
+		struct rockchip_clk_branch *clkbr)
+{
+	struct rockchip_gate_link_platdata gate_link_pdata = {
+		.ctx = ctx,
+		.clkbr = clkbr,
+	};
+	struct device *dev;
+	int ret;
+
+	dev = device_alloc("rockchip-gate-link-clk", clkbr->id);
+	dev->parent = parent_dev;
+	dev->platform_data = &gate_link_pdata;
+
+	ret = platform_device_register(dev);
+	if (ret)
+		return ERR_PTR(ret);
+
+	return dev;
+}
+
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk)
@@ -505,6 +520,9 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				list->div_width, list->div_flags,
 				ctx->reg_base, &ctx->lock);
 			break;
+		case branch_linked_gate:
+			/* must be registered late, fall-through for error message */
+			break;
 		}
 
 		/* none of the cases above matched */
@@ -520,11 +538,36 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 			continue;
 		}
 
-		rockchip_clk_add_lookup(ctx, clk, list->id);
+		rockchip_clk_set_lookup(ctx, clk, list->id);
 	}
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_branches);
 
+void rockchip_clk_register_late_branches(struct device *dev,
+					 struct rockchip_clk_provider *ctx,
+					 struct rockchip_clk_branch *list,
+					 unsigned int nr_clk)
+{
+	unsigned int idx;
+
+	for (idx = 0; idx < nr_clk; idx++, list++) {
+		struct device *pdev = NULL;
+
+		switch (list->branch_type) {
+		case branch_linked_gate:
+			pdev = rockchip_clk_register_gate_link(dev, ctx, list);
+			break;
+		default:
+			dev_err(dev, "unknown clock type %d\n", list->branch_type);
+			break;
+		}
+
+		if (!pdev)
+			dev_err(dev, "failed to register device for clock %s\n", list->name);
+	}
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_register_late_branches);
+
 void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 				  unsigned int lookup_id,
 				  const char *name, const char *const *parent_names,
@@ -544,7 +587,7 @@ void rockchip_clk_register_armclk(struct rockchip_clk_provider *ctx,
 		return;
 	}
 
-	rockchip_clk_add_lookup(ctx, clk, lookup_id);
+	rockchip_clk_set_lookup(ctx, clk, lookup_id);
 }
 EXPORT_SYMBOL_GPL(rockchip_clk_register_armclk);
 
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index 6665f8ac90..d201e753ef 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -500,6 +500,7 @@ enum rockchip_clk_branch_type {
 	branch_divider,
 	branch_fraction_divider,
 	branch_gate,
+	branch_linked_gate,
 	branch_mmc,
 	branch_inverter,
 	branch_factor,
@@ -883,17 +884,37 @@ struct rockchip_clk_branch {
 #define SGRF_GATE(_id, cname, pname)				\
 		FACTOR(_id, cname, pname, 0, 1, 1)
 
+static inline struct clk *rockchip_clk_get_lookup(struct rockchip_clk_provider *ctx,
+						  unsigned int id)
+{
+	return ctx->clk_data.clks[id];
+}
+
+static inline void rockchip_clk_set_lookup(struct rockchip_clk_provider *ctx,
+					   struct clk *clk, unsigned int id)
+{
+	ctx->clk_data.clks[id] = clk;
+}
+
+struct rockchip_gate_link_platdata {
+	struct rockchip_clk_provider *ctx;
+	struct rockchip_clk_branch *clkbr;
+};
+
 struct rockchip_clk_provider *rockchip_clk_init(struct device_node *np,
 			void __iomem *base, unsigned long nr_clks);
 void rockchip_clk_of_add_provider(struct device_node *np,
 				struct rockchip_clk_provider *ctx);
-void rockchip_clk_add_lookup(struct rockchip_clk_provider *ctx,
-			     struct clk *clk, unsigned int id);
 unsigned long rockchip_clk_find_max_clk_id(struct rockchip_clk_branch *list,
 					   unsigned int nr_clk);
 void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				    struct rockchip_clk_branch *list,
 				    unsigned int nr_clk);
+void rockchip_clk_register_late_branches(struct device *dev,
+					 struct rockchip_clk_provider *ctx,
+					 struct rockchip_clk_branch *list,
+					 unsigned int nr_clk);
+
 void rockchip_clk_register_plls(struct rockchip_clk_provider *ctx,
 				struct rockchip_pll_clock *pll_list,
 				unsigned int nr_pll, int grf_lock_offset);
diff --git a/drivers/clk/rockchip/gate-link.c b/drivers/clk/rockchip/gate-link.c
new file mode 100644
index 0000000000..710e77892a
--- /dev/null
+++ b/drivers/clk/rockchip/gate-link.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2024 Collabora Ltd.
+ * Author: Sebastian Reichel <sebastian.reichel@collabora.com>
+ */
+
+#include <common.h>
+
+#include "clk.h"
+
+static int rk_clk_gate_link_register(struct device *dev,
+				     struct rockchip_clk_provider *ctx,
+				     struct rockchip_clk_branch *clkbr)
+{
+	unsigned long flags = clkbr->flags | CLK_SET_RATE_PARENT;
+	struct clk *clk;
+
+	clk = clk_register_gate(dev, clkbr->name, clkbr->parent_names[0],
+				flags, ctx->reg_base + clkbr->gate_offset,
+				clkbr->gate_shift, clkbr->gate_flags,
+				&ctx->lock);
+
+	if (IS_ERR(clk))
+		return PTR_ERR(clk);
+
+	rockchip_clk_set_lookup(ctx, clk, clkbr->id);
+
+	return 0;
+}
+
+static int rk_clk_gate_link_probe(struct device *dev)
+{
+	struct rockchip_gate_link_platdata *pdata = dev->platform_data;
+	if (!pdata)
+		return dev_err_probe(dev, -ENODEV, "missing platform data");
+
+	return rk_clk_gate_link_register(dev, pdata->ctx, pdata->clkbr);
+}
+
+static struct driver rk_clk_gate_link_driver = {
+	.probe	= rk_clk_gate_link_probe,
+	.name	= "rockchip-gate-link-clk",
+};
+core_platform_driver(rk_clk_gate_link_driver);
-- 
2.39.1



