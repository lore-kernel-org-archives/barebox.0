Delivery-date: Thu, 10 Apr 2025 14:08:39 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qhz-00AouV-2V
	for lore@lore.pengutronix.de;
	Thu, 10 Apr 2025 14:08:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u2qhy-0007h2-P6
	for lore@pengutronix.de; Thu, 10 Apr 2025 14:08:39 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=7MwIjhF2tA9poIcAKIkqb9C0iz6wWCWzrsMB+x0Vucs=; b=eNLFfTlJHhwPIHspAHEWy/8MFp
	nvF2voP/Mar2axFD/gjMUpzmkmlXzxoKc/GWlbzGmQ+YLemJQzToyuLMjvbeBlpAw/ujNHVQs39z4
	Bx1W87CffPC/aKN6POlowqbx7Gl0Vn4PhPCJ8twhH574P5VarFo8aF5ZnkZNDcg3unq6f/fT+ah22
	KGmtW4CXIehbjXh/UQArZyuYJ/8rj9rYdOEgXTGLL0WFthZHP0kSv/urKPL0OdwGpDgsGWYvsZkjC
	9RIxOAwgDqULqdwRzYUi2vGGq/kbCRZ99TTfFnrq1hsiCwe4TnNx41Hg308PBGHd0tj0SjY/0KPEu
	5SCCphPg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qhP-0000000ARPr-2rxC;
	Thu, 10 Apr 2025 12:08:03 +0000
Received: from mail-yb1-xb2a.google.com ([2607:f8b0:4864:20::b2a])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u2qhM-0000000ARP5-3RoX
	for barebox@lists.infradead.org;
	Thu, 10 Apr 2025 12:08:02 +0000
Received: by mail-yb1-xb2a.google.com with SMTP id 3f1490d57ef6-e694601f624so483849276.1
        for <barebox@lists.infradead.org>; Thu, 10 Apr 2025 05:08:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1744286879; x=1744891679; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7MwIjhF2tA9poIcAKIkqb9C0iz6wWCWzrsMB+x0Vucs=;
        b=EeUzbc6sTzdDotalBs3f/uihfDKHq1Vh++T9fYaJoG+oZUR6ODS1hMMsxR+PizOeoq
         aB5BJOfd4T299zhS0vkIGstJk8qrCaf8cV4L7P9+dvwn1jDhefpfT7IEI+jLC+2HquYO
         SLMga70IuQR9veEdqdS1KR5lccIbq0+rTQQw1KHTEWNKZDQoxEooRGRhnqoucV2jHcEC
         7W31U34aZ8JOfe192jrA/OqjbP+pkuoNuHOoMoOQMwPe0w+ZGauzIiDg5Y6x9MDjK2kW
         ZQLTIqZhqk+5ARxD+lD54lltFt/62qx/V0rB2/hE8LaqfSKasLbrzJW6tjpm5TKKIZtu
         SS8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744286879; x=1744891679;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7MwIjhF2tA9poIcAKIkqb9C0iz6wWCWzrsMB+x0Vucs=;
        b=jOfg/FbhadXfqc6Yym9mMrj6I8/MteExA0OY1kLw46OdAgNxxzUPErVjAknlNoWkw7
         atpbIPqNw4tJlY7TNeIFiXfdMeib0JTEvYsbZUkFj5ax6IS4q2in4ROwQfnD5jsfMsO+
         lxjkJ8ZFlRgJJoWwvIc1jGj1bY12Y+bf/pk1kdcfoOd1kCgtV+YUqx9vbaR0ocEhnh/a
         0Y0Jmml++8anouvUxE6oSGza0mp7sAAQIr/71jP6oz6+ADX44d01OJny6gJN98qrTPRv
         cGCaKxFirs76uAPFpI5qvISnHoVuysN6Q/4A3Kvq/oW1hSkju3veGcQuH5wl0c2riBCl
         NY7Q==
X-Gm-Message-State: AOJu0Yx4ke1E8fGTIAAk8hJMeQKcSuWMiojncI7+nFbHcYr6KKzaoIWR
	u0dQ8hDiWFyA36LAds0Z6la7m0v6lvJEu5ZdBIHGaDq/LbVsMxW/pYzQaQ==
X-Gm-Gg: ASbGncs86Hkdix0CGat3MRIV9nF6u9oVgZx9lNS2qiipFkvsGVYIGyOb8IWWIUGLI54
	axH6VQ0X/4wV2VO7+Ntxk5qLwgbR6I7auabCItKDPEhojDDGEnlIx9e9GARZ3X6O/6MfRMc3FSH
	kCj4ErG8OCGDI7bEC1qrwPZVwCLQK+rib1UIIK/5BTNsKJVOIUSgX0sf4It8P06ZVCYMxjZWpWZ
	JBY0899naYFqe9QVDKWLlvUssuYi7dwkKiX5qC2K7a0ZjTL+oxQHoRwjJ60J09U7HNc+2IfBF2K
	q+DmqTchXfppqXpM/2k7AVZEUcHHURbs+Q4rBPk5kmoL2azCy0HfgCIUfU87tb4qCg==
X-Google-Smtp-Source: AGHT+IF+GS0OjuyiN1on34D03iNSTaA+Qz5SoGUPXfLVp0XLhTMw6JKMD8j681NAJ7S8aYhOyrnLQQ==
X-Received: by 2002:a05:6902:1690:b0:e63:dc61:372f with SMTP id 3f1490d57ef6-e703e128fc2mr3954328276.19.1744286878793;
        Thu, 10 Apr 2025 05:07:58 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.108])
        by smtp.gmail.com with ESMTPSA id 3f1490d57ef6-e7032404958sm674314276.11.2025.04.10.05.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Apr 2025 05:07:57 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 10 Apr 2025 15:07:43 +0300
Message-Id: <20250410120745.3696310-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250410_050800_861394_F767DF62 
X-CRM114-Status: GOOD (  20.96  )
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
Subject: [PATCH 1/3] clk: rockchip: Add new clock-type for the ddrclk
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Changing the DDR clock frequency requires special care, this patch
adds the DDR clock driver code from the Linux kernel repository.
While we're here, let's also update drivers/clk/rockchip/Makefile
to make it more readable.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/clk/rockchip/Makefile       |  29 ++++--
 drivers/clk/rockchip/clk-ddr.c      | 131 ++++++++++++++++++++++++++++
 drivers/clk/rockchip/clk-pll.c      |   6 +-
 drivers/clk/rockchip/clk.c          |   7 ++
 drivers/clk/rockchip/clk.h          |   1 +
 include/soc/rockchip/rockchip_sip.h |  23 +++++
 6 files changed, 188 insertions(+), 9 deletions(-)
 create mode 100644 drivers/clk/rockchip/clk-ddr.c
 create mode 100644 include/soc/rockchip/rockchip_sip.h

diff --git a/drivers/clk/rockchip/Makefile b/drivers/clk/rockchip/Makefile
index f01014da0c..8d752d11b9 100644
--- a/drivers/clk/rockchip/Makefile
+++ b/drivers/clk/rockchip/Makefile
@@ -1,8 +1,21 @@
-# SPDX-License-Identifier: GPL-2.0-only
-obj-y += clk-cpu.o clk-pll.o clk.o clk-muxgrf.o clk-mmc-phase.o clk-inverter.o
-obj-$(CONFIG_RESET_CONTROLLER) += softrst.o
-obj-$(CONFIG_ARCH_RK3188) += clk-rk3188.o
-obj-$(CONFIG_ARCH_RK3288) += clk-rk3288.o
-obj-$(CONFIG_ARCH_RK3399) += clk-rk3399.o
-obj-$(CONFIG_ARCH_RK3568) += clk-rk3568.o
-obj-$(CONFIG_ARCH_RK3588) += clk-rk3588.o rst-rk3588.o
+# SPDX-License-Identifier: GPL-2.0
+#
+# Rockchip Clock specific Makefile
+#
+
+obj-y += clk-rockchip.o
+
+clk-rockchip-y += clk.o
+clk-rockchip-y += clk-pll.o
+clk-rockchip-y += clk-cpu.o
+clk-rockchip-y += clk-inverter.o
+clk-rockchip-y += clk-mmc-phase.o
+clk-rockchip-y += clk-muxgrf.o
+clk-rockchip-y += clk-ddr.o
+
+clk-rockchip-$(CONFIG_RESET_CONTROLLER) += softrst.o
+
+obj-$(CONFIG_ARCH_RK3188)	+= clk-rk3188.o
+obj-$(CONFIG_ARCH_RK3288)	+= clk-rk3288.o
+obj-$(CONFIG_ARCH_RK3568)	+= clk-rk3568.o
+obj-$(CONFIG_ARCH_RK3588)	+= clk-rk3588.o rst-rk3588.o
diff --git a/drivers/clk/rockchip/clk-ddr.c b/drivers/clk/rockchip/clk-ddr.c
new file mode 100644
index 0000000000..7b10f1533b
--- /dev/null
+++ b/drivers/clk/rockchip/clk-ddr.c
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+/*
+ * Copyright (c) 2016 Rockchip Electronics Co. Ltd.
+ * Author: Lin Huang <hl@rock-chips.com>
+ */
+
+#include <common.h>
+#include <linux/arm-smccc.h>
+#include <soc/rockchip/rockchip_sip.h>
+
+#include "clk.h"
+
+struct rockchip_ddrclk {
+	struct clk_hw	hw;
+	void __iomem	*reg_base;
+	int		mux_offset;
+	int		mux_shift;
+	int		mux_width;
+	int		div_shift;
+	int		div_width;
+	int		ddr_flag;
+};
+
+#define to_rockchip_ddrclk_hw(hw) container_of(hw, struct rockchip_ddrclk, hw)
+
+static int rockchip_ddrclk_sip_set_rate(struct clk_hw *hw, unsigned long drate,
+					unsigned long prate)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, drate, 0,
+		      ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE,
+		      0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+static unsigned long
+rockchip_ddrclk_sip_recalc_rate(struct clk_hw *hw,
+				unsigned long parent_rate)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, 0, 0,
+		      ROCKCHIP_SIP_CONFIG_DRAM_GET_RATE,
+		      0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+static long rockchip_ddrclk_sip_round_rate(struct clk_hw *hw,
+					   unsigned long rate,
+					   unsigned long *prate)
+{
+	struct arm_smccc_res res;
+
+	arm_smccc_smc(ROCKCHIP_SIP_DRAM_FREQ, rate, 0,
+		      ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE,
+		      0, 0, 0, 0, &res);
+
+	return res.a0;
+}
+
+static int rockchip_ddrclk_get_parent(struct clk_hw *hw)
+{
+	struct rockchip_ddrclk *ddrclk = to_rockchip_ddrclk_hw(hw);
+	u32 val;
+
+	val = readl(ddrclk->reg_base +
+			ddrclk->mux_offset) >> ddrclk->mux_shift;
+	val &= GENMASK(ddrclk->mux_width - 1, 0);
+
+	return val;
+}
+
+static const struct clk_ops rockchip_ddrclk_sip_ops = {
+	.recalc_rate = rockchip_ddrclk_sip_recalc_rate,
+	.set_rate = rockchip_ddrclk_sip_set_rate,
+	.round_rate = rockchip_ddrclk_sip_round_rate,
+	.get_parent = rockchip_ddrclk_get_parent,
+};
+
+struct clk *rockchip_clk_register_ddrclk(const char *name, int flags,
+					 const char *const *parent_names,
+					 u8 num_parents, int mux_offset,
+					 int mux_shift, int mux_width,
+					 int div_shift, int div_width,
+					 int ddr_flag, void __iomem *reg_base,
+					 spinlock_t *lock)
+{
+	struct rockchip_ddrclk *ddrclk;
+	struct clk_init_data init;
+	struct clk *clk;
+
+	ddrclk = kzalloc(sizeof(*ddrclk), GFP_KERNEL);
+	if (!ddrclk)
+		return ERR_PTR(-ENOMEM);
+
+	init.name = name;
+	init.parent_names = parent_names;
+	init.num_parents = num_parents;
+
+	init.flags = flags;
+	init.flags |= CLK_SET_RATE_NO_REPARENT;
+
+	switch (ddr_flag) {
+	case ROCKCHIP_DDRCLK_SIP:
+		init.ops = &rockchip_ddrclk_sip_ops;
+		break;
+	default:
+		pr_err("%s: unsupported ddrclk type %d\n", __func__, ddr_flag);
+		kfree(ddrclk);
+		return ERR_PTR(-EINVAL);
+	}
+
+	ddrclk->reg_base = reg_base;
+	ddrclk->hw.init = &init;
+	ddrclk->mux_offset = mux_offset;
+	ddrclk->mux_shift = mux_shift;
+	ddrclk->mux_width = mux_width;
+	ddrclk->div_shift = div_shift;
+	ddrclk->div_width = div_width;
+	ddrclk->ddr_flag = ddr_flag;
+
+	clk = clk_register(NULL, &ddrclk->hw);
+	if (IS_ERR(clk))
+		kfree(ddrclk);
+
+	return clk;
+}
+EXPORT_SYMBOL_GPL(rockchip_clk_register_ddrclk);
diff --git a/drivers/clk/rockchip/clk-pll.c b/drivers/clk/rockchip/clk-pll.c
index b4152b03b1..2931c09ad5 100644
--- a/drivers/clk/rockchip/clk-pll.c
+++ b/drivers/clk/rockchip/clk-pll.c
@@ -913,7 +913,10 @@ static unsigned long rockchip_rk3588_pll_recalc_rate(struct clk_hw *hw, unsigned
 	}
 	rate64 = rate64 >> cur.s;
 
-	return (unsigned long)rate64;
+	if (pll->type == pll_rk3588_ddr)
+		return (unsigned long)rate64 * 2;
+	else
+		return (unsigned long)rate64;
 }
 
 static int rockchip_rk3588_pll_set_params(struct rockchip_clk_pll *pll,
@@ -1169,6 +1172,7 @@ struct clk *rockchip_clk_register_pll(struct rockchip_clk_provider *ctx,
 		break;
 	case pll_rk3588:
 	case pll_rk3588_core:
+	case pll_rk3588_ddr:
 		if (!pll->rate_table)
 			init.ops = &rockchip_rk3588_pll_clk_norate_ops;
 		else
diff --git a/drivers/clk/rockchip/clk.c b/drivers/clk/rockchip/clk.c
index a154495efd..127b79e2c8 100644
--- a/drivers/clk/rockchip/clk.c
+++ b/drivers/clk/rockchip/clk.c
@@ -497,6 +497,13 @@ void rockchip_clk_register_branches(struct rockchip_clk_provider *ctx,
 				list->gate_flags, flags, &ctx->lock);
 			break;
 		case branch_ddrclk:
+			clk = rockchip_clk_register_ddrclk(
+				list->name, list->flags,
+				list->parent_names, list->num_parents,
+				list->muxdiv_offset, list->mux_shift,
+				list->mux_width, list->div_shift,
+				list->div_width, list->div_flags,
+				ctx->reg_base, &ctx->lock);
 			break;
 		}
 
diff --git a/drivers/clk/rockchip/clk.h b/drivers/clk/rockchip/clk.h
index a451229326..6665f8ac90 100644
--- a/drivers/clk/rockchip/clk.h
+++ b/drivers/clk/rockchip/clk.h
@@ -267,6 +267,7 @@ enum rockchip_pll_type {
 	pll_rk3399,
 	pll_rk3588,
 	pll_rk3588_core,
+	pll_rk3588_ddr,
 };
 
 #define RK3036_PLL_RATE(_rate, _refdiv, _fbdiv, _postdiv1,	\
diff --git a/include/soc/rockchip/rockchip_sip.h b/include/soc/rockchip/rockchip_sip.h
new file mode 100644
index 0000000000..501ad1fedb
--- /dev/null
+++ b/include/soc/rockchip/rockchip_sip.h
@@ -0,0 +1,23 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
+ * Author: Lin Huang <hl@rock-chips.com>
+ */
+#ifndef __SOC_ROCKCHIP_SIP_H
+#define __SOC_ROCKCHIP_SIP_H
+
+#define ROCKCHIP_SIP_SUSPEND_MODE		0x82000003
+#define ROCKCHIP_SLEEP_PD_CONFIG		0xff
+
+#define ROCKCHIP_SIP_DRAM_FREQ			0x82000008
+#define ROCKCHIP_SIP_CONFIG_DRAM_INIT		0x00
+#define ROCKCHIP_SIP_CONFIG_DRAM_SET_RATE	0x01
+#define ROCKCHIP_SIP_CONFIG_DRAM_ROUND_RATE	0x02
+#define ROCKCHIP_SIP_CONFIG_DRAM_SET_AT_SR	0x03
+#define ROCKCHIP_SIP_CONFIG_DRAM_GET_BW		0x04
+#define ROCKCHIP_SIP_CONFIG_DRAM_GET_RATE	0x05
+#define ROCKCHIP_SIP_CONFIG_DRAM_CLR_IRQ	0x06
+#define ROCKCHIP_SIP_CONFIG_DRAM_SET_PARAM	0x07
+#define ROCKCHIP_SIP_CONFIG_DRAM_SET_ODT_PD	0x08
+
+#endif
-- 
2.39.1



