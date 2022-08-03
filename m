Delivery-date: Wed, 03 Aug 2022 11:33:29 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJAkp-009sky-Ca
	for lore@lore.pengutronix.de; Wed, 03 Aug 2022 11:33:29 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oJAkq-0001xR-AG
	for lore@pengutronix.de; Wed, 03 Aug 2022 11:33:28 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=QEY9RQlbKnobFYnyWtPp5qv3KJIiCXzP5fVX6P5GxjI=; b=1SqSYdCCFdx/N0xrh4UxFbYmsp
	QYvVXkarK+8EEtupVgjVqLKnTPAl+jzPL5addUt8zHtup0FxOxymTMwkbFAzWkSI/rngYFTugf9FV
	XjSH2+Ar2bMjvvRze4Pqog4W7/kMcJCHcBqhKWm0Mn4+v8lXvkohCK7WSiqJI5x2ShuI2phXh38ot
	35OFLJNbkZ1JBP8BJuh4jeKoebhJCTHSWBPz0h1T943buEdvi3Gs/v20zSm8v4lis2GLD9DfJVARF
	g6BlKEWfA5tEsge1J5vWZRX/vuvM6QOUpCSSjpMweAnsuYV/6/saRwR3oapE3slL7S3VTKuLGcBa9
	vmvbsJfg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJAit-004LHO-He; Wed, 03 Aug 2022 09:31:27 +0000
Received: from mail-ed1-x532.google.com ([2a00:1450:4864:20::532])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oJAim-004LEn-1g
	for barebox@lists.infradead.org; Wed, 03 Aug 2022 09:31:22 +0000
Received: by mail-ed1-x532.google.com with SMTP id s11so9298130edd.13
        for <barebox@lists.infradead.org>; Wed, 03 Aug 2022 02:31:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from:from:to
         :cc;
        bh=QEY9RQlbKnobFYnyWtPp5qv3KJIiCXzP5fVX6P5GxjI=;
        b=cj8uushIsX2gSnb+whF0R84AaBTXztd9+gp/z8v8mC4hw7IWew9HRrcQLQKKaSQxO7
         RVdUO5DTv4pSQpXfPiU/PDeLYpmFrYyiQUNxOyhNYPcrnk38n6vTBCtU14Xu5on52ZGE
         PqkUetgDRIxiN3PVyCiQYol1sAw16rVTTeJOWVdaKFZdXMYHByXubXBV9FmYD5+NfUK7
         7E7BZyCW6hMSxLoP0OQGQckjH8MQeC8urWZpphSfxUQSf5kGYn21ce3BwPYsbbUEzDeu
         QPWG2VwCFQy/RCkGGWR/V5AFVRt//8l2TIGUxb+mKELfKmv8pYN7daxFbDo7nOqNJzJX
         zDPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :x-gm-message-state:from:to:cc;
        bh=QEY9RQlbKnobFYnyWtPp5qv3KJIiCXzP5fVX6P5GxjI=;
        b=JDsm4hu4d1oEoP7u1jaUZrAtcc6/kVdHdykxJb06iYZir62LGh9LMEwq/KbJ4qvCMo
         FS3/YxgXpjbjjRHbn5cAs68AFV1nMDudaRAhwiwk1w58vUyjJBM3knDmK5hdCl/nrqig
         ncd8YwYZMH4RQbCvmQASU+pMZBz2Xzq6dxhs3L34a4zjoVGzCQJ8MrjFzBmOnX6oREkU
         Aim8nqOuBQKoGm0kW2WfhZ1xItVrYzjyTJN/BTPzpRSZWd4nuHKVh1EtDac0rTRwB5gH
         7QEeiC8k27TnFAr6cUC19o9TKz6ImgeOR1iwGWZdMP4FjyqZK/MiK2pBc8k3+KapcDHq
         V6Pw==
X-Gm-Message-State: AJIora89UB+KctkjjnFhCqOO2ihkNKjtMWaiociLcM/xq3DpLNxcR6PW
	bQpgOeqWX0YbUBUycISFGrEho2dEZ9s=
X-Google-Smtp-Source: AGRyM1t4QoHUdNJjJJfESQsbiR2HJLoUeUdlPu99rkQ3nDvo2WUsh0c/x4CMp1vKv5Kq1FF8/V64Vw==
X-Received: by 2002:aa7:db49:0:b0:43c:d1af:5c76 with SMTP id n9-20020aa7db49000000b0043cd1af5c76mr24981119edt.173.1659519077188;
        Wed, 03 Aug 2022 02:31:17 -0700 (PDT)
Received: from development1.visionsystems.de (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id yk9-20020a17090770c900b007307c4c8a5dsm3451610ejb.58.2022.08.03.02.31.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Aug 2022 02:31:16 -0700 (PDT)
From: yegorslists@googlemail.com
To: barebox@lists.infradead.org
Date: Wed,  3 Aug 2022 11:31:10 +0200
Message-Id: <20220803093110.20915-2-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20220803093110.20915-1-yegorslists@googlemail.com>
References: <20220803093110.20915-1-yegorslists@googlemail.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220803_023121_330984_7CC5344E 
X-CRM114-Status: GOOD (  12.54  )
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
X-Spam-Status: No, score=-3.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/2] ARM: baltos: use GPIO name for mPCIe power enable pin
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Yegor Yefremov <yegorslists@googlemail.com>

Switch to gpio_find_by_name() method to get the required input line.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boards/vscom-baltos/board.c   | 4 +++-
 arch/arm/dts/am335x-baltos-minimal.dts | 2 +-
 2 files changed, 4 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/vscom-baltos/board.c b/arch/arm/boards/vscom-baltos/board.c
index 30553d1838..b9ce356264 100644
--- a/arch/arm/boards/vscom-baltos/board.c
+++ b/arch/arm/boards/vscom-baltos/board.c
@@ -98,6 +98,7 @@ static int baltos_read_eeprom(void)
 	int rc;
 	unsigned char mac_addr[6];
 	uint8_t dip;
+	int mpcie_pwr_pin;
 
 	if (!of_machine_is_compatible("vscom,onrisc"))
 		return 0;
@@ -145,7 +146,8 @@ static int baltos_read_eeprom(void)
 	globalvar_add_simple("board.id", var_buf);
 
 	/* enable mPCIe slot */
-	gpio_direction_output(100, 1);
+	mpcie_pwr_pin = gpio_find_by_name("3G_PWR_EN");
+	gpio_direction_output(mpcie_pwr_pin, 1);
 
 	/* configure output signals of the external GPIO controller */
 	if (hw_param.SystemId == 210 || hw_param.SystemId == 211) {
diff --git a/arch/arm/dts/am335x-baltos-minimal.dts b/arch/arm/dts/am335x-baltos-minimal.dts
index e9d57696d1..28a550aa84 100644
--- a/arch/arm/dts/am335x-baltos-minimal.dts
+++ b/arch/arm/dts/am335x-baltos-minimal.dts
@@ -540,7 +540,7 @@
 		"NC",
 		"NC",
 		"NC",
-		"NC",
+		"3G_PWR_EN",
 		"NC",
 		"NC",
 		"NC",
-- 
2.17.0



