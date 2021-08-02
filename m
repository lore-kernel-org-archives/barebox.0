Delivery-date: Mon, 02 Aug 2021 12:42:42 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAVP7-0008Qv-VP
	for lore@lore.pengutronix.de; Mon, 02 Aug 2021 12:42:42 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1mAVP5-0003Ln-FX
	for lore@pengutronix.de; Mon, 02 Aug 2021 12:42:41 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=cBiTN5KtIP67ULWrAhGMQ2RbVqpz5XrhARcZ6DR13Y4=; b=zjK+WpEDYUxvlQ
	JGpjrPJiPs5wkrjE2C6HgnSdPGfeXPERNkaQ7tzrBihHJ1s5IlfFYaz/rzyDjrcuRFz9O3NYpDwUC
	sb0E5bQp+Zk7/7W1FBghHALYILNyV6WxKcw6KizSsu18oTRkmcsWUO/Cj3wa6OxUYEjXidigqXXML
	diD6a11g26n7afHaWm5dmCzGDQHF3n3x9dD1cE/yQUj3czeEbX932iztRq2nDoFzQGC2oGCtxLl3+
	I2KC3+gp+Hdsm0jFzicioSAQYkrill7xLqc/2GbQxVbynW0AqWhDAj78WHnrdbicu47Mydpv5rAOF
	UavJQatDPipMbASwo2IQ==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1mAVN0-00FnH1-M5; Mon, 02 Aug 2021 10:40:31 +0000
Received: from mail-sn1anam02on2104.outbound.protection.outlook.com
 ([40.107.96.104] helo=NAM02-SN1-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1mAVMp-00FnEE-VN
 for barebox@lists.infradead.org; Mon, 02 Aug 2021 10:40:21 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=NL2/uHpvYexkTXPzvsbrt3tap0+KvcdTlBGuvPZhpSvUCY/rca2e5EECmeIVUXCS+DJvAe80rWlmMeA/iFYgIz2MwmnaRp+pcs4g3vzJHPJXhuTMWk64knljLfN+nNnagNE15kJtVW82EYGHBm3NTsGs9UBasFvei8mvFxP/cUN3HAeMJhVK3TZB3F+/gR9rfXxts/H8lK9Zlr7sTjs3s5rqfBFzPqjcIb1/4v5a9IiksuuwfMDChRpoWMqSU0vuof8vbIuoe5FI+QtaRMpEVHu+BXvgFcJH/EpUat7RrNMDmFPtec7W/qBjdTZjaTRiVtbHK74ZLEeeZnVy5k6RZg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfugxFM1NfpFy+BVC1m43rZEuWtAUZ+GX5/KZGJ9Jtk=;
 b=bC9hmMtUpsUck6xdFD8MF4bZP1p42mSNEHToLSPKrydEJIpQjd05UqPySHR+4iE6yXlzl4zI6Tp2V9GWW5gq+Bejd/NmpfZwjcsbU2MpYhaG0LOKcIEvPuUXoxIQ4LAQyWdy5iaDyMNF05CBC5oo0gYrWlkHYq/OfJcJpitguaygpMdBrcvvytFi/hCPd5PFAFpPkI6v41Z4Kryvr4EKGf1B9sAFMcM9jXE8WnIKooOkLXk8/3Pku58WsIz+C2So9wM4Olpa/2vlBsfE2UHKkMjjsh8wuiGza0ugz5m3M//fkeWuZts6m02YVBL7JW8ClZi75+5FU8ZAcEunamZScA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=DfugxFM1NfpFy+BVC1m43rZEuWtAUZ+GX5/KZGJ9Jtk=;
 b=R/lfSBcUHcNbl3gON5XyK3b4uNI57Y1WixbefyTtNURT2cfKK6P0MAFRFEh+nfLuQD80AoTF9hgIWGM7NG6ma7XOoAN6oCxRNW/+g3ha4sDzSttDjUDlkJo3bsNJEGkUgZzojqAYEjFWrPuDObFOuPCWtly3gnk+B5tbEBIq1Uu1Vs7gMV8NuI1Oe0QhF9jYj6V+mJqqZmp6H0lijIHL49MXeHec8siLTA4VzChCNXaXCmsTcdIXLayaY4AisPo/spxPehN/p4ryqc63hShokp4PnXqh820utW0dLZwPQFZfwou2Ibec9MZ2gZLC0yEneDnyp3uTbAiIgPHVgK6juA==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4337.namprd16.prod.outlook.com (2603:10b6:208:33c::12)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.21; Mon, 2 Aug
 2021 10:40:17 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.026; Mon, 2 Aug 2021
 10:40:17 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Mon,  2 Aug 2021 11:40:01 +0100
Message-Id: <1627900804-15814-1-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.9.3
X-OriginalArrivalTime: 02 Aug 2021 10:40:15.0122 (UTC)
 FILETIME=[C764AF20:01D7878A]
X-ClientProxiedBy: BL1PR13CA0235.namprd13.prod.outlook.com
 (2603:10b6:208:2bf::30) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1PR13CA0235.namprd13.prod.outlook.com (2603:10b6:208:2bf::30) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.4394.12 via Frontend
 Transport; Mon, 2 Aug 2021 10:40:16 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Mon, 2 Aug 2021 11:40:15 +0100
Received: from ediapps.abaco.local (ediapps.abaco.local [10.1.177.9])	by
 selma.abaco.local (Postfix) with ESMTP id EA524E343F;
 Mon,  2 Aug 2021 11:40:14 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: f79265b8-3328-47ae-60c6-08d955a1eab7
X-MS-TrafficTypeDiagnostic: BL3PR16MB4337:
X-Microsoft-Antispam-PRVS: <BL3PR16MB43378A33F5632445F06B45E591EF9@BL3PR16MB4337.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7219;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: z1Fz7/WolCYb0k0kCR6mKAaxvMVdRt6Ds+AGlrFuxRZphRfTurKpMg6LQ0LbbPDGxQ8GyRCsR9T1R/fCGH79M3TGnzypxvDibvd0UWOK8UBCiQ/XlGMVhSDYTYzCX4aCnucioTOpSVeCvz2U+F7kDZPwz57vd/r6pNqBn3hPLeb2TA6vnii8QY6pOiW80ewGodgN2xRmqxoM8Cmzojf8wPbSPpwMEa8vprMhIrKa6Tkdnr+TinAtUQcAL403HgYHuZcrcyIzDkCTL/myU0wFxPBcWTbTOuSYOCAtpCwIc9Uh27pU2xFWdQVHrkX6oy20HC3XhGdteygjDpLwhtbDo1EJcR64Uk75zItSPwcpxMg9aff5yqIH400DJw/MUmDrSxNnNbZWQtqO8J40mD3ryBtgJAxwGPCUvc29LK81c6U4no7KtUzmje00nYM20OX0eNFr035yGWr0tTGLSlUe1REbW59UxDna3rBLo/Rh2TfdTraL1lYHPA6n0C4BXh9iU0R69fr65bBYVe9KhLSJ4Ff89KmUAHmOpw487etgCpHNCMcCxH9LM6sCzIIOYjIdhnQ9qEZ38NPuVvWgi4cS2EHh7HsgNBEPIDz6K9r9gETr9nSpHjblw1VPqIfUjwMKBL07R+98mLYARcglFVUHXIDO96oATxnvD43qHMoHSNkVpXo4uQdHDHER7H7fmYeVNW2JVGkUHdMO5WAbwrCPMg==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(346002)(366004)(136003)(376002)(39840400004)(396003)(186003)(26005)(36756003)(107886003)(6266002)(5660300002)(2616005)(8676002)(66476007)(66556008)(4326008)(316002)(6666004)(66946007)(38350700002)(38100700002)(44832011)(83380400001)(52116002)(6916009)(86362001)(2906002)(478600001)(4744005)(8936002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?mcVa3LEbV5uFuptiWGb35Igx6nlMWO0NpL4jAOggmpC9EhbyIhHq/g63IO05?=
 =?us-ascii?Q?JNfUskEE1l4xQVaNXDWFhECCn0vrjtk/HVvBaMWsZ9/5Z0vw82mgp3pzhUPp?=
 =?us-ascii?Q?w0xbwZK7yfFADbGEiPc8m7+xrwRH6v9x/r2PGxvHsuVth2qk3zWfPF5lES7y?=
 =?us-ascii?Q?isSajzRQSLx1mYHy4GUE4arxYBLKQjIrbiEWIVhlJXY5djPbj7wdMgHCJOAJ?=
 =?us-ascii?Q?bTuDdbF6dbKGGdEO9QcOnide4C28aAyQL61ySpLxR+lo9VKpgh12u+OopeVf?=
 =?us-ascii?Q?NzvlmIPtdvg0fDdMKvylcKm4slBUX9RCozJjwBmDvi8sizMaA49BauXnuFX+?=
 =?us-ascii?Q?kHp2Dv5TBn0QQbnQFHBp3RUapFF2Wcor347xSMloD2n9RXpVRi+JjxF55hV7?=
 =?us-ascii?Q?3ZE/PS6k5xNml52jP7BtDXHZYflvNV/eBnIZefse/DIO4Z2hMcArIVjU0rZS?=
 =?us-ascii?Q?RIx7pF4kv3++RGhaeCqizmmYv1ufca8JuLu54Ydr56pfquts3CQrsRhol/VA?=
 =?us-ascii?Q?nm2m5K35Q95/Lvq9KKgjPJQ21F+Dh9h8qjr4N74iI4v9iTI5Z5PoHPz4zJ2W?=
 =?us-ascii?Q?wG6uoFfs7d2gUYkK784Areg3d51Gcctx9sYNP9/WUdtvhnUTlNcndS9FI9gq?=
 =?us-ascii?Q?rV86iznVkrSiD4T7BCWPfSy66qe8raqE07ae/nv4Rkdag/C35ypGPzRs6D1f?=
 =?us-ascii?Q?MKmpECXknK6kfY63341tKtb9UqKx0XwTU48L7DbKM34qk1W+YCuPRtWCog0q?=
 =?us-ascii?Q?I71DGy8tgOktJ9iQyQwYR6aTR1PNvJ7BJChaZwSMgzUCh1DgzE1zEZAd91qE?=
 =?us-ascii?Q?6YHhFt7DZA1z9dK9FCoBUZvP8gTq9UlY/Lhz846OTm+p/7ggZnCdBsjhd4ft?=
 =?us-ascii?Q?x4rIawpUTxpQz5i8PExWk5kPoKX+1Ntr7VI1DE6Xy5P7sFU484eDcOg3SEW2?=
 =?us-ascii?Q?+87rDQgg2qXdYCpT/CfD0t4kMg2YsPGVmDXLmB0CH7s0FlTQw7nPadqGl9jM?=
 =?us-ascii?Q?Nt3GIJc+IWiI6KBKhp8MGoEbT6BhcUqj0Oa4RPHSUqE/q7M8Di/rbcS3/UGZ?=
 =?us-ascii?Q?Eiqmqe3apW69wNv+gLa4ejjmVYvnlwTQJLm+ZGlR+LTA7djmiXEvIFbLXr3s?=
 =?us-ascii?Q?sLcmGYTQQ5ILOVM5MPB3+mG/8SvG/ljDsxB94wn2JxOkBOemvqQP5up7Kxc2?=
 =?us-ascii?Q?SQt9HhryshfU1oEs56qL1eVdNGtDUAvR4YuNjQDA9g3WZRp1imhZ8MU6I5cI?=
 =?us-ascii?Q?zGv/R0DWtvZ7eb7Pvga1/RBIaFzFajihIzpjXY3BPyx5sRHDmLkkyWHgcOSR?=
 =?us-ascii?Q?ihHcu35wrjtUMtpTN4I0DsWS?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f79265b8-3328-47ae-60c6-08d955a1eab7
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Aug 2021 10:40:16.7459 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 2YI+utZtw9M00KLrNLdnUoFMMUA7UI83uz3uOm5+pBnlMOhytpn0kNI50L3Kk7tht+A8aQpwwnF6Rg6lv5MW/w==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4337
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210802_034020_248037_EDB065EC 
X-CRM114-Status: UNSURE (   9.77  )
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
X-Spam-Status: No, score=-4.9 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH v2 0/3] NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

This is the version 2 of the NXP IFC driver patch for the ls1046a.
It addresses the comments as follows::
	* Rebase the patch to the next branch to use existing header.
	* The use of the DT to retrieve the IFC controller address.
	* Remove the platform data support for PPC.
	* Remove unused functions.

Renaud Barbier (3):
  ARM: atomic.h: add 64-bit counter support
  nand: add NXP IFC nand driver
  ls1046ardb: enable IFC NAND.

 arch/arm/boards/ls1046ardb/board.c    |   42 +
 arch/arm/configs/layerscape_defconfig |   11 +
 drivers/mtd/nand/Kconfig              |    7 +
 drivers/mtd/nand/Makefile             |    1 +
 drivers/mtd/nand/fsl_ifc.h            |  116 +++
 drivers/mtd/nand/nand_fsl_ifc.c       | 1036 +++++++++++++++++++++++++
 include/asm-generic/atomic-long.h     |   63 --
 include/asm-generic/atomic.h          |   49 ++
 include/linux/fsl_ifc.h               |  305 ++++++++
 9 files changed, 1567 insertions(+), 63 deletions(-)
 create mode 100644 drivers/mtd/nand/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/nand_fsl_ifc.c
 create mode 100644 include/linux/fsl_ifc.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

