Delivery-date: Tue, 01 Nov 2022 10:54:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnyp-00Aabb-Bi
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 10:54:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnyn-0001R2-SB
	for lore@pengutronix.de; Tue, 01 Nov 2022 10:54:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=3BiKUwIQdAxVm2MpX6fO6GfeYyAdShe9UnmF5lUl4IY=; b=gkWkUPIWeq5jZlRaKuH2cvz2oD
	rHrB7C1DGIXf6Je6sn0koj6pcXrE/8GD8VVB23lMMA0BrSpPt2uAem4ZfBFYlNj819FjPJVqQc1z/
	3O9EGNHUDnc9SMnLEciJJqcdMCINc4XBW2Hf4dxDlPFzCKZD8/IGE2rP/NN6ho4ki3qIgkeljZImA
	iSc0eeC3krkYADnYgSj00YBOWKhmuPJqnSSNORcoUq4JiAqDl6UurvotuwHUBv6al4Hm02UXl1f38
	/t2iyt2kvUUvkf47VEPk6YtrDZJNiJ4u0nAX5/PqEKLSpXFpTBHRMwMy3pIgEVIdEkHQ0vDLhdzIM
	ZbkwDIDA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opnxL-003oJj-2I; Tue, 01 Nov 2022 09:53:15 +0000
Received: from mail-ej1-x62d.google.com ([2a00:1450:4864:20::62d])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opnxF-003oGq-FZ
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 09:53:10 +0000
Received: by mail-ej1-x62d.google.com with SMTP id y14so35696239ejd.9
        for <barebox@lists.infradead.org>; Tue, 01 Nov 2022 02:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3BiKUwIQdAxVm2MpX6fO6GfeYyAdShe9UnmF5lUl4IY=;
        b=KzdmFGf7ftPYrN+pEwRdZOT95rzWCdjk41mZZVqMN5mmlrmifLtx0fAxzdYSLoN8IX
         AaBx7boCT+vsPgVkL4Y2LyAZQIac7y0Tg4iMjtQL1EiStAtTOfqzDvqt8SdOLMeDLEC+
         DdtDJDsTEKClraaJ94J+IBJwrpMcAutae4kMZfFJ57NeYUcUZiwTOq8ilwqZ503ca4K2
         mv6EfsTMiFx4FI9VWcYnpuSzybd0NTSMPXKFMhMjrcgmoD9RQrQgdQgy+woUskd5AFwn
         W6hgrQLII5H2LpRxkPGs+4kZFJGtdbbhE03+gBJKgoPf7OMrVnn5OSKUlnqLGghdfeVV
         shew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BiKUwIQdAxVm2MpX6fO6GfeYyAdShe9UnmF5lUl4IY=;
        b=U4ra+10iBE6rT1DuPYvrap3fuqrCFnPAThs4E3VPO8bVakAUqeN2+vDnF8Oazof6aF
         PU1ldfaoCfxVx+MXeWG/DoSxZs3DojrjoSAvwoKotFrKrOpF5RnR+N+bOoyeI89e+nnn
         0mmXwo8GxpbdRiR5Fd0q58giBm/OYTsx8BA9F8zHicwzyakZtPwsJPiqYzF+UMkzru0M
         uECgGgPBsnNq1KwF/eh0pPbsKktaZUyP/VSon0VGXRr7IIFf+qjl3n3G2VIT3C21lzfd
         ysze7cf0gioBCwcKG+xzELAkFtoybRBaXaHI3rRFQ6BC6TauVpZoBh/OCzekH3uR6Wgr
         Bkeg==
X-Gm-Message-State: ACrzQf3ycEb7qNBYrBh00+PPTVltsve4gG4JBhenbe49mKgInNM7NqHx
	VNpiuw88kcxId0tQNhMLXlK3M6fSQkKBeQ==
X-Google-Smtp-Source: AMsMyM4swTGTr3hxjeA8xd6FCPX76lCHSXx7MgcU1ECbOnV7i+g+6MOJuwYRQY0oz9Pcccus40DSCw==
X-Received: by 2002:a17:907:160e:b0:791:8ae7:4fb8 with SMTP id hb14-20020a170907160e00b007918ae74fb8mr17690306ejc.271.1667296385662;
        Tue, 01 Nov 2022 02:53:05 -0700 (PDT)
Received: from uvv-2004-vm.localdomain (dslb-002-205-236-027.002.205.pools.vodafone-ip.de. [2.205.236.27])
        by smtp.gmail.com with ESMTPSA id hv13-20020a17090760cd00b0078d21574986sm3924904ejc.203.2022.11.01.02.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 02:53:05 -0700 (PDT)
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
To: barebox@lists.infradead.org
Cc: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
Date: Tue,  1 Nov 2022 10:52:41 +0100
Message-Id: <20221101095241.984845-2-uvv.mail@gmail.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221101095241.984845-1-uvv.mail@gmail.com>
References: <20221101095241.984845-1-uvv.mail@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_025309_544741_EC4ABBA8 
X-CRM114-Status: GOOD (  10.62  )
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
Subject: [PATCH 2/2] ARM: socfpga: Configure F2SDRAM bridges
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



