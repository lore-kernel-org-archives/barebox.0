Delivery-date: Tue, 13 Apr 2021 15:40:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWJHG-0007uO-3Z
	for lore@lore.pengutronix.de; Tue, 13 Apr 2021 15:40:26 +0200
Received: from desiato.infradead.org ([2001:8b0:10b:1:d65d:64ff:fe57:4e05])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lWJHF-00060m-CT
	for lore@pengutronix.de; Tue, 13 Apr 2021 15:40:25 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=desiato.20200630; h=Sender:Content-Transfer-Encoding
	:Content-Type:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:Message-Id:Date:
	Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=AzJuY3+vSTMKpiAhD7p85PnKBYDlXhZlyAvAN1J0yiA=; b=SgG+7rXppQ2vEG7A8AHNhf++7
	734kjAeAxQOe89e2VGqf3AU0hBdQMnh1JmKuysvuj4CsndaNX0lrroWNAmYW+ch1QM5ucvJBYUf8l
	sg9NpbUTwCuT5Wl9DmZ34BFfHE3r06zp4cTC/fnttaVjlAA8tFoqCb0jASQ8oWBJkvKnMimsQwTUQ
	tGe7WdPzLml4IEIWIIM0PbidfBLUia9ifUvit8s1TjN7X0bH1NZk41mqh2E91GXc1WwJLJ9mIrLdA
	WNVsfVHCdh5iEAWxXDHrb6dgsL1GVODI+A4MS1ljVRLNvcU4TyuGxWNmi4YyHWnd9egs/T9kKRKYC
	OmH7/zIKA==;
Received: from localhost ([::1] helo=desiato.infradead.org)
	by desiato.infradead.org with esmtp (Exim 4.94 #2 (Red Hat Linux))
	id 1lWJFt-009PIJ-Kc; Tue, 13 Apr 2021 13:39:01 +0000
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
 by desiato.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJFe-009PE8-Qh
 for barebox@desiato.infradead.org; Tue, 13 Apr 2021 13:38:50 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
 d=infradead.org; s=bombadil.20210309; h=Content-Transfer-Encoding:
 MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender
 :Reply-To:Content-Type:Content-ID:Content-Description;
 bh=4GNexSoy8viRN+/m7V1l6tJbAH6WY1AOd0SQ3RSJPsg=; b=pPmh6Kl4LqyPVMzRkc9r0puvKs
 e7Cg2V9lMRjuCyIhboKgiapt4hZ2QSTYEnUuCGo05rQCtOHVNAd9RxpZq1BR0hNUGovbcfOeaTlBt
 n7k0MqqpHPDTQhQmV7jjZlQw35O+rJ5NON6D13DG/cIODGMmrFriaYzco9guv66KK/YnVng3uBtUg
 Rn6GGxTFPeGPxw1dDfRHdwXWPLnFzehaB+E3wsXxvEIwlG3BoA8mkfaKyd5v7q8cJ/LGW0nWrte9t
 s7FYueWu09EgYmxHFVzHUSei/pZKnAPqIWcyryS8lpaElHX7Vzucu12I75wd4sbnqEYMcJPcR+oMu
 RxVUO3UQ==;
Received: from mail-lf1-x12f.google.com ([2a00:1450:4864:20::12f])
 by bombadil.infradead.org with esmtps (Exim 4.94 #2 (Red Hat Linux))
 id 1lWJFc-00746M-AM
 for barebox@lists.infradead.org; Tue, 13 Apr 2021 13:38:45 +0000
Received: by mail-lf1-x12f.google.com with SMTP id n8so27475631lfh.1
 for <barebox@lists.infradead.org>; Tue, 13 Apr 2021 06:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=4GNexSoy8viRN+/m7V1l6tJbAH6WY1AOd0SQ3RSJPsg=;
 b=ZZI2ztMU1sKNfVMeTPOigkRizVNvt78/ARdXicyEe7r6TjjMSCr1VS7kbY0IeJsx5u
 X0DfODh+ek7blacxC2KNOXAdpNETAF/fOdyWTpTZTTAZZmW5UhINqB/vGrcCLHpZB49B
 YtZC/Cj0wxT3AaMbokS6OHCnw/3RKu38C+3JZj+50izkfcWegZ65GzHT/SBQ+/JCrLGi
 o6277IUh5geLp0KyIwsg2SKZwRTmroACCF7ZqCLcLx1fudLoSx7IbuNd6fMM7MnNF+0Z
 jsBcFN5DHqu47a7IVOZEsP0qkmug8O0VsyEfW2+gcFRRrwkQhMtr2GFDHlgdweTC7rpi
 xEjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=4GNexSoy8viRN+/m7V1l6tJbAH6WY1AOd0SQ3RSJPsg=;
 b=qwGIebE1V5vYWkbQIUq9vp1mdQRntWLu82E2qPp4fBOk24Gb+U0OpgHBYSFyPC3/lS
 GrRS/NKohabQTo+BwWvYGwTuCtHijKAuc1kzmurvtl5MtJJmTrcrnm5u7TVj+20zLzzr
 ntD/Fd4LecaZZxDjEQHZB2ucbJ1NLSzChTzxF3BQH5Up/ltblQRDoa5h4rLV3Jmnqlt7
 01iuRVR7Ws/0Y439UVjvzmIwEUP0EnbCWGCpClJ6XPd+eE9BgPdu+QbesAZZW3mI2cfY
 yZKekwyq0zzsyJRcCOJIwX9L52jCyrUhRK/lz+HoZcYNGUKltImr1+j18Lud8xm0UnBF
 ZgyQ==
X-Gm-Message-State: AOAM532HEMzdlMTTORQn55amT8aySBQhCrnu6nGiknsxj+feXgjOPpXP
 dxg2RJgTrvDtFHxpz9HnLAO2q1ryhV0=
X-Google-Smtp-Source: ABdhPJzc5FVRpiGMrGlOoevNDpq3e7SGaW3O+o6OKu07K+rbKnQGaRiGf8AFW34FUfp7LpW12Kl3NQ==
X-Received: by 2002:ac2:4f84:: with SMTP id z4mr23869323lfs.608.1618321120658; 
 Tue, 13 Apr 2021 06:38:40 -0700 (PDT)
Received: from laped.home ([185.181.22.4])
 by smtp.googlemail.com with ESMTPSA id z28sm3978230ljm.44.2021.04.13.06.38.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 13 Apr 2021 06:38:40 -0700 (PDT)
From: Lars Pedersen <lapeddk@gmail.com>
To: barebox@lists.infradead.org
Cc: Lars Pedersen <lapeddk@gmail.com>, Bruno Thomsen <bruno.thomsen@gmail.com>
Date: Tue, 13 Apr 2021 15:38:31 +0200
Message-Id: <20210413133831.311949-1-lapeddk@gmail.com>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20210413092340.241337-1-lapeddk@gmail.com>
References: <20210413092340.241337-1-lapeddk@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210413_063844_373874_4C67833B 
X-CRM114-Status: UNSURE (   7.92  )
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
X-SA-Exim-Connect-IP: 2001:8b0:10b:1:d65d:64ff:fe57:4e05
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-2.4 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2] ARM: i.MX: Fix Kamstrup mx7 concentrator default cfg
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Select POWER_RESET_GPIO_RESTART for Kamstrup mx7 concentrator
board.

Signed-off-by: Lars Pedersen <lapeddk@gmail.com>
Reviewed-by: Bruno Thomsen <bruno.thomsen@gmail.com>
---
Changes since v1:
- Removed CONFIG_

 arch/arm/mach-imx/Kconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/mach-imx/Kconfig b/arch/arm/mach-imx/Kconfig
index cc73d0a0d..8e156cda2 100644
--- a/arch/arm/mach-imx/Kconfig
+++ b/arch/arm/mach-imx/Kconfig
@@ -530,6 +530,7 @@ config MACH_KAMSTRUP_MX7_CONCENTRATOR
 	bool "Kamstrup i.MX7 Concentrator"
 	select ARCH_IMX7
 	select ARM_USE_COMPRESSED_DTB
+	select POWER_RESET_GPIO_RESTART
 
 config MACH_NXP_IMX6ULL_EVK
 	bool "NXP i.MX6ull EVK Board"
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

