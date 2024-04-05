Delivery-date: Fri, 05 Apr 2024 16:05:57 +0200
Received: from metis.whiteo.stw.pengutronix.de ([2a0a:edc0:2:b01:1d::104])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCb-00D88t-2K
	for lore@lore.pengutronix.de;
	Fri, 05 Apr 2024 16:05:57 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.whiteo.stw.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1rskCa-0000U9-FT
	for lore@pengutronix.de; Fri, 05 Apr 2024 16:05:57 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:List-Subscribe:List-Help
	:List-Post:List-Archive:List-Unsubscribe:List-Id:MIME-Version:Cc:To:
	Content-Transfer-Encoding:Content-Type:Message-Id:Date:Subject:From:Reply-To:
	Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
	Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Owner;
	bh=9ZxSv0NcKhcw65H9wRSOHRHWehdiRAOhY/4wgwRCEvc=; b=DiTz3s5Jl3TYM25WdIPBwgva+J
	FTJyZP2uiiR7ZynlGH/yNTgqu9fdQBqAzBIq0/PBYUch5kAvL/NkCNst55hu/qAOXFMZ3pDH1Swoy
	DjsaSNX31WbyX8ajRFns3VMJd8l5h6JmrEBloJGUs9KsspkqOB0EyMxTIsIyh0iKZt6B87oDsCnAi
	14u2iPs3n9u/I1WaOuuljzvfc0ofPAo63Mdo9JX2/n/yD2tHxv/4tr0zjh70ssZTJIC8lZ/ecnBfI
	P5+XFZlSBNlLdT8pc7qFCQaYI9T3+LQv8+U6mU5DyENpVx7AGTrbl0wDOXFSDr/2DtgfB3DF/HZO2
	4QGUjzAw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBv-00000007M8N-2HxE;
	Fri, 05 Apr 2024 14:05:15 +0000
Received: from mail-am0eur02on2090.outbound.protection.outlook.com ([40.107.247.90] helo=EUR02-AM0-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.97.1 #2 (Red Hat Linux))
	id 1rskBs-00000007M0j-093B
	for barebox@lists.infradead.org;
	Fri, 05 Apr 2024 14:05:13 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=AhkPGGvmm053JJrjyP3/xPsarSPs6MQaCShBFdYHcFuXr3XTuc5OBlTedGe0Jy9I19827u8IQoM3MqlW/nGmlX41Ivw/VJk6qkNZ3/TuPKsjn2AAEhBTsE0YKMov/14bk6MOXx0+LiOSspmFJpkYfE9nR3St4thbT81TfQaARHT32YhYARX46DCJQvYlgUyolOXP9wBAg1weEXzCBD93PXH0GkQ4GvIC+sjCnURiTs1faulAbcp+LQjdyVNxo6vLWQOxxKcopnnPW/YinSlSaiMF14CoVqj/TW4McWemKwLDPW1X+Tg4vqrKufEFGo8eD8e0o/L8a6k0us4oPr3tIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=9ZxSv0NcKhcw65H9wRSOHRHWehdiRAOhY/4wgwRCEvc=;
 b=j5pmtTiEOey88HYQ3sotdfH19jCz73KYZ8tZsLk5WJH0B9LkFldQOickYagkyG9hgvY6KjMqQn7USLbpRr8uYBxHvbwQy3+jzkHnDrBBKq6BuLiv3bWUG1BNgmYaopHiPcJPn+NhttwVHm1zc07Kfe5t7mgpUD3Zb90EqsWqyDFi1zo1DnGQAXzyR2ETNqwCiRlZEVE5L1mF2lkFPb2Mu159wNzjZHUKn+a9XyfmN7EdtEiVDvQ9q50tB5iJn4/pdWeO2M53tCJr9VHluEUhp/uAdr8gtxDVBIEq65tFLgyQ0TovRhXStYGchbdGU2EEUStChL2yO8kt5OJ3k6SqrQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=9ZxSv0NcKhcw65H9wRSOHRHWehdiRAOhY/4wgwRCEvc=;
 b=uHgBIWs63Wc029qBmY4L8jV7FVvkn3W9YWAxkdDSWoN2bFK+l8KIBuhZns08iUPhvLoOrlFI/wme86N7UBV8m0p/WzA4JeHNGyaOQAa3NFHRe/3vdEf0nuDarEORbVlpLk6qt7OLlPpUw/9FUGMVspJ8mVcIMZfLOBvsIcoKess=
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com (2603:10a6:10:416::5)
 by DU0PR08MB7860.eurprd08.prod.outlook.com (2603:10a6:10:3b0::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7409.46; Fri, 5 Apr
 2024 14:04:49 +0000
Received: from DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9]) by DU0PR08MB9155.eurprd08.prod.outlook.com
 ([fe80::e86a:6893:ac7:dad9%5]) with mapi id 15.20.7409.042; Fri, 5 Apr 2024
 14:04:48 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 05 Apr 2024 16:04:41 +0200
Message-Id: <20240405-feature-wolfvision-pf5-v1-0-e4a29c0e7fe1@wolfvision.net>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPoEEGYC/yWMSQqAMAwAvyI5G4ilRfEr4qHVVAOi0rqB+HeLH
 gdm5obIQThCnd0Q+JAoy5ygyDPoRjsPjNInBkVKkyaDnu22B8Zzmfyv4+oN6r4wlkrlyFWQ4jW
 wl+sbN+3zvBCPvgFoAAAA
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1712325888; l=2346;
 i=michael.riesch@wolfvision.net; s=20240405; h=from:subject:message-id;
 bh=3sq9tktcnE1BhtDe0UiAPxnZTxNM3W+/xXAwODyovFM=;
 b=2D0GjQWVpauV9sUd/l/zq3HfeIotnu+lNQZO6eLRc02lvvfDwYrTSjNlxfe0jE05YUNmSai2K
 fxc7g9ItmwzDBKwSG2UuOORSMSJNMVWHU+KhU+4AruKLGYkXhxFE+oR
X-Developer-Key: i=michael.riesch@wolfvision.net; a=ed25519;
 pk=cSJmgKSH3B6kdCIDCl+IYDW1Pw/Ybc6g9rmnUd/G7Ck=
X-ClientProxiedBy: VI1PR0202CA0009.eurprd02.prod.outlook.com
 (2603:10a6:803:14::22) To DU0PR08MB9155.eurprd08.prod.outlook.com
 (2603:10a6:10:416::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DU0PR08MB9155:EE_|DU0PR08MB7860:EE_
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: RrtPebP/uHLT49bsw504JfboXA5s7MncgfUoKMYVUIYSw7KPy1lo/5uMw/yM2SItGFBmpxHAP087SfOcYb95FqT96LQPoz4CSfoGjw6ABnL7QBC08aFOsS2VXAUmVMzybPsMpWS5QtL6W55yEioE2lCSAbMHbTS2XY4gY7ghMsdBOfL5+TioFejEdA7dOoiIfbjLAKV1rgNnZGYHpqdkzfffCvBZoLBC2qHb2YCIXtuFMSyD1AElgFmwuUjsCnrDgMPnIxI377BAeIBj2rE8ymG4qbVKrwH/A94Qe75yfGjv53RCGuR3Dr3UdWQyCwdBIc4RhiH87f2hqOWMM9CeID+mONv5BrD/1NIiEXIW0uqA1R3O3opDTwNKwbRyT1BfhsNxeq8TRkHaGoKffGvuIXElvrIUIa861EHvv8+gMlJupPFBcJx4M2WyiCWiF7sfmaHfbBrfKTNt0CzkE6f6rEbVmNW2FpSKQYN0wZ5my72RHFJNgAvumej8bQiFsQPP0wRQOPP5e3pwXYhZokvPUGu7QQbjV4cw+b1IWOJI6N3Z9voyvqzDoWyq6961CGlW8CZMnfBPiaa4oJlXX+BHBpWAjYJ8sWkOMfesNXaQCcapT8psINdQrR+UIMOgHebb9H5VY9LQ4azt4mKid0w6IHIZr/qK/Co3BSFMFLliFmeZr+M1qgjf+lzSxabjTjMe0L8hWRXnuVtJTpe8kalmLQ==
X-Forefront-Antispam-Report: CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:DU0PR08MB9155.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230031)(366007)(52116005)(1800799015)(376005)(38350700005);DIR:OUT;SFP:1102;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dE9aME52U2tPZFpuU1ZnTlRnUUI3cm9NbWdvWlJhSi9YTWlmaG5SY3JTQTMz?=
 =?utf-8?B?TUcwcXRTelVDOHI0b1A5N24wR1lyeHRMSitiNlBTVjFrT1FsTkpRMWxoampZ?=
 =?utf-8?B?MjRHK3ZxRzk4RHJPbTdHRFZyeVBpV3VpQ3JVY3BvRHk1aG5Gb0JIVXdRdjlQ?=
 =?utf-8?B?b1VNdmczODZQK0ZBSjVzbVkwb1kyblpQUHpHSHVEbEZEMXdaME9tQ0FGYkxD?=
 =?utf-8?B?RTdNK3dxS3RYQlR0cFEwa1NkWjBDZmFpV0NDbURQdGw3aGh0c2ZNUFFkZUZm?=
 =?utf-8?B?d3F4dXp5MWlYRTJUdUdESGkxZWhhbGdya2xWam0wV3FDSk1xWGtHSWVHc1RO?=
 =?utf-8?B?Y3JOc2VKcVRqNm9QOGpVRktjK1JqZWlEOXVQTnVxS29ZVGNPa1N3SFdpbVNE?=
 =?utf-8?B?UW1iK1p1RWxGcVVYbldMR21YaVVobzd1RzFVOU9TY3RuTlJYSytCUGt5MHJp?=
 =?utf-8?B?bGZJRzVScWU4Q0tMbkxJcjdCQmF3K3RSV0RxUEFDN3NBeGZycnBTemFyaUhx?=
 =?utf-8?B?M3NRTVpjaFF1UnlYemdsUmdPTThKOFhRNmcxWWlpRDZqMDJGZ1c3cVE3ZmFB?=
 =?utf-8?B?UHJJNUZMQXFtdDRHcnZCWmNWQUFJRFExcE5HR1ZtWWcrSFlrT3RoUmRCRG51?=
 =?utf-8?B?d1RJbHlmeXhuQVU2aml1ckl4clQrY1VDaVJZeUZsbEsxVktDRXQ3NnZsOVl1?=
 =?utf-8?B?TlFqM25KRllmMXhCd1lrbXVqVWdBRmppaE95TEdLWTE4aHUrN25tYWc5S0tP?=
 =?utf-8?B?eDZHaDY4M2gxZEZDWmhYS3d6ZDRiVyt4S0F0eDBwVlBGemRJN2UxK0NpRlFP?=
 =?utf-8?B?SjNyakFXb2R5T3N6bWZoOVpzWi9CVlVGcWJwMjdMK2RBd0kyODAwdC9VcFNH?=
 =?utf-8?B?Kzl4Q0dCRnRQSnp1SUs3M2wxdjdwZmExdEdqTHVySHhIWHByVERHMzl4Wkl4?=
 =?utf-8?B?ZVA3ejBQT2hTR2NMdDczbmNlbFM1S1c5d01UVjArVUFlenhucysza05RN1U0?=
 =?utf-8?B?bGdyN2pMU3VDeDMvNjAwMkJpdWdSR0ovQXQwQW1sV2d4THJQZ0RzdEJ6TkdJ?=
 =?utf-8?B?UWRWRE5nN0JYQVZSSUFQb3dOb2Ixa0Y1Slo1bFhGY3FWZ1dndkFDdjdTcHlN?=
 =?utf-8?B?bkpjajRGYS9Ldk1SaVh5SlR0aDF2ZzFlN2hvcmVGb0hwbmVBb3Q2VUdvMSto?=
 =?utf-8?B?S1Y4T1lEZkh5Nys4SWhqOG5uUktxc2NTY1VLbHJpNmk1L082M0FhZTBrY01M?=
 =?utf-8?B?RFlvYzRpWTZSK3VQbENhSWR3YXZQd2M2ZmxDUHl2UkhaSEs1RGNXSDhoNHhI?=
 =?utf-8?B?cGZGZU5qTC84Mi9kQXJuU0pFSTBDdVhoZHlNTnBrclU1dkthYlUyaU9rODdL?=
 =?utf-8?B?U2ExNUxwY3E3aFBFbkt3VG9kS0ZGYnBMREFoYjA4WlpKQjJTVjJvUkEySnNq?=
 =?utf-8?B?YWVCa2tFeWhldmE2eStiYUEreExsclNEazNmU25ValFlbVlMZk12VDhZc2gx?=
 =?utf-8?B?WHRYalplOTVVOHlYQzgzL3hmMk5yYXpPckZLakJ3ZXRhUENCWnpiaTBMelNk?=
 =?utf-8?B?MWlyNGxCemZIS0VZd3NtOW44b3lCRnVrekZlMkxHU29URkJJbWk1OWVwL1NL?=
 =?utf-8?B?d1JxMnFMdWdJMlBMNzNvWFNTNjJoZG1kbUIyZVEwc2R5RE5ILzR0QXBVTGZj?=
 =?utf-8?B?YmNoWDFHeUJOeWJ2UFlURlVhaDZrQTU5QUl0bkxCWlMvWnRGOFZ0SFE0TUM1?=
 =?utf-8?B?RTV0L2hHUkFjeGF2bkZNKzBaSXhhdlgxK3BDWlp2WDFsMWpXNENRV3VFaVQ4?=
 =?utf-8?B?QlhpVmEzeGR2UU1DaFR3L2RqMVpVNnBTU3JENU5HWVlib001RmtNdFBlb1p5?=
 =?utf-8?B?RkZOSkxJWVZYS1l0TUpoeUxDY3dhazY0b2ZyN1h5VzMra3ZaWC9WdGduOUR1?=
 =?utf-8?B?NStyWHU1YzRGcW9oTWJMUkFvRUpLNDA0dyt6MkJNcWw2UXh1L0k4NDA4RUxO?=
 =?utf-8?B?V1pGcTdWZ2U4a25yUmRlR0Z1TG5aR2NsY3N0dkpjVGVRTU9nSlJ5LzUrVEVO?=
 =?utf-8?B?TnUrWG9XWGxwY3Y2QXUxOWNiY1FzYnd5RjdqYi9XLzlXYnNvQkN5eHQvK1g3?=
 =?utf-8?B?OVNLZWVHajZkdkV5VXhHZ2hZVG5weGpIN2N4YjdKcG5yWnNNa00xV1gvd2dP?=
 =?utf-8?B?OEE9PQ==?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: feb63e64-c742-4104-ec3d-08dc55795b23
X-MS-Exchange-CrossTenant-AuthSource: DU0PR08MB9155.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 05 Apr 2024 14:04:48.9144
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3RNLTQc9WexffT+sgG99s4SJQPSpcf00JTtxeLn3IMciew4ZLTzM9UmlNdQzqd06yqEIvRnok1B9PjI3qnTeeDxC0pb3Q1bFsmxSGnOyitU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DU0PR08MB7860
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20240405_070512_140526_3F0F0AF1 
X-CRM114-Status: UNSURE (   7.17  )
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
Subject: [PATCH 0/4] arm: boards: add wolfvision pf5 mainboard
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.whiteo.stw.pengutronix.de)

Habidere,

This series adds support for the WolfVision PF5 mainboard, which serves
as base for recent WolfVision products. It features the Rockchip RK3568
and can be extended with several different extension boards. The
WolfVision PF5 IO Expander is one example of such an extension board.
Support for this extension is also included in this series.

Patch 1 is not to be integrated as it simply mimicks the addition of
the device tree files.

Patch 2 and 3 provide a library and state definition that are envisaged
to be used by all WolfVision boards.

Finally, patch 4 adds the actual PF5 mainboard support.

Looking forward to your comments!

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
Michael Riesch (4):
      DNM: dts: arm64: rockchip: copy pf5 device tree from mainline Linux
      common: add wolfvision board code library
      arm: dts: add common state for wolfvision boards
      arm: boards: add wolfvision pf5 mainboard

 arch/arm/boards/Makefile                           |   1 +
 arch/arm/boards/wolfvision-pf5/.gitignore          |   1 +
 arch/arm/boards/wolfvision-pf5/Makefile            |   3 +
 arch/arm/boards/wolfvision-pf5/board.c             |  88 ++++
 arch/arm/boards/wolfvision-pf5/lowlevel.c          |  36 ++
 arch/arm/dts/Makefile                              |   3 +
 .../arm/dts/rk3568-wolfvision-pf5-io-expander.dtso |  11 +
 arch/arm/dts/rk3568-wolfvision-pf5.dts             |  48 ++
 arch/arm/dts/wolfvision-state.dtsi                 |  71 +++
 arch/arm/mach-rockchip/Kconfig                     |   9 +
 common/boards/Kconfig                              |   3 +
 common/boards/Makefile                             |   1 +
 common/boards/wolfvision/Makefile                  |   2 +
 common/boards/wolfvision/common.c                  | 145 ++++++
 .../rk3568-wolfvision-pf5-io-expander.dtso         | 137 ++++++
 dts/src/arm64/rockchip/rk3568-wolfvision-pf5.dts   | 528 +++++++++++++++++++++
 images/Makefile.rockchip                           |   1 +
 include/boards/wolfvision/common.h                 |  32 ++
 18 files changed, 1120 insertions(+)
---
base-commit: 34e5c82ccd5fb807d7e6aa344549283e34f4fd8b
change-id: 20240405-feature-wolfvision-pf5-4d15a072b0b8

Best regards,
-- 
Michael Riesch <michael.riesch@wolfvision.net>



