Delivery-date: Fri, 25 Feb 2022 15:50:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv7-00A1UR-0L
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 15:50:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv2-0002pC-Au
	for lore@pengutronix.de; Fri, 25 Feb 2022 15:50:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=J8jkvsBVNuuF9Bn2P6poNU9vsMzLb+e6Ods7BLmIAsg=; b=WKzt5HcRTGsM8y
	knpEsB5Tewo/RqaZ3r2TCPGU8bylwpNLJNnypme5hFbTiHNW7CRrrQRmMdijtE5c2tCDQZH9ce+zQ
	iQrYKQunIjqEkSOIspKGr0gKkrS5JtM52VG8GuWNs0718SFNB/6FFC3O6gUchhefYNp/BpDqtj687
	On4kkJMYp2Trj10/HyPnF5utrfD2MzBg8k+1AZB3NnlUUQk8DRkc9vsa91M6x8MUdktei7/nNG5Ya
	MVZZWQkPsVonL1yjxMDRTQlUwYK5WuRC7cU0LZuE4GqZha5iZ/AQ/dOhl71d8HmxrV8QMjM8nsBFt
	R6I5pszBsKlnxPxug+yA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbtI-005Ria-QQ; Fri, 25 Feb 2022 14:48:17 +0000
Received: from mail-db5eur03on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::617]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbt8-005Rep-Mf
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 14:48:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=YCxj591Xqa7a5XG5BHUrfnlEOSFTWUZCTFibo+wCZR7vFBMwxu52Qzg+HMYEJHfRBWPj9R/yCcSJrL298C2j3hA9JI6uyXpdrKJHpACoUwBR00ChCBb1T1nM2L+ad36haxYhEyFOnPPyMq3XVTjJL1gAVfXxeNfmBQavNLCy4YMjm55f5UnCA5r8xrICpVXPdNc+Ky/DQUDyOjGHm0tSmZdOyklQooq/523bLdp2zTW2xkdsGalg51G3aNBzClbdSewOa1CqV5HVcwjjsQk4AZqPZiEXlvzlrQIZQ1gVBeQ+Kdw7iAmsD6/PJgepPAKcJzWsqYtsZ0XwXbNSCVnDMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mvYdwMjZ3NJ1IW4aBPAY7S1fyM4J4ETxIb8azYMwjRA=;
 b=F17HUCRryxSEPAwJZuN/kbKKQ+CRptUDxo2ZdXLJOFwVnwmBk/xndw+0X/K43iwDYEknedworLQSklEW3BDqAxC3s4IP1kcNO14h920Vex2TOqSHASU8jdzxOVvry2i9BegK9y2spHs+VH9RagR9jElEdYqoIHgOhntvgJGN3S7wNSOHt5rbIT2Ej+9e1z14yzKSWipJVqxkGYhMttgYvgtRnTHMgT87ndA20YmcJkW7gkYHqWCmCm3wKzTZjhJxyjVURhi5ncbUYlLspA/a3I6mmEMOGW33vNK/TtE8UiL2QFhvAtWA4xUbAT4R4EYwIHM/30zoGrPMpuQ9XHmLvw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=mvYdwMjZ3NJ1IW4aBPAY7S1fyM4J4ETxIb8azYMwjRA=;
 b=o8dg49G1iou2OiycIlXe6iNt6nsQhpPC9Jv3I3UDX2K8mQJVJq30X5Ki5tuXZ7JzDVNPwrj8oQZkSByjEflsG7z32cSfvvt+fc7Sake8n6E8eCyw06n8qeGor/fInk5YclM/bua6ZGlhG4ydApwJ9dolq0fZPS4y5mXKjhIS490=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AS8P192MB1397.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.24; Fri, 25 Feb 2022 14:47:58 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.025; Fri, 25 Feb 2022
 14:47:58 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Fri, 25 Feb 2022 15:47:47 +0100
Message-Id: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0055.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::27) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: a706538c-5ad4-4bd2-fad9-08d9f86dd085
X-MS-TrafficTypeDiagnostic: AS8P192MB1397:EE_
X-Microsoft-Antispam-PRVS: <AS8P192MB13970F2A711C835164236C7D9C3E9@AS8P192MB1397.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 47akp/j75wMjpe3rtzDc9GALJHib9pK/aBpQX8M64l2T0E2DOQV5GbXMaNWWJKHaow7mvLhVURayO7/TF9f5WVUWcL+maOmtPIVE1aYgN2fzva0M2V1NiWfuGdfrhJ6CZnlftMbGWaMsbdHp30pO+oReiFXMQmYL9EuTRmTReEgkpXS1bNyYQy6G+l6ssEC1/PANAyaS4edhQ7cSLFmX1RaSxuNjQ2r3nUHNNj2zels6G4VxJNL51/zGDGW9eBTFIOlhGvwdzBQ7dY1wtLC4YoiCt2zGzjefmqNarMI1ieRlbF47+VVhNbd4R4l/UkTAf2g+hRszgWn6CwKD11dRY/hsITh3JWyDyTwdus9XAe/BNS5c/5ZUHX7sUAkitPnckK0EIa4KX0dUxoU74kKISQxT8A2piZT3/D8QNqO14O/c0jLF/bt01rnkstGr9cCA6dCaVuj/WNuw5pkrVh7lqXVJwyzzueiRLHFGFhTs+5+GrFMkO0kB6vejT5JH77gQjYGjF2DIRB2MJTe4tQJkWvxTxha3n1qva/r9APzhEC32taLozOg0ApUAgVMovsn01TLMm7ryMnnyQ1ILHrnP/rEziJDhfY/XXpnLdDRDwiY++REVA3fhHebteWbkhcGuK8/+q7FUgogRnvlOYBuokJA7N0l179WswkjAAwXS/ZB1ovDFaIY3mQCqk+sdvyPthHF7PM9BTNrAqHYZZN7pd9Kwvs/hgOp2rBwQsZDzAh+Bli6ga30hlESTsQAwJseE
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(36756003)(66556008)(66476007)(66946007)(8936002)(5660300002)(2906002)(2616005)(4326008)(86362001)(8676002)(6916009)(52116002)(36916002)(38350700002)(6512007)(38100700002)(83380400001)(508600001)(6506007)(186003)(1076003)(6486002)(44832011)(6666004)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?zjeWl6juhdEqCxa130/8F8OMx7uCEQW9tntL7fYQ8lyuUihcQUUFI7TGzj/6?=
 =?us-ascii?Q?2+aX7uPkeF+Pxhsk/ltu8ywPdyrGnq172+v9xgyMpq8kFIrtW70g5iukZoVq?=
 =?us-ascii?Q?Fpwjvvy7V+SETX7eEFaJO7tZ3/VVvZFfcvveFoPrVGEKTUZWZAhNJ4FGUdMF?=
 =?us-ascii?Q?xYXBEJdOkoZ/4nSyO/vk+XQVSbK/ugu8eiZgYHYKu/E/RX21APLDCU4y8JX5?=
 =?us-ascii?Q?jmLBbpytDQL3qIwf45AqfpjnpAW+SX9zMTWd9zNM2glrJ6TH2HkcmJx0y1Lp?=
 =?us-ascii?Q?C4/TXOUalfZ4wWGjXYupIRcxFGtkYiWba2/czL4AprtLQCH11nYtmuEQdkBy?=
 =?us-ascii?Q?zKMyz+UGb6LjDfwvwvj9EizzrJ3Cw7GzOOrh0OImTV6ZKSxX5mmj3HWgOnEu?=
 =?us-ascii?Q?xaxCVPe8rOYf6R+qz6RyakqDHtfyu7g8f02wa2M62pDegXoDJF70xdwF6V03?=
 =?us-ascii?Q?+xKUCUj7LZcP9XaATkL6avD0Ca9Jq5UhQwabsisBweYbcRxzdr2hIlY4To1V?=
 =?us-ascii?Q?L2vfGFQe4K5yfzTTX7ZWRH8fq1BlWa+BvQF56F1RsuXg6XKNmVj6yfQ8WBul?=
 =?us-ascii?Q?UIwLjmlRzXFrOysEsc6D8DbqDzpRiV5KhGkSHMeIv25CiD+mHkTYfUmV6pQR?=
 =?us-ascii?Q?yyNFx7k1X4Y4Eu5uHCjFwn3A3b7hSRDDJzD98vjgAg2FEMVP3Jbte41Xpp0y?=
 =?us-ascii?Q?Qv5GUAgTJdujOqmjjzZWyTFeQE4ySLE6RxOGC3N72sCyF/jXJ5W4YBkuXTkp?=
 =?us-ascii?Q?XeGtunsJvrdTzP9kdTPs6PgB20aCG2ZBDAy/S98zd6D/I6I3D+hXcDFV8SYe?=
 =?us-ascii?Q?rvLgDlv7imBsheASg1/JA+S7OSGIs14aYj5kXJplOBadPZZ4bYdckvgUIJtX?=
 =?us-ascii?Q?fb7gHUtltbi9W0dE0AWYzzEbR+e/RqSWRCi8gnEBwe8sO7jomO4/Ki4CH/+7?=
 =?us-ascii?Q?VD1NYkUoSkoI5/3RAfV0/UxtIbx43x6kdYXu4bF5La7rvbrLrWgwBTjZpJqp?=
 =?us-ascii?Q?4/zesKJqr5B0a2j1rdgGD1aXZE3Ew4nDofk4qjuw3YFcL+BIWnn5jaLPNq9d?=
 =?us-ascii?Q?oEplR6Fpz3KvL8+37VbQgUOKdZ9d6XLI+JwBU7r0KC9nXfQbXJMsCZYqtQ5k?=
 =?us-ascii?Q?S17lF1xfxn5ULWsE1iP91kyiWIFdGCEug4jnwcLh+StajvKAIwX6U7Y7Vmhn?=
 =?us-ascii?Q?2rCIhnbGDKJfwJJLCWCZFwAH0yG2URU7Wyn/RuAogjyh5V2n4WBGAXsX8O92?=
 =?us-ascii?Q?tXbWf6/9k3/plYI5FvE4xLr7SEjoOae64r2PU4vAtquPhRMT+my7IeuIohCo?=
 =?us-ascii?Q?bFMPgUJWD6pLL2AwLFSRc59k7TcCNfOSS2X/O9I7fzguluYjPMj9fln8190C?=
 =?us-ascii?Q?To7m2ULohwBMEiwPUAuJvmARNv+N5ij4tRFWXwbg2BudjOYVOp00Z2pN3yeW?=
 =?us-ascii?Q?45QDpHOPymUuyBYQWSZxaeneFd1cYeBS/8S0as7WZQuN7kGVzW8ZRCCJJ078?=
 =?us-ascii?Q?E4w99E30XENhgdf+3Qdj1rqrtteeKGePZy6psFWeJwMTli5mS6MzoRys+SBF?=
 =?us-ascii?Q?cR2bcVloV0owuk5mIPc4+YTr+6bbfZ0ezKIZfUVaafIWuQsGJK296NQAjTAx?=
 =?us-ascii?Q?5YhPt71OxFFkwy8uY0MDMMM=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a706538c-5ad4-4bd2-fad9-08d9f86dd085
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 14:47:58.5388 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: GdRwASOU4Wt8gRhw0nK3sMWWO6uZK6lgya2Kk1J3wiOCvyjedQFpMr776PC5CDK1gLqLjL7eEl1sWfjPcL0VuQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AS8P192MB1397
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
X-OrganizationHeadersPreserved: AS8P192MB1397.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220225_064806_841653_B33019B0 
X-CRM114-Status: UNSURE (   7.11  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] ARM: imx: Fix problem with imx8 SDRAM size calculation
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

There is some issues with the imx8 ddrc sdram size calculation.

If we compare the imx8mn DDR4 evk against the LPDDR4 variant in
code and in the datasheets, we see the following:

             DDR4   LPDDR4
  ========================
  Bus width   16      16
  Rank        1       1
  Ranks       1       1
  Banks       4       8
  Banks grps  2       1
  Rows        17      15
  Col         10      10

This gives us the following problems:

1. Bus width problem.
   Does not support 16 bit SDRAM bus mode, only 32 bit supported

2. Row size problem.
   Only up to 16 bit row size support.

3. Bank groups support.
   Only support of 1 bank group.

4. Bit count problem.
   The imx_ddrc_count_bits function does not do a correct count.
   Found out during test of the 1-3 part fixes.

The fact that the code only handled a 32 bit bus width, compensated
the problems with rows, banks and rank.

This have been tested on the NXP IMX8MN-EVK with 2GB DDR4 SDRAM as
well as on a custom board with 512MB LPDDR4 SDRAM.


Joacim Zetterling (4):
  ARM: imx: Add imx8 support for 18 bit SDRAM row size handle
  ARM: imx: Add imx8 support for SDRAM with two or more bank groups
  ARM: imx: Correct mem size calculation for 4/8/16/32 bit bus width
  ARM: imx: Correct bit count function

 arch/arm/mach-imx/esdctl.c | 61 +++++++++++++++++++++++++-------------
 1 file changed, 41 insertions(+), 20 deletions(-)

-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

