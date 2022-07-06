Delivery-date: Wed, 06 Jul 2022 10:08:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o905N-007TX3-M0
	for lore@lore.pengutronix.de; Wed, 06 Jul 2022 10:08:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o905P-0001dH-O3
	for lore@pengutronix.de; Wed, 06 Jul 2022 10:08:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:MIME-Version:Content-Type:Content-Transfer-Encoding:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=eRwhbbTbANqpUZFxylVII9bLXSU5vv44+f3e+gGkn6E=; b=1NIkaoldbdBMZOeGCmM2kVowMZ
	x9I51JFyDGBvoYRM44cBggA/d9H1vtXTqahk1XIu0WVEdi3B3dlG6JS5x0tCstRgtSHnExpeG8a43
	UY2ofIVprYq9ZjWCqO+LfU1H9NfiV2j2bC+sEfveXf42d3OD1aFc7HwPMkK9kMujvvwB+GjmfSNI9
	hUKvMVfzLzuz8LLUmvBIkr3sZfHo46xUsecsBV8xpajYefWIIr2PWsV4JstDLVqN9rBUS/GDlt7p6
	OQVDLYxyVxMNrRHyijy/t9bm+YP+rCCD+1qOQ2+drtq3WyOu1KSOpsElEaW/JkuMUJ4GJ815VFLvS
	SxbSgviA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o903n-007HLN-Bt; Wed, 06 Jul 2022 08:06:59 +0000
Received: from mail-ej1-x632.google.com ([2a00:1450:4864:20::632])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o903e-007HIp-11
	for barebox@lists.infradead.org; Wed, 06 Jul 2022 08:06:55 +0000
Received: by mail-ej1-x632.google.com with SMTP id o25so25682111ejm.3
        for <barebox@lists.infradead.org>; Wed, 06 Jul 2022 01:06:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=eRwhbbTbANqpUZFxylVII9bLXSU5vv44+f3e+gGkn6E=;
        b=MgsXICm3CNYbgVku2rKhOSc+rv3PGEO7s2Fhhq/hDdgshJs/Fm21LHJbD6klMXrhPv
         Ntd4BaFzXPPRA7CEyWOa/HD9KEssTZJnHJUNJ3PVXKTBZP1xqY6IPpI0Yv8gGuumqeBd
         E2VWCwDuPkH6eb0xWXO/M5v6mOo6V4smQ3E8bBNoRI9qkk+HsVp5K2d8TgxzHJaYXHGi
         8N/plhqdMxbOf3K3xmYIPjw1mFqKtD4lWK5+SfWt1fyc8awdIxWtRD1Yo/rSRa78YM8o
         OnZcWLJVwhNwP9xp9cVVm7ibMHWvOzcOgum9uJrERDL3+H8RpLliy0/sZVsMxgoEtFRg
         MsxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=eRwhbbTbANqpUZFxylVII9bLXSU5vv44+f3e+gGkn6E=;
        b=q5fePaGfY/GYd01jMvB6gonlK85Jnj/zKGuqHyQYh3qMWIANbkfAJJjUdD4gfRQzmo
         z3+l+HuAq2NAyQt6jBTSQASka9sXsVJbu0QBGKpfN7aiGGAHooYsVoVXIW+cM0UV8Xpk
         J1YkwmUuhMM/pKiTXeMa2VmLaUvqGVsEoIDA8CWCT0RNmmnESytpaxKUGG+BvymHJFGM
         FgAt60ZpiKl1Ru9cYgNYFelCKN3hmXsDfYh5TPdU0wUbX7dWYXLuoysVfQVx05PDhMec
         3CyQBH7R4XtkUWHC++um2L/2j8k3rszhI43I5bozeZJ2LfLWtlR+c5T+ipnumzs+ykj9
         tBqw==
X-Gm-Message-State: AJIora88Ep6ViHuHOtGcSA5x+Qi2XKLuSLVgyGJwJM08P4L7EPHro68J
	XMZd3RJ98dP3NjJLMIVInJGoR6Ua9Qe/Dw==
X-Google-Smtp-Source: AGRyM1typl4yvHjheR/JS2AMM6gkNK/LG6jFSzQAuS3MbK77nRa82iZqXEC0m2nNly/8vuk154YD5g==
X-Received: by 2002:a17:907:3e82:b0:6ff:1e04:a365 with SMTP id hs2-20020a1709073e8200b006ff1e04a365mr36534933ejc.617.1657094806045;
        Wed, 06 Jul 2022 01:06:46 -0700 (PDT)
Received: from development1.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id s12-20020a1709064d8c00b006fe8ec44461sm16907523eju.101.2022.07.06.01.06.45
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jul 2022 01:06:45 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Wed,  6 Jul 2022 10:06:39 +0200
Message-Id: <20220706080639.13588-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.17.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220706_010650_121755_5E6CB9E6 
X-CRM114-Status: UNSURE (   9.69  )
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
Cc: sha@pengutronix.de
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] ARM: baltos: use GPIO names for TCA6416 chip
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

Switch to gpio_find_by_name() method to get the required GPIO lines.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/board.c   | 13 +++++++++----
 arch/arm/dts/am335x-baltos-minimal.dts |  4 ++++
 2 files changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index 83c7dbc8b0..9229df09d4 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -140,10 +140,15 @@ static int baltos_read_eeprom(void)
 
 	/* configure output signals of the external GPIO controller */
 	if (hw_param.SystemId == 210 || hw_param.SystemId == 211) {
-		gpio_direction_output(132, 0);
-		gpio_direction_output(133, 0);
-		gpio_direction_output(134, 0);
-		gpio_direction_output(135, 0);
+		int outs[4];
+		outs[0] = gpio_find_by_name("GP_OUT0");
+		outs[1] = gpio_find_by_name("GP_OUT1");
+		outs[2] = gpio_find_by_name("GP_OUT2");
+		outs[3] = gpio_find_by_name("GP_OUT3");
+		gpio_direction_output(outs[0], 0);
+		gpio_direction_output(outs[1], 0);
+		gpio_direction_output(outs[2], 0);
+		gpio_direction_output(outs[3], 0);
 	}
 
 	dip = get_dip_switch(hw_param.SystemId, hw_param.HwRev);
diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index e55a2d7cbb..1544e2cc29 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -285,6 +285,10 @@
 		interrupts = <20 GPIO_ACTIVE_LOW>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&tca6416_pins>;
+		gpio-line-names = "GP_IN0", "GP_IN1", "GP_IN2", "GP_IN3",
+				  "GP_OUT0", "GP_OUT1", "GP_OUT2", "GP_OUT3",
+				  "ModeA0", "ModeA1", "ModeA2", "ModeA3",
+				  "ModeB0", "ModeB1", "ModeB2", "ModeB3";
 	};
 };
 
-- 
2.17.0



