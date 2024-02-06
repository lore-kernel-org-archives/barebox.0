Delivery-date: Tue, 06 Feb 2024 16:23:21 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXNI8-005r5q-1M
	for lore@lore.pengutronix.de;
	Tue, 06 Feb 2024 16:23:21 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rXNI8-00029b-FS
	for lore@pengutronix.de; Tue, 06 Feb 2024 16:23:21 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FzOwduGSfI2OZeactgWNzE8uEahfqArh4dyy7o3KJGQ=; b=XXIHAP7VrJeEMKeob9mEShP7PF
	qdGcHRevXiF4hzd1yBaHWIttCuoJxKGYwrbcefssx3wEaJgPVc8L6C3I0UU8ASstq3E3ba9Xf31qe
	5XCY4pOAjFnuPqmt+RuIlzU1X6R2SktLZZmPk0SuqSJ/iBkhRXbqnp7soMgsmr06gpSoIEfWa1bOA
	iXpGe9C4MttIqD+dSTVZ2YEClOY7E6bZJ+GN14JP2r5SwiVbowM8w73Itqkr2DnMKP+YGlLvBl1GF
	/Jf/OT9ToyNNXZ8C5nPv+UUVSHv8RUJ4C41gib+6zRXbq2e8TCx0flDcqpMzANfMU0TGlaFoURIcO
	TzdRZrqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNHi-000000084Xr-2ABB;
	Tue, 06 Feb 2024 15:22:54 +0000
Received: from mail-wm1-x332.google.com ([2a00:1450:4864:20::332])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rXNHe-000000084Vo-3o8A
	for barebox@lists.infradead.org;
	Tue, 06 Feb 2024 15:22:52 +0000
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40fe79f1aaaso5190115e9.0
        for <barebox@lists.infradead.org>; Tue, 06 Feb 2024 07:22:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=rtone.fr; s=google; t=1707232968; x=1707837768; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FzOwduGSfI2OZeactgWNzE8uEahfqArh4dyy7o3KJGQ=;
        b=OlH1z27hCfSX/x5pd1ZJ/3oIeuhQ8wealTX7zriL8LYbx1qurYS/MUS4kikwrIGUpl
         chqa3LOvIclDStGhjrYLatrJFXqfbsPMFpsJEF+G610XYnwWLOy7tKAmuaK2637EvbYy
         iBxb8qvPFOi4fBtX4nt8d6RyEKPTYSBXqc4TM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707232968; x=1707837768;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FzOwduGSfI2OZeactgWNzE8uEahfqArh4dyy7o3KJGQ=;
        b=pu8eUBXygwpL9ORWort+1y84As5c0eBxYuUTA/pNuXUTBf2F3WqBQOEuwR2YoDlnii
         jqeC3hpGAdG21aUDl+As4tomdon8kl9LMqcK1CPS/FzDvsxx5JlBhJmpF3hli46eVv7u
         JoCxCZ4g9Wy8Uz7iFNB9S2fnc6DtA+Z06Diw4g2XIr8a5D5T4t1seUd2zYXRA9VNz+Rg
         uRdUx2Pixw1Qaiw5pPLobVRhoKExuAB52UJlzMm77lqjzgyCl5zH55/M8Gp22kMAoKpu
         KF3S33H8g0Egy36az1a0dFoKP99KDSh0KUWl3zY6wvydLNzAGcmK9uYhHfPmbM1rN4H6
         HNTQ==
X-Gm-Message-State: AOJu0YyC7ylM73mMRf4ecvIfSx9qzpwgXTs9QCI+1nnYvFR0LvtoMlip
	+9QFN5GhFoMo6G3blpptresLfyUyAqOjofDSSxwARaWx8zxUtwoI+3akiL00xjnht9e9ENgMO/c
	lixIExw==
X-Google-Smtp-Source: AGHT+IFamThLxCxLsqNJXw+G2Nq4ZiQ4ffmesKoqX+wtzWFcWng+hCMxUzgfS1O2c1bqVTFLx5qPYA==
X-Received: by 2002:a05:600c:3d08:b0:40f:e067:d685 with SMTP id bh8-20020a05600c3d0800b0040fe067d685mr2125059wmb.13.1707232962877;
        Tue, 06 Feb 2024 07:22:42 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUJ4iThUZKxafnclVII6soAXcMtdRm499epeVg+CkLFeG/n0mNytTQr0iGqrDKCcp/nDNu45tXElBTSMw+n+FACz9Whgj3eqhI6P6q2rYQbH7Mk2EAu3N9TpEgbtsZHhnQawaH87u0xKouv3YFooAkta1G8Z0CpZ4bt+hr/
Received: from chipmunk-104.. ([2a02:842a:f0a2:1e01:4349:31e9:d736:85c6])
        by smtp.gmail.com with ESMTPSA id p10-20020a05600c1d8a00b0040ffbcfb5e4sm45241wms.21.2024.02.06.07.22.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 06 Feb 2024 07:22:42 -0800 (PST)
From: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
To: barebox@lists.infradead.org
Cc: sebastien.bourdelin@rtone.fr,
	a.fatoum@pengutronix.de,
	oss-contrib@rtone.fr,
	Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
Date: Tue,  6 Feb 2024 16:22:38 +0100
Message-ID: <20240206152239.341460-2-pierre-olivier.huard@rtone.fr>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
References: <20240206152239.341460-1-pierre-olivier.huard@rtone.fr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240206_072250_982737_60BE97D9 
X-CRM114-Status: GOOD (  13.57  )
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
Subject: [PATCH 1/2] serial: ns16550: add basic support for rs485
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add possibility to use RTS signal as a Data Enable signal on RS485
transceivers.

Signed-off-by: Pierre-Olivier Huard <pierre-olivier.huard@rtone.fr>
---
 drivers/serial/serial_ns16550.c | 33 +++++++++++++++++++++++++++++++--
 drivers/serial/serial_ns16550.h |  3 +++
 2 files changed, 34 insertions(+), 2 deletions(-)

diff --git a/drivers/serial/serial_ns16550.c b/drivers/serial/serial_ns16550.c
index c3bc79adc2..73d8365dac 100644
--- a/drivers/serial/serial_ns16550.c
+++ b/drivers/serial/serial_ns16550.c
@@ -40,6 +40,9 @@ struct ns16550_priv {
 	void (*write_reg)(struct ns16550_priv *, uint8_t val, unsigned offset);
 	uint8_t (*read_reg)(struct ns16550_priv *, unsigned offset);
 	const char *access_type;
+
+	bool rs485_mode;
+	bool rs485_rts_active_low;
 };
 
 struct ns16550_drvdata {
@@ -265,9 +268,31 @@ static void rpi_init_port(struct console_device *cdev)
  */
 static void ns16550_putc(struct console_device *cdev, char c)
 {
-	/* Loop Doing Nothing */
-	while ((ns16550_read(cdev, lsr) & LSR_THRE) == 0) ;
+	struct ns16550_priv *priv = to_ns16550_priv(cdev);
+
+	/* wait until FIFO can accept at least one byte */
+	while ((ns16550_read(cdev, lsr) & (LSR_THRE)) != (LSR_THRE))
+		;
+
+	if (priv->rs485_mode) {
+		if (priv->rs485_rts_active_low)
+			ns16550_write(cdev, MCR_RTS, mcr);
+		else
+			ns16550_write(cdev, 0, mcr);
+	}
+
 	ns16550_write(cdev, c, thr);
+
+	if (priv->rs485_mode) {
+		/* wait until FIFO is cleared*/
+		while ((ns16550_read(cdev, lsr) & (LSR_EMPTY)) != (LSR_EMPTY))
+			;
+
+		if (priv->rs485_rts_active_low)
+			ns16550_write(cdev, 0, mcr);
+		else
+			ns16550_write(cdev, MCR_RTS, mcr);
+	}
 }
 
 /**
@@ -321,6 +346,10 @@ static void ns16550_probe_dt(struct device *dev, struct ns16550_priv *priv)
 		priv->mmiobase += offset;
 	of_property_read_u32(np, "reg-shift", &priv->plat.shift);
 	of_property_read_u32(np, "reg-io-width", &width);
+	priv->rs485_rts_active_low =
+		of_property_read_bool(np, "rs485-rts-active-low");
+	priv->rs485_mode =
+		of_property_read_bool(np, "linux,rs485-enabled-at-boot-time");
 
 	switch (width) {
 	case 1:
diff --git a/drivers/serial/serial_ns16550.h b/drivers/serial/serial_ns16550.h
index 56c639a134..1c5d9d551a 100644
--- a/drivers/serial/serial_ns16550.h
+++ b/drivers/serial/serial_ns16550.h
@@ -73,6 +73,9 @@
 #define LSR_TEMT	0x40	/* Xmitter empty */
 #define LSR_ERR		0x80	/* Error */
 
+/* Transmitter FIFO completely empty */
+#define LSR_EMPTY	(LSR_THRE | LSR_TEMT)
+
 /* useful defaults for LCR */
 #define LCR_8N1		0x03
 
-- 
2.43.0



