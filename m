Delivery-date: Wed, 22 Nov 2023 19:14:51 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rkQ-004gOl-2l
	for lore@lore.pengutronix.de;
	Wed, 22 Nov 2023 19:14:51 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1r5rkQ-0001yl-U8
	for lore@pengutronix.de; Wed, 22 Nov 2023 19:14:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=H/Ypnj/lyqOrL+jJVg4mGNjKpE2A703LThx9MWhDBDI=; b=qrNh+7IN1daxPRaqRkULLi6ac1
	i2mxAU9OkdwNSz/z/BrQdbQ9HgFcI3X+1TUjZCt/PqDrASL8/Ev1QosiCgR1P0ixQxCv5V++M8+O+
	n11edGeKMrFU97GP1v7AkDfsNnWFWCY4ogREqY4FfIFJmpo+P1VoLqclMtbTWu4JgvmkN1Aw4x4YH
	k4+3W92G15S8TVxGv62y2kREiaYrWhtsgwJNiTdgMjTIosxgRXhq+AhI7bKwMg1gzwh7xvKApUg3u
	a7eqV5dLO0f7BNrBHFoKYpV/Ssmw1G0+TxxMzRNgMRhWREs+vxWuWljWplhFx3HqJ82bITh6GS9lb
	SV0+fQzw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rj3-002mXy-0a;
	Wed, 22 Nov 2023 18:13:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1r5rj0-002mV9-0w
	for barebox@lists.infradead.org;
	Wed, 22 Nov 2023 18:13:23 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5riy-0001Q3-M4; Wed, 22 Nov 2023 19:13:20 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5riy-00As1a-9h; Wed, 22 Nov 2023 19:13:20 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1r5riy-002zHA-0e;
	Wed, 22 Nov 2023 19:13:20 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 22 Nov 2023 19:13:19 +0100
Message-Id: <20231122181319.706228-1-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231122_101322_337273_245B80BA 
X-CRM114-Status: GOOD (  10.59  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: stm32mp: stm32mp15x-ev1: enable deep probe
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The board boots fine with deep probe enabled, so enable it to eliminate
probe deferrals.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 arch/arm/boards/stm32mp15x-ev1/board.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/boards/stm32mp15x-ev1/board.c b/arch/arm/boards/stm32mp15x-ev1/board.c
index 51c3bb21e992..fd58e2817b0b 100644
--- a/arch/arm/boards/stm32mp15x-ev1/board.c
+++ b/arch/arm/boards/stm32mp15x-ev1/board.c
@@ -2,6 +2,7 @@
 
 #include <bootsource.h>
 #include <common.h>
+#include <deep-probe.h>
 #include <init.h>
 #include <mach/stm32mp/bbu.h>
 
@@ -30,7 +31,7 @@ static const struct of_device_id ed1_of_match[] = {
 	{ .compatible = "st,stm32mp157c-ed1" },
 	{ /* sentinel */ },
 };
-MODULE_DEVICE_TABLE(of, ed1_of_match);
+BAREBOX_DEEP_PROBE_ENABLE(ed1_of_match);
 
 static struct driver ed1_board_driver = {
 	.name = "board-stm32mp15x-ed1",
-- 
2.39.2



