Delivery-date: Fri, 12 Apr 2024 15:33:11 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1j-0095Jm-0Y
	for lore@lore.pengutronix.de;
	Fri, 12 Apr 2024 15:33:11 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rvH1i-0001KI-1b
	for lore@pengutronix.de; Fri, 12 Apr 2024 15:33:11 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dkPBN2uVq9laxHCCekAm7duANlcaqPt5PpWsKg90zt4=; b=P932F+JTP5VErAV5WM2z4QPX9u
	vTulTGUUQBLj3dYTcBQqv87vgYbGGEZ1rOcSl0zutkAn8gyo3FDsgzv8wctSmxL7SCRz1tgvRWcFV
	R10fmhjGTMaEqfOn0wYL5mPaOpAh0cSYaTQFkenMuE+JnjB17p6NHzoDyyEZVUxNf7C+9vt0IHgpl
	n1fWapeV1OgTxIccqVJWshKgnJX33tYj5YY8nNmKkuWL0SHa7FA8hHEt7N/5Fp/EybNG+c9Mvu6TS
	n9k51zTx3wRnSD2IAgCnhgwGT9H8EEbt3Qc8oJzzvm6p3r2Pxbe2WIGC31TRNNtkEUgmb/8Xa/JEY
	mQ+rEx/Q==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH14-0000000HLMw-3hR6;
	Fri, 12 Apr 2024 13:32:30 +0000
Received: from mail-he1eur04on20701.outbound.protection.outlook.com ([2a01:111:f403:260f::701] helo=EUR04-HE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rvH11-0000000HLL1-3ssQ
	for barebox@lists.infradead.org;
	Fri, 12 Apr 2024 13:32:29 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=PsOdrkGC27kRmMZI98gNV3Tx0IjH5QgiXtbfnaYaEffnSdVrEW74R5kRCL/vYruMIAfevAdJAigZa6ApSUtO48DWuFFd6aa3/N2mGLgMLcHzfSpA+rX61O1LEPDhciEwQoej43O/tJj1qdRp2b893BD46/79dSNTEugNezQ4yAyYAYizKwlzDVjb9MrH5cG/KhWewxVeNbUugEG1AgokSLKffbZOWMBySwsyKRZ+ht1gslxPMEtL8xxkIwZzxaeXyohN48wop6eWbeehA+oS+tWH7YWpsOKgjVV4XjW6iq4xm3P3Niu0Vt40yqO3iCrNEmonQGE6y57SafdurbKbLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dkPBN2uVq9laxHCCekAm7duANlcaqPt5PpWsKg90zt4=;
 b=RVqZQKeEXKZxaco1Z42EcRFSbElW+tgI5Pu6UKpTjj6Hly2uVyDZnm4o+tzQyAKR4voKM5gMHQlNhZf2BwrDcbyfnjKckagYJpieIY6akqHB0qjafF+75qFg98hSjxfr04jaBCUG3U8yBLrBaY25mdIby1BD+reN0hwAQBmEbcztrPyuB0kWZ6XOTtYgWW4uoH2o84t1bDASbTKM8pm4WmhsRt2FlMvIgdjloGmriEvUYxRYkK2DJnJwFyDgWUvTRGY8bOPGoROxVjFMNNfETGvEh6KijHTrI0X+YNQPhphvWoYgt69JOsF0Vy4qEAifDD8gVVUI3oGFLs0/XPvL5A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dkPBN2uVq9laxHCCekAm7duANlcaqPt5PpWsKg90zt4=;
 b=0Xz2aw3iTkiqK6lS9w22lcR/ERcc7eOnQgsGw3XJ/19PDB0/h5y/qzLFRox/E5Z+q5k+LCHOSOMCdCk29ZKu/4u9he8m2kcPy0CwEWk8/ofklicK3X3lFklHFPMR8q0DI17vAkwxwIzm4JRe0JYkC3k70NK57Z+IMrU0WTl8vnE=
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
Date: Fri, 12 Apr 2024 15:32:13 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240412-feature-wolfvision-pf5-v2-2-7e277cc8831b@wolfvision.net>
References: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
In-Reply-To: <20240412-feature-wolfvision-pf5-v2-0-7e277cc8831b@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712928740; l=1817;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=VMubF/sLOZVePtWBjTiz0+LQLjs5/FDIYDlGfDr5+WM=;
 b=d/YGLPIzsHMY7IKXSKI1qAq2cM6Sa0uCITSHDEPD3RKXbNJUA/iYA04IUXJH/c1s36c00z0gn
 TmYHeVbesTmC32nJvAcfA141RmKCp3M91ZmmiddnGCSbDbsoe0RTicf
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0102CA0008.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::21) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DB5PR08MB9998:EE_
X-MS-Office365-Filtering-Correlation-Id: fbfeecff-1b99-45b1-a09f-08dc5af4fb2b
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: n1JcJEMA4Rc9hmALyKQUg3h4lctuhuL8rGh1S7FIJyy6KGI6Bhw2BCHdxeYzE759U5IXxbcnwqbQ95essIXY3ct3w+B3A6FKu6XzgXoJTQE7kgFbGS/Bet39GZ5RtfmVrO7gZsl9TCOE8hO2pGJWTK2gi+zr1+TSq7iIsUE6MAY/i0hy+VFpdFxa0UHd5LJlvREbO9XjtQC4IS4Divq8Id8Xzg9HpjkFevXKW6c2RGGY3F2zpL0WuYNbBvDf4dMZItE8uE98uCE6Cv8VWf/5aNPMga2k+NaYZ6q0PE97zCtGrUmJNKAU21c3RycBKCOC3mHTwmZXQyStQNMmR66v19dEXOeFNi0Irl13CjwSTzn80K3aV79NWLy+KqTxLGJJ5WAFsFLl1u5zELHLG5rgrBPqzkDsf7Lp+q4ERkeQGFp/AjjmUuGcxV+jdMquaV2MOp2dhA4LoS/PEtZNcvwfeSq4weN5wX2xYyNm5zfuKP/rj8Zqi/LYxMw3Smi2mILHHtBXZdq2Oj2j7QqAOpQy4jw+C8z3Hx6l8BKjY80FAI4ZSZXk6Ds3HzcYbeYe6N2iejCbDHarIyz9BXATMuscAaqPmXFBQr7iCSjsmk+l3EDEzzuq2nFg1g3zyWcD6dqzD/l3WnOBhyeTbLGpPF5m9CRfwEzpItuq6lfgLeir7oPbhyzBrA3Tfyl7DyK6cwX30gHd/c0v4EH9hgZYbX3Y3A==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(376005)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L3lXZ0xRai9VODBrZWtLaXdzbzdlUVFIMEFkQnVRNVU2OUg4OGhWbkIzWUxK?=
 =?utf-8?B?end2azVsNTJpZTJEd2h4YUsrbXR0WjJDT0xLTUFWbDZjVDJ3WTRTU1FzMmZQ?=
 =?utf-8?B?VEg4QlZleU50bkFkeGpRb3pkaHVuNkdzNS9CUlJCWC92aDh2SVhaSlF6QkhG?=
 =?utf-8?B?dzdqelFNWkhmbGlFK0NmdThXTlhQb3RxTTRNcHllNDNlWEVuWEk4Nmp5WGYw?=
 =?utf-8?B?ZU1ZUXd3RVJvajBkZVhkTU5NYldoU3BTSlJFQ1dRRXJFeU5TaWo3TDZmNDVD?=
 =?utf-8?B?NGZiSzdRWnRYbTgxUHcyaVgxUktUcE0zZEZSUnlleE5ZUlJkYUptYWE0UTgz?=
 =?utf-8?B?SitZZXlWazM1eDRQQ3hlMkt3YW9mTDBpc3VSZEVXYW9MVDFZL1V6clBpcFUy?=
 =?utf-8?B?QTBxbTBXVTAyUnFVZjBvUVlOaElZMVpLaTViaWVDVm1QSEVNYlF0OEh1WVFD?=
 =?utf-8?B?eTRRYnZHRlRSTEJJbEFiV2xFeE5HNlZPbmFJVEE4Wjh5S0l1RGN4K2trUGt3?=
 =?utf-8?B?UHRTYzhXcWdiMkp1cWk0RGFFelNQR1ZYd2d4N2lLcU1MRWlsU0RQV2U1VGNr?=
 =?utf-8?B?ZWJIYXdOV1JQZmQ0djh4UG5aMW42ek1BSktuWUk2c2xnZVI0YVZYRzR2RDd2?=
 =?utf-8?B?d0MvSUYyY0dRdEFJSG9ldGVvc0srdmJiUXZxRUNPam92T3MzQml2bUV0WW5G?=
 =?utf-8?B?VXNNRmdhWkZsdHh2R0poNEdqUDZ0ZW92NFJvSDcrbjN1R2pGeFUrVVk1MXVx?=
 =?utf-8?B?THQ2QkFYS1ZNa3BjSStUVFhXRXhyQlhDejJJdW4zTkpYRHc1ejhyRnp6enZt?=
 =?utf-8?B?ZW13UkRiaXEzUXM1cEkrSTFjWGs5czV3SkFoV1l3Vm1jd0JrSURxQzd0VWxx?=
 =?utf-8?B?VURXNXhGUG0ralNiNFBaQ3F0ak9FV1ZXcE54M091Q1VQQ1duS1FMZ3BKVm5x?=
 =?utf-8?B?djc1ZmxVdW1BQmNBbGxsQnkvMGtIODZjS1RzdzJYRGZ6c0dRYlU0UWdJM0RB?=
 =?utf-8?B?MEFHZS9hK1QxYkpXOEdaaldFY0lOWVhjMGg4RHFtNlBCckhpS0tyNStSeXpl?=
 =?utf-8?B?TjQ3c05ucVpLck9EWDZyM3hlOHk4Vm1ZWXgybTV6Q3dVelJxSzlhSlFPeUg5?=
 =?utf-8?B?MjJYbGgxdDVuU1JpWGgwSEVmRGZzRXNzWWFxaVZmSWNEaW5vMi9CTkJBTSt6?=
 =?utf-8?B?VnhmalNYdmh6cFJac0Uxa1UyNmJFNVdSb2hJbjl4SGJMeDFjV1g1QWswV2xC?=
 =?utf-8?B?OEYxcXA5NVpxUWtHQlR2TUZGNG5vUkV1ZEVacTErcmxWVGZHU2o2M0JKS0NF?=
 =?utf-8?B?TmI2c2hRcndMY2dqWmZzK1BOWUhkbTVSL3F4RW1VR1JUWTF0djRGN3pMZEZE?=
 =?utf-8?B?cDFDemJxdXloRmJEck9TTCtnNnp4ckp0YWxNMnVaeE5UckxqMmdoOFNCUXYz?=
 =?utf-8?B?OUhGNzhaemtzajNESVJLbWR2RTZycHBMUmJQTmdJWHpJN1QyOExBOUhyVk9o?=
 =?utf-8?B?WFMrZFNjeVkwRm5URXhBM1BsRjFlU0hWN1BtbG5nZGxjeDFDdTNKc3ZUNWlP?=
 =?utf-8?B?RUNkWVRIenF0czZZVEllS25HWVFHWTZNMEhhNEJJS1J6OEwzWWJDNkFNN2pJ?=
 =?utf-8?B?Mk9NSTdobFlOVmFqZHprT2ZmL09qa010ci8wR2h4SWlhVnNlV0JmUTU1Ni84?=
 =?utf-8?B?VmhRZEgxY2htUXdLS1Zad1czRVFJbm5OeE1CbUprQnBqaEV3LzRuSndNTEdG?=
 =?utf-8?B?S1N6RXVScnFVWGx0Uk04TnpaQVhjYmVjM2s1VFl0K3g1ZjA1aXR6ajNzOWtE?=
 =?utf-8?B?ZTMxOEoyTGZpUTdlRzBzM1lRdGlYLzVVUHRWOWo2QXN6VExKY3dWTHdNU2kv?=
 =?utf-8?B?L1NUOXJyQXY5cjVGb0p4Z0cxK2pkMEtkS3VmdThBcE5Qc2cxZldQemUrSktn?=
 =?utf-8?B?SnVEdGlRL2JqSW1aNzkrb09NQ2kxb0FkZEtRRDJuWlFoemIyam5JdHBXbkxm?=
 =?utf-8?B?alc0clVKbzdsWms5VEVmWEZCZkJWaTQ2c2RXZkgzQVZqeEVZazJYRkJlRENF?=
 =?utf-8?B?VTBvY3lnTTRDb1RyQlZLZzRsUTdqdVdDRlVqaXI3WXN4NUpmNVFDQldUSjZi?=
 =?utf-8?B?eTZSS3FDdGNGbFAxd2dkam1WdzhJWUpGaGxYdW1OQWlWMUJjSkVkbndMT3d1?=
 =?utf-8?Q?6Eu03bSs0m9B5PH6GkIvvtI=3D?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: fbfeecff-1b99-45b1-a09f-08dc5af4fb2b
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Apr 2024 13:32:21.2858
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: MMFZ/TCUt1RKhvUDAYL9FMtCXgQCB0rgQ1j5ivbUzMuf5f1RX5h3gCxUGRGYePdOur1zqh8+QT/MVYA8lfaAym10E9SRtq+zSWnl2FssP7w=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB5PR08MB9998
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240412_063228_040492_C646CDD9 
X-CRM114-Status: GOOD (  10.39  )
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
Subject: [PATCH v2 2/4] arm: dts: add common state for wolfvision boards
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Add a common state device tree include that features
 - the boot state
 - the MAC address
envisaged for the use in all WolfVision boards.

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 arch/arm/dts/wolfvision-state.dtsi | 71 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 71 insertions(+)

diff --git a/arch/arm/dts/wolfvision-state.dtsi b/arch/arm/dts/wolfvision-state.dtsi
new file mode 100644
index 0000000000..f246a1a4a8
--- /dev/null
+++ b/arch/arm/dts/wolfvision-state.dtsi
@@ -0,0 +1,71 @@
+// SPDX-License-Identifier: (GPL-2.0-or-later OR MIT)
+/*
+ * Common state definition for WolfVision boards.
+ *
+ * Copyright (C) 2024 WolfVision GmbH.
+ */
+
+/ {
+	aliases {
+		state = &state;
+	};
+
+	state: state {
+		compatible = "barebox,state";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		backend-type = "raw";
+		backend = <&barebox_state>;
+		backend-stridesize = <1024>;
+		magic = <0xef784236>;
+
+		bootstate {
+			#address-cells = <1>;
+			#size-cells = <1>;
+
+			system1 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@0 {
+					reg = <0x0 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@4 {
+					reg = <0x4 0x4>;
+					type = "uint32";
+					default = <21>;
+				};
+			};
+
+			system2 {
+				#address-cells = <1>;
+				#size-cells = <1>;
+
+				remaining_attempts@8 {
+					reg = <0x8 0x4>;
+					type = "uint32";
+					default = <3>;
+				};
+
+				priority@c {
+					reg = <0xc 0x4>;
+					type = "uint32";
+					default = <20>;
+				};
+			};
+
+			last_chosen@10 {
+				reg = <0x10 0x4>;
+				type = "uint32";
+			};
+		};
+
+		mac-address@14 {
+			reg = <0x14 0x6>;
+			type = "mac";
+		};
+	};
+};

-- 
2.34.1



