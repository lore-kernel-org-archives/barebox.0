Delivery-date: Mon, 28 Apr 2025 19:56:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9Sii-000F8Y-2E
	for lore@lore.pengutronix.de;
	Mon, 28 Apr 2025 19:56:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1u9Sii-00070x-4d
	for lore@pengutronix.de; Mon, 28 Apr 2025 19:56:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-Type:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=8g9zTzw8oV+u4BvCLL7x4UxThK88esqvhgkqWr5zUXI=; b=31htuFXodTFU3KA2/bP/mdEgW/
	D/lzvkGJ6zjSG/lsYajExP32+yXmrkYvoUxtQbTBinSLho0aMdy1g7JRWHsSTdUwTav8WFqMSq4uv
	g3R5KrarSNMGGAyqnV20IOzStLDXBPfB3l0pNsY/mIfv1G8yZvAa7TYAnDMYpePabq7YaG0oBPxzr
	ZyXJyCqFhAqqTciXBUqAyz3piE57KvyCR4OoV82arvQflXUbk/6Ei3cbcoEmV54HwooJQm+mTXll2
	dvPU7alvZnzArGY4r2uUG2MG5eiUzSwLcX1HEj49VqSOpQDqi1tn5WAktEO3l//Q0XPzhMAZ8FNo8
	AEyjSaYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9SiE-000000079Ft-32jt;
	Mon, 28 Apr 2025 17:56:14 +0000
Received: from mout.kundenserver.de ([217.72.192.74])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1u9Sgp-0000000797T-09ek
	for barebox@lists.infradead.org;
	Mon, 28 Apr 2025 17:54:49 +0000
Received: from InfinityCube ([95.91.233.47]) by mrelayeu.kundenserver.de
 (mreue109 [213.165.67.113]) with ESMTPSA (Nemesis) id
 1M3DBb-1u5tvD1Uq5-00Dp0F; Mon, 28 Apr 2025 19:54:42 +0200
From: johannes@gnu-linux.rocks
To: barebox@lists.infradead.org,
	s.hauer@pengutronix.de
Cc: Johannes Roith <johannes@gnu-linux.rocks>
Date: Mon, 28 Apr 2025 19:54:24 +0200
Message-Id: <20250428175424.9060-1-johannes@gnu-linux.rocks>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Provags-ID: V03:K1:OAmzo4awgRQeMS7+e7v/akQVZrx6HBqvRirbHHI9XEhILYuhi8l
 G4ZRepQkzSYIoV9nKWHxzNlE5b/v3jV82YQYK5HmNxfidWulo0z2qlNwEJtM5uK1PBnUmcC
 CwQUrdMdGG6ETqNE0DItzmDj7BGBKBrc76z908DeBR1864O4vHWH/dEbYBRhnHsajx+41xF
 Iehqlm/em7Z8bexZ9M65A==
UI-OutboundReport: notjunk:1;M01:P0:Lo7K340fJks=;8NFVImr4S8VvDDuNCORhLfbE9q1
 /KcNcfxTtfY6Vyi7CmrpDASnjJX83RiOey2o3L1gbG22KD3uWmySWQPnZszehYmre1USb7KlI
 XqEEMuZooyDuqDhI4Tv7Cj/D+yu9zja3Dp03V3xaLMqQ3Glv/6ZCEBEcf3//ONelzj7OR1qkU
 nFo7J9T8PnY0VWYEpzuySZvvaoUIGOvjN9kZY2aBJ6CtrqvzjEma62mj+XyzSfuKN1n5B0827
 Q6nYpDeKsMZfPGx0yLQlbjd+R9u6iARW8p8hYbb6YxPwhlgQw9bvNbgeR748T8R2HwQYwm9Ih
 46vQNu1X9VsE+3bkWAM/8VWWuBRe8wQb7Bi9lQaXMhgI9RUfusF5+nBhsK4WzgoMqbhRROq6p
 axYh5SBcL98zGYyFdI8oghVBjG18IAIaXU4DyDwXPqUXZ0AVB829LH9M/tCmF8teDwAhRUTcE
 pFUe4Jp5ZAhrH7D5Rs+67xEkkMlwXeA4/5Ifff77/ZKuZxrA5lJo8+VR4HhCJGG+GWO46jhIh
 RNzLqfAZy1t0Iwxt5jrJSL/lhg/9i3JupnZY/uV1Ce0z1Spr525EEepNtplloraUtdl8LBoIj
 dakgIN5cZ1jdolI9rqUVUcxg4yRi8eCfFYUe6hTSnH75DFkF4OBgg2wBH3q2YyT0nakCNqRrv
 ixm2woowsTF/u2CpvO5nRmCAxtGmCk0IYw4Zt0eQbXpn6pMym81W3RtuZCr/P+7K2dp8ZcfyT
 HocPbHSsnpQS/KWEXp7X6I95MNG+OQL8uSjEK3CiXjJ8z12xfcnH/XjoDDPxI/8U4vgEioeg4
 hEIBfLrbG6MCFc5OUlx32IhVUCZJCXXgBOSXSafMq6XYCrliasrO9O8rfvyf/sl174GmrKfK7
 EdM0yaxSr1JUB0xKGiy9YMy5uo3nSDbCumrj7RjCW4dVrPydsFb+T+9qr6jmDaT3jBQ7UXaWr
 bfzC/rcPUPFJ5YYRZEqPZPM2/HHZovWWxLY1BuEB5htUqJOWy0y0StwEPr1ZqrdtA4yV4Tfik
 qjBOUuow+vuNYIrgCNE81ATJ/vfkIKwQqUuKDxUOKOSRnp4+JnM/obbVxf0JtaYKYGim4ueYB
 giEZ4wF5N01eRv70CNOlTQDOq4jalypEXNZ9M1QwQ86qoTD+bu6M4A+Fv5/w/km7cZxhSTXgs
 Oo3qxxAa2MJBwHzw6HiygxnOVm6cnXNrHOwZfqqCVxQGmCG3xNXs1IPa05F7xnkzL5nKdmYkL
 0VYcadSQK1QNiFwi1BxeHYj5GMMux0N8pTVkUtTwh2OjY7uoT1KV2f84MWJZUoy+2rxnt1oz8
 aXui78dcs0VsCcf/k2NVYC24dB4a6xGeSIWtO5vmHwvneGkdLEkY6c/s1eMWKBnbqLf5DIvMp
 gtW1hH8f/92r7qEg==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250428_105447_379934_0D60C039 
X-CRM114-Status: UNSURE (   8.73  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] zedboard correct comments in lowlevel.c
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

From: Johannes Roith <johannes@gnu-linux.rocks>

Signed-off-by: Johannes Roith <johannes@gnu-linux.rocks>

According to the TRM of the Zynq 7000 the registers under 'UART1 pinmux'
represents the pinmux for UART0. So, I fixed the comments and also
added the pin number for the UART0, UART1 and QSPI pins to the pinctrl.

Link to TRM page for pinmux:

https://docs.amd.com/r/en-US/ug585-zynq-7000-SoC-TRM/Register-slcr-MIO_PIN_50

---
 arch/arm/boards/avnet-zedboard/lowlevel.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boards/avnet-zedboard/lowlevel.c b/arch/arm/boards/avnet-zedboard/lowlevel.c
index 026a03d04b..605aab783a 100644
--- a/arch/arm/boards/avnet-zedboard/lowlevel.c
+++ b/arch/arm/boards/avnet-zedboard/lowlevel.c
@@ -223,12 +223,13 @@ static void avnet_zedboard_ps7_init(void)
 	writel(0x00000081, 0XF8006000);
 
 	/* poor mans pinctrl */
+	/* UART1 pinmux TxD: MIO_PIN 48, RxD: MIO_PIN 49 */
 	writel(0x000002E0, ZYNQ_MIO_BASE + 0xC0);
 	writel(0x000002E1, ZYNQ_MIO_BASE + 0xC4);
-	/* UART1 pinmux */
+	/* UART0 pinmux TxD: MIO_PIN 50, RxD: MIO_PIN 51 */
 	writel(0x000002E1, ZYNQ_MIO_BASE + 0xC8);
 	writel(0x000002E0, ZYNQ_MIO_BASE + 0xCC);
-	/* QSPI pinmux */
+	/* QSPI pinmux MIO_PIN 01 - 08 */
 	writel(0x00001602, ZYNQ_MIO_BASE + 0x04);
 	writel(0x00000702, ZYNQ_MIO_BASE + 0x08);
 	writel(0x00000702, ZYNQ_MIO_BASE + 0x0c);
-- 
2.39.5



