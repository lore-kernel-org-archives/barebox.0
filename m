Delivery-date: Tue, 29 Jun 2021 14:32:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCvC-00052T-Av
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 14:32:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCvB-0001Wx-2l
	for lore@pengutronix.de; Tue, 29 Jun 2021 14:32:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=JbM4HB/8EsHWLctuQFGPAqtdtMK8tLj0CjMV8+5guMk=; b=QSTphVNu674ana
	ewHCZ96TEv6aJd0cdtTKsecfwqPsKEY0Q09Q6/Fyws9T+l1QK6UFuozO5uJWCU+5mCMFLuFotHK1Z
	WlrLiuXX9W9Q9KovgfNrU+Fj+zSgo2dBJx5s79RqEX9Zc3FrYGGPhcRKtPmiv1AD6PAFRepx4d1vP
	57F+WFx+YsqrHKh3Aj4NyIhRtwfEFvn3QksimuC6hwX9frJlQqPp6jCDbcq0XVcADiv2D0ga6sK79
	0exX2k9TXZKv3wtbcurjYCIrN7Y1ZNgcNSAblu8M0j3tjKqFX2uag7xFt29RLUcRFGX5b7YFmKFmE
	fsHs6+DKeRJ+RJsSjZiQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyCtn-00ApBx-EP; Tue, 29 Jun 2021 12:31:31 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyCte-00Ap9E-7Y
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 12:31:23 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=F6gRASUKv9lypXSV3rHd9j9ZjHeKo6gPxEMx294OC9AlWbAPP80EmwDaSa+xBPg1k5wJpEFZMt++Ssnv7O6rBJD+EbSCH8U1eHPKGfORasM+8q0VvD5X8Z69Q2iVxgS3a/L1sY4B7aEUQd/PtFiMwIIvBrtWMTs0lOQGoS9Im43R2wL8N38z0ewpliYIbw/1blgapcG9tuqMiupWQFkYrHKPxBY2+MgSxEHrJJkofkxk3OhhntywedyvrNGkEi04qvp2lhaWfFlw6Y07wcpptzrMfqV3sguBP9NdjAjhAzFxRcXCf6cSk1PjcIfcb4MOStvAQyT2tg29Sju5QzzJjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hhYZCOsTeZvnrrsJqLc711V2FuG18teuOAZ6vFGa7oE=;
 b=jaPnOMzHoOOS4gQOzagk18H1k95knAjDx3ed3GGhgHUc7axp66fG8jQaIIn6/2muKVh6Sw5IuP/JOqh6VYv9TF1yG9Qfy01NMjw2Xm3Y1ck/S6fzE6NaGFmwylH9qyGTwIZ3Y6fVdzFWVkBahw+K0l4L4yWTwg/nPzMHdwIP7PtT7/MSN+Jx3ioMszPlNy7WkPVP32Gbje5g957QNo9yFzfXQd7SZYDpwGor3k+9aM4to10jxFaVlLfvsJUPQTeyEXKT3Hj5rx4ouMGY/TaaLaD2KVC8SXmxFqJdhNL5cvsh92Hbl558L9kbMAtYH/N+gTtdzTutiHpTPb92z9yYbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=hhYZCOsTeZvnrrsJqLc711V2FuG18teuOAZ6vFGa7oE=;
 b=s7HAFuRqnFuLMg13r1rJAcEqGzGG+YdNmPkzVvNu8LFi6gRq75z4P6HkZL0DBhRBG7dr+opSq5fOCHoDSr3LhHGlViK4spJktlN3sGYLjdLoFvQGdB12zOYT/jNeMUl3i04YCg9o6AjrUq2kY5EoN6MFTFi3RGXnK9I4eG873I0=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3867.eurprd08.prod.outlook.com (2603:10a6:10:7f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.23; Tue, 29 Jun
 2021 12:31:19 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 12:31:19 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 29 Jun 2021 14:31:04 +0200
Message-Id: <20210629123104.13818-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210629123104.13818-1-michael.riesch@wolfvision.net>
References: <20210629123104.13818-1-michael.riesch@wolfvision.net>
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR04CA0077.eurprd04.prod.outlook.com
 (2603:10a6:802:2::48) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR04CA0077.eurprd04.prod.outlook.com (2603:10a6:802:2::48) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4264.19 via Frontend Transport; Tue, 29 Jun 2021 12:31:19 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: c3c025e9-d46a-41e9-703b-08d93af9cc27
X-MS-TrafficTypeDiagnostic: DB7PR08MB3867:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3867FBBB8CE5B70303AF1524F2029@DB7PR08MB3867.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:324;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: vs9WLzm8O36mh/xsMuVHIfm7e2rwUeA/Jg1q9hYeQFcyvp2M9jR2mDPJnQmjvSahy7sXLoIVbu7M5T03ZFABszecZ/InauqIlutkttIl/m0jUTOSZ/8W8SFE2jqAnVV3x6WLmECMZ5s5MiD/1Ow6uorMaOb7ThUgw8vc7C8SQxa1MNKGLJfjQ3CZ9SasI30oZlER6CTqg15lemxUX8AQooRIfzXK9q5cLDDI8RamzTPJb2mcYfm9KR+ONgRrglOyMiBQM/fDGWYUPLB5O/D4cvgg7y8JHZlB1fNT/UmJb9mCI2qyP4ROSQwDRAx4mQ4Zq5DhI90kTiCL7p6AujOU5aaEsQO2vhNtOk6+33JHzD9d3qSSTeYPhIQrw58MTU/ZGdWmKdp3r3tHIVZMaGR5MzkMFfl7tImK01qD5P+8m7+idEL1+Esrzkbzit+9Y+PS9eV/m4okV4Qu4d+K5ZhXSTzjKn+bRZP/ObncMCEu8UzoDrq+tpGtQX/+YkXLApxH/BvUIDUQe4MfpNM6es2yHwEy6gcCGHQVQNy7kWlxBHOzPoUor39ltkCf1NSGhVZoHmVo+arBWx0muP5a0VVmY8gukRLm6I/+d59yfTnbKlYeUXri2ufil/Azd0IfrUFbcnylukEazEO7EVfF26gaSvhAgsAi1QKQZbnFVey7Y8SHd886D9VsXnGzG+L2haa7IEtFeOKAkOFdOP3vb1L/PQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39830400003)(376002)(346002)(316002)(52116002)(5660300002)(83380400001)(478600001)(956004)(2616005)(36756003)(66556008)(4326008)(186003)(6666004)(66476007)(66946007)(107886003)(16526019)(26005)(6512007)(2906002)(1076003)(8936002)(8676002)(86362001)(6486002)(44832011)(6916009)(6506007)(38350700002)(38100700002)(4744005);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?EU9oqE8qcmuFeEBFBRZsNFioXtpyldhYLUiCLrlRQZye+3s1U76h92lNguVj?=
 =?us-ascii?Q?4JzcC74vfDImbZbW9ZbQCEqkC2jbaxlMeGGBQTTmLwdO/Rk2zyP+AkarvkRN?=
 =?us-ascii?Q?AkfEfLYsUNyTL4zEauxozt3yd4lZk1R71xeZ6VV/HfMwuM8o1+GqCKoHVIfm?=
 =?us-ascii?Q?6pQtNanJw7PBHYj/WpVrpfu5G7O5SMjt/kyExSnCQ9/e66poudAxkeIx96PF?=
 =?us-ascii?Q?O3oR94Y+yodX24Ztu8Nl3jIjQVH5Jrg12gSGRxbC0sguVFTSoYKZ7a7XUmuS?=
 =?us-ascii?Q?2NVKo8/7do6EicWIYXnn0m+AJDJTWWqQqYmRXcO62Jp/quYbjS9u4Q+eiVIJ?=
 =?us-ascii?Q?mHMNGcHdvLVNIGxg4oz3fUcdz4BL+PzgQvXbqUyNRKraP9ecJfJaD0tr8EKj?=
 =?us-ascii?Q?6++UKjp//K8XrnVCYN4XsXzj8HOModekQLzDhPwxVXQUpgNRpwABW94W3bol?=
 =?us-ascii?Q?/A+7zJrPp7rfSL2mo7dego2kVq57giXkw9EP3dbXgOCIrEt70K0uqKsI1QpH?=
 =?us-ascii?Q?U1Qmck+o2c9pcgMAIHwjqegFstREtMvjeanHq3rxDip9HlDax7CZFYcMNg/2?=
 =?us-ascii?Q?05RvXIxIV/AK9TEmdr8837I2zPa6VA5eiYf9UdIf0fGo35Co50u2lZ4hKyY6?=
 =?us-ascii?Q?fPkdtj+BARMRCeN49TbdHsoFON9+2x2dlGrKfB10A/G/Wsfnat8JuJPq1Yyr?=
 =?us-ascii?Q?RdsL2RwMotwbTHOUNmGLK6DxJ1hbkoMnDZaVwmt81ygTZqaC1Z8wlTP3sGSW?=
 =?us-ascii?Q?LB6tQ0DzjmSGNROp2UA9gI+4wwXYdWfi+uwivFL6y9tLDSwasYIL0Rm1J+Fz?=
 =?us-ascii?Q?xPI7oeBrs/p1NrASUurplKIL2QDwiqijUDEp/G5WsPYzaxzflqyhSnUMsrwm?=
 =?us-ascii?Q?kg6WlvQfJJ4ANymjQQuDzAkR03KghXY5G/GNLis6JhxqnV6qt3pVRr7/iq4/?=
 =?us-ascii?Q?RynH+3s1h8lW+xggbcY28nGsMomDu9d6Ou2ti+3JYRmFFxKmlB5CVTYuKkLJ?=
 =?us-ascii?Q?by1XeBryDVXm3ZYXYeCb6qFo0OXFEO2jsKUEAD7WWcCykRafW57mq1YQ5bD7?=
 =?us-ascii?Q?xb0t3t+Q7fSq2EK7uqKuZiE1ju26mQNvJY0t8cjunOwhqLE5xAPfPUs6sZ2L?=
 =?us-ascii?Q?9a4ep80+INwLlrPwy2CdtFOX69zuP8km2hXOpPwkqrt+QdmJRSydckntuZWa?=
 =?us-ascii?Q?6T4gO0FqeOEEEhVj4wzO8ncvLd/33UqciwhCuzGAVxIkYwd3lK1dY7YN1eBt?=
 =?us-ascii?Q?R4Av0h2X5iwfKpiz5VcqkUxuI2Zh4t5CQpe5GFBwU2zSsr/XsPJYbUDTdOqj?=
 =?us-ascii?Q?YmIumgRBis7ccCO/QgyCOWiJ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: c3c025e9-d46a-41e9-703b-08d93af9cc27
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2021 12:31:19.8069 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: YasaUu/Fh0uM4jW0aIiaSPc12TpN6graOdMrmyVrJPt54ThVhbovuINl/25YaWpX0l4Bf2/qoDYo4aBLFJsEp3m9qKWMKRsf4TZRefqe9Wg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_053122_298837_812EBE8F 
X-CRM114-Status: UNSURE (   8.25  )
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
X-Spam-Status: No, score=-4.6 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [RFC PATCH 2/2] arm: rockchip-rk3568-evb: apply dt overlay for evb7
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/rockchip-rk3568-evb/board.c | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index ee8e1b979..5b20e016a 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -4,6 +4,7 @@
 #include <mach/bbu.h>
 #include <aiodev.h>
 #include <bootsource.h>
+#include <environment.h>
 
 static int rk3568_evb_probe(struct device_d *dev)
 {
@@ -63,6 +64,9 @@ static int rk3568_evb_detect_version(void)
 		evb_hw_id = 6;
 	} else {
 		evb_hw_id = 7;
+		setenv("global.of.overlay.dir", "boot");
+		setenv("global.of.overlay.filepattern",
+		       "rk3568-evb7-overlay.dtb*");
 	}
 
 	pr_info("Detected RK3568 EVB%d\n", evb_hw_id);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

