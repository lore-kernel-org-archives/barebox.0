Delivery-date: Thu, 24 Aug 2023 17:41:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZCSi-007UuY-Be
	for lore@lore.pengutronix.de; Thu, 24 Aug 2023 17:41:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qZCSg-0008Jb-Cr
	for lore@pengutronix.de; Thu, 24 Aug 2023 17:41:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=mobBMynpovuVoOi/+1DVGroqTy7BvWI6rhMnuEb6UfM=; b=VG2bkGSD5G46z/vU9D5IzFpkwK
	mMpSfyNv1RtCIysHcR3cfyCUPH8y16QfQn6gezGqokaKADkV4kNBZZsy/Jp6U/PkDGjKWZUwZ4jLS
	XXI5eQu0jI2Lrp79BMIzOf2N7G0t6AW6vf1Gy98j6agZyTkxPcZ+Mmv8Yy00T9qSgOLFsNvVxC07H
	fiSZlWuMjPdVICxAAFEh3bv4jFMTDt6O15nhIYiLuNYc0afsNUqCBv/yFtntkHVo2yDmwx+TBQegP
	+umjXYR6bW8fbzJwfpCl7jdothDysFBhMUilG2PcBWLW8MbdkuWK4+VRUtESv4J49shWyy49zl5iE
	UbQ7IPPQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qZCRF-003O80-2T;
	Thu, 24 Aug 2023 15:40:01 +0000
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qZCRC-003O77-02
	for barebox@lists.infradead.org;
	Thu, 24 Aug 2023 15:39:59 +0000
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-50079d148aeso7810999e87.3
        for <barebox@lists.infradead.org>; Thu, 24 Aug 2023 08:39:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1692891594; x=1693496394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mobBMynpovuVoOi/+1DVGroqTy7BvWI6rhMnuEb6UfM=;
        b=J7vu9uzZjRrhiTTVr9RA9BKvO8PWahg+zeqC6amKZFqBHvcq3xawJsHPYcxW5X9x3s
         Rqi1z4GIv0fzDr5aHtgPhBbTBSgAEMSPyJuqDjusYjZcLoi9aykWnrCDr9pDLlCSEAnp
         56gSOAtTVvwxD0wMgQo5RVwib5WItA11PstKr0rY3RzH0Dwocmj8pXtmevkt46C1kVKO
         C7mm+B0TDe4dCOH1tpJ352mUZJ78OEul0GoaTUxA5YOp+G8OBUbLXOFfyy/+WFYQvVOm
         Ixqn3lzd5Mby/v8X4KaXtcaia55i4Ko/A9T+okuwmT3jKc6kUxZCRs0fBYst/DBuxYyo
         vy1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692891594; x=1693496394;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mobBMynpovuVoOi/+1DVGroqTy7BvWI6rhMnuEb6UfM=;
        b=VWnjSUR+y3mlP4+Ctt8++7cDyZeTBUMgrPuldZZgPuBtk2+IP3aoHcOlaTrh5nqwxp
         3erdyqbibyoiJVZsTXV5hNw+FCIT6DorBH78t2DMH2p/68KvPIA9pA8nUPziblxz+MnC
         jfVaf0xTcLuF33Gw4dV7weADsS+5n4bG2w8hSmwcbdcn0vatADjwWuSPCZmChjDvkx5o
         pRUmTbnwlpz7m0uv3UjN1hgssVMI9WeB80//ULO6TCirn0gcomlxdWX3jxlBL53qTYWh
         6yfDLTvmCyrlxcAL1YKHJYKP0AMlPWurdRtQRnTuQoAEAWw7ub1+LV33QIQCsmpGPJqb
         jZ5g==
X-Gm-Message-State: AOJu0Yz7UdkDYgDObSIgbyFU3ByjpVFsCCtMysOqzhnruBI3rthXOBG1
	xRD99VaPeMkx7adRxEJr3CM3gebMyttYqg==
X-Google-Smtp-Source: AGHT+IFwllD6x1dZz6G1xunLdsg3SSTr6J5FVxaf7soItZ855wDxk2SGMI54xI3Qer93Omi03G14Yw==
X-Received: by 2002:a2e:3503:0:b0:2bc:b75e:b88 with SMTP id z3-20020a2e3503000000b002bcb75e0b88mr10856597ljz.18.1692891593881;
        Thu, 24 Aug 2023 08:39:53 -0700 (PDT)
Received: from localhost.localdomain ([185.119.0.88])
        by smtp.gmail.com with ESMTPSA id x9-20020a05651c104900b002b6cd89a3fcsm3815829ljm.118.2023.08.24.08.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Aug 2023 08:39:53 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Thu, 24 Aug 2023 18:39:33 +0300
Message-Id: <20230824153933.817192-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.38.2
In-Reply-To: <20230824153933.817192-1-eagle.alexander923@gmail.com>
References: <20230824153933.817192-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230824_083958_046845_C1138E83 
X-CRM114-Status: GOOD (  10.84  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] ARM: imx: Fix build error without CONFIG_USB_GADGET_DRIVER_ARC_PBL
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

aarch64-buildroot-linux-gnu-ld: arch/arm/mach-imx/atf.pbl.o: in function `imx8mm_load_bl33':
/home/ARM64/bb-imx8/arch/arm/mach-imx/atf.c:102: undefined reference to `imx8mm_barebox_load_usb'
make[1]: *** [/home/ARM64/bb-imx8/images/Makefile:70: images/start_nxp_imx8mm_evk.pbl] Error 1
make: *** [Makefile:732: images] Error 2

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/mach-imx/atf.c | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-imx/atf.c b/arch/arm/mach-imx/atf.c
index 38bab9c051..824569f614 100644
--- a/arch/arm/mach-imx/atf.c
+++ b/arch/arm/mach-imx/atf.c
@@ -87,6 +87,7 @@ void imx8mm_load_bl33(void *bl33)
 	case BOOTSOURCE_MMC:
 		imx8m_esdhc_load_image(instance, false);
 		break;
+#if IS_ENABLED(CONFIG_USB_GADGET_DRIVER_ARC_PBL)
 	case BOOTSOURCE_SERIAL:
 		/*
 		 * Traditionally imx-usb-loader sends the PBL twice. The first
@@ -112,11 +113,12 @@ void imx8mm_load_bl33(void *bl33)
 		}
 
 		break;
+#endif
 	case BOOTSOURCE_SPI:
 		imx8mm_qspi_load_image(instance, false);
 		break;
 	default:
-		printf("Unhandled bootsource BOOTSOURCE_%d\n", src);
+		printf("Unsupported bootsource BOOTSOURCE_%d\n", src);
 		hang();
 	}
 
-- 
2.38.2



