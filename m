Delivery-date: Wed, 10 Jan 2024 17:02:44 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2S-00BoIi-2C
	for lore@lore.pengutronix.de;
	Wed, 10 Jan 2024 17:02:44 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rNb2S-0002m1-1K
	for lore@pengutronix.de; Wed, 10 Jan 2024 17:02:44 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-Id:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=B1CICk2RZuK2PLKiaCqiwABXVQEGHDmQK7bY2xZqyV4=; b=lrFE3338LDytZyNFWgDO/gYIjm
	GiuxSj8IoAwXBwiryAJr0XNyUQsnooceRfJx/bqB1QunJeC7YkRsjFVHRcJbmhrf3tpV6wcXdpva6
	uVOIXto7uCrBS5+mnFFF1kjS/Ds5ToiedRHM3AEKOheOeG2lVF+j8DQ8RSgsNySu2BNEW7CQv/kX3
	2H/EtVLOHI0KajEKYPvWA+My8sVBFR/YlqED1YAyOhP0lkRjforO7IIz06Sw9/tG2Z8bTrDvP+6MC
	yl6FXk+0vr10EB0zCoSYrU6AI7CAUTWUU7LOquc5HeR8lwDYc20CKnL4qEVWVZyjGHKQVb2yroMhi
	M2wHO+pw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1L-00CkhF-29;
	Wed, 10 Jan 2024 16:01:35 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rNb1E-00Ckas-1P
	for barebox@lists.infradead.org;
	Wed, 10 Jan 2024 16:01:31 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1D-0002Bk-8Z; Wed, 10 Jan 2024 17:01:27 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-001jus-RS; Wed, 10 Jan 2024 17:01:26 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <a.fatoum@pengutronix.de>)
	id 1rNb1C-00HLtL-2S;
	Wed, 10 Jan 2024 17:01:26 +0100
From: Ahmad Fatoum <a.fatoum@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>
Date: Wed, 10 Jan 2024 17:01:06 +0100
Message-Id: <20240110160112.4134162-5-a.fatoum@pengutronix.de>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
References: <20240110160112.4134162-1-a.fatoum@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240110_080128_495219_FBEAA9F4 
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 04/11] RISC-V: StarFive: J7100: set /soc/dma-noncoherent
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

With upcoming changes, cache handling will be skipped on RISC-V, because
arch is cache-coherent by default. StarFive JH7100 has non-coherent DMA
masters though, so note that in the DT.

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
---
v1 -> v2:
  - no change
---
 arch/riscv/Kconfig.socs    | 1 +
 arch/riscv/dts/jh7100.dtsi | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/riscv/Kconfig.socs b/arch/riscv/Kconfig.socs
index 56ba5ecf5865..cef9cd52300c 100644
--- a/arch/riscv/Kconfig.socs
+++ b/arch/riscv/Kconfig.socs
@@ -88,6 +88,7 @@ config SOC_STARFIVE_JH7100
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
@@ -212,6 +212,7 @@ soc {
 		#clock-cells = <1>;
 		compatible = "simple-bus";
 		ranges;
+		dma-noncoherent;
 
 		intram0: sram@18000000 {
 			compatible = "mmio-sram";
-- 
2.39.2



