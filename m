Delivery-date: Mon, 15 Apr 2024 07:32:00 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEwi-001ZCa-2E
	for lore@lore.pengutronix.de;
	Mon, 15 Apr 2024 07:32:00 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rwEwi-0002An-3T
	for lore@pengutronix.de; Mon, 15 Apr 2024 07:32:00 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=yCRt7ToOTAR2jsxkFxk/2vQmRVglSn4yJyHbXJ6w5qg=; b=H5xVu4ZWfLRuDvpHg4U6Zynqej
	+y7ak1YwZt0aP8Qshy5XwA75+7ir2f8bZhzEZZ9Azw2WfkkgRVuTEFPfxLd+OEbR4oPvm78sKDUUd
	Hg16JaCRdC1kp6ZG7AhwC6n8OQzWEw+mHwAPoe8QCEYhjET7GoQGGHNVmJRBK1T5kporMGagp4C8N
	VR0g2HBTkG8rPrSWfP2u4BkLVuKU9VWbPtZNhtivcFzA5yUWtUIYtxn9SJb0YyX9TzswXhKoT9+Jk
	sHUWTw3E10pSx9BZCCM44+0cRhwPeCuxFjvnjdnd5m7uK1s1CXHj//dqkvQ5vhD4Rr484iLGUgMb9
	iMIevJcw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEwL-000000070jP-0LW5;
	Mon, 15 Apr 2024 05:31:37 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rwEwH-000000070iX-2Nse
	for barebox@lists.infradead.org;
	Mon, 15 Apr 2024 05:31:35 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwG-0001f6-DP; Mon, 15 Apr 2024 07:31:32 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwG-00CMjm-11; Mon, 15 Apr 2024 07:31:32 +0200
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rwEwF-001XoH-32;
	Mon, 15 Apr 2024 07:31:31 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Mon, 15 Apr 2024 07:31:30 +0200
Message-Id: <20240415053130.368278-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240414_223133_667326_DEFFEBA1 
X-CRM114-Status: GOOD (  12.34  )
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
X-Spam-Status: No, score=-6.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH master] soc: rockchip: io-domain: handle missing supply correctly
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The original Linux code calls regulator_get_optional and handles its
-ENODEV return code, which morphed into regulator_get when ported to
barebox. The error handling stayed as-is leading to causing supplies to
trigger errors instead of being silently ignored.

As we use NULL to describe the dummy regulator in barebox, we can add a
trivial regulator_get_optional implementation and use it to fix the
I/O domain driver.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/soc/rockchip/io-domain.c | 2 +-
 include/regulator.h              | 8 ++++++++
 2 files changed, 9 insertions(+), 1 deletion(-)

diff --git a/drivers/soc/rockchip/io-domain.c b/drivers/soc/rockchip/io-domain.c
index 9f60b6eb4c28..453d393cb09f 100644
--- a/drivers/soc/rockchip/io-domain.c
+++ b/drivers/soc/rockchip/io-domain.c
@@ -165,7 +165,7 @@ static int rockchip_iodomain_probe(struct device *dev)
 		if (!supply_name)
 			continue;
 
-		reg = regulator_get(dev, supply_name);
+		reg = regulator_get_optional(dev, supply_name);
 		if (IS_ERR(reg)) {
 			ret = PTR_ERR(reg);
 
diff --git a/include/regulator.h b/include/regulator.h
index 135fe6d91fd3..305da0d774ba 100644
--- a/include/regulator.h
+++ b/include/regulator.h
@@ -3,6 +3,7 @@
 #define __REGULATOR_H
 
 #include <linux/bitops.h>
+#include <linux/err.h>
 
 struct device;
 
@@ -284,4 +285,11 @@ static inline int regulator_get_voltage(struct regulator *regulator)
 
 #endif
 
+static inline struct regulator *regulator_get_optional(struct device *dev,
+						       const char *id)
+{
+	return regulator_get(dev, id) ?: ERR_PTR(-ENODEV);
+}
+
+
 #endif /* __REGULATOR_H */
-- 
2.39.2



