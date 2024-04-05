Delivery-date: Fri, 05 Apr 2024 16:05:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCa-00D88V-33
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 16:05:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCZ-0000Qi-Mk
	for lore@pengutronix.de; Fri, 05 Apr 2024 16:05:56 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	In-Reply-To:References:Message-Id:Content-Transfer-Encoding:Content-Type:
	Subject:Date:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	bh=dkPBN2uVq9laxHCCekAm7duANlcaqPt5PpWsKg90zt4=; b=VBv1HR6YEyvcKpnnrl4yuC0Veh
	5fxg/H62EGxkvrH1cqyrunJJn5F6G9kEISr4HQOcEVyjgY2djKARjgLL6lG7zAjEVMen863JbQgAZ
	nnLUmVvW+PXiieS6u/LJ2T8hdC+NXxtd3+F7fA2+w6mBkn+oRzFGdW3GLmpepk3M272XTuPxz/Yhv
	TVhhT935EHXjUuV3E7UB4yJgwn0gg4r/LR+A3nxhok4/v6Nqs0qJjiiHn7bh4QWZTNL2ciJ/vSVzU
	9apVeTXTFOBI1vFgOBO56DEhcQIRipYnGn303zR3g7vmSAW9O3Oa69YEyu1th3+hjUHtSFgvXxKTp
	mz3Y8QsA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBw-00000007M8Z-1rmB;
	Fri, 05 Apr 2024 14:05:16 +0000
Received: from mail-vi1eur05on20701.outbound.protection.outlook.com ([2a01:111:f403:2613::701] helo=EUR05-VI1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBs-00000007M0l-1vuG
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 14:05:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=MhRQuoVxEZtSrlSOQajJlMDmRAOvxBtO6Ub+Fd05OjA/OgUcc6/2PbLIVCUb7xjKfiJtCy1uXuYeA0miJWgl0gC3gxMibtCjZd3p3fBYQ7/rsCqmal5/UExUS9H58dBHPGvhzBv9YL1H+EGX23Yno6FsNdOygkz8xKlNW1EyXs0irXnVc0hgZNfQx3x61PIjVODxYeBW+5g6OJQwlrfttOX/u1HoHqdQpCLqChWRCYANfkyLda1yI+yvP1u9hxH63nsh5eqcGLgaW0w6YsO4aWmhC35fjVUozJyWMPKcVDfcJn/1w40eaXQHOJKM9ead1mkR5VZpreD1mTj7pGwwQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=dkPBN2uVq9laxHCCekAm7duANlcaqPt5PpWsKg90zt4=;
 b=Rwa+CJm3R4ylIh2b+po/sDiaDlYRMGOin2WnbARly3SgzSf1HNbRATNit1evUP7ZoQtai850LEVL+fNEH7ePtBO+DZ4s4bxVTIpvnzYE7M67S3hr6+WlSt58etvoReS+xuFipysGr1CwGDJqHAcVlpr+LOppGuzCyjjYWQJdsq/rD3lG9y23ZUoJSGA+EvbZmcvrfILu9DF9CUdxJK0PNq0CFJP73BORXT9nGEtRvHBM2of/BzE1bLlpxvQpNDGctv24bfgybMiwfLHiiTryb4FMaA1IECGJiiiBmE8g7nDkTQMKGDJW0WucLL2hDaAAtqvrVszLjJVZgyZaOYD/vg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=dkPBN2uVq9laxHCCekAm7duANlcaqPt5PpWsKg90zt4=;
 b=ydr2r4kQ7XOdfLu3oE1mmhYV7BsKfOUlypauRIfUL+5/2P7rjKSh7am5LeNqGo/YYyzOZMIsFfJSDS22WmscobO4wCgd5ToYeEO7k8tHEDyvA67raRGv/hil/+imX0zxmm9ZzMBjV04ClKZuyDoLfstmhaiGiQpIqY1ZAFGW8us=
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by GV2PR08MB8462.eurprd08.prod.outlook.com (2603:10a6:150:bc::5) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 14:04:50 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 14:04:50 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 05 Apr 2024 16:04:44 +0200
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240405-feature-wolfvision-pf5-v1-3-e4a29c0e7fe1@wolfvision.net>
References: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
In-Reply-To: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712325888; l=1817;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=VMubF/sLOZVePtWBjTiz0+LQLjs5/FDIYDlGfDr5+WM=;
 b=t4sBrK9khcM+frxqP5604XtkcyBNrk4u1A6QyB5onKr9N09trstNmAti+TNsPS019bTSemLC9
 pxbO9YST/SYBf5kItaQ37o36ifndgvAX/pfFHaG1QxPhAnK4jVEJsSs
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
X-Microsoft-Antispam-Message-Info: Uc4DPTxBHbMwumAAV/7+qmBygUrLYwhZOUlA0VompK/bp/LMDW5dJ8pKtSyobucGSgTP2km8mmILeX+NAXstL73BQxpCdyyX2uWAGZICvkGPgcJ/xcCaSo9i9HFcoFKWtA0O6ichNef61DQbjFjun8zFIDZqAo29v8rV4NWk7Eyp5/y5xsQpEhB2IA0vZyAw+j/yPJCmpIt5N11Ogz+DZsZByITRin8ROZBj88PvrxpLuUY3DW7z6zew/hiyIc+90THcu2HanPhdsC6fyt6iY9KwYhBS3jw+EsxwhWpkewKZrmkKu/yz8ln4M+nG1WpowT9DlZN6BjMWNsUtKgY/eQrxJHgTdWhvJflqdYiK3dcMOGhlpiydC6+GrYndB6qxq3hGI8+GGbfxJthU/zNpqjtIssgjlQAOfvogu/3MyIZ7O0Z23CROWyKu7716PIaxcbGylPh/rfTqLbxO4CeICkpqASMEOHFpjTs5wkOv0YPKvr410FqSqSTRUv039FcZmeEfo7IQY7KJcBDdhJRbQxEQwYyw7v0x2xOyheNfrY70gZokJV5/ApJi3SnYpClnCNfnLH65zLsWRrAYzDX8ugkYWOqVfkK7HV/pDa4hIiGvZVXvv/llGcfOhBCLXL+ibzvMw5yvI/qVMhVxi1oprS8pI7tPU9lKKfv1ua4GoUF24C75dKHTX1E8lSkLt7E+TMe8TFUfRn40r7MwHWpqWQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(376005)(366007)(52116005)(1800799015)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TzM2dUtxVTk1a3BRUmdGaVlyQXlRcGx0akcyc0Z0Vm5uY0ZMMjg3dEFEUkY2?=
 =?utf-8?B?RW1kRjF2SXFIb1VlYlBhYlNFa1N3UVN1di8yS2Z2MmxlN3l5Y3FKNjZKSkVw?=
 =?utf-8?B?ME5UVzVsQ1VHNGoxcVZyTW5Yc0VGOVhySWFxQW52NmM2b3duV1JZOVV0cVRB?=
 =?utf-8?B?b3kxd0hVL2N2bitBZG1JVHZkZm16ell6Z0tCb2Z5ZVVoNXZzN0xzdmJzWUVZ?=
 =?utf-8?B?MEU0UmpnWmpucUlBRGk4SHBwY3N5Y2c4SDE1K1NmT0k3UmdjR0RGNmdsMlhG?=
 =?utf-8?B?dXNPb3VvZytZT3VRaHRwSmhMS1V1blZTSkJoTE1HazZwY1l1RkVHdUhCQllo?=
 =?utf-8?B?akFzeHo2a3cyaC96MDZoa2JKTFZUTnNXMEMvVU56QXNPcDJlL2JmUzZ0Ry85?=
 =?utf-8?B?em1OSjg4bnpnQVhiYnAxbUxPL2lyTlUzVHp1dy8rRVI4QkpuK04xcVpQU1N2?=
 =?utf-8?B?ZlY5RklIMHBFdHpISlByRUI1MThpZm9wZUNnakN4V0M4ZFp4SU1xU3VUVjMy?=
 =?utf-8?B?UmZuMnVicEw3Qno1TmZDbjFMZnVISXVjdTRTTFoyV1krZC9YME9mSEhBT2c5?=
 =?utf-8?B?Vk1xZGFTcVNCejljWGxsbTFWdjlpeGtqOEwySVZXRG1ZOVh5emoxWVQ5RnNX?=
 =?utf-8?B?RTM1MzYzMWYvbUNnNnI1WGg0MG5KRm16VFlEOGtwTU1aZHNSbnBBVmZ3cTEx?=
 =?utf-8?B?M1hZZkYwbllYY3hOZ1lFbzlwSEhMY1RmZ2hUeEllWHVIV0thM1Mvbk5KMXdW?=
 =?utf-8?B?SnF0Y2E1UE9ZT2xCZWE4SW9LMFRSNFpRQWxpelByVk1DaEc1a1pLeXhPc0NJ?=
 =?utf-8?B?d1dvMG1pSnFNZStBMHRNN042ZDZ6Tk95NEJmeUtuZmdWREduK1VlbERFTzRL?=
 =?utf-8?B?YzFuLzN4Z0F2ck84aTBYRkk3RnlCYi82ZDNtTjY1OVRPU09tcDN3dVlkR3lo?=
 =?utf-8?B?TTI3MDFOdlJuZjNKVDV0bjgvK1NPSWRFbmRqSEY3QnIrWVc1Y3BmRTBCRTFG?=
 =?utf-8?B?UGtuUlk3QWUzbGxENEpPSmV2OXRYKzNubXdQQXBja01vbktwY1RtaEdxUmRs?=
 =?utf-8?B?bERsTm9JRHR3dlZpYXYwL0xyNnVXWnJMUjZ1a0NFLy9BT096dXFwVVcxZ3Q1?=
 =?utf-8?B?dmY2RXBaTEJMUyt5clRlVlp6UWpjWE9UM3RaZ3lpMnNZako3VkQxU1h5Vk1h?=
 =?utf-8?B?MDhkcnZPbjBBWDI3N3lDbTZHZ3JYdmpxeGVzQ2wxUzJUWTZZdk1Qay9YY2Jv?=
 =?utf-8?B?elNWNS9WYmM2cWFoMVlZOXNvQjlVbHcyZk9uQkVDbUNTbG90SUZnTEVEVzdM?=
 =?utf-8?B?RmNYQnVoSHJHZmdqQzNtcGNlTVhqWGluQTFrcmNjdG1aMExvUnlTZEpLbXV1?=
 =?utf-8?B?MUV2YmtxS1UyL3BjVEhwNmFYRnJQeWRydjUzNkpnRTNuSjNweGV5Qm5ZSWg1?=
 =?utf-8?B?eFZyeGpnSWVLeElGY1doM0lQQWV0S0VvV1hQU0RZU0NYcGRNbVVOZzQ2elNj?=
 =?utf-8?B?U25udDhJWGZiQVo0YTNCSUVnQWFRTkhLTWczTTZFNTRFWGwyWUpCcVJ3T0pO?=
 =?utf-8?B?UzQ4REp6OFYwb3JabzF6TDdSdzhJZUsvVmVJemhvQXN5ZzBMd3hscFAxQnEx?=
 =?utf-8?B?WjAzVHRTZVRQUFdFQnRqTWFlbjYvVURRUUY2OTNVbWZlRmVrbzd5dDNFSUdy?=
 =?utf-8?B?ZHhaM01uTmc0ZHBhb0JOQ051K3dWWmNoN01GZDJzQVBIYWwzQ3pvMFlnSmVB?=
 =?utf-8?B?eDBIWkhiYTloWHp5eVFUcDZkUTZUcHQ5MlVYdWVTeFdkRllFK3RRZjQ0dHFi?=
 =?utf-8?B?SkZYblluYi84NkpMaElRMGp2MiswN0FMVXhPL2pMeU5xSEVwbVVkQXBiaTRy?=
 =?utf-8?B?Znd1QWlyR0pvUFZ6Zm4wTnlyK3NZaEc0azRSVmFwTnJ6czNIU3dSUm9ZcHhK?=
 =?utf-8?B?MktEaW9Ka3BXVVgzS3hRZG83NkJJV3UvRVhtblR1OHFncmdlaGpMSEY2QVJs?=
 =?utf-8?B?RU4veTNGb3lsYlNMNWRLUjh0SXQ4TGc5NEtwYXNLQUsxYW84K0ljRi9mMnFD?=
 =?utf-8?B?aUxIdlA1cmRtcC9CM2V2WkV4L3VNLzM0YjhVR3NzWjFLRDV1RDBRd1B4Ym8v?=
 =?utf-8?B?djlWOXJJOFNKQ1hvRG5MZFVveGVWSGRxYTN4QjBnUzk3dmpEUzNqaEsvTnlL?=
 =?utf-8?B?dUE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: d28fed0a-184f-449f-39a1-08dc55795bdd
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 14:04:50.1301
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: ejwvH0E3ap/KF7SlOF/B+dIAsEio/SIk7TmqD0mLTVEkNqwhuao1wKbZsuDil4nvUPg4WzAeUPGolOQnx1+rcXYMse+XPyKgP05d+U58Kjc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: GV2PR08MB8462
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_070512_603206_3EF838F8 
X-CRM114-Status: GOOD (  10.24  )
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
Subject: [PATCH 3/4] arm: dts: add common state for wolfvision boards
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



