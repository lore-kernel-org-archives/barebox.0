Delivery-date: Thu, 05 May 2022 10:03:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSc-002URu-ME
	for lore@lore.pengutronix.de; Thu, 05 May 2022 10:03:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nmWSa-0007nw-Gb
	for lore@pengutronix.de; Thu, 05 May 2022 10:03:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=7CnU9xI9jKFdwWRdZcZLWdOznn8N0vZiFiia6jXtLFQ=; b=keFlfIiQcmwC/h
	0zXVYMn+DKfAzZiHBrtexX3YSRNruS6fX6Fwym8GLEf4k+XRaMO3ZgrpyBf2SYCVMt0kWxEqXRmj7
	9o4yFjP41wZD8m5/97JK/UhUTTo6kgICWSkaAOI1gqZ4M1iqJXQ2ltOBp9Qx/cWOWEOvM7MUKNPP3
	s8Enh+LV88gEE+cFCupHbiS/aPyx3O+W1BOaFC+z7rYayBYUHM/77LzRkyuHhFPxljp78UfXGBO+x
	p+wGbKLEzt6ZN1VeDwBXM+ih3mKtcX0JTjwYhRlSTIhGco8LfF3AVVxAo5ZmLJgI0EtmYMBkaROYO
	I1WHIy9q9mwcL04w3DMA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nmWRF-00EWja-7F; Thu, 05 May 2022 08:02:17 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nmWR2-00EWbs-Tl
 for barebox@lists.infradead.org; Thu, 05 May 2022 08:02:07 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
 by metis.ext.pengutronix.de with esmtps
 (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256) (Exim 4.92)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-0006vI-IN; Thu, 05 May 2022 10:02:01 +0200
Received: from [2a0a:edc0:0:1101:1d::ac] (helo=dude04.red.stw.pengutronix.de)
 by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQz-000TOn-T7; Thu, 05 May 2022 10:02:00 +0200
Received: from afa by dude04.red.stw.pengutronix.de with local (Exim 4.94.2)
 (envelope-from <afa@pengutronix.de>)
 id 1nmWQv-004hb3-EB; Thu, 05 May 2022 10:01:57 +0200
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: ukl@pengutronix.de, =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>,
 ore@pengutronix.de, Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Thu,  5 May 2022 10:01:46 +0200
Message-Id: <20220505080152.1068424-10-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
References: <20220505080152.1068424-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220505_010205_004207_273E9BCA 
X-CRM114-Status: GOOD (  11.57  )
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
X-Spam-Status: No, score=-5.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 09/15] serial: ns16550: rpi: skip baudrate changes for bcm2711
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Current state of the driver leads to garbled output after divisor
configuration, likely due to wrong clock rate. We so far blissfully
ignored proper clock handling in barebox instead relying on firmware and
fixed clocks. As the VideoCore firmware can already setup the mini-uart,
we can continue wearing the blinders and just disable baudrate changes
for the BCM2711 for now to fix console on the Raspberry Pi 4.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
 drivers/serial/serial_ns16550.c | 14 ++++++++++++--
 1 file changed, 12 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index e936711bf816..82acb76793cb 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -153,6 +153,12 @@ static void ns16550_write(struct console_device *cdev, uint32_t val,
 	priv->write_reg(priv, val, off << plat->shift);
 }
 
+static bool ns16550_has_fixed_brg(struct console_device *cdev)
+{
+	/* We don't yet support baudrate switching on Rpi 4 */
+	return IS_ENABLED(CONFIG_MACH_RPI_COMMON) && of_machine_is_compatible("brcm,bcm2711");
+}
+
 /**
  * @brief Compute the divisor for a baud rate
  *
@@ -250,7 +256,9 @@ static void rpi_init_port(struct console_device *cdev)
 	 * (instead of 8 required by the BCM2835 peripheral manual)
 	 */
 	priv->plat.clock = priv->plat.clock*2;
-	ns16550_serial_init_port(cdev);
+
+	if (!ns16550_has_fixed_brg(cdev))
+		ns16550_serial_init_port(cdev);
 }
 
 /*********** Exposed Functions **********************************/
@@ -490,10 +498,12 @@ static int ns16550_probe(struct device_d *dev)
 	cdev->tstc = ns16550_tstc;
 	cdev->putc = ns16550_putc;
 	cdev->getc = ns16550_getc;
-	cdev->setbrg = ns16550_setbaudrate;
 	cdev->flush = ns16550_flush;
 	cdev->linux_console_name = devtype->linux_console_name;
 
+	if (!ns16550_has_fixed_brg(cdev))
+		cdev->setbrg = ns16550_setbaudrate;
+
 	priv->fcrval = FCRVAL;
 
 	devtype->init_port(cdev);
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

