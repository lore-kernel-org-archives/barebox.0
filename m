Delivery-date: Mon, 24 Jun 2024 19:51:07 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sLnqN-00BZlB-1g
	for lore@lore.pengutronix.de;
	Mon, 24 Jun 2024 19:51:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sLnqM-000850-Vh
	for lore@pengutronix.de; Mon, 24 Jun 2024 19:51:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=x8c8mNlZlwJdvedtAl2wAkyVU3FiuaR8XpXuEF3YHVk=; b=w8KzcyNCLFZfzRD0gOBTR8/TRX
	/hU3jDsryUSB7u1II7GwXjCrP2f4xQOfa1Nrbq+JoDKD4ZU7N9AAnoo09+9tNnwyz4oH3w8ypFnel
	q2SjAmh7Ds/psFEd9+ZP+yHQYVpmHM2zLG/1oTeLJFTaewG0HHH20I4bjUOQ8W5g21z4R72TX4dBT
	+9Yik/ZC+hERHl+HSIwNHAEFnKDvH7W1KAujbFAaXQBN22PlwIkV1RPltvbZYfIDwB+uabQZwV7mf
	g9WgIRVmVt22MV1w8RnFD5RuVw39vmGpqM1t50zSLmQlgpeBFFt3mQMrYoS+ser/WbTKVwJ211Say
	ofbqITtQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnpk-00000000AB0-0brF;
	Mon, 24 Jun 2024 17:50:28 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sLnpg-00000000A9D-1TLM
	for barebox@lists.infradead.org;
	Mon, 24 Jun 2024 17:50:25 +0000
Received: by mail-lj1-x22e.google.com with SMTP id 38308e7fff4ca-2ec52fbb50aso29986771fa.3
        for <barebox@lists.infradead.org>; Mon, 24 Jun 2024 10:50:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1719251421; x=1719856221; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=x8c8mNlZlwJdvedtAl2wAkyVU3FiuaR8XpXuEF3YHVk=;
        b=UqQyN0HUIGlyYEsqAGWVmW7G4QcyIkij41p53SttUQ3G58K4vx4XnvuyP/iN6K6dwX
         i+GFgHkakywwiuH+10Qq6DxmnN37VBa67mB6BKaUj8sH5Z94yMpXBnLaWqpB2bCKNmrt
         17fbBXI53+OJZkith/3k57uHnp1/yYgkJxztxAVYKzUFdUCvoaUFVsX0ZTaeYHTxgYLm
         t4UXeN24FUjlERgi5houOKnugKebpGP9gsbHQI7SzIqqMugWabVuZ40g83RuRr5WPobd
         YDRBHDJaaHJz6J1XDKr8OzVG2wuV1Sr59GTLUMk9rqtKSXDywePShea/LI37HWsq27yF
         eb4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719251421; x=1719856221;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=x8c8mNlZlwJdvedtAl2wAkyVU3FiuaR8XpXuEF3YHVk=;
        b=lhqtlfPIT6mes2jlz3b6GUenGr5AKlDMN/GaP3b1VZQr9tZJfvtMbJLNxJVwlQJyI2
         P3VplyTfDPdMs/AmG1dEluBMIug05YlIzkZu0s2iLZjgTNXCTvmxI76aJDOrEJlYY9Zc
         4NGzIXSQnXSKzerB2C99MQH4Bd0W6OvdHZLhWbm8ppgyfN+ivoiHqmvw3aOjfLbMY8eF
         kaHEypExJo+XF9r/SD8IGNjVfD87IBe9a5Yb0PMRRZHiyXuIFVdzk1SYdU595bNiAAPr
         odaRb8jYEmEL5fasbL9Xe9srLIPUn3AZWcPmBdDAtiQznb/ihYqnl39ujXZiDv5m9F7k
         jvMQ==
X-Gm-Message-State: AOJu0YxzOeMsUcj06BqaEVThW/JFfEl7QiayzUzk/Ai20i1D3iQf5jTH
	69eYaSlVtSFIUqxqcMZsGweoEe2fysgEn7iuiKRe5pQrpZEBTPyhxMmagw==
X-Google-Smtp-Source: AGHT+IESzMIfqbUpxx1V9XkYjitjryDL2IfW8QCLS11EiYFJZovUsWedMNrDlHrVaAhFILODeUPrsQ==
X-Received: by 2002:a2e:7c07:0:b0:2ec:4e99:92 with SMTP id 38308e7fff4ca-2ec5b31d156mr40418511fa.29.1719251420969;
        Mon, 24 Jun 2024 10:50:20 -0700 (PDT)
Received: from localhost.localdomain ([95.161.223.172])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2ec5fd40670sm3825091fa.108.2024.06.24.10.50.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 24 Jun 2024 10:50:20 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 24 Jun 2024 20:50:09 +0300
Message-Id: <20240624175009.826551-1-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240624_105024_420724_29AA857A 
X-CRM114-Status: UNSURE (   9.91  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] mfd: rk808: Use standard system-power-controller property
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The old property "rockchip,system-power-controller" marked as deprecated.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 drivers/mfd/rk808.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/mfd/rk808.c b/drivers/mfd/rk808.c
index adb9d8ca0a..8f766a3fa2 100644
--- a/drivers/mfd/rk808.c
+++ b/drivers/mfd/rk808.c
@@ -366,7 +366,7 @@ static int rk808_probe(struct device *dev)
 	rk808->poweroff.poweroff = rk808_poweroff;
 	rk808->poweroff.priority = 200;
 
-	if (of_property_read_bool(np, "rockchip,system-power-controller"))
+	if (of_property_read_bool(np, "system-power-controller"))
 		rk808->poweroff.priority += 100;
 
 	poweroff_handler_register(&rk808->poweroff);
-- 
2.38.2



