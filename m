Delivery-date: Fri, 10 Nov 2023 14:04:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RBR-005rsV-2x
	for lore@lore.pengutronix.de;
	Fri, 10 Nov 2023 14:04:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r1RBR-0006uy-UN
	for lore@pengutronix.de; Fri, 10 Nov 2023 14:04:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:
	Cc:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=8ykA+bZ2NnwDqfd+dKp5Zf6Aj3RkYpxNInhAcjrWxR4=; b=j1BjyDEAFVESo/8VS/v8X9tJ/j
	TnfpIKj4BAfhYi7YHUQgdGkeSLmsMLhzcQ4f0egO0Jk2mf5UJIliOqcINh1DbYL45JbdcM3CEl2zs
	WPzh51UppAbk3at370UxiuRh4EfTqP8bsd+pFe0VJHzVzvE5MWvqxsQXUnI2bmus5i7UJQq0Hop1S
	4/Mna2aBt2P6ZQYGgyvRUtVfIAmdxpfdmIHHZ5jVkI+pRVYhOPSJhk6DwN5o3vpEIJxXwG8ByVvkC
	KPigF5dyCqOlaTNphwSq8lDsCq5jmRLv2waxR7b1atsjWHfxeXL5BHnHhCAJawKdBmMr9ZcJZqz6u
	cgC38L/g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RAP-008nkc-27;
	Fri, 10 Nov 2023 13:03:21 +0000
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RAO-008njh-11
	for barebox@bombadil.infradead.org;
	Fri, 10 Nov 2023 13:03:20 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=infradead.org; s=desiato.20200630; h=Content-Transfer-Encoding:MIME-Version
	:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:
	Content-Type:Content-ID:Content-Description;
	bh=8ykA+bZ2NnwDqfd+dKp5Zf6Aj3RkYpxNInhAcjrWxR4=; b=XWwtPotfhTJ79PHyAQ5YNetJ0D
	OKtXheK8llsLLysJSpdUlKpTZibykM9FF/8zI/sYBDf95SODSICiJ/Uf8gHHjQhwpSIqoXeLamY7I
	dgvB2yIdgQn8UOSg1+P3dY2mzy7WG7sr6W5Vj+XCqoAdrSP9N4fQW5Ptse4Ly8I3MFmy6bNXRpjCf
	LkW4tBiJEYTeSqtTUzYYYii46v9u/EVWJj/dZKYK/n1QCQgv+Ltat+iXbSfnJFhKpup+vrvfcR/f3
	GZVralAxxS1DkH6is7/d66VqS9A7N2xaFuzgmcrO8rIza8lfTWWAFdNRTTrBUAsOAwD/xP5JlXKsT
	qD8++aqg==;
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by desiato.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r1RAK-00FcCT-1r
	for barebox@lists.infradead.org;
	Fri, 10 Nov 2023 13:03:18 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RAJ-0006AJ-V3; Fri, 10 Nov 2023 14:03:15 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RAJ-0081z9-Ia; Fri, 10 Nov 2023 14:03:15 +0100
Received: from sha by dude02.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <sha@pengutronix.de>)
	id 1r1RAJ-009NXv-1R;
	Fri, 10 Nov 2023 14:03:15 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Fri, 10 Nov 2023 14:03:12 +0100
Message-Id: <20231110130312.2234966-2-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231110130312.2234966-1-s.hauer@pengutronix.de>
References: <20231110130312.2234966-1-s.hauer@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231110_130316_830057_77293E3A 
X-CRM114-Status: GOOD (  12.52  )
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
Subject: [PATCH 2/2] mfd: pca9450: Add init callback
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

We currently do not have regulator support for the pca945x chips,
so provide a init callback for board code to do the basic setup.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/mfd/pca9450.c | 21 +++++++++++++++++++++
 include/mfd/pca9450.h | 14 ++++++++++++++
 2 files changed, 35 insertions(+)

diff --git a/drivers/mfd/pca9450.c b/drivers/mfd/pca9450.c
index 20f6b016fa..8fa5363f8a 100644
--- a/drivers/mfd/pca9450.c
+++ b/drivers/mfd/pca9450.c
@@ -61,6 +61,23 @@ static int pca9450_get_reset_source(struct device *dev, struct regmap *map)
 	return 0;
 };
 
+static struct regmap *pca9450_map;
+
+static void (*pca9450_init_callback)(struct regmap *map);
+
+int pca9450_register_init_callback(void(*callback)(struct regmap *map))
+{
+	if (pca9450_init_callback)
+		return -EBUSY;
+
+	pca9450_init_callback = callback;
+
+	if (pca9450_map)
+		pca9450_init_callback(pca9450_map);
+
+	return 0;
+}
+
 static int __init pca9450_probe(struct device *dev)
 {
 	struct regmap *regmap;
@@ -84,6 +101,10 @@ static int __init pca9450_probe(struct device *dev)
 	/* Chip ID defined in bits [7:4] */
 	dev_info(dev, "PMIC Chip ID: 0x%x\n", (reg >> 4));
 
+	if (pca9450_init_callback)
+		pca9450_init_callback(regmap);
+	pca9450_map = regmap;
+
 	pca9450_get_reset_source(dev,regmap);
 
 	return of_platform_populate(dev->of_node, NULL, dev);
diff --git a/include/mfd/pca9450.h b/include/mfd/pca9450.h
index 256f661911..7071c3a9da 100644
--- a/include/mfd/pca9450.h
+++ b/include/mfd/pca9450.h
@@ -6,6 +6,8 @@
 #ifndef PCA9450_H_
 #define PCA9450_H_
 
+#include <linux/regmap.h>
+
 enum {
 	PCA9450_REG_DEV_ID      = 0x00,
 	PCA9450_INT1            = 0x01,
@@ -52,4 +54,16 @@ enum {
 	PCA9450_REG_NUM,
 };
 
+#ifdef CONFIG_MFD_PCA9450
+
+int pca9450_register_init_callback(void(*callback)(struct regmap *map));
+
+#else
+
+static inline int pca9450_register_init_callback(void(*callback)(struct regmap *map))
+{
+	return -ENODEV;
+}
+#endif
+
 #endif
-- 
2.39.2



