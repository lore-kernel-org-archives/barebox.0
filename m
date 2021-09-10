Delivery-date: Fri, 10 Sep 2021 15:45:50 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgqk-0005Xv-Si
	for lore@lore.pengutronix.de; Fri, 10 Sep 2021 15:45:50 +0200
Received: from [2607:7c80:54:e::133] (helo=bombadil.infradead.org)
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mOgqj-0002rD-Nh
	for lore@pengutronix.de; Fri, 10 Sep 2021 15:45:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=rBSHs+HP4BpVOFhc6hFQfL2woaSWjJWQHwxDzqhBGdw=; b=IsiMlFAb+DCsJ1
	DdECSmsvaLMeYU+ilsMM+9DgwJhLQBMmTMLAEA43GGNVcjkfLxDiL/4JOs9wiPRfBb2/AD9wmfe2B
	06xj9DsTatbOIp7lYp87luvHf/dTqwNKbNw8EkbzIJGlnksWaIKeAEoLfLcX8Rj+codr3ORSjUsJv
	2mEvIjGmHKCPX1NwyBgpII0GyYH1oO7KR8v2miA0szxzP80/lwZuxBdQoDSSc+jp5ufeZzHy8o9Aj
	KkdHV20/kJtWVLrv765IzFBvjetf626akIZCZnxMd3IhC7Ir0TKCGJe40eV4Em6jGXKSTiJKm7XeY
	qjXkTZN8s7B4zUoKD+Ag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mOgou-00Cphl-4e; Fri, 10 Sep 2021 13:43:56 +0000
Received: from mail-eopbgr150084.outbound.protection.outlook.com
 ([40.107.15.84] helo=EUR01-DB5-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mOgoo-00Cpga-4H
 for barebox@lists.infradead.org; Fri, 10 Sep 2021 13:43:51 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=SYf7OduUaCfevMOYs3/PWooJgSQx/nehxJm9RnCwRjedosJG8unbOPBvSY9lPlCqgsWyImJNb9G00VOOlsYcFCTrq+BnB9njgvFqsTk1SegOZGeIIBrkGr5cpHdr0z5fJgae0+EZdD61uELWdEP1bnv1EruRU1zHryjBEBcoroZ0Tu5q/wn7e5gNZ+JgcHfpaNfCfR60GJiXGpgAh3ZghzOClYdS168OBvtnBA1Ub9lRcr7t0lKK1qeKWb4RLst/2ZkUVfVsPksyjknhf92Zb9vEfhZ9HxkoAXsVx4FZ8peiApczocLZcg4EDZssinY/ZMwU36xnvxgAGhBBWVba1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=3+0XWDSom4TdZgSaszjD1jgwjZeVziVn3I0D2bDhx3g=;
 b=I6TrRQXciJc0SGzKPdo05+R25B+IdAXGxJgySQbw57cKhiz81ThMelPCEWbSt0srAyBEhgN1GAOcEEWQhXgyUgPW7qLus1h7n9X1eMJPMzidUB/VCtgSD0PfSyFrojRYx0sqk8NahKt0vpMv/KRZ2pLd23bdaHLhVnPNSbQJvw6IUoeSZM2aUa6asW1ZX93UB3vH5TIuB7ZAmD7VKEzfydlzu6kNA8AsbUyWjK8JpaWH1HMOiuGQPbk7O7OWSwPmlSviDtbfGUhWfIL94g6PQdFXi/QDQ21pFGJpLf9axBHyT2sAeRYpJUnJAmo1vgYSputbxPWHunysiAD+RpqqbQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=3+0XWDSom4TdZgSaszjD1jgwjZeVziVn3I0D2bDhx3g=;
 b=Fpw/SEFUvD8oZIPy9d37vIVDeTZY+e7qyai8akGnQhOrJeLJpCGuHE1EE2qhlPvVE64TGw1fjdF4510jDgqZtYj/p7P3Hbj76/zSekUwbz20V9xvbQ9S+tjAsLvH+iZvGHpfSFK0m3MIc12g30mtG6SxlB706wqiKzWaU7+RZlw=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB8PR08MB4010.eurprd08.prod.outlook.com (2603:10a6:10:ab::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.14; Fri, 10 Sep
 2021 13:43:44 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.016; Fri, 10 Sep 2021
 13:43:44 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Fri, 10 Sep 2021 15:43:20 +0200
Message-Id: <20210910134323.26136-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR08CA0163.eurprd08.prod.outlook.com
 (2603:10a6:800:d1::17) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR08CA0163.eurprd08.prod.outlook.com (2603:10a6:800:d1::17) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4500.14 via Frontend Transport; Fri, 10 Sep 2021 13:43:44 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 201b622b-a41e-42d0-1fc6-08d9746101f7
X-MS-TrafficTypeDiagnostic: DB8PR08MB4010:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB8PR08MB4010BD43953B0D3FDAE1B382F2D69@DB8PR08MB4010.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:6790;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /+AyUq4q/B/ucOft+dSyV/gdsLz31vaYFpnuy0ysTdoIyABhoe6kegBi46gozorfAGhqyCCD7BxMp1k18IPvD9EhmQctrWWlE53Rb2JLY0YgOa9A0EA64lFtcxvw3phBUpqt1NXquYKkvJBIjlanB4yodsJSo02gDDRvTAdYavaIwvFd0Dr6B4UJoSLd/2XsRLajTxadfp15ji4kGWnUjov3KTKWPPKpvdbbfxZdHGVOQHNHky9e3m3u1SpWc6T6zHN+J5j93Jr58tCsCdM1zmKDtyMLOHOXJGLu/L+2xCktnQ0z8qYh5NqvCs9CYLr+czCd+42JpSZ75oiHcMT674WYAw40xa60KXjwGI9MIfFCE68wLs0mAjifI33Ck98p1TVZSBoozqS+anIqCAYquQWyP/VVOt9fP8WQVWeBvOpO43KpwAamt8Oqq5yKUVdgMSgba9h+fFyuzp726rj11Vcs68aG0kJubCJYP0gYw0YoSfB3Mnx+VF31ypZ9X+qgmqVv7FI8gWTOQYMxtFxazIc5cLaqcH++mzMSc2e+EqAxvOMQYhr03COb20ZtyYHunex8WSI3PP42Zq+5w0dXIdTbhOkwa7r7bngETVwdKu3DmgUVBS24nVmUsq7aLwqa/Sa7a6gi4CF7pHqwYAJAhkrChQ+7Sdblt7I7szz2/Q3mp5rx0iRyEzMl+gtS67TA
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(39840400004)(396003)(376002)(86362001)(8936002)(83380400001)(8676002)(2906002)(4326008)(186003)(52116002)(5660300002)(1076003)(26005)(6916009)(66946007)(956004)(6666004)(44832011)(38100700002)(6506007)(107886003)(36756003)(6486002)(316002)(2616005)(66556008)(66476007)(38350700002)(6512007)(478600001);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?XEX7odJ7WPh3yw5BKhPt8AAUlLlANIOHIF4GPu5JacYbReiDaju0OI4RNzaO?=
 =?us-ascii?Q?GAXxk1M/3MKB2102qSEVnEHcaG+dHI0tFeqegzPSXI95WXxGNyOSvAFE/j3M?=
 =?us-ascii?Q?M/cIOr1Gq66U0KPB7jzVyL0cyTI2BdDqosHHMzDkO4unG87uV5Ihu71ui0/6?=
 =?us-ascii?Q?oTwTmL3Rm1ydn0GROme6RWvKM002OcXnXU7b455wBZJgKyGW1VgSM3+0demp?=
 =?us-ascii?Q?xLyk+d2jIbMFFju1AGKzsIgO0ZHTCGouPz/zSSh+D5by8v7spqM4+ZBXGWm8?=
 =?us-ascii?Q?nIMsl+wh9X3emtYx8RysT0LVkN40U7tGULtTQvBJNiZL23Wd7npa+ajCZYT/?=
 =?us-ascii?Q?EN6wRoxPw9sTIOZeitdKBwALyHMGrNcY6TjeUwhycubygRcqXW+GjHBaJZhY?=
 =?us-ascii?Q?ylZTkAFb4he3VrRLSkg5UfWsuVeCKmhMpPJkBV5DzfEu4yN9eQkJC4FpiIY+?=
 =?us-ascii?Q?eKpqXsz5taOVU0IhMqDs9u/UkB1H46oLPIyt2bRs1tal9PIhKnqq1q//YgNG?=
 =?us-ascii?Q?uAtbOAwiuWcGDSACIdqUInC4gSPgzeRe0PUKtVLnOPyYlU/D+8lr/DOclJM1?=
 =?us-ascii?Q?a0ioD9tV32QCOyuTwNtmwys1p2r8RJQmwFnDhNQmUpKj/O5r7/v+LOp3X/p0?=
 =?us-ascii?Q?mI6S7EpJvPjAKSypv2sknKv/alqKdhDX8eBtmp2JUwPdJovmuouGlDgh52uv?=
 =?us-ascii?Q?t/MwHnmAXRUHaV7wtwFKijd0or5mI0SWu98ziNZ9gRI1LAB1S4eLnqqNuRXD?=
 =?us-ascii?Q?8ozDBGM/1VpZJ6xeuW2g7ROqT59e1C63w1Fapb94/q6SjfTv/XSBmsLq+9fv?=
 =?us-ascii?Q?Nms81/WuanVVwYcWc0cYqFdaK7FBOaP80QfFNTAXGcsGNS+zseYK4NMqtG9X?=
 =?us-ascii?Q?vFNUObe2lVqv0PHamnXHbc9qLdN9k0Xvk6kLH9emftsXmqY3SAEHjj/an1SW?=
 =?us-ascii?Q?vvdg0DhNChfgrmBJW/LNcwJgOV+NBsV0UbGiCj5BbtyhSiOHJ1mZ5NaUnCX0?=
 =?us-ascii?Q?lnS0HWT9MuQ/IJtQHWbAnpVB4/odGq9s4J/dO6nv2kyB0pKy+UY/jWu2/DD9?=
 =?us-ascii?Q?qdryI0MwRMgDpA+c1WNXg1xSa9q7LiFtV4lF+GDABDQl1ytJb6FNBUGUL9OI?=
 =?us-ascii?Q?WJzo/9JzSJ0OOXfoiBz7IuF734x4CHc9u+nGZAy0xj9FNQwY2GJDr8FDWmXl?=
 =?us-ascii?Q?k7B250KH5BpUlN0PVRUHwszWzlFBIj5PxbNczeYwLrjlcPMSdL5I2NcIB0yv?=
 =?us-ascii?Q?ckQJlbJm8NLnW+og0BodBIjCOXrf6EreeHfQVFfIZafGz2setFFsFHsncUUU?=
 =?us-ascii?Q?n9Hc6dQZ0TLaj3uc2ndGzlmb?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 201b622b-a41e-42d0-1fc6-08d9746101f7
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Sep 2021 13:43:44.5127 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Y1vxHFcQ/S/bZ9O72JYQjyZfuaoF3521i1N4TkBjZImHARFpmJbhmhMEV+L43SODR1DVIK++D0nqCkfdb80sqHY6VonPtIHD3cuH3Q4GzJ8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB8PR08MB4010
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210910_064350_300216_FC81B45D 
X-CRM114-Status: GOOD (  12.11  )
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
X-Host-Lookup-Failed: Reverse DNS lookup failed for 2607:7c80:54:e::133 (failed)
X-Broken-Reverse-DNS: no host name for IP address 2607:7c80:54:e::133
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-3.0 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,PTX_BROKEN_RDNS,
	RCVD_IN_DNSWL_MED,RDNS_NONE,SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED
	autolearn=no autolearn_force=no version=3.4.2
Subject: [PATCH 0/3] arm: zynqmp: add support for zcu106 and boot sources
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

Hi all,

This series features some mixed additions to and improvements of
the Xilinx Zynq UltraScale+ MPSoC support in barebox.

The first patch introduces support for the Xilinx Zynq UltraScale+
MPSoC ZCU106 evaluation board (based on the board support for the
ZCU104). Tested the basic features (SD card, Ethernet, ...) on a
ZCU106 board (well, obviously...).

The second patch fixes two links in the Zynq UltraScale+ part
of the documentation.

Finally, the third patch introduces support for the boot source
detection on the Zynq UltraScale+ architecture in general. Tested
on the ZCU106 and a custom Zynq UltraScale+ board.

Best regards,
Michael

Michael Riesch (3):
  arm: zynqmp: add support for xilinx zcu106 board
  Documentation: boards: zynqmp: fix broken links
  arm: zynqmp: add boot source support

 Documentation/boards/zynqmp.rst               |  4 +-
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/xilinx-zcu106/Makefile        |  3 ++
 arch/arm/boards/xilinx-zcu106/board.c         | 21 +++++++++
 arch/arm/boards/xilinx-zcu106/lowlevel.c      | 24 +++++++++++
 arch/arm/boards/xilinx-zcu106/lowlevel_init.S | 12 ++++++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/zynqmp-zcu106-revA.dts           | 21 +++++++++
 arch/arm/mach-zynqmp/Kconfig                  |  6 +++
 arch/arm/mach-zynqmp/zynqmp.c                 | 43 +++++++++++++++++++
 images/Makefile.zynqmp                        |  4 ++
 11 files changed, 138 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/boards/xilinx-zcu106/Makefile
 create mode 100644 arch/arm/boards/xilinx-zcu106/board.c
 create mode 100644 arch/arm/boards/xilinx-zcu106/lowlevel.c
 create mode 100644 arch/arm/boards/xilinx-zcu106/lowlevel_init.S
 create mode 100644 arch/arm/dts/zynqmp-zcu106-revA.dts

-- 
2.17.1


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

