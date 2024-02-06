Delivery-date: Tue, 06 Feb 2024 16:23:20 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXNI7-005r5O-10
	for lore@lore.pengutronix.de;
	Tue, 06 Feb 2024 16:23:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXNI7-000299-T2
	for lore@pengutronix.de; Tue, 06 Feb 2024 16:23:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=usSHgL1tnqEt9Wo5LDjbpOigP222IRQQCHmeFSrxOw8=; b=vwbIHRAtH3/gYTF0Vcu8gbItFU
	bnoqm7+oIZQYzR/Akd35paM/jciDY8BzaZpPlBMNiIN0SWFqRNRr8zsfYQNS6yxzsCN1j7Y6YgsAi
	MNgYU+OUkSTg2W6JWccZnuVEURm6oUAVrTgzYdEENqRmA6F17XvUS8mrEfWM81/SGcOwv4FyxPyRS
	aKig2QMvdBZmcvVKfB8jA9SIO60Gi7x/11nlEsdenBe+PG/rkJt0zyZU9FSQ0PGXb83f35rpwYsBq
	F+05XrnwGgAqhofCh7LuBFmf07mMYEAfztHU5L+QBaNeu7BcKMv/zhBt+urnrv2JgVtLUq3NJqDlz
	ExLBBiwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNHe-000000084W7-0INm;
	Tue, 06 Feb 2024 15:22:50 +0000
Received: from mail-wm1-x330.google.com ([2a00:1450:4864:20::330])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNHa-000000084Um-0Plb
	for barebox@lists.infradead.org;
	Tue, 06 Feb 2024 15:22:47 +0000
Received: by mail-wm1-x330.google.com with SMTP id 5b1f17b1804b1-40fd280421aso27339585e9.3
        for <barebox@lists.infradead.org>; Tue, 06 Feb 2024 07:22:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rtone.fr; s=google; t=1707232963; x=1707837763; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=usSHgL1tnqEt9Wo5LDjbpOigP222IRQQCHmeFSrxOw8=;
        b=OK3ZO2bmYDFuICyb42G09boDiko7ZZVO7qKobH9oEd7WpR7RMQGUubvQpOAMIrctpS
         INgMlh5lJBoxVQRJGlpiDa8a0s1F56Up7++Cff2jKWFTqY+5d7u9LVxRhBCOTCARIe1t
         zXkM/qjGCzXyvcyDLdoNjh89gMrRwmwQ2HvnQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707232963; x=1707837763;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=usSHgL1tnqEt9Wo5LDjbpOigP222IRQQCHmeFSrxOw8=;
        b=sx3n8FjrxKUhwg2ntzCbxes/B3ho+WTazlazvCmPN51lFNz0ocX0MwG0v4bzBzyGtk
         vhPZyQn0UUYbooX4B+GyGxQq/z30cKqOQLtp5ldiLwof+mSNRoY3JVbusx4KvLIw0Pfr
         gq2n8+e60Wrmq/iALn2i3SGTqTy382QR8U+2SAKnDjrTTC6C/OC/pZIIo7h2JurBk/PX
         z3TCCYSL9X0LksWVjwypPclE+cai/H2WcThpCY8Yzj1Nrb6VIl89axLVQBo/1qlhUZbf
         /QJWCdRup9FJRSq38o9xOqp04ur4D6f/wxSksxtZ6A1164eNB4Ilczp4elII5nrJnXJE
         9PjA==
X-Gm-Message-State: AOJu0Yxv63GllLUAvgG4OS9D5vDopSJELsa2VTswXZqrN4hX/eKbQv4X
	qpjkEdgbzK74XwT8ftTrk/997JnPWCKQcwofOrs8dD+0AcvPxde9RUtNkknbQUB0aMAIRDrIeVb
	EzIiAfw==
X-Google-Smtp-Source: AGHT+IGhc4j4jL+A39Btd/1YAEpgLGz5HujpTE5nctBST+t414SkRD24PX3PdcdZ+71qjs9A1zHC6A==
X-Received: by 2002:a05:600c:48a5:b0:40f:c5cc:e6dd with SMTP id j37-20020a05600c48a500b0040fc5cce6ddmr2734676wmp.24.1707232963375;
        Tue, 06 Feb 2024 07:22:43 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCVnrp9E2KrodXItagCjvsfBBWkgrFww0CXwbkPgk/if7+6dH5yXRvQnHOzIs8nOxFR/M5zF3GuLW0ndlhFpRFgmsT2c67l61OdcITjpiScyVsir/j0dwtLtsAebuowsMEGbSFdl4/QR0XdI3RPbA2WEIbwRZwEB1VmdIblk
Received: from chipmunk-104.. ([2a02:842a:f0a2:1e01:4349:31e9:d736:85c6])
        by smtp.gmail.com with ESMTPSA id p10-20020a05600c1d8a00b0040ffbcfb5e4sm45241wms.21.2024.02.06.07.22.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 07:22:43 -0800 (PST)
From: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
To: barebox@lists.infradead.org
Cc: sebastien.bourdelin@rtone.fr,
	a.fatoum@pengutronix.de,
	oss-contrib@rtone.fr,
	Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Date: Tue,  6 Feb 2024 16:22:39 +0100
Message-ID: <20240206152239.341460-3-pierre-olivier.huard@rtone.fr>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
References: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_072246_439850_8C4EAA19 
X-CRM114-Status: GOOD (  10.54  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] serial: ns16550: add support for half duplex rs485
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Some RS485 serial interfaces does not use correctly RTS as Receiver
Enable and Data Enable, the internal receiver of the ns16550 must be
disabled during transmit to avoid loopback.

By default the option is enabled (when the property
'linux,rs485-enabled-at-boot-time' is present), and can be disabled with
the property 'rs485-rx-during-tx'.

Signed-off-by: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
---
 drivers/serial/serial_ns16550.c | 9 +++++++++
 drivers/serial/serial_ns16550.h | 4 ++++
 2 files changed, 13 insertions(+)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index 73d8365dac..1b1692658f 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -43,6 +43,7 @@ struct ns16550_priv {
 
 	bool rs485_mode;
 	bool rs485_rts_active_low;
+	bool rs485_rx_during_tx;
 };
 
 struct ns16550_drvdata {
@@ -279,6 +280,9 @@ static void ns16550_putc(struct console_device *cdev, char c)
 			ns16550_write(cdev, MCR_RTS, mcr);
 		else
 			ns16550_write(cdev, 0, mcr);
+
+		if (!priv->rs485_rx_during_tx)
+			ns16550_write(cdev, CNTL_TXEN, cntl);
 	}
 
 	ns16550_write(cdev, c, thr);
@@ -292,6 +296,9 @@ static void ns16550_putc(struct console_device *cdev, char c)
 			ns16550_write(cdev, 0, mcr);
 		else
 			ns16550_write(cdev, MCR_RTS, mcr);
+
+		if (!priv->rs485_rx_during_tx)
+			ns16550_write(cdev, CNTL_TXEN | CNTL_RXEN, cntl);
 	}
 }
 
@@ -350,6 +357,8 @@ static void ns16550_probe_dt(struct device *dev, struct ns16550_priv *priv)
 		of_property_read_bool(np, "rs485-rts-active-low");
 	priv->rs485_mode =
 		of_property_read_bool(np, "linux,rs485-enabled-at-boot-time");
+	priv->rs485_rx_during_tx =
+		of_property_read_bool(np, "rs485-rx-during-tx");
 
 	switch (width) {
 	case 1:
diff --git a/drivers/serial/serial_ns16550.h b/drivers/serial/serial_ns16550.h
index 1c5d9d551a..2d941cb8d1 100644
--- a/drivers/serial/serial_ns16550.h
+++ b/drivers/serial/serial_ns16550.h
@@ -36,6 +36,7 @@
 #define lsr		5
 #define msr		6
 #define scr		7
+#define cntl	8
 
 #define thr		rbr
 #define iir		fcr
@@ -76,6 +77,9 @@
 /* Transmitter FIFO completely empty */
 #define LSR_EMPTY	(LSR_THRE | LSR_TEMT)
 
+#define CNTL_RXEN	0x01
+#define CNTL_TXEN	0x02
+
 /* useful defaults for LCR */
 #define LCR_8N1		0x03
 
-- 
2.43.0



