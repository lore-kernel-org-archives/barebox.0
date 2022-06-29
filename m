Delivery-date: Wed, 29 Jun 2022 08:32:15 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFE-000w4K-Gj
	for lore@lore.pengutronix.de; Wed, 29 Jun 2022 08:32:15 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o6RFG-0005ty-H5
	for lore@pengutronix.de; Wed, 29 Jun 2022 08:32:15 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+ykXte65pKUvAFN4QWFk+AwY8rzTu6T3BiXrGA+u+dY=; b=TLpfhlLVLY7NgyH2mjx6rt069n
	TnL9QjW4y0s7lwrAjUMHX08NtTiqJJoxCRKpHlp0a+Ll+EvkscWfqZFYc77XPtffGeuhaowyq8ube
	VWs/aznwkN3fQdNXabOCh29Yvm0/QDfHqZhRMFX6ZCsNSqk0RroYyIdCSLDrlVwCWzkdwyXDVP+r1
	kRCqnlGIh/U4P6vBYRU1TqX6YEvCuLBLgmZPdWENlV+igBdlp3MzX5L9ZDn5j5gaDQC3/SYO/jKA+
	l2Bwd/OUg5jzYkXBl9mW/5V0jbT1nRHAc9G+EL7/FYpmC6KBganL2r44PH6eR4ztvqpqoKdDmn+m3
	DvtotADA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDp-009maY-2q; Wed, 29 Jun 2022 06:30:45 +0000
Received: from mail-lf1-x130.google.com ([2a00:1450:4864:20::130])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o6RDd-009mWj-Ac
	for barebox@lists.infradead.org; Wed, 29 Jun 2022 06:30:34 +0000
Received: by mail-lf1-x130.google.com with SMTP id t25so26224766lfg.7
        for <barebox@lists.infradead.org>; Tue, 28 Jun 2022 23:30:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=+ykXte65pKUvAFN4QWFk+AwY8rzTu6T3BiXrGA+u+dY=;
        b=LnKB+uC/vYNy8aLzkJ8jFfmkYdZsugEaHueKFgqv02jaqbz1A2LVPG/Uamk7R5CaFa
         aIUmkXej7vq8avRCqoeUZDASKSXRm/o0WtXFYBFxZ8I9jn2+ELJ2/1g4+L8B6b7UTbDl
         EmbP9iXeFM8pcSbp2g65kq8QyJbhIfg+0Hdb2OqQTzhuPid0rkVGES00UEJ7xz4YoE8W
         OrKBQa+wV5+in+vb3idEvXeEySYPCfr1G8sbbPvqkwR9LCV8p6giyna5PfFsSvPNBK5O
         BUWOfaFAvnbZ+S4KyBr3znR9bvkSxbY3Pj310UQpc5OM+ntpKSCtHsD9tS01Gj8GhJ4V
         Lm+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=+ykXte65pKUvAFN4QWFk+AwY8rzTu6T3BiXrGA+u+dY=;
        b=U2eflw7UzUe0zW3RT/5sX7V6lU38f69bNrRg7Xj2hllWl3Czo55pPvsZIB1RXvXAxF
         Rlz8Wfxwpdd+WppGNI9J0GYF75sBpgYC0vz01I7lH/Go4/2Kpv2c6N7IdiHyfjOxbbZE
         UNgmCDZAhU7hCh7+gZkitLK+IGFVpBoG+pEiCiWKiYvSDg8iWlN0fibeimgadpz3g0SP
         f9tONRS9G8TSErnYlLlvj9IJM1+7naP1kwXzN0o1wVsaWrnG/JC8VkYCx39pTDXltIZ7
         qeZccvHhX+uwdWYobNCi00xGsDkXDC1NyDeo9xGbqbOvx0ZKb0UigcyyqMaPRk7raSRs
         69RA==
X-Gm-Message-State: AJIora8EoJlSqRxUDJmqODazQHm/Bk0A7UwqjOjkdBGZliM8mKudyKYw
	6wtgoqOkxYLxA/RqsJknTvcMZsKRWAw=
X-Google-Smtp-Source: AGRyM1viBY85b/dtj79G5hs9s00badUgC3YAlMpE0PSG+2o7kLHRURoehnHSJyHBjZE1WrHBeP0rmQ==
X-Received: by 2002:a05:6512:3f18:b0:47f:797b:4d6 with SMTP id y24-20020a0565123f1800b0047f797b04d6mr1106188lfa.356.1656484230373;
        Tue, 28 Jun 2022 23:30:30 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id r25-20020a2e9959000000b0025a70f7ea3asm2019078ljj.138.2022.06.28.23.30.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Jun 2022 23:30:29 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed, 29 Jun 2022 09:30:22 +0300
Message-Id: <20220629063024.3945-4-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220629063024.3945-1-eagle.alexander923@gmail.com>
References: <20220629063024.3945-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220628_233033_422488_01FD06C6 
X-CRM114-Status: GOOD (  11.87  )
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
X-Spam-Status: No, score=-2.7 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/6] drivers: pwm: imx: Remove redundant assignment
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/pwm/pwm-imx.c | 8 ++------
 1 file changed, 2 insertions(+), 6 deletions(-)

diff --git a/drivers/pwm/pwm-imx.c b/drivers/pwm/pwm-imx.c
index 609765d895..c542b72796 100644
--- a/drivers/pwm/pwm-imx.c
+++ b/drivers/pwm/pwm-imx.c
@@ -206,7 +206,7 @@ static int imx_pwm_probe(struct device_d *dev)
 	struct resource *iores;
 	const struct imx_pwm_data *data;
 	struct imx_chip *imx;
-	int ret = 0;
+	int ret;
 
 	ret = dev_get_drvdata(dev, (const void **)&data);
 	if (ret)
@@ -236,11 +236,7 @@ static int imx_pwm_probe(struct device_d *dev)
 	imx->config = data->config;
 	imx->set_enable = data->set_enable;
 
-	ret = pwmchip_add(&imx->chip, dev);
-	if (ret < 0)
-		return ret;
-
-	return 0;
+	return pwmchip_add(&imx->chip, dev);;
 }
 
 static struct driver_d imx_pwm_driver = {
-- 
2.32.0



