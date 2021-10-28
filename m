Delivery-date: Thu, 28 Oct 2021 10:49:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mg15u-0004id-IJ
	for lore@lore.pengutronix.de; Thu, 28 Oct 2021 10:49:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mg15t-0005zo-Bt
	for lore@pengutronix.de; Thu, 28 Oct 2021 10:49:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Jyl3R2GsgSzB7FwlPDu9lXPTb8s8FsL+4ogzC2sPiuE=; b=johl1jCG45O+zQ
	fr9mmTxGMfOG/hnlV+F3LvTw/5qqyLk0W0UnUQ63kGl6a/ZSuQYSh2fFBwY6s7r7xbYKRr4DiCA/H
	mfuU7KD47RirQEKULb74Ajjx/gI9MCC80a/EfpsGKfYB++nb+U6kSsm5y+N2IeftarKij71i9LVWh
	0/WJWfraX6XKyWTDiTku60YmXBb9GGZU2aVzMe9bze+cP/S7wY6KOeKoqLYrtpMOSbz6V+Gw8yXey
	ps2xKMxkcgI3ZoFxoeB2PJ3BlCraz46sGnz6IJtTWIsY9Xb04m0rM1AD4A0jWaL33YKXalXoqjobQ
	TpAYbAjEsat2oKXhnaSQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mg14A-007Idt-Ud; Thu, 28 Oct 2021 08:47:19 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74]
 helo=EUR04-VI1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mg145-007Icm-HX
 for barebox@lists.infradead.org; Thu, 28 Oct 2021 08:47:15 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MaRXmnD+mBJz6JXCq6HmncaifskZG7hkd3/wUw16asvejx0w1CzBX+/4lJ+NmKoA54vFnAvCfhW/ivp4fPmLUUxSIaQJITopeFkQtDltlMVYxjjWUU6tAg/bPvcaSdge7dty28Q5TrwtX0WhXngTatnHtQMjywoIxnviOJaAHs3lw9w6PS9VrG5LeVngPvM+KwHycJgvMAVoFj7dZI40uADqD0F3MZUYgQzezFc2w4UV6xzemCtNzSKH9ZFjiIKGf7DaIgvW0Mvgqc4+uvDJp7uDlCq0nnsnw8PCBzZ8Bnn6ixkjwewEoCTpBfyK3bjsxWuOLF37IF/MbsVrqLoqXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y1RP0tjJ+7kT1fn1IC2IXomWpfqOrEVoPxwXVrT+dUk=;
 b=iJoZt1nz4IVMc1iWDe8JeTFy1dEtczbTZLj6JkGxBMlCj72dBMW/OsLgY80ZuUsQBEfDyw/jsChEFbtKMcEQFnT/pqTHhRZM1M/jOJdmanjgUP8wF7l0ELd+9kyJ9BZz9vI5ezYBI1r+QLCH3lcV92UOSTFzWMMcjoFSiPPkBrVxmCT+06aCNhabyc9orR336B2PVqWdNwS9ZCrceYolEq8xWmv6I0tEgkHhfaveCmgeQPsePq3F7DZMmFTs4p3gpfWsRxGKB9La7WwHdFOwEEgI6XCyRbXh3YRnIVp++C1LHpjr2jH5We0ZykpCNIUJn8Pm9Rfs1/XAS9B/1CC6mw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=Y1RP0tjJ+7kT1fn1IC2IXomWpfqOrEVoPxwXVrT+dUk=;
 b=A95RLrWSXIy6pA3K5MoxBBmued+jkicB/pJTAu/wXJm1e9mp8+dwA2qzXeh4wnClQ0pV8g6S9qaA2KZFaOUgWXk5L5jzqrj29RUNs/bYLB2FN5cZIBrLC/5D1gGR5uVR5aWuEfZYUfKXnb+u6Y+oWUlkv7XDjKuBd9abrY3654Q=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 HE1P192MB0105.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:106::19) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4628.20; Thu, 28 Oct 2021 08:47:04 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::c48e:d79:44c2:cca4%6]) with mapi id 15.20.4628.020; Thu, 28 Oct 2021
 08:47:04 +0000
Date: Thu, 28 Oct 2021 10:46:55 +0200
From: Joacim Zetterling <joaze@westermo.com>
To: barebox@lists.infradead.org
Message-ID: <20211028084655.GA252698@wsevst-c0022>
Content-Disposition: inline
X-ClientProxiedBy: HE1PR05CA0216.eurprd05.prod.outlook.com
 (2603:10a6:3:fa::16) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
Received: from wsevst-c0022 (90.229.138.185) by
 HE1PR05CA0216.eurprd05.prod.outlook.com (2603:10a6:3:fa::16) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4649.14 via Frontend Transport; Thu, 28 Oct 2021 08:47:03 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 51dc861a-16f6-4eb3-c942-08d999ef83cd
X-MS-TrafficTypeDiagnostic: HE1P192MB0105:
X-Microsoft-Antispam-PRVS: <HE1P192MB0105674874A468C13331EBAD9C869@HE1P192MB0105.EURP192.PROD.OUTLOOK.COM>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: KgyDD6HDIBnE1ZpkxWT5Pu6g2/IVUVEAeFErNOaozMirJXni1F7ydCl34kQiioGciTQk+lDWpexJqSi6+nkx5+2q9oexqnWcK3VFuChFj0inTnQgST1t+HuHFnd8oSbRsRB/5peR68bgTBVfCSz1/pvGyIPtZS43Gh2LQFZ2lnYzvhwfhUhBMsrZSKZsUOiJTnIRIhZhz+V/rsaQLnBlwC5r1dTqXlC5lIRkAEQbOPNi/lbvH/f6+PkF8e9JXufPKEBeNbXzS8qSRo1zD/x+Ng6esoo2GxZC9eK30X/FQVjYSA7NfwdfsFSnAIRwuWB7QrD7StxBIQUkt6Vs6Cvidff8gekV6NgqK2abbdYcGyTH/WDSR+DUQg/OnoI8zizSXtZxbVOioCAlc/7bBcCG6lStsjH7bcQ5ZmwB5l6oxOXDed4Rj5UEfJHym9Edc+eceyH/3VsJD2L8ucKi5r0ZsbAXyKz+SvsFUT5xqkne1qHsTnITn5hoVoy3ymIrX8piHZ2a8Oq2iC80kItqVwVrYtkA4rwpKIUbVC1RPOFYDLbAKKu39IX+Rw95wvy1XPyDpnwRXKFz5RgbRRgxWdOSZxCt8a87hH/OG0cXrcOPhtumsdZl7jPxiWn4xPb2xKS98OqOU/atptF1EFMXAhKbicWQIO7+YRA4TM4qLcMmHQHeDQJCu5V1RnMGwafhptjRZCJwf/dV14uoiCReQWIuGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(1076003)(6666004)(2906002)(38350700002)(38100700002)(8936002)(5660300002)(316002)(508600001)(83380400001)(33656002)(55016002)(66476007)(956004)(66556008)(66946007)(33716001)(26005)(9686003)(6496006)(186003)(6916009)(52116002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?gNb8iBzKs+rwvL2GlnDY5hozk6Je0SWgin2aSUEvmRyPFt85XFwCayba2C3+?=
 =?us-ascii?Q?JcutL3L2P6zV04TfsoSFbv8wIYEuPY5gsm6wOQ7NiDisLxRyIpb88oJ4z1lt?=
 =?us-ascii?Q?sQywcYtwYJjt3cC0IcT6RZ0UnL/Ulz7gNcFoIXGt74da4zsq1bnTr1NtxfJ1?=
 =?us-ascii?Q?puJ22NSBK2Ya2SG1mXW8G7zcfyQKCD7iVOYXIUTdqrTyHjBE8rH2nWNKY00V?=
 =?us-ascii?Q?uqKuPRfxu5+xS6szzuTFqli7p3rw2M1Y5k405/MAymvIFV+oaNNh7NDf+3og?=
 =?us-ascii?Q?EC/iAYN73jP//AitJvnASnRXfublB++xpUp7vbRcnOFydcaTIP9zU87gmNx/?=
 =?us-ascii?Q?RGnkNp5rloLLgk7aB4Fiaxhx1R0SzU55MZVjGV9lHLXL46JJ1Eov4gqiVy+f?=
 =?us-ascii?Q?Vyw/zEbxMlqPj1YvIoy323wfjl2LKN6H7gO+MpGsMhcMmoxeonLkgDgQpolB?=
 =?us-ascii?Q?47znpr5xO2xEGIKW+FX8LXr8Idz1ae9CiZXa+ViLzyDodLOxvN4exDoklrny?=
 =?us-ascii?Q?3P+jzJ3sBFnXIJksJ8BoA8SHAzxRy77pITnWOjClQpPYFH/swKwlA5LqVolo?=
 =?us-ascii?Q?bF0y1pyK7rNDCU+wyGbLXHRc0ti/MKawNJ9k1sDHgwYk9UcAKLcuLpipAiBS?=
 =?us-ascii?Q?pljnZUt4VDP8rc1xmyVIA0AK9tSDyhE/K0MOO860AgTbGEqbaEiqOITyEphP?=
 =?us-ascii?Q?CpNmeoQsyEFgOxJ/3aE2IkS+0KI/PQ8avEVl4pwsqCAOYyBeNLNcV8zWh84w?=
 =?us-ascii?Q?QAwbMQLbfrKhLTAMoJ9movcd4TtGdmcj7wWYQt0t19kB2rYZaziCqesqyytH?=
 =?us-ascii?Q?h8Uh+OFKfSjAMyJ5U0l83Axb1Tkld+ZXhS6RFNqdwCrMJCb1ShsZ/Qr9dQxB?=
 =?us-ascii?Q?//8+M71kiWduDq1MdUepBef8thgY88vnZLlgbm+spWF1pLT1ViLU/TUZDHy8?=
 =?us-ascii?Q?pdoc33vajo97AhGeE43Y2oX+txdAuCzyaFz2gwLQLsU+W+L2DMEMgLH1JT+1?=
 =?us-ascii?Q?/95vC6amr7wbWjRzJ333hrjg8g0B6N36lzrgyt6eX0XpFz0Y4Q5pJomWZoY+?=
 =?us-ascii?Q?RlxWxfdScPk9jf38PefQL99pH4K3e8LPPNuZLe9yKANnHp7jKbnVXQXQ0yv5?=
 =?us-ascii?Q?bB31AbeNHgGcRcCs+LkDYgkdfrqsSyoqIo38k3jU88wxdWk4BTmN9wFI1u9K?=
 =?us-ascii?Q?BqH6bCYrY4c2gOMyI72I4sxbyEEkPJQ0oFvILMlQWXdJ9LBfUn0bzSrSJqG4?=
 =?us-ascii?Q?eIYoJBK0lW4SYrummfs4hI/cUlMZfBfCTYpEa3sdY+1GewbiebLYzM4fWywj?=
 =?us-ascii?Q?1lKSjsuU97s+Mt2SdYv4fdqsmKBiHwEjknCGIUUHWbO9RtnA0l5Ed6QfSj9C?=
 =?us-ascii?Q?Zvdg7TOXbXs246DxW2jRiVm3eN31pNxva9pxqI5Tz9RTaYqSLlvo90RtMU83?=
 =?us-ascii?Q?ruaWLN5EtOD/H3HtmTg6EhfznH1rSouAIy48z6ztUsXxspajkc62+5mdSV8l?=
 =?us-ascii?Q?9hR+TufJETLMJHrqAvgYfOZNK6l76RWVRP8rUKgFpPNV8Ps8uKLGdEYY/1xH?=
 =?us-ascii?Q?ZxA/s3mEf0KlMw+buv8LclzeR6mqyfeyH6GjKsWUqSG7aO+JVXD4zs38ZXgK?=
 =?us-ascii?Q?9H/VO7o9CFQYXD8D86ZOMn4=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 51dc861a-16f6-4eb3-c942-08d999ef83cd
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Oct 2021 08:47:04.0189 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vWeT1afb+/8VZviR6oCavciMueeBv8BmJkLeMYs7VJJcyWpqktb7AWzRX5zsrrqv5uvhunkkWYaprRDogUDSRQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: HE1P192MB0105
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
X-OrganizationHeadersPreserved: HE1P192MB0105.EURP192.PROD.OUTLOOK.COM
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211028_014713_708754_06B6E8C2 
X-CRM114-Status: GOOD (  13.11  )
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
Subject: [PATCH] ARM: imx: Fix problem with imx_ddrc_sdram_size
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

Tested on the IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
with 2GB LPDDR4, checked size and made memory test.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 16 +++++++++++-----
 1 file changed, 11 insertions(+), 5 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e56da3cb76d4..f80d94f2fca0 100644
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
 
+	if (is_imx8)
+		width = (1 << FIELD_GET(DDRC_MSTR_DEVICE_CONFIG, mstr)) >> 1;
+	else
+		width = 4;
+
 	switch (FIELD_GET(DDRC_MSTR_DATA_BUS_WIDTH, mstr)) {
 	case 0b00:	/* Full DQ bus  */
 		width = 4;
 		break;
 	case 0b01:      /* Half DQ bus  */
-		width = 2;
+		width >>= 1;
 		break;
 	case 0b10:	/* Quarter DQ bus  */
-		width = 1;
+		width >>= 2;
 		break;
 	default:
 		BUG();
@@ -466,7 +472,7 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 	return imx_ddrc_sdram_size(ddrc, addrmap,
 				   12, ARRAY_AND_SIZE(col_b),
 				   16, ARRAY_AND_SIZE(row_b),
-				   reduced_adress_space);
+				   reduced_adress_space, true);
 }
 
 static int imx8m_ddrc_add_mem(void *mmdcbase, struct imx_esdctl_data *data)
@@ -508,7 +514,7 @@ static resource_size_t imx7d_ddrc_sdram_size(void __iomem *ddrc)
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

