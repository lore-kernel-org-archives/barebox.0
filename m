Delivery-date: Fri, 20 Oct 2023 09:20:28 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo5-00FGVc-BE
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:28 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo4-0006kL-5g
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=cD1N0NPA1GufswuZmmRqfcxhsfiQ/ABpeHa3traSJT0=; b=Jo4x1ETzbheSPf84J5vgIxxu/+
	RB8qSGO8hONYV9pYBOB2ljeeqNIQc21YKfa5xJHlQx8MwIFvM57pgvoS5HDfsOdgSRJ2Dr981U65b
	xH6QJda44lGcRahegLBC+7ovI4AxwEYii9VfkafjygNx1/buxuH7DMbmUepZeOaQ1p1wBMbAGrLZz
	gsddEBIplaUiQbfc87e9EKQy3YBvr2+XnVCsZ/VquKPgKgyOA+k8LZRDfTh9tacxDlDtIsRZWUL4o
	x4TkcYu43lK/RlkpO6B+hbANdhCvcuNFAdYDokA07ppm3y2vnc1kol0xSC2nF4TdvuY+78qdqYuEp
	LrUyv+hw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmp-001Oyf-17;
	Fri, 20 Oct 2023 07:19:11 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001OvW-0Y
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006De-1v; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLm-Ea; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRW-1F;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:48 +0200
Message-Id: <20231020071853.2826528-7-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_246808_F35785A0 
X-CRM114-Status: UNSURE (   9.89  )
X-CRM114-Notice: Please train this message.
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
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 06/11] mfd: axp20x: remove dependency on regmap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

axp20x_read_variable_width() is not used in barebox and
struct regmap and struct regmap_config could just be forward-declared
avoiding the need to include regmap.h. Thus drop the function and
forward declare. Should the function be needed in future, it can be
added back.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 include/linux/mfd/axp20x.h | 26 +++-----------------------
 1 file changed, 3 insertions(+), 23 deletions(-)

diff --git a/include/linux/mfd/axp20x.h b/include/linux/mfd/axp20x.h
index b406c019e449..93d303c45991 100644
--- a/include/linux/mfd/axp20x.h
+++ b/include/linux/mfd/axp20x.h
@@ -8,7 +8,6 @@
 #ifndef __LINUX_MFD_AXP20X_H
 #define __LINUX_MFD_AXP20X_H
 
-#include <regmap.h>
 #include <poweroff.h>
 
 enum axp20x_variants {
@@ -448,6 +447,9 @@ enum {
 	AXP813_REG_ID_MAX,
 };
 
+struct regmap;
+struct regmap_config;
+
 struct axp20x_dev {
 	struct device			*dev;
 	struct regmap			*regmap;
@@ -458,28 +460,6 @@ struct axp20x_dev {
 	struct poweroff_handler		poweroff;
 };
 
-/* generic helper function for reading 9-16 bit wide regs */
-static inline int axp20x_read_variable_width(struct regmap *regmap,
-	unsigned int reg, unsigned int width)
-{
-	unsigned int reg_val, result;
-	int err;
-
-	err = regmap_read(regmap, reg, &reg_val);
-	if (err)
-		return err;
-
-	result = reg_val << (width - 8);
-
-	err = regmap_read(regmap, reg + 1, &reg_val);
-	if (err)
-		return err;
-
-	result |= reg_val;
-
-	return result;
-}
-
 /**
  * axp20x_match_device(): Setup axp20x variant related fields
  *
-- 
2.39.2



