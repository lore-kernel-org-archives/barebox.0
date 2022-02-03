Delivery-date: Thu, 03 Feb 2022 11:49:28 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZg8-004bcT-Qw
	for lore@lore.pengutronix.de; Thu, 03 Feb 2022 11:49:28 +0100
Received: from bombadil.infradead.org ([198.137.202.133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nFZg7-0006UO-8i
	for lore@pengutronix.de; Thu, 03 Feb 2022 11:49:27 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=MqAElVKLujR5loyDazWeUo1C0/XVP7Mi0anOfCUWAWo=; b=aiwV9yu5cNU3t7
	ztzO6hIqfA0OVLCsOIvfwuSTdkKlDPFfPzfNAtezwEKTF+Mh1q5gYexjDxRDeyMsBnTnZfWOQJX+0
	hh50iCGQQI3EaN8mOuy6wAe+3SgtujRrnq1WypbXDxxJPiKBSq8E17qRnwrsTWSVGT6B/KPLnl1Bn
	7ZHzLHW7X9UwoeC3hwdEnyqNy42KgHPwFcAFPZMqR6Shzpwq+w4h4tHrF+QOVbt+3mk0MwWORg7nz
	i7HuLQ2MLzXjddD0fuWLdHqKKIm3SxFqAqgK3LMhCTkRKdwFnJXQizu4VfkUMwo1K38ylWCdW4sQ/
	5EdqjixwBFGlPh8TqfMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nFZek-000qof-Ge; Thu, 03 Feb 2022 10:48:02 +0000
Received: from metis.ext.pengutronix.de ([85.220.165.71])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nFZef-000qR1-TG
 for barebox@lists.infradead.org; Thu, 03 Feb 2022 10:47:59 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1nFZcg-0005yK-Cq; Thu, 03 Feb 2022 11:45:54 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1nFZcf-00DFfM-PP; Thu, 03 Feb 2022 11:45:53 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Thu,  3 Feb 2022 11:45:52 +0100
Message-Id: <20220203104552.3158202-7-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220203104552.3158202-1-o.rempel@pengutronix.de>
References: <20220203104552.3158202-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220203_024757_961175_18B082A3 
X-CRM114-Status: GOOD (  11.13  )
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
X-SA-Exim-Connect-IP: 198.137.202.133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v3 6/6] ARM: rpi: enable deep-probe support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With deep-probe enabled we can reduce boot time from 250msec to 190msec
on the RPi2

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 6e62d19643..9aa150de56 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -2,6 +2,7 @@
 // SPDX-FileCopyrightText: 2009 Carlo Caione <carlo@carlocaione.org>
 
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <fs.h>
 #include <of.h>
@@ -607,6 +608,7 @@ static const struct of_device_id rpi_of_match[] = {
 	{ .compatible = "raspberrypi,3-model-b-plus", .data = rpi_3_model_b_plus },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(rpi_of_match);
 
 static struct driver_d rpi_board_driver = {
 	.name = "board-rpi",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

