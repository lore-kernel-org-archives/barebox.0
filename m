Delivery-date: Wed, 04 Feb 2026 12:47:11 +0100
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLj-008jyD-21
	for lore@lore.pengutronix.de;
	Wed, 04 Feb 2026 12:47:11 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1vnbLi-00089l-Gy
	for lore@pengutronix.de; Wed, 04 Feb 2026 12:47:11 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Transfer-Encoding:
	MIME-Version:References:In-Reply-To:Message-ID:Date:Subject:Cc:To:From:
	Reply-To:Content-Type:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=AAUc/B4X8uFX5qPIOMyhbY8RH6VjA4KGj/+4ty/iX7I=; b=gNF5+EzoQr987GfYI2wRo0wRaq
	GFUvamsBkO/Qdp+rT63F75yowU/F9VGtklvFUyIMU725l4X8ozO9GGhEDW7oDXVhUL0l5x6GS5aJy
	RhGEvj0obHu9MYrU+k8kxwHowM6zkjlpuWxmo7cVHMSmHhomYnixyZ4xph6b+LsLQZufMxyxA8JMy
	TLlffAaviCjwu1GOo3ZJYYpqTUqGdLXnNavz1lBT/VKcHuBkwjxpNM4GHdjEXrwIFIyfxPOUnn+C9
	ERxO50tsNM8nEvmOwMjabROxYsv9r+PzuPJ2LwUEizefEjA3AIrUJRIlgtGlGlrJzHGyn1vc/kl/V
	YnArZnsQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbLA-00000008NuX-0eqF;
	Wed, 04 Feb 2026 11:46:36 +0000
Received: from uk-relay3.ametek.com ([89.191.218.232] helo=uk-relay13.ametek.com)
	by bombadil.infradead.org with esmtps (Exim 4.98.2 #2 (Red Hat Linux))
	id 1vnbL7-00000008Nrp-3shW
	for barebox@lists.infradead.org;
	Wed, 04 Feb 2026 11:46:35 +0000
DKIM-Signature: v=1; a=rsa-sha256; d=ametek.com; s=ukrelaysnew; c=relaxed/simple;
	q=dns/txt; i=@ametek.com; t=1770205588; x=1772797588;
	h=From:Sender:Reply-To:Subject:Date:Message-ID:To:Cc:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=4kUoKglC9BNr/Jy1Q1K4/QZEPOGuQdvJsg1HR8Get0I=;
	b=gt1cxgLN1AqXB4KNfCDhsIVsBuDmkfR1Sx9zsWONVyQA8Nbka9ZNeusAMAyw6mUd
	lIluD+IbsNg9W3teDsVgP6/v4ku6u4dZrAGZFf1kF9M83iVK5HQ7wIp1jRNiiSCa
	sM6lrLPW/ZpKgi6ZsM5UvMdh54uJoJOvKSHpnLXsD8wFUaST/hC8FqyIt1ZW+Gtk
	OnAZEDSJbzT7QQTw3Y9B6/eybtbsQ3DathUV6qsvXebTCzb7JSiyJgJ5916v8wZu
	4NaxMBT7a0hAcy1Esv0JnsQ0PpwjAzY7mS5c55ZboTJknhDQ/zo5of1vlbK+an5w
	7F1CychUsgAF86v0vgTctg==;
X-AuditID: ac1001d4-ba83c380000daae5-09-69833194e9a1
Received: from uk-edi-aba-ow01.ametek.com ( [10.175.96.158])
	by uk-relay13.ametek.com (Symantec Mail Security) with SMTP id BD.ED.43749.49133896; Wed,  4 Feb 2026 11:46:28 +0000 (GMT)
From: Renaud Barbier <renaud.barbier@ametek.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@ametek.com>
Date: Wed,  4 Feb 2026 11:46:21 +0000
Message-ID: <20260204114621.2130261-5-renaud.barbier@ametek.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260204114621.2130261-1-renaud.barbier@ametek.com>
References: <20260204114621.2130261-1-renaud.barbier@ametek.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFvrCJMWRmVeSWpSXmKPExsXCtT5hnu4Uw+ZMg7XzDSxOLO5ntpj+NsiB
	yWPezgCPzUvqA5iiuGxSUnMyy1KL9O0SuDK+7ZrJXrBLtuLQriksDYzXJLoYOTkkBEwkpm/Y
	y9LFyMUhJLCTUWJZ90QWkASbgIHEv6Nf2UBsEQF5ibn721hBbGYBPYmOCxOZQGxhAV+Ju293
	gdWzCKhK9KxfwAhi8wo4SLz+/54RYoG8xOIdy5lBbE4BR4kHfx+D2UJANV0PfkPVC0qcnPmE
	BWK+vETz1tnMExh5ZyFJzUKSWsDItIpRtDRbtyg1J7HS0FgvMTe1JDVbLzk/dxMjMGDWCDBe
	2cF459MHvUOMTByMhxglOJiVRHjTp9dnCvGmJFZWpRblxxeV5qQWH2KU5mBREuddu+dDnJBA
	eiLQlNTUgtQimCwTB6dUA5PBnURtrfRMRcv53h6/o9huLPspEHHN7LdpUb6zcofDl3Tnons3
	g4IO/pfukf3BfPSn4K9iga/NttanbqnckOpSu7A7taXzhUo0Z3T6c3mf60fXXN/qZ90eaLVp
	a9eZrMMLom2OFZ0sTz9+0OzVv1W96daSoZtN/Q8siL5Q9zIiPv30278S5zh/8USLnp7xxWPr
	aofrHqdurjJ5lcnl3rm2PlL6mAtHIutjdQWLHb6TvAOa7edKf2e/PXH5ivYZD3R0bJ5Lu8mX
	iFXP1FQuN9iWXOy9sKVxffDRJ294HY5Y953gE8+ylWP4nW+/wMx5yVbWu9Ibvde8UCuRbn1+
	z3alTOyPydwFEQ31va+6ldiKMxKNTM20mIuKEwFahDeBiQIAAA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20260204_034634_107236_A1784FC1 
X-CRM114-Status: GOOD (  13.39  )
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
Subject: [PATCH v2 4/4] ARM: ls1021a: initial Ethernet and mdio configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Enable the use of the Ethernet port 1 (none other tested).
The PHY is limited to use 100FD as 1000FD is failing.

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



