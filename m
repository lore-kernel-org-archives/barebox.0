Delivery-date: Tue, 01 Mar 2022 14:24:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nP2Um-00EPXa-9P
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 14:24:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nP2Uk-0007zk-F7
	for lore@pengutronix.de; Tue, 01 Mar 2022 14:24:51 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=qxAKvrHCgucrKcz5cpvEaQNzboLStOurhKYHQqxiR+g=; b=qqrABJT414dYUP
	vj3XulEZB1fzD0ofRxNPEl0LdHdKQle9PH0fGJoP5k+nrWwkOHfMUFvbw5Dqx8DuuOUhT/HidzbGV
	AkYjTZL20n45lAjwAw4s5iZIRXTGbXiVB4t0kDNzmeQdqOnW2dFPaHFAM9vV/fuwa6jmq9k/9IrEm
	lp71g3m/G790Fcur3aPH/1I1mSKRkcvOOHD4lBtS8fEGxsy9zW/ikbs9LMLySmR1qyFM+/gQ5HYR3
	Ds9NEkTas/n34QaScAxGVs95oOz/XWvrrVjbyxA2ifmrMNlksWDPkWhzT1TdIv6GgMuHAqR/0SsxF
	g+Qr5oqh/FKdglavJFGw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP2TV-00GtDL-8N; Tue, 01 Mar 2022 13:23:33 +0000
Received: from mail-vi1eur04on0609.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::609]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP2TH-00Gt9H-7x
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 13:23:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=jqiav3SG9BV0UV2VSteRoXA/ZDP3yRgNXpkIDizAB3DV9wEXaxIdIJYftJV5YsoneXWIlcgjfXi0+sQ3TuvBEcrId9o/LHHtfKDkL4MyYAjOM8sqoJwWiw0Q7IBeIl5H59UPA1LZJGZfSV2dj6k30jTfPkvgDJVd07SwiAKgkIgf8Ia6FpQt3IZ6Y8W70FIs4sHVFSotpBkbTOf0EVLUs6u1O+wAF/ANXSkFsbzwz/VVXOwOrvyCUnWxS6cbFGO6hvMLDQwfZ6WPwrKnx6Ioz9vil9HwhrMPNIDup85d8K64mncyBiOWErzRlk28R+ccjDi4xwpQqbM97/QFuPgpZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=jNfVm0T5Gk7l1ABB8+svn2NTPLTlQxtyu2XolWNDCfo=;
 b=g4D09bFdT0JU4GembTQprQnG6ynfkCHYVa+FseJrSySvpFddekEv0PGOBhGI7R0Q0dEkpWGDxk37pAKhUQVk5pSH0aHbqZuPKrWOH1RZOjA9EE1syGsm4rxt2Bzs+Aryt/1Z2zym2A7kzpPHTn5Qa6TVmVtCp7leMbd/f5zAcfrw4+ntg4WbAoDFQQrIMDOzyhBEdSXH+AeHpRuUDQKEiq0eVjyKQNmquAyXxrWK/Ai4wnnrS5NYLd+BHAhcWP5sgQ5bqNTGpOFlaIv1ZitNZpmlVsqpqjUuMMfIXHCfd4bTAPsS1o0kZjwLprFWGMEDiRKH/Nc3Co3rMpTddgHrBQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=jNfVm0T5Gk7l1ABB8+svn2NTPLTlQxtyu2XolWNDCfo=;
 b=pgM0ndeHIB9Kt9lN3rbQR8DZkYt93M/B9IwX7LiF3tAePEblliMcd8b545wMWlUKmO43dwzZpUGbwoyOh07+NorrXSTEY60HzNfeTLRd7A6Uuc6iLNj0DYu3ke/RvokX73IPRMO2kv2gcICb37AhjzwgPnFnWlGiaQ5dWoXKVR0=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 VI1P192MB0190.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:c3::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.26; Tue, 1 Mar 2022 13:23:15 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 13:23:15 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  1 Mar 2022 14:23:08 +0100
Message-Id: <20220301132308.343496-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0059.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::12) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 85f5c64d-ba97-4b74-5839-08d9fb86a469
X-MS-TrafficTypeDiagnostic: VI1P192MB0190:EE_
X-Microsoft-Antispam-PRVS: <VI1P192MB01904ACFEBCCA3D621AC3D0C9C029@VI1P192MB0190.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: l7DBBjAIr1kLoG2F38OFMLxVA80iNcFGYhFAkSMoxErGfpKKj9yg4ctt76xg2PVsF1QdmBNjYtkN/+/i2sFwGwJRR5iZP1pbP7wGXbtJwtqWsDb+Dne00+UCMh+TNkuuf+Zz9b0+QlirdHo9rMGquPKbff4HTNcGr4Q0s+NSIgZk2uJpF186j7aSUREfWvSEv9JchcahZywgVKCC+C/+LoOg7V97O84H79zEkwsR6n+Cu9yDD/ooVF1f8KzXwikoKRgzW7JjtazMN68Qpe8qdRiAULnvCFT14Zk95xzTqqbh0EpBgdZVjs1Uue29KCvp56B2qxIoUaQOIGXm/V+PjsRcG9Z6ZcD+ofLIeHh8qqyNqX1C7z75uN/ounN2kZj/zYRQyRh7ynATZ0mGSDi+1kVQhbC0bdgyzFLPVJcdAeV3SQzG/++GdQl5tCaAbu9EGmd0LzR3+RnpPbQ6B5bA4LzLFVi/3cuBFuJjjJYfY8ZtjmuVpmH7oIDJjPHgPZ2WQnguvDpKeVxRIM5hXMom94jy57hPii2+aoaJl0/MBs48KyX7/DL02gwxKwveuL5m9om/Q1/fl8HDwTn8E8CBiq2D64ma/f3SglorrCpwrA+M5FlaiE3dT+uxmvhGV4RstD5ZjZ9ixnZpuRNYxpV/KIYijmSZYnPNRdvi5oYxDG8Eb/RRbQHY6IO7yrkadoAJmxcO8O0HextFYihoSZ0BcmVKXUc30Lcy+izRbZ/bJms=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(44832011)(36756003)(66946007)(8936002)(508600001)(6512007)(26005)(186003)(86362001)(1076003)(2616005)(6506007)(2906002)(66556008)(66476007)(6916009)(316002)(5660300002)(52116002)(6666004)(36916002)(6486002)(38350700002)(8676002)(38100700002)(4326008)(32563001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?hNjtdqhu8epFJwgsP7bMdYJGGH6RBb5Mx67J0Fd2EY1qK6SoQnMGqgLGf+5a?=
 =?us-ascii?Q?IQNItuo1DHREM/qdiYrXjVGPScBQ2DCe47DeTfiGBa/ISS9PGfDzkH+dSyhU?=
 =?us-ascii?Q?3fvax+SKCyN1ls6hLNG9g9/Y3BlfsHzyK58AidbNC3rJbxQAhS+nlJIHotRW?=
 =?us-ascii?Q?ZB/fjAdNB7g86G/gFRhqCENwc2XgR2AMF9GRXPEp6ckavdQVDj8tlkNpluJt?=
 =?us-ascii?Q?mBtxfJSmOOy+8lZLGn1aTG8IZD3hj+YUoQx1p2+XFJkztETOxhRO+I7GbZCF?=
 =?us-ascii?Q?Q3zbQOjxaUMwGZ92c/nuCHogP93t+dt2RVwnxn8Rapjo/8zgpufbk0qgOEro?=
 =?us-ascii?Q?067Sie9LsEKCmJ6u5I+BGVCITTvTKZG/VkHkwuKqh73Wtokg3K6QZyQRYWo3?=
 =?us-ascii?Q?bYtKU25yyQcl9X2QQ3Fv3QvAOtBbOy73qXHunbBafdhCEgbd5tqEGIw7PQvk?=
 =?us-ascii?Q?k/OC7s3vePeEku16ZKtMntpNpo8CXZu9sRNX3c6UYHKMocV8u0E/qY/H89pB?=
 =?us-ascii?Q?AYAeQl8NuP/SVj47Y4o73jdc3/BoZS4u4y3QzGKIiic+ZYunhieO5SiC/FJd?=
 =?us-ascii?Q?UWkXUFsIgIZQQ5nd/Oz3yXyBJkrA0dUJKL6IhsgHvS5pdHCXGVfVjJYgfx1P?=
 =?us-ascii?Q?PR0h4pgWDjCJ6uTR3WdAQFbKG0Lda8F5N/AT2RqnrsFwroopNv47DcfiiZlo?=
 =?us-ascii?Q?eSuilKKjrIUEvILuNhPq7BmUopb6dll37BEZUS55DVsiTPCiweGOutZNV8Cf?=
 =?us-ascii?Q?q3epCifqq4uyTWlSqTerEzEcJlHFzF2hoIJNtlLaWbwW7Zp6HLfu0yvMHjg1?=
 =?us-ascii?Q?ZzO5m3POeHYOYLBHSLPbvZfK9SdMBp+EJlTvTiHcX/rDaPfDtPNClU33cZDY?=
 =?us-ascii?Q?bvJewE+RCIEvN66X/XoveKIne3NSJWpn00uszsXtYZTv3aWAw0VlBgN1SFO0?=
 =?us-ascii?Q?/d50fMNjv/ZxhaX6w5M9mv8cik4zYMaUHmUONUoQ6XUjqc8UJxUQqhd1OFcG?=
 =?us-ascii?Q?qMIyKobuyADeJxPdrF021t943mk/Y2+JV0WOzVYZA/zudZwl0GqmktMR30WW?=
 =?us-ascii?Q?vIATZUFhI9BnPGZd3SScKADn67Ehwh4+n4Mqy+9pN52BkQq/kY+vpH3FFgMm?=
 =?us-ascii?Q?jHsPxW0mnRs2aWod8nXqGXDgYQh2uf8AYrLbikCfob+gX2cfgHhE1WwbMUA6?=
 =?us-ascii?Q?d0ukCxqI6u/qsFKFQX8O0scIw2Qz5Xln+i9Gt5gB5pTh63eJAnwm3dG3Yw8D?=
 =?us-ascii?Q?dKxuQt/4Ac02kdGzJx8pnih85gUet27LGaYdsvh3jKufbPYbTxEsPQglMlI2?=
 =?us-ascii?Q?qpdSm2jswYLW1NRYoZTKVEcfTqSm9cuCGLKYZozSRQ4uYOFd1tQ6GxBIPcSb?=
 =?us-ascii?Q?oOwcZ6bK6LDV5+srgxGIe26nw0MmKtmrIA3QHWA3I3Ss+PSHIOR5gNY2gSmc?=
 =?us-ascii?Q?K3cWadz/lOZfbd9X4Djgu/AsVOM64do+FTGreb2/kZHBglj4q0fUdszA5G7n?=
 =?us-ascii?Q?DcLygac8po1PlDRu0pzSv+W3rpwjus6LoZOYvVAFTwr2eRsOXYzQhLan0ruL?=
 =?us-ascii?Q?lTsmZQZE9IKpOm9+3OQDdcUwokLkD6YWR00pmZ07YrKOKL2EyTzdFIRP/w8g?=
 =?us-ascii?Q?KLoGHv6yfSpC7fcMeSRXY0M=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 85f5c64d-ba97-4b74-5839-08d9fb86a469
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 13:23:15.4067 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: FfNuyytwmi/tJNmNmAbo9T3IkftI6k3hNwbK50OwAtH8mvrUbwN9tMkgeO38y8C7VPUjTsnIHJ7p3xYSx3JvhQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VI1P192MB0190
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
X-OrganizationHeadersPreserved: VI1P192MB0190.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220301_052319_338085_ADB85553 
X-CRM114-Status: UNSURE (   9.78  )
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
Subject: [PATCH v2] ARM: arch: dts: qspi: Add QSPI config to the NXP
 IMX8MN-EVK board
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

Changes v2:
  - Removed the "default" pinctrl names from iomuxc
  - Renamed the flexspi device name

 arch/arm/configs/imx_v8_defconfig |  1 +
 arch/arm/dts/imx8mn-evk.dts       | 30 ++++++++++++++++++++++++++++++
 2 files changed, 31 insertions(+)

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
index 9fe24b3184f1..b8e7e1acf539 100644
--- a/arch/arm/dts/imx8mn-evk.dts
+++ b/arch/arm/dts/imx8mn-evk.dts
@@ -60,3 +60,33 @@
 &ocotp {
 	barebox,provide-mac-address = <&fec1 0x640>;
 };
+
+&iomuxc {
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
+	system_flash: flash@0 {
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

