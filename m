Delivery-date: Tue, 31 May 2022 18:28:43 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jb-00GNir-D5
	for lore@lore.pengutronix.de; Tue, 31 May 2022 18:28:43 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jY-0000b8-KW
	for lore@pengutronix.de; Tue, 31 May 2022 18:28:42 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8CRc6KCOZ4vEBiYCFEl+Z0Mnd5492A/gy6S9UQuQjbs=; b=lk2Hgzewy8xnXc
	biSpZJaRTDcaVB6c8uHBFtg4JAzssZI4axwOr1OQfLEzOCeIh+ngEyLcDySK4GTv/oZrSLwD276it
	bGv8S/XDhUO+ZO/tC9kVZ2+fx+uK0vyGxOLibcDdWSJkTk9YrqQBR06/Q7VeVw11pklGJXZNqY8Uo
	8DZg2y0hH9A400gULAhI2InPMDZF2ePBIunZsQkQmsgIUORk9cbIFXnzOo33p2xZvJ7chgJm8Gw8v
	1ys2JdovnGJCSGUCX5+OpqWDGqbJfoxUTs77sRJET81lhBBkn6XTMT42XWYzwCUz8iaNKRvrDGeJ/
	xz+oxPhEYb6du6yklhJA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hn-00Bmmt-MM; Tue, 31 May 2022 16:26:51 +0000
Received: from mail-am5eur02on0620.outbound.protection.outlook.com ([2a01:111:f400:fe07::620] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4he-00BmgG-9y
	for barebox@lists.infradead.org; Tue, 31 May 2022 16:26:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SKpTF93FnXMHOFkA7QlXiWVcM1cmc4FgjH4xJY8tTy6oy/Y9BixKjGGjDkYx1XD9SVXfmnps+YU3OXXtqVh3e8HL77LfvSKyycmh9qBK91wcR5b7H8w7lYPeHZdNyqjH6FVDm8KoN4u/bVGsQmVIoezO+MK0GH68EDmjpvJ2N2S1ZhRBE6simguTXak6SUqyOJqAZmaItRAecFsrihiCBtr1vJsB96dOBHqJhcaKibyLFyQiyeDNIGEEBaQyJF6rikQIS/T7tHcQOFvvrRDIc78KZ+3wOBvkCk6KdzidcsKObIgJacmoHrCptpoBJGtg1nC9s9ypVbS3IdKlqnnT0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W4fQV7N185PjDQ/TvTt5Q91S+dUN/MY1oCR7LVey/Bc=;
 b=m8rVO9CLYytiD+4SrrnUOFiRGNhMwmTDqfhf9a+M7efPx/eAXvJVmnf/l7jAfmq1IEBpeFCduQ/lqWXLR1nEn6Hx/6VBrHu82PlApoCBPMbWj198Vm6hkEHKe7gKduk2Fxpmw/j76JGcLX3II4DfKjEw7qKpKBuBwpGg4FeldPr01IkSvfBAuIOcH6hx9RQIFGNt9BYdaF4Z8WyXa1zZhsu1ZbHnjkIGE92t//7UQU4/9DZ1hArbl8hxSTDLZiRtNqtlXnWOfh31kOsTs+bFR1Roav+UQtCNvv8MkNKpX71Tep36WPlUUhlT9jnd7iSjFpVl1q7ofgcAmy38w1eAtw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=W4fQV7N185PjDQ/TvTt5Q91S+dUN/MY1oCR7LVey/Bc=;
 b=VcvrH+0DkaLa1TBeatyQpTTOI+oJLGHjw6Kjdy0jwPz9kYoJELXPJy1sdjoMHimNGKyc8g/R+vneLiwn8rH8iSRJs7J9Bg/ZOu8DLn/UE2eWOseJl22/2eeQ0YahM1u+pupols+osDlKn1pwcLlIX2KWEl8Oz+5Jmjc41JcaTm8=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM9PR08MB5889.eurprd08.prod.outlook.com
 (2603:10a6:20b:2d5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Tue, 31 May
 2022 16:26:36 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 16:26:36 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 31 May 2022 18:26:23 +0200
Message-Id: <20220531162624.245664-3-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220531162624.245664-1-michael.riesch@wolfvision.net>
References: <20220531162624.245664-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0178.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::22) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e9f43a04-ee24-4f20-3c46-08da43225505
X-MS-TrafficTypeDiagnostic: AM9PR08MB5889:EE_
X-Microsoft-Antispam-PRVS: 	<AM9PR08MB58893A3218D6699621A133B0F2DC9@AM9PR08MB5889.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	gvn7cALGQLrytnDTRagAmVem09ctghO7Ue85IEXkWnZMomgmEQnAl0Vb4C8bCpxHx/RgAUSYnvZiOHcfc2xIDmQong8ts8+xWP3niYYOV2OmndHg7MM5R4eYopkeDMlVDbmPGSEFo1kWEr043g38UTiNQSHh9mbzaAYs2Qofed+wCalIvsQ7fUcFZZW/KKt+tR62hqRJi2D8KH8+/NzCq4xF+hrr6AiQmFcaSUO8kKtDpkZ4c2zbercpK8drtvVd6TW5xpHZVOPPzM6MJieUO4lpwVclUQ5ohHpZSVe7wfjm9t1moWBhZEUCv47vrjJKRKNngR49oMKZk5famyx+PzMEWQ4lTR6Dxvn+hwictrcKwNzkYlGFXwSYCKVfgnQ5AjDPuOn04kQt6XiE/p05SmoTKU6rrUTobqDKO37sVdB/aN5jqN/85ZrFRaA/L4beK5xv6WhePbx1vrj3SScUewiYHCsj7NgTiIB/yRRUVuQdvXFo8AWQYxIJoHUJaNiPdCgmqHxG7rBNFN2iayByF8TTojv70ObcwKZSmBos5niGy234x2rIfIWse92My096g24SjumY76/3+lIBXkaSZ08EGkbgL/WhkF5RY/5e9GSkTzkD3SgJX9N6AGCaIjEAh8mh4WFc+67GSGmR8VYRAqgaixizX1eOCypu58lbHLxFLWHw+hHhJjJa5W4K9PsZ0tVg76BniqtfkAjV1hN5kQ==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(366004)(396003)(376002)(346002)(39850400004)(30864003)(44832011)(8936002)(5660300002)(508600001)(6486002)(83380400001)(186003)(6512007)(1076003)(107886003)(41300700001)(2616005)(2906002)(52116002)(6506007)(86362001)(4326008)(8676002)(38100700002)(66556008)(66946007)(6916009)(66476007)(316002)(36756003)(6666004)(129723003);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?4eYJAsJoEuIdR+Poy9DonwAWAX9h6diD0u4aQh/8nOMp82nDq4G7BuSS9Lxm?=
 =?us-ascii?Q?UvwHNNe0XkmsoswgTy7BWIWH9vKbRcX1abzE6P6EBudFb0+HIZqlnMprqLaY?=
 =?us-ascii?Q?oCIVAo7rk4yjeLOGWKULx8xim1VlfsaO7t7sFAHvL1jTOKbR9Ga3FUMShz13?=
 =?us-ascii?Q?J8Qyj6OAk1mMehw8is5IMoKJYXJquuSBfHzvlNM1a/Tly2SPRF3UHsxFvhi0?=
 =?us-ascii?Q?cJ3YrdCCKjhLQsXJdy5sCLTz4Rrx6rRR8K7LyNQofCVEMCvP+XSntWEhKf8p?=
 =?us-ascii?Q?b9QRxoxux5XeSMDx/OhH3LepCZyK9fKCzAAwHyUNLhPW0lWIk8Upu5DAajaO?=
 =?us-ascii?Q?GPJCBqtNVGY7Ts4oaDtfRHsYIBW0Ft2u1Oo4c/wyFbh3gplwSQ2Gz8QWQ/g1?=
 =?us-ascii?Q?aQN3/pvCIrAcKID0ZMpuV0E/qdLX1K/vFhJ+ggbwyIlVduslreQjAH3h6+iU?=
 =?us-ascii?Q?J8WnSucKjG/9j2G6X24uT7DI8YOvIo9hwZ+uD3oe2dIQ/zS200iCRdVh5+vb?=
 =?us-ascii?Q?xbVoYSmfvZXICivsI8S10Wm+UAne6uj6efxbGsjFTP/rJvfu0hj+Q2aJqObN?=
 =?us-ascii?Q?SEIwhcYPwhtRz5eZviD5xzN2hTySZHibWzlmBOiHVDDgAaqOMbh0LDK39cg9?=
 =?us-ascii?Q?jWFsyqz4rYgUC7AWlfkLPIaVMGT+dtJmNBYMHPi7RjjyqDDCo7KcOZxX4CTb?=
 =?us-ascii?Q?TLLv8flOpv+s73BRcpyuhWmZ438BV6MmtTgVN2ilYkucumCihvF142HaArn0?=
 =?us-ascii?Q?cR/9ZaMSvWllSnHG3MBEHrJY7/dR4ZkGEjYA2wQPDQ6i4/naA+n5n4WdP/j0?=
 =?us-ascii?Q?MEgjuzxWpZarxAEm5wG0+MxHVGYCknG0ksqw7LzHnB+aYFpYkaxy/bvi04i5?=
 =?us-ascii?Q?Ku58f1DKqsFnoeitVgtClx9yokHPe11VZdlkCnHtLYtpYY/3TPPyH+EJYPOD?=
 =?us-ascii?Q?2tViaDpCWdgTuvknlorU1ySa3LP+mT758NiaUWszbu77lyAEIKJKjo7xtdPT?=
 =?us-ascii?Q?VZbrMAy1BPJ7TW1HadkqZNl3LoVHQsSSSgNjCpfkBdlGlphBDkH7C1pOES5M?=
 =?us-ascii?Q?gUtbubRpIMcwoBgGMhZsbh57Ydy2tFUqLckqMp7aKGvvo0pcCZ4V9+TrJPpU?=
 =?us-ascii?Q?NKRA7YB9iphSWDFf+DaTDFiUjsVD10Oawy4cWn4ruKfeFsqvb9QXMjqMclKU?=
 =?us-ascii?Q?Yxp9P3YE+aSc4TQyGtz9TYuBwxRxDoO0R3y27hh/v4BJIX9cwWnGyuzr/d0D?=
 =?us-ascii?Q?ukEEVUn09N0YJo+UVtxt2rUNnIzPjwndZ1kWi/LelhVNClAtnJesY6P8/Ioz?=
 =?us-ascii?Q?cHmWBK02Z1NnBPRqfPGEMfdC+0YwHXO5DKyaPznCGVZMKP7oIVaesFsr4kTs?=
 =?us-ascii?Q?yL6GHNih1X6tiCTJDKHYK+XG8H+D6ld+QWhCk9xWOapfeMV4Dp8tEdgPJ5cj?=
 =?us-ascii?Q?ciwTn3Gp7ttkjCf6A8qmUkxc0rNfJ+BWAyxInFEsQFneqncnhIutOohtjJzU?=
 =?us-ascii?Q?Cr+P8OWyAinCiMZV5qslzYg3Bn5URsIGg8JeewlHTe6dJlM75oNrKdSMtQIT?=
 =?us-ascii?Q?c5K6Psny/TrweTmRNJYJuPim8I+5K8amUIx4faMEDVDxwUjsJ+/V9JK7fPRV?=
 =?us-ascii?Q?zbRDjMuEQpQhNu9hQADMMRawMH+t+UV6+rDWrx1YZqrDT5pwVM6cBFCB0Twz?=
 =?us-ascii?Q?EOVlAztuEwWqFuxIPTWBxCvWlF1YBr1s6etIzqyP3tDcCMcKcRs0C3QjZvsP?=
 =?us-ascii?Q?IC1l6Rpv9HU1OE4i2+8wKKXEiMm1VxvurA0myEx7KWONVo5h59HCHk4jKlrg?=
X-MS-Exchange-AntiSpam-MessageData-1: 	T1AD9O7zRDuvPfFGUT3jctPa9P4OFGA8eR7NNWymE9/8dbeGGEh2A5kr
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e9f43a04-ee24-4f20-3c46-08da43225505
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 16:26:36.1639
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 7PbMAVFQ3B5rDtdZW2iVQkAZ/sceL8rlTiZ17+X35VZIx/ZvQdUnHwOjGdgrqG9/g6V714qrdqnn6EcLi/owEteyNpFfvyTKbZiQ77cbZh4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB5889
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_092642_544652_3FB2CAE2 
X-CRM114-Status: GOOD (  10.46  )
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
X-Spam-Status: No, score=-3.2 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 2/3] HACK: add device tree for radxa rock3 model a
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Mock sync from Linux v5.19-rc1.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 dts/src/arm64/rockchip/rk3568-rock-3a.dts | 562 ++++++++++++++++++++++
 1 file changed, 562 insertions(+)
 create mode 100644 dts/src/arm64/rockchip/rk3568-rock-3a.dts

diff --git a/dts/src/arm64/rockchip/rk3568-rock-3a.dts b/dts/src/arm64/rockchip/rk3568-rock-3a.dts
new file mode 100644
index 0000000000..0813c0c5ab
--- /dev/null
+++ b/dts/src/arm64/rockchip/rk3568-rock-3a.dts
@@ -0,0 +1,562 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/leds/common.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include "rk3568.dtsi"
+
+/ {
+	model = "Radxa ROCK3 Model A";
+	compatible = "radxa,rock3a", "rockchip,rk3568";
+
+	aliases {
+		ethernet0 = &gmac1;
+		mmc0 = &sdmmc0;
+		mmc1 = &sdhci;
+	};
+
+	chosen: chosen {
+		stdout-path = "serial2:1500000n8";
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led_user: led-0 {
+			gpios = <&gpio0 RK_PB7 GPIO_ACTIVE_HIGH>;
+			function = LED_FUNCTION_HEARTBEAT;
+			color = <LED_COLOR_ID_BLUE>;
+			linux,default-trigger = "heartbeat";
+			pinctrl-names = "default";
+			pinctrl-0 = <&led_user_en>;
+		};
+	};
+
+	rk809-sound {
+		compatible = "simple-audio-card";
+		simple-audio-card,format = "i2s";
+		simple-audio-card,name = "Analog RK809";
+		simple-audio-card,mclk-fs = <256>;
+
+		simple-audio-card,cpu {
+			sound-dai = <&i2s1_8ch>;
+		};
+
+		simple-audio-card,codec {
+			sound-dai = <&rk809>;
+		};
+	};
+
+	vcc12v_dcin: vcc12v-dcin {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc12v_dcin";
+		regulator-always-on;
+		regulator-boot-on;
+	};
+
+	vcc3v3_sys: vcc3v3-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc3v3_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_sys: vcc5v0-sys {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_sys";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usb: vcc5v0-usb {
+		compatible = "regulator-fixed";
+		regulator-name = "vcc5v0_usb";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc12v_dcin>;
+	};
+
+	vcc5v0_usb_host: vcc5v0-usb-host {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA6 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_host_en>;
+		regulator-name = "vcc5v0_usb_host";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_usb_hub: vcc5v0-usb-hub-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PD5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_hub_en>;
+		regulator-name = "vcc5v0_usb_hub";
+		regulator-always-on;
+		vin-supply = <&vcc5v0_usb>;
+	};
+
+	vcc5v0_usb_otg: vcc5v0-usb-otg-regulator {
+		compatible = "regulator-fixed";
+		enable-active-high;
+		gpio = <&gpio0 RK_PA5 GPIO_ACTIVE_HIGH>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&vcc5v0_usb_otg_en>;
+		regulator-name = "vcc5v0_usb_otg";
+		regulator-min-microvolt = <5000000>;
+		regulator-max-microvolt = <5000000>;
+		vin-supply = <&vcc5v0_usb>;
+	};
+};
+
+&combphy0 {
+	status = "okay";
+};
+
+&combphy1 {
+	status = "okay";
+};
+
+&cpu0 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu1 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu2 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&cpu3 {
+	cpu-supply = <&vdd_cpu>;
+};
+
+&gmac1 {
+	assigned-clocks = <&cru SCLK_GMAC1_RX_TX>, <&cru SCLK_GMAC1>;
+	assigned-clock-parents = <&cru SCLK_GMAC1_RGMII_SPEED>;
+	assigned-clock-rates = <0>, <125000000>;
+	clock_in_out = "output";
+	phy-handle = <&rgmii_phy1>;
+	phy-mode = "rgmii-id";
+	pinctrl-names = "default";
+	pinctrl-0 = <&gmac1m1_miim
+		     &gmac1m1_tx_bus2
+		     &gmac1m1_rx_bus2
+		     &gmac1m1_rgmii_clk
+		     &gmac1m1_rgmii_bus>;
+	status = "okay";
+};
+
+&gpu {
+	mali-supply = <&vdd_gpu>;
+	status = "okay";
+};
+
+&i2c0 {
+	status = "okay";
+
+	vdd_cpu: regulator@1c {
+		compatible = "tcs,tcs4525";
+		reg = <0x1c>;
+		fcs,suspend-voltage-selector = <1>;
+		regulator-name = "vdd_cpu";
+		regulator-always-on;
+		regulator-boot-on;
+		regulator-min-microvolt = <800000>;
+		regulator-max-microvolt = <1150000>;
+		regulator-ramp-delay = <2300>;
+		vin-supply = <&vcc5v0_sys>;
+
+		regulator-state-mem {
+			regulator-off-in-suspend;
+		};
+	};
+
+	rk809: pmic@20 {
+		compatible = "rockchip,rk809";
+		reg = <0x20>;
+		interrupt-parent = <&gpio0>;
+		interrupts = <RK_PA3 IRQ_TYPE_LEVEL_LOW>;
+		assigned-clocks = <&cru I2S1_MCLKOUT_TX>;
+		assigned-clock-parents = <&cru CLK_I2S1_8CH_TX>;
+		#clock-cells = <1>;
+		clock-names = "mclk";
+		clocks = <&cru I2S1_MCLKOUT_TX>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&pmic_int>, <&i2s1m0_mclk>;
+		rockchip,system-power-controller;
+		#sound-dai-cells = <0>;
+		vcc1-supply = <&vcc3v3_sys>;
+		vcc2-supply = <&vcc3v3_sys>;
+		vcc3-supply = <&vcc3v3_sys>;
+		vcc4-supply = <&vcc3v3_sys>;
+		vcc5-supply = <&vcc3v3_sys>;
+		vcc6-supply = <&vcc3v3_sys>;
+		vcc7-supply = <&vcc3v3_sys>;
+		vcc8-supply = <&vcc3v3_sys>;
+		vcc9-supply = <&vcc3v3_sys>;
+		wakeup-source;
+
+		regulators {
+			vdd_logic: DCDC_REG1 {
+				regulator-name = "vdd_logic";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-init-microvolt = <900000>;
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
+			vdd_gpu: DCDC_REG2 {
+				regulator-name = "vdd_gpu";
+				regulator-always-on;
+				regulator-init-microvolt = <900000>;
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
+			vcc_ddr: DCDC_REG3 {
+				regulator-name = "vcc_ddr";
+				regulator-always-on;
+				regulator-boot-on;
+				regulator-initial-mode = <0x2>;
+
+				regulator-state-mem {
+					regulator-on-in-suspend;
+				};
+			};
+
+			vdd_npu: DCDC_REG4 {
+				regulator-name = "vdd_npu";
+				regulator-init-microvolt = <900000>;
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
+			vcc_1v8: DCDC_REG5 {
+				regulator-name = "vcc_1v8";
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
+			vdda0v9_image: LDO_REG1 {
+				regulator-name = "vdda0v9_image";
+				regulator-min-microvolt = <900000>;
+				regulator-max-microvolt = <900000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vdda_0v9: LDO_REG2 {
+				regulator-name = "vdda_0v9";
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
+			vdda0v9_pmu: LDO_REG3 {
+				regulator-name = "vdda0v9_pmu";
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
+			vccio_acodec: LDO_REG4 {
+				regulator-name = "vccio_acodec";
+				regulator-always-on;
+				regulator-min-microvolt = <3300000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vccio_sd: LDO_REG5 {
+				regulator-name = "vccio_sd";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <3300000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_pmu: LDO_REG6 {
+				regulator-name = "vcc3v3_pmu";
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
+			vcca_1v8: LDO_REG7 {
+				regulator-name = "vcca_1v8";
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
+			vcca1v8_pmu: LDO_REG8 {
+				regulator-name = "vcca1v8_pmu";
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
+			vcca1v8_image: LDO_REG9 {
+				regulator-name = "vcca1v8_image";
+				regulator-min-microvolt = <1800000>;
+				regulator-max-microvolt = <1800000>;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc_3v3: SWITCH_REG1 {
+				regulator-name = "vcc_3v3";
+				regulator-always-on;
+				regulator-boot-on;
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+
+			vcc3v3_sd: SWITCH_REG2 {
+				regulator-name = "vcc3v3_sd";
+
+				regulator-state-mem {
+					regulator-off-in-suspend;
+				};
+			};
+		};
+
+		codec {
+			mic-in-differential;
+		};
+	};
+};
+
+&i2s1_8ch {
+	rockchip,trcm-sync-tx-only;
+	status = "okay";
+};
+
+&mdio1 {
+	rgmii_phy1: ethernet-phy@0 {
+		compatible = "ethernet-phy-ieee802.3-c22";
+		reg = <0x0>;
+		pinctrl-names = "default";
+		pinctrl-0 = <&eth_phy_rst>;
+		reset-assert-us = <20000>;
+		reset-deassert-us = <100000>;
+		reset-gpios = <&gpio3 RK_PB0 GPIO_ACTIVE_LOW>;
+	};
+};
+
+&pinctrl {
+	ethernet {
+		eth_phy_rst: eth_phy_rst {
+			rockchip,pins = <3 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	leds {
+		led_user_en: led_user_en {
+			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+
+	pmic {
+		pmic_int: pmic_int {
+			rockchip,pins =
+				<0 RK_PA3 RK_FUNC_GPIO &pcfg_pull_up>;
+		};
+	};
+
+	usb {
+		vcc5v0_usb_host_en: vcc5v0_usb_host_en {
+			rockchip,pins = <0 RK_PA6 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		vcc5v0_usb_hub_en: vcc5v0_usb_hub_en {
+			rockchip,pins = <0 RK_PD5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+		vcc5v0_usb_otg_en: vcc5v0_usb_otg_en {
+			rockchip,pins = <0 RK_PA5 RK_FUNC_GPIO &pcfg_pull_none>;
+		};
+	};
+};
+
+&pmu_io_domains {
+	pmuio1-supply = <&vcc3v3_pmu>;
+	pmuio2-supply = <&vcc3v3_pmu>;
+	vccio1-supply = <&vccio_acodec>;
+	vccio2-supply = <&vcc_1v8>;
+	vccio3-supply = <&vccio_sd>;
+	vccio4-supply = <&vcc_1v8>;
+	vccio5-supply = <&vcc_3v3>;
+	vccio6-supply = <&vcc_1v8>;
+	vccio7-supply = <&vcc_3v3>;
+	status = "okay";
+};
+
+&saradc {
+	vref-supply = <&vcca_1v8>;
+	status = "okay";
+};
+
+&sdhci {
+	bus-width = <8>;
+	max-frequency = <200000000>;
+	non-removable;
+	pinctrl-names = "default";
+	pinctrl-0 = <&emmc_bus8 &emmc_clk &emmc_cmd &emmc_datastrobe>;
+	vmmc-supply = <&vcc_3v3>;
+	vqmmc-supply = <&vcc_1v8>;
+	status = "okay";
+};
+
+&sdmmc0 {
+	bus-width = <4>;
+	cap-sd-highspeed;
+	cd-gpios = <&gpio0 RK_PA4 GPIO_ACTIVE_LOW>;
+	disable-wp;
+	pinctrl-names = "default";
+	pinctrl-0 = <&sdmmc0_bus4 &sdmmc0_clk &sdmmc0_cmd &sdmmc0_det>;
+	sd-uhs-sdr104;
+	vmmc-supply = <&vcc3v3_sd>;
+	vqmmc-supply = <&vccio_sd>;
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
+&usb_host0_ehci {
+	status = "okay";
+};
+
+&usb_host0_ohci {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	extcon = <&usb2phy0>;
+	status = "okay";
+};
+
+&usb_host1_ehci {
+	status = "okay";
+};
+
+&usb_host1_ohci {
+	status = "okay";
+};
+
+&usb_host1_xhci {
+	status = "okay";
+};
+
+&usb2phy0 {
+	status = "okay";
+};
+
+&usb2phy0_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy0_otg {
+	vbus-supply = <&vcc5v0_usb_otg>;
+	status = "okay";
+};
+
+&usb2phy1 {
+	status = "okay";
+};
+
+&usb2phy1_host {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
+
+&usb2phy1_otg {
+	phy-supply = <&vcc5v0_usb_host>;
+	status = "okay";
+};
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

