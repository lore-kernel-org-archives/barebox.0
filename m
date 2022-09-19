Delivery-date: Mon, 19 Sep 2022 13:42:36 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAa-009Y9U-AE
	for lore@lore.pengutronix.de; Mon, 19 Sep 2022 13:42:36 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1oaFAY-0001Rh-7w
	for lore@pengutronix.de; Mon, 19 Sep 2022 13:42:35 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Content-Type:
	Content-Transfer-Encoding:References:In-Reply-To:Message-Id:Date:Subject:Cc:
	To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=vnf58OaMBO4A0mvlMjh0mt/ssMjP9c9AIrjDx+0NCnk=; b=XtcZrb4I1ptRYma6Jete1Y0gUa
	wAWtYdUsBQBriAP1NsS0UXeo6jr3A4xxaAKd8Ku5VaVe4qWZk0QLwbiP7bNiyoESF/dWpfXdGwKGu
	m/+QCg3JW61QJR6zJkUk861KoPRjTIMaGEqB8x4BzMEeVrSVke/btMnieIGp37Z10xrUruX30Io5a
	iyqOq/EYlxDHWPbYuoBvuFusYTj/mJGrcoCDd+ObD2d3FOFWsG0q+B2V0BYJ2YV2tUFpcLch+qdcK
	L6vzTYg1SzX+fMazYJnxoQAnwGa9uk9LK6cjuFDnGpIrEcqvJE8q1dKoR03ms9Qe4FMdD0wo2FYhf
	u2v/CLtA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8K-00BXsl-Ot; Mon, 19 Sep 2022 11:40:17 +0000
Received: from mail-db8eur05on2066.outbound.protection.outlook.com ([40.107.20.66] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1oaF8C-00BXou-R4
	for barebox@lists.infradead.org; Mon, 19 Sep 2022 11:40:10 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=ZKCwwLGUoM3qcUq1qAg/yVFOFQkkctD/9zfyIqBjPPMJRXB3k3QZfOQZ8HK6NSsG5mfEUvmqK6zKy+hyAm/Y5WaReqOqSsWth7vIpjw64O4t/2lC3csggqZ7ul1fkd8sbDOH0h3nreMcXatcRnwV7jk4TJpEkxbdmqWfDrXnApHHYk0FUzz+7LAn4bgm0YX1v4HzqsOc7qlRpD+JdCRkF8QBL8vBua28VS0F1aG7qpbWUHj6bNo8PJCAWR2Ul6haLNti/xniHDnfB+tcbppE7bOkPf9qUlLFOntBLecUAOirGBxKmExybhv0T1yd9/Sp727lx+Etjy8bwXP//NwFRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=vnf58OaMBO4A0mvlMjh0mt/ssMjP9c9AIrjDx+0NCnk=;
 b=i8SN4e3lyBLzZOpPd/jNhMT6GHw0AN6DDZ5aWhhJO+K4vdQfvujgFF3j4TDER+qSkVbvhg/bObWEvqUfGogy0AeB8CY4inmQdtnRuqwKRZ3CpejvaaYPQEJI5B2IuYm7Mzp9Km9CKLczzCpAS8S/Tv8epEs5CozqjAxeRd2DWEQiIdFRvyc2tI73CMuhB3UvW6mAgWEiDJK2q2TzIsBE2N25VevLrYynz06Xvb61idb0wbHKIBoNH7qJqwjOCaWigCGaAZxbZ3Scw6h5LOQaO53wN8mTyZZ661M9DOwcixvwi+qzNVPGPORreFF3RP9yEjxiHRp1lB0+96FVC5rz6w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=vnf58OaMBO4A0mvlMjh0mt/ssMjP9c9AIrjDx+0NCnk=;
 b=UjoMUl187SHyBE2l+EQwBQTDPA03Y2I47Nw+ryqf0SZ7MS7TDPc6FMYn//PO5Pz8xiCXHoSLaXhnAhpGuNgDOBLnw06Yw7iXDciG5QMcxaUmhNm3xrPngofHJvAN/9HDHsEF7ln2oFucMUI4NWithI8WbxN0UdLbPc46l73seLM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8272.eurprd08.prod.outlook.com (2603:10a6:150:b7::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5632.18; Mon, 19 Sep
 2022 11:40:03 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::30bd:5198:8936:b796%6]) with mapi id 15.20.5632.017; Mon, 19 Sep 2022
 11:40:03 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Frank Wunderlich <frank-w@public-files.de>,
	Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 19 Sep 2022 13:39:44 +0200
Message-Id: <20220919113948.991245-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220919113948.991245-1-michael.riesch@wolfvision.net>
References: <20220919113948.991245-1-michael.riesch@wolfvision.net>
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-ClientProxiedBy: VE1PR03CA0042.eurprd03.prod.outlook.com
 (2603:10a6:803:118::31) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8272:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cd518f9-a693-4928-acab-08da9a33b0d9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	UymoBDhXciit5NVvNmCjgp+se9lriCU0XrU8ZGFiCJpbITrplweMdXkHSFjn2KXsVHRhulnE3Miy7LLB0NeVNl+ZXwyfboiRNm1QKiQ+8N9ZYdVb9RjE9p69zJ8NQHLnxu1sFSfw153Pt31qLHxmeI7TXIr8vHFc4KCLfaDvnn71zffpqGHS7zVrtswtiwSEM1A9L83m0YAfMWT70YOjBHNPoqK1ZEp6q7oY0yo46S0GqipoUjjxgx8ce8oLhA50suQXrmesMirWh/XwhroLQQOdV0DNkMKP1u1beEfYQZgie+yLYG+zzK/DX97j97j7Gaf62R16WNpa4lMD4htQWusrK39tnPaGp7luppnEDzryYH41DgilGzUly+mx27Wx+sN7FYnC3Yje9oWa1tZDUqIpNjq1ToxrqoS6c6+4a6DlXLLQFtxrcDofd277u048k8vFTlswBMYCYAyS934sLkaCzKX+gdXyUieqvd4LXhb1tqGjG8Qm2N44kfj3G4eJuHjkJGUQRTRAvrVjHyuK1DiZ/9p3+vjt+0h9QfTy+sBGgsbPF2vMs4k3pe673/qqLTJ8E0ksOsYPIV4r5dXvR5vYo/vvNsefa0eS9smpt4s+ht9ht5oBi3xj1QSrba7Ix0oE2AAdB3T9qgwJGyj69rN6vr9r896Ia4tfQhDunadXXJwqFUWQEeqbZ7tYyOQWbhPxwvNbJALwUZNgu1lQYA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230022)(4636009)(376002)(346002)(136003)(39840400004)(396003)(366004)(451199015)(6486002)(6916009)(54906003)(478600001)(316002)(5660300002)(8936002)(6512007)(83380400001)(6666004)(66946007)(8676002)(41300700001)(4744005)(4326008)(66556008)(66476007)(86362001)(6506007)(52116002)(2906002)(36756003)(38100700002)(1076003)(186003)(44832011)(107886003)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?c0v9hN/dAq3Q1xbe182j0OCIVUVVfxEgOYtMrypt1/ngiPpWnQX2FrnmmWzP?=
 =?us-ascii?Q?1XaTvfrUywKL4TkhnCTFz27GD8Act1YuJBvdBuDVrb7JN2W/KX5K429ntHrE?=
 =?us-ascii?Q?VkeWztW+bTq2jumtvGqXO57Mk5gLWEApSbMn9VYDfcWspNmJsz2XHFw164bS?=
 =?us-ascii?Q?ufjn7LmHek5LfPWfZXa7uO9aOWhEMfrrHKJaDro7CcwGyj50WpP3MofZtskn?=
 =?us-ascii?Q?9YPUhsUJH0yIuKLbC7mxKUl9vkm5KfJdvYH9O4LxhHxgRm1bSOxzKlDD47mH?=
 =?us-ascii?Q?WCI6HfgCZepWJ6MrgBR47vdI5ZUU6N0Q2eQeW9/Vv1dRAIKo4d3uqXbbnwgb?=
 =?us-ascii?Q?+3D0AtQ40MAZQgpPRnTKkjKXEWugfl3X3gWA/WX2c4mgfoiLHV8HvZSdCnUQ?=
 =?us-ascii?Q?4weuOrIUH+g7a5YQM+35oxTrrdepXJQNJ8DFs9I8antBbl0Gz2DQN0UGeiju?=
 =?us-ascii?Q?69twUr602cu4gT7clbt0+Lt9e5wvs0fhH99eNRTH6HzI8cA3mDkrV40SVjlz?=
 =?us-ascii?Q?V3oDU9kwhHCliZyLHzoBltrWNuvt6W+jvn9Lxq8yw71YB8Z3SWgyR1xriyV8?=
 =?us-ascii?Q?1FhBnlaGijwsxC0NBK2bpjllvKBGFiz0bxVHPYde4F5Cjro1CXgy3pQOEVZE?=
 =?us-ascii?Q?FkAV+y/GMA4IDh2FAbxKJikKE0Mk2EC8/PKG5ht6offd5iLwyArjDygJ4CZj?=
 =?us-ascii?Q?Tz5UmVnMFkyP4t5ZlpXjbPZDr+oo7scT9AmO1x7slhBn2yz4ROXJ78HvB9yA?=
 =?us-ascii?Q?uqtW9GBT3WWJo7LWB8M6o9xoHEhRpH0Xq8Ets/X7va3goaShnBQc1KIP2UXG?=
 =?us-ascii?Q?4dsoYc5BruBig4WaoZuI6vuNPC6O5MYnZX4CBozLiS7DcY5W2Mir6IcERSN4?=
 =?us-ascii?Q?olQfEKZSL0ibLV9P9qDEz2thT9yC+gUiVbWNHD5LkUA54diLXCFSZYOjx8O/?=
 =?us-ascii?Q?U6ChBFBMki3ok78eNnttfFxKnhGz9yKQTMXRtJb7TiNiOSmA/R/Vof/D2RPw?=
 =?us-ascii?Q?9sFAMEhPkzSaGmLh+8weZxZqALybq5GX/V16QlY60A2zrKAcvLixeGWE9sgC?=
 =?us-ascii?Q?yJybYyqL5DC6OJHaZB5UieSQrln9gnkKKXihGJaxRaISveZ7//8b4ZYRfi2f?=
 =?us-ascii?Q?0a+6+g0DvQqcBl7EVIS4G5EqIBD+qPGpG9ZynhbyDIlRVgHDgNiYcvgxeLD6?=
 =?us-ascii?Q?CYyTKFwjOWjxkNpODoTBaDeICGt5xfdhMsykxjt3A18+LkgAgg4ku24Re3HD?=
 =?us-ascii?Q?EkqyQMKyWgQUyYadWYYDNeuZihYjW81nUFWj1kzuEXZMVETjuKRORxCE9isU?=
 =?us-ascii?Q?IwWAGaDFN83DMNcT0KQUp5y5U2VP0kcmUMP+X2KSQUnan9YnZWvzvhFdOZew?=
 =?us-ascii?Q?wMZpZoQGmwmw+0ZZYwAIn6eMDeoS+Dv1mxoIlgiYGq67Q5oqBuJPln9qrUHR?=
 =?us-ascii?Q?2R1Y8GOGrHw3OBjrVvJehx3jxRgGqBkx+MRTovHUg1iFEqDzdVtO0w5rdVi2?=
 =?us-ascii?Q?9Vm8BXFuYoq29/Wu22YB+uT6PnOj5XSAvyv2j1ZwoYslrg0SwTJDOFXbzj1l?=
 =?us-ascii?Q?PR9/mm31hTwEudfbtkWgLdLjiU3mh1tl8BUA+dnEODxD0ihbdymctdWXciK+?=
 =?us-ascii?Q?nQXGTobEd2FoPQV+BLqzcJl8iAbTDi8QI2Y0agwowdQiApW190T0m9OsgMex?=
 =?us-ascii?Q?8sKq1Zmo6mztUv63j1FFtPt0sS8=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cd518f9-a693-4928-acab-08da9a33b0d9
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Sep 2022 11:40:02.9129
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: KvU5nNygG00EFGIfDpS+ZKviWZ2onAIswqTMAenF8IaZGIhEprZ6lIcYkZ+vo0BEZnTIm2FcOLxTG7WK84ODYNQLAa5BqmaTxman+4OKNrk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8272
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220919_044008_930793_4FCA2577 
X-CRM114-Status: UNSURE (   8.80  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH v2 3/7] arm: rockchip: radxa-rock3: remove io domain configuration
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



