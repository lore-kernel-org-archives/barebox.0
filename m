Delivery-date: Mon, 23 Jun 2025 19:06:32 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcq-00AKd7-2o
	for lore@lore.pengutronix.de;
	Mon, 23 Jun 2025 19:06:32 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uTkcp-00042f-GB
	for lore@pengutronix.de; Mon, 23 Jun 2025 19:06:32 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:In-Reply-To:References
	:Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=TxMYmKWZd7i9qQ5tnQ7FqGEBmtlSRYZHIbp5n1JawEA=; b=syUjqUozgt9eKNIfQJnRIJq8sa
	79+5lnutHmWIaftfC7amLmFBand6DQAAbz6RKpeU+0ZC65rv9H66Zi6ELDzVnTo5EwLOxEKRFQO/r
	JB0q+VoAkf++XMeUvqBKLH3rQ6yA/0WezRkoN46zDobBPq9gUA+vnBK667fOHXBxaTo4a0bjGZC67
	hAaI4wxTquAJsfWzn9JMNq3UhgzyHC19DIs82WxiYIoEY/y1uQa2WFmgc8dWiTpgGD/t1dlZrXX6y
	9qbA6GqIKNPB3/rUNSqEjlGPQeETx7S7isSI5oUIKxOXOxkeKm9+bjJrJZNGuxCfTnGbxs0BHqR2o
	HgbKYaig==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uTkc5-00000003VhR-0l1C;
	Mon, 23 Jun 2025 17:05:45 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uThgO-00000002xL4-0YZI
	for barebox@lists.infradead.org;
	Mon, 23 Jun 2025 13:58:01 +0000
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=ratatoskr.trumtrar.info)
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <s.trumtrar@pengutronix.de>)
	id 1uThgL-0000r6-8o; Mon, 23 Jun 2025 15:57:57 +0200
From: Steffen Trumtrar <s.trumtrar@pengutronix.de>
Date: Mon, 23 Jun 2025 15:57:46 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-1-e9de9e31b2c1@pengutronix.de>
References: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
In-Reply-To: <20250623-v2024-10-0-topic-socfpga-agilex5-v3-0-e9de9e31b2c1@pengutronix.de>
To: barebox@lists.infradead.org
Cc: Steffen Trumtrar <s.trumtrar@pengutronix.de>
X-Mailer: b4 0.14.2
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250623_065800_204254_7390066D 
X-CRM114-Status: UNSURE (   7.05  )
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
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v3 01/10] ARM: socfpga: kconfig: sort entries
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Sort the SoCFPGA entries in the menu by soc type. Add a comment while at it.
Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 arch/arm/mach-socfpga/Kconfig | 23 +++++++++++++++--------
 1 file changed, 15 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-socfpga/Kconfig b/arch/arm/mach-socfpga/Kconfig
index 4ec376056db8c07ad1d73041b079cde2cfeb9a17..fc14699a7d85201978e77acd89e38ca98cb00df9 100644
--- a/arch/arm/mach-socfpga/Kconfig
+++ b/arch/arm/mach-socfpga/Kconfig
@@ -22,6 +22,10 @@ config ARCH_SOCFPGA_ARRIA10
 	select OFDEVICE
 	select OFTREE
 
+if 32BIT
+
+comment "Cyclone5 boards"
+
 config MACH_SOCFPGA_ALTERA_SOCDK
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Altera SoCFPGA Development Kit"
@@ -30,14 +34,6 @@ config MACH_SOCFPGA_EBV_SOCRATES
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "EBV Socrates"
 
-config MACH_SOCFPGA_ENCLUSTRA_AA1
-	select ARCH_SOCFPGA_ARRIA10
-	bool "Enclustra AA1"
-
-config MACH_SOCFPGA_REFLEX_ACHILLES
-	select ARCH_SOCFPGA_ARRIA10
-	bool "Reflex Achilles"
-
 config MACH_SOCFPGA_TERASIC_DE0_NANO_SOC
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic DE0-NANO-SoC aka Atlas"
@@ -50,4 +46,15 @@ config MACH_SOCFPGA_TERASIC_SOCKIT
 	select ARCH_SOCFPGA_CYCLONE5
 	bool "Terasic SoCKit"
 
+comment "Arria10 boards"
+
+config MACH_SOCFPGA_ENCLUSTRA_AA1
+	select ARCH_SOCFPGA_ARRIA10
+	bool "Enclustra AA1"
+
+config MACH_SOCFPGA_REFLEX_ACHILLES
+	select ARCH_SOCFPGA_ARRIA10
+	bool "Reflex Achilles"
+
+endif
 endif

-- 
2.46.0



