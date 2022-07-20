Delivery-date: Wed, 20 Jul 2022 12:35:20 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE732-00FVFO-LP
	for lore@lore.pengutronix.de; Wed, 20 Jul 2022 12:35:20 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oE730-0005kp-HL
	for lore@pengutronix.de; Wed, 20 Jul 2022 12:35:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	Content-Type:MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=X9wl83+CHNRLtX3ZVPqruF7KP2WfBwIeNUF4V2ktxf8=; b=kw947YdepWd0+1ixXqoH+EofEY
	P+Fqq7jD2LZNyOh+Hs+VhxhJzl7iK4h9dWZoDbNgPOodcy+tXTSyzf+HaNxwFV4wM5xd1ZKZu5guF
	529Xr0gsX5Km9K9/jymMMGdE8k0PxeM0a9s8qOi6WJXR5MNI8ygyPbmuAp7Qce+84iENV/x9S2x0Y
	53xMKO/VRFbGGnogX4aIBsfrnRsGe/hgIRD0M9fY5gdD8oC4sNEI7HWG+Lsb94pd2PI1U0IcF3WZK
	5K5AIquF14pbwsv6EM98CrKBs3CzXspcoAHulBuWmBWYCZaEj03ybpouC0gW2icX3ATzwRzTSkkU2
	pfmri3Dg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE71T-0048LY-5G; Wed, 20 Jul 2022 10:33:43 +0000
Received: from mail-ej1-x633.google.com ([2a00:1450:4864:20::633])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oE71N-0048Ei-7v
	for barebox@lists.infradead.org; Wed, 20 Jul 2022 10:33:38 +0000
Received: by mail-ej1-x633.google.com with SMTP id ss3so32200637ejc.11
        for <barebox@lists.infradead.org>; Wed, 20 Jul 2022 03:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X9wl83+CHNRLtX3ZVPqruF7KP2WfBwIeNUF4V2ktxf8=;
        b=Wn8VVvEVMEdDuzPUNR1CZMxQVljUqyPn7xws8pygo/xeTkcIOHVPDhXRH3yC8546B2
         hSMGkMxUEU9FtdxCwJYRg+CQiZfccHnPgyOIHH4eH98yPko5rtL4kbSxf8X0iBzfoKAn
         ibzcrzN5vPu9UN+AZSTaMN+QIrlXdVN9J38GTmo3v1ByKZ6V28aH8A9ZiuE1suaNdZIA
         1p/1UUGZtxVBH/28sIyZSe77rxlnxuZ46CtcYAyWcDkqarf5YWdXEsjncTrPCGzo1lAS
         i9SARqE0NXwjt5sAP8PuW8LxdKXvp9oNMLEDur3cIuj3zRkhtJlz+XdC1OVZ1sqfD/cq
         5GwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=X9wl83+CHNRLtX3ZVPqruF7KP2WfBwIeNUF4V2ktxf8=;
        b=QcOB0THueJo71AG23M5nZP0ybv6B9CmjMBbBZfDTSbTtMIVuiGF07pdbtK3qKbgKVJ
         dX6RBWLQokK2nTeTANAhFrl8pPF3eQrkmJvCM+xX/Wi11oYvcGn4vPb1v43JAv+8ML/4
         t+e2bLbjTWpymxL56NxkQ5o832kFMzku8m/XyAexEKI6Ojc3EnL+uWRl98251XuDYcB9
         uDkY3wk6ozweIFqIY2IZq2DdgrJGrKwWm4aEKKHp8XUxQoSdypjUZkdIUj9mE8SKl4MR
         K+2/sMPVMnfpL8CF2ZNTyTqo+FcbYxnv2Q098N0J85i1VQEALjdGPlY9xAxfJiow9uQg
         Smbg==
X-Gm-Message-State: AJIora+RBLDxipDe9AGRvgxE2La/YJRTyZhSjgoALEXGcjJ6oTcDluz9
	PeHxM/fDhBzmdlycCpdgYti2PBqcnnndiQ==
X-Google-Smtp-Source: AGRyM1tFsV4f9e4bLtKV/P/BURFweRLWA/40uk3Nr+att3T2acA1/ZgPxLRjLXcR1zhXn5ruSCZ2PQ==
X-Received: by 2002:a17:907:628c:b0:6ee:70cf:d59 with SMTP id nd12-20020a170907628c00b006ee70cf0d59mr34107341ejc.402.1658313213688;
        Wed, 20 Jul 2022 03:33:33 -0700 (PDT)
Received: from PC-BRAT-W10.ESKON1.local (mail.eskon.cz. [213.155.251.67])
        by smtp.gmail.com with ESMTPSA id fj12-20020a0564022b8c00b0043a6e807febsm11990873edb.46.2022.07.20.03.33.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jul 2022 03:33:33 -0700 (PDT)
From: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
To: barebox@lists.infradead.org
Cc: =?UTF-8?q?Daniel=20Br=C3=A1t?= <danek.brat@gmail.com>
Date: Wed, 20 Jul 2022 12:33:13 +0200
Message-Id: <20220720103313.7837-1-danek.brat@gmail.com>
X-Mailer: git-send-email 2.37.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220720_033337_327274_A7EE4279 
X-CRM114-Status: GOOD (  11.76  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] i2c: bcm283x: fix ending of transfer in case of NACK
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Fixes an issue where the driver in case of NACK error would not properly
terminate the tranfer, resulting in BSC not sending the STOP condition
until just before the next xfer.

Signed-off-by: Daniel Brát <danek.brat@gmail.com>
---
 drivers/i2c/busses/i2c-bcm283x.c | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/drivers/i2c/busses/i2c-bcm283x.c b/drivers/i2c/busses/i2c-bcm283x.c
index 097f73d983..fdba3b91bd 100644
--- a/drivers/i2c/busses/i2c-bcm283x.c
+++ b/drivers/i2c/busses/i2c-bcm283x.c
@@ -147,7 +147,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
 
 		if (ret) {
 			dev_err(dev, "timeout: 10bit read initilization\n");
-			return ret;
+			goto out;
 		}
 		if (reg_s & BSC_S_ERR)
 			goto nack;
@@ -178,7 +178,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
 
 			if (ret) {
 				dev_err(dev, "timeout: waiting for data in FIFO\n");
-				return ret;
+				goto out;
 			}
 			if (reg_s & BSC_S_ERR)
 				goto nack;
@@ -197,7 +197,7 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
 
 			if (ret) {
 				dev_err(dev, "timeout: waiting for space in FIFO\n");
-				return ret;
+				goto out;
 			}
 			if (reg_s & BSC_S_ERR)
 				goto nack;
@@ -216,16 +216,23 @@ static int bcm283x_i2c_msg_xfer(struct bcm283x_i2c *bcm_i2c,
 
 	if (ret) {
 		dev_err(dev, "timeout: waiting for transfer to end\n");
-		return ret;
+		goto out;
 	}
 	if (reg_s & BSC_S_ERR)
 		goto nack;
-	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
-	writel(BSC_C_CLEAR1 | BSC_C_I2CEN, &bcm_i2c->regs->c);
-	return 0;
+	goto out;
 nack:
 	dev_dbg(dev, "device with addr %x didn't ACK\n", msg->addr);
-	return -EREMOTEIO;
+	writel(BSC_S_ERR, &bcm_i2c->regs->s);
+	timeout = calc_byte_timeout_us(bcm_i2c->bitrate);
+	// Wait for end of transfer so BSC has time to send STOP condition
+	readl_poll_timeout(&bcm_i2c->regs->s, reg_s, ~reg_s & BSC_S_TA, timeout);
+	ret = -EREMOTEIO;
+out:
+	// Return to default state for next xfer
+	writel(BSC_S_DONE | BSC_S_ERR | BSC_S_CLKT, &bcm_i2c->regs->s);
+	writel(BSC_C_CLEAR1 | BSC_C_I2CEN, &bcm_i2c->regs->c);
+	return ret;
 }
 
 static int bcm283x_i2c_xfer(struct i2c_adapter *adapter,
-- 
2.37.0



