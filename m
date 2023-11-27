Delivery-date: Mon, 27 Nov 2023 07:51:18 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSf-00Aeqj-1Q
	for lore@lore.pengutronix.de;
	Mon, 27 Nov 2023 07:51:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r7VSf-00014n-AN
	for lore@pengutronix.de; Mon, 27 Nov 2023 07:51:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=ItlKLlVAAuR4sJYDi0om3pi6M2Jnisz3+lvevHMvkcI=; b=JP4ZvMnP+cFU9IzxyN7Oz8NKDH
	kWlq5KMIcCz2DeF/jDOJJCuBz3WBKs7hJVXNPSuuR0hrQ9UIJNAyBCWikwNJDLjVV9fY1URWH9odF
	KViN73LGPwjYuSmt0ESfApzixK00hBVpDOTO5Nr5+mtEqT3FQ1sPa5SH05W/OobrJRRCj//0WQ3ly
	ukLFFAE6YBFKZmMWQbcFtlzNF2rVhOoLjOXRAohL5g0AMIEModkTL2U2+3NSVIuokd/4ICutSUGXw
	Z9jo1LjLE/Vd46omXavG7d0qSQgRsQsjzT4zx9h16+G3ZoztA5MPbz5F7/x58cM/cwx/POLaLq9+J
	ng2ZTcwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRR-001bZM-2U;
	Mon, 27 Nov 2023 06:50:01 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r7VRL-001bWH-1T
	for barebox@lists.infradead.org;
	Mon, 27 Nov 2023 06:49:58 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRK-0000dE-8g; Mon, 27 Nov 2023 07:49:54 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-00Bsiq-Sj; Mon, 27 Nov 2023 07:49:53 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r7VRJ-009GPh-2b;
	Mon, 27 Nov 2023 07:49:53 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 27 Nov 2023 07:49:37 +0100
Message-Id: <20231127064947.2207726-4-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
References: <20231127064947.2207726-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231126_224955_664883_B265B4C1 
X-CRM114-Status: GOOD (  15.91  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 03/13] include: add initial <linux/clk-provider.h>
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Linux now differentiates bween <linux/clk.h> for consumers and
<linux/clk-provider.h> for providers. We have been putting
everything into <linux/clk.h>, but for new API imported from Linux
that's only applicable to clock provider drivers, let's add a
<linux/clk-provider.h> header and add them there.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/clk-provider.h | 138 +++++++++++++++++++++++++++++++++++
 1 file changed, 138 insertions(+)
 create mode 100644 include/linux/clk-provider.h

diff --git a/include/linux/clk-provider.h b/include/linux/clk-provider.h
new file mode 100644
index 000000000000..207f3b205dab
--- /dev/null
+++ b/include/linux/clk-provider.h
@@ -0,0 +1,138 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+/*
+ *  Copyright (c) 2010-2011 Jeremy Kerr <jeremy.kerr@canonical.com>
+ *  Copyright (C) 2011-2012 Linaro Ltd <mturquette@linaro.org>
+ */
+#ifndef __LINUX_CLK_PROVIDER_H
+#define __LINUX_CLK_PROVIDER_H
+
+#include <linux/clk.h>
+
+#define CLK_HW_INIT(_name, _parent, _ops, _flags)		\
+	(&(struct clk_init_data) {				\
+		.flags		= _flags,			\
+		.name		= _name,			\
+		.parent_names	= (const char *[]) { _parent },	\
+		.num_parents	= 1,				\
+		.ops		= _ops,				\
+	})
+
+#define CLK_HW_INIT_HW(_name, _parent, _ops, _flags)			\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_hws	= (const struct clk_hw*[]) { _parent },	\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
+/*
+ * This macro is intended for drivers to be able to share the otherwise
+ * individual struct clk_hw[] compound literals created by the compiler
+ * when using CLK_HW_INIT_HW. It does NOT support multiple parents.
+ */
+#define CLK_HW_INIT_HWS(_name, _parent, _ops, _flags)			\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_hws	= _parent,				\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
+#define CLK_HW_INIT_FW_NAME(_name, _parent, _ops, _flags)		\
+	(&(struct clk_init_data) {					\
+		.flags		= _flags,				\
+		.name		= _name,				\
+		.parent_data	= (const struct clk_parent_data[]) {	\
+					{ .fw_name = _parent },		\
+				  },					\
+		.num_parents	= 1,					\
+		.ops		= _ops,					\
+	})
+
+#define CLK_HW_INIT_PARENTS(_name, _parents, _ops, _flags)	\
+	(&(struct clk_init_data) {				\
+		.flags		= _flags,			\
+		.name		= _name,			\
+		.parent_names	= _parents,			\
+		.num_parents	= ARRAY_SIZE(_parents),		\
+		.ops		= _ops,				\
+	})
+
+#define CLK_HW_INIT_PARENTS_HW(_name, _parents, _ops, _flags)	\
+	(&(struct clk_init_data) {				\
+		.flags		= _flags,			\
+		.name		= _name,			\
+		.parent_hws	= _parents,			\
+		.num_parents	= ARRAY_SIZE(_parents),		\
+		.ops		= _ops,				\
+	})
+
+#define CLK_HW_INIT_PARENTS_DATA(_name, _parents, _ops, _flags)	\
+	(&(struct clk_init_data) {				\
+		.flags		= _flags,			\
+		.name		= _name,			\
+		.parent_data	= _parents,			\
+		.num_parents	= ARRAY_SIZE(_parents),		\
+		.ops		= _ops,				\
+	})
+
+#define CLK_HW_INIT_NO_PARENT(_name, _ops, _flags)	\
+	(&(struct clk_init_data) {			\
+		.flags          = _flags,		\
+		.name           = _name,		\
+		.parent_names   = NULL,			\
+		.num_parents    = 0,			\
+		.ops            = _ops,			\
+	})
+
+#define CLK_FIXED_FACTOR(_struct, _name, _parent,			\
+			_div, _mult, _flags)				\
+	struct clk_fixed_factor _struct = {				\
+		.div		= _div,					\
+		.mult		= _mult,				\
+		.hw.init	= CLK_HW_INIT(_name,			\
+					      _parent,			\
+					      &clk_fixed_factor_ops,	\
+					      _flags),			\
+	}
+
+#define CLK_FIXED_FACTOR_HW(_struct, _name, _parent,			\
+			    _div, _mult, _flags)			\
+	struct clk_fixed_factor _struct = {				\
+		.div		= _div,					\
+		.mult		= _mult,				\
+		.hw.init	= CLK_HW_INIT_HW(_name,			\
+						 _parent,		\
+						 &clk_fixed_factor_ops,	\
+						 _flags),		\
+	}
+
+/*
+ * This macro allows the driver to reuse the _parent array for multiple
+ * fixed factor clk declarations.
+ */
+#define CLK_FIXED_FACTOR_HWS(_struct, _name, _parent,			\
+			     _div, _mult, _flags)			\
+	struct clk_fixed_factor _struct = {				\
+		.div		= _div,					\
+		.mult		= _mult,				\
+		.hw.init	= CLK_HW_INIT_HWS(_name,		\
+						  _parent,		\
+						  &clk_fixed_factor_ops, \
+						  _flags),	\
+	}
+
+#define CLK_FIXED_FACTOR_FW_NAME(_struct, _name, _parent,		\
+				 _div, _mult, _flags)			\
+	struct clk_fixed_factor _struct = {				\
+		.div		= _div,					\
+		.mult		= _mult,				\
+		.hw.init	= CLK_HW_INIT_FW_NAME(_name,		\
+						      _parent,		\
+						      &clk_fixed_factor_ops, \
+						      _flags),		\
+	}
+
+#endif
-- 
2.39.2



