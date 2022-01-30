Delivery-date: Sun, 30 Jan 2022 10:52:29 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nE6sn-000ZKC-It
	for lore@lore.pengutronix.de; Sun, 30 Jan 2022 10:52:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nE6sm-0008AG-Bp
	for lore@pengutronix.de; Sun, 30 Jan 2022 10:52:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=w3smTMPOzGCWV97Ry3ziVVKC/JqxC1GePSzEQZfIYQw=; b=ZBjAPjVlcp3Sf8
	anuxCeemwfj6pZV4WCezlwZ5kBMObJMx89SoNmMxALTf7+sIyxWciqSKMUmemHcCinSFRX6a/B4/q
	CjNn0W6EiGXVHYsLMuxxKzt0YrwFM5zY/uDABl+oYDu7IPXHvqRKafK6bpY7il4y7kYnz/zfRgvnq
	JtuKQyS8NO90ugA6bkrHyAdTCUqa+wremA5lnCgBX+JkgdyUc9IDWT3YlJj6ZqbNRgv0H0HYPtWW8
	r7excFNYVB/+0iX7FaPO5QSKter3cY6TQH71ngTKlTviYiCqXjzUpHEE1qZV1c6Fka33CATGnXb0C
	M8wyuE1o9HHHLlNHftRQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nE6qu-006Ivg-4U; Sun, 30 Jan 2022 09:50:32 +0000
Received: from mail-lf1-x12e.google.com ([2a00:1450:4864:20::12e])
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nE6qS-006IoC-H6
 for barebox@lists.infradead.org; Sun, 30 Jan 2022 09:50:06 +0000
Received: by mail-lf1-x12e.google.com with SMTP id o12so20685022lfg.12
 for <barebox@lists.infradead.org>; Sun, 30 Jan 2022 01:50:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0/tlT8mC5lhpRt5pyDlESfQtqZcsxB1HY7MDGjeXBbU=;
 b=d4A/f9ZKVwjAS67XoEzgKkVJdHzoN1KDhE8N61BMZI6fJ49sfockl0tA+sxse6bWhM
 sy6tdeDF73Xjl4CDoAPTO2TtbIeDuf1OrzUaC0buZvtTt1Z5ecQf6fXKGIOKHquwMt1p
 OieWjb7gD+6hhuRe/hARpdUdXRe8tEZ7AiNif8qCDJbFAlQstRAhdu/9GNp3kusHaLe0
 CJbtrZG1QYqx3JvwqzLyKdwWmFmYoWwW3EOllfxSKmwrK2T1JStOlMjz5a5eXhj1aCyI
 xLWunBpga9OyqeHcm9d9uLapqmmS6hksHR2KTYVSQ6IF27dAukJX6kTC0iDFXvjYh1+i
 t0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=0/tlT8mC5lhpRt5pyDlESfQtqZcsxB1HY7MDGjeXBbU=;
 b=kR9XE4tfl8LnOJznlY/GkXrZYOXFhl/4vM1LHzfUJy7Y2fMAvnXtUVhyvGQPnIVNN6
 hr5+d5PBSh/80mB1ySAU6h1gNrzBxneE3cA14sd0HQHqdZF4slZICo07FAqHsU32H7UG
 s+tAqLhxgjYTzpo56guomG7BIaKcbYnKfB7pnkw11uu6lxq5OiFcpwyyKHslLvcaCEzW
 W38iWXS3ZEF+EM732GG9aWynR1GySUHiypRXU59g/UPQBJDAY1dwGXfVp7PVzuZC0V1R
 Yho28M5pakCSyiHyAdlNi1D4XhBcV+DzonUeVeP/WbHkOFmbEXPk8u+2umRRYkPkc7z/
 E0fA==
X-Gm-Message-State: AOAM5333POu5ligrhAoDWOY94xxDGbI9gzb56F5vPYAu+ZFlO1Kaigr1
 BgDQBO34G/2w0AH19n27BPQVp347RPo=
X-Google-Smtp-Source: ABdhPJypP82vDjQI4o6GClv6T+HolpVSUMcuen+8wZ+nCYOh5/AbmgU0t3B2SPKAUe8w7sCbH759bQ==
X-Received: by 2002:a05:6512:3a85:: with SMTP id
 q5mr11535921lfu.539.1643536201094; 
 Sun, 30 Jan 2022 01:50:01 -0800 (PST)
Received: from localhost.localdomain (109-252-142-181.dynamic.spd-mgts.ru.
 [109.252.142.181])
 by smtp.gmail.com with ESMTPSA id i1sm1781600ljn.39.2022.01.30.01.49.59
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 30 Jan 2022 01:50:00 -0800 (PST)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Sun, 30 Jan 2022 12:49:56 +0300
Message-Id: <20220130094956.73266-1-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.33.0
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220130_015004_630595_704FCAFA 
X-CRM114-Status: UNSURE (   8.48  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.3 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: rockchip: drop unused variable 'name'
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 drivers/pinctrl/pinctrl-rockchip.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 869cce1982..c99074407f 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -877,7 +877,6 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 	struct device_node *np;
 	struct rockchip_pin_ctrl *ctrl;
 	struct rockchip_pin_bank *bank;
-	char *name;
 	int grf_offs, pmu_offs, drv_grf_offs, drv_pmu_offs, i, j;
 	int gpio = 0;
 
-- 
2.33.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

