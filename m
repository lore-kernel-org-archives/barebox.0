Delivery-date: Sat, 18 Sep 2021 00:43:07 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMZX-0001ka-PG
	for lore@lore.pengutronix.de; Sat, 18 Sep 2021 00:43:07 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mRMZW-0000A0-Is
	for lore@pengutronix.de; Sat, 18 Sep 2021 00:43:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:In-Reply-To:Date:
	Message-ID:References:Cc:To:From:Subject:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=U48aUXkLtGSJWJjTtD/YOb5HvW083t89qrq+staejag=; b=CA/Wiwv+YMHBChw5ZQOOwyzRkL
	fYci9qWZx+2eiFPCiog2mvreonto5LeWhse3uP8YrSOBy9yRqpdCmxkBWEdIhu5dMDR2GeOpBDXSP
	p0tE8UE0e/6n0cyBnoEjsvNsQTT+TkH631ssaWxT0IzLaDx9Yqv0hvdW00PJR5AplMsWwXm8VnY9l
	NgWriXxrTW7CpXjXQ5sv3EnUQeULQizCLwSeVZzaFqf9/IDIxLp3HWD4mPD8Vp7PYU/PU6jrbGYv8
	hUAo93pjqO7fDev84WYFHr2UV6MceHGEBq0jGydVR6D3kB0WCzDD9KesAqrFlnetSL56VDc2UVVFD
	FhGV0Pag==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mRMYG-00F6B9-RP; Fri, 17 Sep 2021 22:41:49 +0000
Received: from mail-eopbgr20126.outbound.protection.outlook.com
 ([40.107.2.126] helo=EUR02-VE1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mRMYB-00F6AD-9K
 for barebox@lists.infradead.org; Fri, 17 Sep 2021 22:41:44 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gYqOte3AGrvmXT3MahqTr4nhLxstva2rZTlxib0pczCRBNmkwry5DlwJ9xUIDIqlNcD3DqE1Od8VHjjDOuEkn8SwMcIl6VlsQzRQ1bauXqe16F4ANVrLGAf6kjNmwsdsSFrzC01jEL3My3J/iwPr+IikNd6tRyi0m/kIWAGNCwsYl9Ifh/0UeXBt8tVahCP8GmLVmB89tZbcGl10mKJsxYO4z2I5XrdQ+Fr+D5n8H30zc7AYHcuq9sdcx/jlI7WatMcsn6Br5fixy85jQX00FsXCRb90LAHR4x1nCFU49agQFwFyX3lRgidr46nb94Fj543BVdBpxG4fuajBx4DoJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
 bh=VjKxTFzwQZvdm/JJXr1lh2gR1Oaf5R28vJjVvXBedZw=;
 b=DYb0zCUr+Wypm3AVKZv40uROvBxCi/H99gt7A9hMVow6c5tR8QQol7t3aHDLAmf957yll2LMokKEPbZ0QqwnNSlzRapBQ5bIHAdePXQ7NEXU5PaUy5rKRqIjilP1z3z7ANZVvtDq6NWmz/NVGJWBhnw5qj3XNr1Lfu7SnfMBGJGcIq+owNV1QHg2vTuEL2FRU0POzTm6iqQs0KThBuvi3920+VVeaQnC/9MnO+1pwiNadbzjdUKu+UAqeUAU5cSvDM2MHWF0VVCBQrv4HfIw7ZSuHLbTX/AeLdDwkkAQ8bFqQk4rI0K/p6jW6MF5gxPdvm1DmRhGY0XDG29W9Hpg3Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=axentia.se; dmarc=pass action=none header.from=axentia.se;
 dkim=pass header.d=axentia.se; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=axentia.se;
 s=selector2;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=VjKxTFzwQZvdm/JJXr1lh2gR1Oaf5R28vJjVvXBedZw=;
 b=Xez2GC26nuIsIWhl4dG/BEFdb4wI1Ot0GIwHPeOKw3j26HnoF8kxv3jqwEgQbX+0ABUCuDUFWNXhbGXBriHLvENzSLMiGhwjiSi9G/KRjX+vm/HhibzGbJxDBVlTmUZwzAUT5HDkasP3hgyCvYUYGfD7gt4Fdxly4mKLscjmse4=
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=axentia.se;
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com (2603:10a6:10:eb::29)
 by DB6PR0202MB2615.eurprd02.prod.outlook.com (2603:10a6:4:1c::8) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4500.18; Fri, 17 Sep
 2021 22:41:40 +0000
Received: from DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a]) by DB8PR02MB5482.eurprd02.prod.outlook.com
 ([fe80::35c9:1008:f5af:55a%4]) with mapi id 15.20.4500.019; Fri, 17 Sep 2021
 22:41:39 +0000
From: Peter Rosin <peda@axentia.se>
To: Sascha Hauer <s.hauer@pengutronix.de>, Ahmad Fatoum <ahmad@a3f.at>
Cc: Barebox List <barebox@lists.infradead.org>
References: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Organization: Axentia Technologies AB
Message-ID: <ce313489-e8c8-34d9-d163-a7247c65c331@axentia.se>
Date: Sat, 18 Sep 2021 00:41:37 +0200
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
In-Reply-To: <781e128b-14f3-3577-e433-f6a13fff8159@axentia.se>
Content-Language: sv-SE
X-ClientProxiedBy: HE1PR09CA0051.eurprd09.prod.outlook.com
 (2603:10a6:7:3c::19) To DB8PR02MB5482.eurprd02.prod.outlook.com
 (2603:10a6:10:eb::29)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from [192.168.13.3] (185.178.140.238) by
 HE1PR09CA0051.eurprd09.prod.outlook.com (2603:10a6:7:3c::19) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4523.14 via Frontend Transport; Fri, 17 Sep 2021 22:41:39 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 2dbe0227-5d5e-461e-a856-08d97a2c5082
X-MS-TrafficTypeDiagnostic: DB6PR0202MB2615:
X-Microsoft-Antispam-PRVS: <DB6PR0202MB26151A471E5295236137990FBCDD9@DB6PR0202MB2615.eurprd02.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:393;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 7yZEOIqdPIB/jJAWxY4pU3vMnv93pznRDQIDKejvpKUnRoOxw3ktJhhtYGNHCBJxforGbXX1O2dhGR/913EkkCLBUntCyOtB/WLm2XIcBDBaRrG2DAtQTs6S7Hp/f7PsjLZ2SaKdYc8P6TWHILQupx/rAYGAv4Z7ldAeKjEa3DnyQGcPL86r2n60uFFDd65KQKt/CTfQ1SHl8SZNgiQA9VLu0heWal7+6h5/bCaVRzGu5VE1dUiSixaRm2I6KFvBWGt2yZfd3ME7kGAkr2OkHh53/5DtlVBy1IuVn+B7ooov+FW+jQaKLbtBNNRLuyIIfmhCDDG8gFJpH4LQRajyoGDFELTsz6oaUiH3yZt/7xF1DyhiWpQxCr2icIbQiXa9TyrssmZxYB3rnlHhTdKUe+WDj5zIg1bEZwmITE31h/6FQ3jhQlwm3XXBIQYGUcRUtri2pAMeUgULEoXB6mwUG6JSq5csWw9NOcQPFxGAlAwoEhWp1I3ON3g0m84EvcHRqsnk0iAYFhMemI385m7/T7+bdHo78FSAAroX/PPmM5jOzLAj61QhuqTYS7Kxc+xc3rG/5kVYPjoIUp7pYN+ull0LeWUUYPtWfP8VJfrCLkFLB+TTyWK76xtADxiMnEwrJKJb8knA42+TNP3n7pzc91l6lVeoq99qjF9yJWGjEe6Nh5CZi+CDitER/v82indQkXLHBmztL6LwZY07V6qyG7HOTbLfjZD/3uEul+MRy4k=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DB8PR02MB5482.eurprd02.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(396003)(39840400004)(376002)(366004)(136003)(346002)(36916002)(186003)(66946007)(316002)(83380400001)(8676002)(36756003)(6486002)(26005)(110136005)(4326008)(31696002)(5660300002)(16576012)(2906002)(478600001)(8936002)(86362001)(66476007)(31686004)(956004)(2616005)(38100700002)(66556008)(43740500002)(45980500001);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?N3JFbm40bUJDMEthaUxhQW1xekd1bWVJeHZKWUNWcGkzVjl2dkdqc0Zhbzdj?=
 =?utf-8?B?clg4V0VWbjN1ZElsTWJSSWtGWEVVbUo0cjdSaDNkRDN6MmY4TDltTFEyWnFs?=
 =?utf-8?B?K3FMSEZWYTFPR3NQR0UwZ1lhT3lrWEMzMWMrZzg1QlZxRWZaVzJWdmg1cWFQ?=
 =?utf-8?B?U0hmRm9tTUsvSE03dFZwako1SHErV2ZjRkQ5YTlpdGVtSFF2TEg0L2c5SjBt?=
 =?utf-8?B?cm9ZVzhCL09wTlFSZldiMmVXV3hneEpNN3VyRXZIRlU5WXV4WU1OVXEvL0V4?=
 =?utf-8?B?S2g1d2tySnBSVEJhY01zZ1VnTURVMTFJb2RjMWxmK3g3azBMcDI2SURRRGx1?=
 =?utf-8?B?QThaODdFQXRnTTVRRkFab2ZRTk1HTTJDTGFCa3I4ZUV2dFM5SUhCQ0o5NnpR?=
 =?utf-8?B?R0NVd2xMdzB3cVBOQmxGdk04cThUWm0yWUFjSTIzVDBFYmhqYm0yQ1VadmE4?=
 =?utf-8?B?WEp2SWZXeG9rSnZLVkR1N3NqZTU2MjZicGg5QkYzSGpsL2c1RjBlRXhoSk1p?=
 =?utf-8?B?eGFwUE5RMFpmUTRmcFpoTmVBaU5RRjlrVTFjQ25VZE1aSHoxVm9hUWlTWnI5?=
 =?utf-8?B?NzBrcXJWM1F5SXI0bnpZdmxDQmJxbTV2M0l6azBFOVRPMkRETlB3RityeUZ0?=
 =?utf-8?B?U2svMUxRQm5OTFl5OWlkcDRhQUxsM0pYR2ZBSERaVzdmVWQyc0E2QWMwTStj?=
 =?utf-8?B?NDQ4M2t1WTd6VmRiTTFjVGVkMnBra2FhYUcrbjdxUkRPVDY4QXkyVjNHMlZ0?=
 =?utf-8?B?ZmpIMEdWOEFpd0EvOTlTOHFtYU5wNVZqdXlTNHRORVg5Z3VEc3RkaXQ5UGda?=
 =?utf-8?B?dC9VZWhKOTI1RkhnUmhRTDdoVk11aThKRUNSQUI1WENwQmlEQk4wQy96dW1C?=
 =?utf-8?B?L3VwTTJqU2dZRk93NVN0RWhNZENybzhmU2dPR0t6VW5rOGFocktXcTBHaWp4?=
 =?utf-8?B?YTVVME9VKzdjMzg0NHo1TE9adURoRzErVEtveWpMa1JYWWwrTFI4R1FxM3hO?=
 =?utf-8?B?M1oxUVIrN2JXc0wxek51VTJmbSs4bU02b3VLeWpRMGdaSFpuQjVQRHBGOVJ3?=
 =?utf-8?B?dlRZVHZlbDJHMlFNbjVpUFhwRm95MHRyUXl3OGFmeDZXUm4xL3ZjeEprSDQ5?=
 =?utf-8?B?UFdXYTVRb0VrcysycTNrbno4c3prUHJnNldRd2tKSG0wK09mTksyTFlrdnRk?=
 =?utf-8?B?akZmQ2EwRzh0V0dsWkRVUDhSaDFwdGZlZ2ZaZUpRRFQ4TVRRYXpLSUdTdFVr?=
 =?utf-8?B?ZWtIbGlTcVM5R2Mvc1cyTGdncjVlUktBS3hPRDJReHpzNXZ6ekZFdENTenM2?=
 =?utf-8?B?SVE2M2FJSTZyLzlZUGFpeEc1WWtKdTRuYUpIaCtTdlEwZ1Z4SXlhRTZNanBB?=
 =?utf-8?B?UkFsOVJGaXMzU2JyZWQzNGE2VkEyV1VoNjA4OHZFU2R5L05MbVQrNjRGVjdG?=
 =?utf-8?B?MXNPU1ZyZnhpclpZS2I3RWVCa1NZK1U3UmZ2dVgxYVhZMk9TTGNBMHlxTFcy?=
 =?utf-8?B?dnROUHdiMlM0S21wU2RMTVJjYjBOZDN6dVVFVjRreGxtRDBEdmh0SEFGK1Iw?=
 =?utf-8?B?V2QySlg3bVFZdHI4RkZMYzlYYzhWTk1qSUtzUVFVcGx5aFNnb1hBSzVjODRt?=
 =?utf-8?B?anlpaHJsVXRvWDNWSjlPeG84eEdrcFBOTDV0ZW1uaktOOXNBeCtYdmNWcGx6?=
 =?utf-8?B?MDd4UnBqWU1STkk3R05EYXlNb0QxS0N1R3NCSkJKQllnMHhBQXdOZVhLdDdJ?=
 =?utf-8?Q?j40vYB0Iof9VwljDFY8BWlBiv2d1S0aupSS5TCD?=
X-OriginatorOrg: axentia.se
X-MS-Exchange-CrossTenant-Network-Message-Id: 2dbe0227-5d5e-461e-a856-08d97a2c5082
X-MS-Exchange-CrossTenant-AuthSource: DB8PR02MB5482.eurprd02.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 17 Sep 2021 22:41:39.8455 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 4ee68585-03e1-4785-942a-df9c1871a234
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +NECP/ZPeRRmOBLfQPS8RdewFR4dzY2iygrHXvhIZXDtW7AWuCQcsR+oaHo8mYuX
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0202MB2615
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210917_154143_375049_983BB19C 
X-CRM114-Status: UNSURE (   7.23  )
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "barebox" <barebox-bounces@lists.infradead.org>
X-SA-Exim-Connect-IP: 2607:7c80:54:e::133
X-SA-Exim-Mail-From: barebox-bounces+lore=pengutronix.de@lists.infradead.org
X-Spam-Checker-Version: SpamAssassin 3.4.2 (2018-09-13) on
	metis.ext.pengutronix.de
X-Spam-Level: 
X-Spam-Status: No, score=-5.3 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.2
Subject: [PATCH 4/4] lds: the RO_DATA_SECTION macro does not work on my
 SAMA5D3 board
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is a partial revert of patch
c5d38e9201 ("lds: Add and use RO_DATA_SECTION macro")
after adjusting to further changes made by
cd23b6facf ("common: add initial barebox deep-probe support")

Signed-off-by: Peter Rosin <peda@axentia.se>
---
 arch/arm/lib32/barebox.lds.S | 15 +++++++++++----
 1 file changed, 11 insertions(+), 4 deletions(-)

diff --git a/arch/arm/lib32/barebox.lds.S b/arch/arm/lib32/barebox.lds.S
index 77a5c525c5ae..0106026f13ca 100644
--- a/arch/arm/lib32/barebox.lds.S
+++ b/arch/arm/lib32/barebox.lds.S
@@ -38,10 +38,7 @@ SECTIONS
 	BAREBOX_BARE_INIT_SIZE
 
 	. = ALIGN(4);
-	.rodata : {
-		*(.rodata*)
-		RO_DATA_SECTION
-	}
+	.rodata : { *(.rodata*) }
 
 #ifdef CONFIG_ARM_UNWIND
 	/*
@@ -70,6 +67,16 @@ SECTIONS
 	.barebox_imd : { BAREBOX_IMD }
 
 	. = .;
+	.barebox_cmd : { BAREBOX_CMDS }
+	.barebox_ratp_cmd : { BAREBOX_RATP_CMDS }
+	.barebox_magicvar : { BAREBOX_MAGICVARS }
+	.barebox_initcalls : { BAREBOX_INITCALLS }
+	.barebox_exitcalls : { BAREBOX_EXITCALLS }
+	__usymtab : { BAREBOX_SYMS }
+	.pci_fixup : { BAREBOX_PCI_FIXUP }
+	.oftables : { BAREBOX_CLK_TABLE }
+	.dtb : { BAREBOX_DTB }
+	.deep_probe : { BAREBOX_DEEP_PROBE }
 
 	.rel_dyn_start : { *(.__rel_dyn_start) }
 	.rel.dyn : { *(.rel*) }
-- 
2.20.1



_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

