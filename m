Delivery-date: Fri, 14 Jan 2022 09:23:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hrj-001s24-1N
	for lore@lore.pengutronix.de; Fri, 14 Jan 2022 09:23:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1n8Hrh-0006zn-HL
	for lore@pengutronix.de; Fri, 14 Jan 2022 09:23:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iAkaBV+7a1G7yFklhD/+FVo/2cNZNLpq4M8+4lYsZeE=; b=WUL5rHog4uQSt2
	0OOJhfN3fBczSuHYKS0WAKEkCXihETX6vnsECIwApV5vgTm1RJwpY9mj21k26y0HzZZ0MkCyHFImq
	w1z3RCJLSeNjSfFVDkxP7WRiLc0Z+UQ5cOT6T6lGV/5GhzCfgIhxV08+Tw/BdP/4MGRCcQ+IxXiye
	ADTaAF9ZeFR9Hi9GbIFSoNOlonVQolkwm1aG5ZEE4bZItoZKlOd4lRD8NB3mBu9Bp7c7zcNnau8By
	rTYP0FwYkjDkxWwc3qEhq6j/gm6MlrKDYkiTZuQWZ8Q/Ey6Ems1+UNtwhzwd4E5hQQJz4hqnxvZER
	Jstziic9PCarAWV0SEdg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1n8HqT-008Dh1-Q2; Fri, 14 Jan 2022 08:22:01 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1n8HqM-008Def-7f
 for barebox@lists.infradead.org; Fri, 14 Jan 2022 08:21:55 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <ore@pengutronix.de>)
 id 1n8HqJ-0006f8-A6; Fri, 14 Jan 2022 09:21:51 +0100
Received: from ore by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <ore@pengutronix.de>)
 id 1n8HqI-001Gcm-Rb; Fri, 14 Jan 2022 09:21:50 +0100
From: Oleksij Rempel <o.rempel@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Oleksij Rempel <o.rempel@pengutronix.de>
Date: Fri, 14 Jan 2022 09:21:40 +0100
Message-Id: <20220114082141.302151-1-o.rempel@pengutronix.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220114_002154_295751_CA15981E 
X-CRM114-Status: GOOD (  14.62  )
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
Subject: [PATCH v1 1/2] serial: amba-pl011: reset controller on
 pl011_setbaudrate()
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Reset UART controller on baudrate update. Otherwise, at least on some
systems (for example RPi2), new baudrate setting will not be updated
and system will continue to use previous settings.

Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>
---
 drivers/serial/amba-pl011.c | 41 ++++++++++++++++++++++---------------
 1 file changed, 24 insertions(+), 17 deletions(-)

diff --git a/drivers/serial/amba-pl011.c b/drivers/serial/amba-pl011.c
index 3baadd54e7..345c58e274 100644
--- a/drivers/serial/amba-pl011.c
+++ b/drivers/serial/amba-pl011.c
@@ -54,6 +54,23 @@ to_amba_uart_port(struct console_device *uart)
 	return container_of(uart, struct amba_uart_port, uart);
 }
 
+static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
+{
+	struct vendor_data	*vendor = uart->vendor;
+
+	writew(lcr, uart->base + vendor->lcrh_rx);
+	if (vendor->lcrh_tx != vendor->lcrh_rx) {
+		int i;
+		/*
+		 * Wait 10 PCLKs before writing LCRH_TX register,
+		 * to get this delay write read only register 10 times
+		 */
+		for (i = 0; i < 10; ++i)
+			writew(0xff, uart->base + UART011_MIS);
+		writew(lcr, uart->base +  vendor->lcrh_tx);
+	}
+}
+
 static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 {
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
@@ -61,6 +78,7 @@ static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 	unsigned int divider;
 	unsigned int remainder;
 	unsigned int fraction;
+	uint32_t cr;
 
 	/*
 	 ** Set baud rate
@@ -74,9 +92,15 @@ static int pl011_setbaudrate(struct console_device *cdev, int baudrate)
 	temp = (8 * remainder) / baudrate;
 	fraction = (temp >> 1) + (temp & 1);
 
+	cr = readl(uart->base + UART011_CR);
+	writel(0x0, uart->base + UART011_CR);
+
 	writel(divider, uart->base + UART011_IBRD);
 	writel(fraction, uart->base + UART011_FBRD);
 
+	pl011_rlcr(uart, UART01x_LCRH_WLEN_8 | UART01x_LCRH_FEN);
+	writel(cr, uart->base + UART011_CR);
+
 	return 0;
 }
 
@@ -118,23 +142,6 @@ static int pl011_tstc(struct console_device *cdev)
 	return !(readl(uart->base + UART01x_FR) & UART01x_FR_RXFE);
 }
 
-static void pl011_rlcr(struct amba_uart_port *uart, u32 lcr)
-{
-	struct vendor_data	*vendor = uart->vendor;
-
-	writew(lcr, uart->base + vendor->lcrh_rx);
-	if (vendor->lcrh_tx != vendor->lcrh_rx) {
-		int i;
-		/*
-		 * Wait 10 PCLKs before writing LCRH_TX register,
-		 * to get this delay write read only register 10 times
-		 */
-		for (i = 0; i < 10; ++i)
-			writew(0xff, uart->base + UART011_MIS);
-		writew(lcr, uart->base +  vendor->lcrh_tx);
-	}
-}
-
 static int pl011_init_port(struct console_device *cdev)
 {
 	struct amba_uart_port *uart = to_amba_uart_port(cdev);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

