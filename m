Delivery-date: Fri, 19 Jan 2024 11:35:52 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQmE2-006t4d-2Z
	for lore@lore.pengutronix.de;
	Fri, 19 Jan 2024 11:35:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rQmE3-0002bK-EB
	for lore@pengutronix.de; Fri, 19 Jan 2024 11:35:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:To:From:Reply-To:Cc:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=Qdg8iaBgwtj6uhoZENb5RFbxsuxoZo2E47e2tR2m8vA=; b=t3Ejv6oePeFt/DFx0e9YUL3REH
	Fzl4Ld41M5dlU9tEZW2qlejR0tJitXTgDWk7838b9Nk0KRpma720QWn8f3ObOqbi+DQtCs+m+3FNU
	uczb/gTAMThU+QYDB5Gky9QDrT8E9jTVPYEGH1T6IlxDTDo5Hh/2XKhqNR1PjQ0emgBSdj3mP6Fco
	cQZJpu7qFFUZ37Td+/e/qtOuxOcdE+6eOT51BA0VHVxDNfvY0gzgJuJUSXPlxrTfS9CJSFU9G7NCm
	eqf2zuBC1KtgDWONzjvIWSGB7xn9YVKKqkF0SF7FJml51OAQJueJGHGeRRObZRUetYj62IvAFHoIM
	/1l1worw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1rQmCi-0056Re-1P;
	Fri, 19 Jan 2024 10:34:28 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1rQmCe-0056PY-0x
	for barebox@lists.infradead.org;
	Fri, 19 Jan 2024 10:34:26 +0000
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by metis.whiteo.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <m.felsch@pengutronix.de>)
	id 1rQmCY-0002V1-Og
	for barebox@lists.infradead.org; Fri, 19 Jan 2024 11:34:18 +0100
From: Marco Felsch <m.felsch@pengutronix.de>
To: barebox@lists.infradead.org
Date: Fri, 19 Jan 2024 11:34:15 +0100
Message-Id: <20240119103415.1101057-1-m.felsch@pengutronix.de>
X-Mailer: git-send-email 2.39.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240119_023424_332037_5B450727 
X-CRM114-Status: GOOD (  12.03  )
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
X-Spam-Status: No, score=-6.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH master] ARM: i.MX8MM bootsource: fix serial detection for QSPI boot source
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>

The current code override the serial download boot mode which is set in
case the BootROM decide to fallback due to an empty QSPI. This lead into
the wrong boot source detection and barebox will try to download the
rest of the image via QSPI instead of using the serial download mode.

Fix this by reorder the detection, first try the generic bootsource and
if this fails try to detect the QSPI boot mode. This is also how u-boot
does it in the first place.

Fixes: 7b55ababb40f ("ARM: i.MX8MM bootsource: fix QSPI boot source detection")
Signed-off-by: LI Qingwu <Qing-wu.Li@leica-geosystems.com.cn>
Signed-off-by: Marco Felsch <m.felsch@pengutronix.de>
---
 arch/arm/mach-imx/boot.c | 11 +++++++----
 1 file changed, 7 insertions(+), 4 deletions(-)

diff --git a/arch/arm/mach-imx/boot.c b/arch/arm/mach-imx/boot.c
index c6134f35b659..153da835606c 100644
--- a/arch/arm/mach-imx/boot.c
+++ b/arch/arm/mach-imx/boot.c
@@ -711,15 +711,18 @@ void imx8mm_get_boot_source(enum bootsource *src, int *instance)
 		return;
 	}
 
+	addr = IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0;
+
+	__imx7_get_boot_source(src, instance, addr, sbmr2);
+
+	if (*src != BOOTSOURCE_UNKNOWN)
+		return;
+
 	if (imx8mm_bootsource_qspi(sbmr1)) {
 		*src = BOOTSOURCE_SPI; /* Really: qspi */
 		*instance = 0;
 		return;
 	}
-
-	addr = IMX8M_BOOT_SW_INFO_POINTER_ADDR_A0;
-
-	__imx7_get_boot_source(src, instance, addr, sbmr2);
 }
 
 void imx8mm_boot_save_loc(void)
-- 
2.39.2



