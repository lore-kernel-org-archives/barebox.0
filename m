Delivery-date: Thu, 09 Feb 2023 10:58:53 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQ3he-001Woo-3k
	for lore@lore.pengutronix.de; Thu, 09 Feb 2023 10:58:52 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1pQ3hb-00072k-CD
	for lore@pengutronix.de; Thu, 09 Feb 2023 10:58:52 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:Message-Id:Date:Subject:Cc:To:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=TGWHubJq6UX4RJ/akyCtBTK6QgyUM1vIPakJaCeWwYA=; b=xvmgQdfkzOcaEQWD5aUh85go12
	m6UCbv4gLgL17tkFzVn5h0ARq3To/Cvt64Rm/CxVTavVJ9be8HN7jY3176ORiO8f/swnH1HWZz7Za
	0LwsBob8oBu1wuRssm5E/wca3iFZHyGrgV6kCTgtoDOe3rO1tkdV3f/Ve3VR4BSv6x3EAnNNbCmD5
	XdmK/VS/OElmmV2ZwMkvtwkYtKj0HgLEOG5Rd21OIIxHhopab6ZZR/G0J0Tk7aRCYQwBaDUHFdVFP
	y1oFgGjIHOm1Tb8R1Dd0XobOD5zj7VsKqnU5A6mM7GV9di0xXGf37d/BCWzs/a9KfS0fKvVWa2Q0n
	K/jTmnrg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQ3fv-000wkD-G5; Thu, 09 Feb 2023 09:57:07 +0000
Received: from mail-am7eur03on20618.outbound.protection.outlook.com ([2a01:111:f400:7eaf::618] helo=EUR03-AM7-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1pQ3fr-000wj9-0G
	for barebox@lists.infradead.org; Thu, 09 Feb 2023 09:57:04 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iW/6FZWMO1AjuAGQVdRYHy9DOQK7nBtzanTueMaoKWNM6dqKHExKW4qZfkFNlflWI+7d5O3CfxYU+MIJFKqYlsSyIaIwkQEe5QcwhATHVJAV3/o6fivkdmh5RnAJ7tRga2IbM+NEiqIG/8nFQnbp2YZy3PnBn0iBH0ZfG27D6Q72DEbSIx2uaTdtBOeaBOFrsfbv5fH0/buVpKmfnDzYQyp9ZVpPosj7hyF3drF7+roSbPZAqznDtP6xe2rjWym4EjcB4piHtCN2pFRLB0DDoi8d4yuHrvyEvCRvbKpCB5nWeYIIX4+TXzI3rmfPADupe7pV0uMPkRbiaJN54oPDKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TGWHubJq6UX4RJ/akyCtBTK6QgyUM1vIPakJaCeWwYA=;
 b=BBKwPy79sYvc0UKVlRr2ESVfKVXGviNbvGgBn1ZhyeJDsIvmWSxtMnNH33RHDkm58UivrOb5iQMHqT7VYvZJYV2mHeCu5NmCe3x1CmH7/OlXdiNSrJQbLWEiRcXvaUH4azUVMfcGgGNkvZHPYrWUtZ5276mSHeMKO0uhiGgOoAMrONwrNPCLAxO+mX3EQu64BYNnQ4Tn7Cq+Cky6DYoY8gJdSITctFMmt2MoNqg6qLmJg4VayxIC7K1hyPe1x1QtL6d746PTBppRre40QI7WpNw3tZD5juepf6PlsA4/ChFbdGRBRL3HTbi7uCU3LUvsjSjOL9Mh7QfOpkFLLBmzSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=TGWHubJq6UX4RJ/akyCtBTK6QgyUM1vIPakJaCeWwYA=;
 b=BeuQJhjZN6U6hKzHMbPp2vlY44I2ZV14VyCvNgJ6OgASqRa89TfCvcXmffkd0c/uPFuZHrQKdVKcSQ8AU36AEC+mfw+LEHlKLucjicwS3lyOW2SGSqmmT/AWGBr7xNAB7el3cYVA/+6G4zwXlwYBVvandsQbJeIK7tjqXPJI6Lw=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from GV1PR08MB8105.eurprd08.prod.outlook.com (2603:10a6:150:96::19)
 by DU0PR08MB9656.eurprd08.prod.outlook.com (2603:10a6:10:446::7) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6064.31; Thu, 9 Feb
 2023 09:56:53 +0000
Received: from GV1PR08MB8105.eurprd08.prod.outlook.com
 ([fe80::89a8:d73:5d64:68ea]) by GV1PR08MB8105.eurprd08.prod.outlook.com
 ([fe80::89a8:d73:5d64:68ea%6]) with mapi id 15.20.6064.038; Thu, 9 Feb 2023
 09:56:53 +0000
From: Kilian Strasser <kilian.strasser@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Kilian Strasser <kilian.strasser@wolfvision.net>
Date: Thu,  9 Feb 2023 10:56:40 +0100
Message-Id: <20230209095640.47469-1-kilian.strasser@wolfvision.net>
X-Mailer: git-send-email 2.34.1
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VI1PR09CA0071.eurprd09.prod.outlook.com
 (2603:10a6:802:29::15) To GV1PR08MB8105.eurprd08.prod.outlook.com
 (2603:10a6:150:96::19)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: GV1PR08MB8105:EE_|DU0PR08MB9656:EE_
X-MS-Office365-Filtering-Correlation-Id: 0dc9b902-73be-44c6-90bc-08db0a83f896
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	XF4TTKbCbkF8dkBI08I+SY4OQozkq/ychnmoSyAaDe2SAYxcyEVjsvuKhvp6BDitBJks0Ed2yT32xeNQ1lXuuIATe6SZsgteN7sJEEekCAr0/tb0Tz+Qpflz8GqEzT29k7yhc+m1urCWE1NBdrnYACENA6JNXhcjszWARQMnbhTvWvwbwajrkmnWar2o+TcLyk9H1zzFSAKnog8RPVHMNnTbQ99N9I5KiDpqq9mzPT3zo7h4AvA4fjaGvdZzILSf3SaFH12lW+Vzvm1u7Q7LOol+Xy/SGV2c7ywwtiABCvJUJjAPIpbuS2EBNrjdc1R1/LkHzysb9OHkoMo2IUgvKakIMr+TK7M96apkuJ2xqh0fDjMLaYeIUSWBgz6CPRlbGvCozKqzbY4tYFEU6AaTgfy/5x2yTW/21JptbTN7AnM/WfSUOzHgYbDyAduVfjTAY4wT76t7mokR6s8a1gvfteGIIVzSwSCJtITF9+K0ubU69Oymfw8hz09YRcFYkxoJDybZ9dIquqiZN2MZFQQJ9XSe/nXEeZQPb0QUMLEMUdj75D5hXyh+m9CgCnqqAJZh3uOdf7yXHPfa4fdu1NmLODQkynvqAneVUbW+sZ1TGfCKRzjEQUAFH5sQs2YJvHZFBivKiG73Gv84Smywmsz42RBqPeln04IGlyyq1lBSuv6DB07UbXCBGZNIrt5fyNSN+nuyPdvBgK3O1qy8LqzknA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:GV1PR08MB8105.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230025)(4636009)(396003)(346002)(39850400004)(366004)(136003)(376002)(451199018)(5660300002)(66946007)(8936002)(186003)(26005)(6512007)(41300700001)(44832011)(86362001)(38100700002)(6916009)(4326008)(8676002)(66476007)(6506007)(1076003)(38350700002)(66556008)(6486002)(6666004)(52116002)(316002)(83380400001)(107886003)(2616005)(478600001)(36756003)(2906002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?CfpLEEjVv6qjYz960nbO8LZiObgWGyt+GrlqxZrIesk+WS3tNE77Yb2MZEIJ?=
 =?us-ascii?Q?lfwM9dZ261izV2nkjvvGcEnZsEMob5EXjq+d0SuVB/14sWmlK8jD3C4MVTsR?=
 =?us-ascii?Q?q6bWFAtS0zLnbe3i4MnW8TdnRVwICzph2CAuMR7a3ezCrqNViOEj4VXFd/yq?=
 =?us-ascii?Q?Z6EhM58If6BusmHo1PYF2Vw5JP+nXUIdCAvFwAeP9ibmFO7nuM4aoFx+sUDl?=
 =?us-ascii?Q?4ufWNqotEd7YajUNCyLdkzQrRf6vcttc65vtXQ02mcFtuAjN92/ue7tixJPb?=
 =?us-ascii?Q?edgJkIlkv7VooXUTS8c9/ohvAiKO1+SctGejT76LvFBp/9H5LMtw7QCHgwQx?=
 =?us-ascii?Q?m5ZALQyQNz+E2Utz+EsVpSm27yJ4ogPd34E/7D8palm8xTqN5mYxhA6MxocH?=
 =?us-ascii?Q?BTPreQ+TZ2R89MvL/p/CSTNGVAKBetL+IXyZz49fcHumleTscW/2Z3dm1LPQ?=
 =?us-ascii?Q?qC5d/x0ObPH+zB/DpOkiTOqNIMrE39Map19TYO7X3//CkbbidcuSi94WS1oh?=
 =?us-ascii?Q?HusY8L9h5X7mCG0pCgmtppZKMK2R5U23zW5U6tx/FG8Va1ha9nzI1RvN0m5J?=
 =?us-ascii?Q?5c01R61lxGe1+QosCfx+sF5/h2Gs87a3xLMcPDQZj+ingIZUU/Cx9j8F0bXu?=
 =?us-ascii?Q?LtWVBAcMepxPxpCDpgSmM5fBoHEnjYrnmZkQCSgFcmfqXgpMyA9gjCp2Pw+O?=
 =?us-ascii?Q?vR56h7/SIfklsauSRo8IzFvXRxyqE+Y0KfkZDgG0Pmp9vkFrl/pOwFiVQZQQ?=
 =?us-ascii?Q?2b5mcaum5SI8kieGvkmiknWx2Bkn1LX/cfnXMhXj/lKtmMjG24Au5Qq1Gu7y?=
 =?us-ascii?Q?O4nGJjtu9+EZ7kwKBlijFtGjIspl+7OwjJGBcDARxwxavQc6IFmT4r3Vd3Ao?=
 =?us-ascii?Q?scJQVesu2ZBqNsQZUf57jT2tTojoLpwtq5CLR0EcuzWVGvBxuEU5yM0e5Pr5?=
 =?us-ascii?Q?5QPSm6sYIjOgH02ClgfLOlJj2MeDzv0gu934lD+CjVvmEMtpbg7VBmfSh1a3?=
 =?us-ascii?Q?c+HsYgzTio8QKki7n7UnJkphgKStLMR+VdO3uP9uqbyiqO6tnBXFPaPWAMFL?=
 =?us-ascii?Q?hRsLQnJL1CKLFrPDb0Mt67NOVV2ejst9DfOQNPLC1qYBGbjOW4g6ZQVuBlbE?=
 =?us-ascii?Q?18MqiTol2pmBIYAAmHiAGzVJw3SVIzSyZQBlGB/ato7nhZcHC9YbuEKb83Ax?=
 =?us-ascii?Q?4+OBLP7r1ZfOXdt6qEzhtMSGkMRWG85YrPilCwaZif59P3yEcnnRV1ZjamLi?=
 =?us-ascii?Q?xE0AJmOd79eI8le8AzQrmhm4RfPOR3pH9ks+d0QxkUqNkwbAWFfXshtRFlXb?=
 =?us-ascii?Q?vJP2LjXh/IdTM8uHqr4XS4lVP97p2IBCQ4xm0MrhFVDXEgEOptrwohnihs6S?=
 =?us-ascii?Q?suEvYbbTFuzqLBrpPyrzxDQiTbZv2/oqJ7ojDLLoSPcHp61vnn3o3atLbI0B?=
 =?us-ascii?Q?66zPwAJjc4k1hb/LFxdDRLYR79//fyQjvtpdHD0qQfTZ3xyVRN/diP6auDM9?=
 =?us-ascii?Q?UAM6kAU3Osyt+qVHrUEHnpRY7b0/g6e5Lu8D1z8vMijAiiI9TCLieXnhnZ2K?=
 =?us-ascii?Q?+xKNHOVNvoWUjw8ULMbz6FnihvV5UzPwUoE6/dD0K0/uriDaBwvLWvxPCfoY?=
 =?us-ascii?Q?PK76NbjFmWGEY125q9ghX+k=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0dc9b902-73be-44c6-90bc-08db0a83f896
X-MS-Exchange-CrossTenant-AuthSource: GV1PR08MB8105.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Feb 2023 09:56:53.2698
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: SsK5CDsRC+vNx1bv3IBCw1A2Rxft0IrLX5argkl3UEnDqnmHyaz7fIFYCxO45FPuESZIqJ8Me7Ierk+IZtd5PKXd6miUelH0Vrzy6i2z09I=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB9656
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230209_015703_304027_982C9344 
X-CRM114-Status: UNSURE (   9.63  )
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
X-Spam-Status: No, score=-5.0 required=4.0 tests=BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	URIBL_BLOCKED autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH] pinctrl: rockchip: fix get_value
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Function gpioinfo returns wrong gpio values.
In the file pinctrl.rockchip.c a wrong register offset is used by the
function rockchip_gpiov2_get_value. Also the bit-mask for this register
is wrong. Change register offset for this function to GPIO_EXT_PORT and
set the bit-mask correctly.

Signed-off-by: Kilian Strasser <kilian.strasser@wolfvision.net>
---
 drivers/pinctrl/pinctrl-rockchip.c | 9 +++------
 1 file changed, 3 insertions(+), 6 deletions(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index c99074407f..66d700d324 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -226,6 +226,7 @@ enum {
 	RK_GPIOV2_DR_H	= 0x04,
 	RK_GPIOV2_DDR_L	= 0x08,
 	RK_GPIOV2_DDR_H	= 0x0c,
+	RK_GPIOV2_EXT_PORT = 0x70,
 };
 
 static struct rockchip_pin_bank *gc_to_rockchip_pinctrl(struct gpio_chip *gc)
@@ -306,12 +307,8 @@ static int rockchip_gpiov2_get_value(struct gpio_chip *gc, unsigned int gpio)
 	struct rockchip_pin_bank *bank = gc_to_rockchip_pinctrl(gc);
 	u32 mask, r;
 
-	mask = 1 << (gpio % 16);
-
-	if (gpio < 16)
-		r = readl(bank->reg_base + RK_GPIOV2_DR_L);
-	else
-		r = readl(bank->reg_base + RK_GPIOV2_DR_L);
+	mask = 1 << (gpio % 32);
+	r = readl(bank->reg_base + RK_GPIOV2_EXT_PORT);
 
 	return r & mask ? 1 : 0;
 }
-- 
2.34.1



