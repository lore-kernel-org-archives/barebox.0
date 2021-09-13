Delivery-date: Mon, 13 Sep 2021 14:16:06 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksY-0003LP-NX
	for lore@lore.pengutronix.de; Mon, 13 Sep 2021 14:16:06 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mPksW-0007bJ-7M
	for lore@pengutronix.de; Mon, 13 Sep 2021 14:16:06 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=It8zsP5M3BMXbrchPa1LJ53FtYlZ71+0rkAZAjQUeXk=; b=dP4NrBbwCB3hhD
	IRYzL9H9jlXDgQTvBbb0FCTMVEXJ/fBtuDStIe9PrMTF0uEgpu3dorwokZ1QUlXd4fthW0o/lcwUn
	VFqMZfQ3M3mKaPCHHx/XsJJPN1UE9GWe5J4UkE+YAIGUkAWDycyhSsu70lfFrucKxYeHnG67ss4aw
	k2FOU7C02oNCQBOLuMh6v+EQ27DWc25ZP/vGfWQE5ttBnrcc4RPUvx2SxXvNG4Lv8vPWCVqy8VLEF
	QiIgC91go4pwIhOxCNBbvgesnDz3lR+W6on74XzHiPGlZnnTullGzbJPJMmzqvJeVb2VksmgMru2U
	A9QsIxlezxKh4vNvhfYA==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mPkqt-001YYd-MX; Mon, 13 Sep 2021 12:14:23 +0000
Received: from mail-eopbgr60085.outbound.protection.outlook.com ([40.107.6.85]
 helo=EUR04-DB3-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mPkqo-001YXt-9E
 for barebox@lists.infradead.org; Mon, 13 Sep 2021 12:14:19 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=Pdx5ksR6Te9iCo+FL4UN7xYd/tY6lohUDl5Rn69WV1joMEh3e+70KGO63q0bIs+93ip2+Ol4DdjIp1zvsF85PPtDK94+evgDLRvyL9dO6sUl1lTwuczv4AjgJ6l2IOM0v+sVyS1HHdZNnXEtWjR0GzT9BaI+cf1kkkyIsjG6qo+YvkbZsrftcl97TsYJTzhwwv1r/h+NQjp7bXjstapCJTROUxMXHAQZH2VBwedWZnLCeesQKjFe1QuXaCfPev5VNM1BLf3ykqBeeIFQweBFbVubIjPwGsDyugBj2KqJCFpkcxU7tNfnRuUo343o+sWWlGXq4C1AdBqcR/emhac3BA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=epNXnPjDKB7+wDSsLMr/NQg63BhD/2U+axruIiqqs7Q=;
 b=Ti3LRAVHCWftLLGtoISpW76kJ1EQ8wN1+t9Mm93sQxBnFg8ZZhS079h0TbTTOc0nWS4rooNkOdndea4DpYj6jug36npVFh9SKX3DKYLDKZ8tpjUwH/AP56gYmme166jA/o4gmHX+Ssyj7IOBSMImaZu2N0FIDWvdAgcjI04ji25R02GYVq/fxAPZxCJZ5vaVpzzZvZR1y/hoUkFUl+X81qyK6hdeHjTvJe6PoA+rfDEhDuE1PC9Mmboo01lzu50ZUIZwz/TGIOAKL9px6bI1WsWE6ougOpFshFQgPT625/PTU7zHmIN7uO26L48c1BNBdjRLK0l5Ch+iOzp3ZO9Evg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=wolfvision.net; dmarc=pass action=none
 header.from=wolfvision.net; dkim=pass header.d=wolfvision.net; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=wolfvision.net;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=epNXnPjDKB7+wDSsLMr/NQg63BhD/2U+axruIiqqs7Q=;
 b=brlVJ9uqqH6NKQtw/pPYeVINl23DXeZzCvn0Ql0w6DB5HqGZKV7WK+mt7JXrQGlvBchyfjowD7iuvG3g/LyU4r61IbHx9q3yKdRAF+4xUrQX55oIs+UzdKU0GFvLb4fdrhKWwuc9YRVrz+gn7yijuEGSuh7tF8iaz3AY+BM5O+A=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=wolfvision.net;
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com (2603:10a6:10:c8::19)
 by DB9PR08MB6874.eurprd08.prod.outlook.com (2603:10a6:10:2ac::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.16; Mon, 13 Sep
 2021 12:14:13 +0000
Received: from DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3]) by DBBPR08MB4523.eurprd08.prod.outlook.com
 ([fe80::452b:e508:9c57:a6e3%7]) with mapi id 15.20.4500.019; Mon, 13 Sep 2021
 12:14:13 +0000
From: Michael Riesch <michael.riesch@wolfvision.net>
To: barebox@lists.infradead.org
Cc: Michael Riesch <michael.riesch@wolfvision.net>
Date: Mon, 13 Sep 2021 14:13:47 +0200
Message-Id: <20210913121350.9307-1-michael.riesch@wolfvision.net>
X-Mailer: git-send-email 2.20.1
X-ClientProxiedBy: VI1PR07CA0277.eurprd07.prod.outlook.com
 (2603:10a6:803:b4::44) To DBBPR08MB4523.eurprd08.prod.outlook.com
 (2603:10a6:10:c8::19)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from carlos.wolfvision-at.intra (91.118.163.37) by
 VI1PR07CA0277.eurprd07.prod.outlook.com (2603:10a6:803:b4::44) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.8 via Frontend Transport; Mon, 13 Sep 2021 12:14:12 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 3dd960c6-a00f-4014-75e4-08d976afffab
X-MS-TrafficTypeDiagnostic: DB9PR08MB6874:
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <DB9PR08MB6874CE8C8008D54998B7318CF2D99@DB9PR08MB6874.eurprd08.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:8273;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Uk3wtn+JZvT9GVtewnQZQCqg6rYqIt5Z7rqxB2z2PqOH9C8IpfUaReq5MEwBOfOh8srEgykttS4aKcwfmnefEWgWMTd9kyvoXlQfhUod20P/Pa82y/f2HUplPdkNniG2NP/M/9uwhyh5PtZNrrskESZUOmoeRh5kWTDC9xlJw+Lm+J2AWE9IycMIwEFFR3H9zOx0oAQiZwwwm4vFX8UPBMfc+rGChTjbiWCy+8sE10z4+6UdVTVPsWtcPLDLzkDBYfwnmUhA8af1g5S+Lqnz/12x/6ipkDjMTvedhD3p84Izhhm+PEiF78FNJGA0X8QPncOD7ytYAenxwjGhSMWqjp/s/f4XFKNfZIW5ORzAXZSOXl3POR0lBF/5/H0b+KtURBtSMli53AEY6rMOntSZyGnT0W9PhMRsitAtIwAWdbzI6jpmCfwmqmUX5IRvkHU7mNrbOtywlxrZR/1TRzIdkZHNxEJF8ecwyrbxBF9W3ipd064NzDr7G++96zK4NH0FsYLpoNmXxd/Eo9y/nb/Pv9hzrLt3eUVpQ36xytfRiSZJyvxbs8UtVVQNE6ucrUZlbwvJ1Kym7Nc8iKwMAzT8N9brwth46nTTLhqxe49Et1JKTZ/LrOGgIp8jE1PaF4osJYQb2mydGQVqBIUVn7jb+w8XlDZ/d2K8g6tmY6JMlfuZBNLCHCAw468R8p1Uz1gUHFx8dDL8ptlcVDiF4ozH8w==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DBBPR08MB4523.eurprd08.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(39840400004)(346002)(376002)(366004)(396003)(136003)(8936002)(5660300002)(107886003)(8676002)(26005)(52116002)(186003)(478600001)(38350700002)(6512007)(6486002)(6916009)(6506007)(66556008)(66476007)(66946007)(956004)(2616005)(6666004)(83380400001)(4326008)(86362001)(36756003)(316002)(44832011)(2906002)(38100700002)(1076003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?UgVqBInH0fKc0xyICdMezp5O5YBRUl2WYLXHKtwfFqjMJhufMeWkgdedMwjS?=
 =?us-ascii?Q?LvAtpR3ujwiFN6Kx0jv7adG4MSI5tmI0WG5XVqmj0ww8HDk5mFS4JWo8hiQi?=
 =?us-ascii?Q?6Q5FKLHwQFS9t+ncwe/wWWD4xG2ukkmcLBnXWHW3LloLVFcnvml/PEcpahkZ?=
 =?us-ascii?Q?vknXRdm1CkwSzyCs4uGAfPhDC0dzCGfo3DIU6hNcHZnu3/FiiypYJyi3Rmyk?=
 =?us-ascii?Q?SW6T9xSOmS2PFRU48YHDXjaXapsJSBkLCYcog6XvmVbMY3w62YgXyzB20KLN?=
 =?us-ascii?Q?ISmhdRpQhV2x+/GNPKvM/KcbNnhg9+SoCfaA59vc7KIUuqnwbR7JIU5WVHsK?=
 =?us-ascii?Q?X9dTcT8d0UMEw3V0koaon6dSrH8GuL1HuKL3Px7Fqv7f0WvQzGbRgiVZvN7F?=
 =?us-ascii?Q?/loYwfDqeTVIETXqmPsNAmeIQ2OmRWIU+fdRH4QXg8k+f33VLYSHmNovsKYE?=
 =?us-ascii?Q?zjLsAOIF2eX78IvlNuZSsL70X6UygJ3M7UEvkhWqtoW4tqlIB/B623hFYK5D?=
 =?us-ascii?Q?cZwVfXhj7E6SkQOtkj0fxwG2f+yIiHwkJw/CzXcmmgRdg5kUKjC3WfFllEy+?=
 =?us-ascii?Q?fHwSwqOH6ukZz/iUcED5OFE0dBA4SGW4ey4xtDweqFzDAX5lcRmYll3iTRtE?=
 =?us-ascii?Q?fo7MX9Hde9fr7+wMpZeOdxd1PIO50+SWpYXJ8jFZkLbc747oYS84iSqdxg/z?=
 =?us-ascii?Q?amzHsq3JBlfNjFqqZYzUDuH3jwkGUFco3Y4zWxO+Rfx4ixJlcQpvhUS7zg15?=
 =?us-ascii?Q?Y0vCYGQKUuuaKqRpaXI1YMQhK+TW9cWj5b6Gp/iOPsPCnjtnOXv5+TVBVrQ7?=
 =?us-ascii?Q?AG4mJbRfP4vl+xDt+f58xlD+VZBUwnS4ZXENIyDNQ7YBGXgCu3MH6T0dtFhk?=
 =?us-ascii?Q?TE1QjvZCXXilr5Y9reyu3MVlPGB/6N7B0z76txHaTITgcDL6e0W42pBnBrWV?=
 =?us-ascii?Q?Jt2LGUZ0xJmjCx7hXKG/kPVYT5aS8NeJAmV9ojvuKmQKR4Ck2beISJmyNj4+?=
 =?us-ascii?Q?yjVFCcC7FMUwHUyEBCUNCDUBDA6SDzThomQeUNa7L8gT9NymlZjUlzMWV8JS?=
 =?us-ascii?Q?JC4lmm8Khk2VAltlsYquQgh3ZRQRUKJbcr/zQ/GAqYaaztmu8XJSoh3lT2+p?=
 =?us-ascii?Q?bsSs40E4UX1TbUqRPnPSOEng9kEm7GKaYnf5G0bwVzw9T4jilhUwQAz+MfRW?=
 =?us-ascii?Q?WSYoSO2TTXWY3CqeNHFFb66g+4VWD97YpwgXkrIn3gakaaTNDtQEHpNOjyui?=
 =?us-ascii?Q?sbuApi+qgY49P3TVkxDEY6mL8rD5BFoP3lfW0oz+SVWT/dhEdgzibwcMZ9db?=
 =?us-ascii?Q?7f5VBeL8PmUZWKGxyUi+6RMc?=
X-OriginatorOrg: wolfvision.net
X-MS-Exchange-CrossTenant-Network-Message-Id: 3dd960c6-a00f-4014-75e4-08d976afffab
X-MS-Exchange-CrossTenant-AuthSource: DBBPR08MB4523.eurprd08.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 13 Sep 2021 12:14:13.1426 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e94ec9da-9183-471e-83b3-51baa8eb804f
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Hsq+gEfECJj74UUFT8jBj9ZCpeJto0cNktzN/9JVf/F9IYYcDEavwRiFNM7r2lDSXzeLCWNpKlCo9vHoKEuHr3b6WJSzE6wQPtLbycyLjNI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB9PR08MB6874
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210913_051418_373668_DEF3BEC5 
X-CRM114-Status: GOOD (  13.88  )
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
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/3] arm: zynqmp: add support for zcu106 and boot sources
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

Version 2 of this patch considers the reviews by Michael Tretter
and Ahmad Fatoum. Now boot source and instance are set in the
zynqmp_init method and the boot source/instance determination has
been revised for better readability.

Best regards,
Michael

Michael Riesch (3):
  arm: zynqmp: add support for xilinx zcu106 board
  Documentation: boards: zynqmp: fix broken links
  arm: zynqmp: add boot source support

 Documentation/boards/zynqmp.rst               |  4 +-
 arch/arm/boards/Makefile                      |  1 +
 arch/arm/boards/xilinx-zcu106/Makefile        |  3 +
 arch/arm/boards/xilinx-zcu106/board.c         | 21 +++++
 arch/arm/boards/xilinx-zcu106/lowlevel.c      | 24 ++++++
 arch/arm/boards/xilinx-zcu106/lowlevel_init.S | 12 +++
 arch/arm/dts/Makefile                         |  1 +
 arch/arm/dts/zynqmp-zcu106-revA.dts           | 21 +++++
 arch/arm/mach-zynqmp/Kconfig                  |  6 ++
 arch/arm/mach-zynqmp/zynqmp.c                 | 86 +++++++++++++++++++
 images/Makefile.zynqmp                        |  4 +
 11 files changed, 181 insertions(+), 2 deletions(-)
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

