Delivery-date: Wed, 01 Jun 2022 08:04:23 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSx-00Gt4q-Bx
	for lore@lore.pengutronix.de; Wed, 01 Jun 2022 08:04:23 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nwHSw-0005KM-7J
	for lore@pengutronix.de; Wed, 01 Jun 2022 08:04:22 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CnKImc6Z7YMPg+5vT0MEWWyqhk4H0ULPUd3YbmyDaak=; b=asddwObMLcM9iC
	zic4HK2znpm3HhFPcUzq4Qw7OOfR1Z8YrFToF5RwULl9D+6q8vzYr5w9C8rN21jou1QzRG1Te1VgZ
	Tps7Kp+Hc9/ejNj1GBALHLidYhn1UcTFUJ3KHmfjD42PuWQhnKgHirxLl7HkeIgMJRKNQS7MtkpcF
	yLsKHjCEZp2uBFz1027h85OQ6n19lPD/O3JE/yoYxEnhwGHDi6PD73QLKchsX2EyUM37/0/auXCUZ
	BwnQBcoVrkRPEM78jNa/emk5XE37XpSbo+y3En0w9mw8ef9CLC0quS/zWfcpUGXxgWJdVINdgbxPm
	GPg7tSY+wA3sJBhhhNwA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRM-00E2TC-MZ; Wed, 01 Jun 2022 06:02:44 +0000
Received: from mail-lj1-x22b.google.com ([2a00:1450:4864:20::22b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nwHRH-00E2RB-17
	for barebox@lists.infradead.org; Wed, 01 Jun 2022 06:02:40 +0000
Received: by mail-lj1-x22b.google.com with SMTP id q1so845331ljb.5
        for <barebox@lists.infradead.org>; Tue, 31 May 2022 23:02:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=wH9bX0poSgC4vuQJTsgjzAz7uAbtvgiuwnSg4Vaok1Y=;
        b=X3iQnnJgGBLZQA587niVNBGHdRo39QThMA2CD9ZeEKQjzFJUS6b6Lz4/gIU+e2uprL
         HjvmGbLYgKA5HTn160BqD2kAibxKey7FJ2bzl/zapFky8sjWa9+fwbTcQcopQ/9EcFYH
         jZ/aWzm5cL/7FGGKM3XinQbUudmLSgLecMyN+Nh15DY1kzELKJAEiV0myzffT4JSRwLl
         ZGOm2e+d8kLuVYmyaz8Hce0jcpYKmHO+qH7WP+Mym8LqLYMfy2rhWqVxdWhBRDYMbnw3
         S89KSZ9gl6dh8QNNUs9spMRB4P2kEqfClqlI9QM+jPMsJr7/R/kQMY0aeiX/b3OKdzhB
         FPKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=wH9bX0poSgC4vuQJTsgjzAz7uAbtvgiuwnSg4Vaok1Y=;
        b=p001Wf3mrFH62bDjzldaqjZ8SQ29DMkiU4yulws7ZObLIH3yGF+nPp4fb9WxR6N5en
         qilp9ozYbV9bMHE05RwAIiCu3i4Lq0JfvqhDBIugwNNIJU52mpZg6QBV2cu3zKL16paN
         AXat6zrEqD5wYW+ib4G3AXSJd2/z3Dl4hlO4Gdbn+Hv0zzAfEOwCtTvtWmxASKC4UtGB
         ZDKCpTxcWVesDsHQxebM6s3/HnmuP9hYukRgvInMctHHkzGD04Ops6S7GXM0NCMNfq0s
         q8jdADlVeyoVMClKN9Se4JziHKvBAspvYWjw/bj067T0XD02MEAJkH2GBaBgPcUHvilV
         KYEA==
X-Gm-Message-State: AOAM530ZzgsiH8YIQ4w0dghH3+JBFvwepGTi9fXmfrHD56aAZkCKhyL+
	bohZUE2coKNddU0N5w83uY0vE8kW5EA=
X-Google-Smtp-Source: ABdhPJyijjO8YIu1leETc/w0Zz2RA31R424f9Hu9wIOqpkp6RE4t0/hM2JHf1pk68d3UYcxA+lEmvw==
X-Received: by 2002:a2e:b690:0:b0:255:6067:fa7a with SMTP id l16-20020a2eb690000000b002556067fa7amr3532343ljo.93.1654063354833;
        Tue, 31 May 2022 23:02:34 -0700 (PDT)
Received: from shc.milas.spb.ru ([188.243.217.78])
        by smtp.gmail.com with ESMTPSA id 4-20020a2e1644000000b0025552d57beasm129691ljw.89.2022.05.31.23.02.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 May 2022 23:02:34 -0700 (PDT)
From: Alexander Shiyan <eagle.alexander923@gmail.com>
To: barebox@lists.infradead.org
Cc: Alexander Shiyan <eagle.alexander923@gmail.com>
Date: Wed,  1 Jun 2022 09:02:22 +0300
Message-Id: <20220601060226.3756-2-eagle.alexander923@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220601060226.3756-1-eagle.alexander923@gmail.com>
References: <20220601060226.3756-1-eagle.alexander923@gmail.com>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_230239_107262_B22D6EEE 
X-CRM114-Status: GOOD (  10.52  )
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
Subject: [PATCH 1/5] ARM: at91sam9n12ek: Use xz compression
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The binary created with at91sam9n12ek_defconfig got too big over time.
Use xz compression to match the bounds.

CHKFILESIZE images/start_pbl.pblb
images/start_pbl.pblb size 270996 > maximum size 262144

Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
---
 arch/arm/configs/at91sam9n12ek_defconfig | 5 +----
 1 file changed, 1 insertion(+), 4 deletions(-)

diff --git a/arch/arm/configs/at91sam9n12ek_defconfig b/arch/arm/configs/at91sam9n12ek_defconfig
index b7c3a4b1f4..ce97ad62dc 100644
--- a/arch/arm/configs/at91sam9n12ek_defconfig
+++ b/arch/arm/configs/at91sam9n12ek_defconfig
@@ -4,12 +4,12 @@ CONFIG_BAREBOX_MAX_IMAGE_SIZE=0x40000
 CONFIG_AEABI=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_PBL_IMAGE=y
+CONFIG_IMAGE_COMPRESSION_XZKERN=y
 CONFIG_MMU=y
 CONFIG_MALLOC_SIZE=0xa00000
 CONFIG_EXPERIMENTAL=y
 CONFIG_MALLOC_TLSF=y
 CONFIG_PROMPT="9G20-EK:"
-CONFIG_GLOB=y
 CONFIG_PROMPT_HUSH_PS2="y"
 CONFIG_HUSH_FANCY_PROMPT=y
 CONFIG_CMDLINE_EDITING=y
@@ -60,9 +60,6 @@ CONFIG_MTD=y
 # CONFIG_MTD_OOB_DEVICE is not set
 CONFIG_MTD_M25P80=y
 CONFIG_NAND=y
-# CONFIG_NAND_ECC_SOFT is not set
-# CONFIG_NAND_ECC_HW_SYNDROME is not set
-# CONFIG_NAND_ECC_HW_NONE is not set
 CONFIG_NAND_ATMEL=y
 CONFIG_NAND_ATMEL_PMECC=y
 CONFIG_USB_GADGET=y
-- 
2.32.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

