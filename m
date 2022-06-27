Delivery-date: Mon, 27 Jun 2022 12:27:19 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxc-00GGRb-GT
	for lore@lore.pengutronix.de; Mon, 27 Jun 2022 12:27:19 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1o5lxe-0001To-DW
	for lore@pengutronix.de; Mon, 27 Jun 2022 12:27:19 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=WWR/SzDqSyqIdB17DueJPvlNiRoaJDr1kIkZ3Nzo2T8=; b=KxiWY+RLg47uNqb6IVWa587cG8
	g0xKtNiT2fnOwdnEvMlRNVIe+FZ8nH/qi1RRJRnbzcx1ARo9XwmFGthYGh7DXCbz1n2ERZNukKAo5
	20FmifkhDEDAfSvY6S8onSV6GbGJlaKVdGMYBMYiDE4jVAz7Ba6nv5U8KinlGjTfi4s+Cof4bBkEK
	jST59dVtg+P1Fu68s3nphbUQw0N6qG3Y8UXPZcjwSL/G2adPd6GwymoklcEhu/Eh2Ha0Q8DkmMDs7
	DRIOHAiofWbtcR8syrqxD9O7KTa0MNZi5Bfb2QpmjzVkJvGUo8v3GYqP7TrH2bsay7p47YzCGPrcU
	wTp/VicQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lwK-0005zL-1q; Mon, 27 Jun 2022 10:25:56 +0000
Received: from mail-lj1-x234.google.com ([2a00:1450:4864:20::234])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1o5lvi-0005eX-Cb
	for barebox@lists.infradead.org; Mon, 27 Jun 2022 10:25:19 +0000
Received: by mail-lj1-x234.google.com with SMTP id by38so10407513ljb.10
        for <barebox@lists.infradead.org>; Mon, 27 Jun 2022 03:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WWR/SzDqSyqIdB17DueJPvlNiRoaJDr1kIkZ3Nzo2T8=;
        b=bdANi06666o4iYFG6dZBpx41mK9VkOXLR2m+1xfqeGCb3Vw8K55ZCJOqOfSXYl30MI
         zQKTs1RhGeVoW6M/Lfle0FI5UCyoG9rwvNPcn994xrYU2QFKh26dNa7qfkkkYOY37XpP
         AwwKfYU5yFN0xAC95je6PF6oDZfpkflZ3Gd+gRXa691LuhbBUs9juBRPdiEys4bfJaR3
         9mYhcs8FBssceCffVqE0Mqrwq3ni7Ma+h+OxWo0e+1lRDMfAo5G9c79dRBCmFqTH1Zi0
         y3WSlC1KM2S9S9JxpAUNQVlhV80pzqT6wSYsehQEDZfs+i5zaFpqhQQJ8JDS75KR52+r
         raXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WWR/SzDqSyqIdB17DueJPvlNiRoaJDr1kIkZ3Nzo2T8=;
        b=L4ViLHL4VUw5PsY6djMsS6kxPmFL9UmZeC8rnP5oWYLIRPnko9I/oqpscrjU1RlGto
         uVO1D5mq970roJoiDj9JvbBvUSMELFZ02FVHmuIjwtcKKvOa/hKntqW1VpKSV8mZN77a
         fhEKSjLXmhTGtI3N8xVPpmnhmbn83ixow3IcIEvRoUimXrT3ZdkCA7rug7e1jyaL+Vgz
         kUbGfN+/P8Rdl7pZSWSbNO+MIDEePPmgZhK/bBTvsJQ00R3ouuMvEwRfPofDM31ye7yc
         1WkgMz9L2WUjZwwipDdDZPczdWVg+MzF2ECX39AlvPfBU/HhRtIoxgdmY/5SFncHh2Y1
         SNjA==
X-Gm-Message-State: AJIora/5WarSiwFHzK7NdxNHuOhLVL263C6pHSmcVfTN01hSyHooQmjw
	qR1IEZZGACR1H80Nv+1ooTlWq6yM/nU=
X-Google-Smtp-Source: AGRyM1uNEcBo5MuSwbCUsixxMHBVT+ddZD9T53AvLdwZhTA4FMHfaG0cMrmrYohFSNxLAvbGep5UYQ==
X-Received: by 2002:a2e:9e16:0:b0:25b:aef8:5503 with SMTP id e22-20020a2e9e16000000b0025baef85503mr6502127ljk.116.1656325515481;
        Mon, 27 Jun 2022 03:25:15 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 7-20020ac25f07000000b0047f5d390926sm1745622lfq.94.2022.06.27.03.25.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Jun 2022 03:25:15 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Mon, 27 Jun 2022 13:25:00 +0300
Message-Id: <20220627102500.18427-9-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220627102500.18427-1-eagle.alexander923@gmail.com>
References: <20220627102500.18427-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220627_032518_466483_AB1E07EC 
X-CRM114-Status: UNSURE (   8.84  )
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
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 8/8] ARM: boards: ccmx51: Remove unused KConfig option
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

RELOCATABLE is already selected by IMX_MULTI_BOARDS

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-imx/Kconfig | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index 6b962dcf7e..4283764a17 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -277,7 +277,6 @@ config MACH_CCMX51
 	select SPI
 	select DRIVER_SPI_IMX
 	select MFD_MC13XXX
-	select RELOCATABLE
 	help
 	  Say Y here if you are using Digi ConnectCore (W)i-i.MX51
 	  equipped with a Freescale i.MX51 Processor
-- 
2.32.0



