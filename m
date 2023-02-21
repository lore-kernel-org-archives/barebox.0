Delivery-date: Tue, 21 Feb 2023 09:07:03 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNfz-00Dea9-C8
	for lore@lore.pengutronix.de; Tue, 21 Feb 2023 09:07:03 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pUNfx-0006pu-ED
	for lore@pengutronix.de; Tue, 21 Feb 2023 09:07:02 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=9yx4/QfPvM8ogiNl792kOOf/xkDBFdKN6i2Qihu4NBY=; b=aHjpZXm7PLaem2FHOBCGao3qmX
	AF5PGAedJITtxGvwYymXL+rxWMKkgMYF8ugJRhuuDeSS+rTDAYKk0Vn5xL+rNXWuhdu7CdT/DfDdz
	/zSTSPPwCMMBE8H3a8aBO3ujLEPSZJWYcLCqaqSG+8HH3D2qe/WMp2FMdfO9qgE1OznNiUmckADga
	6vr5sNmzsuW7HpBnda/TUflzLQvV5camzFyABmyb01kK8EVTLbHKwdAlriZopuNrd1y3WEVVYJPDH
	PtFXiscNVl0K6UdJ46Q9s/whtx6tBInqOxJNuUhmJCtbSBljoZ2EYNPSysbkPzs8b3UE7j2l9Z3cd
	MEDrWNkg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNei-006yQ4-5e; Tue, 21 Feb 2023 08:05:44 +0000
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pUNeV-006yIm-MI
	for barebox@lists.infradead.org; Tue, 21 Feb 2023 08:05:34 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeS-00061U-5D; Tue, 21 Feb 2023 09:05:28 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtp (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeQ-006RjC-92; Tue, 21 Feb 2023 09:05:27 +0100
Received: from afa by dude05.red.stw.pengutronix.de with local (Exim 4.94.2)
	(envelope-from <afa@pengutronix.de>)
	id 1pUNeP-002YHO-Qa; Tue, 21 Feb 2023 09:05:25 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: lst@pengutronix.de
Date: Tue, 21 Feb 2023 09:05:20 +0100
Message-Id: <20230221080524.607241-9-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230221080524.607241-1-a.fatoum@pengutronix.de>
References: <20230221080524.607241-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230221_000531_822053_CE4481F7 
X-CRM114-Status: UNSURE (   8.78  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH RFC 08/12] RISC-V: StarFive: J7100: set /soc/dma-noncoherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

With upcoming changes, cache handling will be skipped on RISC-V, because
arch is cache-coherent by default. StarFive JH7100 has non-coherent DMA
masters though, so note that in the DT.
---
 arch/riscv/Kconfig.socs    | 1 +
 arch/riscv/dts/jh7100.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 0f03637a66bc..c0cac2ca6816 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -87,6 +87,7 @@ config SOC_STARFIVE_JH7100
 	bool
 	select SOC_STARFIVE_JH71XX
 	select SIFIVE_L2
+	select OF_DMA_COHERENCY
 	help
 	  Unlike JH7110 and later, CPU on the JH7100 are not cache-coherent
 	  with respect to DMA masters like GMAC and DW MMC controller.
diff --git a/arch/riscv/dts/jh7100.dtsi b/arch/riscv/dts/jh7100.dtsi
index e3990582af97..b11801553bf7 100644
--- a/arch/riscv/dts/jh7100.dtsi
+++ b/arch/riscv/dts/jh7100.dtsi
@@ -212,6 +212,7 @@
 		#clock-cells = <1>;
 		compatible = "simple-bus";
 		ranges;
+		dma-noncoherent;
 
 		intram0: sram@18000000 {
 			compatible = "mmio-sram";
-- 
2.30.2



