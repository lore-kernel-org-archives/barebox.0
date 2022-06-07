Delivery-date: Tue, 07 Jun 2022 12:16:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyWGF-006FgM-DY
	for lore@lore.pengutronix.de; Tue, 07 Jun 2022 12:16:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nyWGC-00087e-Lz
	for lore@pengutronix.de; Tue, 07 Jun 2022 12:16:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Al4qod4k50EUof8sh5kCiOA8U/aLaFKGtSg5/5Bh938=; b=JVPNb4xZZNY8Bg
	37M/+cBiYGY1nrNleGD1UMPEeXWZZKCDHFtE3SCI4MX1qGmJOk7hcfKgZlrI/0ZlLqxGQaw+ZSXG4
	5aAcQf45QF0lWcAeYu8iTkRAt6xFISRZ6DEjsAe5ZP3MZM7OSkR2MuzksNJbWFtVYZXViVPUuhqwA
	zURt59jeQvV0uRrGYdt1A1L4ZrPT8IPCyxW1j4xI8yICIUYleXahoZnZEhivv4o4oaGHjBcY2Vrne
	0f/PxX1GsnbSh8BwbuGUI1irZxcoU6Ej1oK04xvkfbqGPnOz8rX2ndfwEIjDI1wL8ebtFknKwzm3y
	Qlp1s3kaq1sNvjW9w83g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyWEO-006Ysv-FX; Tue, 07 Jun 2022 10:14:37 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nyW3r-006UpL-Mv
	for barebox@lists.infradead.org; Tue, 07 Jun 2022 10:03:45 +0000
Received: by mail-lj1-x22e.google.com with SMTP id l18so11282153lje.13
        for <barebox@lists.infradead.org>; Tue, 07 Jun 2022 03:03:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QiTpEC7I4ZU2Aovt16xuDlCn/sCy5whWeJnJxzBjbdA=;
        b=MxVPe2jZA3I6sMSESh3UipACa7NoLRMcLsWVeEiswYNqwAI5b/D5eC17GRc9UV7pUa
         qeYoCIJZce9ie6t4SJc13WzuT01TdHekQjzUwDoMyD+6HrSXTHI5qdLswItNwWKxB80k
         45ZYeQRwRpwtjUSHQbaDgylkTK8w3U1rcfkmvWz+Mkeqzqe7l69dtD01/uNqRJXS/Cdw
         BI9k+OveiWnzcn+QVq459kDkUSANE610819yFyN4GKVjEsWqv4Q+bkOI0rQDmlOUgK7r
         lTpSED5k+/W7kpu0HGEknFwQP/zfdGveGKRwRc6MvKGqaZZcuZEObHSzAQ3wkt3wykHB
         S7aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QiTpEC7I4ZU2Aovt16xuDlCn/sCy5whWeJnJxzBjbdA=;
        b=NUF0wztWrkDrlEqL/d8brPafDICTsqeAr7EtgdX0MR7zx1PB7XbCEyHawKTOkb6Jh4
         a7ZTJMY4GgqrI2B75ekxNWZNrfM3bf9oFrUu8s6v/k7bb7YcDmHKRIiXw5QRwVxNjSfl
         G1Hk8iSvEWYf/N8JUK5CRIJtrXdL2JXirVWYrhsDbE6zdjWI+PYIi9cLfw+H9ijmLq6A
         dH6h002A14p5TlmKf/IvMUpeml2YA2JLppdl9JwGtnL5aWTe6tZ4FMP1cJ61Fi+CP9t1
         FyaSxSSF8uhwKHhWiHDNdrprPtH8MmR/oGokjdgux0V2yH7X3WmNNM4dBiTA3D0SROWM
         u/Cw==
X-Gm-Message-State: AOAM530PnocIhusrZvJtKrwFOy1iD6m9pRCeUdFmEje2McYzA3y5sbc6
	UwqLMoJHeT1NbmjSOrsMcD1pvDYqdDM=
X-Google-Smtp-Source: ABdhPJzDNBE9f/IFcmpIpBcqDyESfPxhOc8RmehN9uqzii/rIuZs4CcfJ1wxx7qXZbYtjbTqMLs6Rw==
X-Received: by 2002:a2e:b904:0:b0:255:5c9a:b46e with SMTP id b4-20020a2eb904000000b002555c9ab46emr19863486ljb.7.1654596221559;
        Tue, 07 Jun 2022 03:03:41 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id c20-20020a056512325400b004795ebe653esm363791lfr.258.2022.06.07.03.03.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 03:03:40 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Tue,  7 Jun 2022 13:03:36 +0300
Message-Id: <20220607100337.18277-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220607_030343_834268_BB10DDA4 
X-CRM114-Status: GOOD (  12.48  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 1/2] serial: ns16550: Adding compatibility for the AM437X platforms
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Adding compatibility for AM437X platforms.
Since the serial node is not populated with a clock node,
let's add an additional driver variable to set the default clock speed.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/serial/serial_ns16550.c | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index f93a89ab95..fb6af42e00 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -42,8 +42,9 @@ struct ns16550_priv {
 };
 
 struct ns16550_drvdata {
-        void (*init_port)(struct console_device *cdev);
-        const char *linux_console_name;
+	void (*init_port)(struct console_device *cdev);
+	const char *linux_console_name;
+	unsigned int clk_default;
 };
 
 static inline struct ns16550_priv *to_ns16550_priv(struct console_device *cdev)
@@ -362,6 +363,12 @@ static __maybe_unused struct ns16550_drvdata omap_drvdata = {
 	.linux_console_name = "ttyO",
 };
 
+static __maybe_unused struct ns16550_drvdata am43xx_drvdata = {
+	.init_port = ns16550_omap_init_port,
+	.linux_console_name = "ttyO",
+	.clk_default = 48000000,
+};
+
 static __maybe_unused struct ns16550_drvdata jz_drvdata = {
 	.init_port = ns16550_jz_init_port,
 };
@@ -472,6 +479,9 @@ static int ns16550_probe(struct device_d *dev)
 	else
 		ns16550_probe_dt(dev, priv);
 
+	if (devtype->clk_default && !priv->plat.clock)
+		priv->plat.clock = devtype->clk_default;
+
 	if (!priv->plat.clock) {
 		priv->clk = clk_get(dev, NULL);
 		if (IS_ERR(priv->clk)) {
@@ -537,6 +547,9 @@ static struct of_device_id ns16550_serial_dt_ids[] = {
 	}, {
 		.compatible = "ti,omap4-uart",
 		.data = &omap_drvdata,
+	}, {
+		.compatible = "ti,am4372-uart",
+		.data = &am43xx_drvdata,
 	},
 #endif
 #if IS_ENABLED(CONFIG_MACH_MIPS_XBURST)
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

