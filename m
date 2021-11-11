Delivery-date: Thu, 11 Nov 2021 15:05:36 +0100
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhs-0008Jf-C8
	for lore@lore.pengutronix.de; Thu, 11 Nov 2021 15:05:36 +0100
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mlAhp-0006Q0-LE
	for lore@pengutronix.de; Thu, 11 Nov 2021 15:05:36 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sTVn5npNhIuBodjzccGpML2lHd7YiF/61DJvJcUlA/Q=; b=st7pbi9fBaLbqy
	Apcof+gKj7teTWIbLL/WMPbqILwnXyuOvNtGIbMQknvhHssfeEvKko1Cn2CxpcbV3dZDZJZcbDGIR
	059pbsIfW+i/oceHuA2v/0PpL/9Eyb9wSSC8HS/uHq33DP6TYVLxcBwzl/BZZQEtoXVw1VKNveBnk
	Kd5zWxo6vCcjN073uQOCXIcYOc2HlF38vMdWLTSJjWWvenIvJiMBWT8Wpa5zVdnwTtQEsywmFO2vs
	Y174G9EXflKIPDIuRTUmAu817il4/dnGYB2or7DslI/ZX0+jn0ARzL4FFeDbCZ9wsCayGiuWbwv0U
	Z9UigCzG3DzqNHvvuPWw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mlAgF-0086J8-PE; Thu, 11 Nov 2021 14:03:56 +0000
Received: from mail-eopbgr20077.outbound.protection.outlook.com ([40.107.2.77]
 helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mlAg0-0086D8-Jy
 for barebox@lists.infradead.org; Thu, 11 Nov 2021 14:03:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=kPnCNk4Ua8eX+SYo7UMqBkdLfLw2sndsPvhmjpS4YA5oiEhnA8BjOH4wts4lwIITi/Ze3+1oER8rWlliWLByseUe3CU9b3+bjIx/XyKCk4vpAfELAIGVA5RbRpNhxCgTKH7aNJQ/mLhrB7hD/I3kx8tXeamO73Kd1jbCeYTPMnXF/2r1/zmPsqOEbF6dj+5g/ml4I+uA/gicEs2bWXXkE3xWIhrs8ZYofDK0UJtUp2ItCk7ZtdDa8UIWJJRSzV01+qk28edu6ElbsTcZ0CiAffdX7lKVpLf+eWEc9lT2eLxfeFqVSQRDx4OHzpwBxfwfiB5GawLNBsTEwkh0kzP0Yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=paHP/jrgxfaGwqfzMV6LbqCRcXiSxW/Pq+boMNM6f10=;
 b=E/cp1uF631WoZ3zmX5q2EjiUKYQN1fiKStfKLX6g/31nFUzibVBz55a6oxBdaAUtNKFDP5BhrkRWx5x8PjJTLDnrIzMXeFvOxQz0Z/2WUKXeGCdQLL7z92gyusFU3NgLa3J7SMLg9fDG7TLGRmffSyf6dRqIFJFsB3F6H/Yj4dIgkCr+K+we9CRfRYyozgDM1Orceq3wJD69eJZhq4DMWYxqYMXLe5C9fnsi9d+M/KT5CQURa4Jyctvc6QYO9kh5+rteoQySqMiWfDpIodoPOTiQIMFGMTcgGEY1LEWXwoDcCdoVej5+/FE9k/6wXIJPO/tvRvkGM2imMwnm+XPo/A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=paHP/jrgxfaGwqfzMV6LbqCRcXiSxW/Pq+boMNM6f10=;
 b=cK2txUpbELq1DuggIfu9Fyw8qMPoP+1D+8pN7lKsfwvddBDx9DLP1w87wxVrFTGhLd21wnzQvpq9M5veIvAdOaF7iRBtc3f2ZLbI0c2POgm1xXgHfXyUdQrSOUVYQ2kexHes0Rj2jZFNve2q7XftW/bOdDNP3wYyMgiPZoeLt+8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6330.eurprd08.prod.outlook.com (2603:10a6:10:263::9) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4649.17; Thu, 11 Nov
 2021 14:03:37 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::a9fd:7c7f:72a5:feda%6]) with mapi id 15.20.4669.016; Thu, 11 Nov 2021
 14:03:37 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Thu, 11 Nov 2021 15:03:16 +0100
Message-Id: <20211111140316.1646962-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
References: <20211111140316.1646962-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:41::21) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
Received: from charlie.fritz.box (2a05:1141:1c9:7c00:2971:328c:3026:3149) by
 ZR0P278CA0147.CHEP278.PROD.OUTLOOK.COM (2603:10a6:910:41::21) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4669.17 via Frontend Transport; Thu, 11 Nov 2021 14:03:37 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 7c3ac136-cae3-4e72-b336-08d9a51c0eb8
X-MS-TrafficTypeDiagnostic: DB9PR08MB6330:
X-Microsoft-Antispam-PRVS: <DB9PR08MB63308C9AABAFD9FC450D09E9F2949@DB9PR08MB6330.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:4941;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Q2dUHYiYvrcM+DEohbjINWwgwsCCbgp8GdwrpAhC8t5S1lVy7XEGzefQuK8DKMDzKN3cYpPvfPu581jASPG2oDoi8Shw2FCdx5kWgRM09xXMPtLLTbQ3hpEzx6RACFGVGwbPujnj/PTGovW0ivQvW9csdfKtGBsPWdAMAo41xwRHBKqcfxMinTTaY/nRC2zcJXZ3bde5otc/bdg+D6KaclMuGe/Xyr+WCjG3AON7/+GmkvDv0tJu0bvLn4fzsXle9KOfW1YJ3F5SdHafjjnRCIs8QDDM3pC1GGbPAhka6Or3tkr76Po7Dj4XlxZ5OF22KIOzsgl74DmoCvIy+Hf/krQsI6xbqBcrsg20dhg3+dfaMlkk7oS8Za4x0WPiIbbcUJnDUw3klW4RaCeQKRbPwwCjzsbJ+RYOi6iTTInH5E2k7R5w1pbgZkprFL09nfcRftaRqlsu55Tgkz/4z8EgZMRzWzluYnNmqG1apiXusYeHwMHhesnBxd83fovY4wOWewQcidE31moygUK0enPZSEWvz75A0PO7iKyHSB/JsxOg0fVFn7tSj8Vu+65jgCltS/De0HdKi9mBMM/xvVwB7onWCoq70CYoYb0jNmZ3cqWLjHj/nypznRreOPh7YZmkYZ6xLq1Aq18KPQ6ebaweWg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(136003)(39840400004)(346002)(366004)(396003)(107886003)(8676002)(186003)(38100700002)(6916009)(2616005)(6512007)(508600001)(44832011)(4744005)(5660300002)(6666004)(8936002)(2906002)(6486002)(1076003)(86362001)(52116002)(4326008)(66556008)(66476007)(66946007)(316002)(83380400001)(36756003)(6506007);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?QOnOsYNr92CsmZMgAiRytTZYoV9GgjO6XdYqSk31UFKL06VAXQEIwwuP4aYO?=
 =?us-ascii?Q?EpABdKEIF7RTQWSdZK+qhqCaERYlNh0WVA6NyydssO2nG0iCrSh8J5snXSQ+?=
 =?us-ascii?Q?x3NVtElh5BZyZzOOgzOv/GqD0XmW5dvjKV7RYA4dXfknVUZ2EsPyG7Yl0w0b?=
 =?us-ascii?Q?bQalUrgx0xsrLph+BsqQr9w3cOub97CE46otE2ZRGvDgM6l30Zf8TXPm1G99?=
 =?us-ascii?Q?RHEqt7Mex4wfV7Oqkcd9p6g5t4s7w8q9LQy7uNK/j9UDVB+jDyD1QceaIyC7?=
 =?us-ascii?Q?lbC5DfRQOVgOHCws+ON/uhjncDqv/iIplY1MaTudFjqsX/LKvOjyyPPQHsuy?=
 =?us-ascii?Q?Vw+ZntpMdSRLagAduI1UrM4Ire0O0yrSdvkkMBI1TW5kuJvQnt0/hGfRAB++?=
 =?us-ascii?Q?Iw77GcCcLPQDEZii5nU2IpOyRQR/bmy9GcimgWguBWvwRDJfYCCxg5KnE4Vb?=
 =?us-ascii?Q?aqRyDVp/8ynPWvc7jQBNirFHhaWkkC8GMxfwtlb04LK0zblGAiCx1XxskiDr?=
 =?us-ascii?Q?vhnzw8dRlkO2SgpyGzpPhvk6bSw90OXUfLTO2D97/jVVOyk4k+wuE2gxIW45?=
 =?us-ascii?Q?Bl8iB6jVHfb7zIaTas5+Eb5YPcSMC2S9hJY4XoVy86gg495sXzP0pHwiaVo8?=
 =?us-ascii?Q?i0xF7uDwuSc7b+2qIm/FuTFbQ5rXMBTIhKtchsiV0m+E2idPDk+uDowvKtKg?=
 =?us-ascii?Q?XK3V4rbv21Em037cwk/9NN2tkLeFZXIW9TJUUMKeFsmSVnaHTK/7vYuOIijn?=
 =?us-ascii?Q?0ZHsIL8J3/d3TsM8YnGcGdNqu1Jv0auhWZWWSnsXMiOEDRqfrc+jCvtt77Nq?=
 =?us-ascii?Q?nbQ6u4CBXbrKkE7HuANOMoZUYnutpxq0l8A3f35BDnc2I1vIBXg0OqXcjIa0?=
 =?us-ascii?Q?X8smvFkxOn53KLUyWefZ+errLpn2VAV+alEeB/VS6WUSD9ymmLcSk8ZHgrc7?=
 =?us-ascii?Q?VFjAD0Dtvc/Tc9FXwR3uLeq+BOnfWJjQH6VU5Iq0txNef16WTPXsM66i9Ldd?=
 =?us-ascii?Q?Lp8jjIXHovVyqZi/YDaRPt16cglULNb6nW3JqAWSU/yBrc+XnbY6XEh/8tUo?=
 =?us-ascii?Q?opy0Ywwm58xAB/+gLesdcMn/PsiPynk6pgP13A4v/C6Sxr0hVYx1k9JmcyoH?=
 =?us-ascii?Q?jLFVwo/QYVSWJ0UjlaXKl7F1DH5NIQceYbgCn1TY4lHi4UJfzbEqoB0xz0sj?=
 =?us-ascii?Q?/n/AAyQCfjn6afqWNFV5/P+prhIKaVmtl7Fv5qYAS3rOi3ADVaAhUN2knqnY?=
 =?us-ascii?Q?o1R+MVANuO34WxOmYT+SslxDjzdm/14gW6ENj9bGJgQGFlpTJLC5Nzr1Fv9k?=
 =?us-ascii?Q?Oz1XOrVMu28714GvibMzDDEEV2TwQbKCF9k3nqMxsAlYZ16oPkI3wIdW3ELD?=
 =?us-ascii?Q?IWT/r4PumNYaAJT5x2t0ZD9xeRJwHlWsuaxSoksye2HTfgjiDRkr8KfmDpCT?=
 =?us-ascii?Q?zh1RAC/bekPFfOTYXwO13vvGpT/v6iBB90KI4/CbULP0vEyZjpqY2ZEvjw5Y?=
 =?us-ascii?Q?Cst43GIa3bFR0sPIvW3VkDz++xlXv+WZ8G5FYBo7+ANv+PDnr3VNi+OMSsme?=
 =?us-ascii?Q?MVFnVkIlwAVcUV+EqXgpxz7SpUp3CjYZvTqCu+QxC5THcJg/yrT/mR1+yKZP?=
 =?us-ascii?Q?UU8lTpWC+Q0zaGsmyFb4ybrUTVQ7Y83rAq7yzgYeSxrZfyoLgPNHFsMBvJCT?=
 =?us-ascii?Q?0AdhfdLoBeO0ollRSG7sxlvKG8rZTdOlIaHjQmEs74UHTqqqqU4EM21veA0l?=
 =?us-ascii?Q?44ghxqjfaA=3D=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7c3ac136-cae3-4e72-b336-08d9a51c0eb8
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Nov 2021 14:03:37.7546 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: vV8VZVEH4eR9uLYmWrnLVyQRRH0MATfGYyqXju+A7Yw3WZ0jvNF/ihhT08T+uJAJRn4EgpOHpiCj3mgMJJdo6fazl852SAhimcO2rF8uwAY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6330
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20211111_060340_692571_BC58740C 
X-CRM114-Status: GOOD (  10.94  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 3/3] pinctrl: rockchip: use alias rather than full of name
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Do not rely on GPIO controllers being named "gpioX". Instead, use the
alias to match the controllers to the GPIO banks.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 drivers/pinctrl/pinctrl-rockchip.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/pinctrl/pinctrl-rockchip.c b/drivers/pinctrl/pinctrl-rockchip.c
index 1fdb9a913..0e706c51d 100644
--- a/drivers/pinctrl/pinctrl-rockchip.c
+++ b/drivers/pinctrl/pinctrl-rockchip.c
@@ -888,7 +888,7 @@ static struct rockchip_pin_ctrl *rockchip_pinctrl_get_soc_data(
 		bank = ctrl->pin_banks;
 		for (i = 0; i < ctrl->nr_banks; ++i, ++bank) {
 			name = bank->name;
-			if (!strncmp(name, np->name, strlen(name))) {
+			if (!strncmp(name, of_alias_get(np), strlen(name))) {
 				bank->of_node = np;
 				if (!rockchip_get_bank_data(bank, dev))
 					bank->valid = true;
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

