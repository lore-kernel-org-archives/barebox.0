Delivery-date: Fri, 10 Jan 2025 11:33:05 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWCK8-000Kgb-1E
	for lore@lore.pengutronix.de;
	Fri, 10 Jan 2025 11:33:05 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tWCK8-0000Cj-HN
	for lore@pengutronix.de; Fri, 10 Jan 2025 11:33:05 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=JH3U4xApe6x04iWosYSyTQVDzhX9arRwEwFpEnDA8D0=; b=SywnxpPxhKzDrPy1YnXjG7sYWC
	0MSQ1LpWm6wTDTm9iAuTfmYsDPgLYUCpIJwwZDw6ephWkkcsSvYZCGXhv0xT4GXTo3DHb16DI8Y5O
	jlmjoSVCuwCM8U4/tartyvEm8IujO/Zjzu5WDWvDrzAYXgCdOqArvfr3z2iwIx4LWGAWKd+LVvUS4
	ZCmkY5XX/xfV4ITYplowN3eTwz5rT148dHi2IqDMn4M3DxuYT5Z9nXwKMrFTM+JXUly7rlTJB2Xc9
	ZOvwuZxbEXpAIK6beAIy4ivgATSYuA2J3cwVgxx5Cn0zfO2jj4ZxCq2MsaxUSOR7AF+AdosbA41Tn
	7r+F6RIA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tWCJb-0000000Ey7U-3Btg;
	Fri, 10 Jan 2025 10:32:31 +0000
Received: from mail-lf1-x129.google.com ([2a00:1450:4864:20::129])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tWCG6-0000000ExCS-3Lq2
	for barebox@lists.infradead.org;
	Fri, 10 Jan 2025 10:28:56 +0000
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-53f22fd6832so2073007e87.1
        for <barebox@lists.infradead.org>; Fri, 10 Jan 2025 02:28:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736504932; x=1737109732; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=JH3U4xApe6x04iWosYSyTQVDzhX9arRwEwFpEnDA8D0=;
        b=kGPFQDnv9cMXBmh12deIMeVbil7qwr0J1IeQk2oqXQaY7loYSHiKdK4+a9NSXPf8Xc
         3wbUYc8HyIdhqFYRaUPwSeWY76d262ZOtmd8GC9uDVjPFy+0SPeETGtQvrJAB24SJtHg
         bEwg68IZbw8TXXCDBiXLRpncFRmY6o9jsSrD43zufAseSItXtk6B5ooAKiMzqjwm5wor
         4w679EA6H7N8lRQ2opSD0bG0pOPxXfRg2vsMajzkKO8j4Lw5o3onXF3lNdH5LHSpg7Q4
         30eV1WFHvibHUk0CHbpsKstwEPLoHcHeNQiMnt/qmrDj/J8uyNppYo//c/TQhBcnS8hQ
         Q56g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736504932; x=1737109732;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=JH3U4xApe6x04iWosYSyTQVDzhX9arRwEwFpEnDA8D0=;
        b=rayOCmkxFRJ2an6AAz4MYyQfOepQnKPdgZngUZ4P2nMeo1xKs++uclFfWXaq5QJueV
         LEMoc3N8R7t1UMi3YpTh0ZQKw8H6OiCMozXTbRbz6eTWD/BpuEQ8YhjyixFpxjU4/t4a
         NvU5GbQUrVyWnI5URvX147z61YxtKD/WsSoAxonpMz15aEpRbUKv+YNkgDR0Ehf52IsH
         4G4AK77SLSf8Ut7xGktjFpddhS47do+qTncFFVu9ducwMoH2s2niHxF4r3r/WUykrurl
         mWnv2L/BJUuRBpa3vRCS4DWb8ZhEq7mHRmS10+9unC+1DBIGGyxPqIMv1KnyMyNVsD1p
         J5xg==
X-Gm-Message-State: AOJu0YxnY7yHy4LjlLxxpgAUtbwsBDkdCGNLeOZSO43Mxn1tb6rgZDHd
	/opaiMosR3aqUzd6UcWY4Dh82owtAlbgOcWT1rEubl6qTQFENF8hetj65wCQ
X-Gm-Gg: ASbGncsebVWg1v9z8wfV2tk/euC1NEc54RhEb2r/5yEKYCgzcO+/8Ub0ozoGZ2QProm
	e9fP1iIahLU8IHVQBLPua9+oliqgYK79Bfouab+8XkQ2AilUdAMwh2hwmrJISa6EHPpa8Z3e//2
	NSy1/i8RfF1eVOFU6G7PfEhIJG2zKcL6qpNu2meIZGjwdqF2puaSFqSDIC+PnuD4p/f7C5bDqWt
	22P/xDJ7XvtsTfvFcADWJarmkB0vJ4X2EThzyn0FHKGPZiCFVUdOFd2+awwi830dnA3bKyUgafD
	CvMP
X-Google-Smtp-Source: AGHT+IHb7pbBsmspg7lyIlTf0pB0fS4nbtitmvXyy0gpQNmfWzOIhytlTVf0nVxPP6seEYl/ZPS8Gg==
X-Received: by 2002:a05:6512:401e:b0:540:1b7e:c900 with SMTP id 2adb3069b0e04-542845b9eaemr2981602e87.14.1736504932135;
        Fri, 10 Jan 2025 02:28:52 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5428bec11c9sm487875e87.200.2025.01.10.02.28.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jan 2025 02:28:51 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri, 10 Jan 2025 13:28:40 +0300
Message-Id: <20250110102840.53331-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250110_022854_855418_B16218D8 
X-CRM114-Status: GOOD (  13.61  )
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
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: at91: Fix driver for SAMA5D2 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The current driver version does not work for me on SAMA5D2 SOC.
I2C bus devices probing always returns good state, and as a result all
addresses 0x01-0x7f are always present.
After a some digging into the driver, I found that the NACK bit is not
handled correctly. I also found another SAMA5D2-related patch in the kernel
tree (1).
The result is a complex patch for correct I2C bus operation on SAMA5D2 SOC.

[1] https://squing.com/lander/squing.com/?l=linux-i2c&m=156382173106314&w=3&_=%2F%23wXPKnebvZEv31W5L%2FkOlGQ%3D%3D

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/i2c/busses/i2c-at91.c | 14 +++++++++-----
 1 file changed, 9 insertions(+), 5 deletions(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index dbc5aa4ddf..fb0a922a62 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -113,7 +113,8 @@ static void at91_twi_write(struct at91_twi_dev *dev, unsigned reg, unsigned val)
 static void at91_disable_twi_interrupts(struct at91_twi_dev *dev)
 {
 	at91_twi_write(dev, AT91_TWI_IDR,
-		       AT91_TWI_TXCOMP | AT91_TWI_RXRDY | AT91_TWI_TXRDY);
+		       AT91_TWI_TXCOMP | AT91_TWI_RXRDY |
+		       AT91_TWI_TXRDY | AT91_TWI_NACK);
 }
 
 static void at91_init_twi_bus(struct at91_twi_dev *dev)
@@ -223,8 +224,10 @@ static void at91_twi_write_next_byte(struct at91_twi_dev *dev)
 	at91_twi_write(dev, AT91_TWI_THR, *dev->buf);
 
 	/* send stop when last byte has been written */
-	if (--dev->buf_len == 0)
+	if (--dev->buf_len == 0) {
 		at91_twi_write(dev, AT91_TWI_CR, AT91_TWI_STOP);
+		at91_twi_write(dev, AT91_TWI_IDR, AT91_TWI_TXRDY);
+	}
 
 	dev_dbg(dev->dev, "wrote 0x%x, to go %d\n", *dev->buf, dev->buf_len);
 
@@ -276,7 +279,7 @@ static int at91_twi_wait_completion(struct at91_twi_dev *dev)
 
 		dev->transfer_status |= status;
 
-	} while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
+	} while (!(status & AT91_TWI_TXCOMP));
 
 	at91_disable_twi_interrupts(dev);
 
@@ -311,11 +314,12 @@ static int at91_do_twi_transfer(struct at91_twi_dev *dev)
 		at91_twi_write(dev, AT91_TWI_CR, start_flags);
 
 		at91_twi_write(dev, AT91_TWI_IER,
-			    AT91_TWI_TXCOMP | AT91_TWI_RXRDY);
+			    AT91_TWI_TXCOMP | AT91_TWI_NACK | AT91_TWI_RXRDY);
 	} else {
 		at91_twi_write_next_byte(dev);
 		at91_twi_write(dev, AT91_TWI_IER,
-			    AT91_TWI_TXCOMP | AT91_TWI_TXRDY);
+			       AT91_TWI_TXCOMP | AT91_TWI_NACK |
+			       (dev->buf_len ? AT91_TWI_TXRDY : 0));
 	}
 
 	ret = at91_twi_wait_completion(dev);
-- 
2.39.1



