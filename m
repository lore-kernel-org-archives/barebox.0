Delivery-date: Fri, 12 Apr 2024 15:33:18 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1q-0095LP-1D
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:33:18 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1p-0001Rk-6V
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:33:18 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=uE12p7G3b1e9t1ZVO7PGN6ulV5R/+69P62qSLHc30/U=; b=pY95GsZJCUAKkDGBJIICJTVUG+
	uZsAhRmKYvf2o/HkR7G1xH3cZ+fdJbi0HhW/9juzAapGBYjE70Luy2eplNLFU9y0jFNLLWe0dhaSD
	pOV8J8RoQYP5jrm/wjTgyrwc2ZuUITzH7GPJmpvkBfz7EDVssNFbMg1eGjhOTpBiI8vgaKd8VmD4z
	gFzs56QJMsVO37GCU5Ql5bEOv54kuYwjMsiczcTVsE+cMjsHN1lHJI/K0M1Lbg98P0PG7bCn8ocOe
	1dmlzWrzXlAQ5HqREUqlFlB0mQA59Y2p/fg+fY3F7vsVkoCDmGsRmnJCXbu4oGApfykEZYQOpcvEC
	gUSbqU8g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH1I-0000000HLU4-05ug;
	Fri, 12 Apr 2024 13:32:44 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH18-0000000HLL1-1Yar
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:32:37 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=fmbFjjsIQJ+IE3clMdDnkTvEsFGD2aG0V7ggn5aB53GPjsQ8TSlKDxu6nkRNlvLeQ+Tm5DNOPnkZgkFIRVTone8Wy0IrEXaW2tBMlRjJvtBOZsDBWxIegD43wq+5QrN6/SE/H1Yk07EuwM7daOuv9Y0MGEfuAesT+4es0nqF4nwv5cmPG3VUbOFdgV0qcVEFayAPwRsfUVx+CoKPFlgHApdcdDJVo2lU+nfjWGXkyRHlT2q2ndz6v6ZDUYP8EBAulJ1fyWEIQ1Ix/Q39jcP0RtWdTfAxf4kPTRrYnABkg3RLqaOn/+kgh6DenMi7oaUBc6zS9BWHK9G2KJIsOZmtyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=uE12p7G3b1e9t1ZVO7PGN6ulV5R/+69P62qSLHc30/U=;
 b=QMlnG8UNCCpSbKK/XMqtCeyg3/LjB59YcJuRk8CrGE/SZ1HrjsizBWkqlaI8DZiNGXYSVx9kFcC7SH4ibaP7TBpOLDVWK8Xq4tlDVVsPGjEVx1CD0L5ehGDhnsjpDoH03Bpq25ueDdtoPbC/X+4uMoISdw3rPyQrOUh0umeSl3fqPQTQoXS0o4szIUiHu+4dZO5oroRFj9YcZ0Cr/OvAUSOfH7l7SAu90Hxn1gw+boldzEk/Ms85V8Llq/BqEnTcVUSW/tCB/kyahRW/sx1ERHawPqfGvibSYlQY5GXtok9sLHmB5BAT0J52HIPeMzEE4ZoT6CTUd4E1x+7QMVzrgw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=uE12p7G3b1e9t1ZVO7PGN6ulV5R/+69P62qSLHc30/U=;
 b=k4hlNtKyEb9J/kHICoREIb01HnD8rasydnQDqfWGMRi1u4gCvg6JCQ6lb89JzYQ0oDJhZGCvgizn5vbn398w4fdHM9cR0TYHdEc0gEzdhGREUda+8aqzocyrgpbTLQUXyjcKrh7yDHbd2kcq9MkZ+yY5IlNGFgDTeUY/85h7BZY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DB5PR08MB9998.eurprd08.prod.outlook.com (2603:10a6:10:489::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.55; Fri, 12 Apr
 2024 13:32:22 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 12 Apr 2024
 13:32:22 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 12 Apr 2024 15:32:15 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240412-feature-wolfvision-pf5-v2-4-7e277cc8831b@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
In-Reply-To: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712928740; l=9526;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=GlktGNMkWz+AJeE6ezRZOA4yfiAoWYseEc6Aizwd108=;
 b=+5n4xM8SD3Oj8vrBSHJhWycm+7pOaINmeu3sk84RPEr8IkOjqKxKLgQxOA2okV0AjNGz2hUvA
 zgCVLUgD0lZDAacC61Ft+iGkRrcvTKxsDy64EN52QFEn12kzrcSqoGF
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB5PR08MB9998:EE_
X-MS-Office365-Filtering-Correlation-Id: d2cbcb96-3608-46ba-288d-08dc5af4fb9e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: BTqn3R5t5n8HBClwbglVReYV2jYy0h4os0Z/y+/7qONBWdePJxF9UKXGTSRVj0yUuRQh/fVKOx4LaMwIRYhH3QEZECcwFduEhxwQF1gQt31yPyQbma4hmxoUVFUECuCKEt6+NbsZZ8P6byAS/UPBFkBqPj4eqvICZJsKod+bK9H8R4H4IQ16T48UBQM4c7rHGlbxmy6LoNti9OTUb9rCdH0VxMvJZ5EzHYzjUPn2ZREFig37DzheKwbq1ZuwIX8xOutFFdIr2kcbkk1O8jztMwTbOwBheLlDbP6sGzfYyn+8ghCXOzlKJbtUSo07ViunmbnObFYaIeiTX9itKQOElXQ/teHhLx6nO+iAo/RT3EWXz3AVSku4JfROrWR4C8Ryf2a3SGZcvrmAGDLoMzzKnCiXckofUc5zRmbv2h6dzt6tZh4TPdohoXf8mxuKsCjjv/6GM/yURRujvUoEtp9dkPMp7R9nFfCO1q62omBZTZDmBwpjxYOKI9dMLY8Xt0g8BnrnLbnYeXdjKITHsR2yvg4eaRe2adbOWYW7204rrCfCUFKIhWEy0sWn6bmsC+ezshNk+DrOoEKLWsaYQh5bWNwI26lMzn1lbEDAGj0xBxyNl4L1/foAgCoY5Wt2T9QgiqvAthLi6/RdBPAWfeG6VD9XHbzXF3eveMnIdq1Uh8Q3amcQ9hIzlkG7JGbku/lfwOY4sjpaDqJ1pr/j8whOFD239tDzpKXEmj2E1R64UAM=
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Q1VUQ2Z2eVk5RE1hT2RUZ3BlR0FvU0JIZjFXYzVFNW42bEFjVTNRZGpkeXZM?=
 =?utf-8?B?SXRkR010RFhtMEd1dVZxKzVqTkVYZHZZZHk1NU9rYUMzR2JKaG5rWDNleHJq?=
 =?utf-8?B?UFVJaEV4dDRKbksrQm9iMnk1QVVXbnVqMnI2OU0rYUZXeW14b29jeUxrazZ2?=
 =?utf-8?B?L2pURGhBUHpRUXB3Rk1kRzNlWGpGR2E2ZHlIcTNQUUN3aDRWZ250bjRrTHE2?=
 =?utf-8?B?ejI0R0txSVhQV2h4RGNncVJMd2l3RDFyYVBqZ1JxbkdhTnhsZVBZQ3YvRVFj?=
 =?utf-8?B?QUFwb2tRemQ4MXV5UmhUQ2VIbmwrNG92VHAxN01LU2VxM2huL0FnYmlsTmE5?=
 =?utf-8?B?QW4xRnQrczhRS2pMbzc2OVQ4dis2bmNlenFmMjlaaXZyZHZzNmc0YVNXM2gw?=
 =?utf-8?B?TmpNRkcraElocTFmSGJxY2pXMlBWVTVBcUJDRU5hdHJ4OURUSTVkTnlvdVQ3?=
 =?utf-8?B?alhYdk8wK2pLeFZlU0VYeVdsa2JJNWhHWGJqS290akhDM2JBWmxCTG53SnB0?=
 =?utf-8?B?OWdjcFhtRlpvbVhkamp0WUNuUnNXS0M5TVFrVUhCb1B6NUxmc0lQRDk4V3Rr?=
 =?utf-8?B?Y2g2WEtncWoyTFIyaHYzbytDdWxVTGhhdDJjY1VGN25qakNxdnQxa2Nudkph?=
 =?utf-8?B?ME1UVkxoSHRRR2p3b2NyYmhBSWhLbFE4b0pFWmVKWWw0Vkl5MzRDM0xLK1Ar?=
 =?utf-8?B?aWx2YzJXLzNERUNhUlU2b0JVb1hXeld2N0FGRE9YMTBldldPaUx1VjRRQ1VR?=
 =?utf-8?B?aU5uUFZWL3A1elhQbklOUzEvOHcxUGs0Rlc2NTdMR3phTWJkTHVIQmdaOGh2?=
 =?utf-8?B?cmtpWTBaSHZiZGtseUFueHNNNDF0dmsvVHRiK1JzUExkd0FrSlRYSUFlZHdZ?=
 =?utf-8?B?QXRBYTR6TVBYZmc5a2cySGVWRlZmblVGUFZDQ3VWYTJ5U01YdWxyT3U5N2Ex?=
 =?utf-8?B?RVJyT3l6SFk5QXV2bmZSK1lyTXNtMWxkanRvVDJYeERYVXptd3phSGcyazFh?=
 =?utf-8?B?NHlETUk2c0I5U2FhbEVwTC8zTnFuUlBKRDhTaVc2V1JubWxKaXNBZDVESENU?=
 =?utf-8?B?R1l6Y3dteE03TG9SVkFXZEliNWV2QTJZcWR4Rnd6bitwMlNKQUhjYkI2dDFl?=
 =?utf-8?B?UEVkOFMwVExvNUxkRmY5WDlFakV6Wjd6U2l0ZmZCcVVQUGhFVENzVi82ZnlK?=
 =?utf-8?B?ODI3VVg0dWd6MW5kd3ROWDVKaU5kYzFMNVRGdzUxS0hYeWxoYXNSbWFrQVJX?=
 =?utf-8?B?Z1BmTElQWXdJQ3ZFTHppYnB6c2wvaEhvcVpnS2lDSis4bzFSU1RaRlFHekFC?=
 =?utf-8?B?RmhNVW9JaW1PTklyVDNUVk1pK3V4eFdwNXQ5alkwR3d0Uy9Tams4SHprNlVK?=
 =?utf-8?B?N3IyTENBRVQzTzZ5ZS92SDQyeXg5WVVNZ3A0RUhrVWF3WVhuQjZVQzQxdFBa?=
 =?utf-8?B?bm9HcDQ0UjRFMUtaVzY5dHV4MkJoa3hyMUxBa3VHOGpDanRVdW5WSTd2cUVp?=
 =?utf-8?B?djVOVEhWV0ZYWGpLeFZyVUJXYWZkMC9BQ1NyTDlZU0oyazBJWlpwdlk4dzUx?=
 =?utf-8?B?Qm0remlYemw4QU5LRDkwUDlZdzBGNEw0ckI0dzhmd1pDcnV0cXBkeVh1MnBx?=
 =?utf-8?B?d0VRckwzQ2xUeXE5Ky9FZyszdFpENlJUUTBGdEtlOWxDOGVQeTJXeU1JSWdk?=
 =?utf-8?B?ZW5vYW1NUmZuSVg0WHVUSWlDaVNycGU5b1FCa0sxVWowQ25kUUwyVWZ4LzF2?=
 =?utf-8?B?THduSkxaZGwvWE82Tno1ZmV4K3pZYXNiTkExazR4Zm9KeEliakN5cnhTcXM0?=
 =?utf-8?B?bGQxWWMvYm10S0RiK0grNkRPZGFaSjJQcTFIUUMyaGxpOW1TcENKRkJVaTZY?=
 =?utf-8?B?bU4zdjUrbkJyOVVudTFJNUhCN2tBNXJ2NzRFVFgzM2pRTkc1cDNvVEJwOXFM?=
 =?utf-8?B?OEhjWEE3TkhuSUR6K2VvdFhYT0l0d21rSVZuaktjOUJiM2pIWEsxT05UNytH?=
 =?utf-8?B?ZTF2YmFLVWhPb3FxbTFGLzFySWFDcEFnaDhqa1Q0U1lpWHBpOHFhVnpTYXNy?=
 =?utf-8?B?SWUwejVwbXozMHlVREdMeXFvb21mUiszN05OaFZ2MFJmc2xXbndzNVhwK2Jh?=
 =?utf-8?B?NVdzNExXSTQ4SlhTeSt6OVZKVDlHYjRNNzFOdENBdVlEckZ1T3JTVDdnK1Iv?=
 =?utf-8?Q?MM9Bt7TKWs79iXEqtidrHU0=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d2cbcb96-3608-46ba-288d-08dc5af4fb9e
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:32:22.0437
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 1gUDVms+cdFpMYOFMEuS4rzd8DfE6jm0zy3xBKsBgTLyip68cAsnPX2DNJid6ViPIlYc9BmAFp0onH0VP5046A3s5qIAL2dxJAGlgSl4VtM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB9998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063234_492614_05A3D800 
X-CRM114-Status: GOOD (  18.78  )
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
Subject: [PATCH v2 4/4] arm: boards: add wolfvision pf5 mainboard
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
index 84e777092d..98eab17af2 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -204,3 +204,4 @@ obj-$(CONFIG_MACH_RADXA_ROCK5)			+= radxa-rock5/
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
index 7671b9e2ad..e4af867027 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -186,6 +186,7 @@ lwl-$(CONFIG_MACH_WARP7) += imx7s-warp.dtb.o
 lwl-$(CONFIG_MACH_VF610_TWR) += vf610-twr.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-ccbv2.dtb.o
 lwl-$(CONFIG_MACH_WEBASTO_CCBV2) += imx6ul-webasto-marvel.dtb.o
+lwl-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5.dtb.o
 lwl-$(CONFIG_MACH_ZII_RDU1) +=	\
 	imx51-zii-rdu1.dtb.o		\
 	imx51-zii-scu2-mezz.dtb.o	\
@@ -230,4 +231,6 @@ lwl-$(CONFIG_MACH_VARISCITE_DT8MCUSTOMBOARD_IMX8MP) += imx8mp-var-dart-dt8mcusto
 lwl-$(CONFIG_MACH_TQMA93XX) += imx93-tqma9352-mba93xxca.dtb.o \
 			       imx93-tqma9352-mba93xxla.dtb.o
 
+obj-$(CONFIG_MACH_WOLFVISION_PF5) += rk3568-wolfvision-pf5-io-expander.dtbo.o
+
 clean-files := *.dtb *.dtb.S .*.dtc .*.pre .*.dts *.dtb.z
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso b/arch/arm/dts/rk3568-wolfvision-pf5-io-expander.dtso
new file mode 100644
index 0000000000..37b48afd2d
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
+#include "rk3568-wolfvision-pf5-io-expander-upstream.dtso"
diff --git a/arch/arm/dts/rk3568-wolfvision-pf5.dts b/arch/arm/dts/rk3568-wolfvision-pf5.dts
new file mode 100644
index 0000000000..e214842ee4
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
+#include "rk3568-wolfvision-pf5-upstream.dts"
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
index 0e2b7810bc..f373624f5c 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -115,6 +115,15 @@ config MACH_RADXA_CM3
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
index ceacfde10d..e344e893a0 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -36,3 +36,4 @@ $(call build_rockchip_image, CONFIG_MACH_PROTONIC_MECSBC, start_mecsbc, protonic
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK3, start_rock3a, radxa-rock3/sdram-init.bin, rock3a)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_ROCK5, start_rock5b, radxa-rock5/sdram-init.bin, rock5b)
 $(call build_rockchip_image, CONFIG_MACH_RADXA_CM3, start_radxa_cm3_io, radxa-cm3/sdram-init.bin, radxa-cm3-io)
+$(call build_rockchip_image, CONFIG_MACH_WOLFVISION_PF5, start_rk3568_wolfvision_pf5, wolfvision-pf5/sdram-init.bin, rk3568-wolfvision-pf5)

-- 
2.34.1



