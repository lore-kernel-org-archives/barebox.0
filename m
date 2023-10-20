Delivery-date: Fri, 20 Oct 2023 09:20:33 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo9-00FGX9-Ix
	for lore@lore.pengutronix.de; Fri, 20 Oct 2023 09:20:33 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qtjo8-0006mq-1G
	for lore@pengutronix.de; Fri, 20 Oct 2023 09:20:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=g9aoYO9wzWMtOEVWJf4YfdH21kcw8fgKTHBbHf2rAKk=; b=MRAM2QPt/Cx1bDJSSz9v1HpBL/
	eYYweNoQTmspmVb+dDd3tdSSVUJ7cuk+zg/Lcc1EuUsGUTuoPBhoFeC6o9wDAl+c644XKd19QnoY1
	klJ6j9QFHOTz9BlnPPz0JDo3iD4KGBMCPGwwDxSkebX1/UZZ+Fm2m3sjvtTvFh3Z9i0CcJg10K24D
	z/7suHKMc4K3sEleIQouxFsbmYVaLyLDWZybHqe8EP40v62THgMrIKe52Qv5NVerz2abHLsEWjIlb
	LroZzxBYwB8idOlPwe/Vop2vw/Tg/4l0eimV7zidXutVL+EWBjPOB6EiYd7dCRuE20NYXs0+FsWjk
	XYssNBrA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmt-001P13-1U;
	Fri, 20 Oct 2023 07:19:15 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qtjmk-001Ova-0Z
	for barebox@lists.infradead.org;
	Fri, 20 Oct 2023 07:19:10 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmg-0006Df-2q; Fri, 20 Oct 2023 09:19:02 +0200
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-002yLl-F5; Fri, 20 Oct 2023 09:19:01 +0200
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.96)
	(envelope-from <afa@pengutronix.de>)
	id 1qtjmf-00BrRS-1E;
	Fri, 20 Oct 2023 09:19:01 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Fri, 20 Oct 2023 09:18:47 +0200
Message-Id: <20231020071853.2826528-6-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
References: <20231020071853.2826528-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231020_001906_266244_9ACCE59E 
X-CRM114-Status: UNSURE (   9.49  )
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
Subject: [PATCH 05/11] mfd: syscon: do not include regmap.h from mfd/syscon.h
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

mfd/syscon.h include regmap.h when a struct regmap forward declaration
would've sufficed. Let's forward declare and fix users of the header to
directly include linux/regmap.h where needed.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/mfd/syscon.c                               | 1 +
 drivers/net/designware_starfive.c                  | 1 +
 drivers/net/designware_stm32.c                     | 1 +
 drivers/phy/rockchip/phy-rockchip-inno-usb2.c      | 1 +
 drivers/phy/rockchip/phy-rockchip-naneng-combphy.c | 1 +
 drivers/pinctrl/pinctrl-rockchip.c                 | 1 +
 drivers/power/reset/syscon-poweroff.c              | 1 +
 drivers/power/reset/syscon-reboot.c                | 1 +
 drivers/serial/serial_clps711x.c                   | 1 +
 drivers/watchdog/stpmic1_wdt.c                     | 1 +
 include/mfd/syscon.h                               | 2 +-
 11 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/mfd/syscon.c b/drivers/mfd/syscon.c
index 16d78de2afed..3e12123b572e 100644
--- a/drivers/mfd/syscon.c
+++ b/drivers/mfd/syscon.c
@@ -16,6 +16,7 @@
 #include <of_address.h>
 #include <linux/err.h>
 #include <linux/clk.h>
+#include <linux/regmap.h>
 
 #include <mfd/syscon.h>
 
diff --git a/drivers/net/designware_starfive.c b/drivers/net/designware_starfive.c
index 9ab0de8be54f..aff2cc10e19c 100644
--- a/drivers/net/designware_starfive.c
+++ b/drivers/net/designware_starfive.c
@@ -6,6 +6,7 @@
 #include <common.h>
 #include <init.h>
 #include <linux/reset.h>
+#include <linux/regmap.h>
 #include <linux/clk.h>
 #include <mfd/syscon.h>
 #include <soc/starfive/sysmain.h>
diff --git a/drivers/net/designware_stm32.c b/drivers/net/designware_stm32.c
index ffcd4a5b7618..54dabcc8d32a 100644
--- a/drivers/net/designware_stm32.c
+++ b/drivers/net/designware_stm32.c
@@ -11,6 +11,7 @@
 #include <net.h>
 #include <linux/clk.h>
 #include <mfd/syscon.h>
+#include <linux/regmap.h>
 
 #include "designware_eqos.h"
 
diff --git a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
index fe9f4fd32578..7349a92d567c 100644
--- a/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
+++ b/drivers/phy/rockchip/phy-rockchip-inno-usb2.c
@@ -15,6 +15,7 @@
 #include <linux/phy/phy.h>
 #include <linux/clk.h>
 #include <linux/err.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <regulator.h>
 
diff --git a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
index 5fbbe1a4e4b5..9676d8fe9998 100644
--- a/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
+++ b/drivers/phy/rockchip/phy-rockchip-naneng-combphy.c
@@ -17,6 +17,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <linux/reset.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 #include <linux/iopoll.h>
 #include <dt-bindings/phy/phy.h>
diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 917af927b609..c1e937ea2cb1 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -16,6 +16,7 @@
 #include <init.h>
 #include <malloc.h>
 #include <mfd/syscon.h>
+#include <linux/regmap.h>
 #include <of.h>
 #include <of_address.h>
 #include <pinctrl.h>
diff --git a/drivers/power/reset/syscon-poweroff.c b/drivers/power/reset/syscon-poweroff.c
index cdcc13268426..321bd1fc7be0 100644
--- a/drivers/power/reset/syscon-poweroff.c
+++ b/drivers/power/reset/syscon-poweroff.c
@@ -9,6 +9,7 @@
 #include <common.h>
 #include <init.h>
 #include <poweroff.h>
+#include <linux/regmap.h>
 #include <mfd/syscon.h>
 
 static struct regmap *map;
diff --git a/drivers/power/reset/syscon-reboot.c b/drivers/power/reset/syscon-reboot.c
index 90b125c33519..61bea6169cb6 100644
--- a/drivers/power/reset/syscon-reboot.c
+++ b/drivers/power/reset/syscon-reboot.c
@@ -9,6 +9,7 @@
 #include <init.h>
 #include <restart.h>
 #include <mfd/syscon.h>
+#include <linux/regmap.h>
 
 struct syscon_reboot_context {
 	struct regmap *map;
diff --git a/drivers/serial/serial_clps711x.c b/drivers/serial/serial_clps711x.c
index 950d22c26cb1..2a284909bfa6 100644
--- a/drivers/serial/serial_clps711x.c
+++ b/drivers/serial/serial_clps711x.c
@@ -8,6 +8,7 @@
 #include <linux/clk.h>
 #include <linux/err.h>
 #include <mfd/syscon.h>
+#include <linux/regmap.h>
 
 #define UARTDR			0x00
 # define UARTDR_FRMERR		(1 << 8)
diff --git a/drivers/watchdog/stpmic1_wdt.c b/drivers/watchdog/stpmic1_wdt.c
index 4bde4f4e203e..4a0519690aed 100644
--- a/drivers/watchdog/stpmic1_wdt.c
+++ b/drivers/watchdog/stpmic1_wdt.c
@@ -11,6 +11,7 @@
 #include <linux/iopoll.h>
 #include <poweroff.h>
 #include <mfd/syscon.h>
+#include <linux/regmap.h>
 #include <restart.h>
 #include <reset_source.h>
 
diff --git a/include/mfd/syscon.h b/include/mfd/syscon.h
index 3ccfd7fb5b8a..f22d4e620b05 100644
--- a/include/mfd/syscon.h
+++ b/include/mfd/syscon.h
@@ -14,7 +14,7 @@
 #ifndef __MFD_SYSCON_H__
 #define __MFD_SYSCON_H__
 
-#include <regmap.h>
+struct regmap;
 
 #ifdef CONFIG_MFD_SYSCON
 void __iomem *syscon_base_lookup_by_phandle
-- 
2.39.2



