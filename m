Delivery-date: Fri, 08 Sep 2023 13:32:44 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeZjB-008AtP-Is
	for lore@lore.pengutronix.de; Fri, 08 Sep 2023 13:32:44 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1qeZj9-0006pM-1x
	for lore@pengutronix.de; Fri, 08 Sep 2023 13:32:43 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=FixVZIEViY6lWcfV3OTFpjMjVK6mdTG71UF0l2gBpiE=; b=pHkqvnpbe8uo6egNWyJGUlGWuV
	WJfp4Fgcgo9BopZVIpijZS60HF1+eY7xb6dv1u8qubOxo8rwuzd2cCHn9iauZIF7v/vhiY2HviorD
	ZSJxf+2OgXPN7wMis4nSGSBYJDv7Ik3CJo1z2dL4gzQtIYlBf/0sQqgSk5GMxj6X4sG9sMzd9uDRP
	vE7cHzDCUBGZvTPOI1zfrH5sQQoVJ+9i4QR+2QjqhISibbecC8hlKIw1w67bUuMsLbU4gpPJx93jw
	KteKI3o+bn2J/GaqQ9r7LJCv4Gi9vUNYK/Pjz1xuASYvaK6Rio/IA2AuOuSZ6mQw7JLs7IbVece73
	KDPEzmPw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.96 #2 (Red Hat Linux))
	id 1qeZhr-00DgCw-04;
	Fri, 08 Sep 2023 11:31:23 +0000
Received: from mail-db3eur04on060d.outbound.protection.outlook.com ([2a01:111:f400:fe0c::60d] helo=EUR04-DB3-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.96 #2 (Red Hat Linux))
	id 1qeYY1-00DT96-0z
	for barebox@lists.infradead.org;
	Fri, 08 Sep 2023 10:17:11 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=P8vNerWFGbUrFH7sQyjFWZ+74Bbgfy/SNzRc/SNAjLPlc2qOdLjsBF403sMrEhzcrhm4roafUkhP8aP+j/XIK86XoLblnlYMAMWMGAaKOpffhtQycL5et6hbufK9WGMZpJrHFsU4nHgZvpyvRc+Qkr7Yv8PLALrJs7ArXhpj04Q4EhN9hRNCJC1tFMkfhIzejKIxuN5cSt0oaz0xngdyuxT99Wws+7NBI5rPn40O8aVUGiwusx7zNTEUgpM9QVLtexsljHjFwdlNI8fv5B5TIUyxqTYh3AEPT+2yk5OJ7DHnqs5srNpeRWNTPq7Zl9OJMO6JRlHpZIJhzQIuHnUtsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=FixVZIEViY6lWcfV3OTFpjMjVK6mdTG71UF0l2gBpiE=;
 b=CtOpcBJQxvhXq5BaAOu3aWVEfOz8WVcyoD9Q27Z69su4Vx23mpS4DdTmVyEql4yLZbLcsTUqR6CPOUtv5QGRJVXg1TmKR/fBTiQ3OVPmhRGAukYSbAq4Vhld4OCEpphr7iQH3yVK329VLbdleCpthrWR0sRczaHsr4TLEHEl/Nmzvp0sbLu259jeYVQTVOvkaxsuRVRAPDFJGd6NR3zLPEClr/KUbpTShenGwfSu4i0r+eqlHf2NgrMeAicnJJsSULihN/EfplsyjnJYhf5mk6SOyhMVfvDfkeZbSTmIz2yfNIuU5Fbw4jUZJDQcA2UFz1KajzU2KkbxX4XQZ1r0ag==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=FixVZIEViY6lWcfV3OTFpjMjVK6mdTG71UF0l2gBpiE=;
 b=26zIXhZxsp0aPn6Yw8FEOhUwgJ8imqAXtEFHAgYtkJDMkbOJG8tlACer3CaMDaIGEnT9Wi9ZpZz40Bjn6Tqk7MAiXwbRcRsIlbD2Y6apVNYhk6V944exOqMvT6SQAUzYyb1KhL4BKuyOvfIztF5tU8AjxxS7fLDsuwSYQnVUIYM=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com (2603:10a6:803:100::13)
 by PR3PR08MB5801.eurprd08.prod.outlook.com (2603:10a6:102:81::20) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6768.30; Fri, 8 Sep
 2023 10:16:59 +0000
Received: from VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba]) by VI1PR08MB4544.eurprd08.prod.outlook.com
 ([fe80::2912:dcec:8cc0:f0ba%7]) with mapi id 15.20.6768.029; Fri, 8 Sep 2023
 10:16:59 +0000
From: Gerald Loacker <gerald.loacker@wolfvision.net>
Date: Fri, 08 Sep 2023 12:16:48 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230908-bugfix-i2c-rockchip-v1-3-f8235d811f6b@wolfvision.net>
References: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
In-Reply-To: <20230908-bugfix-i2c-rockchip-v1-0-f8235d811f6b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Gerald Loacker <gerald.loacker@wolfvision.net>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1694168217; l=1018;
 i=gerald.loacker@wolfvision.net; s=20230502; h=from:subject:message-id;
 bh=q/nVNLYLplOsUFkpAqJhTFS1aj4cFgwoz+0boRaY1e4=;
 b=auemXCN8BrgnPJodQpwW27LhbODEerkj59GZf4nVeOrm0YJSKCexmgQBIK+MKCkDSSwux9kPg
 438LeBjYBvLAa6WtRguO4hebWhQUuDcSAvaFwQOnjjxLxtQsskOBfsc
X-Developer-Key: i=gerald.loacker@wolfvision.net; a=ed25519;
 pk=UXhp+obGMUOjknszonesnb29P6a2Kk/K5eBuz62ggVE=
X-ClientProxiedBy: VI1PR0102CA0030.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::43) To VI1PR08MB4544.eurprd08.prod.outlook.com
 (2603:10a6:803:100::13)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: VI1PR08MB4544:EE_|PR3PR08MB5801:EE_
X-MS-Office365-Filtering-Correlation-Id: 6ed7b5b1-0a43-435d-3766-08dbb054bc57
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: C/1vEIOwJXr+xW/So5iU/PNcqvNtsdG9xu6onr0E4TiS36D7MMkI/K+Zfr0lX7uxXWIdR5bY2vd3Nm6kvqbJtIyccCYu4hSYNNJRk4nKZAIUiPqxZz7H8gZmkLPxhF3Bv+v3wLmoNvCdIBOvJtG3BKRwwVyBY8IZA1+P7ihrJDR6vJDPCMIEhMCIR5sNniTIwxY421epHV+lkUOrjKhUGtUDeVnBLELakwGCIy16Md1qHvzqm0hkDxDC9xsmPrH1vYMOKFwNp41zLzgp/eWDbQn1Wh2x3/0fTNzurzGe1PjK+Nv0VKf+1nT8fwyewGjWOoAUabn9uPnTg1+dp/p9Pfi5Bb8wKGUQTWtgY3UW0W7C1fMGUpiQQs5ZQZYIA/EUOVh7phDgEIAVxm6obbgtWoxr1fQQQeqNAVkybickq9fEUTPjFc3Fme8sciALNI5ASWdoOdMhZDxQWeRbh9/GXAHfG8XcKztJs+ImamNXTsTsUa7M9hUQDgX9pcRsfdFHwO9dEetzCYFaRbeyBkUG9/QiaLBgFA53ja1KZOXjcfv7OK+7csTVEn6xrVrmMA2385m0AXrtiIBj++zF+yi66o1hl7uz0Zh56BgwtUtjFT+z6F7+dDdViDCPqFp8fzCP
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:VI1PR08MB4544.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(346002)(366004)(39850400004)(376002)(136003)(396003)(186009)(451199024)(1800799009)(52116002)(6666004)(6486002)(6506007)(6512007)(83380400001)(478600001)(4744005)(2616005)(26005)(2906002)(66476007)(44832011)(66556008)(6916009)(66946007)(316002)(5660300002)(41300700001)(8676002)(4326008)(8936002)(107886003)(86362001)(36756003)(38100700002)(38350700002);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Y0ZsU081SjVZMmhsT0JoZnZKVXBFZFpoa1MzcC9YOTRBN082d1MyNWkyZWcz?=
 =?utf-8?B?cDU3M0RncE5xd01NazVrWDVwRUd4NlhOMkhTT3BIazB4cUU4Z1hab05qNEo2?=
 =?utf-8?B?WG5PdXc1bUxWMEM1eTc0YnhvNDJMTTE1K0xZT1h3YXZrb1NRQ3lQYXBQdU05?=
 =?utf-8?B?MG00RXNxZ01XK3RMOWFRa3d5NkJkRzBCMEJjQU4rL1l3QlNpS0pyaktibGNH?=
 =?utf-8?B?eGRGRmtJTU1UOFZlYWJPSjV1RzVqQU52cnByaU9aZmtkVVVFZVpaQXdMNlRt?=
 =?utf-8?B?L3c2RTNJZ0pLMWxQMkQ0VUkzdGpmT1hib0NNdVg5MzcyLzhLZnJGRlVudHU5?=
 =?utf-8?B?elVCLzIvS2JvMHB2VU5Bd0owRTJyY1hSNkFqMk1oUDhza1AraGZaOFVxRkNx?=
 =?utf-8?B?L0RXTkN2S1Jwc2FBaFNCOHFhN2Y0V2k1dDNXa2RmSnhLbyt5OUl0dzM1QStY?=
 =?utf-8?B?WldQSFVsQ1RsN0J0c0RRZTM1MU9uQlFxbEgveVlTbyt4WmZZNUlsbXptdXhM?=
 =?utf-8?B?ZGhWNFRsVk15TUZNMEtIYitPYUdzK3dwcVRwb1VFVEEzV2FvU0tJR1hmZGZs?=
 =?utf-8?B?NUxFMXc0akplbWlqU2JQZFJoa2lyL1I0OElrTkcvWTJXVFBlNjdiNUViM2JS?=
 =?utf-8?B?KzZoOGlWVEc2RVFMSG9kTHFtdTM5Syt0a2Y1WmsraTM1UVhKSWJiaTdEc25t?=
 =?utf-8?B?dXdUQzNUeDczYlVTVEt4QnpvbzlodnZibXBqV2N2U0EwNE1mei90RHpjb2dl?=
 =?utf-8?B?VENlVGt1M3ZtK3ZTNWdMTG41SmF0aGFHNThvcnE3ODZocENkWTdHMk02QXNa?=
 =?utf-8?B?RFZ4WjgrY3hxTzlqMUFweDNWUVZsdXBNd2Mrb0JuRVRsR2dpM1JOR3UzSUJ4?=
 =?utf-8?B?cTZ4cHFJWTVkd1RSQTNzbW51OFRHUWVvSkhiVHVsMWJXRlhsRkxtQml6T2Y1?=
 =?utf-8?B?SkFqWDBLaTFCeCtvK00wZldNNWttMlI2U0NWWDltenV3b3B6cjBuZnI5bGxJ?=
 =?utf-8?B?TTY0R1JPNzZlSEx3TzlwL21RWlg3U3JTOW9SeVRWT0lwRStWYnhnTGJneExF?=
 =?utf-8?B?RGVzQVdLM1pmM2NTWVVUNlU0eFJqelE2N3FoNG5XakZqZ1JPcWNuYWxWbFc3?=
 =?utf-8?B?ZHFmbWs1OTlOWXNGOHVCM2wrblI1ZjNyUDdTZ3dGZUoxbVpsSGtqcVZ3T1NM?=
 =?utf-8?B?QnhWbGd0QlpRdHBUWm5laElSaHVZUUFBVWFIYXlCV0RKZkhxZU00RTJaYnN6?=
 =?utf-8?B?bndFZnlVMEJvVkEyMWc3dkR1UXd4dlpUWnhzSUsxTDFWanBoUVFpa2NwQzBC?=
 =?utf-8?B?QlhrYXBLdFo2dWlTMDdBeWJUVjB5RWtaNi9JMVdFbEdZMHRYMGJFZ2VvWm9V?=
 =?utf-8?B?Q2FMSzNDY1VPakp0ajJ2WmNUL0dza1kxTjF5U2JldkFTUDdTV3htNU5vcDlu?=
 =?utf-8?B?UDMvZDZ6SWg2emZ3WjdsU1pwcXJ6d1d0bXNhN0oxMm56VlRjK0RUSjBVa3Qx?=
 =?utf-8?B?SGRjMlZIWW9ER2pUMTJGSWlVSzFTVzlJTkliRUI1ZnE1Zml6RCs3c3RjSUM2?=
 =?utf-8?B?WVdrakRLQVBJZTZEcmxoQTV0R2Z0RW1LSExXQnNmVDZtd2VFYzFHUXdHTjZZ?=
 =?utf-8?B?WEhzWkhVcWVoWkg2enlDYTJ5TklCV1FObTl3aFlOdU8vc0piM24yOHMvdVNI?=
 =?utf-8?B?QU5EQUFXR3J0YXU4NC9adlprRjcvL2t1S2NzU0YzSktVVHdOSjR0ODJkNzQ5?=
 =?utf-8?B?ektqMnNUNFdIdjFZUkxQZU1EVGlOanIzOHpvSXU0ZDF2dURtV0NUVnFzK1dW?=
 =?utf-8?B?TXE0NGZaTlh6OHBrT1BwVllFUnlUTHB4VW82aENrL3JYSXIwY0lrU3lWdmVZ?=
 =?utf-8?B?aXg4WC9CWjNXUnNnZ1laNFpxbFhhcDdNcUlIUmUzN2FSY1hJcG9VMndsa0E4?=
 =?utf-8?B?OWV5ZDBSZ0JmbThMNDZzZGVWeUM0eHRkQkJlOFRyU3JsYzlZRHI4LzlrTkhJ?=
 =?utf-8?B?VzZlRXJSSVdMMGJVR2ZZdVJHeUNyWnNYMjg3VFJhZHFIMnczRm55cDQ0aStq?=
 =?utf-8?B?WThzMzVZZnd3QmhKY045S1gyZUYxdU9Ia2hqWm96T1RSUDFFaTVBNjk1OVVj?=
 =?utf-8?B?RFVmaE1mUkFTcTNDMFIwWW1XSGh2aWg5eHRzR2d4ZndtNjQwZG1DZ085WDcy?=
 =?utf-8?Q?sIodAMSc2/vUdvlsaYPWg1o=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 6ed7b5b1-0a43-435d-3766-08dbb054bc57
X-MS-Exchange-CrossTenant-AuthSource: VI1PR08MB4544.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 08 Sep 2023 10:16:58.8335
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Is/0EsO0dPskAoeOuMOE9K/77cLKklMUZ91YU1F7402pfk6sdBghBOC8cyre3rZyMaGXzntDohS/ltlH9quQRvSWJq0l8kN4C1rAGvLp1Nc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PR3PR08MB5801
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20230908_031709_379183_EBB6F1BA 
X-CRM114-Status: GOOD (  10.42  )
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
Subject: [PATCH 3/4] net: ksz9477: propagate phy read error
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

In case of an error we should not return an arbitrary value, propagate the
error code instead.
Fix return value in case of address error.

Signed-off-by: Gerald Loacker <gerald.loacker@wolfvision.net>
---
 drivers/net/ksz9477.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ksz9477.c b/drivers/net/ksz9477.c
index 9665e0f723..d664b7cf01 100644
--- a/drivers/net/ksz9477.c
+++ b/drivers/net/ksz9477.c
@@ -29,14 +29,15 @@ static int ksz9477_phy_read16(struct dsa_switch *ds, int addr, int reg)
 {
 	struct device *dev = ds->dev;
 	struct ksz_switch *priv = dev_get_priv(dev);
-	u16 val = 0xffff;
+	u16 val;
+	int ret;
 
 	if (addr >= priv->phy_port_cnt)
-		return val;
+		return -EINVAL;
 
-	ksz_pread16(priv, addr, 0x100 + (reg << 1), &val);
+	ret = ksz_pread16(priv, addr, 0x100 + (reg << 1), &val);
 
-	return val;
+	return (ret < 0) ? ret : val;
 }
 
 static int ksz9477_phy_write16(struct dsa_switch *ds, int addr, int reg,

-- 
2.37.2



