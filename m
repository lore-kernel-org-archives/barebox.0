Delivery-date: Fri, 07 Jun 2024 02:13:06 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE8-001st7-0A
	for lore@lore.pengutronix.de;
	Fri, 07 Jun 2024 02:13:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1sFNE7-00084N-EI
	for lore@pengutronix.de; Fri, 07 Jun 2024 02:13:03 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XOgKJkZ1Gg/aKsx+vfWxT0/T/+8fAEmXeAxryglKjYM=; b=mgenh0JShrsEMv
	iXgOhg1r6V3j2tFyI82YV9tBqwlA+z08AlOeaI5lZGbXqLTLPd7soeamAEsqhmyisEwtEChJH7Gyf
	guxs/d43/6FWEXkNz/8Otu4HGZrvQRzji4ISQ8X9bziP9pj493aymSufY6XJGSn0V1TfHv2JEgKAG
	yV5XHRJFUGst3xJe4euzdgDO47sLtnAVuOia1zsUc70fuhE+df9vlxuBsoismS3Ip6rkczPKOdvxV
	HyJq2PS2KnBv8jlt8KjWKWQgbQWzlYnxRyzsBvBASh8Lt2AQv7Uh7FIyW3IrY8SwR3NBR4lP/kueF
	PSBqedYt6mfsyOivs8bg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDe-0000000Bmr6-1k93;
	Fri, 07 Jun 2024 00:12:34 +0000
Received: from mail-lf1-x12b.google.com ([2a00:1450:4864:20::12b])
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1sFNDW-0000000BmoX-3A4d
	for barebox@lists.infradead.org;
	Fri, 07 Jun 2024 00:12:31 +0000
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-52b9af7a01bso1983783e87.0
        for <barebox@lists.infradead.org>; Thu, 06 Jun 2024 17:12:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1717719137; x=1718323937; darn=lists.infradead.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XOgKJkZ1Gg/aKsx+vfWxT0/T/+8fAEmXeAxryglKjYM=;
        b=EK4FBR96+HMUp8+hwXg8Snbd3xmBpiDgWHbdqp+9FTKoeKy61wk4+zecfX3r2SIoTl
         J+cKHko8hQRueiiZnC1PHRiXWY9ZBfJfDT4So41biiK5ClWA3wUNT9JjerrViraVjqM+
         amUU63ULTprrrLiZJSc5ZRciNhCbzt9b6dzgknI3MuIpzadlQ6wiEwte9CMdmRfzn/JT
         5ZCXLpFAWhMru90wLfD2gcaV+LLLyENvNJAft5UkLOLvY+IaHa+fLDGBNdfkFwUrbIRw
         XyZqDF5EMhe1Laji2/wkg9fizJjDpNmrlv2JE/wT1axuofEa//7TBBg75H0rrqRNG7dC
         mKkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717719137; x=1718323937;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XOgKJkZ1Gg/aKsx+vfWxT0/T/+8fAEmXeAxryglKjYM=;
        b=AUgOqrWXREQ6NNQ330rTnZodP/++W05uhsKIrNNQ7fr2eULOrtijy+SHOxennVSoGS
         GbJzipHcz09cEc8yUM2hyYnhPrY6WrAS1tPqyxKYrdqaVBtBmCBjtRZY9R1vu+aDsUDD
         +Swu4JgdHs1t7K5L3hCEe51cZKg936C+B1nRvNc7xEHjHyFzK1TZICSiCm75xdhUm3fi
         xoSc3VWe6cdND4shbA0HvI4KCqsmaFH+2msNynv/NY9zbDZnlPpNpPqQAp8YawrJbrgM
         ukGfx21LX0QI6JhNedE80OHNKQdkl/lLTLiKDNFIaA4gELng8319AiG9XdQVkMavot/a
         ifcw==
X-Gm-Message-State: AOJu0Yz362k5dhMnaLY5ZRvx2VpeixLsAgY24smdQ9Jm1owAp9Zu6Z/a
	2NBA5DITAQttaamKHfokMSykjBPboGTTZ+l4MPoMi3Uh3xEMgEnzGQ3vng==
X-Google-Smtp-Source: AGHT+IHpMjs0oBaGpF75Ce2uKx3o7WW/dc2kEsGKSxjC99629aW7SVh/svrm02ZLVrbngVqBkUdXwg==
X-Received: by 2002:ac2:560b:0:b0:528:9d15:240e with SMTP id 2adb3069b0e04-52bb9fc33dbmr561865e87.43.1717719136973;
        Thu, 06 Jun 2024 17:12:16 -0700 (PDT)
Received: from cinco.. (109-252-6-122.nat.spd-mgts.ru. [109.252.6.122])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52bb41e1db0sm342594e87.18.2024.06.06.17.12.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Jun 2024 17:12:16 -0700 (PDT)
From: Antony Pavlov <antonynpavlov@gmail.com>
To: barebox@lists.infradead.org
Date: Fri,  7 Jun 2024 03:12:58 +0300
Message-Id: <20240607001259.107805-4-antonynpavlov@gmail.com>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20240607001259.107805-1-antonynpavlov@gmail.com>
References: <20240607001259.107805-1-antonynpavlov@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf8
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240606_171227_026711_391C9DFB 
X-CRM114-Status: UNSURE (   9.22  )
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
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.5 required=4.0 tests=AWL,BAYES_00,
	DKIM_ADSP_CUSTOM_MED,DKIM_SIGNED,DKIM_VALID,FREEMAIL_FORGED_FROMDOMAIN,
	FREEMAIL_FROM,HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,
	RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 3/4] ARM: bcm283x: fix compilation with debug_ll enabled
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

How to reproduce compilation error:

1. make multi_v7_defconfig
2. enable CONFIG_DEBUG_LL=y and CONFIG_DEBUG_RPI3_MINI_UART=y
3. make
...

include/mach/bcm283x/debug_ll.h: In function ‘debug_ll_init’:
include/mach/bcm283x/debug_ll.h:56:41: error: implicit declaration of
function ‘BIT’ [-Werror=imp
licit-function-declaration]
   56 | #define BCM2836_AUX_CLOCK_EN_UART       BIT(0) /* Bit 0 enables
      the Miniuart */
      |                                         ^~~

Signed-off-by: Antony Pavlov <antonynpavlov@gmail.com>
---
 include/mach/bcm283x/debug_ll.h | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/include/mach/bcm283x/debug_ll.h b/include/mach/bcm283x/debug_ll.h
index 844305109aa..8bbff4fd9a2 100644
--- a/include/mach/bcm283x/debug_ll.h
+++ b/include/mach/bcm283x/debug_ll.h
@@ -52,6 +52,8 @@ static inline void debug_ll_write_reg(void __iomem *base, int reg, uint8_t val)
 	writeb(val, base + (reg << 2));
 }
 
+#include <linux/bits.h>
+
 #define BCM2836_AUX_CLOCK_ENB		0x3f215004 /* BCM2835 AUX Clock enable register */
 #define BCM2836_AUX_CLOCK_EN_UART	BIT(0) /* Bit 0 enables the Miniuart */
 
-- 
2.39.0



