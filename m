Delivery-date: Wed, 08 Jun 2022 22:20:41 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nz2AT-007uAz-Di
	for lore@lore.pengutronix.de; Wed, 08 Jun 2022 22:20:41 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nz2AQ-0004md-RK
	for lore@pengutronix.de; Wed, 08 Jun 2022 22:20:40 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=O6FeyYAUJc5o2jUw2jvHNq4R94D+sW+jGQAqLkQRgSs=; b=UtfSxrlaMNGc/l
	oQyD1F0RBLaT+A3B/9lQRShiYBZ+PzNVJfKnYIOpK64gNChBjmrAhXT1hMTuQBwBAmBX/kcJNUhDd
	TAa94Zl9TqrG6OvyKVOSnGZX5CYjPG9zeaymYZwssKLiHT0jo+NMXVnupHsoqa1WjHhglJuSjTkXA
	nzwUWLNTzfNwZaQdkVGmQaOqu+wtaGVm9jicCwB1gez8B4DjbIPXPTqb8OZc+ySfg6t0d6n3tK2p0
	WztleIv6LdlB3/NKHO4OGEYR67RduluU93bK2uTtZWZnlsZ2f5kupRMvFRsLUaKrDQMuPcvABiHoh
	4IBTsFhxMmGCW9BRMsqg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nz28R-00ErJx-Kf; Wed, 08 Jun 2022 20:18:35 +0000
Received: from mail-vi1eur05on2060f.outbound.protection.outlook.com ([2a01:111:f400:7d00::60f] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nz28L-00ErHt-L3
	for barebox@lists.infradead.org; Wed, 08 Jun 2022 20:18:32 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NKAqUaFD//aNNPwRS/ooUwwR2xtSUB2yAFBhlO9RBKr7OkLY2z6PESDAzMELLpjlEeyymdpFwlnTWcZ4T/v/occxEMK2Y9b+E/NOopsDuMsMx80U9UJzHgRwODA8KFm0t1D1coNp3b5250FCpU2tYNLyELySX2Wvo2UJeVEesUeFY6OmNiRudUSAj70/eeDWLKK1pW7cdTfL7mSDMWeTTMN6eyAmPCuxlD4aCkCbxxRBbexcXZEqyjdII1T9gQEZAGw3hCm89mGeNDunUx0AejUrgUXDn7nLQd3Rn1TYJ9M5blsPVoZ95C9nk8HrmoXXKQADZWE5Z8+5Djp+pXmGMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=nkOuxNbivOirrE2zN4vGjTAcdHWCcqZWSmF3cEQuKVs=;
 b=cI4aS2IuiOHWqeSQXIyk6LCl0NBD1uTp7QQRri0qUvZEfpHXGhordabUzpfy3RP/uSo9w7S3YcInl6EkRAJFqS923/JrM9GV7+IAvmTZRpTj1FWic+pbeJ9Gf3kqrKdKTtWNlJ9ipZGTWMoehjbBnNyINE1vj0VGtsYdThpJ5VOeFN7+iXWVIWyY9zjLG8CM8dDT2CvEijvAVWclb6akyD5kRW4+Bp2ErNv7N3QN06VqJR/oFduJBTMfNvBHDdL4oP3n3gUa54j1dQ3xAy5cGQHsSN9cI4dX9/Gsa4mcDg+ETdy9GpKKI98mFZ5B1KrJa3p1SGq+4PpjAfcCO7CfMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=nkOuxNbivOirrE2zN4vGjTAcdHWCcqZWSmF3cEQuKVs=;
 b=yAFg0dhetqialVEGLTTyfoCGNLjV4iheXtDaOBSTxmDGa4G6UFHGSMyEEw6HIhygK+2Qcy/cOPpOYdkfUmgP/f/jffgGl8GS+JPdG8mrrdVdk4TrbOr58ABUXWPqwYR2/OcYRekLuJuhyy8y5pdaH4G3/gouR5hy7LHsGer2uog=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by DBBPR08MB6265.eurprd08.prod.outlook.com
 (2603:10a6:10:207::18) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.13; Wed, 8 Jun
 2022 20:18:12 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5332.012; Wed, 8 Jun 2022
 20:18:00 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Wed,  8 Jun 2022 22:17:47 +0200
Message-Id: <20220608201747.3270318-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: ZR0P278CA0193.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:44::23) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 19a099e6-61e1-4635-4dea-08da498bfc15
X-MS-TrafficTypeDiagnostic: DBBPR08MB6265:EE_
X-Microsoft-Antispam-PRVS: 	<DBBPR08MB62658412274C443757A0C471F2A49@DBBPR08MB6265.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	c/P9oIMQGTCwphg5VdbSlXd0i1LKuIXYPjxibacEXPoBiMPDJ8vZGY1+NFzTt7vjZ3Ld9l6hpZ+iw5LZ7Hnj9SfSgI/Rsao6CVq7wuKvT4UGx23B+TMk/lBo3S6GUHuK2icimfB2w4rcrxwRgeIjpRXDQHt/sq6ZF4NXpLLU3/TdAV/fQclwx4Vb3gY/yKAxodaBwSWDkwPlhcj2BQkz7jZogHTjcy3K76g6ANkRe4KID3amCoV3GJvcBDWb4BNRFmtv7XX3xo7ng3tOdvK9ldH+eEQULPnZMhlC4NH0jCovqTiAXnjCqVnOL492LhzynC6HvumuVXz09kzAWnKuO78Z9+YjN6OGuHffSv8LY+YTIcXhNmL3oTuEO59Y9GjWOG32UAbssdr3U/g9uhqBr+S2BgSBS1UW7TTNyGxgurUXx4YukHvFuhUrzPXOH+KdQawO+wyr2DR+SNXQAoBDV5XPyxckkD1dSEH7TiwetJNihnHWDRwcilYZEcrWkq/WEXL6nbYeZKdNDeC43up3HtfGe2TboFPMtsekF1fnKoIDjMPDdy4w45WvYQ4vlasfb5ZoD+yLIxehRq/7aAN8OEF6Eb7F+D8kjbdKCZWuq5DEBiG0OOjTnHeL/EBH3g0XuE5z9LQtzm2W/US0I6BPaQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(396003)(136003)(346002)(366004)(39850400004)(6666004)(2906002)(6916009)(38100700002)(30864003)(6506007)(52116002)(6512007)(86362001)(44832011)(36756003)(316002)(83380400001)(107886003)(8936002)(66476007)(41300700001)(4326008)(8676002)(1076003)(2616005)(6486002)(66946007)(186003)(66556008)(5660300002)(508600001);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?R9vGrZvH6DHYpESwZXZH+DIOb4VEpaf8jynJDE7hGDOz5VCN5MWaLwnObVg/?=
 =?us-ascii?Q?kWkBVkGQC9BiAS6+jz8MxoERzPsZqrsGw/9H1IpwUxAuPSVyaYXMADb1WAaj?=
 =?us-ascii?Q?XphTglsc1JCWbh9TAPKHWUxPqiFwW2D5TCxCqVMRYO8Lq7sZrgCPDERJH4Sd?=
 =?us-ascii?Q?U/Jp53uLIyaU+UUVZHW4+inBobEP7RRPVRnE7f02JoQpFC1D12YfG6B6ve0p?=
 =?us-ascii?Q?7cP0KuBLnWiTywVjSbqCB/kYg6K2hP2m3GWmXASIi9cqu/0tdys3zx+35jba?=
 =?us-ascii?Q?o+xXAiThU5O/L+yq6iYBjNaPRq+OJFHw6x6Vwvko9e+6Mm8yHrQSYN3JuH2S?=
 =?us-ascii?Q?gPIe/GWQzCmzXWVcQpr0QcNtDe0TVQ8DHPRi7Jm/5eF2nyMNkQt5nj50wTVY?=
 =?us-ascii?Q?iHicnsUDRbHcKbPR7MtlAdtwQEBCzLIyKCS31dK8OxWv7EMoys4yLQ0M4srY?=
 =?us-ascii?Q?qne0ukBlDhfHK7rEekTzTMDViptEN5kjCLTVJRK928IpD8n0d8E1NI9vN20j?=
 =?us-ascii?Q?SNpI/TP3L+gnVUy8lBDqmSpJuuOfL1IAJ5W1qGmkUTX0xc2NuHKUuWR6Qi7k?=
 =?us-ascii?Q?MG6sKTLHVs7Al/vMWNyTCFEl2b86+NDB4EBXF8p7SBMNhfzVtsbg7T9YxzxB?=
 =?us-ascii?Q?w+Zj/jWyNNUdG7RRJGZZcXeT3ratLss1wiaztR1/1iPrbeqTvmM8b21HKSH9?=
 =?us-ascii?Q?TDjlmsvhcArVHw8AEeslilupnsj1g5WICpN+JKADJ926HoM/RvIMSqAspsHs?=
 =?us-ascii?Q?r9Gqboqj4ZR2yrs73s8/zCGXGXyfyrI+aOfAGHH++/ttx4JPgb5bSO8tTOYU?=
 =?us-ascii?Q?huLt62EgoAsJqA6/tT76rAFhPXQbjR0va2B44PLFKV4XaMLXMg88AWWHXqiz?=
 =?us-ascii?Q?4CtGjxVUqdDtR/9bk3j62qKwf4Eeh5gLAklvahf/0WT3cp3uUA9h40xpsXol?=
 =?us-ascii?Q?BKfH/hFJXFunAq/nTAYIK4LDjyKo3cLQWANxYfo50+dFbOMou4MvByZ5UcmI?=
 =?us-ascii?Q?kk+Ypg5LwaRU5Z61XpEszsZrsXKodLe9hQhHMaRRL1jfgEHIBy/4GCKKlSdz?=
 =?us-ascii?Q?aSoMAOX4lnRulbI/eZ9m0pLjglgq2UPEeCkxXdH3ancSvbcSmEO0GH/c7kLy?=
 =?us-ascii?Q?H6TesBF8KxLwH3OO6s72tPeeHLYvOeO7eRvqVfFSN70kMaNgF0Wt5N0VvBX/?=
 =?us-ascii?Q?3D/etBD2U646JF212zBUfCVMsvo49muLc/7WiPPuL/RCeKx/O7Wi33Ik5QEy?=
 =?us-ascii?Q?HM/58WtpCXhiufmJDC4mFSwWlDbO15aFQNRHJQ+k+bDV4pLjLZP+JcPmS60B?=
 =?us-ascii?Q?QllLal9ZHmMNatGirlXcegoyM/gc1WHV9YyHBbffJuvvZgZJmHMtUuMcyReI?=
 =?us-ascii?Q?0S1ipROu6kkp8UQslKj8/vCy5DcmNXVdr09t77c5/WCK1ZaIZf+Hat8g+1sD?=
 =?us-ascii?Q?CNbuqCvYROnG/wTS/h4OMW/5SyUAPTTP7mImy6WuIDKbtjHaoti8ajI+Mqdm?=
 =?us-ascii?Q?f+0/+xuFW917a9PYIb4omgjti6xI6CK9A/7x/HNWNf4B6r5WFNJX71hbJn11?=
 =?us-ascii?Q?64r6bL2B4quWoi3xMOqp69npmBTIQKZ8k72IVRJPE02BWMjm3QB9S065pKmN?=
 =?us-ascii?Q?PLy9EgDt4cT6kz2E1duM73UHLymEmjMoguALc+iYooTD5Gyq8w3uJLYqPLsK?=
 =?us-ascii?Q?AP41ccR0Z9dBJyzBri2bSu90Gn3oJCxV3d2NHHOOdLDOO4YuoSqYpq66wFMz?=
 =?us-ascii?Q?zF1No5oVjIfF6S8bVQs24X4cNPtDqgxWEZomMcrCNkGqyRGnRRMMyZjVJJZH?=
X-MS-Exchange-AntiSpam-MessageData-1: 	KPR9iSBPnzjpCy5JvmpuM2XevF+PZ4S5OOXtW9CjZE8qU4WsDaVm86/x
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 19a099e6-61e1-4635-4dea-08da498bfc15
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Jun 2022 20:18:00.6289
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 6smaAAu/oZ7cqqjQnj+7VsYyoNIfXKf0GCHg2/NAlkifxMFRa7N6TxMmyPz4jgaP4i7ytM3JhEd2W6KkOKp5/6yGdV8XU9zdqPnoFMBMOoE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DBBPR08MB6265
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220608_131830_090930_9250A446 
X-CRM114-Status: UNSURE (   9.87  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:3::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
	T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH] arm: rockchip: switch to mainline dts for rk3568-evb1
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

The RK3568 EVB1 device tree in mainline Linux has matured since
the initial RK3568 support entered barebox. Therefore, we can now
switch to the mainline device tree.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/rockchip-rk3568-evb/board.c |   5 +-
 arch/arm/dts/rk3568-evb1-v10.dts            | 519 +-------------------
 2 files changed, 5 insertions(+), 519 deletions(-)

diff --git a/arch/arm/boards/rockchip-rk3568-evb/board.c b/arch/arm/boards/rockchip-rk3568-evb/board.c
index 09385bea29..a466d385a2 100644
--- a/arch/arm/boards/rockchip-rk3568-evb/board.c
+++ b/arch/arm/boards/rockchip-rk3568-evb/board.c
@@ -28,8 +28,9 @@ static int rk3568_evb_probe(struct device_d *dev)
 	else
 		of_device_enable_path("/chosen/environment-emmc");
 
-	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/emmc");
-	rk3568_bbu_mmc_register("sd", 0, "/dev/sd");
+	rk3568_bbu_mmc_register("sd", 0, "/dev/mmc0");
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT,
+				"/dev/mmc1");
 
 	return 0;
 }
diff --git a/arch/arm/dts/rk3568-evb1-v10.dts b/arch/arm/dts/rk3568-evb1-v10.dts
index df5633978d..d2c1fc89a8 100644
--- a/arch/arm/dts/rk3568-evb1-v10.dts
+++ b/arch/arm/dts/rk3568-evb1-v10.dts
@@ -5,22 +5,11 @@
  */
 
 /dts-v1/;
-#include <dt-bindings/gpio/gpio.h>
-#include <dt-bindings/pinctrl/rockchip.h>
-#include "rk3568.dtsi"
 
-/ {
-	model = "Rockchip RK3568 EVB1 DDR4 V10 Board";
-	compatible = "rockchip,rk3568-evb1-v10", "rockchip,rk3568";
-
-	aliases {
-		emmc = &sdhci;
-		sd = &sdmmc0;
-	};
+#include <arm64/rockchip/rk3568-evb1-v10.dts>
 
+/ {
 	chosen: chosen {
-		stdout-path = "serial2:1500000n8";
-
 		environment-sd {
 			compatible = "barebox,environment";
 			device-path = &environment_sd;
@@ -38,437 +27,10 @@
 		device_type = "memory";
 		reg = <0x0 0x00a00000 0x0 0x7f600000>;
 	};
-
-	dc_12v: dc-12v {
-		compatible = "regulator-fixed";
-		regulator-name = "dc_12v";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <12000000>;
-		regulator-max-microvolt = <12000000>;
-	};
-
-	vcc3v3_sys: vcc3v3-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <3300000>;
-		regulator-max-microvolt = <3300000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc5v0_sys: vcc5v0-sys {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc5v0_sys";
-		regulator-always-on;
-		regulator-boot-on;
-		regulator-min-microvolt = <5000000>;
-		regulator-max-microvolt = <5000000>;
-		vin-supply = <&dc_12v>;
-	};
-
-	vcc3v3_lcd0_n: vcc3v3-lcd0-n {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lcd0_n";
-		regulator-boot-on;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vcc3v3_lcd1_n: vcc3v3-lcd1-n {
-		compatible = "regulator-fixed";
-		regulator-name = "vcc3v3_lcd1_n";
-		regulator-boot-on;
-
-		regulator-state-mem {
-			regulator-off-in-suspend;
-		};
-	};
-
-	vcc5v0_otg: vcc5v0-otg-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_otg_en>;
-		regulator-name = "vcc5v0_otg";
-	};
-
-	vcc5v0_host: vcc5v0-host-regulator {
-		compatible = "regulator-fixed";
-		enable-active-high;
-		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
-		pinctrl-names = "default";
-		pinctrl-0 = <&vcc5v0_host_en>;
-		regulator-name = "vcc5v0_host";
-		regulator-always-on;
-	};
-};
-
-&gmac0 {
-	phy-mode = "rgmii";
-	clock_in_out = "output";
-
-	assigned-clocks = <&cru SCLK_GMAC0_RX_TX>, <&cru SCLK_GMAC0>;
-	assigned-clock-parents = <&cru SCLK_GMAC0_RGMII_SPEED>;
-	assigned-clock-rates = <0>, <125000000>;
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&gmac0_miim
-		     &gmac0_tx_bus2
-		     &gmac0_rx_bus2
-		     &gmac0_rgmii_clk
-		     &gmac0_rgmii_bus>;
-
-	tx_delay = <0x3c>;
-	rx_delay = <0x2f>;
-
-	phy-handle = <&rgmii_phy0>;
-	status = "okay";
-};
-
-&gmac1 {
-	phy-mode = "rgmii";
-	clock_in_out = "output";
-
-	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
-	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
-	assigned-clock-rates = <0>, <125000000>;
-
-	pinctrl-names = "default";
-	pinctrl-0 = <&gmac1m1_miim
-		     &gmac1m1_tx_bus2
-		     &gmac1m1_rx_bus2
-		     &gmac1m1_rgmii_clk
-		     &gmac1m1_rgmii_bus>;
-
-	tx_delay = <0x4f>;
-	rx_delay = <0x26>;
-
-	phy-handle = <&rgmii_phy1>;
-	status = "okay";
-};
-
-&i2c0 {
-	status = "okay";
-
-	rk809: pmic@20 {
-		compatible = "rockchip,rk809";
-		reg = <0x20>;
-		interrupt-parent = <&gpio0>;
-		interrupts = <3 IRQ_TYPE_LEVEL_LOW>;
-
-		pinctrl-names = "default", "pmic-sleep",
-				"pmic-power-off", "pmic-reset";
-		pinctrl-0 = <&pmic_int>;
-		pinctrl-1 = <&soc_slppin_slp>, <&rk817_slppin_slp>;
-		pinctrl-2 = <&soc_slppin_gpio>, <&rk817_slppin_pwrdn>;
-		pinctrl-3 = <&soc_slppin_gpio>, <&rk817_slppin_rst>;
-
-		rockchip,system-power-controller;
-		wakeup-source;
-		#clock-cells = <1>;
-		clock-output-names = "rk808-clkout1", "rk808-clkout2";
-		//fb-inner-reg-idxs = <2>;
-		/* 1: rst regs (default in codes), 0: rst the pmic */
-		pmic-reset-func = <0>;
-
-		vcc1-supply = <&vcc3v3_sys>;
-		vcc2-supply = <&vcc3v3_sys>;
-		vcc3-supply = <&vcc3v3_sys>;
-		vcc4-supply = <&vcc3v3_sys>;
-		vcc5-supply = <&vcc3v3_sys>;
-		vcc6-supply = <&vcc3v3_sys>;
-		vcc7-supply = <&vcc3v3_sys>;
-		vcc8-supply = <&vcc3v3_sys>;
-		vcc9-supply = <&vcc3v3_sys>;
-
-		pwrkey {
-			status = "okay";
-		};
-
-		pinctrl_rk8xx: pinctrl_rk8xx {
-			gpio-controller;
-			#gpio-cells = <2>;
-
-			rk817_slppin_null: rk817_slppin_null {
-				pins = "gpio_slp";
-				function = "pin_fun0";
-			};
-
-			rk817_slppin_slp: rk817_slppin_slp {
-				pins = "gpio_slp";
-				function = "pin_fun1";
-			};
-
-			rk817_slppin_pwrdn: rk817_slppin_pwrdn {
-				pins = "gpio_slp";
-				function = "pin_fun2";
-			};
-
-			rk817_slppin_rst: rk817_slppin_rst {
-				pins = "gpio_slp";
-				function = "pin_fun3";
-			};
-		};
-
-		regulators {
-			vdd_logic: DCDC_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
-				regulator-ramp-delay = <6001>;
-				regulator-initial-mode = <0x2>;
-				regulator-name = "vdd_logic";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdd_gpu: DCDC_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
-				regulator-ramp-delay = <6001>;
-				regulator-initial-mode = <0x2>;
-				regulator-name = "vdd_gpu";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_ddr: DCDC_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-initial-mode = <0x2>;
-				regulator-name = "vcc_ddr";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-				};
-			};
-
-			vdd_npu: DCDC_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <500000>;
-				regulator-max-microvolt = <1350000>;
-				regulator-init-microvolt = <900000>;
-				regulator-ramp-delay = <6001>;
-				regulator-initial-mode = <0x2>;
-				regulator-name = "vdd_npu";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_image: LDO_REG1 {
-				regulator-boot-on;
-				regulator-always-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-				regulator-name = "vdda0v9_image";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda_0v9: LDO_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-				regulator-name = "vdda_0v9";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vdda0v9_pmu: LDO_REG3 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <900000>;
-				regulator-max-microvolt = <900000>;
-				regulator-name = "vdda0v9_pmu";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <900000>;
-				};
-			};
-
-			vccio_acodec: LDO_REG4 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_acodec";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vccio_sd: LDO_REG5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vccio_sd";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_pmu: LDO_REG6 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <3300000>;
-				regulator-max-microvolt = <3300000>;
-				regulator-name = "vcc3v3_pmu";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <3300000>;
-				};
-			};
-
-			vcca_1v8: LDO_REG7 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcca_1v8";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcca1v8_pmu: LDO_REG8 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcca1v8_pmu";
-				regulator-state-mem {
-					regulator-on-in-suspend;
-					regulator-suspend-microvolt = <1800000>;
-				};
-			};
-
-			vcca1v8_image: LDO_REG9 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcca1v8_image";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_1v8: DCDC_REG5 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-min-microvolt = <1800000>;
-				regulator-max-microvolt = <1800000>;
-				regulator-name = "vcc_1v8";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc_3v3: SWITCH_REG1 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc_3v3";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-
-			vcc3v3_sd: SWITCH_REG2 {
-				regulator-always-on;
-				regulator-boot-on;
-				regulator-name = "vcc3v3_sd";
-				regulator-state-mem {
-					regulator-off-in-suspend;
-				};
-			};
-		};
-	};
-};
-
-&mdio0 {
-	rgmii_phy0: phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reset-gpios = <&gpio2 RK_PD3 GPIO_ACTIVE_LOW>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reg = <0x0>;
-	};
-};
-
-&mdio1 {
-	rgmii_phy1: phy@0 {
-		compatible = "ethernet-phy-ieee802.3-c22";
-		reset-gpios = <&gpio2 RK_PD1 GPIO_ACTIVE_LOW>;
-		reset-assert-us = <20000>;
-		reset-deassert-us = <100000>;
-		reg = <0x0>;
-	};
-};
-
-&pinctrl {
-	pmic {
-		pmic_int: pmic_int {
-			rockchip,pins =
-				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
-		};
-
-		soc_slppin_gpio: soc_slppin_gpio {
-			rockchip,pins =
-				<0 RK_PA2 RK_FUNC_GPIO &pcfg_output_low>;
-		};
-
-		soc_slppin_slp: soc_slppin_slp {
-			rockchip,pins =
-				<0 RK_PA2 1 &pcfg_pull_none>;
-		};
-
-		soc_slppin_rst: soc_slppin_rst {
-			rockchip,pins =
-				<0 RK_PA2 2 &pcfg_pull_none>;
-		};
-	};
-
-	usb {
-		vcc5v0_host_en: vcc5v0-host-en {
-			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-
-		vcc5v0_otg_en: vcc5v0-otg-en {
-			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
-		};
-	};
-};
-
-&saradc {
-	vref-supply = <&vcca_1v8>;
-	status = "okay";
 };
 
 &sdhci {
-	bus-width = <8>;
-	max-frequency = <200000000>;
-	non-removable;
 	no-sd;
-	status = "okay";
-	pinctrl-names = "default";
-	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
 
 	partitions {
 		compatible = "fixed-partitions";
@@ -483,18 +45,6 @@
 };
 
 &sdmmc0 {
-	max-frequency = <150000000>;
-	bus-width = <4>;
-	cap-mmc-highspeed;
-	cap-sd-highspeed;
-	disable-wp;
-	sd-uhs-sdr104;
-	vmmc-supply = <&vcc3v3_sd>;
-	vqmmc-supply = <&vccio_sd>;
-	pinctrl-names = "default";
-	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
-	status = "okay";
-
 	partitions {
 		compatible = "fixed-partitions";
 		#address-cells = <2>;
@@ -506,68 +56,3 @@
 		};
 	};
 };
-
-&uart2 {
-	status = "okay";
-};
-
-&u2phy0_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy0_otg {
-	vbus-supply = <&vcc5v0_otg>;
-	status = "okay";
-};
-
-&u2phy1_host {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&u2phy1_otg {
-	phy-supply = <&vcc5v0_host>;
-	status = "okay";
-};
-
-&usb2phy0 {
-	status = "okay";
-};
-
-&usb2phy1 {
-	status = "okay";
-};
-
-&usb_host0_ehci {
-	status = "okay";
-};
-
-&usb_host0_ohci {
-	status = "okay";
-};
-
-&usb_host0_xhci {
-	extcon = <&usb2phy0>;
-	status = "okay";
-};
-
-&usb_host1_ehci {
-	status = "okay";
-};
-
-&usb_host1_ohci {
-	status = "okay";
-};
-
-&usb_host1_xhci {
-	status = "okay";
-};
-
-&combphy0_us {
-	status = "okay";
-};
-
-&combphy1_usq {
-	status = "okay";
-};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

