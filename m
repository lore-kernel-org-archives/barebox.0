Delivery-date: Fri, 08 Sep 2023 13:32:46 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeZjD-008AuG-Fy
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 13:32:46 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeZjB-0006sP-28
	for lore@pengutronix.de; Fri, 08 Sep 2023 13:32:45 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=iHILjm+T26Kc704VS++3tM8edaNc832F235KFlmV9x0=; b=LxAan4qQwzIMgNvj7W6XPAVRIj
	fMdAigkQmWa7lTkblnQ3Fq8R4ktAqJ/62UljBEMxMLw0OpVrZ/SNRmkq74hOUtskrOzcjwH3QjELa
	6cE0+cv26nPEcfbHQLbdJhEoIZ/c09In8ZcvGcG44Y5yFfiFsq3PGc30FZ7VcniWel9f2eMzo2pI4
	ug5Xbh09VEkPQqHqNH4YNgNjJUdErtWQIAblL57VEtlxgfCCYGV2lcq/81w5jVk0T2uLLMz3liWVB
	adE1T3Hj7HCWxufnDaaZbzZMcOfPWB1bbAhSAAnWo+L21gVtbA2rn9mXdiFefz28yFw0ucCvDPzAd
	x99YtKCw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeZhs-00DgDE-0F;
	Fri, 08 Sep 2023 11:31:24 +0000
Received: from mail-db5eur02on2062a.outbound.protection.outlook.com ([2a01:111:f400:fe12::62a] helo=EUR02-DB5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYY2-00DT5T-1X
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 10:17:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=OoL1nIXCi+DUz5JCs/ToH23I+zzza1O2ZvFjUIdi8YTRm2I7EsWxWs/mGrEO6Uu0KKMo6RRz0B6f+ujJYpRS7udrZfFXla7SFMO5vn10vI3YiGCR+Kqso8/tuGbpc6BPeSpVkNBkb4BFUr++8kFv30PXg1lQJDXBD53ruut6+X9pLKU4c3hbbNH6+N656Hb7af6u6L+qpw2EY1ERIil+FQXrIhCWWhX1sdedOKqDyjUafjjmbsJDlA3O4iJOrR3/VgXFzzTsjrUqNBPD1Q8kFMuqV1neoNp1BN15xnvZZpY6aieZ4R3v/hbZaI8haevRZl+kwHLpUwQAQOeNAJdHxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=iHILjm+T26Kc704VS++3tM8edaNc832F235KFlmV9x0=;
 b=gC1JWzyLU+pwB9Ifs66SqpEHK8YeM/PLt0vHlQrCDToxFP9rBSd6zg3RZbbud2fz2CA5iG9XTgA2RnjjQwOs/NMskrjKQ4uAYmp5zTZ07W8jNd3jf2wYygfQoD9oFiNmG06ZWI5lHQsVPLT14PEVQHtkcpfGP8EOivg7sGJyS/Mj2XxkejfvpSpbUW/aQ81IwsIqaXL4k0iPyFiEps6VZjEgyDwNcOtW+bpkS6s6Mj9imd8PsQPFRKmKK7gisthxprQ6mIhD/F96vlv7yaxmqyL8L/77cTcLGyTSfAhJ1EPUyzKtyiptLvnwtQaxPZCW3lvCrMCBzh2p6y5N3SoAPg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=iHILjm+T26Kc704VS++3tM8edaNc832F235KFlmV9x0=;
 b=pLmGvTbmsq4bwj0lQsxVRlYhrIkFpaWhiZPEYrwjrJHnxAbhPoUelNI1wBGJn4UBZHaWKtFXzu/DAhatVam1DpitMu7YACAHFV/WZLn6NzrKA9PjaAKYXbQLRNOP7693Kb6bOJxI6jup+DabXHJckGL64fl2OSKh4DkL+SvfYHk=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com (2603:10a6:803:100::13)
 by DB9PR08MB6332.eurprd08.prod.outlook.com (2603:10a6:10:258::17) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 10:16:59 +0000
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba]) by VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba%7]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 10:16:58 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Fri, 08 Sep 2023 12:16:47 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230908-bugfix-i2c-rockchip-v1-2-f8235d811f6b@wolfvision.net>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
In-Reply-To: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694168217; l=1189;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=wj++Fv2VYKELg8LbhRu8n7cgrWUvmCCJ7rXKQPm3l5s=;
 b=lxPAgzI6Fg/PoyV54d6yQRGdXK9L7hCQ+clEbDW7IRKmCh/3M7jqzlzci4C45O8rsFStEmDsa
 nR4spwcwdNpBdne0bhn7LpNMpk9OH8MOdnGxVJ8UE78CibzP2Rzc7D0
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: VI1PR0102CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::43) To VI1PR08MB4544.eurprd08.prod.outlook.com
 (2603:10a6:803:100::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR08MB4544:EE_|DB9PR08MB6332:EE_
X-MS-Office365-Filtering-Correlation-Id: 8b3b4a4b-4295-4c98-d713-08dbb054bc35
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: tPSJgx0fGYgAlHsVp6bNHp6SK6UoPbR/T5G2U8WEKwFaUaMko2Z/L2KhdDwo8mtWXNAnbx1qXmTb3DxBGJx+0ola7h5WuKkywFtrN3Vj56LHZRXJHXbG8gJ0akcJlXcM+akajWdXI21CGmpLcID7fni3AfzDPMxr8T2WS/cbVxU0N8YEwbWhIVutLYTaK7QzkvcV1lmYznAh7f3GaMezQ8KAxuV79klKvP6qCGwmJzlY7YKcqTEaZ9231Q4s1vpb+wXtHYfl934imISenKdAg78cCNMQV0MJXdNcmn6vuyM+7Nh7rZ7K4S5PjiJi5OanWKFvlLDus4H92A0Uz4iqnKIuOXa6WFpam9LbJhpE4f9pEUI4OlNC/yawhDpGFv4Q6QHbTOvoJJRQbglNhiyeVC23p9T4l52z8gZj+TBzvXWhNl0ANHY+Faa7eRmISuosQNY4H9x+/F5h6U7C8fMxtllR7GCDmkwmVBLoGnTsKnpYETxQB4X1k9dKzUccCSDkXdqeVKATjMNZ7ZZcbyJl5my+ftQkYD1sbN2EdM8bMU5gSmP7hrKGrevYkOp73IP1YGs0LBDJp4HRPxo+ZTo06HHykJnDTK/p3RJWzIuATs8Vfq5ezjeGfquercIY+tGI
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB4544.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(396003)(376002)(136003)(39850400004)(451199024)(186009)(1800799009)(316002)(107886003)(2616005)(44832011)(5660300002)(6506007)(6486002)(478600001)(6666004)(66556008)(66476007)(6916009)(6512007)(52116002)(66946007)(26005)(4326008)(8936002)(83380400001)(41300700001)(8676002)(2906002)(36756003)(38350700002)(38100700002)(86362001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?c1lLL2pkMFFVeFZta1A2ZFV2cSt1ckVTekJ1VmRma2Q1NzNEaTZhdXc5Zk1P?=
 =?utf-8?B?dG9tbVZPNVp6ZWVyVXJGQjUrWTdCOFp2Wk9lQmdoZzBWZzA0T1FLanYwdUlr?=
 =?utf-8?B?NDFIZTJTRGlXQUZwaDc4VElzUzZMQjM4eW5aNVhCZDFaMXQyTXpuN1dla2JX?=
 =?utf-8?B?bVo4Zm92MjlVWHZRd0o4UkZ4ejZJWUlMQ1RpNmpob2pXNlVURURsaHpFdUtw?=
 =?utf-8?B?d0dtalBRME1oOHdETGdNblRnNEt0OEc4Sy9ZNERsNzJrNjZROWRUSHh5YlJ2?=
 =?utf-8?B?RXNxNFlJd1g5WElReHNvUjJxbENySHg0QTFtbm5tREUyNDVnMkk0RytScXg1?=
 =?utf-8?B?d1JEd0pQUWswVCtTb2NudUZqRlNXLzRvQlFFOXNMUWliT2pNN3h4NUZtY3NO?=
 =?utf-8?B?UXgvcHE2Qmwrd1d4Ym5GVDFpL1hEaHM3L21TakVzdFlmUHo2UXVzaTFZemRy?=
 =?utf-8?B?VWNTOEJISXdhbHBkMmpaYXc0ZzBoNnp3YnFoNzdtMzdwWkxwbmhkdmlRb2w1?=
 =?utf-8?B?RWc3bFZYWUlSOXViY2RVN2g0aERnRWQwU08zTTJwcUlaSDVyemNlejN4RXpo?=
 =?utf-8?B?WHZMWDBpRXhSTUxmVElvVkJWUERwRXUrMXRLTUVpMTBla0VpZllUVmVLSkpI?=
 =?utf-8?B?Y1FGd3JWeWdRZytMNjZoQUlkM0NpbWxPOVc3ajVKUjNsWERPdndwRkN1ZWZs?=
 =?utf-8?B?cnRiWGtDTEQxTWhDZ2RHcHhnTUlUVHBkRjJlUlZNaFNzK2hCdVV0ZWlvSjRQ?=
 =?utf-8?B?YmdzWmRrTm5PYjA2aTE1b1ZnMXZFZW5vTXRUalRtc3R3YlNtdEEwejRuNW5R?=
 =?utf-8?B?aXZTNG1zczV3cHNsc3ZVenpvRis1K1JLMm9kRE0vMTdWcVJIL1hocFZjN1RK?=
 =?utf-8?B?SjlRZHIxOEZmZTFVQ2NNYWhoOWN1bzcrajYyZHNXaTdQY1RSY2ZjVkRwa0Nl?=
 =?utf-8?B?YWdNc2VTWkdWL0RlT2FwckNvM1JoSitYVWZIYkhST01uU2JlbW9pbWhVdXRy?=
 =?utf-8?B?T1I3dGFoMTFrZUR0UEN0Q3I2WkNJS3lxWHM1WTlyZFN1aHBrblR5Y1BDeXp4?=
 =?utf-8?B?ZTF6UzBYVk5lckdQNnV4T0t5RnJoVjJQUkNzSzlvd3lCN1FXbWFreVY4bmxl?=
 =?utf-8?B?NlQwdHhRV3p2emw5K2pLb2pteE9QVEpMNWZmRmpTNFlFY3h6d1FneHc2RXlZ?=
 =?utf-8?B?TmMxTnBXVVhsZVlyL011SUtNYW1QVUkzdHFDYmdNZjJocVdQNmg2QnhFVmVO?=
 =?utf-8?B?WXA4R2VqRHB2MTgrMFpJRWNFUm11aWFZa092SVlnK1BOUHgxNFRzbmh0WVNh?=
 =?utf-8?B?K3FDYWJ6MG9MWU1WSTUrSmc5b1IwOVpMOVV3cjhRdEdWTkdZWFJpeDhDdXd0?=
 =?utf-8?B?SDliR2JMdnVTbFBwdmozbTN4NEpUMEtZTStxWC9Xd1NiMXI1VGFYb3JZcytN?=
 =?utf-8?B?cW1GMS9ZNTlpZkJxL2poYnZCMWt6SzVMWGtrZjkvM29raWtMTThJZnFWbSsr?=
 =?utf-8?B?c1VnaVMzUStsNGVDRTUvdDZKTlFoQmtTMWFkNHdIclorTitHdm14VEtVdC9G?=
 =?utf-8?B?V3BOWm5URkIxTnBqQnNtY0VhSFNFMnM3S0ltMlljSTU2VitWbGhwbjRzQU93?=
 =?utf-8?B?R0JWK0dMR29abHNQVGh4UURLOUFkTHNRQ09SMVlYYVNrK2gzd3pxRUZwTkJh?=
 =?utf-8?B?VnNnOHNPSFc4M1BGbHpkZFlGWHhzVlF4dkpId3EwaUI4RnRZU09paGZiTHY5?=
 =?utf-8?B?Z1FXcXFHUkE0Mys3UnNlUG9SN01wcHVSNjhpaUlIVWF4VlFVQ0x0T2FyNXoz?=
 =?utf-8?B?c2ZrN2VPZndqaG0wK1p4bjg0QlU1ZjVoOGxzS01HQzZCSktuVEkxem9TVDg0?=
 =?utf-8?B?eWh5QkN2VGRCSWk1azgyNi9ENmFqeUlDOHVGdGJMdkJ3WkdNOUlQVndYVUJi?=
 =?utf-8?B?RXBaUVpjOXAybC9hQWNhOVJjbWg0SlJpRHdyaW9MVllBSnVjdFZvK2RkYXU5?=
 =?utf-8?B?bmZZSXBUd2c4NXNpaEJlUzNwMVBXYkFIell0czNRbXZPc3RMbTRTY05pRXBI?=
 =?utf-8?B?OHRxWkFKMytuaUQ3LytFWXB1TDB0bFBsdjB6Skpkc0dOSTJBN0ZkaXJmSzlC?=
 =?utf-8?B?QkJtZThZNlpWKzg2ZGVMa1phbDV6eDB6TDI2d2lQMnFiZjRRK2o5MEI1NGg4?=
 =?utf-8?Q?unLzATLzbY4mgL9yr5C6jX8=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 8b3b4a4b-4295-4c98-d713-08dbb054bc35
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4544.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 10:16:58.5275
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kxV2+EkXpyR5QogHbHmExO64sH5sLRslX8WJXq57/aWwMzEh3ZRfW3ex8K0N/o340tkaDZu7ZFQe6k1Auo9oYpVLoSpjMNQZhOlFauMq9O4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6332
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_031710_586462_4CF46996 
X-CRM114-Status: GOOD (  11.86  )
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
	metis.whiteo.stw.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-104.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE,
	USER_IN_WELCOMELIST,USER_IN_WHITELIST autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 2/4] i2c: rockchip: ignore i2c transfers when another
 transfer is running
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

It may happen that an i2c transfer is requested by a callback although
there is an other i2c transfer running. In this case do not interrupt the
transfer and return with an error.

Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
---
 drivers/i2c/busses/i2c-rockchip.c | 14 +++++++++++++-
 1 file changed, 13 insertions(+), 1 deletion(-)

diff --git a/drivers/i2c/busses/i2c-rockchip.c b/drivers/i2c/busses/i2c-rockchip.c
index 1bca3e9913..a869b9d0b7 100644
--- a/drivers/i2c/busses/i2c-rockchip.c
+++ b/drivers/i2c/busses/i2c-rockchip.c
@@ -369,7 +369,19 @@ static int rockchip_i2c_xfer(struct i2c_adapter *adapter, struct i2c_msg *msgs,
 {
 	struct rk_i2c *i2c = to_rk_i2c(adapter);
 	struct device *dev = &adapter->dev;
-	int i, ret = 0;
+	struct i2c_regs *regs = i2c->regs;
+	int i, ret = 0, val;
+
+	val = readl(&regs->con);
+	if (val & I2C_CON_EN) {
+		val = readl(&regs->con);
+		if (val & I2C_IPD_ALL_CLEAN) {
+			dev_dbg(dev,
+				"i2c_xfer: %d messages dropped due to pending interrupts\n",
+				nmsgs);
+			return -EAGAIN;
+		}
+	}
 
 	dev_dbg(dev, "i2c_xfer: %d messages\n", nmsgs);
 	for (i = 0; i < nmsgs; i++) {

-- 
2.37.2



