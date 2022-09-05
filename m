Delivery-date: Mon, 05 Sep 2022 21:06:31 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVHQT-007p72-1X
	for lore@lore.pengutronix.de; Mon, 05 Sep 2022 21:06:31 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oVHQS-0005XY-Nu
	for lore@pengutronix.de; Mon, 05 Sep 2022 21:06:30 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vnf58OaMBO4A0mvlMjh0mt/ssMjP9c9AIrjDx+0NCnk=; b=4DIOYOPbW2kS3YHus2BlVvv+bw
	pcy9WU8wDYVcobmHZtqKl4CvkRJrbrVx+vMhaRqG8ta3jdklJbDvPHIGYGoTGsWW6JRFlySxNO+UP
	kwXAB2Wq7NnjGh+C1EvY2uE23hphVY1/Iv0Vuu3+8ZA9tj7TWnjOoyQmFInMDX4WFWlPXQwh20exC
	9UxNy/mB6fFEfppXxz/01eD44a+Y5Z3LRRzrqqb3vXHgn7nFU/ujRGNCLTYZoKf4QxVMiUvqyhb1N
	frqgs8zcmXtdT6G4hLr6BUGiXYAAJWbKFX/dk4JB4CM7Gz6n0fDgReimHL4gaOrUv9W49v72UDuv+
	ouskSDtw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVHNY-008uir-GG; Mon, 05 Sep 2022 19:03:29 +0000
Received: from mail-eopbgr80074.outbound.protection.outlook.com ([40.107.8.74] helo=EUR04-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oVDT8-0057Cf-IJ
	for barebox@lists.infradead.org; Mon, 05 Sep 2022 14:53:02 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dYNXQ0wdZgOhe8o+ABMRSVemnQFbKiLGEma6uCtrbkDlOlnTaSD9yfh/J1DXocrcPVBXURgJ9VhhtKvFzD4cdrZjTJ5Hs6199ETETFRTfbzddR/+waIIr0/VS+RQZNdzEx31uomKxTg6Isez7c9oEshYqmaVMacb2Cprc8UYR4aGrY4M6E/FOQzdh6R0J1CBT7tVOuhkPEqEMDPtISd0+HezDCN63UdGwlmxYJpRn30fTxKvK7k3Sx9K3/dmGiTYGHfvNijM0btWoZp4aAU1gWfysoCyuAOcf/Wuwf36wBJv0px1dULtf2gIjHzUtxWPKmqfVTv3BnMiHHKUGJJcZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnf58OaMBO4A0mvlMjh0mt/ssMjP9c9AIrjDx+0NCnk=;
 b=LVx7vi7iJrzcYil24BcCATU2Wpi3gsKd7Ggv/enB9JUno3U38+Qs/zZM6BJfOt/DqlXPIo94mc/8mBy+60zs3y+u43j8u2XZ3vdnQvLsRNc/ZU6G0h4YbuA+XEx85TlA6Rv4Kvl2zsT1S+TG9DtexQnnNsKxZcRZgOCfgY4jqrsQrqqYgnM9FeJ1xr1LsMXWBQ9Rl3JCjqd0+eKTx/XocWEIwfb/Pcp/oynoCIB2JifJb/sjzCtzRMR5K/Oas/LUT95VoZG9k3wQARJzfzZZDGDoexL4A1pazGdOcyJzIZ19ugtvHPvdKPd8pZ7Nu2A4ADOxnG+FpFG9RpqpMzrG0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnf58OaMBO4A0mvlMjh0mt/ssMjP9c9AIrjDx+0NCnk=;
 b=e9CSDuolrCfJPj9Z1hR+DrSgH8IU5lCldBEdIYkdjuR1d7nvt9LtvUtE9WksMrdUA+Dq4nm0l9lO9Ofa3ZXkdkAGT0sAA87ukoyJ0tkPNYnbD7hy9YZmi2d5vt4/JHJOQtixqslmoRSkQjS8ymeNpPy3nYmLyKlNX6hJgxSNUQg=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by PR3PR08MB5756.eurprd08.prod.outlook.com (2603:10a6:102:90::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5588.10; Mon, 5 Sep
 2022 14:52:30 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::f1b2:3979:a31a:c30d%9]) with mapi id 15.20.5588.011; Mon, 5 Sep 2022
 14:52:30 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Sep 2022 16:52:14 +0200
Message-Id: <20220905145214.290551-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220905145214.290551-1-michael.riesch@wolfvision.net>
References: <20220905145214.290551-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: ZR0P278CA0064.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:21::15) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 1410b025-7da7-44e1-e48d-08da8f4e4203
X-MS-TrafficTypeDiagnostic: PR3PR08MB5756:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	yDvmidyfBjQgiPj5tPpZdU0qlr7zluaDtmdnktXJtNuXekLzgUEMV5WxO0puwecXbPV0x6Rknwf+yBsgsH7keNGeCJpFTHID613YiOWcAHwE1CjtATzb/ofwL6D4rbNJpzB13k1o2+5AjT/KklczGe7GGbHOMz+HnUQWcvl+wRZEI8A7bgFa58MrKyaSBHOtiy3+TsAxArnESYEFLI58kQYGmosc3pZLn/WJvLC8x0F3atvNnQkYa7FfZi1X7xxQork0tUd6DlBNWN3BXzrCXbkAgwetgh7D8mB/aUsrGAbc9S618aqK66NMnhGIrGimnPKC5BxBV7MAxVomPYdmapSQlu78o2vWk58PoPWEHaxPvAkjj4d9fhmWCCRDTqGD6OVEBf+Rc8EZ9PlPcRjnOocUDpUM0Lm0atxEAlhhpUrJLVC7z7r3Q1ysA3iFGe3iuMIOp/xJUYXgbUxcEpmL0G9YOKlpLimaig6IOySmztt4haez5erRwpgEDk6ojD77YwjxSX1ESHYvC7eWDp7SBk8y/TsbptAVh66ZYCUlLjZTpFM/pAqWKxpMlUkXNUyO7XslGIWbIHDerWjfBK+CR+dbErsorwL0yQ+//X4Aa+7nwX5kvVpkFsUH0Gzkecd77N8pcPo0ad7Q4azCql/tG/1ZpGVQeMj7ASx2f3p7AVV/TuqcMBa2mM4hfAF61PXEQ+bodbPMYrT3nWMBiRdtQw==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230016)(4636009)(346002)(376002)(39850400004)(136003)(396003)(366004)(6916009)(54906003)(316002)(86362001)(36756003)(44832011)(2906002)(38100700002)(4744005)(5660300002)(66476007)(4326008)(8676002)(83380400001)(66946007)(66556008)(6512007)(41300700001)(1076003)(2616005)(186003)(6506007)(107886003)(8936002)(6486002)(478600001)(6666004)(52116002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?V/iGQ3STgeF6oOOimPbRy4pPRCtp+gswfvxw2B1kFdDRUMARF3t+6PcN0vpx?=
 =?us-ascii?Q?N9RvIV9Xvq5mfVLavJK+hbJEDUDG/KDByTaIr4ZezlR4Me+Ak4MiKyQn+LIc?=
 =?us-ascii?Q?41vrj0PGLBNS/KGodBYSUMvsTFFaBntMP6POYgD/UlbDtjp5dxMmjGPGdFsb?=
 =?us-ascii?Q?eXSJOMfHypxCF7vy0QDCHEF2wiE9TEF6ougdHo8TPMqcO0aDe46V8v9NOhUP?=
 =?us-ascii?Q?ddqbW0WlKgFzzuZiUg9MyAt1THhJons7cVwM6DSm44b5KzfA4nle77Y7vH0q?=
 =?us-ascii?Q?vWu9kFPszGMuRYlejPiGZM8pxkc2L3R/Xfijnwk8TpTM2CUwA9QFBiSZLP8Z?=
 =?us-ascii?Q?LTfajMnK4J/FE53AaDcZMVfh1nmseC2T2foVNbikArIpfc57KkKhdPucXhzf?=
 =?us-ascii?Q?UlI65XTPGDcpkrDQ/EFQCxkqW+3ABAaGpz3ORHrbSsmzwujklhfBanfpw982?=
 =?us-ascii?Q?zzBw7iECusrP4BfemRrtqjFdxu6ll4D8ksu5ZGuIjS31WBxytaOsiuRBGQWQ?=
 =?us-ascii?Q?a5RB61w4t8VUn1BN3cGToUUe7qDs1gjyI2f4dX2dS9mhG17W4VhhJl5/Nt25?=
 =?us-ascii?Q?XqzH/0F97bwedWOxqEyb8lKutzstyzV3JmeIheP4x6+7bVDhbOxUfscD2gFe?=
 =?us-ascii?Q?dvbZUsji0+oMeyrbMVQguy3+V7fZDQkkVzfdsR119NHePaqtoCglt9cq+Qor?=
 =?us-ascii?Q?lNJ2NAp7ONIdsCkGV/j3LrFM9qhdNLm7MqyJTJIAcHnHi9EdSaS5mjo1MLt9?=
 =?us-ascii?Q?vfvAG0UJC/MFiBXvDzYIla4OOjcqyLWzBxrmW7/CJOUu0Oi/0Xaz4Q0FtyiW?=
 =?us-ascii?Q?yqqNetPZbofEIaLIIsSWx3b8THxSQqr7W76r1d7mh4QrCj2I0E55zS+LEerC?=
 =?us-ascii?Q?k0T1/7gR1bZqmk5uns/xuIIpzf1ZrLTVLxsXqmYT8ugx/kb3TiST6cPQacgC?=
 =?us-ascii?Q?XSj43Gp86MwCloq1dd/fMoW7UU55qHEckXjm/hVXzVHF1YIu+1oC5qeLG8qw?=
 =?us-ascii?Q?/qivlmED2SCAKHrd6HBXqrR/Fp6HvPD37AV4rPxF8GKXa+vGgvKIS1qIRBy6?=
 =?us-ascii?Q?jeuKXeecy8rnsw8PeHne/41Ebp/A/xoGhubxk4Qo4tY+rzOxXwQWf/+WTYbA?=
 =?us-ascii?Q?1C439Xm3WcqcWuZCvEaZDG4nThpLDzuverfDRQ9aJZ8fx2SX1Xvcery5K3dY?=
 =?us-ascii?Q?rDW3Mf6wDla++pPoNuEj49iXFs2djbF67RvHfcBNuUwvIzWDHvG9wwnciLXk?=
 =?us-ascii?Q?JqVWJVgrcbPujRu+0dZ01gxh5grfwBi79olluxF0yV6BfgUg/SY6x6g4f7Lo?=
 =?us-ascii?Q?KLBeAd4m16MuEbw/GNGfm7rM+rRQfn2Czzpgp2vG2KjbvS0bk7cSnRXlcYYw?=
 =?us-ascii?Q?ZK4XtKKQh/ArjA5oBV+b58koUlR+Er1kzAJSyauC+q33p87Kl377vKrL0HQN?=
 =?us-ascii?Q?934oxBYuEvHVpoVD4hD8mMjQ1/kztBXYJdRI7WYZ8294tq74rBS1bL1JzEvA?=
 =?us-ascii?Q?Ggyj7Fk4RguLDhL0ZzDRr1mlMY43mJhdPyi7LPBNHn3zkPTBNyDJq25zXMOq?=
 =?us-ascii?Q?u22kFTCYXTZ6zOxePb1hiyBuWrdN9YcjuxsDjFRQB+51TRWHnZYA8aLFUgFG?=
 =?us-ascii?Q?GnZ3jPNkOx0AsNuHFx6fYnQqNXt6fzvbnGqu/2QeKgyb2bTTnsAjXyXQt6z2?=
 =?us-ascii?Q?qdikdWrzTqj9D8mA7TSzrXtGqcQ=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 1410b025-7da7-44e1-e48d-08da8f4e4203
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Sep 2022 14:52:30.5524
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 0bqGfH5kBYkARScmVaknX5W0/ySs/fH6//b/13Y0uZvVoK/lyqMzmHuj0EtnGOloY2843fIFxjWzBDlUPLOqnbLBIiYD/dik8eLuMrBYsK4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5756
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220905_075259_550876_E23978A5 
X-CRM114-Status: UNSURE (   7.46  )
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
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 2/2] arm: rockchip: radxa-rock3: remove io domain configuration
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Let the recently added Rockchip IO domain driver configure the IO
domains instead of setting the bits in rk3568_start().

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/radxa-rock3/lowlevel.c | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
index 00a68889cd..5c2499362b 100644
--- a/arch/arm/boards/radxa-rock3/lowlevel.c
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -23,12 +23,6 @@ static noinline void rk3568_start(void *fdt)
 
 	setup_c();
 
-	/*
-	 * Enable vccio4 1.8V and vccio6 1.8V
-	 * Needed for GMAC to work.
-	 */
-	writel(RK_SETBITS(0x50), 0xfdc20140);
-
 	if (current_el() == 3) {
 		rk3568_lowlevel_init();
 		rk3568_atf_load_bl31(fdt);
-- 
2.30.2



