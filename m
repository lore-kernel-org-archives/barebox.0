Delivery-date: Wed, 25 Aug 2021 14:57:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSl-0001HF-JZ
	for lore@lore.pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mIsSf-0005bu-FK
	for lore@pengutronix.de; Wed, 25 Aug 2021 14:57:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Vwj84S7i1sivqIrZR898ELZDj2xMxpRo80UJDpisN38=; b=y3b0hBJOnQLWKg
	ouSjIm8qFd4fY04Qq9X9puK0T8S1jym49CeKb7rd7U2mvpKvUjelFc8CrbD68gKqRMaNeJtXdoEtp
	9TZTF49K/hHC3sKAukaRPlYvIOjnw57ODSNQh7Wyy7JW/m6xQCb11I2pP/bOesLHWISKKDPU6laoL
	hBKPmlEy3l4dPnsLl6b49bXmmOY6+t5i7ZhtPAEBmy2mjHOpR92IhYCqI0AJroioGHEVR1a0v8MDO
	IyFnlQOpdi0/AIuAHjghTHFllv6tlx5luYIEYoQR0ZVwvwRDAKSf1LQUU5OCcBUsVIgcWIUbNvrWx
	ULueMzgO1CSs+L15c6PA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mIsQf-006y6J-2A; Wed, 25 Aug 2021 12:54:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mIsQU-006y3X-U0
 for barebox@lists.infradead.org; Wed, 25 Aug 2021 12:54:46 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQL-00050m-6T; Wed, 25 Aug 2021 14:54:33 +0200
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1mIsQK-00070l-St; Wed, 25 Aug 2021 14:54:32 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Wed, 25 Aug 2021 14:54:27 +0200
Message-Id: <20210825125430.26901-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210825125430.26901-1-o.rempel@pengutronix.de>
References: <20210825125430.26901-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210825_055443_008799_D099288B 
X-CRM114-Status: GOOD (  13.15  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v1 1/4] ARM: boards: protonic-imx6: enable deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Enable deep-probe support and fix gpio dependency for the early probe.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-imx6/board.c | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/arch/arm/boards/protonic-imx6/board.c b/arch/arm/boards/protonic-imx6/board.c
index 9ded94b3b0..81e09a8d8b 100644
--- a/arch/arm/boards/protonic-imx6/board.c
+++ b/arch/arm/boards/protonic-imx6/board.c
@@ -5,6 +5,7 @@
 
 #include <bbu.h>
 #include <common.h>
+#include <deep-probe.h>
 #include <environment.h>
 #include <fcntl.h>
 #include <gpio.h>
@@ -707,8 +708,17 @@ static int prt_imx6_get_id(struct prt_imx6_priv *priv)
 {
 	struct gpio gpios_type[] = GPIO_HW_TYPE_ID;
 	struct gpio gpios_rev[] = GPIO_HW_REV_ID;
+	struct device_node *gpio_np = NULL;
 	int ret;
 
+	gpio_np = of_find_node_by_name(NULL, "gpio@20a0000");
+	if (!gpio_np)
+		return -ENODEV;
+
+	ret = of_device_ensure_probed(gpio_np);
+	if (ret)
+		return ret;
+
 	ret = gpio_array_to_id(gpios_type, ARRAY_SIZE(gpios_type), &priv->hw_id);
 	if (ret)
 		goto exit_get_id;
@@ -1071,6 +1081,7 @@ static const struct of_device_id prt_imx6_of_match[] = {
 	{ .compatible = "prt,prtwd3", .data = &prt_imx6_cfg_prtwd3 },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(prt_imx6_of_match);
 
 static struct driver_d prt_imx6_board_driver = {
 	.name = "board-protonic-imx6",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

