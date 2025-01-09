Delivery-date: Thu, 09 Jan 2025 08:38:00 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVn79-0014v8-1f
	for lore@lore.pengutronix.de;
	Thu, 09 Jan 2025 08:38:00 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1tVn79-0002jk-EG
	for lore@pengutronix.de; Thu, 09 Jan 2025 08:37:59 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=pRQj5GB+RQwJIcPxFE6g/x/CRvIa/Gbr1gqp3p9fGcc=; b=qwMd2xDdOQ2WUt/mv8sF0a4CVV
	KZMToPhmCnNdVfXhYgnZPzrcCYZ63OkDR5Uo55Zk/et2a3sf85RAKlTZf7p1+e0UQ6ukH9vzi5eBl
	hgY44XWFgWrb9CcfiVEoQtLB2M2N2A4OtfCrmsUPMF8TS1w9oozpUoGcovS3islo6708Lqd/5o8xo
	cGN2svOMvbIkBpaMybjBv9Fw6f3IYq6q4jMPuDT4mXgCPXUNNh5ILQpRuTlQvejUHWBBmR0obIlfR
	es56hkOUvPrsKeq7xuSSlgRk7fKdlw5/I1Ox45Ei+CTNPBGNslOO9tKMHnvd5lWsP+yu0HF4RzDn0
	agHLgS1w==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98 #2 (Red Hat Linux))
	id 1tVn6T-0000000B4A8-14Fl;
	Thu, 09 Jan 2025 07:37:17 +0000
Received: from mail-lj1-x236.google.com ([2a00:1450:4864:20::236])
	by bombadil.infradead.org with esmtps (Exim 4.98 #2 (Red Hat Linux))
	id 1tVn6R-0000000B49d-0kcC
	for barebox@lists.infradead.org;
	Thu, 09 Jan 2025 07:37:16 +0000
Received: by mail-lj1-x236.google.com with SMTP id 38308e7fff4ca-2ffd6af012eso6355441fa.2
        for <barebox@lists.infradead.org>; Wed, 08 Jan 2025 23:37:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1736408231; x=1737013031; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pRQj5GB+RQwJIcPxFE6g/x/CRvIa/Gbr1gqp3p9fGcc=;
        b=FYlRYaCn6C5gj0peaFstzWbusYcoMWGCnDZlEAifJrpFXeXnPCsuqrJk9GLqB2XGum
         aGNbiyhZl/mqdtEyGru2O9sd/3DknKVzrF/UEfSQk5ZZx3XV28KON2h053x/gxnCg+T6
         jJzPJUT4ZG6I6Q5Ic9vA84Xsi10mXejzQbIG347nycKiqksWuvjTwXRF1Ya4mNqp/doj
         U0+h51/jtd1FtiKvBWgz0bLwAgNDchZr4DC7eW9WNwDP5hB4v//IodSCIasVrTCOmp/c
         roKL/NIonYxk8HfKxYIGtBa+EWp80Tknis1nA837gn4fka1UEIyeshK7mEdTH2n8EFCC
         rSAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736408231; x=1737013031;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pRQj5GB+RQwJIcPxFE6g/x/CRvIa/Gbr1gqp3p9fGcc=;
        b=rNgfzxUIEq/0nCeeYEo5Dng5RVDXKWt/wUfdG962Au5X7XOgdLihr5jCktXIWVVYLF
         5Ut+EyXTB7y4vN2rb5kk2CefiFur1eS8nA0mhND25/NNogar12StfeOdUjvVgsmg8QPh
         UWek50b9BmNR5eddNOkl8dbTicPpuWiyd300N+Q6aQDVDG+2bq4pxck+tNVUf8XIlpYj
         rm6f9mRiAIJTuyXL02z2/JV02BynjcD7YmTe632RAwhYi1pDuJpt+dHGfF3ajJD6eLQM
         ybvyTYRTGKitIzSEbbe/BucpkO+8iqyvooVVCERstEjI3ZlJbTl/zwGcmzq5iKYIAzGR
         uYBg==
X-Gm-Message-State: AOJu0Yzzupq6csv9ZDGZRwruA+R37fwcBJWaH9vNGEc6Poq4hD6WD0w8
	MhaNZoWfyvfVT7CnOs+z1vp1RorYj6gmiA1pF11CHtBkuCKmXROkTOBgZw==
X-Gm-Gg: ASbGncttvXOHQ7lO/wuO32Kp31Lk8w8zIY3DhiKEG83mynEYi6cAtj/P8VKSwzmaaFm
	06wKijNcEyymaFV0NnFtjUmwr2A+pE2aW/383nhEnbW/73qfchJyZbvGfMXNhxFk7RDsqEmJr4W
	8gAB9W9JsyJ0mjB07hFtvL8gHohVdnUktx0YVc6JBc12ZDlVpfvXBFG+H7SfAojI9v+8ODzuw5P
	DpaoseerGfylBEvt7S9e00dkcCz60HZjdAm2AIkK1k299KLMZhHdogu3f7RfjDFzL/ssOgfum6Y
	4nMl
X-Google-Smtp-Source: AGHT+IGO//7BuHsBP+CRGgZ5+ag60w232LmNvvsrAf1ewwlP9FrnLaYdXvFaAN1Py2xgNDUXYX+t8g==
X-Received: by 2002:a2e:be9a:0:b0:302:1861:6de7 with SMTP id 38308e7fff4ca-305f45b3c61mr17297191fa.24.1736408230105;
        Wed, 08 Jan 2025 23:37:10 -0800 (PST)
Received: from localhost.localdomain ([188.243.23.53])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-305ff0d1345sm1127661fa.31.2025.01.08.23.37.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jan 2025 23:37:08 -0800 (PST)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu,  9 Jan 2025 10:36:54 +0300
Message-Id: <20250109073654.25565-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.39.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250108_233715_237766_1EE2AC0C 
X-CRM114-Status: UNSURE (   9.77  )
X-CRM114-Notice: Please train this message.
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
Subject: [PATCH] spi: at91: Use the SPI alias from devicetre
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/spi/atmel_spi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/spi/atmel_spi.c b/drivers/spi/atmel_spi.c
index 62e1c66fd2..f441bfdfe1 100644
--- a/drivers/spi/atmel_spi.c
+++ b/drivers/spi/atmel_spi.c
@@ -402,7 +402,7 @@ static int atmel_spi_probe(struct device *dev)
 
 	master = &as->master;
 	master->dev = dev;
-	master->bus_num = dev->id;
+	master->bus_num = pdata ? dev->id : -1;
 
 	if (pdata) {
 		master->num_chipselect = pdata->num_chipselect;
-- 
2.39.1



