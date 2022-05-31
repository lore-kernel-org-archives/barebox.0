Delivery-date: Tue, 31 May 2022 18:28:38 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtps  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.94.2)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jW-00GNhX-0U
	for lore@lore.pengutronix.de; Tue, 31 May 2022 18:28:38 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:3::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1nw4jU-0000Zv-7g
	for lore@pengutronix.de; Tue, 31 May 2022 18:28:37 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=DaXaOAvb4xaEL9ftQTOTXYv7muZ99mH/0Bl+dpVyUOQ=; b=BZrLPvYfMSH9ML
	8WFmzUGonzIwiVP2xbmEiZPaV+hKyvN4966cy0VyS+bKcmnTYjbRdLfTEOVJllmVPUlzX+GVp+rOZ
	uXI+yYVipHys1e0vm+UmRf+u1IAaeXXq5N/jY49rqDK+WALmTcJaIhspz3vjMykINwlcmGoLmBnNp
	09Bm17kqewNnawxFA24SYIK6pGbf6QRlctBuDNQGDaqgY6kFNCti8CcWeYYzuMkFfWyG6lVKXxErn
	GLjs0wicXJlwuvQfMrg6JFWdEeq5cxQBuK3CVcb/HZR7zj8qcp42n2EhrsCo/lp5RzivF/aOEPrWl
	oL+mVM3gGnmlRqFi0mEw==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hi-00BmjM-BZ; Tue, 31 May 2022 16:26:46 +0000
Received: from mail-ve1eur03on060e.outbound.protection.outlook.com ([2a01:111:f400:fe09::60e] helo=EUR03-VE1-obe.outbound.protection.outlook.com)
	by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
	id 1nw4hc-00Bmfj-Vs
	for barebox@lists.infradead.org; Tue, 31 May 2022 16:26:42 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=bIPJwWar5+N5ITWhrHAoOpOOR2AYRqTFbD0ET+QMqShRAc+3cp6TDJnpXhYsNUnOwTuKPNFNoJ6Se39dQgV9SEh4a2B+z3CiOGkPiV7DfeppybsfsuT4scatYq5J1mFpDH7fWT2WP+5GMjIIjsmzoMJ83juulgtTTFzMeggN53P8ebxrtSidBk+GYYPp0DlpODJRPxZeFZ0CsoOkCQWlYCJKRkFJyfZZP/eqQL6YevThYP/jwitlYzTf9Osfr0pjWPHi7e2qvWQ/DweU0VYqRUxjxmaoQeIN0M7z80DZNSaLDB7nCjvXbnnpUC68jGSrN2hqN5zsC2DXJSKcqqi97Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=JoXf6d2gycZbNsp0TL0lYmTTm0R8XHvCJEcjyWTQyrI=;
 b=ERnd9I3eWpOU8soQUYGv53Dxvxsa6SF7/rYkUXc7izsshpBAy84I+2SW4JiKh3n8Px1U1OTMwvXNCpB3z30feiNf3T9xRtW1aJp+gO/SdsHDl9R/dBI2ufBHMolssBK/6wLZVjR8qOn50lqAWaGPhgMKosfYeCB93kX/B9jHY/iV1Z7CslvrOBPV/nF270zcmsZjlVGUdDa7NwCpqYuRiZMwzXWWOrIeZHmocertGTlyadYI9ArgAJDL27CamvdE57rg5LCCVEHSOXl2oKnpRgwcvGLRnQPE2qVWRvoT5iXpnOSuuQ0BOBbbJ2+GSHkSWKh//evHoaxzU1MCUHH/Ig==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=JoXf6d2gycZbNsp0TL0lYmTTm0R8XHvCJEcjyWTQyrI=;
 b=qV1GKK8ep0u8GDohUJumkxzGgdNy7JIieTWxZHipYsx0sly8AwdPIhnH+DmB9166jK/b4mD+5MUa+3WuPCOTtMFEAVEkVQWWuIDS43xoKAabcMPNtPb/d4rROjN7FetbNjGFkbMfcK6+mFqjQnb4HyKx2tjoakjg5/Ji2Y7e1zc=
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=wolfvision.net;
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22) by AM6PR08MB3224.eurprd08.prod.outlook.com
 (2603:10a6:209:47::13) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5293.13; Tue, 31 May
 2022 16:26:34 +0000
Received: from AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2]) by AM4PR0802MB2131.eurprd08.prod.outlook.com
 ([fe80::248c:2539:5ba5:74f2%3]) with mapi id 15.20.5293.019; Tue, 31 May 2022
 16:26:33 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Tue, 31 May 2022 18:26:21 +0200
Message-Id: <20220531162624.245664-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.30.2
X-ClientProxiedBy: ZR0P278CA0178.CHEP278.PROD.OUTLOOK.COM
 (2603:10a6:910:45::22) To AM4PR0802MB2131.eurprd08.prod.outlook.com
 (2603:10a6:200:5c::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 0a90d1ac-9f5f-4180-8cbc-08da432253ab
X-MS-TrafficTypeDiagnostic: AM6PR08MB3224:EE_
X-Microsoft-Antispam-PRVS: 	<AM6PR08MB3224195111E6D67159C8452FF2DC9@AM6PR08MB3224.eurprd08.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 	KqnyrgcnBiOiPBY1vqPhptfHoROTnRhPu1qlQVFYqiThj7RHDRXAgAWroTsNqRCm7vVKiEe2ill1VF6RFXbsw2S29WaqYZYhk8MVuhcI02YsjgVj5An9tg0iEoEiQFsbNNxlzeW6dMtkrqQxAp11hhfaLgch9yZpWbGHoxC+yWpbWNmmqqWcj0T8B355XUmXXN1X7HjHkS1nawI856bk27JKA7L0m8bIfvj3wAt/aiKSj4Y1PWUaKGD9N3rIFgXejjKnw047aYXcn2lZcOrJPYmHZBRyXrf/qIbaNlGYPdrG6N7omJdo6T9zY5L5uSFK7ksLOE4uCVedKD7i/NJiRv5ha9TZ2MAuXe3W1qn6LN3zDRDmDCzoey3QgyYcodPhuwZ5dItFYGRok5Fw5AhTIxNwyhMoOMIhCP4NCXS6a4rlSLR5ZSMtKzSMJdDaGpvvqoi0yMnWwUPWZR/BRtQZDJZsmnAO1KMdydsO5WyLf7usPgRTUbS1e/V7Yl/AuCEHSodzDkWuLBs7KsWzjxdunpgozNOafW7juS9+HBmHPRfChzFMSPaQqjljkIxdE3cgw3Rfo3oX6uLmK4IygYe5jdK9RxQ6FUlF3rfEiBBeiTrxcs9p8/Rm58/GK8MB9e8b+4Y7T0FoqMjPFpO7c5oBYg==
X-Forefront-Antispam-Report: 	CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM4PR0802MB2131.eurprd08.prod.outlook.com;PTR:;CAT:NONE;SFS:(13230001)(4636009)(346002)(376002)(396003)(39850400004)(136003)(366004)(5660300002)(186003)(86362001)(6666004)(1076003)(6486002)(6916009)(316002)(52116002)(83380400001)(107886003)(44832011)(41300700001)(6506007)(8676002)(4326008)(66946007)(6512007)(2906002)(36756003)(66476007)(66556008)(8936002)(508600001)(38100700002)(2616005);DIR:OUT;SFP:1101;
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 2
X-MS-Exchange-AntiSpam-MessageData-0: 	=?us-ascii?Q?02Vqd84CjVQLql/iIFP+H/s6UhnVtgigSvBaIFcRTdRvppHsAfNtqlPavv76?=
 =?us-ascii?Q?jx0mSLPzj3Gtc2VwAlcwMIqGitC/oZfgfP5PmoKH+hUkVunawExLixGYsEws?=
 =?us-ascii?Q?8fzczvYPj2aFC+r1/D09gJZc7689uj+9fbQE1GjimMuCoRm8V+nrJFz8SVUL?=
 =?us-ascii?Q?DR3GhSvqDVbVi/uHWYhEUaGkFoAO84oo7J98/GaZry9w7li99s36I6hI6F6p?=
 =?us-ascii?Q?+VI5VzWhn2r/mVEqPFyIkvkwzzyIEXG4/wiQK+oWHQRKo93gHERthn0gBR5B?=
 =?us-ascii?Q?gERVWMKfGCN0UoQYtp7qsnqDc40jCF8rMwUhCaC11JLc5O3sjV1xJUIvueDZ?=
 =?us-ascii?Q?6Y9c74nwab76BQserKoU0rBakPar41BJ5+zOoXcJXeIdyCPc8YcpdcgQ3q3K?=
 =?us-ascii?Q?50G4ymO/3vAwpllHkM4BUt+TwmUAxFnI7rHhZ75hiZicpBmWfy8s3Ra9OsIF?=
 =?us-ascii?Q?lzCmfvt97DshbaDcgQ9XQwy500YDv0Gw7tstU/B3tBHzgcUvsK9tUSECUx/c?=
 =?us-ascii?Q?9oHZiYI4APhwp86Xi4s/jpnCh32cWmoefwTQm0nNkaxPI2hwTvJZwcDOfDYN?=
 =?us-ascii?Q?eXb440i0KfeWlEm/PFiTWA7I3oGfOnQLoKgnQjz9liU0eM4/GyW/eDbrG9Nh?=
 =?us-ascii?Q?qAsS7xWycP15h2Q1YV/zrKhF3wZD1+WxYFRAhaYNT9WPDEH3cVbcj/LfPdS9?=
 =?us-ascii?Q?h0EkhaqvwN30c6IoL6soIDE53sNVG53FkWapvCP8W2bZQDr4GpGzz5uDhN62?=
 =?us-ascii?Q?mxe6uJsCBe4UhypP1ujPozi7qWxzB51/fuQ2DxFCGm8IhzzauGck+yiaI3x5?=
 =?us-ascii?Q?ZW6Nsgb1ViEM27ziAJtrUcl4HJ6aZWguI99kmtPUY3bdKifBXeLb7DqiP53G?=
 =?us-ascii?Q?zJFKssaBYDjPyFHmoFfKvR75Jpqkc5iIV7UnJSuZPHVvSjad1s0tx8Ow7BeR?=
 =?us-ascii?Q?3O5kbYcMLHw10bbdmCPZRVjQUe150bpZJ9ENW5fzqWYJDysObXUYz/6crxqj?=
 =?us-ascii?Q?My53erPCjGR/E8fhW2U1eVsyHMiUbIa5UeFjNImwBUcKHfqbRLq8LsBVYdTV?=
 =?us-ascii?Q?hG0QxnQ3qqUUY2TBH3Gh23wI+GzzYlMceXznfrBSYXgGpnJL9ZbWfM7lxMPD?=
 =?us-ascii?Q?rl57r5BIKR4X1dTdQhVxy7tFfnyjpXYh2E31LomB6snIcew2j48+KjMkctf6?=
 =?us-ascii?Q?GPur5LbPIfjNL4ZhdqROJZN0C+ybsKEk94EaQI8z3SK4uEJ7x4P73It0zVhV?=
 =?us-ascii?Q?txPkThxxNEv5rCJRIX1DnU4b/HOx4CkABHBmo21BsQCOuprPKH5kT6E3udkk?=
 =?us-ascii?Q?cO43GeuHKewnVpExrQPAr90xxI7WX5sdkdGuULms4vd5y+nhF2PQxRM92YOJ?=
 =?us-ascii?Q?aSkRW+aZZOmoDHe/DL5E5lx/X+1f/UHu4Z7f+dvgz52VFdfdiYoe8QsKMEjO?=
 =?us-ascii?Q?gg3CZL6dhpKDuTVSOGQuSGuSrGktv81j6nb3UGXLYP/7Q0RecjgnY1FrUVJp?=
 =?us-ascii?Q?SvL9j5YbTvwktHLCGfi8cfUzNRHUTivIzzgWBHnmpb4fpM3X2EpcBscceywv?=
 =?us-ascii?Q?ZRuMneJ6j2nc0S9o8N+yr3Pvw4MPPpkCkhXYnVultm644ycLJDTRaUCDQwGQ?=
 =?us-ascii?Q?Fp7KkgEdLjI/FIobVK7vImRVv+ixPYAzruOMh4kkXVwqgV33QC3BfD9Iuq+s?=
 =?us-ascii?Q?Jg1fzwdCkY0rNvzDsCbOsEcNQ8fIeLz/CJ3JbU8aB5FgEuHSlJz/A8ZT+8EE?=
 =?us-ascii?Q?dADuTuz7tf7al5uwk1UjkpE0Z/RoZITtajID2tMBrivSlQ5f+YA11hWY5+DU?=
X-MS-Exchange-AntiSpam-MessageData-1: 	83PhtS6/T19HF0oeJHlrDdmgCr5Wv+38/Ng/v2XhvAPfv2wJ3yFYEVug
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 0a90d1ac-9f5f-4180-8cbc-08da432253ab
X-MS-Exchange-CrossTenant-AuthSource: AM4PR0802MB2131.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 31 May 2022 16:26:33.8984
 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /o+nQxJH3sCfXrcqRKHf+pVt4Ran5O80RMfg98NTs+8DiO6zmXmluvJEvVwX44RAB/KwcCC6/doLZrntmcdFyOzRHhVIT6dgu81zQjMeqSU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR08MB3224
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20220531_092641_298251_7AB9C6FD 
X-CRM114-Status: GOOD (  17.60  )
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
Subject: [PATCH 0/3] arm: rockchip: add support for the radxa rock3 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

This series aims to add support for the Radxa ROCK3 Model A single
board computer featuring the Rockchip RK3568 SoC.

The first two patches mock the dts sync from the Linux kernel and
introduce the device tree for the board (will appear in Linux
v5.19-rc1). These patches can be dropped of course and are added only
for convenience.

There are a few open issues that are somewhat shared by all RK356x
boards:

 - The RAM size is defined in the device tree and limited to 2 GB.
   This is correct for the 2 GB version lying around on my desk, but
   it should be noted that there are also 4 GB and 8 GB versions of
   this board available.

 - The eMMC controller seems to require the "no-sd" property in the
   device tree, which is not present in the mainline version. The
   quick fix is to provide this property in the barebox dts.

 - RFC: The "rk3568_start" method in the low-level board code seems
   to be shared by all RK356x boards. Can it be refactored and made
   non-static? If yes, what would be a reasonable location for the
   new function?

 - Of course the IO domain bits are board specific. In the long run
   they should be replaced anyway by a proper iodomain driver. For
   the time being I believe they could remain in the ENTRY_FUNCTION.

Apart from these issues (which are not exactly critical) barebox
works just fine on this neat little board.

Looking forward to your comments!

Best regards,
Michael

Michael Riesch (3):
  HACK: add device trees for rk3568
  HACK: add device tree for radxa rock3 model a
  arm: rockchip: add support for the radxa rock3 board

 Documentation/boards/rockchip.rst         |   1 +
 arch/arm/boards/Makefile                  |   1 +
 arch/arm/boards/radxa-rock3/.gitignore    |   1 +
 arch/arm/boards/radxa-rock3/Makefile      |   3 +
 arch/arm/boards/radxa-rock3/board.c       |  48 ++
 arch/arm/boards/radxa-rock3/lowlevel.c    |  44 ++
 arch/arm/configs/rockchip_v8_defconfig    |   1 +
 arch/arm/dts/Makefile                     |   1 +
 arch/arm/dts/rk3568-rock-3a.dts           |  54 +++
 arch/arm/mach-rockchip/Kconfig            |   6 +
 dts/src/arm64/rockchip/rk3568-rock-3a.dts | 562 ++++++++++++++++++++++
 dts/src/arm64/rockchip/rk3568.dtsi        |  23 +
 dts/src/arm64/rockchip/rk356x.dtsi        |  74 ++-
 images/Makefile.rockchip                  |   7 +
 14 files changed, 825 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm/boards/radxa-rock3/.gitignore
 create mode 100644 arch/arm/boards/radxa-rock3/Makefile
 create mode 100644 arch/arm/boards/radxa-rock3/board.c
 create mode 100644 arch/arm/boards/radxa-rock3/lowlevel.c
 create mode 100644 arch/arm/dts/rk3568-rock-3a.dts
 create mode 100644 dts/src/arm64/rockchip/rk3568-rock-3a.dts

-- 
2.30.2


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

