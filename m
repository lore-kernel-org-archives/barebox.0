Delivery-date: Fri, 14 Jan 2022 09:23:13 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hrd-001s1f-VU
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:23:13 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hrc-0006yv-Os
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:23:13 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3b9RwnWORfsI6zxQjTDb5Obuw5O55GJE2xg3lsbp77s=; b=YDhpM1XKsu3C7t
	TQriGX16LdGVtkRJKapi66BGuav3hlS/rZZ5tThcT7Kl0jT1NuTLE6fZsQeZmj4B2BcSBIjQ+2fmL
	3xBelpMPMyMMwllpoQ83+Gy7zycqQUwRifR26chJxQ1KM11DmsvDSNs5zF3l7IlvOeHzAQD57tTdE
	C7yn0INJmeo4X6Zpueu6U22Ps/7ZQ5m9kXoAVMjhR2xultW8zhfqy654F3ckAxW11rOymwRcAXRNn
	1Nq8ZyC4K83ZEEqf5j/8OnP+n6bWotSot0cEHvieuklAF34kT0X1n4s2cWuNF/hLyPQdwdwiHc3nX
	uR9sWILGxUcr5yPUPMjA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8HqR-008DgO-Cx; Fri, 14 Jan 2022 08:21:59 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8HqM-008Deh-76
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:21:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1n8HqJ-0006f9-BK; Fri, 14 Jan 2022 09:21:51 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1n8HqI-001Gco-S5; Fri, 14 Jan 2022 09:21:50 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 14 Jan 2022 09:21:41 +0100
Message-Id: <20220114082141.302151-2-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220114082141.302151-1-o.rempel@pengutronix.de>
References: <20220114082141.302151-1-o.rempel@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_002154_283963_C3F78CC2 
X-CRM114-Status: GOOD (  10.82  )
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
Subject: [PATCH v1 2/2] ARM: rpi: set uart0-pl0110 clk to 48MHz
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

At least on RPi2 this clock is 48MHz. This issue was not visible,
becouse amba-pl011 driver was not reseting UART controller after
changing baudrate. So, clk settings was not updated for some time.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 arch/arm/boards/raspberry-pi/rpi-common.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/raspberry-pi/rpi-common.c b/arch/arm/boards/raspberry-pi/rpi-common.c
index 6c5df6fd69..2684bd5ed7 100644
--- a/arch/arm/boards/raspberry-pi/rpi-common.c
+++ b/arch/arm/boards/raspberry-pi/rpi-common.c
@@ -374,7 +374,7 @@ static int rpi_console_clock_init(void)
 	clk = clk_fixed("apb_pclk", 0);
 	clk_register_clkdev(clk, "apb_pclk", NULL);
 
-	clk = clk_fixed("uart0-pl0110", 3 * 1000 * 1000);
+	clk = clk_fixed("uart0-pl0110", 48 * 1000 * 1000);
 	clk_register_clkdev(clk, NULL, "uart0-pl0110");
 	clkdev_add_physbase(clk, BCM2835_PL011_BASE, NULL);
 	clkdev_add_physbase(clk, BCM2836_PL011_BASE, NULL);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

