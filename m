Delivery-date: Fri, 05 Apr 2024 16:05:58 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCc-00D89R-1F
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 16:05:58 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCa-0000WQ-QW
	for lore@pengutronix.de; Fri, 05 Apr 2024 16:05:58 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=+4ls6kZ5CTDXkxp9WUutU5RJtmY8n9xwWImTkjenQMk=; b=TfXRV5dZNmPOfobF6yohGsKRUA
	IF9svJ2S+6h6MLXjMbeMBhr3KulQ64wnm6PMtldrll2MVgd/RvBDEixhzZeWUys8Yz5Yp+NnXsxQ1
	oQzeFys/nuE/Nyym0B/smAPITNDSzZ8XUiLPYzietInLBNKbd/zkLdO/1Xnhky9O8Wi6PR3wzZ5h1
	58JeyEecbSmC6vOw/pNv6b5OmLpqIEdDK1orSef0HAnhreZQFhYmEDpQkwzqz4JjBDVSEQBNxNYvg
	u+QPEzWyU4IAMae77NfG1NHWN/yfn6cj2Uwxz0/t6reiQxkOUDNaOzFR1Nzu8P91KZPIacy5PPiBw
	d9KG9HRg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBz-00000007MAH-2zEH;
	Fri, 05 Apr 2024 14:05:19 +0000
Received: from mail-vi1eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2613::701] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBw-00000007M0l-0xub
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 14:05:17 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=f2e7fjiBydgrAafHrLgKQb8eMYo3xmEiDnPErE4JQYYSaUN+m61dJbbEh2qdKeU8mu7HCILcc73XyGdmI7XS+QQObpTZ11LCVYmLfEchsGToofz2tTQeCkltHld470/f6DFxPJIXsnCam8I9eIQlm02pvZEFCuL2kYfjo5PGjet+fy4KnXQ5voXlFvZ8ODt7XrCd6+nuLijdDutlg5iiM3FdJcO5+s4zhYSlfdz24xowyGijl+OD13e8wEn1P8SEGo6E0ZC7s/RcloPywOrt8ebGGnKaKWk4k9SK/9ljRA5BVrkEl+W4yNse6yZiccS/szmYCgpOl+o2ZYaRC5Gb7A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=+4ls6kZ5CTDXkxp9WUutU5RJtmY8n9xwWImTkjenQMk=;
 b=HS1Wv1hqRA0QP294/A+olZx3Ut2+pt4sYjZ0MXH2qLDxe5jiSuEw40efeZySWfL/4uyECzM5EuTXpx+XmoaxOUMi+xPT81i+BZs4hP5SqDenOuH+CUK/gknVSHgZBpVDvVH7pCOViVPkyW+KjsABXH+Lqo5T39+1mm6/qBnojc04SX4buvzBiOWfi6HCiT304jB4cs/Dj59VSjcDjs9ATklT/FOf7IEDEncR+hwUX0GUs6J7XVKE9/Dng8mca/aAKjWB19tcVJ9oZ7enHo6JsNE4UR0XfzFTf79ZFsZ/T45tgXXQ2epTjU93sNC6mulZVpITUiw+RrNtdh3DQhQg0w==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=+4ls6kZ5CTDXkxp9WUutU5RJtmY8n9xwWImTkjenQMk=;
 b=VPvXJf9PNAErL5kRXgKCUxKk/Q5toiQO2+NoJkbqfu6hnxSx1X2wtSBuk2mY8Qrnu7y+4h6Zq4c65gS4xd6PofdO026dZIlKJapNNzONYoSllV+4nQLm2YkQVeCYsfyJQLC6A3fLGXhxFENL9/ueb4Uwqb+NtVc9tDPN/ARwzKE=
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8462.eurprd08.prod.outlook.com (2603:10a6:150:bc::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 14:04:51 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 14:04:50 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 05 Apr 2024 16:04:45 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-feature-wolfvision-pf5-v1-4-e4a29c0e7fe1@wolfvision.net>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
In-Reply-To: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712325888; l=9538;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=rHLogBk3SPw90Wei+dCY9PLCvwWqHLixlDDl4ffpF/8=;
 b=xTyu/Oh30UKQrZ3VWt9zkYhS69o5MTIgDhQHLrBSj0u81x0wapW7LjvomRXuzP92rQb5cAqml
 aC2JEC4oe7rAfSLWALTvvrzRziU0rQ/jX3Ke2srA10awZrywzbPtiL3
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0202CA0009.eurprd02.prod.outlook.com
 (2603:10a6:803:14::22) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|GV2PR08MB8462:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: M+QMdwd2J5YANCvCmd2JOZRxAgfCI8Mwdy5GcQGHlnTdQYD4dR2sb8aA9nfCEfmN0xo1p6kBAc6PvV0X0pOIjxaXeRnWicrx5QXutFrt9rLBDC8/kk4Rz22g8MZDOpvJRvDtlyKpwIyNmrB/MXyp3hV+c8lh/m2kyOeGiGl1187ooNWnLZhQ+HpATQXaWDT7nwJyX/PBg5NuYC1B8thf1SrJhNqWuFR/FUSJ89XrkrZCbtozvAyVMWRMgx7GZFQTfxQg7oLa978CpnXoGwRerjEDE7tf9C/ELnu+D0I4s0Qeo9G1/ghjqaYlwhljubeGcGHXYkl4U7IDwmD750mF8/4kr9ECQGIUXPoOO4Y56vowCZiulNmAA3V2Tuh64e+cPmZzJIzYQmXuGceBkXY+7q1l1Y6eQ3B41AJ3cTlfzvjxpbTH+D7pOkXbp3yAVGc4yaU7k81KAdwOI9Hlf6oiPLRSv2rN/v5LaCfziqB/RAXMQBcR3GtuAdT0WplwjTSB7FkNFC7bzfvStFeFM96cVjZkC+9IWoqIQrNSDPC4jnqiV3wNRnCNFanAc8XKY1GgFH/WkAF4Hl+kUrep7KFe75kXqZ7K0jcUrjMWo3GekHwRfOMofLk6vw0lmeBGigr95kHptZ5fSm+R2Z/tnUZuKL0/t4lt/bip9HzKR26fU5V2j8RmtFtcnVOTOFF/A3EfsLHX2+aXEFTI8I+f/9jexip3XOcR1SoDyBaSByC2CFY=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UE9vYkRZZThDN2pHL1p3dDhGTlRFQi9ZYVNuVkVkcG92NENYQmZkL2xXMW5L?=
 =?utf-8?B?N0xIbm9sbm5TWDRycVROTmlreGxSclMzSE1zL2pyODVpNEhydEE2NWg2cU1O?=
 =?utf-8?B?ZXIrcDVQb05aNDdlWXNlSE0zQU4rQ2VqV2lVam5uVCtVWkQwNHl1aXZHZitF?=
 =?utf-8?B?S3hjVG9nZkdCdkdWUmRESDhnVU1PU3FrbWxyRlQ0SkJuaVhKUDBPc2VuQ0VG?=
 =?utf-8?B?bWwvb0FtbWR3blA0WEhOK0ZQQS9iOTNEMzhqTFFIQVFXRXB3YytJaWtWQk85?=
 =?utf-8?B?b3VzZ2N4L1ZSanBuNWNWczNvS0xKWVNDSUdsbTAxK0EzU3dZQWlsand6K3U3?=
 =?utf-8?B?d1FxUjltWFVzTVhtZlJ1bnc3NVRVVDlTeEpSRmR6b1hOR0pDcjlpSGowV2xl?=
 =?utf-8?B?U0w1SVU2QWxJVGhsRGxmK3BLZFV4aXhCNlBUVWhXWUNQNWFwaUFiN0Y4bFVK?=
 =?utf-8?B?Q05VRm81VzdmV3FMMVlNckJXUHpBTmZ2STBFY3pwUGRrTjAwUWxFTkJNdVRw?=
 =?utf-8?B?MHl4UkQzVWRYNnVPL0JoeFQ1Z0pwT3B3ZW1DOTR4Ylhvd2EyWFM4RlhoQzZ6?=
 =?utf-8?B?VnZuWTBmSU5pY1M3K2NPTXYxVUMrRFRjbU5QQ0U1WnJWdm9wdnVJRm9VcUxM?=
 =?utf-8?B?bnFjenJaaDRQbEg2WUhuOFFvblE0c1RwV3QxMWwrbktFQTlnTFRpWjRsSmg3?=
 =?utf-8?B?bjVOOEMxMXlhbDRidmwwWUVjSGpoVll1K1FVbEtZaFhxTncrQkxZZGNBRVdS?=
 =?utf-8?B?SElRWVpvVXVvSklkclkxWXc3OCtxZlpZQ09tRkdYd0VtejJmYTUreGVLYlc1?=
 =?utf-8?B?VjF2UCt2SG12R1BZZVJVell0bzAyaE85NUNGdy9WaUFnQjUvSnUzd3VZQSty?=
 =?utf-8?B?cjFUZCtoMjl6WUFzOTVGZ2JORnp4OVJXWXNtMm9tSDRJRWljeDI4bW1kNW1S?=
 =?utf-8?B?a0Voekk5QzRlMVhVUFhOVzFpdVJaQ3ZlWFBlYmNUTHhMZGg2QWJZWkNaVlhF?=
 =?utf-8?B?MDUwUi9yK2hTUEFESHUwRzhMeU4zanZiM3Y3eEsreTBrVVJIdnRPbWxDMmhn?=
 =?utf-8?B?bXhZSXlsNmpCbTI5UkJjbWFzNjltYXVBUWVGdUVKRCsyWjMyZzN5R3RyZjhM?=
 =?utf-8?B?S3BEK0VXZmdYS25sT1FUcVQxY2YvMTJpVzFNWlc2Sm9lVGZsWVlFeWRrK2RR?=
 =?utf-8?B?R2R6amhNVWJ1dm5XdFhhdnhxOEJ2UWk2SGhkYkxQenFqaTY3eGpUVlRPb0c5?=
 =?utf-8?B?ZjJCZUkwWlFlMlIySXJzYTMyNUV6TDRQMnhXM1BvVnpGSUF5MmJVZFc3ZmFH?=
 =?utf-8?B?Z2tpUmdpQldZb2JYeTRqTEF6Y2Qwby8wTTRveVozcEp4VzR2MktHSnhVQ1Uz?=
 =?utf-8?B?L210U2RQY2VlOEhvcnFhS09PQ3Z3MHhSOFVQWFFWV1BmTTEveFdJTnVVQmJE?=
 =?utf-8?B?a3dvalF5R2Fsa0taL0pVcWpMWlJSVytsSE8ra3ZGTDZZQXEyakhmWEhPMENr?=
 =?utf-8?B?QmZlbGltcS9GK0hQS3JWRlZ6OEJWd0tjSHZzSXVjem9qcWNZMmRDNDI3ZjMv?=
 =?utf-8?B?Y2NEQ2s1RDZGZTRhamExTEFvRllVaS93R29HSEpxY0hpWnZMZjlGSEtwSVlC?=
 =?utf-8?B?N2F3TVZLdnY2RjZ3aHIzZnJrQTBaampvOHVla2pkdTEwdXVVcVhFQlpaZGNX?=
 =?utf-8?B?ODJYcjlYWitWcnBDVjh3cXRUNEgvZHE1citDMmxCanFpWVhzTHp0YitwR2ZT?=
 =?utf-8?B?TlVyd3hBS0ZGT1k4d3hRa1hFbVpiZGRkcnVnbmU1WGVnbGNHY0FPNmFkOHI4?=
 =?utf-8?B?aGR0WTYvUDgvbzkrSERqMkJUQ2lRYmVOTm1meVF6Yi94ZGJXeHhsSDlEN0xU?=
 =?utf-8?B?UEZJME81T1JxakV1MURrQ3oxQXNtcW83bWp4V2s2M0pCOE9PRUs1SElsNVNK?=
 =?utf-8?B?SURjZE1HeXpKeFRaRnJmeVRCQ0I5N0k0dTZmZWJBV0hLTnM3by9tVkpLZ2JM?=
 =?utf-8?B?Umx3QkJRcmdHUmhxYmd3eUVnd0c5N1FrUi9DeDFVdGZxeC9JRmRadWpFS1hY?=
 =?utf-8?B?dDgyVjJZVERrcUFWSTlaSll5WDAzd2M3TjJVNWdRRlN6NkEyYmxxdlJ5WTNv?=
 =?utf-8?B?eTFwUzFQellDd25ONjFncjJ0WTdHMFBtc2E5TWYwaVh0dXpLTTNzb2R6VTVj?=
 =?utf-8?B?VkE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: feddea2e-b94d-4818-4110-08dc55795c1c
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 14:04:50.5547
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: xmgJU7M4t3GHz8BcLE5Ce5ERigFdyT0PLSfgjlV2g76aXvlGsOQWoQIMZ7MHHfhue4gLLFTDqNm4zhTEHJiGBJKWetV+5myY/1Z1h/98mpQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_070516_521895_52129CEB 
X-CRM114-Status: GOOD (  18.43  )
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
X-Spam-Status: No, score=-4.7 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_NONE
	autolearn=unavailable autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] arm: boards: add wolfvision pf5 mainboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add support for the WolfVision PF5 mainboard, which features the Rockchip
RK3568 SoC and can be extended with different expansion boards.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/boards/Makefile                           |  1 +
 arch/arm/boards/wolfvision-pf5/.gitignore          |  1 +
 arch/arm/boards/wolfvision-pf5/Makefile            |  3 +
 arch/arm/boards/wolfvision-pf5/board.c             | 88 ++++++++++++++++++++++
 arch/arm/boards/wolfvision-pf5/lowlevel.c          | 36 +++++++++
 arch/arm/dts/Makefile                              |  3 +
 .../arm/dts/rk3568-wolfvision-pf5-io-expander.dtso | 11 +++
 arch/arm/dts/rk3568-wolfvision-pf5.dts             | 48 ++++++++++++
 arch/arm/mach-rockchip/Kconfig                     |  9 +++
 images/Makefile.rockchip                           |  1 +
 10 files changed, 201 insertions(+)

diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index 05fbcca175..062db96e1c 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -203,3 +203,4 @@ obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
 obj-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP)	+= variscite-dt8mcustomboard-imx8mp/
 obj-$(CONFIG_MACH_RADXA_CM3)			+= radxa-cm3/
 obj-$(CONFIG_MACH_TQMA93XX)			+= tqma93xx/
+obj-$(CONFIG_MACH_WOLFVISION_PF5)		+= wolfvision-pf5/
diff --git a/arch/arm/boards/wolfvision-pf5/.gitignore b/arch/arm/boards/wolfvision-pf5/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/wolfvision-pf5/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/wolfvision-pf5/Makefile b/arch/arm/boards/wolfvision-pf5/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/wolfvision-pf5/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/wolfvision-pf5/board.c b/arch/arm/boards/wolfvision-pf5/board.c
new file mode 100644
index 0000000000..797f51bc2e
--- /dev/null
+++ b/arch/arm/boards/wolfvision-pf5/board.c
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Board code for the WolfVision PF5 mainboard.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+#include <common.h>
+#include <deep-probe.h>
+#include <globalvar.h>
+#include <init.h>
+
+#include <boards/wolfvision/common.h>
+#include <mach/rockchip/bbu.h>
+
+#define PF5_IO_EXPANDER_FILENAME "rk3568-wolfvision-pf5-io-expander.dtbo"
+#define PF5_IO_EXPANDER_DATA __dtbo_rk3568_wolfvision_pf5_io_expander_start
+
+enum {
+	PF5_HWID_CHANNEL_MAINBOARD = 1,
+	PF5_HWID_CHANNEL_MODULE = 2,
+};
+
+extern char PF5_IO_EXPANDER_DATA[];
+
+static const struct wv_rk3568_extension pf5_extensions[] = {
+	{
+		.adc_chan = PF5_HWID_CHANNEL_MAINBOARD,
+		.name = "mainboard",
+		.overlays = {
+			[0] = { .name = "PF5 DC V1.0 A", },
+			[4] = { .name = "PF5 DC V1.1 A", },
+		},
+	},
+	{
+		.adc_chan = PF5_HWID_CHANNEL_MODULE,
+		.name = "module",
+		.overlays = {
+			[0] = { .name = "PF5 IO Expander V1.0 A",
+				.filename = PF5_IO_EXPANDER_FILENAME,
+				.data = PF5_IO_EXPANDER_DATA,
+			},
+			[16] = { .name = "no", },
+		},
+	},
+};
+
+static int pf5_probe(struct device *dev)
+{
+	char *pf5_overlays = NULL;
+	int ret;
+
+	barebox_set_model("WolfVision PF5");
+	barebox_set_hostname("PF5");
+
+	ret = wolfvision_register_ethaddr();
+	if (ret)
+		pr_warning("failed to register MAC addresses\n");
+
+	rk3568_bbu_mmc_register("emmc", BBU_HANDLER_FLAG_DEFAULT, "/dev/mmc0");
+
+	ret = wolfvision_rk3568_detect_hw(
+		pf5_extensions, ARRAY_SIZE(pf5_extensions), &pf5_overlays);
+	if (ret)
+		pr_warning("failed to detect HW\n");
+
+	if (pf5_overlays)
+		globalvar_set("of.overlay.filepattern", pf5_overlays);
+
+	free(pf5_overlays);
+
+	return 0;
+}
+
+static const struct of_device_id pf5_of_match[] = {
+	{
+		.compatible = "wolfvision,rk3568-pf5",
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver_d pf5_board_driver = {
+	.name = "board-wolfvision-pf5",
+	.probe = pf5_probe,
+	.of_compatible = pf5_of_match,
+};
+coredevice_platform_driver(pf5_board_driver);
+
+BAREBOX_DEEP_PROBE_ENABLE(pf5_of_match);
diff --git a/arch/arm/boards/wolfvision-pf5/lowlevel.c b/arch/arm/boards/wolfvision-pf5/lowlevel.c
new file mode 100644
index 0000000000..c20ca4ae13
--- /dev/null
+++ b/arch/arm/boards/wolfvision-pf5/lowlevel.c
@@ -0,0 +1,36 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/rockchip/hardware.h>
+#include <mach/rockchip/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip/rockchip.h>
+
+extern char __dtb_rk3568_wolfvision_pf5_start[];
+
+ENTRY_FUNCTION(start_rk3568_wolfvision_pf5, r0, r1, r2)
+{
+	/*
+	 * Enable vccio4 1.8V and vccio5 1.8V
+	 * FIXME: This is done by the io-domain driver as well, but there
+	 * currently is no mechanism to make sure the driver gets probed
+	 * before its consumers. Remove this setup once this issue is
+	 * resolved.
+	 */
+	writel(RK_SETBITS(0x30), 0xfdc20140);
+
+	/*
+	 * Image execution starts at 0x0, but this is used for ATF and
+	 * OP-TEE later, so move away from here.
+	 */
+	if (current_el() == 3)
+		relocate_to_adr_full(RK3568_BAREBOX_LOAD_ADDRESS);
+	else
+		relocate_to_current_adr();
+
+	setup_c();
+
+	rk3568_barebox_entry(__dtb_rk3568_wolfvision_pf5_start);
+}
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index 056d4d565b..bfa39de359 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -185,6 +185,7 @@ lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-ccbv2.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-marvel.dtb.o
+lwl-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5.dtb.o
 lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
@@ -229,4 +230,6 @@ lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcusto
 lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
 			       imx93-tqma9352-mba93xxla.dtb.o
 
+obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o
+
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
new file mode 100644
index 0000000000..5160a7ec1a
--- /dev/null
+++ b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
@@ -0,0 +1,11 @@
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
+#include <arm64/rockchip/rk3568-wolfvision-pf5-io-expander.dtso>
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5.dts b/arch/arm/dts/rk3568-wolfvision-pf5.dts
new file mode 100644
index 0000000000..fe41ea6634
--- /dev/null
+++ b/arch/arm/dts/rk3568-wolfvision-pf5.dts
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Device tree for the WolfVision PF5 mainboard.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/dts-v1/;
+#include <arm64/rockchip/rk3568-wolfvision-pf5.dts>
+#include "rk356x.dtsi"
+#include "wolfvision-state.dtsi"
+
+/ {
+	aliases {
+		saradc = &saradc;
+	};
+
+	chosen: chosen {
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+		};
+	};
+	/*
+	memory@a00000 {
+		device_type = "memory";
+		reg = <0x0 0x00a00000 0x0 0x7f600000>;
+	};
+	*/
+};
+
+&sdhci {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+
+		barebox_state: partition@410000 {
+			reg = <0x0 0x410000 0x0 0x8000>;
+			label = "state";
+		};
+	};
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index 8cdf2c28a9..6ef44fb0f6 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -109,6 +109,15 @@ config MACH_RADXA_CM3
 	help
 	  Say Y here if you are using a Radxa CM3
 
+config MACH_WOLFVISION_PF5
+	select ARCH_RK3568
+	select AIODEV
+	select BOARD_WOLFVISION
+	select ROCKCHIP_SARADC
+	bool "WolfVision PF5 mainboard"
+	help
+	  Say Y here if you are using a WolfVision PF5 mainboard
+
 endif
 
 comment "select board features:"
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index ea32af4241..f585d8c79b 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -35,3 +35,4 @@ $(call build_rockchip_image, CONFIG_MACH_PINE64_QUARTZ64, start_quartz64a, pine6
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
+$(call build_rockchip_image, CONFIG_MACH_WOLFVISION_PF5, start_rk3568_wolfvision_pf5, wolfvision-pf5/sdram-init.bin, rk3568-wolfvision-pf5)

-- 
2.34.1



