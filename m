Delivery-date: Wed, 13 Aug 2025 16:51:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCor-000Cj1-0j
	for lore@lore.pengutronix.de;
	Wed, 13 Aug 2025 16:51:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1umCoo-0006x5-UH
	for lore@pengutronix.de; Wed, 13 Aug 2025 16:51:12 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TVvGNclZs5j4B4JhDhZhLsXDSJEQpwhszRGWCw6kwto=; b=xg8sguqhqW6WwUwqfNMHZIoLaG
	rYKQp//Sdv0P/6SULaaZi0EMVZuhd+WeMNu63OxGWstaFmld1aWWAoJXW5DwaMuEG8F+fohCEiXrM
	6NMvE5vRkAxmtT+fnyxCLt0zWD7LDKUAtszicl+kPkf8EiuFGmQkz5EL7ohFcFH7p2TKrn1TikxXK
	XZY+7kISK9pXIKj5PZqBCpwSMnY2xc3XXlrgkb289ut14bJci4PsBEmI2YcTF+ozqMOfRniYnvRCA
	m3Ddo7QGfag7s0ScrQCrqe3lwNMk1/ikiJfFeRzs5ok4axoLfdH2H+lqEUjFURbh38vnWghyB7x0K
	/0D4fYlw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCo4-0000000DxzL-1pI8;
	Wed, 13 Aug 2025 14:50:24 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYK-0000000DvNn-1zQw
	for barebox@bombadil.infradead.org;
	Wed, 13 Aug 2025 14:34:08 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=TVvGNclZs5j4B4JhDhZhLsXDSJEQpwhszRGWCw6kwto=; b=f7SrHNp8JgAK/5V0ETIriMPKC0
	6SsnpnJ/CGtAmGjkI6qb8Rxc5/IG0RU0LxKvheyeb8lbS7/V4BPgbOj4YMiDDsgOL54rpXa2rHoX5
	7LNeQjQl+0Q4yZCzfEjC0s0qRbgNCYssue0dNR/O8wUjWd/eAgwippOR9dLyeu7E2P9+7MZoJ9B0z
	RGdcTRojgiDC2z1+h26fO7/YrqA7EIgEzV9SNJ4s9rmOrXw0ZR9e/Cr22MA5iGbi1VbfyOaZIMyoF
	95pnryd8qLiLIcFmgGabgPpMnvJMjNaGtnpO/00/ftXfHFiixDEbFjMs2t/aJQXV0zcgwfLu/lDxn
	44/vUlXQ==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1umCYH-0000000G6ho-2DM3
	for barebox@lists.infradead.org;
	Wed, 13 Aug 2025 14:34:07 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=geraet.fritz.box)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <a.fatoum@barebox.org>)
	id 1umCYE-0003xl-T8; Wed, 13 Aug 2025 16:34:02 +0200
From: Ahmad Fatoum <a.fatoum@barebox.org>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@barebox.org>
Date: Wed, 13 Aug 2025 16:33:42 +0200
Message-Id: <20250813143345.3758653-11-a.fatoum@barebox.org>
X-Mailer: git-send-email 2.39.5
In-Reply-To: <20250813143345.3758653-1-a.fatoum@barebox.org>
References: <20250813143345.3758653-1-a.fatoum@barebox.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250813_153405_686104_E8DB118F 
X-CRM114-Status: GOOD (  16.01  )
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
X-Spam-Status: No, score=-5.4 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 10/13] clk: implement clk_have_nonfixed_providers
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

This function will be called from the upcoming bfetch command to
determine whether the running barebox has a CCF clock tree that goes
beyond fixed clocks for board-level oscillators.

Signed-off-by: Ahmad Fatoum <a.fatoum@barebox.org>
---
v1 -> v2:
  - fix typo in commit message s/regulators/clocks/
---
 drivers/clk/clk-fixed.c |  7 +++++++
 drivers/clk/clk-fixed.h | 11 +++++++++++
 drivers/clk/clk.c       | 14 ++++++++++++++
 include/linux/clk.h     |  9 +++++++++
 4 files changed, 41 insertions(+)
 create mode 100644 drivers/clk/clk-fixed.h

diff --git a/drivers/clk/clk-fixed.c b/drivers/clk/clk-fixed.c
index 6ec2feb84f9e..ea081d0f22de 100644
--- a/drivers/clk/clk-fixed.c
+++ b/drivers/clk/clk-fixed.c
@@ -9,6 +9,8 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 
+#include "clk-fixed.h"
+
 struct clk_fixed {
 	struct clk_hw hw;
 	unsigned long rate;
@@ -27,6 +29,11 @@ static struct clk_ops clk_fixed_ops = {
 	.is_enabled = clk_is_enabled_always,
 };
 
+bool clk_is_fixed(struct clk *clk)
+{
+	return clk->ops == &clk_fixed_ops;
+}
+
 struct clk *clk_register_fixed_rate(const char *name,
 				    const char *parent_name, unsigned long flags,
 				    unsigned long rate)
diff --git a/drivers/clk/clk-fixed.h b/drivers/clk/clk-fixed.h
new file mode 100644
index 000000000000..d7f7a12cb60d
--- /dev/null
+++ b/drivers/clk/clk-fixed.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef _CLK_FIXED_H
+#define _CLK_FIXED_H
+
+#include <linux/types.h>
+
+struct clk;
+
+bool clk_is_fixed(struct clk *clk);
+
+#endif
diff --git a/drivers/clk/clk.c b/drivers/clk/clk.c
index 1fa9027bc6cd..89a007a12c5b 100644
--- a/drivers/clk/clk.c
+++ b/drivers/clk/clk.c
@@ -14,8 +14,22 @@
 #include <linux/clk/clk-conf.h>
 #include <pinctrl.h>
 
+#include "clk-fixed.h"
+
 static LIST_HEAD(clks);
 
+bool clk_have_nonfixed_providers(void)
+{
+	struct clk *c;
+
+	list_for_each_entry(c, &clks, list) {
+		if (!clk_is_fixed(c))
+			return true;
+	}
+
+	return false;
+}
+
 static int clk_parent_enable(struct clk *clk)
 {
 	struct clk *parent = clk_get_parent(clk);
diff --git a/include/linux/clk.h b/include/linux/clk.h
index f893d9071371..526641927754 100644
--- a/include/linux/clk.h
+++ b/include/linux/clk.h
@@ -11,6 +11,7 @@
 #define __LINUX_CLK_H
 
 #include <linux/err.h>
+#include <linux/types.h>
 #include <linux/spinlock.h>
 #include <linux/stringify.h>
 #include <linux/string.h>
@@ -971,6 +972,9 @@ static inline void clk_hw_unregister(struct clk_hw *hw)
 
 #ifdef CONFIG_COMMON_CLK
 
+bool clk_have_nonfixed_providers(void);
+
+
 /**
  * clk_bulk_get - lookup and obtain a number of references to clock producer.
  * @dev: device for clock "consumer"
@@ -1085,6 +1089,11 @@ int __must_check clk_bulk_enable(int num_clks,
 void clk_bulk_disable(int num_clks, const struct clk_bulk_data *clks);
 
 #else
+static inline bool clk_have_nonfixed_providers(void)
+{
+	return false;
+}
+
 static inline int __must_check clk_bulk_get(struct device *dev, int num_clks,
 					    struct clk_bulk_data *clks)
 {
-- 
2.39.5



