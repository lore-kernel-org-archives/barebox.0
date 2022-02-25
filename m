Delivery-date: Fri, 25 Feb 2022 15:50:09 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv7-00A1Uc-Sc
	for lore@lore.pengutronix.de; Fri, 25 Feb 2022 15:50:09 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nNbv4-0002qU-7P
	for lore@pengutronix.de; Fri, 25 Feb 2022 15:50:08 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xykmGJggbBIAJsWRsWIgO5NpGSCe7w5kxwZph7jGOK4=; b=Dh+Azp5wAqv0+Q
	soZ7B414oDhyAJmwM+cilPjdQUcsk7Aw8HNBU+ok3mw2ArttE/LRyWq7SjnlHelQm0HfJ+Ji1dYHA
	A8vhLOOlyBF0DpTYzsTTth9k5o4n38lnT1StTQr1Xajqhw3cdb58AQhzEJGiygo7wWqWBECcn3KZ7
	ekbmQEgGdw7PBrU4uqd4EJdFRDtZWqs6tzTK7sU2oJjui/PG8cUvHeZ3O/3HxrMhk5jpSy2kwANsk
	EAqw9RBln4DTqo9cmdajxMRm75l1fVdixOGCDPT6o7z57iiQ4I2IWt7Wdoie2rQfHL2CeXtX9Of6R
	ljcK+J00fxdzaPH9g8BQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nNbtf-005RqC-1W; Fri, 25 Feb 2022 14:48:39 +0000
Received: from mail-db5eur03on0617.outbound.protection.outlook.com
 ([2a01:111:f400:fe0a::617]
 helo=EUR03-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1nNbtI-005Rep-Vg
 for barebox@lists.infradead.org; Fri, 25 Feb 2022 14:48:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=H2ENcpk3fWmGdlfjJzo+aJ9+m0zdh8Ae0HsX1r99xnQSPXByirEAh3fITPnbdQjbLiCCi0zwbXztARFff8FFHV8fsnVNcLpN01D1NeS25ru7kKSC386P2KiVvJJ0Omv+cNC8wdhpW02hYmZsKbgu/vDXc0yeiJKX836ud2WsDFoGmwwermt7qPfUJcm6OVlSpI587OnnI7CNmfgWNwUUEKVjnC34cgYZrw5xjNFFi6oM667MOltHKOFd3aimNXvnL73YF/ZugSFrDjI+wVAdr+FY/8xWIHLZhnxFdT751B2f6EuZricrTeO8AxEOg6+wwQJxSq1ousmYldKs7ZMbrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=HA0+RtxfmprX1MnyOnMaBxhjvl8cLXFu8LbdcLLMrT0=;
 b=Sg7o5F/4U1duV5dNwF/SP2d+R1SaRlI6KHuX9IZVjNJeq0yWvqxj35G24cd2gyh0n9NUWBkgivhzABJFsejWpwExR/HjO4C0UO32zGhA2u36PIMVI5F/LVmg/04dCvzam/OD3WiQpmO3JPsHGneH5gVLaDRgMiE7C9KDZPbfugOGifw2OITknPrUrx9vaGLlCElywl47vY60rsf+75DebRkN3ZqZLAi3lgVa9t7wIVcdOyZHOp6QMhCI6NvG8IfePobAFcs7+YntU7EsnHeazsMtnhiEK/bC/GrHltc7LMKKCFFBCrRrLxcUUJoOJASQnTS5KjCCjpEnM6J/GCG9zg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=westermo.com; dmarc=pass action=none header.from=westermo.com;
 dkim=pass header.d=westermo.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=beijerelectronicsab.onmicrosoft.com;
 s=selector1-beijerelectronicsab-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=HA0+RtxfmprX1MnyOnMaBxhjvl8cLXFu8LbdcLLMrT0=;
 b=QIjE9+jR4aYMcv+mVLfrdh0+WVutnGV3z7AIcLIWwn8PBiYwa/9wJ2fmyVFJNy4+j1KF0yF4llSEbyEuNz+bsCEoP0OtHHT+POpzLsnecq20AXAQ89kyzn48vCu6xEj///TKUYJRLc3d6ZxNVJQn1BY2ns5M9Bx7cbrp3lWRfTc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=westermo.com;
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM (2603:10a6:3:105::10) by
 AS8P192MB1397.EURP192.PROD.OUTLOOK.COM (2603:10a6:20b:3c4::23) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.5017.24; Fri, 25 Feb 2022 14:48:00 +0000
Received: from HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36]) by HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 ([fe80::4da6:577b:c682:de36%3]) with mapi id 15.20.5017.025; Fri, 25 Feb 2022
 14:48:00 +0000
From: Joacim Zetterling <joacim.zetterling@westermo.com>
To: barebox@lists.infradead.org
Cc: a.fatoum@pengutronix.de
Date: Fri, 25 Feb 2022 15:47:51 +0100
Message-Id: <20220225144751.4160843-5-joacim.zetterling@westermo.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
References: <20220225144751.4160843-1-joacim.zetterling@westermo.com>
Organization: Westermo Network Technologies AB
X-ClientProxiedBy: GV3P280CA0055.SWEP280.PROD.OUTLOOK.COM
 (2603:10a6:150:9::27) To HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
 (2603:10a6:3:105::10)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 38d129bf-3476-4e81-1f9f-08d9f86dd1d6
X-MS-TrafficTypeDiagnostic: AS8P192MB1397:EE_
X-Microsoft-Antispam-PRVS: <AS8P192MB1397960ED909DC094160D13F9C3E9@AS8P192MB1397.EURP192.PROD.OUTLOOK.COM>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: DYxXBYXTcCYDWl+Kjfs9+6g8DlyukvNjOrx6ykUtOox01Q8XDoEP9LYAo8EvKdH8EVxlhRS1KB3hITRT/w/mrcgH17TS6nxnH7Zbrm0SZprikgMbDhIgbXtf/PhpcjI61pYxJXbGMhmXA00HXErwrhmoyqDEjkb/Epro2VDZKHUkvqYOWxDFpUyorGbSiLPvgM0hdnUfAU1kS+EaiLXED8VPEkZPdJt5odDUmpcG0yRRplkqec+MiIKD+Rng22OVddENrogpgM6APeE1yGNqPJ9q9bxCaiolSr6p93mMSCC0quioChyx0AVPnF4tfO03mUgOyMmmDOzHDtuu3pqEWFNzaA1qBNU5VrzJXfjsbTzcftkcUeBofzNFU3EmvYF1yXeVttIITRqjK2aDMuJEX0YHm27ucz1wvLzl4EJqjDc8UYq3fHTQXNj6f81fOZlBLTUFSXffvsrrClgWAiYoGWSeJ6xgtOprKDcPWr3VApT9JZeowfzgvf7M5+cyrJFyQMRmLGx627pY2BNShabsWLlB8jlS3PR80PrNudIi0nS1TH4eBaO6/UiKUtJY6e6YM01/peCuW/fyLoP+PwK+34hVW3Nh5LuKh0cguMSRdAmQ85vx5D9rwtBSTsnl17ufDr+6Dv6uaxZ5+lrY5x17WXBAF2mTg72K0tQLD9J2TVzoVGM3RPWRnceMN6HG+JGY/DnHe631cBiAp2tGGuUm4bDIxNWK94cttvIVM8O0fXAylAzjjEcIkFSjjLpz5Gfl
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:HE1P192MB0251.EURP192.PROD.OUTLOOK.COM; PTR:; CAT:NONE;
 SFS:(13230001)(4636009)(366004)(316002)(36756003)(66556008)(66476007)(66946007)(8936002)(5660300002)(2906002)(2616005)(4326008)(86362001)(8676002)(6916009)(52116002)(36916002)(38350700002)(6512007)(38100700002)(4744005)(83380400001)(508600001)(6506007)(186003)(1076003)(6486002)(44832011)(6666004)(26005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?0sC08nrCmpKPQSdkNr8IxOa65L7gKvRoy6O5KN2bKhLrvpd3IaIZbb8oQpX+?=
 =?us-ascii?Q?vLZ6xl/fchUbEwdHe9XdN7J3Ljcmrlfa1h6JL+ONBJDVB4C44rj0432qPniI?=
 =?us-ascii?Q?+nWVDzvC/tgWtQXOCxsjlQAvWqpUYODLm6n9wnUoo02Nu5Za6uzeDISfUT/u?=
 =?us-ascii?Q?spZ0E/Iq8Tjp++d/Gf9L7ABJcR7+Vl15YWmfwi5GD4x54W+WDGrCKBXvZcvc?=
 =?us-ascii?Q?MJBBO5KCBqF3rIvH1BoX1qxtZ9M8yN9BhLEYuHMsnI1KBuO7nFhlVYEAcbPS?=
 =?us-ascii?Q?zpn266OYp7wi0rhhnvxUJIsQ4MX16MtoMzMgQXJbm6actweNIkVlK/ILi/lo?=
 =?us-ascii?Q?uPClbz2QMONS0ObhgbGHfhRLAEiPZFM2qVSiJ+pTOibwVcpRbGsgoioeQdEX?=
 =?us-ascii?Q?aTsvgTneBAdbTh7QKyP7xWMmrjTZVHrINkXSUozgEpcnQr1AJ/X0e/+0Ukft?=
 =?us-ascii?Q?LnnwJBZxqd42qmhq81HTeha7VFUpSU2HQaiPn3AGKW4tML3OCWAFcnQ+otOQ?=
 =?us-ascii?Q?YuZpdDHdJyabTK94rf9H+Pia4S97NpwLYSJbSQ2gxymqoQh47vyM7A0liEGj?=
 =?us-ascii?Q?cfPGJ2zHlQwj9MQK9M5rKdpYL+vxFfF5pzKocPqmp5rBTO3A0mrodg6F/PA+?=
 =?us-ascii?Q?UinVSDMSvKNIyvfQkPNzTw9du2fI9GPmLjnqExbvcAoVUfhPoQiFf2S/QDsl?=
 =?us-ascii?Q?VOo48kJ9OanAbSGW+vxFyq/r4Wk2iqtlGzIUDT2Lhd0pf13vkEM6X0SFXQtR?=
 =?us-ascii?Q?aCylTzL7D2cgnyArq3Ua1fMruh/EUMV0BH5/c/6aDiY3/nKxE5S5ozYuB9Nd?=
 =?us-ascii?Q?yzI9bAYzUwAjPGgdFcC3ry2s4f0f2qUEwTi2hbsy+xflDMS4z16Q4qysGaSm?=
 =?us-ascii?Q?NMsw7lZ0k6BG94pqJtDKsKExWJzfErD2CJNt4e7H44gURHsFD+If+CEg7wr9?=
 =?us-ascii?Q?b6A4MN5S4pdrtJbODQjfjPPuxx2CoJ5Gei9/A1nL1QJzrXh0Jgjo2hBOoMow?=
 =?us-ascii?Q?kQZyAGSY1EAanaFisnCEdbgcWhuMXhN+y0GuLGk8HVJjz4PN7BTCgG5EG1RV?=
 =?us-ascii?Q?KBUeA9/84I4kpN6ek8g0GDI8TvideRpn0LljVpjwWU/0SDUoM4OUrx9Uot9H?=
 =?us-ascii?Q?JwMM5BukF+Vxo8XZyIjmCabB73LvOu40hAqntBu5ECmQKvf8Mj3WT8fvKGLQ?=
 =?us-ascii?Q?oR6xptF8GEGXWO1n2T2l2DXBleM9zutviomdNR0Oe64SiZtQLzvHcBfgKgEO?=
 =?us-ascii?Q?V7z+ioyGg7m/fatW2Mm784h2DdjjTsVQ/C2DeeQ+6g99YYHj1ssS/75a/ijn?=
 =?us-ascii?Q?69gRKgXBoaVr6dcROwIbGvYqjRUKTgoXljqbJ6W5OE++5kdBVHFEXJAZFfed?=
 =?us-ascii?Q?n3IvIuKJhpdgdCeAkVT10BoihJeZFT04xM2bCd7FvenWtvMyzLg9oAg5ZzI6?=
 =?us-ascii?Q?62JD3LaRLUoLdZ1hqdBNSbf0zTXnvtImGC6u8y8ghnm3CUrFUrVbeHgU/TQK?=
 =?us-ascii?Q?JyPHQhrE2X3qZIu/VOAv8fTGs0kUjup/SSVGdn+gfuz2sAuC5ZYZmqtdzFyy?=
 =?us-ascii?Q?0gTwiMOaWV0lgi+2oXkQ0PuT4mY4en81fVc/Y6Mi9A01qqBgbpAawlsj4khW?=
 =?us-ascii?Q?UxQZ99FPOouxE63TCuqn0IY=3D?=
X-OriginatorOrg: westermo.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 38d129bf-3476-4e81-1f9f-08d9f86dd1d6
X-MS-Exchange-CrossTenant-AuthSource: HE1P192MB0251.EURP192.PROD.OUTLOOK.COM
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Feb 2022 14:48:00.7105 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4b2e9b91-de77-4ca7-8130-c80faee67059
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: AxvH/I1S+1Vk4vX6vfPWK8hz71rlrsYdA5bVdHEzIRygqSiQk8z6PtqeHL0+IrOeMyEOAzoDDhXQ9/9lVtl0eg==
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
X-CRM114-CacheID: sfid-20220225_064817_070269_B57006E6 
X-CRM114-Status: UNSURE (   8.87  )
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
Subject: [PATCH 4/4] ARM: imx: Correct bit count function
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Correct the imx_ddrc_count_bits which currently did a wrong
bit check (stopped after the first check).

Tested on a IMX8MN Evk with 2GB DDR4 and on a IMX8MN custom board
with 512MB LPDDR4, checked size and made memory test.

Signed-off-by: Joacim Zetterling <joacim.zetterling@westermo.com>
---
 arch/arm/mach-imx/esdctl.c | 7 +++++--
 1 file changed, 5 insertions(+), 2 deletions(-)

diff --git a/arch/arm/mach-imx/esdctl.c b/arch/arm/mach-imx/esdctl.c
index 29333340318b..d3dbfff423da 100644
--- a/arch/arm/mach-imx/esdctl.c
+++ b/arch/arm/mach-imx/esdctl.c
@@ -355,8 +355,11 @@ imx_ddrc_count_bits(unsigned int bits, const u8 config[],
 		     unsigned int config_num)
 {
 	unsigned int i;
-	for (i = 0; i < config_num && config[i] == 0b1111; i++)
-		bits--;
+
+	for (i = 0; i < config_num; i++) {
+		if (config[i] == 0b1111)
+			bits--;
+	}
 
 	return bits;
 }
-- 
2.25.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

