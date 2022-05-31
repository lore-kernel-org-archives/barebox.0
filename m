Delivery-date: Tue, 31 May 2022 18:28:39 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jX-00GNiG-2h
	for lore@lore.pengutronix.de; Tue, 31 May 2022 18:28:39 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jV-0000a8-7A
	for lore@pengutronix.de; Tue, 31 May 2022 18:28:38 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=AK3vGl84L6ryZeBocmaak8lhET2+YekEgJsjwnXE9W4=; b=LxrjHqMxQbwzlA
	76NFPQBfM7ZPaZyXM6Oy+XxFb30XG+fDXPtEZplTH9qHjf/OaxoQtF8yehANWpHWKyhvY4vH2WCDJ
	Y4KKnPB53ahK0RPCT43BmrnWoTU1z6FrQ3EezZpeAoWvRfCFBzQlJ5P4FmArzsD9u6EE5kXBeaEhw
	WwoF5hCi5Sc94iQ4d5+//NtisupitXeXckXD6OvgNZMdnoGHSLnPClk8ZGoYBTMuSvBmshGTrYQR8
	Tm6ObKQl+UEMG7z9EOICuUEOVFDsjno0F82kZad6Ad47C9g1ccNuy1xC3QnegzJwNhzp/xymzdSYT
	wWePBnIUyrz2LPlH8j5g==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hr-00Bmof-FD; Tue, 31 May 2022 16:26:55 +0000
Received: from mail-am5eur02on0620.outbound.protection.outlook.com ([2a01:111:f400:fe07::620] helo=EUR02-AM5-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hg-00BmgG-UK
	for barebox@lists.infradead.org; Tue, 31 May 2022 16:26:47 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=FoPJk27AG7h+qVY8kd/JuNVWQ7Lz5XOGpUO/8qiYbtPS8jZCXGCB0Lme1nKp3Aib8LJcNvoiClrHjk12az6pb3zhZ2zrFebHiYz6c9XmvNeKZ1KEiU7EHxiOMly7yugE8YEAjnffxl1IpYehbF4yKwcA+xAOm+ZxGJue0GpIlsaVXTjb1ou0Adaa2bjxv2idvUc+9Qcflk/GO3tCR33odPpI5Up9Kxtp9w/XWLdiFBb+Q5uM+nvHlAkrP7LhxRT1XSD4tCbnsdsPEAm6iKnVpnJdAAwaVMij4Cb01MbcK5YlPL2czIgL01Q3HhVXRCP/fEQ6zKJhW+IFK+qgtH1PqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTKFUkEi0IR3W1yCRgX9fmZZ/7Jc8GEEO5ctLM2KGjM=;
 b=As1K2/k+00B95yM77wnIZk9mQ09/YYZVCP3pGDa99TQ/0X/p3gVLVRHU/E8ZAVPqxSgciJKAikJhIpDZV15bZdEXdPpO5DI+dJixycehB09QBx2n7EhlIg6+TFRl2xdJZHO5TDM7kHiNw9NNfmDzk8usBqiCeJMYEwzc3s/RLxFTMIusPkM6ig1MrWxrBeqKwIM7dMA9QGURR50GNex22LOaYMf0Z2u143rhlcnLG7gxdWhrYMalYFzIXv+aQ96XdPCB7x4vOF9cH8eMbXurPLiyiF+R1XBNfqBeJC+MqeTAPN8cpRWtRhnVkVqX3HiWpnZrtg4+itKbmr2AR4+G3g==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=GTKFUkEi0IR3W1yCRgX9fmZZ/7Jc8GEEO5ctLM2KGjM=;
 b=iQBnZqEORZEuIP/ZFocphC0Mh+8+8z9nIfzu6VLZl5cqR7+ShGgRrgi/NjZifAG9uddbU0RXwlIxRPFZLBNLjLe3ZerimdqPVC5MyvvvOVbLzC8A9KMgxYjDcX4PRvjOl5D+o7YPlAjaDW3Gf+HYrTbIGGRXivn+eQvUNEWmcDY=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM9PR08MB5889.eurprd08.prod.outlook.com
 (2603:10a6:20b:2d5::8) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5314.12; Tue, 31 May
 2022 16:26:37 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 16:26:37 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 31 May 2022 18:26:24 +0200
Message-Id: <20220531162624.245664-4-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20220531162624.245664-1-michael.riesch@wolfvision.net>
References: <20220531162624.245664-1-michael.riesch@wolfvision.net>
X-ClientProxiedBy: ZR0P278CA0178.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::22) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e3c591c2-5f9c-4f27-9311-08da432255c1
X-MS-TrafficTypeDiagnostic: AM9PR08MB5889:EE_
X-Microsoft-Antispam-PRVS: 	<AM9PR08MB5889498ED545BEA73C72E6C5F2DC9@AM9PR08MB5889.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	SMMfGYb7afPWOJY5iq8x6318KHUR2eYrPbrb2eu6Ltu/NhPALgS/xM177qZx0mxsY3lx9xZxWgcMYE2X34f5D4J2ZVKVXCtUkD43yfA3VOonIzamYUV/gCklvBcGVN0KZYenzoDpLAHbF0PynNgyDVg21D59hZBYJrflej3gkbxDbhL5aXAK46tNQ4N42i1tl4l+omHBDYQdxts1SRJSdpxO/QzgDbRGQFSgsnJNPcMwFJ932oKiZ72vg4YsZn68/qZLndUyDp0WuxvjHItCiweljL6Bay+OD1pyU1JVpjHpqIl94bpMGuXS5F9nNYCGF2h8M3KbHdJGsOaDS+l6wwp6a6Fdz6OWLaFZ6PuHHGAz5PFkyyPyw10vIZATZC9iGIPr3roQjCzRpE97JEZDbBTCNYg7WGAjoFEZ9gZV7zOVczouqOAN5nd4sPOKGSAPVfbbCXKUl7kNYjWIEZucs8yz29rRmk5HRHQGTio3q0ysDf/J9nZ5mUYUL1pYKg7u/W7PXd7JwICIu1sRcRQY24qqCmGFUXw+KuzNGleo6JvB3HAcJAJxmAgW6yvgUfl2KflwOL3UcMGb4yob8cE9+6dIvZLlbkTy0sKQbWR7LXNLAGZ21gRQ/4NOQ9D+iRfBWiNiS/2WqTep2sGAw3KBbA==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(136003)(366004)(396003)(376002)(346002)(39850400004)(44832011)(8936002)(5660300002)(508600001)(6486002)(83380400001)(186003)(6512007)(1076003)(107886003)(41300700001)(2616005)(2906002)(52116002)(6506007)(86362001)(4326008)(8676002)(38100700002)(66556008)(66946007)(6916009)(66476007)(316002)(36756003)(6666004);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?hKvwrMeJJ/k7J3FoBadfpkikViDJ5GYQzbRV2wfPrBB1/3wimgiuVbTkTaMb?=
 =?us-ascii?Q?0vknXdrtu5KMEZ+B0xL3eayT1dAGQNrRxewRpwegsg8xO9BbYlp+b9Zj79ZT?=
 =?us-ascii?Q?oMrqjvUdtraXRhD6M2Fzd1pfTGosX9lhS2dik1xQm0GgCg4HKxZib6hbX3Wh?=
 =?us-ascii?Q?BsgdbsdWRw6AzzF7Xm9rKOwKIy76znNsI7fVjdNJPyKlEhMwvBP7g7b8ex8s?=
 =?us-ascii?Q?OdFTvyuVEqPYYQm96bwh5BcHl5Zh65XSdBj1bkS4slM5S1Wt92xxA8HphPq2?=
 =?us-ascii?Q?8CM13G0HNBPkRXw1AzzSOfWG3tsYg82VXR6iQuGwXWuOrLCIGO0rCmv3FG0G?=
 =?us-ascii?Q?2/Vz7Ho1SwXmHeSCxq42laJxjx0DVQ7JBZUis/ELS617Pz7w2nXQS3+vzSzV?=
 =?us-ascii?Q?+C7xGDgCgJWpfKXqlOrYSX3ZOJa+JWRYmUl+H66Mei8aSbC+m7rWIiJUwwjy?=
 =?us-ascii?Q?aS7zz26RSpzjJ+Z00F5BotwDh+MfHhRdPiw9sO2AXLLohNdt49SJIIjQn15W?=
 =?us-ascii?Q?5W/6BGk8goWFm8YIsku6RLIFAeqg1BajyQtpInB2EGf7JsNrMK/Lbe7m8PBy?=
 =?us-ascii?Q?Nw/X5Lh6ST0DY3+rL50/tPNI6xONKt/SzJb1DRISOCH8+j3+CKUtXjoqFBtv?=
 =?us-ascii?Q?wUelLh4LHc1SEAnByYaLgIzE0jmmLT2AlUYw2dWhH+2sCFNz/sd8n8s+NGfM?=
 =?us-ascii?Q?g78xoICskin7Agy/hLliqb6ysnwMyAGpCJvGtLe1GKSoFth7d/wrItbmIOcj?=
 =?us-ascii?Q?qnFF91CJoJW8XaP8W2oS7iAk7iLhIwLBVdkLyLUvntT5ILvASGczg7T/O0dk?=
 =?us-ascii?Q?Gx0e0gF7tiP4144ShYIeJtJ1oHIyD1rd7KLbbzwkhUMYjYUTBE1XTJot2j2P?=
 =?us-ascii?Q?owqz49yDSJi8j2JnzRK5fyjv5gvuFSc91rDiONwRhLWIFKTHZEb1GuBTFU0N?=
 =?us-ascii?Q?mnlCHwEYiZ1ijzmYdTeOCTgPOgOfLQvnGac1MhZv1iTKI1z3QlKz6Ws07LMq?=
 =?us-ascii?Q?lgAGTSz3yjbO/9GpQx8LDd4vxYmKCA/WjpUp0bVdBKHajj3zcFG5P4TSIOJc?=
 =?us-ascii?Q?lvT8OYysaI/H/h401PSE070rill1d02hkpKoqkjQYr/YWsIG11g5a0NElKEF?=
 =?us-ascii?Q?S9iMIskT1Nhgx3HYfyKCKgoqePAIJ7I+qdfXSUAS4NmSsQXAGgALnVwRLOFS?=
 =?us-ascii?Q?jmmHr2xjc9W+ycXBF8HQ665itpUEtSfZEEmV3mYu4OvO0aZnv/QyZO8Hj7Wv?=
 =?us-ascii?Q?o7a0mCzhZ+qU/jy1OG7SKal2ZvtFhR/eD3twS4OUo1PnLfFuVJt9DBt5tTjQ?=
 =?us-ascii?Q?wDbQGeQIHNx0ws3dGwvViWaQdUEMMPeqlbVGFsT3FU4xmUDyBORhxxLB7eos?=
 =?us-ascii?Q?9hSXTx1NfExWQUP4ImB76wq3Om1kLeH5uLX2JWwtaFGYrqDQAfcb2Jhd8v3/?=
 =?us-ascii?Q?e8kTf+ax6TxRLBzhTxf7VfGuopbhiFjtzZbYnhy8a+LjVt4Ws5yX3la+JfBG?=
 =?us-ascii?Q?xFvgU1uTBTqVOX/73tEvhTBNjWR4Wt8KnhhG6GmmbRAF/NKHubU8z/w/73d9?=
 =?us-ascii?Q?i1Zd3QbH/MT3z0NzFF08Uz57T4VH9RdaUDyGxc1eRcFwh+vG4EuJmvVuIoD9?=
 =?us-ascii?Q?dsDYomy/1AkCj2XJnN2KCPXZ/cst7sgoVK6oorRudzU5kIr2ukValEOZglZ4?=
 =?us-ascii?Q?+wKm8u2d+PSvKuoecz0HZK8g7vRuNHECqYZRMgvLLq08x+G/i63nr1l11iPz?=
 =?us-ascii?Q?U5Jsl+oO4QX9OoA73MnFi+w5l2idmifFskSKOgY6p92daGrHs6ersz7wVKJE?=
X-MS-Exchange-AntiSpam-MessageData-1: 	iEZ0Wpc5WhY66CAwwUiknFFRbb6H3N+hz33x5oHjgeGz9/8wYXdH9kkC
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: e3c591c2-5f9c-4f27-9311-08da432255c1
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 16:26:37.4451
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 93NMilfn5wWpyVp9iotAzSDArhPemRc2L/8Agz+xlCl2o6+9Y6VRPiy03aDCBdwQDEr660wuMTHiWNllNi/VD2cLXZCA/ZclNvhQ/OojaHo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM9PR08MB5889
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_092645_184637_3529D778 
X-CRM114-Status: GOOD (  21.69  )
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
Subject: [PATCH 3/3] arm: rockchip: add support for the radxa rock3 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Add basic support for the Radxa ROCK3 Model A board (featuring
the Rockchip RK3568 SoC).

Signed-off-by: Michael Riesch <michael.riesch@wolfvision.net>
---
 Documentation/boards/rockchip.rst      |  1 +
 arch/arm/boards/Makefile               |  1 +
 arch/arm/boards/radxa-rock3/.gitignore |  1 +
 arch/arm/boards/radxa-rock3/Makefile   |  3 ++
 arch/arm/boards/radxa-rock3/board.c    | 48 +++++++++++++++++++++++
 arch/arm/boards/radxa-rock3/lowlevel.c | 44 +++++++++++++++++++++
 arch/arm/configs/rockchip_v8_defconfig |  1 +
 arch/arm/dts/Makefile                  |  1 +
 arch/arm/dts/rk3568-rock-3a.dts        | 54 ++++++++++++++++++++++++++
 arch/arm/mach-rockchip/Kconfig         |  6 +++
 images/Makefile.rockchip               |  7 ++++
 11 files changed, 167 insertions(+)
 create mode 100644 arch/arm/boards/radxa-rock3/.gitignore
 create mode 100644 arch/arm/boards/radxa-rock3/Makefile
 create mode 100644 arch/arm/boards/radxa-rock3/board.c
 create mode 100644 arch/arm/boards/radxa-rock3/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-rock-3a.dts

diff --git a/Documentation/boards/rockchip.rst b/Documentation/boards/rockchip.rst
index 041bb9fa64..d4f8a9c5a3 100644
--- a/Documentation/boards/rockchip.rst
+++ b/Documentation/boards/rockchip.rst
@@ -59,6 +59,7 @@ Supported Boards
 - Rockchip RK3568 EVB
 - Rockchip RK3568 Bananapi R2 Pro
 - Pine64 Quartz64 Model A
+- Radxa ROCK3 Model A
 
 The steps described in the following target the RK3568 and the RK3568 EVB but
 generally apply to both SoCs and all boards.
diff --git a/arch/arm/boards/Makefile b/arch/arm/boards/Makefile
index d303999614..3ccde26f1b 100644
--- a/arch/arm/boards/Makefile
+++ b/arch/arm/boards/Makefile
@@ -192,3 +192,4 @@ obj-$(CONFIG_MACH_SKOV_ARM9CPU)			+= skov-arm9cpu/
 obj-$(CONFIG_MACH_RK3568_EVB)			+= rockchip-rk3568-evb/
 obj-$(CONFIG_MACH_RK3568_BPI_R2PRO)			+= rockchip-rk3568-bpi-r2pro/
 obj-$(CONFIG_MACH_PINE64_QUARTZ64)		+= pine64-quartz64/
+obj-$(CONFIG_MACH_RADXA_ROCK3)			+= radxa-rock3/
diff --git a/arch/arm/boards/radxa-rock3/.gitignore b/arch/arm/boards/radxa-rock3/.gitignore
new file mode 100644
index 0000000000..f458f794b5
--- /dev/null
+++ b/arch/arm/boards/radxa-rock3/.gitignore
@@ -0,0 +1 @@
+sdram-init.bin
diff --git a/arch/arm/boards/radxa-rock3/Makefile b/arch/arm/boards/radxa-rock3/Makefile
new file mode 100644
index 0000000000..b37b6c870b
--- /dev/null
+++ b/arch/arm/boards/radxa-rock3/Makefile
@@ -0,0 +1,3 @@
+# SPDX-License-Identifier: GPL-2.0-only
+obj-y += board.o
+lwl-y += lowlevel.o
diff --git a/arch/arm/boards/radxa-rock3/board.c b/arch/arm/boards/radxa-rock3/board.c
new file mode 100644
index 0000000000..05a526b06e
--- /dev/null
+++ b/arch/arm/boards/radxa-rock3/board.c
@@ -0,0 +1,48 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <bootsource.h>
+#include <common.h>
+#include <init.h>
+
+struct rock3_model {
+	const char *name;
+	const char *shortname;
+};
+
+static int rock3_probe(struct device_d *dev)
+{
+	enum bootsource bootsource = bootsource_get();
+	int instance = bootsource_get_instance();
+	const struct rock3_model *model;
+
+	model = device_get_match_data(dev);
+
+	barebox_set_model(model->name);
+	barebox_set_hostname(model->shortname);
+
+	if (bootsource == BOOTSOURCE_MMC && instance == 1)
+		of_device_enable_path("/chosen/environment-sd");
+	else
+		of_device_enable_path("/chosen/environment-emmc");
+
+	return 0;
+}
+
+static const struct rock3_model rock3a = {
+	.name = "Radxa ROCK3 Model A",
+	.shortname = "rock3a",
+};
+
+static const struct of_device_id rock3_of_match[] = {
+	{
+		.compatible = "radxa,rock3a",
+		.data = &rock3a,
+	},
+	{ /* sentinel */ },
+};
+
+static struct driver_d rock3_board_driver = {
+	.name = "board-rock3",
+	.probe = rock3_probe,
+	.of_compatible = rock3_of_match,
+};
+coredevice_platform_driver(rock3_board_driver);
diff --git a/arch/arm/boards/radxa-rock3/lowlevel.c b/arch/arm/boards/radxa-rock3/lowlevel.c
new file mode 100644
index 0000000000..00a68889cd
--- /dev/null
+++ b/arch/arm/boards/radxa-rock3/lowlevel.c
@@ -0,0 +1,44 @@
+// SPDX-License-Identifier: GPL-2.0-only
+#include <common.h>
+#include <linux/sizes.h>
+#include <asm/barebox-arm-head.h>
+#include <asm/barebox-arm.h>
+#include <mach/hardware.h>
+#include <mach/atf.h>
+#include <debug_ll.h>
+#include <mach/rockchip.h>
+
+extern char __dtb_rk3568_rock_3a_start[];
+
+static noinline void rk3568_start(void *fdt)
+{
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
+	/*
+	 * Enable vccio4 1.8V and vccio6 1.8V
+	 * Needed for GMAC to work.
+	 */
+	writel(RK_SETBITS(0x50), 0xfdc20140);
+
+	if (current_el() == 3) {
+		rk3568_lowlevel_init();
+		rk3568_atf_load_bl31(fdt);
+		/* not reached */
+	}
+
+	barebox_arm_entry(RK3568_DRAM_BOTTOM, 0x80000000 - RK3568_DRAM_BOTTOM, fdt);
+}
+
+ENTRY_FUNCTION(start_rock3a, r0, r1, r2)
+{
+	rk3568_start(__dtb_rk3568_rock_3a_start);
+}
diff --git a/arch/arm/configs/rockchip_v8_defconfig b/arch/arm/configs/rockchip_v8_defconfig
index 79d51234cc..1c7116e74a 100644
--- a/arch/arm/configs/rockchip_v8_defconfig
+++ b/arch/arm/configs/rockchip_v8_defconfig
@@ -2,6 +2,7 @@ CONFIG_ARCH_ROCKCHIP=y
 CONFIG_MACH_RK3568_EVB=y
 CONFIG_MACH_RK3568_BPI_R2PRO=y
 CONFIG_MACH_PINE64_QUARTZ64=y
+CONFIG_MACH_RADXA_ROCK3=y
 CONFIG_BOARD_ARM_GENERIC_DT=y
 CONFIG_ARM_OPTIMZED_STRING_FUNCTIONS=y
 CONFIG_ARM_PSCI_CLIENT=y
diff --git a/arch/arm/dts/Makefile b/arch/arm/dts/Makefile
index d67d10bde8..723bd2a123 100644
--- a/arch/arm/dts/Makefile
+++ b/arch/arm/dts/Makefile
@@ -105,6 +105,7 @@ lwl-$(CONFIG_MACH_PROTONIC_STM32MP1) += \
 	stm32mp151-prtt1c.dtb.o \
 	stm32mp151-prtt1s.dtb.o
 lwl-$(CONFIG_MACH_RADXA_ROCK) += rk3188-radxarock.dtb.o
+lwl-$(CONFIG_MACH_RADXA_ROCK3) += rk3568-rock-3a.dtb.o
 lwl-$(CONFIG_MACH_PHYTEC_SOM_RK3288) += rk3288-phycore-som.dtb.o
 lwl-$(CONFIG_MACH_REALQ7) += imx6q-dmo-edmqmx6.dtb.o
 lwl-$(CONFIG_MACH_RK3568_EVB) += rk3568-evb1-v10.dtb.o
diff --git a/arch/arm/dts/rk3568-rock-3a.dts b/arch/arm/dts/rk3568-rock-3a.dts
new file mode 100644
index 0000000000..44d4fc9686
--- /dev/null
+++ b/arch/arm/dts/rk3568-rock-3a.dts
@@ -0,0 +1,54 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+
+/dts-v1/;
+
+#include <arm64/rockchip/rk3568-rock-3a.dts>
+
+/ {
+	chosen: chosen {
+		environment-sd {
+			compatible = "barebox,environment";
+			device-path = &environment_sd;
+			status = "disabled";
+		};
+
+		environment-emmc {
+			compatible = "barebox,environment";
+			device-path = &environment_emmc;
+			status = "disabled";
+		};
+	};
+
+	memory@a00000 {
+		device_type = "memory";
+		reg = <0x0 0x00a00000 0x0 0x7f600000>;
+	};
+};
+
+&sdhci {
+	no-sd;
+
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_emmc: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
+
+&sdmmc0 {
+	partitions {
+		compatible = "fixed-partitions";
+		#address-cells = <2>;
+		#size-cells = <2>;
+
+		environment_sd: partition@408000 {
+			label = "barebox-environment";
+			reg = <0x0 0x408000 0x0 0x8000>;
+		};
+	};
+};
diff --git a/arch/arm/mach-rockchip/Kconfig b/arch/arm/mach-rockchip/Kconfig
index ffd3aa8a4e..4b6dfd2c17 100644
--- a/arch/arm/mach-rockchip/Kconfig
+++ b/arch/arm/mach-rockchip/Kconfig
@@ -80,6 +80,12 @@ config MACH_PINE64_QUARTZ64
 	help
 	  Say Y here if you are using a Pine64 Quartz64
 
+config MACH_RADXA_ROCK3
+       select ARCH_RK3568
+       bool "Radxa ROCK3"
+       help
+	  Say Y here if you are using a Radxa ROCK3
+
 comment "select board features:"
 
 config ARCH_RK3399_OPTEE
diff --git a/images/Makefile.rockchip b/images/Makefile.rockchip
index cdc7772c2e..33c76caf79 100644
--- a/images/Makefile.rockchip
+++ b/images/Makefile.rockchip
@@ -20,6 +20,9 @@ image-$(CONFIG_MACH_RK3568_BPI_R2PRO) += barebox-rk3568-bpi-r2pro.img
 pblb-$(CONFIG_MACH_PINE64_QUARTZ64) += start_quartz64a
 image-$(CONFIG_MACH_PINE64_QUARTZ64) += barebox-quartz64a.img
 
+pblb-$(CONFIG_MACH_RADXA_ROCK3) += start_rock3a
+image-$(CONFIG_MACH_RADXA_ROCK3) += barebox-rock3a.img
+
 quiet_cmd_rkimg_image = RK-IMG $@
       cmd_rkimg_image = $(objtree)/scripts/rkimage -o $@ $(word 2,$^) $(word 1,$^)
 
@@ -34,3 +37,7 @@ $(obj)/barebox-rk3568-bpi-r2pro.img: $(obj)/start_rk3568_bpi_r2pro.pblb \
 $(obj)/barebox-quartz64a.img: $(obj)/start_quartz64a.pblb \
                 $(board)/pine64-quartz64/sdram-init.bin
 	$(call if_changed,rkimg_image)
+
+$(obj)/barebox-rock3a.img: $(obj)/start_rock3a.pblb \
+                $(board)/radxa-rock3/sdram-init.bin
+	$(call if_changed,rkimg_image)
-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

