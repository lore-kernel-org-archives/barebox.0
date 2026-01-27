Delivery-date: Tue, 27 Jan 2026 13:13:29 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkhwn-005tLP-1g
	for lore@lore.pengutronix.de;
	Tue, 27 Jan 2026 13:13:29 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vkhwm-00016Q-Eh
	for lore@pengutronix.de; Tue, 27 Jan 2026 13:13:29 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=Kuz6PphvOOixK4bXxbAWkzPnANWPKsjRx5vDgoF1kyE=; b=bhFwLOif586jCybISg6s91oYyO
	u8QEl36ksyqpvlUuH2npg8NUJD76sCZIUFIFyWp3Obkbg533Spzk0qp/8mKSq8r6Lsk7Se1MeYnWM
	k33OKYRqrpyTVlPlXCIPaaAYVBEYKeDqAR1e5HFC5E+HVQEHvi3AZYJqW388fqy8vzhy8gKqUKeEu
	VM8lGNJSlJ5P8BGLjA7ksUn+y3lLVhDC2kRTjoQKGHBwxCN9ED9RavALq6jRR89g610eNVO58N6oP
	O+0ev0Ecr9+Nb9fq6ZKst88TJU/KDbSilcqRhmN04pMd3sbf31YyGyExFzC7YOzn2xaH1Fw6/mv61
	Htxd0qsg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhw2-0000000EDLm-1pCm;
	Tue, 27 Jan 2026 12:12:42 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vkhvy-0000000EDH2-1Fdd
	for barebox@lists.infradead.org;
	Tue, 27 Jan 2026 12:12:40 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1769515945; x=1772107945;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=HMQ2J3J0+++Ha0GD0HS9np9wg5DqvoxmIwRMuXaAT/w=;
	b=oeFvrFyE6JQzS9Xutt7M12I9Q3YyRIX6snHXxtAXtvuKY7DOFlbk2EmWpVX8R9CR
	7w/oO2oZPro/PsUkOXZCNpHNLl6HDg2y1dT5TnKJBrE2S0LQKhdzImHMH6j5/IB6
	tsVblLhsPujwfyRG6TyInBcdY9/kYNyA0GD4MSUPptn0I6SEGszYMOTGY9RMx+RN
	frE65r38qcW76IIUqOR9nNIkCKXW0qNGxc0ZRzqJukBGger7eK6/wuM/FzsVlUIv
	ddb245JO29X/EHQ2kh4iDwx65x11ZOVbUoCRld/2mukPVxKqWjzB2XCPta+xwXST
	dkTAA3ZjAlnERCndw5wzKg==;
X-AuditID: ac1001d4-ba83c380000daae5-b4-6978aba946d2
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id 0D.FF.43749.9ABA8796; Tue, 27 Jan 2026 12:12:25 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Tue, 27 Jan 2026 12:12:17 +0000
Message-ID: <20260127121217.3896902-3-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260127121217.3896902-1-renaud.barbier@ametek.com>
References: <20260127121217.3896902-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCJMWRmVeSWpSXmKPExsXCtT5hnu7K1RWZBlMahC1OLO5ntpj+NsiB
	yWPezgCPzUvqA5iiuGxSUnMyy1KL9O0SuDKmnP3IUtAsWzH19gLGBsbVEl2MnBwSAiYSy48t
	Z+5i5OIQEtjJKLH57TxWkASbgIHEv6Nf2UBsEQF5ibn728DizAJ6Eh0XJjKB2MICXhLXe24x
	gtgsAqoSD2ZvZgexeQUcJLbs/8AEsUBeYvEOkAWcHJwCjhLv3veDxYWAapbtfcECUS8ocXLm
	ExaI+fISzVtnM09g5J2FJDULSWoBI9MqRtHSbN2i1JzESkNjvcTc1JLUbL3k/NxNjMCAWSPA
	eGUH451PH/QOMTJxMB5ilOBgVhLh5V9WminEm5JYWZValB9fVJqTWnyIUZqDRUmcd+2eD3FC
	AumJQFNSUwtSi2CyTBycUg1ME+UOb/7l2LaSl+Gd6o1pu1pcZRuN2t/+PP3c5VbThlO+mRsT
	OIUf5bWaV2RPccisvR/ltGHNsrnS75+u+jiL7ayFz67+5l8PY13e/mpkKlhc6bFXJCMoeKtC
	Xa3JndOha/xeuD6b98j2+fKrC71V40IyKuL87qpO2LRrluP5lTY9KauqO8R65rMvaFnvedh1
	feGW1bd4Dou3TtBKlX6y2vebT/25vck9Ki+LdvYnzdpY5mGzc8G/StOwNT+0fJO8F3x0fX3b
	2OJ7aknz3DfJwY6bVVfIrZx6t8eW+eFkd6UILrmDh7yLd5ssqZ5+9LPex12aB3PUPmmvPBbk
	K37weRv//y9mNsw1fQqXLaV3K7EVZyQamZppMRcVJwIABDgrLIkCAAA=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260127_041238_536157_01286A6D 
X-CRM114-Status: GOOD (  13.04  )
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
Subject: [PATCH 2/2] ARM: ls1021a: initial Ethernet and mdio configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable the use of the Ethernet port 1 (none other tested).

Signed-off-by: Renaud Barbier <renaud.barbier@ametek.com>
---
 arch/arm/boards/ls1021aiot/board.c       | 35 ++++++++++++++++++++++++
 arch/arm/configs/layerscape_v7_defconfig |  7 +++++
 arch/arm/dts/fsl-ls1021a-iot.dts         | 28 +++++++++++++++++++
 3 files changed, 70 insertions(+)

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
index d7e8bcc7ed..33282c8f52 100644
--- a/arch/arm/dts/fsl-ls1021a-iot.dts
+++ b/arch/arm/dts/fsl-ls1021a-iot.dts
@@ -69,6 +69,34 @@ &i2c2 {
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
+&mdio0 {
+	/* Rename the compatible name property as the mdio register offset
+	 * in the gianfar driver depends on this name. Once the driver
+	 * is in sync with Linux, it may be gone.
+	 */
+	compatible = "fsl,etsec2-mdio";
+};
+
+&mdio1 {
+	compatible = "fsl,etsec2-mdio";
+};
+
 &uart0 {
 	status = "okay";
 	clock-frequency = <150000000>;
-- 
2.43.0



