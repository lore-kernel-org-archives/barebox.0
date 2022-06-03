Delivery-date: Fri, 03 Jun 2022 13:27:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5St-001kVP-J8
	for lore@lore.pengutronix.de; Fri, 03 Jun 2022 13:27:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nx5Sr-0003up-Ca
	for lore@pengutronix.de; Fri, 03 Jun 2022 13:27:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=TXxUeP70IRNCRqTMsPFsyrJAyBYBCCLWaZ6wKHzTIoI=; b=mtDK9s6sIViSeO
	hyPdv+EkQkGsGWU0TaWsPVJSPwVH/qDwgPBfUWN3FUE1PjaMZDSdJeiKBA7nYOH4AyOkIKLak3YIo
	vGgYwRCML/u7Rd0UVSg3LUSguNGlizcOriFWYUObvzbmQIIuxLTRnW5aceBWGEII1ozAjAevJ05TU
	xtD+ZcRuo/cT3kCAOayLbGSDwZoIJFPCAmN/i16Rspg5YF1xrnHEhUXzB0Zfk6WQ09TIEzXQ6h2jZ
	o8FOW3LMz+ESJMWAzFa+fN6rUT2BpgmFSDSngjD57fSPNmlJCLn1GJe+m5a+mIHJjB0sd/27iwdZK
	vlVCEaEVSkEoNsZNr/rw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RW-007Bam-Ux; Fri, 03 Jun 2022 11:26:15 +0000
Received: from mail-lj1-x22e.google.com ([2a00:1450:4864:20::22e])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nx5RE-007BRc-1O
	for barebox@lists.infradead.org; Fri, 03 Jun 2022 11:25:57 +0000
Received: by mail-lj1-x22e.google.com with SMTP id a23so8088454ljd.9
        for <barebox@lists.infradead.org>; Fri, 03 Jun 2022 04:25:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Mlr6dW5LkziONOM+cJMetxAU+gB/XtXP3d2ZylVHJyc=;
        b=DcJ6G5Ad1dgWYV/W15WrPo6ZOCii5yOZr13vBkpUXDnxvaEPrSEyPmXqLamfrWy2Lo
         hbYQ37BkMhObL4Rzf3nUHxDb8lD5vAibdxc1PweEhxXoVt4sB4g+eb6q8OLLpjHGz8iX
         t5twcGvCOlvGVXetZrgfRm8uLFzwYcvhj9r/2PDF0csqSL7srtKqhT1scnBlFT4NGeMt
         UlQvIbXwsUHeELnUxp8Hhm8izL1R7HiY0GQgYMexusnq2V3vc67IFqEyv8pqYQBvLOOP
         PZ1bR57WVNgbI7rXl3YXkKdY/JGGWyfdPq5EYwHxj9+ltd7k9QzbSiC4xGyICNM8ePPC
         WExw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Mlr6dW5LkziONOM+cJMetxAU+gB/XtXP3d2ZylVHJyc=;
        b=7fMU11q5rqW+PynKoyeD/5mi1jyko1EQbaQL3dO3pYP0cgGAVFRNqHt2q7xgtnlmS7
         DtwiW6vJpRnnvl+vyHyKNmCmD2cOtRANJG433U4drCD321u2K3AS74TxnjAGvwoiTGm4
         b9CgIpN5uIhtYj5UgsO7x/ks2o6h6rgQLfFwzUf03loIkI0SVtDWD0yHLtCnfntl91Im
         ek4LTTAw8uuEle8TYJcykSAU2/NexP5gOzQo84BMQw1NVAAWzsXkP0Ye5iUc/4V5Rl0Z
         4pD4wNWhIg77AI5sveSm1veLkTfZIobxJwndaOKQnOKIkrjpul2MMnG14MTjepmSD8sA
         6v2A==
X-Gm-Message-State: AOAM530R6qi+QxhWkH7qcGilEH36EnJaiOgwAae7i36YjyLQUnfr+Fbd
	BIH4sTqLxWMHRPVbm6ym2RVKkMDeYJc=
X-Google-Smtp-Source: ABdhPJxjLEk+SIPS9ewN888hnursTWbJcEfGWiataqxaNsb1UGg0rK1FCNEkUnsiV6q9woQALfz1fg==
X-Received: by 2002:a05:651c:1792:b0:235:1df3:7b8e with SMTP id bn18-20020a05651c179200b002351df37b8emr44319283ljb.464.1654255552776;
        Fri, 03 Jun 2022 04:25:52 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id q17-20020ac246f1000000b004790105d0cfsm1546121lfo.16.2022.06.03.04.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jun 2022 04:25:52 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Fri,  3 Jun 2022 14:25:39 +0300
Message-Id: <20220603112540.51644-7-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603112540.51644-1-eagle.alexander923@gmail.com>
References: <20220603112540.51644-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220603_042556_096278_DC2CC3F7 
X-CRM114-Status: GOOD (  11.65  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC 7/8] ARM: OMAP: Use EMIF4 registers for get SDRAM size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Instead of using the registers of the control module, we will use
the EMIF registers in am335x_sdram_size().
This can help when porting this function to other CPU variants.

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-omap/am33xx_generic.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/mach-omap/am33xx_generic.c b/arch/arm/mach-omap/am33xx_generic.c
index bdfa0e9e26..2727ebdf7f 100644
--- a/arch/arm/mach-omap/am33xx_generic.c
+++ b/arch/arm/mach-omap/am33xx_generic.c
@@ -349,9 +349,9 @@ void am33xx_config_sdram(const struct am33xx_emif_regs *regs)
  */
 unsigned long am335x_sdram_size(void)
 {
+	uint32_t sdram_config = readl(IOMEM(AM33XX_EMIF4_BASE + EMIF4_SDRAM_CONFIG));
 	int rows, cols, width, banks;
 	unsigned long size;
-	uint32_t sdram_config = readl(CM_EMIF_SDRAM_CONFIG);
 
 	rows = ((sdram_config >> 7) & 0x7) + 9;
 	cols = (sdram_config & 0x7) + 8;
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

