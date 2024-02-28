Delivery-date: Wed, 28 Feb 2024 11:22:26 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfH50-00DDJg-35
	for lore@lore.pengutronix.de;
	Wed, 28 Feb 2024 11:22:26 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rfH50-0001X3-B1
	for lore@pengutronix.de; Wed, 28 Feb 2024 11:22:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=uCfRN8kN6gWgjyNtk71iviAUFok+AKLyTVVYj7w6i/M=; b=O504Tw+lRVRrU82kn9+NiO6gBl
	UDfeasXnhpNO5frhytddHZKqA/RAUIOuUlejW08Y0q2TMT4gdmhUzNoyiTPs2ZEqJdHP07yIp6736
	ZOavLdZlktZ1vrOARYi4nAQ++kxVOaAsbFrH2Qw4WvP3kq0cvpViRAAN113p+qO15nT2XV6HenuVN
	oGcxFR9alSNMF7zIVvtgnUuypevBVI4RADASMIEWtPJ8yw2fCZ+5H1sFe1to9ML4gu7Xvz+HL8Ezi
	TeOhde6HqR/om+3lNLvDkGEzVKklbMD16pes93fzQ79TBzXtvKO0s+omq3kmvqgKu5C9avqIW1VSQ
	BM7MdhWA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfH4O-00000008oiG-3Sv3;
	Wed, 28 Feb 2024 10:21:48 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rfH4M-00000008ohv-017O
	for barebox@lists.infradead.org;
	Wed, 28 Feb 2024 10:21:47 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfH4J-0001QJ-0r; Wed, 28 Feb 2024 11:21:43 +0100
Received: from [2a0a:edc0:0:1101:1d::28] (helo=dude02.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfH4I-003N7i-Ki; Wed, 28 Feb 2024 11:21:42 +0100
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1rfH4I-00BQdx-1j;
	Wed, 28 Feb 2024 11:21:42 +0100
From: Sascha Hauer <s.hauer@pengutronix.de>
To: Barebox List <barebox@lists.infradead.org>
Date: Wed, 28 Feb 2024 11:21:41 +0100
Message-Id: <20240228102141.2724018-1-s.hauer@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240228_022146_065938_79E70788 
X-CRM114-Status: GOOD (  12.36  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] serial: lpuart32: fix rx stall on FIFO overflow
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

When the rx FIFO overruns then no new characters are received, even
when the FIFO is read from and space becomes available again.
Acknowledge the overrun in this case to let the UART continue to work.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 drivers/serial/serial_lpuart32.c | 21 ++++++++++++---------
 1 file changed, 12 insertions(+), 9 deletions(-)

diff --git a/drivers/serial/serial_lpuart32.c b/drivers/serial/serial_lpuart32.c
index 0f3e7c7a04..09d4b620be 100644
--- a/drivers/serial/serial_lpuart32.c
+++ b/drivers/serial/serial_lpuart32.c
@@ -44,6 +44,17 @@ static void lpuart32_disable(struct lpuart32 *lpuart32)
 	writel(0, lpuart32->base + LPUART32_UARTCTRL);
 }
 
+/* Test whether a character is in the RX buffer */
+static int lpuart32_serial_tstc(struct console_device *cdev)
+{
+	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
+
+	if (readl(lpuart32->base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_OR)
+		writel(LPUART32_UARTSTAT_OR, lpuart32->base + LPUART32_UARTSTAT);
+
+	return readl(lpuart32->base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_RDRF;
+}
+
 static int lpuart32_serial_setbaudrate(struct console_device *cdev,
 				     int baudrate)
 {
@@ -69,7 +80,7 @@ static int lpuart32_serial_getc(struct console_device *cdev)
 {
 	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
 
-	while (!(readl(lpuart32->base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_RDRF));
+	while (!lpuart32_serial_tstc(cdev));
 
 	return readl(lpuart32->base + LPUART32_UARTDATA) & 0xff;
 }
@@ -81,14 +92,6 @@ static void lpuart32_serial_putc(struct console_device *cdev, char c)
 	lpuart32_putc(lpuart32->base, c);
 }
 
-/* Test whether a character is in the RX buffer */
-static int lpuart32_serial_tstc(struct console_device *cdev)
-{
-	struct lpuart32 *lpuart32 = cdev_to_lpuart32(cdev);
-
-	return readl(lpuart32->base + LPUART32_UARTSTAT) & LPUART32_UARTSTAT_RDRF;
-}
-
 static void lpuart32_serial_flush(struct console_device *cdev)
 {
 }
-- 
2.39.2



