Delivery-date: Wed, 28 Jul 2021 14:49:09 +0200
Received: from metis.ext.pengutronix.de ([2001:67c:670:201:290:27ff:fe1d:cc33])
	by lore.white.stw.pengutronix.de with esmtp (Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izl-00066B-20
	for lore@lore.pengutronix.de; Wed, 28 Jul 2021 14:49:09 +0200
Received: from bombadil.infradead.org ([2607:7c80:54:e::133])
	by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <barebox-bounces+lore=pengutronix.de@lists.infradead.org>)
	id 1m8izj-0004uD-Pw
	for lore@pengutronix.de; Wed, 28 Jul 2021 14:49:08 +0200
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20210309; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:Cc
	:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=iNaltRm0JTLZBqxqy6xHiPArbt8oHIsDzCYiXXRYkHE=; b=2KyNyR3bqiqeCd
	7zhQlAQpjOenNR3yIeEAe2/21cYWNSZpZEUqJqLg+W7nmPh7TlzPFxWmev3Y2aLVX1/gqxQLTHgv5
	9c2a09hlqAL7dLlbJeJBiHbtLBljCd4O/5iiQfwT1yb+zeY3o8asYv124isN93OXcojlRvKPGK2+4
	J6s1sjFRulCawSI/3l7TYNePoIYn6fvCMfWYINcHbPm7320RZ/FFItmtRjVAXQ+bgaCcxJl6tY8uQ
	JLtDNjMXWumsrplcmq/Qax7MfSC2Rs5pz0wysI+jeiQSkyWtLhrPAwCMDowLL9KKMFJh7dlUn0IjZ
	io29/PqglLWIPRGVCTTg==;
Received: from localhost ([::1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.94.2 #2 (Red Hat Linux))
	id 1m8iy5-000iAK-ML; Wed, 28 Jul 2021 12:47:25 +0000
Received: from mail-dm6nam11on2092.outbound.protection.outlook.com
 ([40.107.223.92] helo=NAM11-DM6-obe.outbound.protection.outlook.com)
 by bombadil.infradead.org with esmtps (Exim 4.94.2 #2 (Red Hat Linux))
 id 1m8ixw-000i86-K8
 for barebox@lists.infradead.org; Wed, 28 Jul 2021 12:47:18 +0000
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=gjx6gWZEzRQ/jbUtAl8WgYxZMzaZfDnvO1AebJDeuiDj6DVVupJ6fSrTOoeA3Dvua+ZbAzwg/mqXVDuUjBeH4CucaRFpKrCda60+nw15qtFIP+a3nNZrPIUZhE4wRtF5Qu9D0imn8pZaV0nhhlIMO0lfHGhuYtHnIplabO5m10Gz7z3/XxLOqn7XlVW/j2Jf66h7EKOjMY6B9991kciw38eZiq5VndWcuCngqFpuvTko8tnghCC03G3AYT3bpA9HfDw6H2PzNJ6BlLAoqY/nIpZ602uc5xddAvznMEyLpp38z4mrE7H/grzgWBUUDQ2Nnz6J82iFi0pAEqvoVt4LMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Mbad8RO8A7SW8LkI2SeUw8tads6szjUQKZES2VDyJ8=;
 b=ob5RO0bw4l6t8+4xpthxgSePLUNc1ZiLbAO1SR7vdxd0QXmNSSkFGmCnX1jwDKIa1BO100Vmg8X9UlvCkhs8wwCAo/IvEr57BmxWgG3pvajaJMfQ0K4geEs3PsnN8ko/doBGInrMUSa0cf7ork/Z47aO0ayoMkcNJLnVKocR8IcpGYdRoOWNQQqcGX3mjOv/w06ZQZOKs/AJO0VOWwhgaffPPskZFtsFponaSAf6+shtC9Mesn6MrOClNLqAJ8NehdzjT0A8n3VLAfBi5OvemjPmwAkbd9QL+Zv6Qw8/HHGnqkSaW55YD+KWctiDdVhd2JHlgIs/ngzBo7EhdwCAww==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=abaco.com; dmarc=pass action=none header.from=abaco.com;
 dkim=pass header.d=abaco.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=abaco.com; s=selector1;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=5Mbad8RO8A7SW8LkI2SeUw8tads6szjUQKZES2VDyJ8=;
 b=p/rWMt/kqqBUYZZOOh654jpYH8d0VdPt8g6jHQr2XWErKapQ/BPNZX23FO0TDHiu5ba50p/DisiRn/Z6n1PASlCGRyUcUrPJZORlIy7uKWDfNMlsnqw8/m3B7ZvAHrrIKSkaEFxEMwgUs0NK3Ujax/ihcXspIiYfUyog2GhrtU0tdaYrgPKw+w+6NcwTBISuv8EB6zBYrOXzRyTWoyrQAwBgT/oSDMSr0JmpeI6Mdiv58I/i6TomAZ/0POstPbRD2qacLIhwIi+LPYRuNcH16CnlCTqXNTImis5djA45iMpuQXSdBt3poYd9ZbNxqXMEXtI93s+oNrmh2j3C1VVgGQ==
Authentication-Results: lists.infradead.org; dkim=none (message not signed)
 header.d=none;lists.infradead.org; dmarc=none action=none
 header.from=abaco.com;
Received: from BL3PR16MB4572.namprd16.prod.outlook.com (2603:10b6:208:34b::23)
 by BL3PR16MB4426.namprd16.prod.outlook.com (2603:10b6:208:341::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4373.20; Wed, 28 Jul
 2021 12:47:12 +0000
Received: from BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814]) by BL3PR16MB4572.namprd16.prod.outlook.com
 ([fe80::bd0c:8039:c9c8:2814%9]) with mapi id 15.20.4373.020; Wed, 28 Jul 2021
 12:47:12 +0000
From: Renaud Barbier <renaud.barbier@abaco.com>
To: barebox@lists.infradead.org
Cc: Renaud Barbier <renaud.barbier@abaco.com>
Date: Wed, 28 Jul 2021 13:47:04 +0100
Message-Id: <1627476428-16318-1-git-send-email-renaud.barbier@abaco.com>
X-Mailer: git-send-email 1.8.3.1
X-OriginalArrivalTime: 28 Jul 2021 12:47:10.0728 (UTC)
 FILETIME=[AE953080:01D783AE]
X-ClientProxiedBy: BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:208:2c4::23) To BL3PR16MB4572.namprd16.prod.outlook.com
 (2603:10b6:208:34b::23)
MIME-Version: 1.0
X-MS-Exchange-MessageSentRepresentingType: 1
Received: from TOWSMTP.abaco.local (205.182.146.17) by
 BL1P223CA0018.NAMP223.PROD.OUTLOOK.COM (2603:10b6:208:2c4::23) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
 15.20.4373.18 via Frontend Transport; Wed, 28 Jul 2021 12:47:11 +0000
Received: from selma.abaco.local ([10.1.177.4]) by TOWSMTP.abaco.local with
 Microsoft SMTPSVC(8.5.9600.16384); Wed, 28 Jul 2021 13:47:10 +0100
Received: from owcbuild.abaco.local (owcbuild.abaco.local [10.1.177.12])	by
 selma.abaco.local (Postfix) with ESMTP id 89BEBE222F;
 Wed, 28 Jul 2021 13:47:10 +0100 (BST)
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: e44f0a10-356c-4883-ce50-08d951c5d1d5
X-MS-TrafficTypeDiagnostic: BL3PR16MB4426:
X-Microsoft-Antispam-PRVS: <BL3PR16MB44262C0ADD6F6D3E5870D81591EA9@BL3PR16MB4426.namprd16.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: Pj4qs3fu9PWPadmx+1x3F2n8+exxPCmGoHhXF/RxNsS6pNHtfU9rScMXTDaKsqXKxd5OausaIvRZIatQeI+UupQGHIMdfqDHV5glZPZeoQt4TS4GMJhliTcnKVhHXsgh8e3s1IDmwImACPk5ivFSlYm7jiHqnLHP2v9Orpj8uaeT/ejloJG6Ri+7xZNYat3EH5qob3nvWj7mHQ4GAiTiswuLrT32UXoClp3yQX/52AHCZHpjVl17KyIXBE5XS59DxfWR0Mv4PYLiCHvTV+1kQZByg18LWJEr/bA872HQyvsJaFV5wUFlALpvJdu5QI3QdFsIgEPzMMkstqaVV34Xnc/AIx9cpynapJ88AvFuTpIFU88i6XMVdHPMS/2B2OovnAn08Mro7e4x9UMoDhB2DbAyf1N2Eaw7wTfigRpP+wuXscJoabrPjpDjlf2CESyA1N7Dxtoa+UNFKeuQ1cq5M972iHAiFMqfZpz6Vb0B1CxemqD5ZpwY0hImI4hAANJ2KbIVQMV8VgbQBmQpQJWCGqjevKZqw2EaKLm0M77ueihUmaOaW0Q7E4R42XRuEvc2mWK7KqeVj+o9seCjg32BPVDbMEPxaeUEA38Ssgvy4zDGNMrfhWMpmAKrunY7qAi1tf4QGqQwfauc8y5wTpz+2c7a+BKHGjhQnTmZxmMWuFS8NClLtjL5KdYOJ84AM7Psu7oiSBRpe7xGXTEFlYbncw==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR16MB4572.namprd16.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(376002)(346002)(136003)(396003)(39850400004)(366004)(2906002)(6266002)(38350700002)(38100700002)(26005)(478600001)(5660300002)(316002)(2616005)(8936002)(186003)(8676002)(4326008)(6666004)(86362001)(6916009)(83380400001)(44832011)(107886003)(66476007)(52116002)(66556008)(66946007)(36756003);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?us-ascii?Q?wTgVm/Q4v6jPHFbgzp+cKl7Kbp9I5QJZVPzY1QjbU3j/G+uRBlMeS/2P5FzL?=
 =?us-ascii?Q?eMKnjVaQWybDpGxW6GpDqchHeO3+KVPSyNFgeqgCgjXFZ5yE6vN/vsPW7yzZ?=
 =?us-ascii?Q?T3zwLCbyY/3nJXPSBktflWnM/k+D7857T7tM1weAANVDoydA4fzJ7Rc+cOtw?=
 =?us-ascii?Q?qxgdLdAjFWHZq8dJfsy8VKnRyIAMbxAcbOrq/Trcrpcx88cLypcZ32tAXJAO?=
 =?us-ascii?Q?Yios9IwX29Eny04bBTz1BMDnQ7yXkUK/LrYbgXtQsTpdR+LVQzigNHAI7VRS?=
 =?us-ascii?Q?5vV9VmwzJnxahS2RQ+jim479Og4ZpY/BdBRj6wmQn5Z5E1PlgqYqBZduNbIU?=
 =?us-ascii?Q?tn8aIeg/p2dK+OcVO58n5tosNZ76wwS25/QQTeCgxRXHAiQj2iz9GLCUQEFS?=
 =?us-ascii?Q?sozwRbxHdWa5kxwSlzsuFVygu7zwMfMBN+jcvPkfxL9QOg720uiFWHGFmTpj?=
 =?us-ascii?Q?UoqOthQnmEonHDFhVfgL/sL0cHVMZNz+qf7gcFOeWStjDrUfjqmquuE+haim?=
 =?us-ascii?Q?lY9TYdNcIyO+Zg9AjwaC7vuOp5B6REb53yz6dnYBV331r7NlP3lOq/iR5xqP?=
 =?us-ascii?Q?N58/LsWLS5vVxjDapw3Ma+AFp7h3DkY5ewbBCqS4pbi1aLyYJgIBqX4IaMFw?=
 =?us-ascii?Q?g4LsGXnGOdRohyq/Lg8ZouZbYwH+Bl0o1paD7b4VqlAIacKohH1nmaebDunE?=
 =?us-ascii?Q?9ixItuyZciDgPQCY+ENPQQU2FeV+RWO3wATFzNxNX4BKdDbJpus7YbNPnP+4?=
 =?us-ascii?Q?aRDXiumlRQH8iJqX4VYLQe5jVZdjT3jO+Njdbj8eBgnxij/mJw8wPjjYcnx/?=
 =?us-ascii?Q?I88qXqSkwtk1B2GUt9GH1C+fxQYHaP7PcR/g+LNEa16PVtGINDcERCAVbkOY?=
 =?us-ascii?Q?QLQOAOScAjBBJLh3yaOOhXVG/SBdkUrm6O1L7B/EfO/EeaNoWbjhVGwuPp09?=
 =?us-ascii?Q?cHiEGtFYW6fsbsqtjutr27csCrhYdyP4lb5qaX9rqNt5HoiasaQCfoS/B2IB?=
 =?us-ascii?Q?OE/ia2qHtZbHFRwjQR4ft2N8KVoCgPrcRbbIC/uzG5Lit751oQhG55DnAczQ?=
 =?us-ascii?Q?c0KlBW1yAH3qhMPOIcy/CU3sr5fA9JvC0GZrKAwvepIDsqmzOiJSatYtJcRV?=
 =?us-ascii?Q?p7NN4zo0CALqmCcgUVGwoMS7JKrV9ngfH/d2i9x/Yd5hfus8nH6GKnZw/Ys0?=
 =?us-ascii?Q?/pXaaE4YLT32NKIV9LNZu+l7tqWnB8zwESV/sVjohhP9nllqUlReR7iwWnhK?=
 =?us-ascii?Q?anKjTu2MqCINDu3Ar7qKPi6+RyDJAg12CRB4Ix/G7mU14XK6Zrbfd1F+hGe5?=
 =?us-ascii?Q?nfNW2vA5J4xismJok5x71nDJvaRQitsP3kTr0rxm3OVuRA=3D=3D?=
X-OriginatorOrg: abaco.com
X-MS-Exchange-CrossTenant-Network-Message-Id: e44f0a10-356c-4883-ce50-08d951c5d1d5
X-MS-Exchange-CrossTenant-AuthSource: BL3PR16MB4572.namprd16.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Jul 2021 12:47:12.4077 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: e6f27451-899d-4d0d-b8fa-88baafa551a7
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UTcxUqUbF7XhYKRi11ry6vUOuR2DNVrHAgS8JNUNFku9kGuco7qqpMP63LeZtBdIye7e/0AUHMEbtwvCb3inbQ==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL3PR16MB4426
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20210728_054716_850457_235F0F15 
X-CRM114-Status: UNSURE (   9.68  )
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
X-Spam-Status: No, score=-4.8 required=4.0 tests=AWL,BAYES_00,DKIMWL_WL_HIGH,
	DKIM_SIGNED,DKIM_VALID,HEADER_FROM_DIFFERENT_DOMAINS,
	MAILING_LIST_MULTI,MSGID_FROM_MTA_HEADER,RCVD_IN_DNSWL_MED,
	SPF_HELO_NONE,SPF_NONE autolearn=unavailable autolearn_force=no
	version=3.4.2
Subject: [PATCH 0/4] NXP IFC nand driver
X-SA-Exim-Version: 4.2.1 (built Wed, 08 May 2019 21:11:16 +0000)
X-SA-Exim-Scanned: Yes (on metis.ext.pengutronix.de)

These patches add the NXP IFC nand driver and enables it for the
Layescape SOC. Tested on the ls1046ardb evaluation board with UBI/UBIFS.

The driver makes use of the ls10146ardb DTS to probe the device.
Originally, adapted for our NXP P1014 based platforms(not upstream), it
allows to pass the chip select number using platform data.

Additional I/O operations and atomic 64-bit counters are added to support
the 64-bit platform, driver and UBIFS.

Renaud Barbier (4):
  ARM: atomic.h: add 64-bit counter support
  arm: 64-bit device specific operation
  nand: add NXP IFC nand driver
  ls1046ardb: enable IFC NAND.

 arch/arm/boards/ls1046ardb/board.c            |   26 +
 arch/arm/configs/layerscape_defconfig         |   12 +
 arch/arm/lib64/Makefile                       |    2 +-
 arch/arm/lib64/io.c                           |   98 ++
 .../mach-layerscape/include/mach/fsl_ifc.h    |   16 +
 .../mach-layerscape/include/mach/layerscape.h |    3 +
 drivers/mtd/nand/Kconfig                      |    6 +
 drivers/mtd/nand/Makefile                     |    1 +
 drivers/mtd/nand/fsl_ifc.h                    |  116 ++
 drivers/mtd/nand/nand_fsl_ifc.c               | 1037 +++++++++++++++++
 include/asm-generic/atomic-long.h             |    3 +-
 include/asm-generic/atomic.h                  |   49 +
 include/linux/fsl_ifc.h                       |  306 +++++
 13 files changed, 1673 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm/lib64/io.c
 create mode 100644 arch/arm/mach-layerscape/include/mach/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/fsl_ifc.h
 create mode 100644 drivers/mtd/nand/nand_fsl_ifc.c
 create mode 100644 include/linux/fsl_ifc.h

-- 
2.27.0


_______________________________________________
barebox mailing list
barebox@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/barebox

