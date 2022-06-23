Delivery-date: Thu, 23 Jun 2022 15:09:03 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZx-00BzD3-O6
	for lore@lore.pengutronix.de; Thu, 23 Jun 2022 15:09:02 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o4MZx-0007C1-88
	for lore@pengutronix.de; Thu, 23 Jun 2022 15:09:02 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Q42Gw5hOS8yRIDXMKQvQ0JvJrKsaHS2BbE2tqFzutY0=; b=vPo2VHtH7NeOvLD/XV5xMLxWFx
	eWUNrXnbn0Ws1ODc+0Avhcle+lDILTbXkBgal0x5elglzxU1ljctkhscK/HwyuV5fwbiXvsabXKGy
	RS1HtH4H3k6/H1Fw3xq/i9IBjBine4t2vZ6zYr4WyCqXF9S2ddihqXpRzJV5rcT/JZS6R5I9blEEY
	nI/YYym500S1x6Psd8lKqUibD5wuwuvSAve7VNZ7lHBhI7AsS0AhgFy4P803h0QYj6P/oE1gWTcRV
	P4mDKo+7Mo7AtNwQi+3VD88V09bcOzY3/9nmUG3vG7vIZMGHDP310glcnV3pytM+4BS3ouLD8oroa
	LnAQzaTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYj-00FFov-M9; Thu, 23 Jun 2022 13:07:45 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o4MYf-00FFnh-3a
	for barebox@lists.infradead.org; Thu, 23 Jun 2022 13:07:42 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYN-0006vg-I9; Thu, 23 Jun 2022 15:07:23 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-002FGO-7m; Thu, 23 Jun 2022 15:07:22 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1o4MYL-006rWp-Iv; Thu, 23 Jun 2022 15:07:21 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Teresa Remmet <t.remmet@phytec.de>,
	lst@pengutronix.de,
	Joacim Zetterling <joacim.zetterling@westermo.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu, 23 Jun 2022 15:07:16 +0200
Message-Id: <20220623130717.1447999-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
References: <20220623130717.1447999-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220623_060741_178593_65577300 
X-CRM114-Status: GOOD (  10.34  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 master 4/5] ARM: i.MX8MQ: initialize ADDRMAP7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Older NXP DDR spreadsheets don't initialize ADDRMAP7, leaving it at its
POR default of zero. Now that barebox looks at ADDRMAP7 to be able to
correctly detect bigger memory sizes, barebox proper on boards with
older spreadsheets may read back 4x times as much RAM as actually
fitted.

MNT Reform LPDDR4 setup already writes 0xf0f (the neutral ignore-me
value for the register) into ADDRMAP7. Follow suit for the other
i.MX8MQ boards that don't. In-tree Non-i.MX8MQ boards aren't affected.
Out of tree boards might and will get a common workaround in a follow-up
commit. No workaround for out of tree i.MX8MQ boards.

Tested on i.MX8M-EVK (i.MX8MQuad), where now 3G are correctly detected
instead of 12G.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 arch/arm/boards/nxp-imx8mq-evk/ddr_init.c    | 3 ++-
 arch/arm/boards/phytec-som-imx8mq/ddr_init.c | 1 +
 arch/arm/boards/zii-imx8mq-dev/ddr_init.c    | 3 ++-
 3 files changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
index 39addea97320..b1f752c4cb20 100644
--- a/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
+++ b/arch/arm/boards/nxp-imx8mq-evk/ddr_init.c
@@ -81,6 +81,7 @@ void ddr_init(void)
 	reg32_write(0x3d400200,0x15);
 	reg32_write(0x3d40020c,0x0);
 	reg32_write(0x3d400210,0x1f1f);
+	reg32_write(0x3d40021c,0xf0f);
 	reg32_write(0x3d400204,0x80808);
 	reg32_write(0x3d400214,0x7070707);
 	reg32_write(0x3d400218,0x48080707);
@@ -222,4 +223,4 @@ void ddr_init(void)
 	/* enable DDR auto-refresh mode */
 	tmp = reg32_read(DDRC_RFSHCTL3(0)) & ~0x1;
 	reg32_write(DDRC_RFSHCTL3(0), tmp);
-}
\ No newline at end of file
+}
diff --git a/arch/arm/boards/phytec-som-imx8mq/ddr_init.c b/arch/arm/boards/phytec-som-imx8mq/ddr_init.c
index aa327d3fb0cb..c6812e3efaec 100644
--- a/arch/arm/boards/phytec-som-imx8mq/ddr_init.c
+++ b/arch/arm/boards/phytec-som-imx8mq/ddr_init.c
@@ -84,6 +84,7 @@ void ddr_init(void)
 	reg32_write(0x3d400204,0x80808);
 	reg32_write(0x3d400214,0x7070707);
 	reg32_write(0x3d400218,0xf070707);
+	reg32_write(0x3d40021c,0xf0f);
 	reg32_write(0x3d402020,0x1);
 	reg32_write(0x3d402024,0x518b00);
 	reg32_write(0x3d402050,0x20d040);
diff --git a/arch/arm/boards/zii-imx8mq-dev/ddr_init.c b/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
index 7a955193fd7c..902d0ee3cd6e 100644
--- a/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
+++ b/arch/arm/boards/zii-imx8mq-dev/ddr_init.c
@@ -81,6 +81,7 @@ void ddr_init(void)
 	reg32_write(0x3d400200,0x17);
 	reg32_write(0x3d40020c,0x0);
 	reg32_write(0x3d400210,0x1f1f);
+	reg32_write(0x3d40021c,0xf0f);
 	reg32_write(0x3d400204,0x80808);
 	reg32_write(0x3d400214,0x7070707);
 	reg32_write(0x3d400218,0x7070707);
@@ -222,4 +223,4 @@ void ddr_init(void)
 	/* enable DDR auto-refresh mode */
 	tmp = reg32_read(DDRC_RFSHCTL3(0)) & ~0x1;
 	reg32_write(DDRC_RFSHCTL3(0), tmp);
-}
\ No newline at end of file
+}
-- 
2.30.2



