Delivery-date: Fri, 09 Jun 2023 11:04:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Y2x-00GxyV-7D
	for lore@lore.pengutronix.de; Fri, 09 Jun 2023 11:04:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1q7Y2u-0006Kp-Vm
	for lore@pengutronix.de; Fri, 09 Jun 2023 11:04:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=oHrp/XHJHYK9kAjKqpmE4d7ptDnN8CkCglR/Amvv3TA=; b=tYmytzbDa7VXJLxNNs4RuNi35p
	QI7UkSi6EzPZKhPWvudjvLyl183V34tWFYTBzREkpuU0VU/j/wYiPjF8fsmMYaNtXzb++cb7xE+Jf
	8JolLO6BAcM1lch0e3XykfV41xRuPID/vuKAiLLLmLm7uLU18d6hJdKVC66s0EdQCLmp6POfx1Vlp
	pOeDE68VGCgih/gwCf6idn/JIggOVIHdIxtTj02nVmR/LuKm3IuY8Aii+GVOJRnUC1JMGdDJsgTuG
	+3wdrYBIVJhHHfR1M6p6MBKsyQ4MXa4naqrlaqPMGzgxutscdxKzoq+N0jUxfj/AX3FQ7ZRThjh8V
	XJz2t8ZQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Y1Q-00CLLD-1f;
	Fri, 09 Jun 2023 09:03:04 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1q7Y1N-00CLJQ-07
	for barebox@lists.infradead.org;
	Fri, 09 Jun 2023 09:03:02 +0000
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f63ea7bfb6so1819733e87.3
        for <barebox@lists.infradead.org>; Fri, 09 Jun 2023 02:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20221208; t=1686301376; x=1688893376;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=oHrp/XHJHYK9kAjKqpmE4d7ptDnN8CkCglR/Amvv3TA=;
        b=kYi0HPR85DyJeULBg2wsT1tHZGw9GrBc2H1RA+CmM2jIusrnvPJrgigHZlVtI1AfvS
         490eBGbgIIPhheWOtmNMHnLaP2/ITIuWJsdE8ZSgAydhakaujUlLUpAgSengrhZC1Jxh
         SijuxDrYc6nb55bvtBZtVNs8uOn+78T8yFcpqadgQrI01TGbXuJ40UpCPJj62rsxlyNv
         CUh3e1VkFBq1TM0ORcOR3XKa/v9HaNaWjDkAzQndm1sGSvmuPHoqilukidUuCHGpUpFe
         B7AgpFyU4c72xY7eq0hBMHJ60NGGkqrfiMVG3xYy58dUotiYZDZqkzfip0FaPlIrM1mo
         /x4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686301376; x=1688893376;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oHrp/XHJHYK9kAjKqpmE4d7ptDnN8CkCglR/Amvv3TA=;
        b=Idvz3vqtRMU52iq7YiYGnOwrNYkihCWzS+y+OhQRwzftG8rFcKHeu5qz+xSfmKF1nv
         xELshkqZECFzUfiXuoR7XZxCNS8jbNV3fx/U+4emjzktn/Dt/uSTvFxiC8c1vyWW4NMC
         PeevY4oy4mbpbdQdr3PyuE2OTO837UXC4CZAAG7TJRAD2Fpvw+vWeK+uSAX/MsPxQDxc
         YgX9o3U4Xo5eTiBVGy+5vQG701bVwQZM4ngjVrNf4KAYxbLszlJwvZ9W/4cG9LOOMC7X
         2oY8fUjlOkAVgaw3n634WFv8MJhRF/Yp9yT4F8MnL6ME2zaBYK70+xmMhrY7L8VG95Y6
         XRWQ==
X-Gm-Message-State: AC+VfDysEOHnlAXWIW1/qLWXUweB1BcAbAB0DedJZ4MvAQg6x1j/0lhv
	5nEZNYj9HE53/kkYOTVPhGjMf4Wn5sU=
X-Google-Smtp-Source: ACHHUZ6hSbz7cNOLfH8jGdzvIFpj8vLQtHGoXCWi0ZxYguagKsJnAW3hU+ji4s8IpToXs7wlU7LhNw==
X-Received: by 2002:a2e:c4a:0:b0:2b1:c1b2:e2ec with SMTP id o10-20020a2e0c4a000000b002b1c1b2e2ecmr762647ljd.9.1686301375745;
        Fri, 09 Jun 2023 02:02:55 -0700 (PDT)
Received: from development2.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id a11-20020a170906684b00b0096a91ab434fsm1018161ejs.40.2023.06.09.02.02.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Jun 2023 02:02:55 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Fri,  9 Jun 2023 11:02:17 +0200
Message-Id: <20230609090217.2492987-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230609_020301_075111_9F9BD232 
X-CRM114-Status: GOOD (  10.20  )
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
X-Spam-Status: No, score=-4.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] net: cpsw: increase a delay before reading the ALIVE register
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

At leasr am335x, the delay is not enough to reliably detect all PHYs.
Hence, increase the timeout.

Tested with the followings PHYs:

- MotorComm YT8511
- Atheros AT8035
- CPlus IP101A

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 drivers/net/cpsw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/cpsw.c b/drivers/net/cpsw.c
index 0449240f98..fdf6ff1e8e 100644
--- a/drivers/net/cpsw.c
+++ b/drivers/net/cpsw.c
@@ -620,7 +620,7 @@ static int cpsw_mdio_probe(struct device *dev)
 	 * silicon.  Since the effect of (b) was found to be largely
 	 * negligible, we keep things simple here.
 	 */
-	udelay(1000);
+	udelay(2000);
 
 	start = get_time_ns();
 	while (1) {
-- 
2.34.1



