Delivery-date: Fri, 29 Oct 2021 13:08:26 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgPkI-0003rn-8U
	for lore@lore.pengutronix.de; Fri, 29 Oct 2021 13:08:26 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mgPkG-0001yv-Sd
	for lore@pengutronix.de; Fri, 29 Oct 2021 13:08:26 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:Cc:To:
	From:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=ZEgrfooxdnn78V6f5YHeasUqsjwTubFj75Sm6dkp4+g=; b=g8/ljpPTmSSXMC
	Nc63JVcd2JGyzBIMfjZzmV8JeLGAprE0lHg/MCrUWPHNiVpnPzN4Tp7Oe+y9OUPj8tGyGT1slOJiN
	Q/QxidaJsM2WCG4Q8gdoR6wE8P4tb7PxrMw+V532Q3/kq00c7Fc6di0Sg0YJIIZrthhu5p3WxAKQm
	kFjhF+f/JXNZ+IIcfJYHIXOG7CAeGVJ6s853EHfA6M6LlJ7pdoqf4wtksJ2Er46Ems9M9sWoe9DNI
	rw4Zj5o3cXKf6GAsySubZOHTfXu0ap3aNbhSKd0b4nvmsjeVrE88v7rtPAnWaR03dri921fh3jWeC
	ojKl57Q0/lLOBBfLbOfQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mgPiH-00AiJ5-EC; Fri, 29 Oct 2021 11:06:21 +0000
Received: from mail-vi1eur05on2071.outbound.protection.outlook.com
 ([40.107.21.71] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mgPiC-00AiIN-9J
 for barebox@lists.infradead.org; Fri, 29 Oct 2021 11:06:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=C4/KmNZsJx9Y75nKPtRK3GuFy5mk8QORny7JAUbdRJsniryMZMk95YvV139AHlfU4Y3SYLutlrpL74CQvMq0GtpwHL913Y9UYKYkZpPUznm9w0E3/YPUp5L+XULRodOwoBQxP7PEs2NdbXutwAq3Du2T4yQuJFzYGVniLqIOpvXxY4lL5o8sjBAVLRxu58e8yE0rUDWLg6mavbXLVnI+id7X/HJkrrbsW08McthqSzeSBY527HsnvkwuMKcdNkkUV2KJe0Ix8Qel5cAis1kRc7BCY0GgCQXkkWw5s7M3PRB7zmNlv79A1wi3xVCYCJ3ZTtfIygHHBD4obJga3PbEiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=yFr6r49AyjBhBZdIXkGmbhPvp6pJt0Xw8M5U5BShtm4=;
 b=W2NkbcgkmsgjCJUcyT0MDVC6ZVfR99GzqXs/hvXcpgLKmBDLleIJ/T9CPJQo/D0lPXoW/uf/dB51asPgqZs7XTRdTpDoP9q1dfBAwiiPg5xkOUPpibGGqYKaJ0tRv+BCP6yrfOudkzXAmpie4KKnmgDDkCuD9EMlBRV2kC370bHb1wttMeRLgte9meHARNvFYpXaGkOE54cZu24ff/Bn5SNwuSklaCIVmQ5E73JbKpGqAzlrOb7hjld8lPxlTmDmFPv78o1NXjBhsc8NLem0fGNmAUpZ8T5rwj31SxKw0xHW5CcrRkj01ouNFVE0He4uH6AemE4WlCTLgXM9m+nyeg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=yFr6r49AyjBhBZdIXkGmbhPvp6pJt0Xw8M5U5BShtm4=;
 b=rvIi5HN0oiMmdZhkZzVUMUUq3ESOp4/GaRJR6/64FxxP7mUoQJaCC5KuUS3aJzyhE0aFwbFgZyEMbN3X5tCOyqq9xa5gbD9KWeDwbO13se9HuHPQaeLn4B6CMObh9bdgHX4/sK/5M3FemPyYldR4UnNuthM+LjKkLNtsSnSx5oE=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0025.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:106::17) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15; Fri, 29 Oct 2021 11:06:08 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4%6]) with mapi id 15.20.4628.020; Fri, 29 Oct 2021
 11:06:08 +0000
Date: Fri, 29 Oct 2021 13:06:00 +0200
From: Joacim Zetterling <joaze@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Message-ID: <20211029110600.GA310644@wsevst-c0022>
Content-Disposition: inline
X-ClientProxiedBy: HE1PR05CA0305.eurprd05.prod.outlook.com
 (2603:10a6:7:93::36) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 HE1PR05CA0305.eurprd05.prod.outlook.com (2603:10a6:7:93::36) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.15 via Frontend Transport; Fri, 29 Oct 2021 11:06:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 35e39cdf-10e9-4a94-0b2e-08d99acc1bfb
X-MS-TrafficTypeDiagnostic: HE1P192MB0025:
X-Microsoft-Antispam-PRVS: <HE1P192MB00257FE4E92089CE29E2874D9C879@HE1P192MB0025.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: oxtddIqVcnVoTjVvQcowvkIR2ZhEQqYMZHggwfaQS4kk9oEuMVHbT3u5+rPvtz++lHPD6jDZjHs0YaJQiOsgS87gWju430aA6EDQtPlmc9wEJ3SliWeyUINpY7agYMmcwlvwOw2lJO9gmpS00yQZJYM2+UzKEsFB95VS9hWOlqTs6o6EJD2zwy4JgPS2Tu2nPIUczvOktOnwCc0crOPMwFHuMtNKf1p/ekmvUTNZW4X3tnGwuvFwmI5psC1bdc4aE8+iQrK5qWHaGq5Zcz2VAsbNfSM24s8Hcub3gNBUYLGeLUG2b390J1gHQ5jjFnxQ7VUrBJnyiJ4uyryDlhXa8VPLpb/nje+A/GVKqTBcK1xVAUYghI0BCqCWDPL+XDPtip98RuiUk2mFDqkq+FG7aDW374JIwQNQkDAPrRC2pN710IgXNW8xk/lD9hECUc6KytLPMWRLeQ3fNQIqdn+9J/OA1bAfq2goLjKSlYe9xzOQ09G3ZMt22VsVEjpK2vABOknlRLwNmt/U0C6pao6uE3Hq3En3ktQStDS1oPDKU88Enj8u9ZI0lq2+f80LSMUUMH2+9XsX39qVOJ86WDb36KQV1b1FnyYFb7HgdgtYvRhPxBYrOqTzHx/UF02HXCpi9Rvz6hUFlyeQ4gpTnuPkTHdIX8IV7mxDGCL3emFm440kL5xq75SvtAuKAuYkRHdIhCejejJoGEQqVjjcjEESnw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(508600001)(55016002)(6496006)(1076003)(316002)(5660300002)(9686003)(52116002)(83380400001)(4326008)(8936002)(186003)(33716001)(8676002)(6666004)(26005)(66946007)(33656002)(66556008)(38350700002)(38100700002)(66476007)(2906002)(6916009)(956004);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?Sgp0OxKq3xSbuSXPw9mu5thwCzq9NafRbb653DVKbx5GdxzbrjDE+KRTGTFg?=
 =?us-ascii?Q?OgPDCHqyAnACFEBPQavmf4zNhwiD0t9B8AU/w57OTGdJhnifhrYmhK6RPHP7?=
 =?us-ascii?Q?c2QZvybj+BHonQqTF7lwW9Oc4R4EgN6rWMqVGOB/apax7ynWpTYbPczGb0DR?=
 =?us-ascii?Q?ox4vtkh2V4kL4Syybc2t7ebjIPhPfUD2fJcZuV2avKqO7Q2lAkOTLA3N3Psb?=
 =?us-ascii?Q?xrqPS7sEKSdN1xi1f4lrm6pJV8Ol8gVe01D4ePe0O7Rygm29iyCmi+knElC+?=
 =?us-ascii?Q?gyvj8EZZjbRycycK4KIp7EvCDGHToxkamc8BeoIwWMXzTjAPVBYyJSlDON+B?=
 =?us-ascii?Q?NxRIur977rSqICiUh3dST/s459NgHwFafLfC14pS/gjrl9UBOpiBpypXnhPt?=
 =?us-ascii?Q?vf5auoHE9A6TYKBRVa9w7PWTwgI+C33Ap7MBT9MxmFhpcIxc9WjrZ6Me/z0H?=
 =?us-ascii?Q?k3kKfMzZD86LRkhAI5Y6ykdvDGu0pFCaB2kMQiOqs38LxY0sC2ldHwBSdSWM?=
 =?us-ascii?Q?bzmtHv8rF15CJBzaTPhmJsBXN1eQVORP2V1U5yhawObTUnBWJVfaov+IrPXO?=
 =?us-ascii?Q?UY2TEsia42cOXntitKz/s/Dqp0u3TwUi0ItugFmwWG4BAwc8tbicFJGzEvYO?=
 =?us-ascii?Q?/kEkdelYq3EbJdg6sqP2XFPHGPAf0AoAzpzM0Id2k0YSLD3nV2wDH4x2RODO?=
 =?us-ascii?Q?lmy2UnaRM57+hDXr7Ydylm75Imfgo1ksG++KlAc9Rxp3M5AZz3eo6aVq0qV3?=
 =?us-ascii?Q?QNmRLb8mug+Ae9onKGd8mhq9Rit09NX4/lOIkbLumdVSjYOzi4GmcdMxnAwh?=
 =?us-ascii?Q?KH66DqTR/ZLIk7tI215UrhXNRBJBr45uezh2+XsrsqfDXbP6SP6B55IVGej4?=
 =?us-ascii?Q?FB6m3ES9rKPSBE6EI/hdQh8BXXfWIaicCf3zK+7bm8hpyEpFvVqnEvNCnbrO?=
 =?us-ascii?Q?ok6I1lGZTjzv3V8tzUq2lW00gg2U/qe9oqhSpka8W9G2KpA3u5xQdYTXQqJz?=
 =?us-ascii?Q?9AA/OJJwQYMRGu/c2U0htgLooY+K5c2HGT1ffrI2a4HomvPj1CiKnZd9gtAW?=
 =?us-ascii?Q?z8BYEKNGcn+ObRLVvl8tbmL0nwX92UfLU8xhhjtjsZBMqAzUPDZw2AAz0y0H?=
 =?us-ascii?Q?LhBVTSVJEJ3IANFsUsBNalqTXtM0B1D7lWw9hsMn3YwjlztJJ7+qbZfE9ykk?=
 =?us-ascii?Q?9Ty9YsR5ZYHsJw256TxqujeIDuz01WldU78XHV/N4ioNT7ISXoSNWSaj6WIV?=
 =?us-ascii?Q?Cxw/TyNK/wXma2OsoP2LEZkWPqwnqQXwhCgE/P7OlMPMi6KLy4Fu/YsFKMl0?=
 =?us-ascii?Q?aMF80F4abkblH+A71qLf2CZmIpCntsf8c0V7aLSEYd53OencZAdKcW6dmoKp?=
 =?us-ascii?Q?x0i5LPfxQa95376gs4jeEHL3mAM0IuZgyw18efZpG9YHq6+P7fVSmCNGygTP?=
 =?us-ascii?Q?pZlvN+GxmBRaVDqWCa900tk65dlhvUR+uAk8NVAXuh5Zb/Eht5g7mh4SdkHW?=
 =?us-ascii?Q?FpH4ggOSqo8oWKTFGRLxe8qiR3jhxxhB3tTcKOBNqKBmnzJa1JhRifCwRjz0?=
 =?us-ascii?Q?frumN2JxjIfu7DG0pgv0PcqRbte/Io6qZDme1PlrEYUWS4FycFR7vrCGkDc9?=
 =?us-ascii?Q?8yIT7EaDEnLvK2+Do6JAKJo=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 35e39cdf-10e9-4a94-0b2e-08d99acc1bfb
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Oct 2021 11:06:08.4838 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: HYTQhpW9w8lOBxGzHiXen+aP0HuLnmgcF9wb9zZolNkYbtMdceXUKSOdU9tOfLfEpnINELW3wr2Etpx5IwZYdA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0025
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
X-OrganizationHeadersPreserved: HE1P192MB0025.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211029_040616_434080_C16809FE 
X-CRM114-Status: GOOD (  15.75  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] ARM: imx: Fix problem with imx_ddrc_sdram_size
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The imx8mn has a 16-bit SDRAM bus width access but the calculation
of the memory size treat it as a 32-bit width bus which makes the
memory calculation to be wrong (meminfo wrong and memtest fails).

There is a difference between the imx7 and the imx8 familys.
The imx8 family has a device config field in the master register of
the DDRC controller which the imx7 family doesn't have (the bus width
is 32-bit as default).

The device config field together with the DQ configuration tells us
the actual bus width of the device for a correct mem size calculaton.

>From the imx8mn reference manual:
+----------------------------------------------------+
|    Field      |     Function                       |
|----------------------------------------------------|
|    31-30      | Indicates the configuration of the |
|               | device used in the system.         |
| device_config |     00b - x4 device                |
|               |     01b - x8 device                |
|               |     10b - x16 device               |
|               |     11b - x32 device               |
+----------------------------------------------------+
...
...

The imx8 supports a bus width of 4 bits or x4 (device_config b00).
This is a problem for the calculation of the mem size when it only
handle the bus width in bytes. Therefore we must treat the mem size
calculation for the half bus width (width = 0) in a special way.
Do the calculation with one byte width and then divide the mem size
by 2 later on.

Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
with 2GB LPDDR4, checked size and made memory test. Both platforms
has a mstr_device_config of b10 and the mstr_bus_width of b00.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 30 ++++++++++++++++++++++--------
 1 file changed, 22 insertions(+), 8 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e56da3cb76d4..1d76f26dfa39 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -320,6 +320,7 @@ static int vf610_ddrmc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
 #define DDRC_MSTR_LPDDR4			BIT(5)
 #define DDRC_MSTR_DATA_BUS_WIDTH		GENMASK(13, 12)
 #define DDRC_MSTR_ACTIVE_RANKS			GENMASK(27, 24)
+#define DDRC_MSTR_DEVICE_CONFIG		GENMASK(31, 30)
 
 #define DDRC_ADDRMAP0_CS_BIT1			GENMASK(12,  8)
 
@@ -361,7 +362,7 @@ static resource_size_t
 imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 		    u8 col_max, const u8 col_b[], unsigned int col_b_num,
 		    u8 row_max, const u8 row_b[], unsigned int row_b_num,
-		    bool reduced_adress_space)
+		    bool reduced_adress_space, bool is_imx8)
 {
 	const u32 mstr = readl(ddrc + DDRC_MSTR);
 	unsigned int banks, ranks, columns, rows, active_ranks, width;
@@ -384,15 +385,20 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 		BUG();
 	}
 
+	/* Bus width in bytes, 0 means half byte or 4-bit mode */
+	if (is_imx8)
+		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
+	else
+		width = 4;
+
 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
 	case 0b00:	/* Full DQ bus  */
-		width = 4;
 		break;
-	case 0b01:      /* Half DQ bus  */
-		width = 2;
+	case 0b01:	/* Half DQ bus  */
+		width >>= 1;
 		break;
 	case 0b10:	/* Quarter DQ bus  */
-		width = 1;
+		width >>= 2;
 		break;
 	default:
 		BUG();
@@ -412,7 +418,15 @@ imx_ddrc_sdram_size(void __iomem *ddrc, const u32 addrmap[],
 	columns = imx_ddrc_count_bits(col_max, col_b, col_b_num);
 	rows    = imx_ddrc_count_bits(row_max, row_b, row_b_num);
 
-	size = memory_sdram_size(columns, rows, 1 << banks, width) << ranks;
+	/*
+	 * Special case when bus width is 0 or x4 mode,
+	 * calculate the mem size and then divide the size by 2.
+	 */
+	if (width)
+		size = memory_sdram_size(columns, rows, 1 << banks, width);
+	else
+		size = memory_sdram_size(columns, rows, 1 << banks, 1) >> 1;
+	size <<= ranks;
 
 	return reduced_adress_space ? size * 3 / 4 : size;
 }
@@ -466,7 +480,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
 				   16, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   reduced_adress_space, true);
 }
 
 static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
@@ -508,7 +522,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   11, ARRAY_AND_SIZE(col_b),
 				   15, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   reduced_adress_space, false);
 }
 
 static int imx7d_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

