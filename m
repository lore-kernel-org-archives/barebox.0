Delivery-date: Sat, 30 Oct 2021 19:56:47 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsb1-00013S-Em
	for lore@lore.pengutronix.de; Sat, 30 Oct 2021 19:56:47 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgsb0-0001hE-HJ
	for lore@pengutronix.de; Sat, 30 Oct 2021 19:56:47 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jSrEoYEu49Ykq8OjG81rrzQTe3IgknC8mxhHtxLhqBQ=; b=TjxaYo7Wch7RGM
	SPpKUyja+/UInOBFKpKHauZHPuToO3VcAhFNSNwfcabAHYqZm/wU0xAp9il1R9pJDnE8IC7hUtAbb
	aKJ3E8mCTMzZb/GFnmvBmpoZrZ8TRp3xN4+jQ3oPfVE7hw4743vKxy8zRIWpQmS2qjbNKj+J3CiCC
	GPe5IFFy4au++8uFReBWVgxSOUccMEa93P18h+hVBjJbOqyGZE47Wc6xgTfQxwF0EA6/7uXiQLoT2
	vlbZM1NBvEBEklj97ZGYrN27PwgTSi41fraOyZTXtGcnH+VlmU28pz/FVPJIxTCMlsxQ44/lPU7vH
	2bCExAvxTaVnP/Y1E4Sg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgsZB-00DM3d-OS; Sat, 30 Oct 2021 17:54:53 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgsZ7-00DM2b-FK
 for barebox@lists.infradead.org; Sat, 30 Oct 2021 17:54:50 +0000
Received: from dude.hi.pengutronix.de ([2001:67c:670:100:1d::7])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsZ5-00019P-SY; Sat, 30 Oct 2021 19:54:47 +0200
Received: from afa by dude.hi.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1mgsZ5-009XdV-Dy; Sat, 30 Oct 2021 19:54:47 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Sat, 30 Oct 2021 19:54:45 +0200
Message-Id: <20211030175446.2274194-3-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
References: <20211030175446.2274194-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211030_105449_534268_F4AC315C 
X-CRM114-Status: GOOD (  12.64  )
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
Subject: [PATCH 3/4] serial: atmel: abort probe on atmel_serial_init_port
 failure
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The port initialization fails if the memory region couldn't be requested
or if the clock couldn't be gotten. Both print an error message, so
users running into this would've noticed. Do the sane thing and abort
the probe in such error cases.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/atmel.c | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/drivers/serial/atmel.c b/drivers/serial/atmel.c
index 8394273f9f42..612265692f64 100644
--- a/drivers/serial/atmel.c
+++ b/drivers/serial/atmel.c
@@ -427,6 +427,7 @@ static int atmel_serial_probe(struct device_d *dev)
 {
 	struct atmel_uart_port *uart;
 	struct console_device *cdev;
+	int ret;
 
 	uart = xzalloc(sizeof(struct atmel_uart_port));
 	cdev = &uart->uart;
@@ -438,7 +439,9 @@ static int atmel_serial_probe(struct device_d *dev)
 	cdev->set_mode = atmel_serial_set_mode;
 	cdev->linux_console_name = "ttyAT";
 
-	atmel_serial_init_port(cdev);
+	ret = atmel_serial_init_port(cdev);
+	if (ret)
+		return ret;
 
 	/* Enable UART */
 
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

