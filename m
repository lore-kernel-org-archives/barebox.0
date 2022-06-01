Delivery-date: Wed, 01 Jun 2022 08:04:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSx-00Gt4p-7L
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 08:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSv-0005Js-Ov
	for lore@pengutronix.de; Wed, 01 Jun 2022 08:04:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mjpnYNxBtegMmCD1pB76aNd9/NMgMHXzcE1jy9VEW3g=; b=YKkCCxIAU1sgbt
	9e5EBFCqMPEVemLgODTvVIALeDTYELSBd2sSefyoIrISzBK8uD7K5YGlEVZo5BJw4zoTF5PHP36E1
	IiUr7blHAV77wV29pxCMzl3zz/YdjaovnWZS/pEqoB0t8HCQmzzp9HuPgJQaQ/TPFDSgM75KpSLWv
	l67Uq5rexAQGMytrR2NU1m5REMbDNTTRfgmGFAes4RUgRg5t7CoOoMdfk6tywqFDakGZ3yuBmQppp
	SBh0rJ9CZbVgHhXL3QkcqD+oe//j2O6w7YLird7Uq/i3oFcH4oaF0UkLRIjNh8ZDsNRMmBkbPl8OM
	agIlRY2bgYF7z4dxpHKg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRO-00E2Tg-W9; Wed, 01 Jun 2022 06:02:47 +0000
Received: from mail-lf1-x136.google.com ([2a00:1450:4864:20::136])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRH-00E2RI-Eq
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 06:02:40 +0000
Received: by mail-lf1-x136.google.com with SMTP id i10so1066127lfj.0
        for <barebox@lists.infradead.org>; Tue, 31 May 2022 23:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=PCffjlE9UgeWwINZQP0tR6YIExvbXbeKldNSJkFRwas=;
        b=qywxUaVRzHN3lEYjRNsrydSpFjbgjnhnT6n6rHhDyw24/tjf2ZgcbD/H91WEhK60fM
         bQN1Kn/EODwVIk5B0CNvtroNzO/sI8SaYKcS3yXunJIpL+F4zk9vc0NjZ3Q4qHutsWDJ
         2Jk4euxM1dOOI2YbvoPirSl7WqTwDB9IUNgFck4uB5u02F6oztHjMBKQQgQfYRtxqIjR
         FproRkwkz8Fld94TRKQ04zFrNouT1w2ilAnc+7HNPfIs2gHpjdajIWlqC6eIAQBiZ9R8
         zioqguLLDhFCq8vNW20WzRIpH1qdfUNpsRx22EjTo1aqVYwRVCzAE8f2akQBNsZNShVg
         vYCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=PCffjlE9UgeWwINZQP0tR6YIExvbXbeKldNSJkFRwas=;
        b=dh6PeNhsrFJPAmFe+/5VOoecNmX+OUu+VqhxE9z/dwhOQUxenmDIkJWCwbgSKsnEae
         UOoHE2M3JL1evB1eehMEtGxnbW+VdVAq24/kWwCvoKfN7TyO+Gi0/EZ05ppfN1dBBrmT
         be/uJiwMh6+m9SqtSwm++iMzri3VK8l+DboJUK3WFYJF0aVJjDnjjcSECbpx8xFxhdri
         lRvsa8kiV4ZDwPy5IZgrAljvYg9FLUMxeHT7j29b2h/aO9BDEtrB4eND5gmn2A5+bTZT
         5Q4Y8Af1MudevrsGaMoCjRVZZaVJPUi/BpGo3m+uLfdtgwRa9JJHW49EKzLKVR27Wv8T
         7x9Q==
X-Gm-Message-State: AOAM531cVvc8tQ0lwNXbAi/rr39hwU/D9rdJw/tDJcilxD1pL/PeN/mz
	7GuJX2XfAy37GCzgHBpI7p/YVoYWMxM=
X-Google-Smtp-Source: ABdhPJzrsxPgRGCmrn5Or71js84gVzRU1LDKpUvJe+Y1RV1FXicKGjqWLxfkD8rIKz9p2lRoX6zJHg==
X-Received: by 2002:a05:6512:2354:b0:478:8582:9a71 with SMTP id p20-20020a056512235400b0047885829a71mr30346367lfu.199.1654063355789;
        Tue, 31 May 2022 23:02:35 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm129691ljw.89.2022.05.31.23.02.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 23:02:35 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 09:02:23 +0300
Message-Id: <20220601060226.3756-3-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220601060226.3756-1-eagle.alexander923@gmail.com>
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230239_530015_DE8667A5 
X-CRM114-Status: GOOD (  10.42  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/5] ARM: boards: Fix unconditional compilation of imx51-babbage directory
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/boards/Makefile | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d303999614..042b27a804 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -47,7 +47,7 @@ obj-$(CONFIG_MACH_EUKREA_CPUIMX51SD)		+= eukrea_cpuimx51/
 obj-$(CONFIG_MACH_ELTEC_HIPERCAM)		+= eltec-hipercam/
 obj-$(CONFIG_MACH_FREESCALE_MX25_3STACK)	+= freescale-mx25-3ds/
 obj-$(CONFIG_MACH_FREESCALE_MX35_3STACK)	+= freescale-mx35-3ds/
-obj-y						+= freescale-mx51-babbage/
+obj-$(CONFIG_MACH_FREESCALE_MX51_PDK)		+= freescale-mx51-babbage/
 obj-$(CONFIG_MACH_FREESCALE_MX53_LOCO)		+= freescale-mx53-qsb/
 obj-$(CONFIG_MACH_FREESCALE_MX53_SMD)		+= freescale-mx53-smd/
 obj-$(CONFIG_MACH_FREESCALE_MX53_VMX53)		+= freescale-mx53-vmx53/
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

