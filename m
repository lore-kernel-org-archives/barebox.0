Delivery-date: Tue, 10 Feb 2026 13:53:19 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnF1-000Apd-34
	for lore@lore.pengutronix.de;
	Tue, 10 Feb 2026 13:53:19 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vpnF1-0008A4-Dv
	for lore@pengutronix.de; Tue, 10 Feb 2026 13:53:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=EMfCg4vCYXw+i+ygJocQTsvTzcbmGVE2QLpr7UmU5YY=; b=JHjqRBqyNAWAQfoMepWf5rmyXQ
	9TWxY8ywPnoAV/V4wsWmcGlCLxFsBV3CqYihaX3FaLIawmVqwf6wD8gQm1BCN1IoFeJIfz3+ANDyw
	u3c/oR5dFG7mFfVMQVkD8KZ3LlW70uSO3ctCNGPWrBGjf/kM9jiGsHPWEE7ubXpTdyFHPg1xhM5sG
	20IkKpkEI14oUW4LidgqxGcqoakUUeoUm86g1KGhF54wb/rkxveIYaTrgWSmrvNz0wSZ19NY4h6bQ
	nA5uMr2PhYqeogdztmsPqR3/ymb574HPrWRRtABSbnj4vQd+UUPM9EJCY6rpDUavbHhUO96gnlWMG
	RDDgqq4g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnET-0000000GxXQ-3Yyk;
	Tue, 10 Feb 2026 12:52:45 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vpnER-0000000GxUj-3O20
	for barebox@lists.infradead.org;
	Tue, 10 Feb 2026 12:52:45 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770727956; x=1773319956;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=SxMoXlnOzX9bUCxsqs8lfoWmlwFF028N+nK/Ip48ACk=;
	b=ruhVH7Mra3gLHg8nRXqKzIeF3ezHrC/ooC8hHorOqlPOLP9jKowdyWApTwC7iyDQ
	sc3XPkwqhWKtGLl4ocDgeklZC9uhvgmy0KvkMgBceY+0STBszHvBe4K6qU9eP2P9
	31m4YQPriZK/b/bAu7OY7ssQHo9ZtgecDOBBjE1PZP0vrvmcMf0miyORGhXmWXGJ
	s3lpH1FZzww7PL0v5K7GbYqtsjR3/126ECx8IH9AhU64YGA3mtemi7Y2KEk+7SJr
	MGjyiIN+mttGsYZPn/w1eAeiCXyj5X7n81/5fiGnClB5uhER9hNOsRqH865CU2bZ
	1cifU/RHBjjSkr0nh7WHlg==;
X-AuditID: ac1001d4-ba83c380000daae5-44-698b2a140d3a
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 29.8D.43749.41A2B896; Tue, 10 Feb 2026 12:52:36 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 10 Feb 2026 12:52:25 +0000
Message-ID: <20260210125225.981725-5-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260210125225.981725-1-renaud.barbier@ametek.com>
References: <20260210125225.981725-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrEJMWRmVeSWpSXmKPExsXCtT5hnq6IVnemQXOHnsWJxf3MFtPfBjkw
	eczbGeCxeUl9AFMUl01Kak5mWWqRvl0CV8azQ5NZC7qkK66dzmhgfC3WxcjJISFgItFyfyJT
	FyMXh5DATkaJ7a3HWUASbAIGEv+OfmUDsUUE5CXm7m9jBbGZBfQkOi6ANHByCAv4Sty/+xuo
	noODRUBVYtmBdJAwr4C9xPX3e9gg5stLLN6xnBnE5hRwkHi6+jiYLQRU8/PeDiaIekGJkzOf
	sECMl5do3jqbeQIj7ywkqVlIUgsYmVYxipZm6xal5iRWGhrrJeamlqRm6yXn525iBAbLGgHG
	KzsY73z6oHeIkYmD8RCjBAezkgivr0l7phBvSmJlVWpRfnxRaU5q8SFGaQ4WJXHetXs+xAkJ
	pCcCTUlNLUgtgskycXBKNTApLAm5O9Gsolvg+OJg5p3pLl27e3L+pzOt/Nw9v9KI8/RfMUtd
	FZ3fQvP33Wo/vX6+oVZI52X7tfsTRCcKcvbMcJno2Dvj+8b/3Xan9OVjv1r0Ruzad6HqXXK8
	frTz/pWXK/lUjhdxutisPJvfuPxhvVjeEnNh08OLsmRL88+4zlKaczTuzdGFE6+vvNPzetrO
	f4nTPyi0KmY8W3nk6y8pB++NAX9mb5avDnludWp3/oEP8jMXW5RERz2p9XtwzIurTcJo8+Rs
	jmOXd5sLnxUT+RO0+Ne6HU//sjon3ihs2bzZUdzizOMPsu8vebbYrv7hVa95sffQPjuFhj8v
	GvhrhZZfLtuYIJHlJX/YSahNia04I9HI1EyLuag4EQBGVC3yhwIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260210_045243_983382_8626F9F4 
X-CRM114-Status: GOOD (  12.11  )
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
X-Spam-Status: No, score=-2.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH v3 4/4] ARM: ls1021a: initial Ethernet and mdio configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable the use of the Ethernet port 1 (none other tested).
The PHY is limited to use 100FD as 1000FD is failing.

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/boards/ls1021aiot/board.c       | 35 ++++++++++++++++++++++++
 arch/arm/configs/layerscape_v7_defconfig |  7 +++++
 arch/arm/dts/fsl-ls1021a-iot.dts         | 16 +++++++++++
 3 files changed, 58 insertions(+)

diff --git a/arch/arm/boards/ls1021aiot/board.c b/arch/arm/boards/ls1021aiot/board.c
index 70070a4e75..d4976ebc80 100644
--- a/arch/arm/boards/ls1021aiot/board.c
+++ b/arch/arm/boards/ls1021aiot/board.c
@@ -20,6 +20,39 @@
 #include <of_address.h>
 #include <soc/fsl/immap_lsch2.h>
 
+#define PHY_ID_AR8031	0x004dd074
+
+/* Currently 1000FD is not working. Below is a bit of guess work
+ * from reading MMD3/MMD7 of the AR8033
+ */
+static int phy_fixup(struct phy_device *phydev)
+{
+	unsigned short val;
+	int advertise = SUPPORTED_1000baseT_Full | SUPPORTED_1000baseT_Half;
+
+	phydev->advertising &= ~advertise;
+
+	/* Ar8031 phy SmartEEE feature cause link status generates glitch,
+	 * which cause ethernet link down/up issue, so disable SmartEEE
+	 */
+	phy_write(phydev, 0xd, 0x3);
+	phy_write(phydev, 0xe, 0x805d);
+	phy_write(phydev, 0xd, 0x4003);
+	val = phy_read(phydev, 0xe);
+	val &= ~(0x1 << 8);
+	phy_write(phydev, 0xe, val);
+
+	/* Use XTAL */
+	phy_write(phydev, 0xd, 0x7);
+	phy_write(phydev, 0xe, 0x8016);
+	phy_write(phydev, 0xd, 0x4007);
+	val = phy_read(phydev, 0xe);
+	val &= 0xffe3;
+	phy_write(phydev, 0xe, val);
+
+	return 0;
+}
+
 static int iot_mem_init(void)
 {
 	if (!of_machine_is_compatible("fsl,ls1021a"))
@@ -42,6 +75,8 @@ static int iot_postcore_init(void)
 	clrbits_be32(&scfg->etsecdmamcr, SCFG_ETSECDMAMCR_LE_BD_FR);
 	out_be32(&scfg->etsecmcr, SCFG_ETSECCMCR_GE2_CLK125);
 
+	phy_register_fixup_for_uid(PHY_ID_AR8031, 0xffffffff, phy_fixup);
+
 	return 0;
 }
 coredevice_initcall(iot_postcore_init);
diff --git a/arch/arm/configs/layerscape_v7_defconfig b/arch/arm/configs/layerscape_v7_defconfig
index 5127a52522..99570a8890 100644
--- a/arch/arm/configs/layerscape_v7_defconfig
+++ b/arch/arm/configs/layerscape_v7_defconfig
@@ -45,6 +45,10 @@ CONFIG_CMD_LET=y
 CONFIG_CMD_MSLEEP=y
 CONFIG_CMD_READF=y
 CONFIG_CMD_SLEEP=y
+CONFIG_CMD_DHCP=y
+CONFIG_CMD_TFTP=y
+CONFIG_CMD_MIITOOL=y
+CONFIG_CMD_PING=y
 CONFIG_CMD_ECHO_E=y
 CONFIG_CMD_EDIT=y
 CONFIG_CMD_MENU=y
@@ -67,6 +71,8 @@ CONFIG_CMD_OF_NODE=y
 CONFIG_CMD_OF_PROPERTY=y
 CONFIG_CMD_OFTREE=y
 CONFIG_CMD_TIME=y
+CONFIG_NET=y
+CONFIG_DRIVER_NET_GIANFAR=y
 CONFIG_OF_BAREBOX_DRIVERS=y
 CONFIG_DRIVER_SERIAL_NS16550=y
 CONFIG_DRIVER_SPI_FSL_QUADSPI=y
@@ -85,3 +91,4 @@ CONFIG_EEPROM_AT24=y
 CONFIG_GPIO_PCA953X=y
 CONFIG_ZLIB=y
 CONFIG_LZO_DECOMPRESS=y
+CONFIG_FS_TFTP=y
diff --git a/arch/arm/dts/fsl-ls1021a-iot.dts b/arch/arm/dts/fsl-ls1021a-iot.dts
index d7e8bcc7ed..fdc7c4f879 100644
--- a/arch/arm/dts/fsl-ls1021a-iot.dts
+++ b/arch/arm/dts/fsl-ls1021a-iot.dts
@@ -69,6 +69,22 @@ &i2c2 {
 	status = "disabled";
 };
 
+&enet0 {
+	status = "disabled";
+};
+
+&enet1 {
+	tbi-handle = <&tbi1>;
+	phy-handle = <&phy3>;
+	phy-mode = "sgmii";
+	/* Disable property as transmit fails without a DMA sync */
+	/delete-property/ dma-coherent;
+};
+
+&enet2 {
+	status = "disabled";
+};
+
 &uart0 {
 	status = "okay";
 	clock-frequency = <150000000>;
-- 
2.43.0



