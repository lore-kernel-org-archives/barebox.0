Delivery-date: Mon, 05 Jul 2021 18:07:17 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m0R7t-0006pm-7C
	for lore@lore.pengutronix.de; Mon, 05 Jul 2021 18:07:17 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m0R7r-00081V-UP
	for lore@pengutronix.de; Mon, 05 Jul 2021 18:07:17 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=YHykZgBzlWQDFYiKYmTwHUlTwpQ8e1K6x4WY8Q30g+4=; b=LA1aE0eDHuGpYF
	TyEaLHoB1qih0AfPedJw0wrnJX0HyMmZz04a7BI8Jv1r7CUX+UrQ8KLw7leNTAbGYP/0b1xgyaO0W
	Ipr5Ufj+1JZpoZ8QtDHZuAKacHXgN7BVosNgL+pAA/l3rOJpBDQc9O4s5y8WKwVToW+Nw8JFXKPQD
	S+OD5zS7z8mhiLTwsUb2P6oBBJD9TsHO5AtxMsyi2dMxbOnOqJBWiQ2rYSRRGSUSwzgeWw88YRxd3
	IZbRCARSMMXe4kUInphr7byT4uiztE6J8l48+RGRmGKcwjnW5n4qZqJhW6J0T8oFwKTfzJkQBDqnd
	Q6kGQ+kfJsQcR5Tl2dhA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m0R60-009ScI-PE; Mon, 05 Jul 2021 16:05:20 +0000
Received: from mail-db8eur05on2075.outbound.protection.outlook.com
 ([40.107.20.75] helo=EUR05-DB8-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m0R5u-009San-Ve
 for barebox@lists.infradead.org; Mon, 05 Jul 2021 16:05:16 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=M1fkKvdFNmDbV8HsJDrun8aTYXglkGLqXPG3DZOGujnsXOUzFPZTLMw3mN6QHvaWx6YxbIgIhmcZoaC9tTfClzuTgc+VBdWtpUn2FfZ0wLjURcvP0Koyhe6gvvmPYFVQXYv9IZLhSQPLHcamyE+aFOkcth+UkMA04tAdqE0YukUkTcK/oUpwRpZoNUKI+0hKFjwbCnvWEvtBsLvaagKRP2get7vgYbOc97y9GTL++CFMklEZHi/Cr21eXMXzhlUBXp2JXx+ljRF1MisWwJUsWkeEybU7ikB5nAcD1BybuTmjOGNYH+9c1wggdy+FGD+7noBU/wABgytl6bxJ9EF8Ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eXZZGAf2jS2vdkI0BBGw13Y4gyJsWqgi5nyI8WS0q7g=;
 b=QDrs81/x0UtGhPNZ4hzxHMBQauFwpWKK1Hz+iLxNZLgmT6plDbMtaVxMGviBzEADaTEr1R4bBIOx8uf8g/uILe3IVM7/xPxcawXPwj/Oqv6EYM/JG7rm8ViowHmXv01l1+KnnXHDcK78/5tBokMNIrMnzWIpbq/dBGYSv8Tx2Gf1P6SdgzvlHOS98Q5xaCsoAQbO6taEeTUI0uxmVqrfPBCYwRwPE5rpdr53fAh6GoXgphOLUi3kNbLciUxFP/TcSKPTYL2zRObs+Ttncjq6RXHA75gI5vx3Tl2HYLZHQa/BOcepxAhJop8Przlf3282FT9cEOiOMj6qoTcbOLNCzw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=eXZZGAf2jS2vdkI0BBGw13Y4gyJsWqgi5nyI8WS0q7g=;
 b=FjSagX7qFwja0MxvrqdO24XCZb8QJCBfyLakW8/B+0j497XopxqJReWMGvlkcTfolu2gjSaTAimKRJT2WMOGZBFkuJGc5tXsVjHMUAOpd1JLJf3syXyQ2PpmGlmTZlt5s/qdCN9bKJeynOS0Fu299BmmkTQ/YMog5wOBqRzE5PY=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6473.eurprd08.prod.outlook.com (2603:10a6:10:257::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4287.33; Mon, 5 Jul
 2021 16:05:08 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::ade3:93e2:735c:c10b%7]) with mapi id 15.20.4287.033; Mon, 5 Jul 2021
 16:05:08 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon,  5 Jul 2021 18:04:57 +0200
Message-Id: <20210705160457.7346-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-Originating-IP: [91.118.163.37]
X-ClientProxiedBy: VI1PR09CA0065.eurprd09.prod.outlook.com
 (2603:10a6:802:28::33) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR09CA0065.eurprd09.prod.outlook.com (2603:10a6:802:28::33) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4287.21 via Frontend Transport; Mon, 5 Jul 2021 16:05:08 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: d02badef-5f5e-4942-b0aa-08d93fcea95f
X-MS-TrafficTypeDiagnostic: DB9PR08MB6473:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB647388A08EAE465E733993A9F21C9@DB9PR08MB6473.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:568;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: uNRPclgwhDo/G14HWjyyB1E/di35y+PyfisU01XbaG+jRytxDzJeI4UFJZURfwGLgQ1bB68jL65wEF5/fjt/RndwDD1juKb623JuO6bC7HopfTU5oTarpsnU/zKSP+RaijYSR/cZgD0b6hoZAX5mqgEkf0VLgPjXLSQEXyQTg/ycDQns/wJJx3qkTTqQCjZ95jJrsaUi0V+vJ52IEmF5Ht9eWbcjqELsm31jSOWkAHkHVYk0BNtMkic9oYtvVwHgYGE6YaIsUnxSW5vtWGkiE9C6bkp+891ObC5Yq3ha4qarJcnvJv9bI9MVXlTPRcb3ManLAgPphUNECvzwLu/Z9N6JGLsQx4u6y/6zHVBIdgbD+Z7ytFxjG6/sXzJN6Eahziq31lIbfgFq9/MElGCqgOgDgn9Z8BBQgWtCgC6o5r1U7EOhiofptQ/WRakTLAZqwb0QQL2rBxYk/SlvZ/SfsaXvkrJzPDZ+vqFdbAN0xHVvSPI+8lUZ2TESMj+SM8OBlTwuoZ6NRL40I+aVs5eWRQVt9OuRbunQsz39nQqZSU9ipxja2AuBsJooTbi9gKJvgf9nGSAgy484vl9PKsEuoEHIdWLwU2neWYoJgeIBKGN5n0hV+x0veM79E4QRlqMIGugzptYcY+VvGd1KZ+B+r/UlcQIobyhBFHcPAsv3O7ca6JZcYZREs9UB5mYL2x9VY1gn5GjWLUJrvpfKUa5OGA==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(39830400003)(376002)(136003)(346002)(396003)(316002)(38100700002)(6512007)(36756003)(6916009)(52116002)(86362001)(956004)(2616005)(107886003)(478600001)(38350700002)(6666004)(2906002)(83380400001)(66476007)(44832011)(66556008)(4326008)(66946007)(8936002)(16526019)(1076003)(186003)(8676002)(26005)(6506007)(5660300002)(6486002);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?/MLQwr1BFreN7qxgt6WdrXLPEbPr2B63Z+P45u7XIz7xGvIJyqcfWuWYSIx3?=
 =?us-ascii?Q?LJyaA794C2UiC0bw7gBYXqylhMuMB0ZVaAuxjZaH1prvosxVuTrbz7Vo9foZ?=
 =?us-ascii?Q?lpDtQjVdnZ0aQ3sUsIIx4GrMb6SPKJSpKOFYlfGVONApYWl015HGDxUwyx03?=
 =?us-ascii?Q?SIH1h+s8fUNFmKtkEwoqOXzYMh/BhGmYrXpkrj4IV7ZRl3922wmdCnzaqMAR?=
 =?us-ascii?Q?IlUiZCmhJbA1e7kWY3UBk0EIUoKmU7OIAg2tMQ6fO3qJwmb+zj3RULZmul8e?=
 =?us-ascii?Q?ojZukdobMP6JzoylZkrz7g1qU6KQ0/+Yzk5SCdFoEMlRtTaZ68gz4nNP2JOf?=
 =?us-ascii?Q?W+DZQN5jasYom5jMUZ6bRI9U0eVqOdQDWFsoQ1eSjuo/Z1gdUZM3J+HzuYrX?=
 =?us-ascii?Q?1wEQNAcrk/pkTxAHcSNvCf7QQgJf2YqeAscRsw/hHM4CmdqM09Pn6P9B29VX?=
 =?us-ascii?Q?fkxGH/am/k3wBmU3fqHYKrMuZxMlPNi7v+B0VbTC2mabY2T7/mcv3V6isYYa?=
 =?us-ascii?Q?2LECxpOiaW3ux2ipdBoVWY2vOfw06VNOjlD3lTBjwuYYEsUwYIh8ctvjse0B?=
 =?us-ascii?Q?FcPAnz4bTbUlAKI8Lc3BBaFL22tR96sSPBdcXR2dLE8N4Lf4kYCB9xoNtZNI?=
 =?us-ascii?Q?AplKzbYb9aaSbr5eVqBz8Inv/wlzpOh417D+wMmtIkGhmseHkDdSXQjypnbm?=
 =?us-ascii?Q?6PxgCfWa4MV70bkwwgKMIS898WXu8nUz+MSoX4OKObxqUUs8zBF/Cqo05KM5?=
 =?us-ascii?Q?nehh8rwZdQH137Hj3bu9OUzLpqKOiLezrbqt+PoIUlzWLjWG2o15YBJwNwhs?=
 =?us-ascii?Q?B8FiDgnTQoxhJs5LoyiIRUUo9vD8QyCLlY9b+unipGgniFMgQ60zX73ToZH/?=
 =?us-ascii?Q?IKsXhmiY8IBXsvcSS8oKNiKmI5yXqdgysbHuGrwC6DNrpDxoV0GyH8jJirzM?=
 =?us-ascii?Q?PsfGkden1D2Yrdqa32qEhlBp+dG5WBRCQUpaerhqwTPuoZSPjHufBciA60lT?=
 =?us-ascii?Q?hngL9pGzOKHSJyQtIHsRndqIwayMjouCX2q4nftMovqqFtJj1D/uLBs6deEG?=
 =?us-ascii?Q?CgmHyzzM9njxXvS+4+/QLVfgkCPSHonZE7RRiqKw2F4ouUEA+ZYt2uxIMF8t?=
 =?us-ascii?Q?MhhFeectJPrDfuWxSmVcJCnlW/vMVE591p3fnqb88bJIY9iiXuMPXJ0YN34R?=
 =?us-ascii?Q?/6T3B0untIDVfC/B8Gkj3ddSLTE/23Df5u7U0ErjWZQzO3bntDMRYUduMp6u?=
 =?us-ascii?Q?wzhJt3qCY6di/nSRX8zySNKIe0etLyRNB8DgSNYas1SU9HqhgIg8+zV1tiiW?=
 =?us-ascii?Q?Vqc36RE97ca3yZyBJwSIhQRQ?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d02badef-5f5e-4942-b0aa-08d93fcea95f
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Jul 2021 16:05:08.8508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: RMnVr7elUg1QbJb6DVGhHFAJS2j6bYOH63Dbxl3qEhZDGdHE0Ma2wYrrbI2xxg2/gHrGTzv4V6I83n40gRCJ/G/ENJK7QB03Jn1CNecbPLY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6473
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210705_090515_137132_1A0CF77F 
X-CRM114-Status: GOOD (  14.10  )
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
X-Spam-Status: No, score=-5.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2] arm: rockchip-rk3568-evb: add hardware id detection
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RK3568 EVB uses a voltage divider to determine the hardware ID of
the board. At the moment, the voltage levels for seven EVB variants are
defined. This commit adds a late_initcall to the board code that reads
out the voltage and populates the hardware ID as environment variable.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
v2:
- add compatible check
- return early in case the voltage cannot be read
- populate hardware ID as environment variable

 arch/arm/boards/rockchip-rk3568-evb/board.c | 56 +++++++++++++++++++++
 1 file changed, 56 insertions(+)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 57c24ed3c..f8b257e57 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -2,7 +2,13 @@
 #include <common.h>
 #include <init.h>
 #include <mach/bbu.h>
+#include <aiodev.h>
 #include <bootsource.h>
+#include <environment.h>
+#include <globalvar.h>
+#include <magicvar.h>
+
+static bool machine_is_rk3568_evb = false;
 
 static int rk3568_evb_probe(struct device_d *dev)
 {
@@ -11,6 +17,7 @@ static int rk3568_evb_probe(struct device_d *dev)
 
 	barebox_set_model("Rockchip RK3568 EVB");
 	barebox_set_hostname("rk3568-evb");
+	machine_is_rk3568_evb = true;
 
 	if (bootsource == BOOTSOURCE_MMC && instance == 1)
 		of_device_enable_path("/chosen/environment-sd");
@@ -34,3 +41,52 @@ static struct driver_d rk3568_evb_board_driver = {
 	.of_compatible = rk3568_evb_of_match,
 };
 coredevice_platform_driver(rk3568_evb_board_driver);
+
+static int rk3568_evb_detect_hwid(void)
+{
+	int ret;
+	int evb_hwid_voltage;
+	struct aiochannel *evb_hwid_chan;
+	char *evb_hwid;
+
+	if (!machine_is_rk3568_evb)
+		return 0;
+
+	evb_hwid_chan = aiochannel_by_name("aiodev0.in_value1_mV");
+	if (IS_ERR(evb_hwid_chan)) {
+		ret = PTR_ERR(evb_hwid_chan);
+		goto err_hwid;
+	}
+
+	ret = aiochannel_get_value(evb_hwid_chan, &evb_hwid_voltage);
+	if (ret)
+		goto err_hwid;
+
+	if (evb_hwid_voltage > 1650) {
+		evb_hwid = "1";
+	} else if (evb_hwid_voltage > 1350) {
+		evb_hwid = "2";
+	} else if (evb_hwid_voltage > 1050) {
+		evb_hwid = "3";
+	} else if (evb_hwid_voltage > 750) {
+		evb_hwid = "4";
+	} else if (evb_hwid_voltage > 450) {
+		evb_hwid = "5";
+	} else if (evb_hwid_voltage > 150) {
+		evb_hwid = "6";
+	} else {
+		evb_hwid = "7";
+	}
+	pr_info("Detected RK3568 EVB%s\n", evb_hwid);
+
+	globalvar_add_simple("board.hwid", evb_hwid);
+
+	return 0;
+
+err_hwid:
+	pr_err("couldn't retrieve hardware ID");
+	return ret;
+}
+late_initcall(rk3568_evb_detect_hwid);
+
+BAREBOX_MAGICVAR(global.board.hwid, "The board hardware ID");
-- 
2.20.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

