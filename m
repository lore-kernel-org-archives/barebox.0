Delivery-date: Fri, 25 Feb 2022 15:50:04 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv2-00A1Ts-Eb
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 15:50:04 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbuy-0002oo-DU
	for lore@pengutronix.de; Fri, 25 Feb 2022 15:50:03 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=kaCLm4W555k8ti4PB488YCcHFv2HyRMUOh3DBMx/gpw=; b=nf8jJUbj7EcRI5
	kJGYCO/bjsVb7vUvxEqkck4oGxqBm6AMDhaZHub5oOmDtJBF6CJGGvAemvzLLzbFGN9hRlOeFu6y5
	gR/RAbENCyj34YIkL2eLMHVmL3D47i6nApLWhsQrMESUy8vtsLVkfNX1lHjkwv1Svij+gl5ZzYIbv
	ZJGUxj2KLSYFBZvYFJDvgSjqNyDoS6qXBSGSRi7pvIhDSo5m7BMDpHj2aYP9g1LsKHuBsLOuT7m8S
	Bny7I6xmIJGcSClrUVjQNlZSkuIlqtBym1xWKUz2LFqlBQ+pRmG/jqAQaEw6hO5K/Qq3Xl+qjdEif
	C2/Am9GDxkYXAq2P8bIw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbtN-005Rkf-H6; Fri, 25 Feb 2022 14:48:21 +0000
Received: from mail-db5eur03on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::617]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbtD-005Rep-DX
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 14:48:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=g49HTbp96H6C9n+Htu8uoSGLhlmpuvhiIgF0I0Gl/5JPXk7d+htH1SNcf2iWuGDU5BLuAIH39HYxMpEfwL4ECLvsLT+aBRwNIIexiqpR8orZD/HHg36OWOGtbPJcjGojWkDQYz7bUv7aWoBnUwcaADxMFJZ0LA3tgAT+82WXfPAiuzB0vEtCH4blJKo3egUEx9ma2RuEBCmFxG3pHt3P0qd0NMsAQvqek8o2DVHgb3f24YsuW9CqblEw+XfHtG3S4lwW/pVzm9cvQq+h2CFPNn0GlWgsYVkF7ewB5KiNF5yqoukI5QOQEKNkEyC9BDalh50k5tvCd15NAflpBTybrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=okHvuLQ+4S2cb/MrQO9H+OGhFseRYcFNhZPPSs7EVjg=;
 b=SRYFpWQmQo/hGipnFrt1HlstoF76Nhb+POTC8GHMnabPA6JGavhK489ahhPWlooyY6UnjfiKv2pQBqdZczBbLzE+DpbZagwAx+mmxObF9GqeqAleUiBf1DljX00YJphaxcPggzwpPhA+c1oHak099li7hgj8vxFRYPOGlFPQB5evwerRs8BRzYVGSRLWZ7G84Qeo6y1BsPjvrBvImdJpdU/tv00bIIhjKdN3n2s867n02BkZp4X2SZBmvcx0/J04cQBNMxz4mc0VWYGnMurmPH/3o15ZYBQKinF1awGX52UxNlUPcudOwHk7GLbcAbhQE7bfl3p+V9kd0AOjJ6d4YQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=okHvuLQ+4S2cb/MrQO9H+OGhFseRYcFNhZPPSs7EVjg=;
 b=UJPpmz9rAgYTHmdfCzYqWgzZ1p3DacPuiHGzyJBNZxyDM2F/+AzF/hDJrlXTIkdRNoaj5cikvtSNKGqNKMzXpQYuzRFIlXMmMLta2DOuGGOXUoVrv40cWBJzeITVZHUr7P47kbg5xm/qGecbvP8SE3PIxnyjTJEZ/v2Jxv/Qm7k=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AS8P192MB1397.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.24; Fri, 25 Feb 2022 14:47:59 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.025; Fri, 25 Feb 2022
 14:47:59 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Fri, 25 Feb 2022 15:47:48 +0100
Message-Id: <20220225144751.4160843-2-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
References: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0055.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::27) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: ff3fa98b-82d7-4d4a-9260-08d9f86dd0e0
X-MS-TrafficTypeDiagnostic: AS8P192MB1397:EE_
X-Microsoft-Antispam-PRVS: <AS8P192MB1397F9EFEED551DC4A2BB2BB9C3E9@AS8P192MB1397.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: ELz4Vj/YZ+liTxFhyPWS54mSfvYPY/NR2A3KGGYyUwQ+VKEQq4IztlHP7ZVke1/KP1ZpMF83zmTFh1PHde7V6foMcWyZKu6Dn98mva0IAQDaKwGcsDwymudqK0NQoZ9saHQ0o05CB38uTrH0ngAX/OYArEvEbZOvFAf09hEeYvPqDxXHFZ4P0CBdoN0+lookI+c1iDR1T9uiYydrpHAg1tUMn3KC4/bpfttEpnhGeLgGK8WDWWh3qOgNmWGBeAQKQz7GDlBpjVupvab69rWNnntk95xbt+ymA1pUO0gvel+/8DsAVMc6WDm66Bxlrp51lZSYRh3kCpSxLhG4RzTsaC8Qrp8BJuAOs1yd2urvMUIwCuzR9S2Bu4vROdO+rEii/BRt9VRkYJ5icRMOSDgmhiHskmS2yIOPnq5s5qhY47PWeGCpN+z/sKDEKrqTT0fPaLEsQQeDF/O6k7xm493M0AWLwFoj+fxRMWko0JOPuXSRlNQ1jQC4h+paj6SWmRmf9c3Sd5Vk0T85VvpQQOSHk9mx+L6WTwZHtmrVr03ttogoKTcY/7NO/967/Ki0ZH3nOsJ/WOCRqo4qIazlmorjVyXAj0XaRawtWsXwx93T2/YjjKwiWc+K1FhNZLbMLrb7BkH9Pb6loD5l6eIXaLw6k594vIZZGhCmHNc3O8P6S6l+dQhHJl6YcB2bmEeP112KxHhkXabg+u3YObtNMQrpI2ykj6EqNgDM9wa0Yrq02Yz9PcCD6VgVrgh9F4cLUZpO
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(36756003)(66556008)(66476007)(66946007)(8936002)(5660300002)(2906002)(2616005)(4326008)(86362001)(8676002)(6916009)(52116002)(36916002)(38350700002)(6512007)(38100700002)(83380400001)(508600001)(6506007)(186003)(1076003)(6486002)(44832011)(6666004)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?sLrdtP6jPOjQJAloTyIjki4aK+kO9ekYny2LCayLJF9iDffkpIMrPVX2Xn5h?=
 =?us-ascii?Q?WC351YPqRSwst+DgIaDRZ6XgX3sAKY2UPAp5TU7HfeR4KW6K4899lKO352Oy?=
 =?us-ascii?Q?FQYyBVd03vcHeN7bMCeZMbD8czqv4gks6zDewcP7kD5kfJuH1vJNAjhmXzZf?=
 =?us-ascii?Q?9todpB27a789/QfUvxboO3LHkmelN5itdJPK0du1E/0yPRs31UrW8ghH9Jms?=
 =?us-ascii?Q?V2Ae5IdoonOZYjWpu75145VNc2I68HY2bJcTvUcv0ez4ncTdouEq7c229BRP?=
 =?us-ascii?Q?TuSjFlDdno6FwHJSOozBKLeSMrq3Y1mGtJj3SBdOaptaAnYBe1P1DmeN5FCw?=
 =?us-ascii?Q?k02giT50j6geXOiwb9F+1AAd2A2FMqEHo1uwlj3fU7CsvhRm77JN60ICT0sr?=
 =?us-ascii?Q?Hx6HQD5gG4A+Y41C8sMdI1LjoyvzHbsL6r6V/XCmhy68hvFfR8uTyY8BxtRk?=
 =?us-ascii?Q?LWIACfVk012opREEvg0LIgnPCOGmcJaK2QAVAjXw7A5kCWgYy06rwSzddu5x?=
 =?us-ascii?Q?/T8oaXImY47etpdG0FcyZa8gVuj/xLsRavwOztGVa44Vzx61cvt2Y9BEhE0g?=
 =?us-ascii?Q?VFCstJXo1mgI+4iuSW/Ef2u0jzKXkduQMVvBUmmedgTdRrBNifQ/t3RixOjJ?=
 =?us-ascii?Q?9jvBu46taPxCt8sXT3ovB/fHHP23+vDvQlcNNOS4CrX1O1vNUN99wTYVUrdw?=
 =?us-ascii?Q?Gxv9smRpqEM/4C3qxxJG2sq25V9/W0HcBeVCm1OAxH44YvradKPjdSdn1QHz?=
 =?us-ascii?Q?LrPzOwK/938bdRlPGcrdtwIJZ8r6PoZRJF3PiQpsJPFNfnkUgQd/xIzQK5gl?=
 =?us-ascii?Q?IFt/sCi/1ppMcpZjbenwnP6hK1H5gVn/hqABZpR4I2czapHUZCHVO1sH8UcN?=
 =?us-ascii?Q?oFWKUZNRJ7ThmuGh3Jn1P0+Gh+va9sxpSIYjXFeZFVwr5sOBuNl59K2i2eyW?=
 =?us-ascii?Q?gk1AT4yI+BLJPXO/3HnrGbVAN+nOwmbetohaIKOh3Jgmqhr9vToE+q+613E2?=
 =?us-ascii?Q?fEWy4kwTBhPNr5u9IDDJ9BlqhusSzTci9g5jE9dfhE5N1xTYB2+s/PseUnSz?=
 =?us-ascii?Q?M/sIw92llLwwRGl5Lv/gyR5ymnlV+iQLK0kEBSs2zka5gUvV3vHhmY3rWC1H?=
 =?us-ascii?Q?h1EdeYp1ZoNJ/lMASYfJiA21OAe+UrqfOl4xMHiHF5yjctm//vinmqhp3shP?=
 =?us-ascii?Q?/V832HXzciMjSXZhagiXwpv/4kVw3+lYjZhBNSBf/8XiEAHgNl1A/jzOFObr?=
 =?us-ascii?Q?PTXQjX+0jAkXLlTojFYp/i4fFtr6V3YfEJIkEqMEI7gdfYQKiCOvuAPGBR3M?=
 =?us-ascii?Q?LBRKQKCxoqhD1qXRhh7ySDd+1HW2ZF4i/gve5pzsYKAD44W0V8KM5lNVOl3j?=
 =?us-ascii?Q?Q5m/5X6f4kWdJUGf84hhTvpOplgdRr8qg/VscI81AvYGLqf9JTKfwVbd8nWf?=
 =?us-ascii?Q?FLPwpQW2UBPYCs/kMKicSh/LUIs3HIE/Ziy9M2G3nN4Vye/4vfMPLMc5vLlb?=
 =?us-ascii?Q?31qrAsgopWmYMirNpaPJjghdBz8V+HrhaJFDy2O45BB+Om6pQs+cuEgkPMWS?=
 =?us-ascii?Q?6k1BpfKbKWBwuuY39C/QkSKKu8pa21517qvZT/NzxNuQeMHCyBaeeM5aG7mf?=
 =?us-ascii?Q?Oju3qBAxUAmaq9t2t4GGTqg=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: ff3fa98b-82d7-4d4a-9260-08d9f86dd0e0
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 14:47:59.0856 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: DOqnKhmqPlz6JLxk+B1mAGeBVUN1eruMwd11s9ivOgNygjr3TsmpbYZl/YHr6gzenMaYUAIFjieFD/UAkf4dYw==
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
X-CRM114-CacheID: sfid-20220225_064811_515859_1D121027 
X-CRM114-Status: UNSURE (   9.43  )
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
Subject: [PATCH 1/4] ARM: imx: Add imx8 support for 18 bit SDRAM row size
 handle
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The current row calculation in imx_ddrc_sdram_size only handle a
row size up to 16 bit, the row size of the imx8mn DDR4 needs 17 bits.

We need to add DDRC_ADDRMAP7_ROW_B16 and DDRC_ADDRMAP7_ROW_B17 in
the row check table to support a 18 bit row size.

Consulting the reference manual for imx8mm, imx8mn and imx8mq derivates
for 18 bit row size support and it is fin by them.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 14 ++++----------
 1 file changed, 4 insertions(+), 10 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index e56da3cb76d4..8e2d9e0c115c 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -427,7 +427,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 		readl(ddrc + DDRC_ADDRMAP(4)),
 		readl(ddrc + DDRC_ADDRMAP(5)),
 		readl(ddrc + DDRC_ADDRMAP(6)),
-		readl(ddrc + DDRC_ADDRMAP(7))
+		readl(ddrc + DDRC_ADDRMAP(7)),
+		readl(ddrc + DDRC_ADDRMAP(8))
 	};
 	const u8 col_b[] = {
 		/*
@@ -445,15 +446,8 @@ static resource_size_t imx8m_ddrc_sdram_size(void __iomem *ddrc)
 		FIELD_GET(DDRC_ADDRMAP2_COL_B4,  addrmap[2]),
 	};
 	const u8 row_b[] = {
-		/*
-		 * FIXME: RM mentions the following fields as being
-		 * present, but looking at the code generated by DDR
-		 * tool it doesn't look like those registers are
-		 * really implemented/used.
-		 *
-		 * FIELD_GET(DDRC_ADDRMAP7_ROW_B17, addrmap[7]),
-		 * FIELD_GET(DDRC_ADDRMAP7_ROW_B16, addrmap[7]),
-		 */
+		FIELD_GET(DDRC_ADDRMAP7_ROW_B17, addrmap[7]),
+		FIELD_GET(DDRC_ADDRMAP7_ROW_B16, addrmap[7]),
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B15, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B14, addrmap[6]),
 		FIELD_GET(DDRC_ADDRMAP6_ROW_B13, addrmap[6]),
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

