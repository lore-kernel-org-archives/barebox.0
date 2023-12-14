Delivery-date: Thu, 14 Dec 2023 17:12:35 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDoKA-0032pq-1d
	for lore@lore.pengutronix.de;
	Thu, 14 Dec 2023 17:12:35 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rDoKA-00057x-NH
	for lore@pengutronix.de; Thu, 14 Dec 2023 17:12:35 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Cc:To:Message-Id:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:From:
	Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender
	:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=YrsIWZqLCdvJWELxPBfNyhPkb9561Mu7Tmk9GVRHysM=; b=2PPu95X6KWSo7Vd+TJ6TjRHQ4/
	Z4wNB7XOjdysK6WmjOadUrNuMmJawBrS2+OBXWQiQTdAJhSz85I6A/W9QSl4UERPlYSt5dIQu5rAR
	zUkCrFPXx/xaFT/gobTKEQft0aYpjVgBkNtPfj7u7J3wgBs+PYqmalVs5uSeAvXJBTFDCwe15JykN
	KLrb/R4cyEGWmwYUjR+hE2y+vMg87hD1ubbA/DE9ZTMKik5AzKCnqSzYFeUyYf72LfJqznUH7il+j
	PyqONg4vYH6txB9ZR0FmxeyS3w9cpKAOZ1FQs51/MOr7j17DY8nvh82yJEeH1MrpapHRQomTqEJOs
	7p8hfDRA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoJ7-000lSR-38;
	Thu, 14 Dec 2023 16:11:29 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rDoJ5-000lRj-17
	for barebox@lists.infradead.org;
	Thu, 14 Dec 2023 16:11:28 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rDoJ2-0003yK-Gp; Thu, 14 Dec 2023 17:11:24 +0100
Received: from [2a0a:edc0:0:1101:1d::54] (helo=dude05.red.stw.pengutronix.de)
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rDoJ2-00Fpsb-4V; Thu, 14 Dec 2023 17:11:24 +0100
Received: from localhost ([::1] helo=dude05.red.stw.pengutronix.de)
	by dude05.red.stw.pengutronix.de with esmtp (Exim 4.96)
	(envelope-from <s.kerkmann@pengutronix.de>)
	id 1rDoJ2-00737C-0J;
	Thu, 14 Dec 2023 17:11:24 +0100
From: Stefan Kerkmann <s.kerkmann@pengutronix.de>
Date: Thu, 14 Dec 2023 17:10:31 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231214-fix-socfpga-dram-errata-workaround-v1-1-abfab95e7f69@pengutronix.de>
X-B4-Tracking: v=1; b=H4sIAPYoe2UC/x2NwQrCMBAFf6Xs2QWTSAV/RTws2de6iEnZaBVK/
 93gcQ4zs1GDGxpdho0cqzWrpUM4DJTvUmawaWeKx5hCDCee7Mut5mmZhdXlyXCXl/Cn+kO8vov
 yOGZBSnoGlHpocXTrP7ne9v0HXlPQQnQAAAA=
To: BAREBOX <barebox@lists.infradead.org>
Cc: Ahmad Fatoum <a.fatoum@pengutronix.de>, 
 Stefan Kerkmann <s.kerkmann@pengutronix.de>
X-Mailer: b4 0.12.4
X-Developer-Signature: v=1; a=openpgp-sha256; l=3178;
 i=s.kerkmann@pengutronix.de; h=from:subject:message-id;
 bh=YTsgQJwiQUTarroHEeanGQUojmt41I4FQZXRC8MA6r8=;
 b=owEBbQKS/ZANAwAKASbhgZV9yHLEAcsmYgBleyj5gF9PI3arbNNBxpCAe3klDFCoarD9+msf2
 Lw7Vn5iU6mJAjMEAAEKAB0WIQT7j6nk1whPzGe3qewm4YGVfchyxAUCZXso+QAKCRAm4YGVfchy
 xEsHD/0dGwYlPq261FepPrWjpwMqHJLSVu3X7X9dEWPkjrR3q0OYtKLpiJq6DagjhsLDkqvM4aC
 cUcj7JJERAB67MPKJlUxyqRLxOtmE08qYuM1u68r6tfUA2jw7Z5kTB+6SfaPbQ8RHvnQkIaZzDO
 F4pJbUmepK2OJN0QOGt/0V1agqhRujgXKF/M60blsFaAMUwo/oeSdZnncyZTUjWI6L5RJcHsNZC
 9n0DQArvI0KXaUlrRnIhz/nSHwO1K3fLQ1JQW/CEKMmh3VhSc2HU5w/oehQyaa3/N7kOvQjzTMq
 vB6MHn+qv8eVlTR2LZxRY4QglTqD232usLxuq+eyYkelRFhlx0auVZLpotKjOB/pz29iGoLAqBH
 UJcN5FFzdpHw8dLUC9nh2Lzi7u2Te2oBo1B99JTg1BymkLosqreulG15ALh+hlJskd67LiPRPvG
 V0TlK23varGKwpgc6se5GXVPLfS2OJdjre2O4wWIt0Ap2AStuwnwcIESP9booPClfoGjgNO5wu+
 wkQ63DS2cxHnXylY2bNA6z5a3Y14Vxxbl1hrbYPXQNkpf+An/Z03bDqpbKv6gY38w9N/LduGZxR
 rMVKThPrKKFmdPCNhPSssSxALWF6Pvwm9gPd6Cf8Ed4C9XsLige/N+fJkuG0jwn1GIwKRrHx7gx
 dgBylnqQ6LGXZ5Q==
X-Developer-Key: i=s.kerkmann@pengutronix.de; a=openpgp;
 fpr=FB8FA9E4D7084FCC67B7A9EC26E181957DC872C4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20231214_081127_383825_4B63B689 
X-CRM114-Status: GOOD (  12.12  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: mach-socfpga: detect workaround for dram controller
 erratum
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

To work around an erratum, the previous booting stage may have increased the
amount of rows to fake having 4G of RAM. In that case, we assume the previous
booting stage will have fixed up a proper memory size into the device tree and
don't use the calculated dram size. The erratum itself appears to be
undocumented by Altera/Intel and the workaround was introduced in the Alteras
fork of U-Boot back in 2014 and ported to mainline later, the linked FogBugz
issue is unfortunately not accessible.

[1] github.com/altera-opensource/u-boot-socfpga/commit/93815696dce132ff8abc4ab2f4c195339ff821a0

Signed-off-by: Ahmad Fatoum <a.fatoum@pengutronix.de>
Signed-off-by: Stefan Kerkmann <s.kerkmann@pengutronix.de>
---
To work around an erratum in the Altera DRAM controller, the previous
booting stage may have increased the amount of rows to fake having 4G of
RAM. In that case, we assume the previous booting stage will have fixed
up a proper memory size into the device tree and don't use the
calculated dram size. The erratum itself appears to be undocumented by
Altera/Intel and the workaround was introduced in the Alteras fork of
U-Boot back in 2014 and ported to mainline later, the linked FogBugz
issue is unfortunately not accessible.

[1] github.com/altera-opensource/u-boot-socfpga/commit/93815696dce132ff8abc4ab2f4c195339ff821a0
---
 arch/arm/mach-socfpga/cyclone5-generic.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-socfpga/cyclone5-generic.c b/arch/arm/mach-socfpga/cyclone5-generic.c
index ae8142b31c..0cb46b51e9 100644
--- a/arch/arm/mach-socfpga/cyclone5-generic.c
+++ b/arch/arm/mach-socfpga/cyclone5-generic.c
@@ -128,7 +128,8 @@ void socfpga_cyclone5_timer_init(void)
 static int socfpga_detect_sdram(void)
 {
 	void __iomem *base = (void *)CYCLONE5_SDR_ADDRESS;
-	uint32_t dramaddrw, ctrlwidth, memsize;
+	uint32_t dramaddrw, ctrlwidth;
+	uint64_t memsize;
 	int colbits, rowbits, bankbits;
 	int width_bytes;
 
@@ -153,12 +154,20 @@ static int socfpga_detect_sdram(void)
 		break;
 	}
 
-	memsize = (1 << colbits) * (1 << rowbits) * (1 << bankbits) * width_bytes;
+	memsize = (1ULL << colbits) * (1ULL << rowbits) * (1ULL << bankbits) *
+		  width_bytes;
 
-	pr_debug("%s: colbits: %d rowbits: %d bankbits: %d width: %d => memsize: 0x%08x\n",
+	pr_debug(
+		"%s: colbits: %d rowbits: %d bankbits: %d width: %d => memsize: 0x%08llx\n",
 			__func__, colbits, rowbits, bankbits, width_bytes, memsize);
 
-	arm_add_mem_device("ram0", 0x0, memsize);
+	/* To work around an erratum in the dram controller, the previous booting
+	 * stage may have increased the amount of rows to fake having 4G of RAM. In
+	 * that case, we assume the previous booting stage will have fixed up a
+	 * proper memory size into the device tree and don't add a bank here */
+	if (memsize < SZ_4G) {
+		arm_add_mem_device("ram0", 0x0, memsize);
+	}
 
 	return 0;
 }

---
base-commit: 975acf1bafba2366eb40c5e8d8cb732b53f27aa1
change-id: 20231214-fix-socfpga-dram-errata-workaround-66cae33d7eed

Best regards,
-- 
Stefan Kerkmann <s.kerkmann@pengutronix.de>



