Delivery-date: Tue, 01 Nov 2022 11:35:18 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoc2-00AdCO-7t
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 11:35:18 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opoc1-00071J-18
	for lore@pengutronix.de; Tue, 01 Nov 2022 11:35:17 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=sD5g7FmpKWqihIS+snCGj0VTEpn2LsO8jjznLycjJ8c=; b=YLqrFlwHVId/l3WEgHSqmabX3y
	e+4az0HVLMOba/yJRyByzIgRMxoTnneUFPjGwms6NmY7ajxJAHYM+L4/c+aNJ8mb2HaQPzVkYSJPr
	9XWkvoCx3kmd1BmNtX+bV4Wn/3E+e/+dthrrGGy1HBmJSCAbM6Cozadbxsa4YLRw2ygLRJzV7kB/k
	0mNMq4xWEeeYFwWrP3Dn2I3qZChhfuJh7QiwAPEOSNuUV413HNK59QT274Mls/j3CLKMn9TZCEBSV
	EUjGh2LnHOD3Y9k/XgOEseMUVD5gOuk1vv/PEqQIes47Ai3cwGwHm0ctDJ1TslIifO3OoBN8agBGj
	8N9UeweA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoah-0045W4-8V; Tue, 01 Nov 2022 10:33:55 +0000
Received: from mail-ej1-x630.google.com ([2a00:1450:4864:20::630])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opoac-0045U2-KU
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 10:33:51 +0000
Received: by mail-ej1-x630.google.com with SMTP id n12so35809448eja.11
        for <barebox@lists.infradead.org>; Tue, 01 Nov 2022 03:33:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=sD5g7FmpKWqihIS+snCGj0VTEpn2LsO8jjznLycjJ8c=;
        b=LoWZsTKhv+c+XyOHhiJxTB4zfBOe8WvQb4GM6sHJPZNsCe82h9lgUXERQoDmCcttvi
         rvUr98wWpnEXq63uKYB2t4U5AYqSKnMrGrCVR1DO1kRYTqrqIZKi4tRbndZnpl7FVYah
         cYmZSG4FutLPRBfTjXyN8jk3aY8/x+TywoSpVGvfMej6IpmaHNpT2oHCv0k7eB+aYu8y
         lC8HdNHQkVAnfVojXXfZiMWx8ybc26d1pgiAN9aGh/nO3D6/GAIn+lmZQoCIRw8FhwEx
         0BT0M3Ko3fO/7SyCExJSbgZdApQKcsbKlXJQDtXRvNK9uuhUniCgjCbViLANPTkCzcVe
         sD+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=sD5g7FmpKWqihIS+snCGj0VTEpn2LsO8jjznLycjJ8c=;
        b=Th1e/pmtseQU2ckCdtt8ZdvWERBaNKga4nCBx/K232jURaw26gmyZUsVayKcBbak+w
         I7K9jqLJbMHLsCil1mHPn4cU/LqrP+KsoZDRQcos4pTcXtM8T/mXXdPe5BpacSpqfFz7
         a7JfIvYvKJzJz//d5d1GjxDznNc5vS3B4aXQ9bExdACaJAGqG1DuLlOpuh/zOKizGaPu
         Bu+5JCX48lFdoPUBNChZSbbo6PT7EgjEu1ToDahF7tQti2cevADxd6SBt2R1cfN6KwHv
         4e+CFySakL6AqjxKuwDoI09Vidfl82E0pUsC6Ll9H2zKNlp5Zr+Gm6x07uzfl7/nW2lI
         ARSQ==
X-Gm-Message-State: ACrzQf0dt2ZrUx8eZSFopInjz9lx6Hjm6oMFEtknDpEoYQgd8YogzDQ8
	eF18edzGxw6LWaS5zlzFVcK6wEtEX8pV4A==
X-Google-Smtp-Source: AMsMyM6iiO02EJjnTMYHO4A8BSvZBU1R12tRIo9P9WGYnL4g1xCmxtCZoX2XgOp3LWN7aEZGIAj65Q==
X-Received: by 2002:a17:907:788:b0:741:4d1a:595d with SMTP id xd8-20020a170907078800b007414d1a595dmr17342395ejb.737.1667298826368;
        Tue, 01 Nov 2022 03:33:46 -0700 (PDT)
Received: from uvv-2004-vm.localdomain (dslb-002-205-236-027.002.205.pools.vodafone-ip.de. [2.205.236.27])
        by smtp.gmail.com with ESMTPSA id g7-20020a056402090700b00463b9d47e1fsm482851edz.71.2022.11.01.03.33.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 03:33:45 -0700 (PDT)
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
To: barebox@lists.infradead.org
Cc: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
Date: Tue,  1 Nov 2022 11:33:26 +0100
Message-Id: <20221101103327.985435-1-uvv.mail@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_033350_695543_0823302E 
X-CRM114-Status: UNSURE (   9.62  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
	HEADER_FROM_DIFFERENT_DOMAINS,MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/2] ARM: socfpga: Fix SDRAM firewall init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>

Incorrect enable bits were used in initialization sequence of SDRAM
firewall. This enables the FPGA to access regions of SDRAM, which were
previously inaccessible.

Signed-off-by: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
---
 arch/arm/mach-socfpga/arria10-sdram.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/mach-socfpga/arria10-sdram.c b/arch/arm/mach-socfpga/arria10-sdram.c
index 35c355df71..b7eade0b17 100644
--- a/arch/arm/mach-socfpga/arria10-sdram.c
+++ b/arch/arm/mach-socfpga/arria10-sdram.c
@@ -486,7 +486,7 @@ static int arria10_sdram_firewall_setup(void)
 	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_MPUREGION3ADDR);
 	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION0ADDR);
 
-	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG1EN;
+	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR0REG0EN;
 	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
 
 	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION1ADDR);
@@ -494,7 +494,7 @@ static int arria10_sdram_firewall_setup(void)
 	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM0REGION3ADDR);
 	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION0ADDR);
 
-	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG2EN;
+	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR1REG0EN;
 	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
 
 	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION1ADDR);
@@ -502,7 +502,7 @@ static int arria10_sdram_firewall_setup(void)
 	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM1REGION3ADDR);
 	writel(0xffff0000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION0ADDR);
 
-	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_MPUREG3EN;
+	mpu_en |= ARRIA10_NOC_FW_DDR_MPU_F2SDR2REG0EN;
 	writel(mpu_en, ARRIA10_SDR_FW_MPU_FPGA_EN);
 
 	writel(0x00000000, ARRIA10_SDR_FW_MPU_FPGA_FPGA2SDRAM2REGION1ADDR);
-- 
2.25.1



