Delivery-date: Mon, 13 Jan 2025 08:04:25 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXEUr-000VAw-1z
	for lore@lore.pengutronix.de;
	Mon, 13 Jan 2025 08:04:25 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tXEUr-0006um-2p
	for lore@pengutronix.de; Mon, 13 Jan 2025 08:04:25 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Bh9wlypUFN2oKJt7/g0PzonFk8STFVzqSU8WgqQQAK4=; b=eqcPRgHfGiNvt388qqNewrBomb
	nLvZhLSmIDvkqtjaVBtmio6s4s7ZZqDVM9LiY0whLVFhFPMhcgaEjQK2QqP0VoGQQy9bUYecFiZAJ
	HAjPiBXOgWPMNJ6fJzfKtqr5CujkP3QpgK8wWaEzn8HRG0FGcYA3V/UYHYGkRezNrctcJHXBrn2/u
	Sbp87IgvwKlvWVtgB3RbfJSLCHhOt3ifA5ZPC7TNvEgiUSpSjVCfUUup5ps41DT8Hy/1P3Fz2/HTg
	SzGaOZQ2YS9e27Ey3Xk5VMFc1OPEVM5GC1payWrKB8nPiSNpCr1CnIxzL1Qlk1hty9livVLx7jbT2
	G5QFFYMw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tXEUC-00000004BeC-277F;
	Mon, 13 Jan 2025 07:03:44 +0000
Received: from mail-lj1-x22c.google.com ([2a00:1450:4864:20::22c])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tXET2-00000004BZA-1ZB9
	for barebox@lists.infradead.org;
	Mon, 13 Jan 2025 07:02:33 +0000
Received: by mail-lj1-x22c.google.com with SMTP id 38308e7fff4ca-303548a933aso31274181fa.3
        for <barebox@lists.infradead.org>; Sun, 12 Jan 2025 23:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736751750; x=1737356550; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Bh9wlypUFN2oKJt7/g0PzonFk8STFVzqSU8WgqQQAK4=;
        b=UO0Gcn9UO6WpkWnnvK5vILxZ5spPTYNPlVgn+k3rDCASMbdISdp4+hmCZGOXoFkYDn
         H6FIR399yjSptGfI4KTkPavPpS0+YnmQcBjn9nJSrLCYc/dS2x/hzne5qyGdx8V4PIto
         mwnWa/8uGcWBiuA1+ppg5g6je48aZQj+pLY1g62YmDMT69LY+vjowhnDPwO0pk4YK/As
         ACTHyit3ipuR4PUPvovOdMPF4Go9ODw/qKyuliGmxchi10cqqpvjjeibjATPXgHkPTFg
         bFL3L9IHKL0HtbroveHSMn/FykTwsAVOdNlJx9ZhMb33erg1SQHZyvwDD0FzAofz6UOx
         N18g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736751750; x=1737356550;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Bh9wlypUFN2oKJt7/g0PzonFk8STFVzqSU8WgqQQAK4=;
        b=Dk+/567LtAnzBqNNd/Cy44344X+HKyW3LHLoSbmcL35Wnw8woEqv/it570Anj1X8Ua
         xivRncg5zdos4WNB6M242L7OPln0ol4i48079TOgMrW1NsYhB3ZnKkyNT6TvX3dfdxgA
         Zvkwh3Du+dQiizevvYYc09GxbrIxoQivtZLcX/L/31VUF5x09DPnQFvPSAf+XWsaQDiD
         2brXT+65Uqv5/2AsvIWIIMG7zDIaKHD2KenfgJfpPfnEZfzbXoQI3+IhbzoI4DVqfJLX
         RJqMnbd9N7ZPe7VNi/P6dtmS8Wdr+rULrjltoX9haNV0x44O3ZZca5mxvvNSz0nPIwGV
         EQWA==
X-Gm-Message-State: AOJu0YxxVNMb4bJBHifEsAf1kCMp8/gCGr2sRAf0eSjHTV/3zXKQsZ29
	f56gr3tYHfmlMBb9XABuR6HcXgBGrV8qMgRP0LaMdcW2mwebIrQHW3biXw==
X-Gm-Gg: ASbGncvqLNJ1qMLix04EVa9hIjqQD24f6sA6QKt/ukPfF+AGJ0cxoilnzseHN0/uNRg
	kF4QDsaL2jy8H6zvZiYw4XHWZGxcMjsDjlISHS09xlEa3utG+ZCKYr8mrBdKaKduv90rlJuqrY9
	joDXxys3oQmNQ301HewwvsNqFZ23Ulv5uxGZoh8UjE8/ICAoTQgpOCpYXmc+9n/be/4V3GLVb+k
	QBOxtqO8DS5cIkjTRRw4fqKPwL9zP30yUfbVJwrqUExmAaNkmxUWGY5/C1aqkryp9nrNFGoX13+
	zwQq
X-Google-Smtp-Source: AGHT+IEKRrEHcymoG7QvlNouEkjckOCCKqIIMukTFd0LmKJvwA0vL9ovriqGAmUQequpuoWKymHA8A==
X-Received: by 2002:a2e:a543:0:b0:300:3a15:8f23 with SMTP id 38308e7fff4ca-305f4530393mr56265861fa.7.1736751749636;
        Sun, 12 Jan 2025 23:02:29 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0e239bsm13489121fa.46.2025.01.12.23.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Jan 2025 23:02:27 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 13 Jan 2025 10:02:16 +0300
Message-Id: <20250113070216.16303-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250112_230232_412486_AC539D15 
X-CRM114-Status: GOOD (  11.52  )
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
Subject: [PATCH v2] i2c: at91: Fix driver for SAMA5D2 SoC
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Most bits of the AT91 SR status register are cleared after reading,
so we may lose the status at the end of the wait loop.
Let's use the value already readed to check for "completed" status.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/i2c/busses/i2c-at91.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-at91.c b/drivers/i2c/busses/i2c-at91.c
index dbc5aa4ddf..8929dbaede 100644
--- a/drivers/i2c/busses/i2c-at91.c
+++ b/drivers/i2c/busses/i2c-at91.c
@@ -276,7 +276,7 @@ static int at91_twi_wait_completion(struct at91_twi_dev *dev)
 
 		dev->transfer_status |= status;
 
-	} while (!(at91_twi_read(dev, AT91_TWI_SR) & AT91_TWI_TXCOMP));
+	} while (!(status & AT91_TWI_TXCOMP));
 
 	at91_disable_twi_interrupts(dev);
 
-- 
2.39.1



