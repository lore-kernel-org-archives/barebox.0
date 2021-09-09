Delivery-date: Thu, 09 Sep 2021 11:15:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9u-0004B9-4Z
	for lore@lore.pengutronix.de; Thu, 09 Sep 2021 11:15:50 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOG9t-0004z5-5W
	for lore@pengutronix.de; Thu, 09 Sep 2021 11:15:49 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CECd166MD5sWtZbmVwNYhMJjZ5C+sButnXPiKAjqnrc=; b=GZTYGkCIaKDoDa
	qFD5FYuV6BMCJu9pXjrQdJE87otIjqWNptGPwp0uuznN8hE5q3+cHZ/ki/empcl6Ycu/xMRhpt9p1
	cMjXZLsUQfxYxhsT4D/aamk2i3peZHewgUtSJvohRxKEiY9FFWmYF9PmYvfXUUK8CCq431lbLEh4t
	wSjI6LXp+HE5Gvd+vuBtncxuQGBIO+/0BgTBGkly2fk4hGQbMZMhiZ77PoDf4ZlTAdd1RLggtHcow
	YOC5//wFp4oi+bPZ1lhMJQWT9ImeCScCrU3+CzKge8+KCMh7xLxIP5Np3nFXG9mh2v/vl+ucEuuXc
	fSzlDnxg1X3NkrzFFglA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOG8F-008jvG-S2; Thu, 09 Sep 2021 09:14:07 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOG8A-008jt7-JO
 for barebox@lists.infradead.org; Thu, 09 Sep 2021 09:14:03 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG87-0004Lm-5O; Thu, 09 Sep 2021 11:13:59 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mOG86-0002Ta-Ee; Thu, 09 Sep 2021 11:13:58 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  9 Sep 2021 11:13:47 +0200
Message-Id: <20210909091349.9446-6-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210909091349.9446-1-o.rempel@pengutronix.de>
References: <20210909091349.9446-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210909_021402_675687_BFEE86ED 
X-CRM114-Status: GOOD (  13.87  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 6/8] ARM: boards: skov-imx6: start using deep-probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Port Skov boards to the deep-propbe and reduce boot time by 100msec.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/skov-imx6/board.c | 22 +++++++++++++++++-----
 1 file changed, 17 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boards/skov-imx6/board.c b/arch/arm/boards/skov-imx6/board.c
index 8961c8dd53..618c6eb6b4 100644
--- a/arch/arm/boards/skov-imx6/board.c
+++ b/arch/arm/boards/skov-imx6/board.c
@@ -2,16 +2,17 @@
 
 #define pr_fmt(fmt) "skov-imx6: " fmt
 
+#include <bootsource.h>
 #include <common.h>
-#include <init.h>
-#include <mach/bbu.h>
+#include <deep-probe.h>
 #include <environment.h>
-#include <bootsource.h>
 #include <globalvar.h>
-#include <net.h>
-#include <of_gpio.h>
 #include <gpio.h>
+#include <init.h>
 #include <linux/micrel_phy.h>
+#include <mach/bbu.h>
+#include <net.h>
+#include <of_gpio.h>
 
 #include "version.h"
 
@@ -499,10 +500,20 @@ static int skov_imx6_fixup(struct device_node *root, void *unused)
  */
 static void skov_init_board(const struct board_description *variant)
 {
+	struct device_node *gpio_np = NULL;
 	struct device_node *np;
 	char *environment_path, *envdev;
 	int ret;
 
+	gpio_np = of_find_node_by_name(NULL, "gpio@20b4000");
+	if (gpio_np) {
+		ret = of_device_ensure_probed(gpio_np);
+		if (ret)
+			pr_warn("Can't probe GPIO node\n");
+	} else {
+		pr_warn("Can't get GPIO node\n");
+	}
+
 	imx6_bbu_internal_spi_i2c_register_handler("spiflash", "/dev/m25p0.barebox",
 		BBU_HANDLER_FLAG_DEFAULT);
 
@@ -661,6 +672,7 @@ static __maybe_unused struct of_device_id skov_version_ids[] = {
 		/* sentinel */
 	}
 };
+BAREBOX_DEEP_PROBE_ENABLE(skov_version_ids);
 
 static struct driver_d skov_version_driver = {
 	.name = "skov-imx6",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

