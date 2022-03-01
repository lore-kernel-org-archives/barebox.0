Delivery-date: Tue, 01 Mar 2022 14:24:52 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nP2Um-00EPXb-LU
	for lore@lore.pengutronix.de; Tue, 01 Mar 2022 14:24:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nP2Uj-0007zX-0T
	for lore@pengutronix.de; Tue, 01 Mar 2022 14:24:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=OBWZlNDHytmA7u+044zI16HpacDtsjXDKCuepcyQpAA=; b=kT8G/nTTSzLVtn
	U6E5XKgl7eQVY3zaynPjx8IM6f7E5aMzFtEw43luDSwu9OjW7x6kkGn7fF82TK0cn7c8k+C8P0Kz0
	V+EqChNKWd6D2MV0uf//dfpzNy54JEVCPSdT/kRxbuuk/yV7E2LzEsWf52z6vrs14BrxPeYcN9ZsO
	L9D3AwRcU1xCod7y6d5aid4vtCn0KaKpb4K80w0R2C13PM5JsgCk+vhZhumCTiAlVqVJxYrXOjzR2
	Xcv1UQTXkegOJtRGyDAhi3Y1o3atzI5ePuiqfIr47+/ZgQ3XWc0+/BZH12mKUd0mWSKRw4aNqFc+1
	4GJMbj9RgistzIXhZu+g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nP2Sx-00Gszn-Oj; Tue, 01 Mar 2022 13:22:59 +0000
Received: from mail-vi1eur04on0610.outbound.protection.outlook.com
 ([2a01:111:f400:fe0e::610]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nP2Sm-00GsxY-Pa
 for barebox@lists.infradead.org; Tue, 01 Mar 2022 13:22:53 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PhGuTTNSjxG5kblKcqwr4i6srFIQWpemJWJctTced74gNMdDXloawTXdMzdKtwVz+xM+OjBmoJb44a0I+A5V39QSl63RGnpGWlWbCT6AXxdT5w4LeLM6Pax3p+yCzkVbJKxCDJVgxKa3GvZy4WLjeJQB6dy50WaqrENt2aNTuRGSGyjzTLsKqq1RMAWEisRzoXtsHQf+bf3FW2wLEzdnrIZf3e7UQ3JS0s1MjUUb8vz4Tz+9TJIjqlk3HRM4C+uwwH9CbiyfeGz4D9xcFYzRGOHHYFLO8hTVzW/fAYGielgkDrkT99QWEUQDEpXPq/NPT1N1uoFuParERHGj6jaJkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TPH5uQzECFMN2ND/Nz/DG9BQ0Kj4S7wxyLYLalDwkJI=;
 b=BrxeoMJ0b/tMqwwAY4AFTJr15Okw4+Hg62u0deT5/GT2WdE9MxIckHViLfJzEBi/kE/dux/CFgh1A10FUyWef7haES5KgJDSP5YhjvfMSN2AN4DDFvY8ZigYHRiqy/aTbSLmieUMh8jzIftsdgJeyjd1NEAKeFXZV3doJFTPpXXxzNrlZMBQ6+BESCwAd9hqWGZm22ZxnprgRZBXgOoXKi0dVHDWkH8CKRaRzqYfOvWJh0xnwlvrpz/I+p8r4+Z+Vsp178wYb4tATTR+/beo9g30vmHL8bVRIKubAwlrA39mnSG3mj1QG79Mr1eIyV7xop0MA4bSza6i4NUYnlpj4g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TPH5uQzECFMN2ND/Nz/DG9BQ0Kj4S7wxyLYLalDwkJI=;
 b=df9wZXyUj4sM9ktmb0uAXa/n3p1j2q3G0uYSnRNVgO3JR2/jyFGFoUAiYxXcSEIPS1VC3Hp2Wsd28LZySm45KSj94TDXuBmK72uXxJDU0XsOK7Hxovp9NnUjGZNEpkzCoRj/SZsRTkWo8xURoBG6aetDCjwIS9eTKoX/GiO63OU=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 VI1P192MB0190.EURP192.PROD.OUTLOOK.COM (2603:10a6:800:c3::18) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.26; Tue, 1 Mar 2022 13:22:42 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.027; Tue, 1 Mar 2022
 13:22:41 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Tue,  1 Mar 2022 14:22:32 +0100
Message-Id: <20220301132232.343230-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0035.SWEP280.PROD.OUTLOOK.COM (2603:10a6:150:9::9)
 To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 938552e2-867a-4df7-c600-08d9fb869006
X-MS-TrafficTypeDiagnostic: VI1P192MB0190:EE_
X-Microsoft-Antispam-PRVS: <VI1P192MB0190BF138669FF2C0BBE4A939C029@VI1P192MB0190.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: UK3bmWL37nuGHNkakAn8IgDLUUAiVKJ9oEP04YwnXz9KBQniotjkE9t5pjyZI7yapgODXLapW/+6kLUnuv5K/ph4TeNfRNAUrWIYbqq5uQn34TGJxz7mmgNKPY4axnyI42l0OrNqzP1JX9+kKankQxYvN73Eh4xvp1QiKZ0KZfZEQnCU49LC3FafJJCkZbbTlV1+oJm7RcLToSo+h35Yjpp6Mjg+lwnolCF/OW3SWvx5wxr8y+N50cd4I/xSrMRIAC5SyuMNuUjrJlMrBsH7MGLIMicl6ss0k9Tx6sbD16BJYGXh2kJc+14B1ZtYjiJqE/UDIUrr6IaY0CxTsV8KkION59XSGMxCdQny0RTMZ/nt4FS7Q1j5HGF+iR/VFaLv9nhf0K0pc9R2kTSnWibpkqGjcsOpscuPP92UjgLbsTceuwXaTxCFInMaJFX06V/RhfQ1CEQGF7MGi1llGh1uY0+I0i5OK37kcZTKDc07HINJRrwzRvCchgtiroF9Do6KIkZO1P1wnXOoSHwgIyg4AdAIgsShrkrPZlORwsOIbjqqF0gymqSDqcOiF0mvGbY0FPisnrh2FbKiXY+N1Xb9bpklHr8WsyQi6GNd4PEPMZwKPhz7PtWlGcVlTD5mwf94ano02yaymBKJ38i10zUF82jaUvmhx5iREV5/A35SueVdOCFH9QFVGYBa6USulYjEMBvNf903QuklrwjZYu+K7A==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(44832011)(36756003)(66946007)(8936002)(30864003)(508600001)(6512007)(26005)(186003)(86362001)(1076003)(2616005)(6506007)(2906002)(66556008)(66476007)(6916009)(316002)(5660300002)(52116002)(6666004)(36916002)(6486002)(38350700002)(8676002)(38100700002)(4326008)(83380400001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?aJoCmy2ziLyEWtQElFatLHRvm7c0EZf6Gebf5odvnDzvGOopFR7VNWNp4VBV?=
 =?us-ascii?Q?PNBt/NO8Naez23m3cCUSvCEcDM+VUttZuFgqLJh3fZOA2hXJp0MqhOsFe7ue?=
 =?us-ascii?Q?kjndJHh+9SXLHZHkTeQfA4VYjulG/9x27AN4NtIrmpOeswiC0IUhzaQvfhbY?=
 =?us-ascii?Q?M7Laxjufxok5VLwN3FWK1T4Djf9opGve4MtbTCGTTu4StUHcdmw+48+oLS80?=
 =?us-ascii?Q?zPK/ChVlwlTE6N2qSpFcEN0OBMN4w1BEz/qN4/vWHo7J0ZDMu5eXQXjVfhuX?=
 =?us-ascii?Q?/Gomis16Jvv5RR3TNFzPmpbrNxxIAlqKlJpbgXnR7h+pkcb3h67ZT8SHQVqr?=
 =?us-ascii?Q?9+Vuph4bbEkxO8vVhLW0k3+jRBDehXXsE88FlRizcDMuOhrNp+IShAwfWGiL?=
 =?us-ascii?Q?xTzEbO1kzMB0sMNubDRdpd0Jw+pgeiDsg8xxHXsIFKisXQP00sr32aaWvqS8?=
 =?us-ascii?Q?SRJ6BHTD66Sc0D8TAdqFnPaYwqy0+QZ2uDBKuzlZ72s2uGLlThouYdNgZYow?=
 =?us-ascii?Q?XmLjgkayazdz1IZ86/nlGwH6YgZ88FGR8kj709elmzOnrd/Uss22/itPnLRc?=
 =?us-ascii?Q?en8uI40ZPfzUgj/gviEZ1SQU17ACWQxn1dRLI+HNVg4r9/rdzI8+/CVxmXc+?=
 =?us-ascii?Q?+6UDQcEka9Uwddw6wA3Aw3VYVfxAoiMIh967PLCMFQ8BS0Q+HAoI7UGvjRG7?=
 =?us-ascii?Q?4bPAzVyrTZ4MudDkqKIQyK7JSrAHX8xAKQ/vRmhiKkrayMZ0eqQr80775YTu?=
 =?us-ascii?Q?iovNZCOeSUhtko3Gng0MM8YQPZnmefOaMNU3He6Azv0zo349j1OTXbeBPOR2?=
 =?us-ascii?Q?JU7JE6A3Y0/8jW0tB7BETnJE1jyY8UjtfE+bAHhwuwywv7t59DKx38ygU+k7?=
 =?us-ascii?Q?f3hsP1dtZUnmyOjbwfjlcSU9Ncljh/SRk3ELWNvGrP7smUHwk8EcD1/rNDNl?=
 =?us-ascii?Q?fcmU5f+ZR8sIGNC57XmIbsj0a8YlX50hi9Tvykj1LKFFngrmx3r834nMBbko?=
 =?us-ascii?Q?zmyXhUsfHZzyeg4wUlh0djmnoyTChoiCK/U5Kq8MK2AOwb3kdEV4EjRCyIn9?=
 =?us-ascii?Q?WQtVw91sHjab+Xy4LNUKJQnLLmPivCtWSmVcn7v/5Mu4Nt/hrjkIESnIZ5uB?=
 =?us-ascii?Q?LeAYnY+EKF09wwjRa6tAgTLsBptisnJInVZ3w+atfu/V6ujVFx/4Lr3tmlqA?=
 =?us-ascii?Q?rC7JOjCFpXD/ZzpO9sEYaos0cT22MIEc8+uzxI12Q2KdfGuTJk9mfpIxonC6?=
 =?us-ascii?Q?d3V3tqqG3MTJfZpikfw0x8Tw6hvdZQ5e+yM62HPARzNQoWF4AXRWD4b6kf7w?=
 =?us-ascii?Q?8JC4HPt/FSmu3lk3IDlHIB7EcWNgfA/iqdlrLEHLI1GiiLgwcLTTIlomqI4B?=
 =?us-ascii?Q?dbxo3PStoBp/nQKBmaigU6+RAp6TOUK7mt42wUpYRXrFNdBXUkthMRINDX95?=
 =?us-ascii?Q?mC5Ke0jcbKpDxuSMubPOpl1klticaUfgzv8eVbX20DaLkdyeF1VicX4sC9mC?=
 =?us-ascii?Q?gygJyn621hiKnvyaqRCMbmeFdxZvxEjhLhu2ehKIReadH5Y4aR8iwrfyB3If?=
 =?us-ascii?Q?OSwSSA4ZXC+qsg1ZM+zyYPxtNNEmUvUFxvPKv02wDwfhYFgdc4ccfZ8mWdhX?=
 =?us-ascii?Q?69Vl1f3FEQ7Qnz22qp5vXws=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 938552e2-867a-4df7-c600-08d9fb869006
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Mar 2022 13:22:41.7843 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3tlg81pf/PUHmaDkUDtTdjf+jV8RqtRLdqrF6JXz3vp+SVMoHJ3N855eEndj5vFSd/iRMEpnXOz9SYm7uk+nMQ==
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
X-CRM114-CacheID: sfid-20220301_052249_266774_63FD70F4 
X-CRM114-Status: GOOD (  20.39  )
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
Subject: [PATCH v2] ARM: imx: spi: Add NXP IMX8 Flex SPI/QSPI support
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This driver is ported from the linux kernel and adapted to barebox
for the NXP IMX8 platforms.

This commit add support for the NXP IMX8 Flex SPI controller in master
mode. Up to four slave devices can be connected on two buses with two
chip selects each. This controller does not support generic SPI messages
and only supports the high-level SPI memory interface.

Tested on the NXP IMX8MN-EVK evaluation board as well as on a
IMX8MN custom board supporting a Micron N25Q00 QSPI flash.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---

Changes v2:
  - Removed the /dts/Bindings/spi/spi-nxp-fspi.yaml part
  - Changed /drivers/spi/Kconfig SPI_NXP_FLEXSPI config
    HAS_IOMEM doesn't exist in barebox. Replaced it with 
    COMPILE_TEST instead.

 drivers/spi/Kconfig        |   10 +
 drivers/spi/Makefile       |    1 +
 drivers/spi/spi-nxp-fspi.c | 1061 ++++++++++++++++++++++++++++++++++++
 3 files changed, 1072 insertions(+)
 create mode 100644 drivers/spi/spi-nxp-fspi.c

diff --git a/drivers/spi/Kconfig b/drivers/spi/Kconfig
index b0137d21e073..7df7561718c2 100644
--- a/drivers/spi/Kconfig
+++ b/drivers/spi/Kconfig
@@ -114,6 +114,16 @@ config DRIVER_SPI_STM32
 	  Enable the STM32 Serial Peripheral Interface (SPI) driver for STM32MP
 	  SoCs.
 
+config SPI_NXP_FLEXSPI
+	tristate "NXP Flex SPI controller"
+	depends on ARCH_IMX8M || COMPILE_TEST
+	help
+	  This enables support for the Flex SPI controller in master mode.
+	  Up to four slave devices can be connected on two buses with two
+	  chipselects each.
+	  This controller does not support generic SPI messages and only
+	  supports the high-level SPI memory interface.
+
 endif
 
 endmenu
diff --git a/drivers/spi/Makefile b/drivers/spi/Makefile
index 39be9d41e450..64c8e2645a94 100644
--- a/drivers/spi/Makefile
+++ b/drivers/spi/Makefile
@@ -15,4 +15,5 @@ obj-$(CONFIG_SPI_ATMEL_QUADSPI) += atmel-quadspi.o
 obj-$(CONFIG_DRIVER_SPI_OMAP3) += omap3_spi.o
 obj-$(CONFIG_DRIVER_SPI_DSPI) += dspi_spi.o
 obj-$(CONFIG_SPI_ZYNQ_QSPI) += zynq_qspi.o
+obj-$(CONFIG_SPI_NXP_FLEXSPI) += spi-nxp-fspi.o
 obj-$(CONFIG_DRIVER_SPI_STM32) += stm32_spi.o
diff --git a/drivers/spi/spi-nxp-fspi.c b/drivers/spi/spi-nxp-fspi.c
new file mode 100644
index 000000000000..673b91d6dc75
--- /dev/null
+++ b/drivers/spi/spi-nxp-fspi.c
@@ -0,0 +1,1061 @@
+// SPDX-License-Identifier: GPL-2.0+
+
+/*
+ * NXP FlexSPI(FSPI) controller driver.
+ *
+ * Copyright 2019-2020 NXP
+ * Copyright 2020 Puresoftware Ltd.
+ * Copyright 2021 Westermo Network Technologies AB
+ *
+ * FlexSPI is a flexsible SPI host controller which supports two SPI
+ * channels and up to 4 external devices. Each channel supports
+ * Single/Dual/Quad/Octal mode data transfer (1/2/4/8 bidirectional
+ * data lines).
+ *
+ * FlexSPI controller is driven by the LUT(Look-up Table) registers
+ * LUT registers are a look-up-table for sequences of instructions.
+ * A valid sequence consists of four LUT registers.
+ * Maximum 32 LUT sequences can be programmed simultaneously.
+ *
+ * LUTs are being created at run-time based on the commands passed
+ * from the spi-mem framework, thus using single LUT index.
+ *
+ * Software triggered Flash read/write access by IP Bus.
+ *
+ * Memory mapped read access by AHB Bus.
+ *
+ * Based on SPI MEM interface and spi-fsl-qspi.c driver.
+ *
+ * Author:
+ *     Yogesh Narayan Gaur <yogeshnarayan.gaur@nxp.com>
+ *     Boris Brezillon <bbrezillon@kernel.org>
+ *     Frieder Schrempf <frieder.schrempf@kontron.de>
+ *     Joacim Zetterling <joacim.zetterling@westermo.com>
+ */
+
+#include <common.h>
+#include <driver.h>
+#include <errno.h>
+#include <init.h>
+#include <io.h>
+#include <regmap.h>
+#include <linux/types.h>
+#include <linux/bitops.h>
+#include <linux/clk.h>
+#include <linux/err.h>
+#include <linux/iopoll.h>
+#include <linux/mutex.h>
+#include <linux/sizes.h>
+#include <of.h>
+#include <of_device.h>
+#include <stdbool.h>
+
+#include <spi/spi.h>
+#include <linux/spi/spi-mem.h>
+
+/*
+ * The driver only uses one single LUT entry, that is updated on
+ * each call of exec_op(). Index 0 is preset at boot with a basic
+ * read operation, so let's use the last entry (31).
+ */
+#define	SEQID_LUT			31
+
+/* Registers used by the driver */
+#define FSPI_MCR0			0x00
+#define FSPI_MCR0_AHB_TIMEOUT(x)	((x) << 24)
+#define FSPI_MCR0_IP_TIMEOUT(x)		((x) << 16)
+#define FSPI_MCR0_LEARN_EN		BIT(15)
+#define FSPI_MCR0_SCRFRUN_EN		BIT(14)
+#define FSPI_MCR0_OCTCOMB_EN		BIT(13)
+#define FSPI_MCR0_DOZE_EN		BIT(12)
+#define FSPI_MCR0_HSEN			BIT(11)
+#define FSPI_MCR0_SERCLKDIV		BIT(8)
+#define FSPI_MCR0_ATDF_EN		BIT(7)
+#define FSPI_MCR0_ARDF_EN		BIT(6)
+#define FSPI_MCR0_RXCLKSRC(x)		((x) << 4)
+#define FSPI_MCR0_END_CFG(x)		((x) << 2)
+#define FSPI_MCR0_MDIS			BIT(1)
+#define FSPI_MCR0_SWRST			BIT(0)
+
+#define FSPI_MCR1			0x04
+#define FSPI_MCR1_SEQ_TIMEOUT(x)	((x) << 16)
+#define FSPI_MCR1_AHB_TIMEOUT(x)	(x)
+
+#define FSPI_MCR2			0x08
+#define FSPI_MCR2_IDLE_WAIT(x)		((x) << 24)
+#define FSPI_MCR2_SAMEDEVICEEN		BIT(15)
+#define FSPI_MCR2_CLRLRPHS		BIT(14)
+#define FSPI_MCR2_ABRDATSZ		BIT(8)
+#define FSPI_MCR2_ABRLEARN		BIT(7)
+#define FSPI_MCR2_ABR_READ		BIT(6)
+#define FSPI_MCR2_ABRWRITE		BIT(5)
+#define FSPI_MCR2_ABRDUMMY		BIT(4)
+#define FSPI_MCR2_ABR_MODE		BIT(3)
+#define FSPI_MCR2_ABRCADDR		BIT(2)
+#define FSPI_MCR2_ABRRADDR		BIT(1)
+#define FSPI_MCR2_ABR_CMD		BIT(0)
+
+#define FSPI_AHBCR			0x0c
+#define FSPI_AHBCR_RDADDROPT		BIT(6)
+#define FSPI_AHBCR_PREF_EN		BIT(5)
+#define FSPI_AHBCR_BUFF_EN		BIT(4)
+#define FSPI_AHBCR_CACH_EN		BIT(3)
+#define FSPI_AHBCR_CLRTXBUF		BIT(2)
+#define FSPI_AHBCR_CLRRXBUF		BIT(1)
+#define FSPI_AHBCR_PAR_EN		BIT(0)
+
+#define FSPI_INTEN			0x10
+#define FSPI_INTEN_SCLKSBWR		BIT(9)
+#define FSPI_INTEN_SCLKSBRD		BIT(8)
+#define FSPI_INTEN_DATALRNFL		BIT(7)
+#define FSPI_INTEN_IPTXWE		BIT(6)
+#define FSPI_INTEN_IPRXWA		BIT(5)
+#define FSPI_INTEN_AHBCMDERR		BIT(4)
+#define FSPI_INTEN_IPCMDERR		BIT(3)
+#define FSPI_INTEN_AHBCMDGE		BIT(2)
+#define FSPI_INTEN_IPCMDGE		BIT(1)
+#define FSPI_INTEN_IPCMDDONE		BIT(0)
+
+#define FSPI_INTR			0x14
+#define FSPI_INTR_SCLKSBWR		BIT(9)
+#define FSPI_INTR_SCLKSBRD		BIT(8)
+#define FSPI_INTR_DATALRNFL		BIT(7)
+#define FSPI_INTR_IPTXWE		BIT(6)
+#define FSPI_INTR_IPRXWA		BIT(5)
+#define FSPI_INTR_AHBCMDERR		BIT(4)
+#define FSPI_INTR_IPCMDERR		BIT(3)
+#define FSPI_INTR_AHBCMDGE		BIT(2)
+#define FSPI_INTR_IPCMDGE		BIT(1)
+#define FSPI_INTR_IPCMDDONE		BIT(0)
+
+#define FSPI_LUTKEY			0x18
+#define FSPI_LUTKEY_VALUE		0x5AF05AF0
+
+#define FSPI_LCKCR			0x1C
+
+#define FSPI_LCKER_LOCK			0x1
+#define FSPI_LCKER_UNLOCK		0x2
+
+#define FSPI_BUFXCR_INVALID_MSTRID	0xE
+#define FSPI_AHBRX_BUF0CR0		0x20
+#define FSPI_AHBRX_BUF1CR0		0x24
+#define FSPI_AHBRX_BUF2CR0		0x28
+#define FSPI_AHBRX_BUF3CR0		0x2C
+#define FSPI_AHBRX_BUF4CR0		0x30
+#define FSPI_AHBRX_BUF5CR0		0x34
+#define FSPI_AHBRX_BUF6CR0		0x38
+#define FSPI_AHBRX_BUF7CR0		0x3C
+#define FSPI_AHBRXBUF0CR7_PREF		BIT(31)
+
+#define FSPI_AHBRX_BUF0CR1		0x40
+#define FSPI_AHBRX_BUF1CR1		0x44
+#define FSPI_AHBRX_BUF2CR1		0x48
+#define FSPI_AHBRX_BUF3CR1		0x4C
+#define FSPI_AHBRX_BUF4CR1		0x50
+#define FSPI_AHBRX_BUF5CR1		0x54
+#define FSPI_AHBRX_BUF6CR1		0x58
+#define FSPI_AHBRX_BUF7CR1		0x5C
+
+#define FSPI_FLSHA1CR0			0x60
+#define FSPI_FLSHA2CR0			0x64
+#define FSPI_FLSHB1CR0			0x68
+#define FSPI_FLSHB2CR0			0x6C
+#define FSPI_FLSHXCR0_SZ_KB		10
+#define FSPI_FLSHXCR0_SZ(x)		((x) >> FSPI_FLSHXCR0_SZ_KB)
+
+#define FSPI_FLSHA1CR1			0x70
+#define FSPI_FLSHA2CR1			0x74
+#define FSPI_FLSHB1CR1			0x78
+#define FSPI_FLSHB2CR1			0x7C
+#define FSPI_FLSHXCR1_CSINTR(x)		((x) << 16)
+#define FSPI_FLSHXCR1_CAS(x)		((x) << 11)
+#define FSPI_FLSHXCR1_WA		BIT(10)
+#define FSPI_FLSHXCR1_TCSH(x)		((x) << 5)
+#define FSPI_FLSHXCR1_TCSS(x)		(x)
+
+#define FSPI_FLSHA1CR2			0x80
+#define FSPI_FLSHA2CR2			0x84
+#define FSPI_FLSHB1CR2			0x88
+#define FSPI_FLSHB2CR2			0x8C
+#define FSPI_FLSHXCR2_CLRINSP		BIT(24)
+#define FSPI_FLSHXCR2_AWRWAIT		BIT(16)
+#define FSPI_FLSHXCR2_AWRSEQN_SHIFT	13
+#define FSPI_FLSHXCR2_AWRSEQI_SHIFT	8
+#define FSPI_FLSHXCR2_ARDSEQN_SHIFT	5
+#define FSPI_FLSHXCR2_ARDSEQI_SHIFT	0
+
+#define FSPI_IPCR0			0xA0
+
+#define FSPI_IPCR1			0xA4
+#define FSPI_IPCR1_IPAREN		BIT(31)
+#define FSPI_IPCR1_SEQNUM_SHIFT		24
+#define FSPI_IPCR1_SEQID_SHIFT		16
+#define FSPI_IPCR1_IDATSZ(x)		(x)
+
+#define FSPI_IPCMD			0xB0
+#define FSPI_IPCMD_TRG			BIT(0)
+
+#define FSPI_DLPR			0xB4
+
+#define FSPI_IPRXFCR			0xB8
+#define FSPI_IPRXFCR_CLR		BIT(0)
+#define FSPI_IPRXFCR_DMA_EN		BIT(1)
+#define FSPI_IPRXFCR_WMRK(x)		((x) << 2)
+
+#define FSPI_IPTXFCR			0xBC
+#define FSPI_IPTXFCR_CLR		BIT(0)
+#define FSPI_IPTXFCR_DMA_EN		BIT(1)
+#define FSPI_IPTXFCR_WMRK(x)		((x) << 2)
+
+#define FSPI_DLLACR			0xC0
+#define FSPI_DLLACR_OVRDEN		BIT(8)
+
+#define FSPI_DLLBCR			0xC4
+#define FSPI_DLLBCR_OVRDEN		BIT(8)
+
+#define FSPI_STS0			0xE0
+#define FSPI_STS0_DLPHB(x)		((x) << 8)
+#define FSPI_STS0_DLPHA(x)		((x) << 4)
+#define FSPI_STS0_CMD_SRC(x)		((x) << 2)
+#define FSPI_STS0_ARB_IDLE		BIT(1)
+#define FSPI_STS0_SEQ_IDLE		BIT(0)
+
+#define FSPI_STS1			0xE4
+#define FSPI_STS1_IP_ERRCD(x)		((x) << 24)
+#define FSPI_STS1_IP_ERRID(x)		((x) << 16)
+#define FSPI_STS1_AHB_ERRCD(x)		((x) << 8)
+#define FSPI_STS1_AHB_ERRID(x)		(x)
+
+#define FSPI_AHBSPNST			0xEC
+#define FSPI_AHBSPNST_DATLFT(x)		((x) << 16)
+#define FSPI_AHBSPNST_BUFID(x)		((x) << 1)
+#define FSPI_AHBSPNST_ACTIVE		BIT(0)
+
+#define FSPI_IPRXFSTS			0xF0
+#define FSPI_IPRXFSTS_RDCNTR(x)		((x) << 16)
+#define FSPI_IPRXFSTS_FILL(x)		(x)
+
+#define FSPI_IPTXFSTS			0xF4
+#define FSPI_IPTXFSTS_WRCNTR(x)		((x) << 16)
+#define FSPI_IPTXFSTS_FILL(x)		(x)
+
+#define FSPI_RFDR			0x100
+#define FSPI_TFDR			0x180
+
+#define FSPI_LUT_BASE			0x200
+#define FSPI_LUT_OFFSET			(SEQID_LUT * 4 * 4)
+#define FSPI_LUT_REG(idx) \
+	(FSPI_LUT_BASE + FSPI_LUT_OFFSET + (idx) * 4)
+
+/* register map end */
+
+/* Instruction set for the LUT register. */
+#define LUT_STOP			0x00
+#define LUT_CMD				0x01
+#define LUT_ADDR			0x02
+#define LUT_CADDR_SDR			0x03
+#define LUT_MODE			0x04
+#define LUT_MODE2			0x05
+#define LUT_MODE4			0x06
+#define LUT_MODE8			0x07
+#define LUT_NXP_WRITE			0x08
+#define LUT_NXP_READ			0x09
+#define LUT_LEARN_SDR			0x0A
+#define LUT_DATSZ_SDR			0x0B
+#define LUT_DUMMY			0x0C
+#define LUT_DUMMY_RWDS_SDR		0x0D
+#define LUT_JMP_ON_CS			0x1F
+#define LUT_CMD_DDR			0x21
+#define LUT_ADDR_DDR			0x22
+#define LUT_CADDR_DDR			0x23
+#define LUT_MODE_DDR			0x24
+#define LUT_MODE2_DDR			0x25
+#define LUT_MODE4_DDR			0x26
+#define LUT_MODE8_DDR			0x27
+#define LUT_WRITE_DDR			0x28
+#define LUT_READ_DDR			0x29
+#define LUT_LEARN_DDR			0x2A
+#define LUT_DATSZ_DDR			0x2B
+#define LUT_DUMMY_DDR			0x2C
+#define LUT_DUMMY_RWDS_DDR		0x2D
+
+/*
+ * Calculate number of required PAD bits for LUT register.
+ *
+ * The pad stands for the number of IO lines [0:7].
+ * For example, the octal read needs eight IO lines,
+ * so you should use LUT_PAD(8). This macro
+ * returns 3 i.e. use eight (2^3) IP lines for read.
+ */
+#define LUT_PAD(x) (fls(x) - 1)
+
+/*
+ * Macro for constructing the LUT entries with the following
+ * register layout:
+ *
+ *  ---------------------------------------------------
+ *  | INSTR1 | PAD1 | OPRND1 | INSTR0 | PAD0 | OPRND0 |
+ *  ---------------------------------------------------
+ */
+#define PAD_SHIFT		8
+#define INSTR_SHIFT		10
+#define OPRND_SHIFT		16
+
+/* Macros for constructing the LUT register. */
+#define LUT_DEF(idx, ins, pad, opr)			  \
+	((((ins) << INSTR_SHIFT) | ((pad) << PAD_SHIFT) | \
+	(opr)) << (((idx) % 2) * OPRND_SHIFT))
+
+#define POLL_TOUT		5000
+#define NXP_FSPI_MAX_CHIPSELECT		4
+#define NXP_FSPI_MIN_IOMAP	SZ_4M
+
+#define DCFG_RCWSR1		0x100
+
+/* Access flash memory using IP bus only */
+#define FSPI_QUIRK_USE_IP_ONLY	BIT(0)
+
+struct nxp_fspi_devtype_data {
+	unsigned int rxfifo;
+	unsigned int txfifo;
+	unsigned int ahb_buf_size;
+	unsigned int quirks;
+	bool little_endian;
+};
+
+static struct nxp_fspi_devtype_data imx8mm_data = {
+	.rxfifo = SZ_512,       /* (64  * 64 bits)  */
+	.txfifo = SZ_1K,        /* (128 * 64 bits)  */
+	.ahb_buf_size = SZ_2K,  /* (256 * 64 bits)  */
+	.quirks = 0,
+	.little_endian = true,  /* little-endian    */
+};
+
+static struct nxp_fspi_devtype_data imx8qxp_data = {
+	.rxfifo = SZ_512,       /* (64  * 64 bits)  */
+	.txfifo = SZ_1K,        /* (128 * 64 bits)  */
+	.ahb_buf_size = SZ_2K,  /* (256 * 64 bits)  */
+	.quirks = 0,
+	.little_endian = true,  /* little-endian    */
+};
+
+static struct nxp_fspi_devtype_data imx8dxl_data = {
+	.rxfifo = SZ_512,       /* (64  * 64 bits)  */
+	.txfifo = SZ_1K,        /* (128 * 64 bits)  */
+	.ahb_buf_size = SZ_2K,  /* (256 * 64 bits)  */
+	.quirks = FSPI_QUIRK_USE_IP_ONLY,
+	.little_endian = true,  /* little-endian    */
+};
+
+struct nxp_fspi {
+	void __iomem *iobase;
+	void __iomem *ahb_addr;
+	u32 memmap_phy;
+	u32 memmap_phy_size;
+	u32 memmap_start;
+	u32 memmap_len;
+	struct clk *clk, *clk_en;
+	struct device_d *dev;
+	struct spi_controller ctlr;
+	const struct nxp_fspi_devtype_data *devtype_data;
+	struct mutex lock;
+	int selected;
+};
+
+static inline int needs_ip_only(struct nxp_fspi *f)
+{
+	return f->devtype_data->quirks & FSPI_QUIRK_USE_IP_ONLY;
+}
+
+/*
+ * R/W functions for big- or little-endian registers:
+ * The FSPI controller's endianness is independent of
+ * the CPU core's endianness. So far, although the CPU
+ * core is little-endian the FSPI controller can use
+ * big-endian or little-endian.
+ */
+static void fspi_writel(struct nxp_fspi *f, u32 val, void __iomem *addr)
+{
+	if (f->devtype_data->little_endian)
+		iowrite32(val, addr);
+	else
+		iowrite32be(val, addr);
+}
+
+static u32 fspi_readl(struct nxp_fspi *f, void __iomem *addr)
+{
+	if (f->devtype_data->little_endian)
+		return ioread32(addr);
+	else
+		return ioread32be(addr);
+}
+
+static int nxp_fspi_check_buswidth(struct nxp_fspi *f, u8 width)
+{
+	switch (width) {
+	case 1:
+	case 2:
+	case 4:
+	case 8:
+		return 0;
+	}
+
+	return -ENOTSUPP;
+}
+
+static bool nxp_fspi_supports_op(struct spi_mem *mem,
+				 const struct spi_mem_op *op)
+{
+	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
+	int ret;
+
+	ret = nxp_fspi_check_buswidth(f, op->cmd.buswidth);
+
+	if (op->addr.nbytes)
+		ret |= nxp_fspi_check_buswidth(f, op->addr.buswidth);
+
+	if (op->dummy.nbytes)
+		ret |= nxp_fspi_check_buswidth(f, op->dummy.buswidth);
+
+	if (op->data.nbytes)
+		ret |= nxp_fspi_check_buswidth(f, op->data.buswidth);
+
+	if (ret)
+		return false;
+
+	/*
+	 * The number of address bytes should be equal to or less than 4 bytes.
+	 */
+	if (op->addr.nbytes > 4)
+		return false;
+
+	/*
+	 * If requested address value is greater than controller assigned
+	 * memory mapped space, return error as it didn't fit in the range
+	 * of assigned address space.
+	 */
+	if (op->addr.val >= f->memmap_phy_size)
+		return false;
+
+	/* Max 64 dummy clock cycles supported */
+	if (op->dummy.buswidth &&
+	    (op->dummy.nbytes * 8 / op->dummy.buswidth > 64))
+		return false;
+
+	/* Max data length, check controller limits and alignment */
+	if (op->data.dir == SPI_MEM_DATA_IN &&
+	    (op->data.nbytes > f->devtype_data->ahb_buf_size ||
+	     (op->data.nbytes > f->devtype_data->rxfifo - 4 &&
+	      !IS_ALIGNED(op->data.nbytes, 8))))
+		return false;
+
+	if (op->data.dir == SPI_MEM_DATA_OUT &&
+	    op->data.nbytes > f->devtype_data->txfifo)
+		return false;
+
+	return true;
+}
+
+/* Instead of busy looping invoke readl_poll_timeout functionality. */
+static int fspi_readl_poll_tout(struct nxp_fspi *f, void __iomem *base,
+				u32 mask, u32 delay_us,
+				u32 timeout_us, bool c)
+{
+	u32 reg = 0;
+
+	if (!f->devtype_data->little_endian)
+		mask = (u32)cpu_to_be32(mask);
+
+	if (c)
+		return readl_poll_timeout(base, reg, (reg & mask), timeout_us);
+	else
+		return readl_poll_timeout(base, reg, !(reg & mask), timeout_us);
+}
+
+/*
+ * If the slave device content being changed by Write/Erase, need to
+ * invalidate the AHB buffer. This can be achieved by doing the reset
+ * of controller after setting MCR0[SWRESET] bit.
+ */
+static inline void nxp_fspi_invalid(struct nxp_fspi *f)
+{
+	u32 reg;
+	int ret;
+
+	reg = fspi_readl(f, f->iobase + FSPI_MCR0);
+	fspi_writel(f, reg | FSPI_MCR0_SWRST, f->iobase + FSPI_MCR0);
+
+	/* w1c register, wait unit clear */
+	ret = fspi_readl_poll_tout(f, f->iobase + FSPI_MCR0,
+				   FSPI_MCR0_SWRST, 0, POLL_TOUT, false);
+	WARN_ON(ret);
+}
+
+static void nxp_fspi_prepare_lut(struct nxp_fspi *f,
+				 const struct spi_mem_op *op)
+{
+	void __iomem *base = f->iobase;
+	u32 lutval[4] = {};
+	int lutidx = 1, i;
+
+	/* cmd */
+	lutval[0] |= LUT_DEF(0, LUT_CMD, LUT_PAD(op->cmd.buswidth),
+			     op->cmd.opcode);
+
+	/* addr bytes */
+	if (op->addr.nbytes) {
+		lutval[lutidx / 2] |= LUT_DEF(lutidx, LUT_ADDR,
+					      LUT_PAD(op->addr.buswidth),
+					      op->addr.nbytes * 8);
+		lutidx++;
+	}
+
+	/* dummy bytes, if needed */
+	if (op->dummy.nbytes) {
+		lutval[lutidx / 2] |= LUT_DEF(lutidx, LUT_DUMMY,
+		/*
+		 * Due to FlexSPI controller limitation number of PAD for dummy
+		 * buswidth needs to be programmed as equal to data buswidth.
+		 */
+					      LUT_PAD(op->data.buswidth),
+					      op->dummy.nbytes * 8 /
+					      op->dummy.buswidth);
+		lutidx++;
+	}
+
+	/* read/write data bytes */
+	if (op->data.nbytes) {
+		lutval[lutidx / 2] |= LUT_DEF(lutidx,
+					      op->data.dir == SPI_MEM_DATA_IN ?
+					      LUT_NXP_READ : LUT_NXP_WRITE,
+					      LUT_PAD(op->data.buswidth),
+					      0);
+		lutidx++;
+	}
+
+	/* stop condition. */
+	lutval[lutidx / 2] |= LUT_DEF(lutidx, LUT_STOP, 0, 0);
+
+	/* unlock LUT */
+	fspi_writel(f, FSPI_LUTKEY_VALUE, f->iobase + FSPI_LUTKEY);
+	fspi_writel(f, FSPI_LCKER_UNLOCK, f->iobase + FSPI_LCKCR);
+
+	/* fill LUT */
+	for (i = 0; i < ARRAY_SIZE(lutval); i++)
+		fspi_writel(f, lutval[i], base + FSPI_LUT_REG(i));
+
+	dev_dbg((const struct device_d *)f->dev,
+		"CMD[%x] lutval[0:%x \t 1:%x \t 2:%x \t 3:%x], size: 0x%08x\n",
+		op->cmd.opcode, lutval[0], lutval[1], lutval[2], lutval[3],
+		op->data.nbytes);
+
+	/* lock LUT */
+	fspi_writel(f, FSPI_LUTKEY_VALUE, f->iobase + FSPI_LUTKEY);
+	fspi_writel(f, FSPI_LCKER_LOCK, f->iobase + FSPI_LCKCR);
+}
+
+static int nxp_fspi_clk_prep_enable(struct nxp_fspi *f)
+{
+	int ret;
+
+	ret = clk_enable(f->clk_en);
+	if (ret)
+		return ret;
+
+	ret = clk_enable(f->clk);
+	if (ret) {
+		clk_disable(f->clk_en);
+		return ret;
+	}
+
+	return 0;
+}
+
+static int nxp_fspi_clk_disable_unprep(struct nxp_fspi *f)
+{
+	clk_disable(f->clk);
+	clk_disable(f->clk_en);
+
+	return 0;
+}
+
+/*
+ * In FlexSPI controller, flash access is based on value of FSPI_FLSHXXCR0
+ * register and start base address of the slave device.
+ *
+ *							    (Higher address)
+ *				--------    <-- FLSHB2CR0
+ *				|  B2  |
+ *				|      |
+ *	B2 start address -->	--------    <-- FLSHB1CR0
+ *				|  B1  |
+ *				|      |
+ *	B1 start address -->	--------    <-- FLSHA2CR0
+ *				|  A2  |
+ *				|      |
+ *	A2 start address -->	--------    <-- FLSHA1CR0
+ *				|  A1  |
+ *				|      |
+ *	A1 start address -->	--------	(Lower address)
+ *
+ *
+ * Start base address defines the starting address range for given CS and
+ * FSPI_FLSHXXCR0 defines the size of the slave device connected at given CS.
+ *
+ * But, different targets are having different combinations of number of CS,
+ * some targets only have single CS or two CS covering controller's full
+ * memory mapped space area.
+ * Thus, implementation is being done as independent of the size and number
+ * of the connected slave device.
+ * Assign controller memory mapped space size as the size to the connected
+ * slave device.
+ * Mark FLSHxxCR0 as zero initially and then assign value only to the selected
+ * chip-select Flash configuration register.
+ *
+ * For e.g. to access CS2 (B1), FLSHB1CR0 register would be equal to the
+ * memory mapped size of the controller.
+ * Value for rest of the CS FLSHxxCR0 register would be zero.
+ *
+ */
+static void nxp_fspi_select_mem(struct nxp_fspi *f, struct spi_device *spi)
+{
+	unsigned long rate = spi->max_speed_hz;
+	int ret;
+	uint64_t size_kb;
+
+	/*
+	 * Return, if previously selected slave device is same as current
+	 * requested slave device.
+	 */
+	if (f->selected == spi->chip_select)
+		return;
+
+	/* Reset FLSHxxCR0 registers */
+	fspi_writel(f, 0, f->iobase + FSPI_FLSHA1CR0);
+	fspi_writel(f, 0, f->iobase + FSPI_FLSHA2CR0);
+	fspi_writel(f, 0, f->iobase + FSPI_FLSHB1CR0);
+	fspi_writel(f, 0, f->iobase + FSPI_FLSHB2CR0);
+
+	/* Assign controller memory mapped space as size, KBytes, of flash. */
+	size_kb = FSPI_FLSHXCR0_SZ(f->memmap_phy_size);
+
+	fspi_writel(f, size_kb, f->iobase + FSPI_FLSHA1CR0 +
+		    4 * spi->chip_select);
+
+	dev_dbg((const struct device_d *)f->dev, "Slave device [CS:%x] selected\n",
+			spi->chip_select);
+
+	nxp_fspi_clk_disable_unprep(f);
+
+	ret = clk_set_rate(f->clk, rate);
+	if (ret)
+		return;
+
+	ret = nxp_fspi_clk_prep_enable(f);
+	if (ret)
+		return;
+
+	f->selected = spi->chip_select;
+}
+
+static int nxp_fspi_read_ahb(struct nxp_fspi *f, const struct spi_mem_op *op)
+{
+	/* Read out the data directly from the AHB buffer. */
+	memcpy_fromio(op->data.buf.in,
+		f->ahb_addr + op->addr.val - f->memmap_start, op->data.nbytes);
+
+	return 0;
+}
+
+static void nxp_fspi_fill_txfifo(struct nxp_fspi *f,
+				 const struct spi_mem_op *op)
+{
+	void __iomem *base = f->iobase;
+	int i, ret;
+	u8 *buf = (u8 *) op->data.buf.out;
+
+	/* clear the TX FIFO. */
+	fspi_writel(f, FSPI_IPTXFCR_CLR, base + FSPI_IPTXFCR);
+
+	/*
+	 * Default value of water mark level is 8 bytes, hence in single
+	 * write request controller can write max 8 bytes of data.
+	 */
+
+	for (i = 0; i < ALIGN_DOWN(op->data.nbytes, 8); i += 8) {
+		/* Wait for TXFIFO empty */
+		ret = fspi_readl_poll_tout(f, f->iobase + FSPI_INTR,
+					   FSPI_INTR_IPTXWE, 0,
+					   POLL_TOUT, true);
+		WARN_ON(ret);
+
+		fspi_writel(f, *(u32 *) (buf + i), base + FSPI_TFDR);
+		fspi_writel(f, *(u32 *) (buf + i + 4), base + FSPI_TFDR + 4);
+		fspi_writel(f, FSPI_INTR_IPTXWE, base + FSPI_INTR);
+	}
+
+	if (i < op->data.nbytes) {
+		u32 data = 0;
+		int j;
+		/* Wait for TXFIFO empty */
+		ret = fspi_readl_poll_tout(f, f->iobase + FSPI_INTR,
+					   FSPI_INTR_IPTXWE, 0,
+					   POLL_TOUT, true);
+		WARN_ON(ret);
+
+		for (j = 0; j < ALIGN(op->data.nbytes - i, 4); j += 4) {
+			memcpy(&data, buf + i + j, 4);
+			fspi_writel(f, data, base + FSPI_TFDR + j);
+		}
+		fspi_writel(f, FSPI_INTR_IPTXWE, base + FSPI_INTR);
+	}
+}
+
+static void nxp_fspi_read_rxfifo(struct nxp_fspi *f,
+			  const struct spi_mem_op *op)
+{
+	void __iomem *base = f->iobase;
+	int i, ret;
+	int len = op->data.nbytes;
+	u8 *buf = (u8 *) op->data.buf.in;
+
+	/*
+	 * Default value of water mark level is 8 bytes, hence in single
+	 * read request controller can read max 8 bytes of data.
+	 */
+	for (i = 0; i < ALIGN_DOWN(len, 8); i += 8) {
+		/* Wait for RXFIFO available */
+		ret = fspi_readl_poll_tout(f, f->iobase + FSPI_INTR,
+					   FSPI_INTR_IPRXWA, 0,
+					   POLL_TOUT, true);
+		WARN_ON(ret);
+
+		*(u32 *)(buf + i) = fspi_readl(f, base + FSPI_RFDR);
+		*(u32 *)(buf + i + 4) = fspi_readl(f, base + FSPI_RFDR + 4);
+		/* move the FIFO pointer */
+		fspi_writel(f, FSPI_INTR_IPRXWA, base + FSPI_INTR);
+	}
+
+	if (i < len) {
+		u32 tmp;
+		int size, j;
+
+		buf = op->data.buf.in + i;
+		/* Wait for RXFIFO available */
+		ret = fspi_readl_poll_tout(f, f->iobase + FSPI_INTR,
+					   FSPI_INTR_IPRXWA, 0,
+					   POLL_TOUT, true);
+		WARN_ON(ret);
+
+		len = op->data.nbytes - i;
+		for (j = 0; j < op->data.nbytes - i; j += 4) {
+			tmp = fspi_readl(f, base + FSPI_RFDR + j);
+			size = min(len, 4);
+			memcpy(buf + j, &tmp, size);
+			len -= size;
+		}
+	}
+
+	/* invalid the RXFIFO */
+	fspi_writel(f, FSPI_IPRXFCR_CLR, base + FSPI_IPRXFCR);
+	/* move the FIFO pointer */
+	fspi_writel(f, FSPI_INTR_IPRXWA, base + FSPI_INTR);
+}
+
+static int nxp_fspi_do_op(struct nxp_fspi *f, const struct spi_mem_op *op)
+{
+	void __iomem *base = f->iobase;
+	int seqnum = 0;
+	int err = 0;
+	u32 reg;
+
+	reg = fspi_readl(f, base + FSPI_IPRXFCR);
+	/* invalid RXFIFO first */
+	reg &= ~FSPI_IPRXFCR_DMA_EN;
+	reg = reg | FSPI_IPRXFCR_CLR;
+	fspi_writel(f, reg, base + FSPI_IPRXFCR);
+
+	fspi_writel(f, op->addr.val, base + FSPI_IPCR0);
+	/*
+	 * Always start the sequence at the same index since we update
+	 * the LUT at each exec_op() call. And also specify the DATA
+	 * length, since it's has not been specified in the LUT.
+	 */
+	fspi_writel(f, op->data.nbytes |
+		 (SEQID_LUT << FSPI_IPCR1_SEQID_SHIFT) |
+		 (seqnum << FSPI_IPCR1_SEQNUM_SHIFT),
+		 base + FSPI_IPCR1);
+
+	/* Trigger the LUT now. */
+	fspi_writel(f, FSPI_IPCMD_TRG, base + FSPI_IPCMD);
+
+	/* Wait for the completion. */
+	err = fspi_readl_poll_tout(f, f->iobase + FSPI_STS0,
+				   FSPI_STS0_ARB_IDLE, 1, 1000 * 1000, true);
+
+	/* Invoke IP data read, if request is of data read. */
+	if (!err && op->data.nbytes && op->data.dir == SPI_MEM_DATA_IN)
+		nxp_fspi_read_rxfifo(f, op);
+
+	return err;
+}
+
+static int nxp_fspi_exec_op(struct spi_mem *mem, const struct spi_mem_op *op)
+{
+	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
+	int err = 0;
+
+	mutex_lock(&f->lock);
+
+	/* Wait for controller being ready. */
+	err = fspi_readl_poll_tout(f, f->iobase + FSPI_STS0,
+				   FSPI_STS0_ARB_IDLE, 1, POLL_TOUT, true);
+	WARN_ON(err);
+
+	nxp_fspi_select_mem(f, mem->spi);
+
+	nxp_fspi_prepare_lut(f, op);
+	/*
+	 * If we have large chunks of data, we read them through the AHB bus by
+	 * accessing the mapped memory. In all other cases we use IP commands
+	 * to access the flash. Read via AHB bus may be corrupted due to
+	 * existence of an errata and therefore discard AHB read in such cases.
+	 */
+	if (op->data.nbytes > (f->devtype_data->rxfifo - 4) &&
+	    op->data.dir == SPI_MEM_DATA_IN &&
+	    !needs_ip_only(f)) {
+		err = nxp_fspi_read_ahb(f, op);
+	} else {
+		if (op->data.nbytes && op->data.dir == SPI_MEM_DATA_OUT)
+			nxp_fspi_fill_txfifo(f, op);
+
+		err = nxp_fspi_do_op(f, op);
+	}
+
+	/* Invalidate the data in the AHB buffer. */
+	nxp_fspi_invalid(f);
+
+	mutex_unlock(&f->lock);
+
+	return err;
+}
+
+static int nxp_fspi_adjust_op_size(struct spi_mem *mem, struct spi_mem_op *op)
+{
+	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
+
+	if (op->data.dir == SPI_MEM_DATA_OUT) {
+		if (op->data.nbytes > f->devtype_data->txfifo)
+			op->data.nbytes = f->devtype_data->txfifo;
+	} else {
+		if (op->data.nbytes > f->devtype_data->ahb_buf_size)
+			op->data.nbytes = f->devtype_data->ahb_buf_size;
+		else if (op->data.nbytes > (f->devtype_data->rxfifo - 4))
+			op->data.nbytes = ALIGN_DOWN(op->data.nbytes, 8);
+	}
+
+	/* Limit data bytes to RX FIFO in case of IP read only */
+	if (op->data.dir == SPI_MEM_DATA_IN &&
+	    needs_ip_only(f) &&
+	    op->data.nbytes > f->devtype_data->rxfifo)
+		op->data.nbytes = f->devtype_data->rxfifo;
+
+	return 0;
+}
+
+static int nxp_fspi_setup(struct spi_device *spi)
+{
+	struct nxp_fspi *f = container_of(spi->controller, struct nxp_fspi, ctlr);
+	void __iomem *base = f->iobase;
+	int ret, i;
+	u32 reg;
+
+	/* disable and unprepare clock to avoid glitch pass to controller */
+	nxp_fspi_clk_disable_unprep(f);
+
+	/* the default frequency, we will change it later if necessary. */
+	ret = clk_set_rate(f->clk, 20000000);
+	if (ret)
+		return ret;
+
+	ret = nxp_fspi_clk_prep_enable(f);
+	if (ret)
+		return ret;
+
+	/* Reset the module */
+	/* w1c register, wait unit clear */
+	ret = fspi_readl_poll_tout(f, f->iobase + FSPI_MCR0,
+				   FSPI_MCR0_SWRST, 0, POLL_TOUT, false);
+	WARN_ON(ret);
+
+	/* Disable the module */
+	fspi_writel(f, FSPI_MCR0_MDIS, base + FSPI_MCR0);
+
+	/* Reset the DLL register to default value */
+	fspi_writel(f, FSPI_DLLACR_OVRDEN, base + FSPI_DLLACR);
+	fspi_writel(f, FSPI_DLLBCR_OVRDEN, base + FSPI_DLLBCR);
+
+	/* enable module */
+	fspi_writel(f, FSPI_MCR0_AHB_TIMEOUT(0xFF) |
+		    FSPI_MCR0_IP_TIMEOUT(0xFF) | (u32) FSPI_MCR0_OCTCOMB_EN,
+		    base + FSPI_MCR0);
+
+	/*
+	 * Disable same device enable bit and configure all slave devices
+	 * independently.
+	 */
+	reg = fspi_readl(f, f->iobase + FSPI_MCR2);
+	reg = reg & ~(FSPI_MCR2_SAMEDEVICEEN);
+	fspi_writel(f, reg, base + FSPI_MCR2);
+
+	/* AHB configuration for access buffer 0~7. */
+	for (i = 0; i < 7; i++)
+		fspi_writel(f, 0, base + FSPI_AHBRX_BUF0CR0 + 4 * i);
+
+	/*
+	 * Set ADATSZ with the maximum AHB buffer size to improve the read
+	 * performance.
+	 */
+	fspi_writel(f, (f->devtype_data->ahb_buf_size / 8 |
+		  FSPI_AHBRXBUF0CR7_PREF), base + FSPI_AHBRX_BUF7CR0);
+
+	/* prefetch and no start address alignment limitation */
+	fspi_writel(f, FSPI_AHBCR_PREF_EN | FSPI_AHBCR_RDADDROPT,
+		 base + FSPI_AHBCR);
+
+	/* AHB Read - Set lut sequence ID for all CS. */
+	fspi_writel(f, SEQID_LUT, base + FSPI_FLSHA1CR2);
+	fspi_writel(f, SEQID_LUT, base + FSPI_FLSHA2CR2);
+	fspi_writel(f, SEQID_LUT, base + FSPI_FLSHB1CR2);
+	fspi_writel(f, SEQID_LUT, base + FSPI_FLSHB2CR2);
+
+	f->selected = -1;
+
+	return 0;
+}
+
+static const char *nxp_fspi_get_name(struct spi_mem *mem)
+{
+	struct nxp_fspi *f = spi_controller_get_devdata(mem->spi->master);
+	struct device_d *dev = (struct device_d *)&mem->spi->dev;
+	const char *name;
+
+	/* Set custom name derived from the platform_device of the controller.
+	 */
+	if (of_get_available_child_count(f->dev->device_node) == 1)
+		return dev_name(f->dev);
+
+	name = basprintf("%s-%d", dev_name(f->dev), mem->spi->chip_select);
+	if (!name) {
+		dev_err(dev, "failed to get memory for custom flash name\n");
+		return ERR_PTR(-ENOMEM);
+	}
+
+	return name;
+}
+
+static const struct spi_controller_mem_ops nxp_fspi_mem_ops = {
+	.adjust_op_size = nxp_fspi_adjust_op_size,
+	.supports_op = nxp_fspi_supports_op,
+	.exec_op = nxp_fspi_exec_op,
+	.get_name = nxp_fspi_get_name,
+};
+
+static int nxp_fspi_probe(struct device_d *dev)
+{
+	struct spi_controller *ctlr;
+	struct resource *res;
+	struct nxp_fspi *f;
+	int ret;
+
+	f = xzalloc(sizeof(*f));
+
+	f->dev = dev;
+	f->devtype_data = of_device_get_match_data(dev);
+	if (!f->devtype_data) {
+		ret = -ENODEV;
+		goto err_put_ctrl;
+	}
+
+	ctlr = &f->ctlr;
+
+	/* ctlr->mode_bits = SPI_RX_DUAL | SPI_RX_QUAD | SPI_RX_OCTAL | \ */
+	/*                   SPI_TX_DUAL | SPI_TX_QUAD | SPI_TX_OCTAL; */
+
+	ctlr->dev = dev;
+	ctlr->bus_num = dev->id;
+	ctlr->setup = nxp_fspi_setup;
+	ctlr->num_chipselect = NXP_FSPI_MAX_CHIPSELECT;
+	ctlr->mem_ops = &nxp_fspi_mem_ops;
+
+	spi_controller_set_devdata(ctlr, f);
+
+	/* find the resources */
+	res = dev_request_mem_resource(dev, 0);
+	f->iobase = IOMEM(res->start);
+	if (IS_ERR(f->iobase)) {
+		ret = PTR_ERR(f->iobase);
+		goto err_put_ctrl;
+	}
+
+	res = dev_request_mem_resource(dev, 1);
+	f->ahb_addr = IOMEM(res->start);
+	if (IS_ERR(f->ahb_addr)) {
+		ret = PTR_ERR(f->ahb_addr);
+		goto err_put_ctrl;
+	}
+
+	/* assign memory mapped starting address and mapped size. */
+	f->memmap_phy = res->start;
+	f->memmap_phy_size = resource_size(res);
+
+	/* find the clocks */
+	f->clk_en = clk_get(dev, "fspi_en");
+	if (IS_ERR(f->clk_en)) {
+		ret = PTR_ERR(f->clk_en);
+		goto err_put_ctrl;
+	}
+
+	f->clk = clk_get(dev, "fspi");
+	if (IS_ERR(f->clk)) {
+		ret = PTR_ERR(f->clk);
+		goto err_put_ctrl;
+	}
+
+	ret = nxp_fspi_clk_prep_enable(f);
+	if (ret) {
+		dev_err(dev, "can not enable the clock\n");
+		goto err_put_ctrl;
+	}
+
+	mutex_init(&f->lock);
+
+	ret = spi_register_controller(ctlr);
+	if (ret)
+		goto err_disable_clk;
+
+	return 0;
+
+err_disable_clk:
+	nxp_fspi_clk_disable_unprep(f);
+
+err_put_ctrl:
+	dev_err(dev, "NXP FSPI probe failed\n");
+	return ret;
+}
+
+static const struct of_device_id nxp_fspi_dt_ids[] = {
+	{ .compatible = "nxp,imx8mm-fspi", .data = (void *)&imx8mm_data, },
+	{ .compatible = "nxp,imx8mn-fspi", .data = (void *)&imx8mm_data, },
+	{ .compatible = "nxp,imx8mp-fspi", .data = (void *)&imx8mm_data, },
+	{ .compatible = "nxp,imx8qxp-fspi", .data = (void *)&imx8qxp_data, },
+	{ .compatible = "nxp,imx8dxl-fspi", .data = (void *)&imx8dxl_data, },
+	{ /* sentinel */ }
+};
+
+static struct driver_d nxp_fspi_driver = {
+	.name			= "nxp-fspi",
+	.probe			= nxp_fspi_probe,
+	.of_compatible	= DRV_OF_COMPAT(nxp_fspi_dt_ids),
+};
+device_platform_driver(nxp_fspi_driver);
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

