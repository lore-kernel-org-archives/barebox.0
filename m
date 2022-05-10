Delivery-date: Tue, 10 May 2022 14:16:12 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOmh-008Hnk-Vx
	for lore@lore.pengutronix.de; Tue, 10 May 2022 14:16:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1noOmg-0000T7-JR
	for lore@pengutronix.de; Tue, 10 May 2022 14:16:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=xINvwqqw2xvC8ih0xly0So556OO43aUQQgzmX6ISACw=; b=pMc3+fjj/JdsXj
	tKn27jl2AnE26fjfirr1oVHQpZE8wazjnhgaCZMZt0lWXjrENld9lY/k4XKcoEsUsq8UkquB/vjxF
	JtVw8RyKTiEAHr/A357ssjY9saHmkq+fVa9fpmPp9dX/wn6MwykFQCHrRqqHSbQfLNdIqk9eqtDpZ
	99LJUWBG5h+uCgbTFWCpKsI4qpVaELKYUQdpSXcKpddUG8L71DMkT6CWfCU4xF7JjGxwRKevtIOFG
	k53huBjUYD/Vr6CXiK0/fnPocl5ruqIH2HTONVa/GENavdHbtN7RWfxBQDsLotPXPh++Hxyxns1vy
	sLSlW1UIrhuKA7MB2vJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1noOlT-001n9E-Vs; Tue, 10 May 2022 12:14:56 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1noOlP-001n6u-8y
 for barebox@lists.infradead.org; Tue, 10 May 2022 12:14:52 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1noOlN-000097-Uo; Tue, 10 May 2022 14:14:49 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOlO-001UDr-JH; Tue, 10 May 2022 14:14:49 +0200
Received: from ore by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1noOlM-000uKr-Lz; Tue, 10 May 2022 14:14:48 +0200
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Tue, 10 May 2022 14:14:46 +0200
Message-Id: <20220510121447.216507-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220510_051451_372405_7E79D6E0 
X-CRM114-Status: GOOD (  11.39  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v1 1/2] ARM: boards: protonic-stm32mp1: enable deep-probe
 support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

We are on early development stage, so enable deep-probe support as
early as possible to detect and fix possible regressions.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/protonic-stm32mp1/board.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boards/protonic-stm32mp1/board.c b/arch/arm/boards/protonic-stm32mp1/board.c
index 84a3d8eabc..174454ed27 100644
--- a/arch/arm/boards/protonic-stm32mp1/board.c
+++ b/arch/arm/boards/protonic-stm32mp1/board.c
@@ -7,6 +7,7 @@
 #include <init.h>
 #include <mach/bbu.h>
 #include <of_device.h>
+#include <deep-probe.h>
 
 /* board specific flags */
 #define PRT_STM32_BOOTSRC_SD		BIT(2)
@@ -118,6 +119,7 @@ static const struct of_device_id prt_stm32_of_match[] = {
 	{ .compatible = "prt,prtt1s", .data = &prt_stm32_prtt1a },
 	{ /* sentinel */ },
 };
+BAREBOX_DEEP_PROBE_ENABLE(prt_stm32_of_match);
 
 static struct driver_d prt_stm32_board_driver = {
 	.name = "board-protonic-stm32",
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

