Delivery-date: Tue, 29 Jun 2021 14:32:58 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCvC-00052G-1R
	for lore@lore.pengutronix.de; Tue, 29 Jun 2021 14:32:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1lyCvA-0001WG-El
	for lore@pengutronix.de; Tue, 29 Jun 2021 14:32:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=HnJdRHh6OdEeezt+8oBQHr2WWyCxEAefkEM99Ggl1sY=; b=UzcV1boeweBnoE
	eck9tI9jLmsR5VOWEFqMU6JwmljBtubqiseXtqCSaCr7121fZBIBcx2iQ9oPH059mkSnjuB1rgNCL
	Ix/4seE+W8p+9z9CR0bUlmyymLn40pQLwDwBtMYzQwIH9WbjaingIKhceRqTSrm8o6HmbC2gO3XsW
	lxkw9qol8ycmYq2Fls5qMhR0xVECdIF/393KiQWm+8p6Y3QnL2oD3J2MG9Slx8UJWSX3ovJ2L7DxM
	/yE3jK8K8nvMGqMUV0R9kbwbPtsKtdQvSLsbKNksfmozn30ik5GELD0h35qKM5tuKClSYKZ0TT0tZ
	mtIp/cU7SXBsDGRiMrXg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1lyCtj-00ApAz-Ga; Tue, 29 Jun 2021 12:31:27 +0000
Received: from mail-eopbgr140047.outbound.protection.outlook.com
 ([40.107.14.47] helo=EUR01-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1lyCtc-00Ap9E-Ha
 for barebox@lists.infradead.org; Tue, 29 Jun 2021 12:31:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Do1eGbE3780XOfinLNmx/KoI9rUNTGHfBRNLRi1Lyx6DjFPUyhSoDmcUlYClkbp6kg1ShzEIFJZs6aS2/zR3SX/2xX2Tqam2rF0mB8yrcOeuwCO6j2D0gqucH8eptzdAt5LqZ5XLkFIlpT6zkD7eBlmfBftk/iYQdftdQS1VkLZGNrV9udpYh4IFqz/5H02cDQ2x0W+OkWOjV2MBKIQqws053LkiOaVZyWZAMrOiGtgPkaqOSPjNUuYzU5mUlo3acHBRGw4Ic065R4UcQBfBN1cGGrqMhMxYCRDjwMyRqBstHCby2h4w0m2yHE9Q3Fv0YgResrHv9JY89EZaXE6wsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CLX0cXiaG/e2Arrz835vBuZu+1+SpLUq36ZCaE4LKw=;
 b=SoN+F3q0w/6EOo97Re2W9FRiosSQZhdIkkZMkZweOo/EaCR5cFlJvQs1wrfqyJOdDkE4cowriZFQ3Bby1Rsx7Ey8/L5yWLSeXqVK6hqSua00YibA4/nP4/Tidl5tMO81tTBEQziFD88TU4aEdJCW+7Ruv8g74Qy23YrVaEzyoj7jMnTUEUUUkfoVMNyuf9wXqOMk4fgxPUDHRLADAABkrvSjmBBv2AVzipu3PBrgj/aIa2faAydlpf7HXpAVd7iiCIONOhgB2fk0/2ZiyEquskqAc/sF2WaOyiNSBEHNbv3NXS/dGTS+ae1Os13bZyjZEUYawGXkgKXQTip3+/F9vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=0CLX0cXiaG/e2Arrz835vBuZu+1+SpLUq36ZCaE4LKw=;
 b=UJtXJxSaSml55UcoX2yrNpIzsp+/EBqEqSlQmEVxX6K0r/qyYCuWRmQnmhSmIfiR43ZkkSzKbJ6CN6xsH2BIkde7Dzdx+LFvJFSeI6WIQrky8+dkZhtcB/LJeh5cnnbpTm+hWnnET/8H3Dn6hhgLkBbpt922gVUH5y/+vc0+rJw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB7PR08MB3867.eurprd08.prod.outlook.com (2603:10a6:10:7f::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4264.23; Tue, 29 Jun
 2021 12:31:18 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4264.026; Tue, 29 Jun 2021
 12:31:18 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 29 Jun 2021 14:31:03 +0200
Message-Id: <20210629123104.13818-2-michael.riesch@wolfvision.net>
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
 15.20.4264.19 via Frontend Transport; Tue, 29 Jun 2021 12:31:17 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 82cc4145-c211-4dae-b3d5-08d93af9cb49
X-MS-TrafficTypeDiagnostic: DB7PR08MB3867:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB7PR08MB3867B61017AE5E9137CC9840F2029@DB7PR08MB3867.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:299;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: OnfoLdE8sibMSZtjnMFkH/hx37x+Fwre558ZTGr0l6Rf+rBfl19rh2iHxxy88mAv/1mXYeE+PSbTMMb7fUfmu2/AJdq4pC8PVfGeTCTf/2QDYs0+8b35XQk8dpWIWGiGHc0D6i751mTCHsyOEkyCoWYUgHb9gyb63LQAAMbHh4rgrMK//vk/9aO0GZtQ5n/OGArmgo/0RH8U27pEjc4PGwM7ff8vScVVa4pop7vg+uNIhCDBSQOxisMLh0tU0E1sZ3KGCTEwt6nEW6jJLfTra+2AP0kptl7T7QCK3POcgcV69MAiAbBLyNtGE/qx+IAUg2ZSWVID7Wz+uyxNhIdBC7OmJfwLUng2J2Xv8CdWXXuqlyU9vvErHdt567WBuJNwdXVsf94WJ16sBZeyOD9LTPVEqdRv1oBeAunnMPBuMnZyBei6XBnnDVzhK3e7s/6u4s8VKRdjPpYDLrcGA3KzOTUPlNLXNcFpYf79EjXqAJa9mxLdFBj+i0Nj2qYws9sDULSDDFhbsbI0DyaXyQdl5lTP1TshU37PhKbM4Bi4z7AL7b9Pf8P6zbaVa2MT6HXzS2pUdicDLrZe7sKks33ZrBeq17i/hUYrZqe+4Q1yyXt5GJmNfXeT9fwz7fMmsSEY0MzN1+R0M3RbyLDuhF5uYkMPzsWDUFrbwcJJ94xgaSxuxADom+0S1/X6HvOuywbLaiZ2O4jCHa0zuJuj7oV9Xg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(136003)(366004)(396003)(39830400003)(376002)(346002)(316002)(52116002)(5660300002)(83380400001)(478600001)(956004)(2616005)(36756003)(66556008)(4326008)(186003)(6666004)(66476007)(66946007)(107886003)(16526019)(26005)(6512007)(2906002)(1076003)(8936002)(8676002)(86362001)(6486002)(44832011)(6916009)(6506007)(38350700002)(38100700002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?DjRyucs9PQ/nQs2klI+hHin3eCfDsXDq36kDc1hVrF7TaLzbZ/7MlPE3hN4u?=
 =?us-ascii?Q?BBGvEInPrI5lDjuRaAsqMNQkTSM93b20OTOxo8FSIuWKyCcmGEUBIyyBRnoF?=
 =?us-ascii?Q?XxNOB2Q7Migc59maablwdpNiCwP+ejE1k7D2y2NEPlbTBY5luFaS+3MzOkb5?=
 =?us-ascii?Q?rg+Bkg+I5NFd2fR19ezbPp56HnxsWJFTGmSyiMCAPRGuAIq3pLd+mShXE812?=
 =?us-ascii?Q?xINI5pMa1MLFnQLuGqcYjKU9zZckrsMQhyj78g47QPd+2i29ORy/lRQfLKCC?=
 =?us-ascii?Q?ONNZGy4PcXyt+sTi8wWqIOgO3gL9k2HYQIDXOulksrBAVXPJYzvUO19T3Khq?=
 =?us-ascii?Q?ilFZ+LEkjkledXUEKVMg6fjoyd5n4pz/MlqE5rEGNMIhcmstPzBqpX2PAF4L?=
 =?us-ascii?Q?d+uAbyFBJyTExcTGAycVl4zAqw5iSdJxuh0EBLln09jBQZO+nq9FTVf7qs52?=
 =?us-ascii?Q?8R0DUVmItiVT5vx8FNCIwD0c+PD9Mn7CLkgm/GodtcsriXQWo3iVOUA/gX2q?=
 =?us-ascii?Q?ncBUYneBGHtbpfGCUyLGqJc9GhpmfbLuzJ6f7oGX3iNzyYX9ddO4Lqw0tGQm?=
 =?us-ascii?Q?YwdCPjXbIA+vP+KgAPWmwJOzmbRU1yvlTqkf5jp7e1dhHi2jA6EQGaQ4sfrX?=
 =?us-ascii?Q?DiVHdQOGRdiPWDnwIa7QXvUofRewqBo7mVRPdo8+vANdII1OOftEzMDwQKWA?=
 =?us-ascii?Q?/adx82548Dm9bzBnHQCarKkbxeq2QAHMxuKy/gU3FixHqyLNDT1SC44IQn/1?=
 =?us-ascii?Q?+rPCQGJnhBo63vHIWR67pRQBeUFpMjxg9uH4oSVwLyZtBx+oZQ8SOwm+FTZp?=
 =?us-ascii?Q?7z8Y5xsDtTDyg8ISN9wmk8VoDaGmiUBM6AsfPhzD+1sj47oZr4gJtluOl8z+?=
 =?us-ascii?Q?psPebBg0cGAzcM3PqEgjDE0N3sHeyMisvgTItgxnQ1KnBo7ou8Z+5jCyNNOW?=
 =?us-ascii?Q?V/EvBpLOtUwmwggI1PRQ5SXzV8Y5QUqxHMaHYeNgwEgPdmUPEti/6/MWczik?=
 =?us-ascii?Q?mueJgN1iRTqt2PP/taqpuiYkJBUV4oSKWq4KBs2DwRPaJrSyzhnvWQl6esPS?=
 =?us-ascii?Q?of/SFfU2Gsk3+sKBdct1ZGJ3ayWYSKfT1v0nZD9EhM9rg5KIlRRm+jEfwmiN?=
 =?us-ascii?Q?taqkAGnIpkYJzJFpavf5DpdpHXZbDUMwFv2yOaIzWX/FdIhivWbo9gnxzIDH?=
 =?us-ascii?Q?t/eISauKy165tCyp0x1fcTj6681BBOMAHb/LU4QzLWMUd+8CjgzRjE5nv7iw?=
 =?us-ascii?Q?7LVB5XY763o5d6ebtEOkV0ezX5r2byYSdpWKUO1sGURPnD1enlItfoPr9H21?=
 =?us-ascii?Q?Rtvv7+lTzp1SiUtPQopXqUOW?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 82cc4145-c211-4dae-b3d5-08d93af9cb49
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jun 2021 12:31:18.3387 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kvocUoaEl7vy5aAHw0QnL9HEPVTCTZCtn2SMsp66+RouMv/qAlpIYq78cYtz70te2Si+WVkfjNa7w8qLYArbfJbTO7UWc1MYlF3l+XYG0YQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB7PR08MB3867
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210629_053120_606761_020C4DBF 
X-CRM114-Status: GOOD (  11.97  )
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
Subject: [RFC PATCH 1/2] arm: rockchip-rk3568-evb: add hardware id detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/rockchip-rk3568-evb/board.c | 36 +++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 57c24ed3c..ee8e1b979 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -2,6 +2,7 @@
 #include <common.h>
 #include <init.h>
 #include <mach/bbu.h>
+#include <aiodev.h>
 #include <bootsource.h>
 
 static int rk3568_evb_probe(struct device_d *dev)
@@ -34,3 +35,38 @@ static struct driver_d rk3568_evb_board_driver = {
 	.of_compatible = rk3568_evb_of_match,
 };
 coredevice_platform_driver(rk3568_evb_board_driver);
+
+static int rk3568_evb_detect_version(void)
+{
+	int ret = 0;
+	int evb_hw_id = 0;
+	int evb_hw_id_voltage = 1800;
+	struct aiochannel *evb_hw_id_chan;
+
+	evb_hw_id_chan = aiochannel_by_name("aiodev0.in_value1_mV");
+	if (!IS_ERR(evb_hw_id_chan))
+		ret = aiochannel_get_value(evb_hw_id_chan, &evb_hw_id_voltage);
+	if (ret || IS_ERR(evb_hw_id_chan))
+		pr_warn("couldn't retrieve hardware ID");
+
+	if (evb_hw_id_voltage > 1650) {
+		evb_hw_id = 1;
+	} else if (evb_hw_id_voltage > 1350) {
+		evb_hw_id = 2;
+	} else if (evb_hw_id_voltage > 1050) {
+		evb_hw_id = 3;
+	} else if (evb_hw_id_voltage > 750) {
+		evb_hw_id = 4;
+	} else if (evb_hw_id_voltage > 450) {
+		evb_hw_id = 5;
+	} else if (evb_hw_id_voltage > 150) {
+		evb_hw_id = 6;
+	} else {
+		evb_hw_id = 7;
+	}
+
+	pr_info("Detected RK3568 EVB%d\n", evb_hw_id);
+
+	return 0;
+}
+late_initcall(rk3568_evb_detect_version);
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

