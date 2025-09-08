Delivery-date: Mon, 08 Sep 2025 11:30:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCR-000atj-2L
	for lore@lore.pengutronix.de;
	Mon, 08 Sep 2025 11:30:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1uvYCR-0006rL-5x
	for lore@pengutronix.de; Mon, 08 Sep 2025 11:30:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:To:In-Reply-To:References:
	Message-Id:Content-Transfer-Encoding:Content-Type:MIME-Version:Subject:Date:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=hR7ShFzYzf5bqFVcxk5bDHRXuDiFn13z3HLHNEZMrj8=; b=lJn678zQl6s0GJ5h43Qz1hq7QP
	UWsMjWZNEr6vc8QNJzLHtTmG4t8T0vEoG/ApiVUny8mzb8Who3WEHZoRDYruAFNGBuwmzf6zCU0sS
	ol3gi5dARh2BJJSq1T+vnqFHmagDBQUq2x3AvqGUKySEz6QLBKstd2OjIeaZ/xbxGVikR/I/HL4n2
	yDo+f8GEjBf2Y35D8yVgd1ckQc3uvNYlrEIsWsNQ1J7sW+oE2m4NimedNC5h8EBMpDWu9KlwlcyzO
	3kXkZgZJnaQAqDeyc0K+gIhPLKI2n/7zddtmWrwioQwm9ZnUvhWKB+tWRjyEpIdyGjs3P5XSAyNdA
	6IJ9cjiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvYBh-0000000G2B5-2PHG;
	Mon, 08 Sep 2025 09:29:25 +0000
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1uvXIF-0000000FjF6-0AN9
	for barebox@lists.infradead.org;
	Mon, 08 Sep 2025 08:32:08 +0000
Received: from drehscheibe.grey.stw.pengutronix.de ([2a0a:edc0:0:c01:1d::a2])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0005Mz-Td; Mon, 08 Sep 2025 10:31:57 +0200
Received: from dude02.red.stw.pengutronix.de ([2a0a:edc0:0:1101:1d::28])
	by drehscheibe.grey.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-000DZ7-28;
	Mon, 08 Sep 2025 10:31:57 +0200
Received: from localhost ([::1] helo=dude02.red.stw.pengutronix.de)
	by dude02.red.stw.pengutronix.de with esmtp (Exim 4.98.2)
	(envelope-from <s.hauer@pengutronix.de>)
	id 1uvXI5-0000000269A-2QBw;
	Mon, 08 Sep 2025 10:31:57 +0200
From: Sascha Hauer <s.hauer@pengutronix.de>
Date: Mon, 08 Sep 2025 10:31:58 +0200
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250908-imx8-snvs-v1-4-1049458a0286@pengutronix.de>
References: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
In-Reply-To: <20250908-imx8-snvs-v1-0-1049458a0286@pengutronix.de>
To: BAREBOX <barebox@lists.infradead.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757320317; l=1297;
 i=s.hauer@pengutronix.de; s=20230412; h=from:subject:message-id;
 bh=uJ9WszjMKGOLNruUtWwhKuP8d1Xx5HTtLauNgo5PGg0=;
 b=JO1R4ukNUAgPmTbBvcPMQbjjvsWLfUloB7FjtU6ZGzJ3/nLY2Q6/4E9nWf/oNlds2YmHjY63f
 j0Wpt198qD3BU6K2sytpeKHBWQiBynNh2ixgQuOqzWmsj4uLy09/xY1
X-Developer-Key: i=s.hauer@pengutronix.de; a=ed25519;
 pk=4kuc9ocmECiBJKWxYgqyhtZOHj5AWi7+d0n/UjhkwTg=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20250908_013207_083835_A45D508C 
X-CRM114-Status: UNSURE (   9.42  )
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
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] ARM: defconfigs: enable SNVS driver in i.MX8 configs
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

i.MX8M now supports Secure Non Volatile Storage (SNVS). Enable the
driver in the i.MX8 defconfigs to give some more exposure.

Signed-off-by: Sascha Hauer <s.hauer@pengutronix.de>
---
 arch/arm/configs/imx_v8_defconfig   | 1 +
 arch/arm/configs/multi_v8_defconfig | 1 +
 2 files changed, 2 insertions(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index 19beacdefd0e9586de1327d84f792d43d2f37df9..5d93177a14b2940f114b1f69906518d988e6a08d 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -144,6 +144,7 @@ CONFIG_WATCHDOG_IMX=y
 CONFIG_WATCHDOG_IMXULP=y
 CONFIG_RAVE_SP_WATCHDOG=y
 CONFIG_GPIO_PCA953X=y
+CONFIG_NVMEM_SNVS_LPGPR=y
 CONFIG_IMX_OCOTP_ELE=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y
diff --git a/arch/arm/configs/multi_v8_defconfig b/arch/arm/configs/multi_v8_defconfig
index 73f43c1e31967310867b774360fe8f7fda00aacb..bd6fceb9416c474e2822b58c1b33dee86abdfffd 100644
--- a/arch/arm/configs/multi_v8_defconfig
+++ b/arch/arm/configs/multi_v8_defconfig
@@ -250,6 +250,7 @@ CONFIG_GPIO_PCA953X=y
 CONFIG_GPIO_ZYNQ=y
 CONFIG_PINCTRL_SINGLE=y
 CONFIG_NVMEM_RMEM=y
+CONFIG_NVMEM_SNVS_LPGPR=y
 CONFIG_IMX_OCOTP_ELE=y
 CONFIG_RAVE_SP_EEPROM=y
 CONFIG_REGULATOR=y

-- 
2.47.3



