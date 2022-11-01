Delivery-date: Tue, 01 Nov 2022 10:54:47 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnyp-00Aaba-QC
	for lore@lore.pengutronix.de; Tue, 01 Nov 2022 10:54:47 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1opnyn-0001R1-Mv
	for lore@pengutronix.de; Tue, 01 Nov 2022 10:54:46 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=zXgXpPyNXqK3qKYwPfSQw1fBLTmULJonMvWtRnctsgk=; b=rJf6NkS1T/AxagS7nN5EYT+KdL
	8Q9//Wuvi80mIKve7ZtKg5EMT9Eixqc3iH4aw6RzE6bBMSVkEdw4cyncn4wcZ/DBWTO1K30TVsLYD
	GsXVaJ+bAp5m9AMFlSJLU92Osu2xCTXrU/K/UOR02rBa8cM9lk8pEIz5gD4bf+eiT0QdK/ePZcEI3
	VLDrICZF/uPdRx8+UEvhFAFxVKwzwoNobqBLuPlPY9V/M9EEfWYQiyVfyz2LRn2addPToClOTvSKi
	acHd1R+SuVK9forVhCT2gfLCYEly5vRf+fvRuC8RL3qbe9adDaeX9Lp1Z8bDwAw8WMpRpMXJ5LuVu
	bObTdm4Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opnxO-003oKt-7G; Tue, 01 Nov 2022 09:53:18 +0000
Received: from mail-ed1-x531.google.com ([2a00:1450:4864:20::531])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1opnxF-003oGl-O3
	for barebox@lists.infradead.org; Tue, 01 Nov 2022 09:53:11 +0000
Received: by mail-ed1-x531.google.com with SMTP id z18so16009951edb.9
        for <barebox@lists.infradead.org>; Tue, 01 Nov 2022 02:53:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zXgXpPyNXqK3qKYwPfSQw1fBLTmULJonMvWtRnctsgk=;
        b=Jqf5+82CIcTBfulcwZaEpsDhelwuL7f4yRrIf10SJiGBqZ+hyGw9+c8sL8iHfCuJoY
         x+dM8lO1sOXioVEKI2rWgfcqHvxd/V52hDriv9C5BJB4bV4aWxfrXV8JzFytv4x/KBM8
         60hviL1uxvOIulC5GW32dZeVFTLzXeiUyxy0srISwJdn/lHn454AayS4MNSWsmW5cpHN
         8ZyB9KvspK7GIH4fwfEvRELCYDpiR4dHkN5nZIIKnddID9HRx/Pm63aq3I0FtrznAwqK
         ALi9vMWjod3LMr4nInXz1+sCZzTlDA4552t54bXfbHsfL1hYMfVK+EaYRznUcnR0VQcW
         D8JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zXgXpPyNXqK3qKYwPfSQw1fBLTmULJonMvWtRnctsgk=;
        b=Z9L8fBIb7vLfsI7foKUyc+naHffLYbgExt4NdYvIL59PhMspzgsFQpM2nGSIdFuDZk
         TwKB32jMVBlc/8a4gL4rJAEYZKFCdbS7XcLkTwyosZGF+B1y9B00M+YDWHsUpnAxPGE6
         NHX/bdoQEIxSS4FqzeWKNKBxO/hC8dyNJcuJ8ysebNMWjtq4OVL34ifvsKE2vuxzs56M
         KzSCk6mRMWCb6bKHNxKXHbqMUWOhJaweRlkS/zDyCA37ZqDqPRJ2n8sj3H1TgPGmlWd3
         2QVm8PXaIbHmSAaGuKtbZmZbJeUsVFYF0ePIrmLeqBJ8DmXZq31VF9ptDJfadgS/+UsB
         o92A==
X-Gm-Message-State: ACrzQf1pBs/U/r+06JPZMZ5tFoOSbsbWN8vRdVGLpM3WfXTgtfSnao9o
	erqFpqNTfI6pnW6CU7rXsDOh46sfpUOj0g==
X-Google-Smtp-Source: AMsMyM6Lyw1uIlCg4VTnVvMmNxB7oC6AyKBEfIiXi46AcAijriqkJlOmO7lmyGIwObI2hZ6HeSYmdg==
X-Received: by 2002:aa7:c054:0:b0:453:98c6:f6c4 with SMTP id k20-20020aa7c054000000b0045398c6f6c4mr18319943edo.2.1667296385052;
        Tue, 01 Nov 2022 02:53:05 -0700 (PDT)
Received: from uvv-2004-vm.localdomain (dslb-002-205-236-027.002.205.pools.vodafone-ip.de. [2.205.236.27])
        by smtp.gmail.com with ESMTPSA id hv13-20020a17090760cd00b0078d21574986sm3924904ejc.203.2022.11.01.02.53.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Nov 2022 02:53:04 -0700 (PDT)
From: Vyacheslav Yurkov <uvv.mail@gmail.com>
To: barebox@lists.infradead.org
Cc: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>
Date: Tue,  1 Nov 2022 10:52:40 +0100
Message-Id: <20221101095241.984845-1-uvv.mail@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20221101_025309_810531_2BC03C66 
X-CRM114-Status: UNSURE (   9.08  )
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
Subject: [PATCH 1/2] ARM: socfpga: Fix SDRAM firewall init
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

From: Vyacheslav Yurkov <Vyacheslav.Yurkov@bruker.com>

Incorrect enable bits were used in initialization sequence of SDRAM
firewall

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



