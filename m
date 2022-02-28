Delivery-date: Mon, 28 Feb 2022 18:05:20 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjSa-00DSa8-1r
	for lore@lore.pengutronix.de; Mon, 28 Feb 2022 18:05:20 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nOjSX-0007Bh-CK
	for lore@pengutronix.de; Mon, 28 Feb 2022 18:05:19 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ciGIYXS6vKcQm9gBMtBkJ87blLNgql7P0CYDxEnjE3s=; b=WTh1AhAmkTPRGb
	7Sb8NifbcwBsIVPvv20gIy5vFQTprkZCeyR4KjuNVsYbs60WjEW2OFkeeVxWowhqyIrQGytyrqarH
	L9oLYjOxgVzgsGvOHPAku8qHFY+UtqF+zVWNAsDEAKUh0GBMRzCbOWcPCIalXrldlZ0cRSYOPKsLe
	xq43TOB44FNfkeKMu+naSV7qgFH4FOGNnQKsdPrPirj4BBotOrdUylHtBb/DWEQYX+61h08MVCcGP
	P4MHAmiScHq6YE/bhWb74rnKKedmq01+PVQ5ze7RV1oeZnApZiRSh1VDP3nMK6p+79yjK6YD1EOy1
	6Qm3ZOkxPEESUFeWXODg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nOjR3-00DRp6-L0; Mon, 28 Feb 2022 17:03:45 +0000
Received: from mail-db8eur05on20617.outbound.protection.outlook.com
 ([2a01:111:f400:7e1a::617]
 helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nOjQw-00DRn0-JH
 for barebox@lists.infradead.org; Mon, 28 Feb 2022 17:03:40 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=aHkw65RvVd3S0cbFmBuFcyTuhYi2NyXQ3Q5y8ZXD+XK7hsXJYxdmAO274JX9y94JvN4aV5gvs+MkhtHT3bU8mh+UMFiHlWcm0XedHa2lZb6J+YSiJVGoK/otVBIHwc6pwfFvnoHfCCa6+7RvUH3S3bzejUfvHuWB+ty5/0X+b1vo6/ZCVEiT4JOyyWjQVQdcn+3L3mChSyKvtvVSe5IEiiaUXqmR4ZKypH1vRIb1ospnl8Vss3sC2C/Q30uGD9PMKGnNW+JJhlRS8Yla8RtBxMjhzJu/t/Xq53eHVHll3YKxnKMrxiTD43GnK7KLgX4G62KBpQhLscAHVXwLCYA1dw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xAxLwN4zB6069MvW90Gxer9WxeQ4+p0/fd8YKxYzKMk=;
 b=M6+mKmYSqOA2FGEHJ+OdSNBpQUGk+76eoEtAKjEfztP/N74EL/+Dmkt2QejClVJRdoreHIL3kTiLGuArNObgL/DKvAinkmFqgIlFezsmwsI3+HBWFefIv2EO9Lb3Q70WdJ0N+tubUrf9TK0DXBJgyaw3sCcjvxFMN5pwVtnAFzGM/jSP9cUcuOfFiAtmAMdWqOBKtku9OoEq1WZuiyTeKtQE2hnwa10yZ8UdchqI1IwAV9sfijeXB1Jjtk9C+4WOQoeZVbWftmJXSG9k2zQhe5xFSqqncu86C8MDM9TId8e0HFKcOauivKowtMQ6NDtaqyI4c6zqEVp1wn/qJqKkTg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=xAxLwN4zB6069MvW90Gxer9WxeQ4+p0/fd8YKxYzKMk=;
 b=KEAU9/Fcy5qIVRxpwZ5pNpHR/MspcZ9CiLQIOhbLtHtx7hi0lbJGyZ2keg/9ZXJ00HDl4P1F/LYYHXLU0WCmCIIA0vF//wIkNv/j08JuBnDVho9BBw/ucLWpk+Cqd6fOzBxvxqmzq6AuWvfQXQK9qcNGF9qT3N4aUnZCMeafLKM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AM6P192MB0293.EURP192.PROD.OUTLOOK.COM (2603:10a6:209:3a::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.22; Mon, 28 Feb 2022 17:03:35 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.026; Mon, 28 Feb 2022
 17:03:35 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Mon, 28 Feb 2022 18:03:28 +0100
Message-Id: <20220228170328.248391-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0035.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:9::9)
 To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: b636c4c7-69ac-4d0c-a301-08d9fadc41d3
X-MS-TrafficTypeDiagnostic: AM6P192MB0293:EE_
X-Microsoft-Antispam-PRVS: <AM6P192MB0293DFA28069385D2EED11A19C019@AM6P192MB0293.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BQfmS28ZimXFSKYwQ2ebaNNTTK+X8Ei4ShpR4ccaC9VX8Dxq/H4f+q0+2ZpDoJ1dVg+j3ovf5ePVHSRTiK+XxDG4tExZhrh/DFS1Hitj07QYKLCs8JxD7jVi8VdX+EVfuA27ed7eK5RY6FegrDZRHfKyzpkyeXHzNJ9Q6ej6B5IhEYVevS7puIRVTXAyMqGQvNQLQOobKb1Ix6GLPXz699Iw3Lesv5LmkcyQXX+rIAqSs1Kgx+8cqsKKKDekBR9L38uS8sbIbdp56eQKhIu+r+Y3QyBSTho415T0w27GMfm/ESRBIo3l23RZlLmHnJKQbtZ78/wgyKpHYhwQaKOfZWVgNkyIPZ2WzEeaEwe6nxjplSuvyavaRPo3A2KK4CzzqiZPdjsNlnxki3TLH2Ah2cPbu9bw+Qi81pHxaVwetYuQtHLM+ohNCMacMdi6HoYSCi+7S3X/WPEs3O6rYPZzl17xx4JT2EaioWF9JGTURHzRiNPfTWMPMAD9Uv+wKwr0Mn6P/wBj9lKwiz7tJwMudQCQ6K7zlvrvX2CVvrcjh1uJCNB5xJ1KMH35L73PrYS0kEgFVCDEwyOyONxZIPkIkLG3UEx/toX9e3utMKyrN+5ZJ2UaJriBF+zf719Fep+U5rYMGxLaIMcAuialwltU3AQzil15Pue6FectJ+p3R2Y3+wKfiyKDY825J0LuZHqwO4rBSgcKEqpJw5k7LdH3TPxRqLXiHxMqr/6u5d7f6Bc=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(66556008)(66476007)(66946007)(8676002)(4326008)(508600001)(2906002)(6486002)(8936002)(5660300002)(36756003)(1076003)(2616005)(6666004)(52116002)(36916002)(316002)(6916009)(6506007)(44832011)(6512007)(186003)(38100700002)(38350700002)(26005)(86362001)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?MVuA5a6BoWKNsR8sM3QYi/d/XCUAOc0VTHHD3oDKo+phtTf4FbiwK+0JaZXu?=
 =?us-ascii?Q?XPYiK93BdJBqv6jgCK1BGSeaY7ViNf+wXeCUXZfq/OteNY3XtppjOzMs4yJE?=
 =?us-ascii?Q?HNjHAO1GJIFelzJ2h77ISQU65nMhHpy2hCiO6aQ3jIix8f7PySUOCRwvwdsV?=
 =?us-ascii?Q?AXDAG8fSnIFTOWVkwpihHIHa3BNyoL2afJH37Ygzqlrb9YBaXll0u8rf+E7Z?=
 =?us-ascii?Q?1JnGA1j5sgPOFwByhwvjEEDb5RR5zc3UKcwpzTxmogrLeyp1EDS0/Cd5rHhG?=
 =?us-ascii?Q?nXIyOXDimv6ZPY32gj67eFQdZACETtaKFTvZDHrWgWESgW0uGaHdz8bhC8GY?=
 =?us-ascii?Q?koRQTD1Kwm+NO0azLJa2yT6peZOKZ90dQPd9IQ1Qu1EBKFUxbCVH+9gdrxeq?=
 =?us-ascii?Q?1siBCI+aywctZyZdikzI7jYfqN/CBPTfsnO8YXkyc25lmWOariekhz+8gWFq?=
 =?us-ascii?Q?XaAMeet7NnE+daWT0i6q3CdggCSxTx2DJYtKlYMjt0FXS+5ftxnsvrgTqNgT?=
 =?us-ascii?Q?FTS5xezJ4eXISarDqQh/gDRQlGNIo3X6lpi1pa44tfEPArELB2PTenUojscu?=
 =?us-ascii?Q?PquDE1wqqn2Rdb0KJzxxBu1YUhyTyxQiA0qZBI9f2xkLlBicLB+KOanS8Hku?=
 =?us-ascii?Q?XGj89nF9kpHUzAyK3OEh71VmVz992IhZ+3u4ERBZ3oHu78cRUpM296YnsHQI?=
 =?us-ascii?Q?Imm7E28R/UvenrxDOGhVjxpBr1b1zPHtkukKxsZPTZArDIGCRXucWBxlHu6U?=
 =?us-ascii?Q?cUsis2+8jUTzx6heHhPa/vAPg9Bif3MgrEFnyhllrbKSsm881/Z4AemLsUHn?=
 =?us-ascii?Q?lAPep9wklT0adlmKxcTLF4h0RhDTd2y+NG3Do35CQYV3+nAm0bON1Kffa0vt?=
 =?us-ascii?Q?nkPM+DJudwfJ/ThQ3zqH+mpb8pEZXw9t9AOUL4cK2Smma9E1/xr460Lovgie?=
 =?us-ascii?Q?+kP+5q37dCFQnW3+c9TgKV/kB0EeeHTwp3X5ACE/evqf3BjyP8TgPi4OKYrW?=
 =?us-ascii?Q?B3eRKHVW6ilTJLofuf/RvceLfVteW2h5yhyo6iqb1IqDopDdlYGAXW07dq1s?=
 =?us-ascii?Q?Thu7ME3HMI+/h6ORfbQU/bD8OocgaQCGV5U8tyPlXp8QuViHH4xh8y1lDXKo?=
 =?us-ascii?Q?BWHDDosb6sMuc3OUxaUeDhudR9KM04BHTC5AwaoS+45Oz5X6G9ha242o32oa?=
 =?us-ascii?Q?iWKZOJapf/oH8+rQv27oPK/PguXTrtNL1S25j/uTMF1oSD7FeFU3x6gCKKHq?=
 =?us-ascii?Q?dq5WQIYZyIouJ5sU5Dh/N8gSY99PDy67/1U1IYamelL1ikmhyF5QvNeiogCW?=
 =?us-ascii?Q?qGfBLvquUrB6vwIYiolMNtIfMb5kmTfqRW49BOJGlxV/IJ96nfHH7/Uuu6+Y?=
 =?us-ascii?Q?5yBOrlTQ6/9D/aei6NeXYg1PTB2zwA1Or3KcgeLjyU0Y2gko08AWbpOUaOxo?=
 =?us-ascii?Q?OA7GC4SAEpBNYe/L8kh3A9Tg4FAzr2kWjvWoNhBPSQxvh5ViWhAbHYH9BD3X?=
 =?us-ascii?Q?LZ7belBfApOU1OeXfzSEcvf8mq0tMV2FOcyWt9BRP6DarvUXmbso2Fc1uXsm?=
 =?us-ascii?Q?jn/r3CTV4AY/ojmbrs+vv6I9lp0hnmKJbfqfNPOU40K7+gtNsP6+we8r2PTW?=
 =?us-ascii?Q?6Ew48REyziavdWjC8z8vYZY=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: b636c4c7-69ac-4d0c-a301-08d9fadc41d3
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2022 17:03:35.5179 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MvpHIE98VPLD5ZIxn0OZ1gVV+boTrArIqZlgp8iPYRDZrocMt86/D/gpbJCObBJSAldfJckvZaHgjTYmiuwuag==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6P192MB0293
X-MS-Exchange-CrossPremises-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossPremises-AuthAs: Internal
X-MS-Exchange-CrossPremises-AuthMechanism: 06
X-MS-Exchange-CrossPremises-Mapi-Admin-Submission: 
X-MS-Exchange-CrossPremises-MessageSource: StoreDriver
X-MS-Exchange-CrossPremises-BCC: 
X-MS-Exchange-CrossPremises-OriginalClientIPAddress: 90.229.138.185
X-MS-Exchange-CrossPremises-TransportTrafficType: Email
X-MS-Exchange-CrossPremises-Antispam-ScanContext: DIR:Originating; SFV:NSPM;
 SKIP:0; 
X-MS-Exchange-CrossPremises-SCL: 1
X-MS-Exchange-CrossPremises-Processed-By-Journaling: Journal Agent
X-OrganizationHeadersPreserved: AM6P192MB0293.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220228_090338_709590_DAF8A47A 
X-CRM114-Status: UNSURE (   8.83  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.1 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] ARM: arch: dts: qspi: Add QSPI support to the NXP IMX8MN-EVK
 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add QSPI support in the default config and DTS files for the
NXP IMX8MN-EVK board. To be able to use it You also need the
QSPI driver enabled.

Tested on the NXP IMX8MN-EVK board as well as on an IMX8MN
custom bord supporting a QSPI flash. Tested with the memory
dump command i.e. 'md -s /dev/m25p0'.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/configs/imx_v8_defconfig |  1 +
 arch/arm/dts/imx8mn-evk.dts       | 32 +++++++++++++++++++++++++++++++
 2 files changed, 33 insertions(+)

diff --git a/arch/arm/configs/imx_v8_defconfig b/arch/arm/configs/imx_v8_defconfig
index b28c868a99bf..fe6398cc873d 100644
--- a/arch/arm/configs/imx_v8_defconfig
+++ b/arch/arm/configs/imx_v8_defconfig
@@ -99,6 +99,7 @@ CONFIG_NET_USB=y
 CONFIG_NET_USB_ASIX=y
 CONFIG_NET_USB_SMSC95XX=y
 CONFIG_DRIVER_SPI_IMX=y
+CONFIG_SPI_NXP_FLEXSPI=y
 CONFIG_I2C=y
 CONFIG_I2C_IMX=y
 CONFIG_MTD=y
diff --git a/arch/arm/dts/imx8mn-evk.dts b/arch/arm/dts/imx8mn-evk.dts
index 9fe24b3184f1..3d418f894283 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -60,3 +60,35 @@
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x640>;
 };
+
+&iomuxc {
+	pinctrl-names = "default";
+
+	pinctrl_flexspi0: flexspi0grp {
+		fsl,pins = <
+		MX8MN_IOMUXC_NAND_ALE_QSPI_A_SCLK	0x1c4
+		MX8MN_IOMUXC_NAND_CE0_B_QSPI_A_SS0_B	0x84
+		MX8MN_IOMUXC_NAND_DATA00_QSPI_A_DATA0	0x84
+		MX8MN_IOMUXC_NAND_DATA01_QSPI_A_DATA1	0x84
+		MX8MN_IOMUXC_NAND_DATA02_QSPI_A_DATA2	0x84
+		MX8MN_IOMUXC_NAND_DATA03_QSPI_A_DATA3	0x84
+		>;
+	};
+};
+
+&flexspi {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_flexspi0>;
+
+	system_flash: mt25ql01g@0 {
+		reg = <0>;
+		compatible = "jedec,spi-nor";
+		spi-max-frequency = <80000000>;
+		spi-tx-bus-width = <4>;
+		spi-rx-bus-width = <4>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+	};
+};
+
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

