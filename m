Delivery-date: Fri, 05 Jun 2026 14:59:36 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU9A-002cXA-0v
	for lore@lore.pengutronix.de;
	Fri, 05 Jun 2026 14:59:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1wVU99-0003rO-KV
	for lore@pengutronix.de; Fri, 05 Jun 2026 14:59:36 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=C1Sh29GqSbG48cjaVqpF26T1mB3AsHulQnSuZbinwps=; b=lDBOoUZEPi8O9VUCoZTuRZGnMd
	hX2Jgj3h+s3XeZp+AJ9BwBzqIzvNlOiPLrOo2ToXpeFgw4fF9LZcjElj2aQ7CB6fkq8KSHkc5VNK7
	71ReSkQDRLby+hyYtEEVbhRTzyT3/r7Qbbe2TscZafA4MHo8YB+FdK6Eg9BFNzL2BKGZvFjCt2739
	tnYNkhePa/IRpev1MY7UHQjXhoGBxmDxGzT9zjU0KkMObaip8eerJmDpKJUD0dO+D0MI/fssuJd7i
	5hzJerg/VMw01KLuovKFciV29ZCW6VtgawC8+PrrgBZG8fyPM99ep6dwOfwaV+AYoC2g4YmOkXKFL
	6GsIkGZg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7w-00000000e5a-2nra;
	Fri, 05 Jun 2026 12:58:20 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.99.1 #2 (Red Hat Linux))
	id 1wVU7s-00000000e3h-2IJO
	for barebox@lists.infradead.org;
	Fri, 05 Jun 2026 12:58:19 +0000
Received: from dude05.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::54])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.tretter@pengutronix.de>)
	id 1wVU7p-0003Xw-OF; Fri, 05 Jun 2026 14:58:13 +0200
From: Michael Tretter <m.tretter@pengutronix.de>
Date: Fri, 05 Jun 2026 14:58:15 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260605-socfpga-debug-uart-v1-3-8454bfc709bf@pengutronix.de>
References: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
In-Reply-To: <20260605-socfpga-debug-uart-v1-0-8454bfc709bf@pengutronix.de>
To: Sascha Hauer <s.hauer@pengutronix.de>, 
 BAREBOX <barebox@lists.infradead.org>
Cc: Michael Tretter <m.tretter@pengutronix.de>
X-Mailer: b4 0.14.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.9.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260605_055816_597744_D6D7200F 
X-CRM114-Status: UNSURE (   8.75  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/3] arm: socfpga: axe5-eagle: always use UART0
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Configuring debug_ll with the UART from the configuration, while
configuring the PBL console with a hard-coded address may lead to
inconsistencies and confusion.

Avoid this by explicitly configuring debug_ll with a UART defined by the
board low level code.

While at it, replace the address with the UART port macro.

Signed-off-by: Michael Tretter <m.tretter@pengutronix.de>
---
 arch/arm/boards/arrow-axe5-eagle/lowlevel.c | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
index f946a8b9f616..b0a2d6673e0f 100644
--- a/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
+++ b/arch/arm/boards/arrow-axe5-eagle/lowlevel.c
@@ -15,10 +15,12 @@ extern char __dtb_z_socfpga_agilex5_axe5_eagle_start[];
 
 static noinline void axe5_eagle_continue(void)
 {
+	void __iomem *uart = IOMEM(SOCFPGA_UART_BASE(0));
+
 	agilex5_clk_init();
 
-	socfpga_uart_setup_ll();
-	pbl_set_putc(socfpga_uart_putc, (void *) SOCFPGA_UART0_ADDRESS);
+	socfpga_uart_setup(uart);
+	pbl_set_putc(socfpga_uart_putc, uart);
 
 	pr_debug("Lowlevel init done\n");
 

-- 
2.47.3



