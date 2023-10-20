Delivery-date: Fri, 20 Oct 2023 09:21:30 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjp4-00FGbQ-JB
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:21:30 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjp3-0007G9-4W
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:21:29 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=lnwwCQzLTuV4nkfnO1S5f8DTme+U8jk8rzAMAOxy7VI=; b=yXqtCJFO//0mmeMbg+uWQxgtV6
	DZKoa2yoV0lCJ2HLx6OseojMkxbCEaZ0IRkBJ5En4g7EIjgZOcuFhFK8mnhPcDdWz/JEReVYvMZUe
	35B7TmGavaGdlLT57HYetVbQFGgdMstbLZrS70f5tOZcr99uMfC325I/NjQZ8+7MJGGY5X3sTMKlN
	rxriN+B+twqNKeKphH2An052Ugkpv1LV6jbpEScawDLXMszqXBS8YTkZsdR6dh4WZXXipmb6fjVX3
	ljqoRwrTopJCz08ifKGbXSeq9F2iBgGeh9wWpajai/TNFyEzTMDDvXrlAUx9OEFcUXAEGt2cZfeX6
	d8pdMwJg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmo-001OyB-05;
	Fri, 20 Oct 2023 07:19:10 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001Ovb-05
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Dj-5p; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLs-GK; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRn-1M;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:52 +0200
Message-Id: <20231020071853.2826528-11-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_065098_E7DEB75D 
X-CRM114-Status: GOOD (  11.32  )
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
Subject: [PATCH 10/11] mfd: stm32-timers: remove dependency of mfd/stm32-timers.h on regmap.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Drivers for the STM32 timer MFD and the PWM within it used regmap API
without directly including the regmap.h header. Fix that and replace
the regmap.h inclusion in mfd/stm32-timers.h with a forward declaration.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/stm32-timers.c       | 1 +
 drivers/pwm/pwm-stm32.c          | 1 +
 include/linux/mfd/stm32-timers.h | 3 ++-
 3 files changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/stm32-timers.c b/drivers/mfd/stm32-timers.c
index a7e9f53dbfbd..3b478001051b 100644
--- a/drivers/mfd/stm32-timers.c
+++ b/drivers/mfd/stm32-timers.c
@@ -11,6 +11,7 @@
 #include <io.h>
 #include <linux/bitfield.h>
 #include <linux/mfd/stm32-timers.h>
+#include <linux/regmap.h>
 #include <of.h>
 #include <linux/reset.h>
 
diff --git a/drivers/pwm/pwm-stm32.c b/drivers/pwm/pwm-stm32.c
index e73e9965576a..5c2029ab6ad6 100644
--- a/drivers/pwm/pwm-stm32.c
+++ b/drivers/pwm/pwm-stm32.c
@@ -14,6 +14,7 @@
 #include <io.h>
 #include <linux/bitfield.h>
 #include <linux/mfd/stm32-timers.h>
+#include <linux/regmap.h>
 #include <linux/math64.h>
 #include <of.h>
 #include <pwm.h>
diff --git a/include/linux/mfd/stm32-timers.h b/include/linux/mfd/stm32-timers.h
index 28fad44598f9..35aa0681baeb 100644
--- a/include/linux/mfd/stm32-timers.h
+++ b/include/linux/mfd/stm32-timers.h
@@ -8,7 +8,6 @@
 #define _LINUX_STM32_GPTIMER_H_
 
 #include <clock.h>
-#include <regmap.h>
 
 #define TIM_CR1		0x00	/* Control Register 1      */
 #define TIM_CR2		0x04	/* Control Register 2      */
@@ -88,6 +87,8 @@
 #define TIM_BDTR_BKF_SHIFT	16
 #define TIM_BDTR_BK2F_SHIFT	20
 
+struct regmap;
+
 struct stm32_timers {
 	struct clk *clk;
 	struct regmap *regmap;
-- 
2.39.2



