Delivery-date: Tue, 01 Nov 2022 11:35:19 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoc3-00AdCa-Oj
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 11:35:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoc1-00071i-NH
	for lore@pengutronix.de; Tue, 01 Nov 2022 11:35:18 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3BiKUwIQdAxVm2MpX6fO6GfeYyAdShe9UnmF5lUl4IY=; b=IDVhjxj0KJhxg5SPts/5kMX1nL
	DZNPKxVKDoNpgfC28oJZbktcp2QAbHvn688IOc3CN9ZmcCmYAfOIrY3BxgIluCTzr+s1MF0XbnsTS
	ACIv+PIK1lz/SafBpKYMCMitfEUaSNnAWNJZ8WQAwPH6oWjwk4uFbDKjI/kQKQmRr5hpZbtEsYOHr
	yjd4fYRaYzSU9JRlSNhGphTPN1qD+1y5eii5ZP6KTps268oHu/tWTS/I6CwXY4MdfFzhJn+5Jk6Nj
	J2kBVtAdhbmlrF6UIvt7Szm9D07+I+9TEAiWz3dvhTQYpmE89BAzoZqnS6zVjzL9naJEc7F9bUS8q
	F0CKbNNQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoae-0045Us-Tw; Tue, 01 Nov 2022 10:33:53 +0000
Received: from mail-ej1-x62b.google.com ([2a00:1450:4864:20::62b])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoaa-0045U3-R7
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 10:33:50 +0000
Received: by mail-ej1-x62b.google.com with SMTP id f27so35918816eje.1
        for <barebox@lists.infradead.org>; Tue, 01 Nov 2022 03:33:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BiKUwIQdAxVm2MpX6fO6GfeYyAdShe9UnmF5lUl4IY=;
        b=A1EIGqCS//Tr/s+1bJh1zZaVd8v5gF+nhED2nOqtbQ8dh+QyVvvISR17BiaHWIapJp
         0whTlNffe59Z5ed2JUHlZt0Bm7+VXOQB25NkaycCl+GtUopmGK4DEPmdbDDEj2hdiMIR
         QiNVPU8GmXs6UxGgQzswrAWQSpnp9yd5KL/lfK+DIpkXnB8MQNbJkRkU2sXs9wxwdA6A
         4O2BKGiD4SPoIDxkXbfDWUikY03hkHgOygTrJj0Bp9jBa23Ng9UDhSnWieTmUX/HqdiT
         UUa+PGRESJPRoN80DJ5zR4Vf0ixFA9tamGJhhJ4euMQ3q4tOZMNLFT8dDh8jYbMWFO8w
         0UAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BiKUwIQdAxVm2MpX6fO6GfeYyAdShe9UnmF5lUl4IY=;
        b=TPdpUYg9VX+YbLZGZrIr0817exAULnYLKuJKjZXR4kq2L/Nls1IUvwgTTzw/eM1DBm
         27IFC/pAHMde3QhWVFeQi2RPr3QYHAooWVmgDf+5L9l4g5xrqNg09Ni3C6PNnkhPcbpc
         pJZD4Q3EN93Yo7JT9U+jsm3cINFY4P/8+4DV5kZzOuP1Lm0ShcJj3dtmki4P0robkIPm
         pd+HPFqwaCALvALUsl/LSkuz/2NNTsb4M02KAg6GXwOEB0qGNtF9CSYietkfnFZy/HLd
         8uAci79ZxtquKwtPPeoAlIn0PUbON4UviuXqwVJAoWgpLycKg8xiY3idKVRsF39Swr6U
         PNFw==
X-Gm-Message-State: ACrzQf2oQx15mn/uBhMSfAZdCXWueUU0kFFZzsDpmXFkVsDUcpBkhFES
	WzN9wDH/Xnxg7d6zhSd6muwzzTIkU/czVA==
X-Google-Smtp-Source: AMsMyM4Gu4pjdh/SHGQJOdoop3eLmjtcD3xOXzFYDEzPkWx/ipA0AOMeSMN2NA/BACO2VbyTQSB4pQ==
X-Received: by 2002:a17:907:763b:b0:7aa:1ae6:900b with SMTP id jy27-20020a170907763b00b007aa1ae6900bmr16915440ejc.416.1667298827145;
        Tue, 01 Nov 2022 03:33:47 -0700 (PDT)
Received: from uvv-2004-vm.localdomain (dslb-002-205-236-027.002.205.pools.vodafone-ip.de. [2.205.236.27])
        by smtp.gmail.com with ESMTPSA id g7-20020a056402090700b00463b9d47e1fsm482851edz.71.2022.11.01.03.33.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 03:33:46 -0700 (PDT)
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
To: barebox@lists.infradead.org
Cc: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
Date: Tue,  1 Nov 2022 11:33:27 +0100
Message-Id: <20221101103327.985435-2-uvv.mail@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221101103327.985435-1-uvv.mail@gmail.com>
References: <20221101103327.985435-1-uvv.mail@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_033348_900304_72D3B02D 
X-CRM114-Status: GOOD (  10.71  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 2/2] ARM: socfpga: Configure F2SDRAM bridges
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>

When DDR firewall configuration is updated the F2SDRAM bridges need to
be brought from reset.

Signed-off-by: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
---
 arch/arm/mach-socfpga/arria10-sdram.c | 14 ++++++++++++++
 1 file changed, 14 insertions(+)

diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index b7eade0b17..a6eb63299a 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -468,6 +468,18 @@ static void arria10_sdram_mmr_init(void)
 	}
 }
 
+static void arria10_f2sdram_bridges_reset(void)
+{
+	uint32_t val;
+
+	/* Release F2SDRAM bridges from reset */
+	val = readl(ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_BRGMODRST);
+	val &= ~(ARRIA10_RSTMGR_BRGMODRST_F2SSDRAM0 |
+		ARRIA10_RSTMGR_BRGMODRST_F2SSDRAM1 |
+		ARRIA10_RSTMGR_BRGMODRST_F2SSDRAM2);
+	writel(val, ARRIA10_RSTMGR_ADDR + ARRIA10_RSTMGR_BRGMODRST);
+}
+
 static int arria10_sdram_firewall_setup(void)
 {
 	uint32_t mpu_en = 0;
@@ -512,6 +524,8 @@ static int arria10_sdram_firewall_setup(void)
 	writel(0xffff0000, ARRIA10_NOC_FW_DDR_L3_HPSREGION0ADDR);
 	writel(ARRIA10_NOC_FW_DDR_L3_HPSREG0EN, ARRIA10_NOC_FW_DDR_L3_EN);
 
+	arria10_f2sdram_bridges_reset();
+
 	return 0;
 }
 
-- 
2.25.1



