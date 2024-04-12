Delivery-date: Fri, 12 Apr 2024 15:33:12 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1k-0095KN-0B
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:33:12 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1i-0001KR-Fe
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:33:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=VDe2yhxRSanMSVosSluG6NpevYQ5uQ0VZFaycQVwzII=; b=c7ua88tFG/f4mzprDjF3x8iV+B
	ahvKw6DpJCk4HnJ7qKGg+GazWIbXRk/TpUvqiQC9orycpiQoEMLXrkJPiiKYGX65RyHGbAQrhaUNW
	desClHfkPyOGQ5JQnla8FX3gq8drLQfeaGTjWa2ZMhaknoJ/WtDlXbYVd5diGNNnlFhVw3ePb9tTC
	H9kZY4RUw0iyBv+JFkKDxN3nxyxjlM6EIXpYOr3HrOowS8IXih92F/y+9djkclaF1+b9H/TKlafzN
	cTF1O5K3iC+42oH0irC+I2DQLeK7roIMv8QDDoUgGXTwGm75kNubqXegaZlb+evKCixqR/dXz17M3
	WEvFxwqQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH17-0000000HLOz-3KWw;
	Fri, 12 Apr 2024 13:32:33 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH13-0000000HLL1-2c9x
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:32:31 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Nv9lowiQ1FLwtzK6hhzuEdAqzmxt1wLu4tiYUJx4a1M8gw43W7RYIfbSgYobTrytESFnB5/7d+9J4UhbMyrb6rie6b9Q5k1uEnUH8EroJd2fT4La1rY807Hq5eiN/aEWqPV/T/jk1okcFs2Jf0KuMp+1s1cCW6lFRTi7WAJ9Eyxhpf4x8dKHl/P66u/IdYibBQAG9i9/NN6swa6iQP3WWysjLleSOoNze05dGnTf2qZ746NUXvqA2+7KcqyYk2VEF6mJR+NutdluwFm6182Iu82X5sHagH/6Xg0idn/gAED+PXjF0zjvBJmctVDig4LXfl+Gbso6uXFn8/HI6HhG9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=VDe2yhxRSanMSVosSluG6NpevYQ5uQ0VZFaycQVwzII=;
 b=ajQd/er2Oz7DbeF6APdccfHp6jd9bRXW4axXDTwJj/zB6YXQQMjPDc13eRUDvxtwwP5il/beLsHHiEjRse9l67QWG1yDTWTZeWOnY8TgFjxNby7Oar6pH3KzDZg1hs0v9q1foLhb6mcmUihr+33gveLH7FkpjjkkWVaoXGbad7AMmPUtNGfMU3k0PP56uIOHFtTTh8cV9fZgV7mHNFbEuIh902kk1pjoGqT7ASz1/yD4ttmlLN14lfjV7nAzPweIlcks5jivXGOS5ClIyOQkK7k1NLpGf25OUN6CjGwUipM2W79UuBqXABuWswjLKdMgVcw5vTqZuLH5VJKUSPV87g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VDe2yhxRSanMSVosSluG6NpevYQ5uQ0VZFaycQVwzII=;
 b=WaqoBTz0QtaJuUe4y60gR/HRKOereKWRCn353pvJkGrGesbpqofISarpMWtcOCLLpCAg70BLTo2jpLJLOhcP1OnQtzgajaP2OqeeTur8Ik60Ynm3lNFYcPyCY/wqcFegqy4Md2QeRr7qNnxaqn7qSE1BI6aillLxsdwxKt0Yerc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB5PR08MB9998.eurprd08.prod.outlook.com (2603:10a6:10:489::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Fri, 12 Apr
 2024 13:32:21 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 12 Apr 2024
 13:32:21 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 12 Apr 2024 15:32:12 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240412-feature-wolfvision-pf5-v2-1-7e277cc8831b@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
In-Reply-To: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712928740; l=16821;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=3hJ4kKJxc93QsYdR5kyuzMTkGOga4o2RD6UeDP1Wr4o=;
 b=MjS6/GbgM9ROe87zsgKizpQHGyvJa/LdLLf1Ojo2LLRnPQClXZBsMTQyyKZXadv00O8N2SD0n
 lvkBvjKDUX1AFKJhqoKTCgD74hv3ueZXxbZ7qRoFMonDIAkoaD0713H
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB5PR08MB9998:EE_
X-MS-Office365-Filtering-Correlation-Id: 7a718455-1845-4fdb-1006-08dc5af4faf6
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: g8oN2ym31zzcNWO07lUkt9PYrs17lQ0SRLwoMxurI08AXR/CWZNCNJ5R6ubwMqsBn4bZDGZTesN4ZEreoFs7k8bG1O+FROaQOjfSNj4QY/EJTUWbQpoeoMlkueKP31vjpSj2oHUYmwJpKrAa+tUbHP05Kbz+/RgRzZiHE+wcC69mWpchhAdsdOGenoRAgB0oI8mDCo3untGKh5Ugquj9bj/7yTcjSHCHgdz7zwZKUf2dQggnq4A5eEhMlPKr+0bGPaFztxLB+DSuPAtcL5Gv+uRVq8ScAgbUWVtcA0/dwwEzV/z1mt8xHzUd1c5sB6zkSC1AI2shG9hPG8AwwxaANtdkuHJTfRycSc6Lo74KYT8BFHsrk5PMzb19OtP8SXlQ8vpOV5rqP63ooGvNmOOO2UXYg2qKlqynFylBGZ2lVWokpI0YRd2umq+ntrcjD6wVyoA5CUMSe7n095T/zFt8to2X3lWulSup8ponvAr8TFWL5CX6NKrrx5jho0bE+NzcomUGq6Q7UfFC8QyjK5Bt9klV6r1XNMHA7eVHu8ox2i5GB1KbVXcHPh5VR+It+2Q6Y+2nFmvYXwcD0OiHBMahnmnkDGt1sGmu9DpS7ZfFACJ49lVQ9Pnt9cFoCM8xLSfsQ7bJeEUohghqlRxUcEQt5knpx9NQgYlb87FqwEUk4zYjlRXKckffIYtOG8BSxmV5svG7INIElf/fV1tp1A+YPPDhBV3Q1U3VphiKtsgSgf8=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TWxtQ1ZhUWxlTG1KZTU4SFE2WnRUZWVlT3VTWlRqVHFveUFQeFg1QkpPNWxI?=
 =?utf-8?B?ZzBNdXE0T0t5K2NndVdGZVhlU0pzMnZQcEoyVXZLMmQvRUw5MUEvUkJYQ2xx?=
 =?utf-8?B?eE5uOUVTdG9zSUpKcEMzOFROaUZKeGkzY3hwQUtzd0pwNWtuVkV4MGFsZk1o?=
 =?utf-8?B?VDB5bUdaVERtWHNvT2d5TUtUWG1wOXErM0pFckwxcEZhUnlQRm02cDNWS2c0?=
 =?utf-8?B?Zk9aSFJZSW9xVDhtWml0NjVmYzN3SVJ2LzB3dXJZZnM2K05EWXNjd2pKYVY1?=
 =?utf-8?B?d29KTkZheVlTWnFCSG1MU1MwL2JHMUxNYy9TZnl4Y3hYU0FGRmZEVFFET3Rv?=
 =?utf-8?B?bktaR2lURTltWHdLVTlpaTdNNm10NW9Ba3JRQkVycElnK09YUmlkSVI5UmlD?=
 =?utf-8?B?RUpvY2ZBTUlLVFpkVU9aLzNnR0pzOUxEQmJ2Wm5GeUtUdkZNYk82VVFYeC9t?=
 =?utf-8?B?d25PQkpZV0pFcHVNVEl3M0piWHQ2Nk1HVm1SMWhOY09FR20vcmdxQUhGdE1k?=
 =?utf-8?B?aHVlb0JCMWhxUXJvMlhvUzFXVitrb3dIMnhOVWZ5WkRHOE9xZkR2MUp3aFc4?=
 =?utf-8?B?WFBpSzFLVExaNnR1MGFCNUl2NHJ5bFV0ZTlyMS9ZaUhjeDRSQnM5TkFFSU1q?=
 =?utf-8?B?bXVUUGlUYUY4NytNZ1FTLzVTa0IySGpOQkc1ay9QVWoyNkUxM21YWURVTDhy?=
 =?utf-8?B?VWh2YjhkNEJ5OXB0OUZ6OXRCd3ovbVVZeElQdU8rOG5XV1BOYjlPTmZxRGQ0?=
 =?utf-8?B?enVQVHhKTnBXSjR0RFUxdjczWmlaazdNSlYvakxGbXNHMDBJOVlGeWl0MmRl?=
 =?utf-8?B?VUdkQ1BJbFFuVGp4UjA0T2c2N2kySWR2cmh4aiszM0cwdno3T0J0MysydXN3?=
 =?utf-8?B?bVFyeDFkQUJtN1RPWTdzZ3BaUURJcWtoZFNLaUp2WFBmVGJpSUJuaE5qeXMx?=
 =?utf-8?B?YjU4RnpzKzczTk9tTEFkTTlaWGtnZnJjOFUxdDA1dGF5VVZja0szdHRteUFS?=
 =?utf-8?B?K2JqTlNtNVV6SUZETEJOTFRmMVUzNCt3elB1WWM3QXJyaEtIdmVFeW53ZmNn?=
 =?utf-8?B?NFZrekZRYVd6ZW4xOEVkdmtqYkVMNmRVeDFsZ3RKOUN1U213eFh1K0lKZU5G?=
 =?utf-8?B?Y09kWW0yRGtIdXZaVnhtUWJVRXhGOU9JQTJnOVhMemgzRXFKK3JBb1NZSko1?=
 =?utf-8?B?bGRzamxKMlQ2dnNOZ1ZsdUlTaERUcnZOOFhwVW1qbXJ5aW9zVFFNSUlZK2Yx?=
 =?utf-8?B?VGRtQmtaYjV6ZFlDbWhnYUN1d09uTmIzaFVHV0tVRnZFV1ZJNUtEU3JrVXp0?=
 =?utf-8?B?VVlkS0ZmUk9HTG1tZVZmN3NOQW1DN3NDOTB2VmtNUUZsZ1BWdUZlVksrdU90?=
 =?utf-8?B?WU53ZjFQaGN3V2pSdTcyYW8wa0JVM3kzOHNnVFI4bTdmdXdjUmVodS9YVUxx?=
 =?utf-8?B?MDVqaGcrMm1oUjNWTmRhTGdhSnZEcllJR2dTdnBlVWJqd3Z3eXZpRjNsNUF5?=
 =?utf-8?B?NktiaS9BVG9XMjRTSUUwSTE2dDRvK3hxOUpJTTNWVmc5ckJHQUpwd3lrZ3hJ?=
 =?utf-8?B?bmx1WmhiTGdvL0dNMWJRVUdCdm4wek5IY0ZvaW1FazhFQU1pUWhvQzBoSmRl?=
 =?utf-8?B?NmRPWWkvNEk5cGJvVGN5ejEwUGNHZHlXSzlUb2ZzM2E2cmEvOGd5Qk9TOExT?=
 =?utf-8?B?SGV6Kys3eTVJS1pyTDRiRW11SUJsa3pWOWsrSWJOT09DRlBMblV1Y1IyUVR2?=
 =?utf-8?B?aHppU0pvclZHQzFaT2VvbnhVVlJ3VXlGOVVrWnRPQWtaRzhoVnRhcXJjTWlm?=
 =?utf-8?B?TDd0WkVyK3ZjZTBIeDFlVmxGZStLVjBveko5MUN6ZlcyZHlDb3R6WnE3NGNZ?=
 =?utf-8?B?Vlh6VWpBWXMvUzdsb3lBVTFXSS83ZUFIVHVQYm1LYUFzV2M4K21RSVZkRUw1?=
 =?utf-8?B?QVdKZEJ0aFhRMGVJS0xGSTRhRVZvTDVFYU93YVcreUxBVlNEWDFBN0s3c0pi?=
 =?utf-8?B?WC9kSi9oQjQvbmlpSjJXeGg0clpXVDdxYzdMUFY4US93Z3pBL0lCSHlxd3hm?=
 =?utf-8?B?LzBEOEZ5RktLR1g1VGZnaTgzK2JpdUltOVl5ZGZhbjBmVjgzVkw1bnZYNDVR?=
 =?utf-8?B?c3JlWkNNQXNJczVKQVV2RFhWMHJLcFc0MlBoU0xFa1dFb3lhdGRSelo2dUli?=
 =?utf-8?B?YkE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 7a718455-1845-4fdb-1006-08dc5af4faf6
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:32:20.9430
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: q7uRJ+1G3zDKhQKm5G/b3TzkcdVNShvcVsF+2iHv1vX7GJBT1j+U130eBDABNBJ+sNVUjfMz0eob0F9ETpf+FD783SgiXxVLPq7BF62OAsE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB9998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063229_735309_20819E04 
X-CRM114-Status: GOOD (  10.69  )
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
X-Spam-Status: No, score=-5.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 1/4] arm: dts: copy pf5 device tree from mainline linux
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

The device tree for the WolfVision PF5 mainboard and the overlay for
the PF5 IO Expander have been accepted for inclusion in Linux v6.10:
https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.git/log/?h=v6.10-armsoc/dts64

Once the device tree changes are merged and then integrated into
barebox these files should vanish.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 ...rk3568-wolfvision-pf5-io-expander-upstream.dtso | 137 ++++++
 arch/arm/dts/rk3568-wolfvision-pf5-upstream.dts    | 528 +++++++++++++++++++++
 2 files changed, 665 insertions(+)

diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
new file mode 100644
index 0000000000..ebcaeafc38
--- /dev/null
+++ b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander-upstream.dtso
@@ -0,0 +1,137 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree overlay for the WolfVision PF5 IO Expander board.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+/plugin/;
+
+#include <dt-bindings/clock/rk3568-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+
+&{/} {
+	gmac0_clkin: external-gmac0-clock {
+		compatible = "fixed-clock";
+		clock-frequency = <50000000>;
+		clock-output-names = "gmac0_clkin";
+		#clock-cells = <0>;
+	};
+
+	usb_host_vbus: usb-host-vbus-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio1 RK_PA3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&usb_host_vbus_en>;
+		regulator-name = "usb_host_vbus";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc1v8_eth: vcc1v8-eth-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc1v8_eth_en>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "1v8_eth";
+		regulator-min-microvolt = <1800000>;
+		regulator-max-microvolt = <1800000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+
+	vcc3v3_eth: vcc3v3-eth-regulator {
+		compatible = "regulator-fixed";
+		enable-active-low;
+		gpio = <&gpio0 RK_PC0 GPIO_ACTIVE_LOW>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v3_eth_enn>;
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-name = "3v3_eth";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc3v3_sys>;
+	};
+};
+
+&gmac0 {
+	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>,
+			  <&cru SCLK_GMAC0>;
+	assigned-clock-parents = <&cru SCLK_GMAC0_RMII_SPEED>,
+				 <&gmac0_clkin>;
+	clock_in_out = "input";
+	phy-handle = <&dp83826>;
+	phy-mode = "rmii";
+	phy-supply = <&vcc3v3_eth>;
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac0_miim
+		     &gmac0_clkinout
+		     &gmac0_rx_er
+		     &gmac0_rx_bus2
+		     &gmac0_tx_bus2>;
+	status = "okay";
+};
+
+&mdio0 {
+	#address-cells = <1>;
+	#size-cells = <0>;
+
+	dp83826: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PD3 IRQ_TYPE_EDGE_FALLING>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_wake_intn &eth_phy_rstn>;
+		reset-assert-us = <1000>;
+		reset-deassert-us = <2000>;
+		reset-gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_LOW>;
+		wakeup-source;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_wake_intn: eth-wake-intn-pinctrl {
+			rockchip,pins = <0 RK_PD3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		eth_phy_rstn: eth-phy-rstn-pinctrl {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc1v8_eth_en: vcc1v8-eth-en-pinctrl {
+			rockchip,pins = <0 RK_PC1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v3_eth_enn: vcc3v3-eth-enn-pinctrl {
+			rockchip,pins = <0 RK_PC0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	usb {
+		usb_host_vbus_en: usb-host-vbus-en-pinctrl {
+			rockchip,pins = <1 RK_PA3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&usb_host1_xhci {
+	maximum-speed = "high-speed";
+	phys = <&usb2phy0_host>;
+	phy-names = "usb2-phy";
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&usb_host_vbus>;
+	status = "okay";
+};
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-upstream.dts b/arch/arm/dts/rk3568-wolfvision-pf5-upstream.dts
new file mode 100644
index 0000000000..1160d1370e
--- /dev/null
+++ b/arch/arm/dts/rk3568-wolfvision-pf5-upstream.dts
@@ -0,0 +1,528 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree for the WolfVision PF5 mainboard.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/regulator/ti,tps62864.h>
+#include <dt-bindings/soc/rockchip,vop2.h>
+#include <arm64/rockchip/rk3568.dtsi>
+
+/ {
+	model = "WolfVision PF5";
+	compatible = "wolfvision,rk3568-pf5", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac0;
+		mmc0 = &sdhci;
+		rtc0 = &pcf85623;
+		rtc1 = &rk809;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:115200n8";
+	};
+
+	hdmi_tx: hdmi-tx-connector {
+		compatible = "hdmi-connector";
+		hdmi-pwr-supply = <&hdmi_tx_5v>;
+		type = "a";
+
+		port {
+			hdmi_tx_in: endpoint {
+				remote-endpoint = <&hdmi_tx_out>;
+			};
+		};
+	};
+
+	hdmi_tx_5v: hdmi-tx-5v-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio4 RK_PC5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&hdmi_tx_5v_en>;
+		regulator-name = "hdmi_tx_5v";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	pdm_codec: pdm-codec {
+		compatible = "dmic-codec";
+		num-channels = <1>;
+		#sound-dai-cells = <0>;
+	};
+
+	pdm_sound: pdm-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,name = "microphone";
+
+		simple-audio-card,cpu {
+			sound-dai = <&pdm>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&pdm_codec>;
+		};
+	};
+
+	vcc12v_cam: vcc12v-cam-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio2 RK_PD1 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc12v_cam_en>;
+		regulator-name = "12v_cam";
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+		vin-supply = <&vcc12v_in>;
+	};
+
+	vcc12v_in: vcc12v-in-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "12v_in";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <12000000>;
+		regulator-max-microvolt = <12000000>;
+	};
+
+	vcc3v8_cam: vcc3v8-cam-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PC3 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc3v8_cam_en>;
+		regulator-name = "3v8_cam";
+		regulator-min-microvolt = <3800000>;
+		regulator-max-microvolt = <3800000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc3v3_sys: vcc3v3-sys-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc5v_in>;
+	};
+
+	vcc5v_in: vcc5v-in-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "5v_in";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_in>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vcc0v9_cpu>;
+};
+
+&gpu {
+	mali-supply = <&vcc0v9_gpu>;
+	status = "okay";
+};
+
+&hdmi {
+	avdd-0v9-supply = <&vcc0v9a_image>;
+	avdd-1v8-supply = <&vcc1v8a_image>;
+	status = "okay";
+};
+
+&hdmi_in {
+	hdmi_in_vp0: endpoint {
+		remote-endpoint = <&vp0_out_hdmi>;
+	};
+};
+
+&hdmi_out {
+	hdmi_tx_out: endpoint {
+		remote-endpoint = <&hdmi_tx_in>;
+	};
+};
+
+&i2c0 {
+	status = "okay";
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		#clock-cells = <0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int_l>;
+		rockchip,system-power-controller;
+		vcc1-supply = <&vcc5v_in>;
+		vcc2-supply = <&vcc5v_in>;
+		vcc3-supply = <&vcc5v_in>;
+		vcc4-supply = <&vcc5v_in>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc5v_in>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vcc0v9_logic: DCDC_REG1 {
+				regulator-name = "0v9_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9_gpu: DCDC_REG2 {
+				regulator-name = "0v9_gpu";
+				regulator-always-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <500000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v1_ddr4: DCDC_REG3 {
+				regulator-name = "1v1_ddr4";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vcc0v9_npu: DCDC_REG4 {
+				regulator-name = "0v9_npu";
+				regulator-always-on;
+				regulator-initial-mode = <0x2>;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1350000>;
+				regulator-ramp-delay = <6001>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8: DCDC_REG5 {
+				regulator-name = "1v8";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9a_image: LDO_REG1 {
+				regulator-name = "0v9a_image";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9a: LDO_REG2 {
+				regulator-name = "0v9a";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc0v9a_pmu: LDO_REG3 {
+				regulator-name = "0v9a_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <900000>;
+				};
+			};
+
+			vcc3v3_acodec: LDO_REG4 {
+				regulator-name = "3v3_acodec";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: LDO_REG5 {
+				regulator-name = "3v3_sd";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "3v3_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <3300000>;
+				};
+			};
+
+			vcc1v8a: LDO_REG7 {
+				regulator-name = "1v8a";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc1v8a_pmu: LDO_REG8 {
+				regulator-name = "1v8a_pmu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+					regulator-suspend-microvolt = <1800000>;
+				};
+			};
+
+			vcc1v8a_image: LDO_REG9 {
+				regulator-name = "1v8a_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sw: SWITCH_REG1 {
+				regulator-name = "3v3_sw";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	regulator@42 {
+		compatible = "ti,tps62869";
+		reg = <0x42>;
+
+		regulators {
+			vcc0v9_cpu: SW {
+				regulator-name = "0v9_cpu";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <TPS62864_MODE_FPWM>;
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <1150000>;
+				vin-supply = <&vcc5v_in>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+	};
+
+	pcf85623: rtc@51 {
+		compatible = "nxp,pcf85263";
+		reg = <0x51>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&clk32k_in>;
+		quartz-load-femtofarads = <12500>;
+	};
+};
+
+&i2c3 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c3m0_xfer>;
+};
+
+&i2c4 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2c4m1_xfer>;
+};
+
+&pdm {
+	pinctrl-0 = <&pdmm0_clk
+		     &pdmm0_sdi0>;
+	status = "okay";
+};
+
+&pinctrl {
+	cam {
+		vcc12v_cam_en: vcc12v-cam-en-pinctrl {
+			rockchip,pins = <2 RK_PD1 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+
+		vcc3v8_cam_en: vcc3v8-cam-en-pinctrl {
+			rockchip,pins = <0 RK_PC3 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	hdmitx {
+		hdmi_tx_5v_en: hdmi-tx-5v-en-pinctrl {
+			rockchip,pins = <4 RK_PC5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int_l: pmic-int-l-pinctrl {
+			rockchip,pins = <0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vcc3v3_acodec>;
+	vccio2-supply = <&vcc1v8>;
+	vccio3-supply = <&vcc3v3_sd>;
+	vccio4-supply = <&vcc1v8>;
+	vccio5-supply = <&vcc1v8>;
+	vccio6-supply = <&vcc3v3_sw>;
+	vccio7-supply = <&vcc3v3_sw>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcc1v8a>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc3v3_sw>;
+	vqmmc-supply = <&vcc1v8>;
+	status = "okay";
+};
+
+&tsadc {
+	rockchip,hw-tshut-mode = <1>;
+	rockchip,hw-tshut-polarity = <0>;
+	status = "okay";
+};
+
+&uart2 {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	dr_mode = "peripheral";
+	/* The following quirks are required since the bInterval is 1 and we
+	 * handle steady ISOC streaming. See Usecase 3 in commit 729dcffd1ed3
+	 * ("usb: dwc3: gadget: Add support for disabling U1 and U2 entries").
+	 */
+	snps,dis-u1-entry-quirk;
+	snps,dis-u2-entry-quirk;
+	/*
+	 * Without this quirk the available fifosize seems to be miscalculated
+	 * in cases where many endpoints are used. In one particular situation
+	 * 8 IN EPs and 3 OUT EPs where selected and lead to stalled transfers
+	 * without the resize quirk.
+	 */
+	tx-fifo-resize;
+
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&vop {
+	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP2>;
+	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
+	status = "okay";
+};
+
+&vop_mmu {
+	status = "okay";
+};
+
+&vp0 {
+	vp0_out_hdmi: endpoint@ROCKCHIP_VOP2_EP_HDMI0 {
+		reg = <ROCKCHIP_VOP2_EP_HDMI0>;
+		remote-endpoint = <&hdmi_in_vp0>;
+	};
+};

-- 
2.34.1



